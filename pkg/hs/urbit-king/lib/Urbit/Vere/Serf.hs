{-|
  High-Level Serf Interface
-}

module Urbit.Vere.Serf
  ( withSerf
  , execReplay
  , collectFX
  , module X
  )
where

import Urbit.Prelude

import Data.Conduit
import Urbit.Vere.Pier.Types
import Urbit.Vere.Serf.IPC

import Control.Monad.Trans.Resource (runResourceT)
import Urbit.Arvo                   (FX)

import qualified Data.Conduit.Combinators as CC
import qualified System.ProgressBar       as PB
import qualified Urbit.Vere.Log           as Log

import Urbit.King.App (HasStderrLogFunc(..))

import qualified Urbit.Vere.Serf.IPC as X (Config(..), EvErr(..), Flag(..),
                                           RunReq(..), Serf, WorkError(..), run,
                                           snapshot, start, stop)

-- ort System.ProgressBar
-- ort qualified Urbit.Ob                 as Ob
-- ort qualified Urbit.Time               as Time


--------------------------------------------------------------------------------

-- TODO XXX HACK FIXME
data MissingBootEventsInEventLog = MissingBootEventsInEventLog Word Word
 deriving (Show, Exception)


--------------------------------------------------------------------------------

parseLogRow :: MonadIO m => ByteString -> m (Mug, Noun)
parseLogRow = cueBSExn >=> fromNounExn

withSerf :: HasLogFunc e => Config -> RAcquire e Serf
withSerf config = mkRAcquire startup kill
 where
  startup = do
    (serf, st) <- io $ start config
    logTrace (displayShow st)
    pure serf
  kill serf = do
    void $ rio $ stop serf

execReplay
  :: forall e
   . (HasLogFunc e, HasStderrLogFunc e)
  => Serf
  -> Log.EventLog
  -> Maybe Word64
  -> RIO e (Maybe PlayBail)
execReplay serf log last = do
  lastEventInSnap <- io (serfLastEventBlocking serf)
  if lastEventInSnap == 0 then doBoot else doReplay
 where
  doBoot :: RIO e (Maybe PlayBail)
  doBoot = do
    logTrace "Beginning boot sequence"

    let bootSeqLen = lifecycleLen (Log.identity log)

    evs <- runConduit $ Log.streamEvents log 1
                     .| CC.take (fromIntegral bootSeqLen)
                     .| CC.mapM (fmap snd . parseLogRow)
                     .| CC.sinkList

    let numEvs = fromIntegral (length evs)

    when (numEvs /= bootSeqLen) $ do
      throwIO (MissingBootEventsInEventLog numEvs bootSeqLen)

    io (boot serf evs) >>= \case
      Just err -> pure (Just err)
      Nothing  -> doReplay

  doReplay :: RIO e (Maybe PlayBail)
  doReplay = do
    logTrace "Beginning event log replay"

    lastEventInSnap <- io (serfLastEventBlocking serf)

    last & \case
        Nothing -> pure ()
        Just lt -> logTrace $ display $
                     "User requested to replay up to event #" <> tshow lt

    logLastEv :: Word64 <- atomically $ fromIntegral <$> Log.lastEv log

    logTrace $ display $ "Last event in event log is #" <> tshow logLastEv

    let replayUpTo = min (fromMaybe logLastEv last) logLastEv

    let numEvs :: Int = fromIntegral replayUpTo - fromIntegral lastEventInSnap

    when (numEvs < 0) $ do
      error "impossible"

    incProgress <- logStderr (trackProgress (fromIntegral numEvs))

    logTrace $ display $ "Replaying up to event #" <> tshow replayUpTo
    logTrace $ display $ "Will replay " <> tshow numEvs <> " in total."

    env <- ask

    res <- runResourceT
      $  runConduit
      $  Log.streamEvents log (lastEventInSnap + 1)
      .| CC.take (fromIntegral numEvs)
      .| CC.mapM (fmap snd . parseLogRow)
      .| replay 5 incProgress serf

    pure res

logStderr :: HasStderrLogFunc e => RIO LogFunc a -> RIO e a
logStderr action = do
  logFunc <- view stderrLogFuncL
  runRIO logFunc action

trackProgress
  :: HasLogFunc e
  => Word64
  -> RIO e (Int -> IO ())
trackProgress = \case
  0   -> pure $ const $ pure ()
  num -> do
    let style = PB.defStyle { PB.stylePostfix = PB.exact }
    let refresh = 10
    let init = PB.Progress 0 (fromIntegral num) ()
    bar <- PB.newProgressBar style refresh init
    env <- ask
    let incr = PB.incProgress bar
    pure (runRIO env . incr)


-- Collect FX ------------------------------------------------------------------

collectFX :: HasLogFunc e => Serf -> Log.EventLog -> RIO e ()
collectFX serf log = do
  lastEv <- io (serfLastEventBlocking serf)
  runResourceT
    $  runConduit
    $  Log.streamEvents log (lastEv + 1)
    .| CC.mapM (parseLogRow >=> fromNounExn . snd)
    .| swim serf
    .| persistFX log

persistFX :: MonadIO m => Log.EventLog -> ConduitT (EventId, FX) Void m ()
persistFX log = CC.mapM_ $ \(eId, fx) -> do
  Log.writeEffectsRow log eId $ jamBS $ toNoun fx
