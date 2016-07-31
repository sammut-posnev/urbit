::                                                      ::  ::
::::  /hoon/ames/arvo                                   ::::::  vane prelude
  !:                                                    ::  ::
|=  pit/vase                                            ::  kernel vase
=>  =~                                                  ::  
::                                                      ::  ::
::::                                                    ::::::  ames structures
  ::                                                    ::  ::
|%                                                      ::
++  bait  {p/skin q/@ud r/dove}                         ::  fmt nrecvd spec
++  bath                                                ::  per friend
          $:  fon/(map bole lock)                       ::  inbound locks
              zam/scar                                  ::  outbound boles
              sal/(map bole colt)                       ::  outbound flows
              nup/(map bole pump)                       ::  outbound pumps
          ==                                            ::
++  bole  bone                                          ::  inbound opaque
++  boon                                                ::  internal effect
          $%  {$acid $~}                                ::  drop input
              {$beer p/ship q/@uvG}                     ::  gained ownership
              {$coke p/sock q/duct r/path s/coop}       ::  forward ack
              {$cola p/sock q/bole r/path s/coop}       ::  reverse ack
              {$mead p/lane q/rock}                     ::  forward to self
              {$malt p/sock q/duct r/path s/*}          ::  response
              {$milk p/sock q/bole r/path s/*}          ::  request
              {$ouzo p/lane q/rock}                     ::  transmit packet
              {$wine p/sock q/tape}                     ::  notify user
          ==                                            ::
++  cake  {p/sock q/skin r/@}                           ::  top level packet
++  clot                                                ::  symmetric key state
          $:  yed/(unit {p/hand q/code})                ::  outbound
              heg/(map hand code)                       ::  proposed
              qim/(map hand code)                       ::  inbound
          ==                                            ::
++  clue                                                ::  live packet state
          $:  vig/?                                     ::  true iff virgin
              tel/part                                  ::  block identity
              fap/flap                                  ::  fragment hash
              dat/rock                                  ::  fragment data
          ==                                            ::
++  part  (pair frag tick)                              ::  fragment of packet
++  coal                                                ::  live packet state
          $:  out/@da                                   ::  sent date
              lod/@da                                   ::  lost-by deadline
              clu/clue                                  ::  packet to send
          ==                                            ::
++  flex                                                ::  pump actions
          $%  {$good p/flap q/part r/coop}              ::  ack msg fragment
              {$send p/flap q/rock}                     ::  send packet
          ==                                            ::
++  stat                                                ::  pump statistics
          $:  $:  cur/@ud                               ::  window q length
                  max/@ud                               ::  max pax out
                  rey/@ud                               ::  retry q length
              ==                                        ::
              $:  rtt/@dr                               ::  roundtrip estimate
                  las/@da                               ::  last sent
                  lad/@da                               ::  last deadline
              ==                                        ::
          ==                                            ::
++  mini                                                ::  pump data
          $:  saw/stat                                  ::  statistics
              liv/(qeu coal)                            ::  live packets
              lop/(qeu clue)                            ::  lost packets
          ==                                            ::
++  colt                                                ::  outbound state
          $:  seq/tick                                  ::  next tick to fill
              lac/tick                                  ::  acked tick until
              mis/(map tick (pair path coop))           ::  nonsequential acks
              cob/(map tick comb)                       ::  live messages
              myn/mini                                  ::  packet pump
          ==                                            ::
++  comb                                                ::  live message
          $:  cup/(unit coop)                           ::  final ack
              cha/path                                  ::  channel
              num/frag                                  ::  number of fragments
              ack/frag                                  ::  number acked
              cly/(list clue)                           ::  left to send
          ==                                            ::
++  corn                                                ::  flow by server
          $:  hen/duct                                  ::  admin channel
              wab/(map ship bath)                       ::  relationship
              pod/pond                                  ::  scheduling pond
          ==                                            ::
++  corp  (unit (each cape coop))                       ::  ack record
++  door                                                ::  foreign contact
          $:  wod/road                                  ::  connection to
              wyl/will                                  ::  inferred mirror
              caq/clot                                  ::  symmetric key state
          ==                                            ::
++  dove  {p/@ud q/(map @ud @)}                         ::  count 13-blocks
++  flap  @uvH                                          ::  network packet id
++  flea  (pair bole tick)                              ::  message id
++  frag  @ud                                           ::  fragment number
++  fort                                                ::  formal state
          $:  $0                                        ::  version
              gad/duct                                  ::  client interface
              hop/@da                                   ::  network boot date
              ton/town                                  ::  security
              zac/(map ship corn)                       ::  flows by server
          ==                                            ::
++  lock                                                ::  inbound sequencer
          $:  laq/tick                                  ::  acknowledged until
              nys/(map tick bait)                       ::  inbound partials
              laz/(unit (trel flea flap lane))          ::  awaiting app
              exc/(map tick ares)                       ::  negative acks
          ==                                            ::  
++  meal                                                ::  payload
          $%  {$back p/bone q/flap r/coop s/@dr}        ::  acknowledgment
              {$bond p/flea q/path r/*}                 ::  message
              {$carp p/moan q/(pair @ud @)}             ::  fragment
              {$fore p/ship q/(unit lane) r/@}          ::  forwarded packet
          ==                                            ::
++  moan                                                ::  message invariant
          $:  {kos/bole liq/tick}                       ::  flow identity
              syn/@                                     ::  skin number
              cnt/@                                     ::  number of packets
          ==                                            ::
++  road                                                ::  secured oneway route
          $:  exp/@da                                   ::  expiration date
              lun/(unit lane)                           ::  route to friend
              lew/will                                  ::  will of friend
          ==                                            ::
++  pipe  (pair ship bole)                              ::  session identity
++  pith                                                ::  ack effect
          $:  byt/@ud                                   ::  packet bytes
              lop/@ud                                   ::  num out-of-order
              rut/(unit @dr)                            ::  roundtrip update
          ==                                            ::
++  plan                                                ::  session state
          $:  unc/(map flap tick)                       ::  packet to message
              nem/(map tick (pair @ud path))            ::  number unacked /msg
              chu/(qeu pony)                            ::  queued packets
          ==                                            ::
++  plod                                                ::  burst statistics
          $:  byt/@ud                                   ::  bytes moved
              ::  bys/@ud                               ::  bandwidth/second
              rtm/@dr                                   ::  minimum rtt
              rtg/@dr                                   ::  average rtt
              rts/@dr                                   ::  smoothed rtt
          ==                                            ::
++  plow                                                ::  burst state
          $:  fax/@da                                   ::  start of burst
              lax/@da                                   ::  last ack
              pad/plod                                  ::  statistics
          ==                                            ::
++  pond  (tree (pair @da pipe))                        ::  scheduler
++  pole  (pair flap rock)                              ::  hashed packet
++  pony  (qual (unit @da) ? tick pole)                 ::  sent/virgin/seq/pack
++  pomp                                                ::  traverse update
          $:  byt/@ud                                   ::  bytes received
              boz/@ud                                   ::  packets lost
              rut/(unit @dr)                            ::  round-trip update
          ==                                            ::
++  puma                                                ::  packet pump
          $:  max/@ud                                   ::  maximum window
              cur/@ud                                   ::  current window
          ==                                            ::
++  pump                                                ::  new packet pump
          $:  nex/(unit @da)                            ::  next wake; derived
              win/@ud                                   ::  logical window bytes
              old/plod                                  ::  long-running state
              sac/plow                                  ::  current flow
              plan                                      ::  data 
          ==                                            ::
++  shed                                                ::  packet sender
          $:  $:  rtt/@dr                               ::  smoothed rtt
                  rto/@dr                               ::  retransmit timeout
                  rtn/(unit @da)                        ::  next timeout
                  rue/(unit @da)                        ::  last heard from
              ==                                        ::
              $:  nus/@ud                               ::  number sent
                  nif/@ud                               ::  number live
                  nep/@ud                               ::  next expected
                  caw/@ud                               ::  logical window
                  cag/@ud                               ::  congest thresh
              ==                                        ::
              $:  diq/(map flap @ud)                    ::  packets sent
                  pyz/(map flea @ud)                    ::  message/unacked
                  puq/(qeu {p/@ud q/soul})             ::  packet queue
              ==                                        ::
          ==                                            ::
++  skin  ?($none $open $fast $full)                    ::  encoding stem
++  soul                                                ::  packet in travel
          $:  fel/flea                                  ::  message identity
              cha/path                                  ::  channel
              nux/@ud                                   ::  xmission count
              liv/?                                     ::  deemed live
              lys/@da                                   ::  last sent
              pac/rock                                  ::  packet data
          ==                                            ::
++  sufi                                                ::  domestic host
          $:  hoy/(list ship)                           ::  hierarchy
              val/wund                                  ::  private keys
              law/will                                  ::  server will
              seh/(map hand {p/ship q/@da})             ::  key cache
              hoc/(map ship door)                       ::  neighborhood
          ==                                            ::
++  tick  @ud                                           ::  message sequence no
++  town                                                ::  all security state
          $:  lit/@ud                                   ::  imperial modulus
              any/@                                     ::  entropy
              urb/(map ship sufi)                       ::  all keys and routes
              fak/?                                     ::
          ==                                            ::
++  wund  (list {p/life q/ring r/acru})                 ::  mace in action
--
::                                                      ::  ::
::::                                                    ::::::  arvo structures
  ::                                                    ::  ::
|%                                                      ::
++  flam  |=(a/flap `@p`(mug a))                        ::  debug flap
++  msec  |=(a/@dr `@ud`(div a (div ~s1 1.000)))        ::  debug @dr
++  move  {p/duct q/(wind note-arvo gift-ames)}         ::  local move
++  se                                                  ::  simple scheduler
  |_  a/pond                                            ::  l.n.a < n.a < r.n.a
  ++  cor                                               ::  schedule order
    |=  {t/@da v/pipe}
    |=  {t/@da v/pipe}
    |((lth ^t t) &(=(^t t) (gor ^v v)))
  ::
  ++  dal                                               ::  delete match
    |=  {t/@da v/pipe}
    ^+  a
    ?~  a  ~
    ?.  =([t v] n.a)
      ?:  ((cor [t v]) n.a)
        [n.a $(a l.a) r.a]
      [n.a l.a $(a r.a)]
    |-  ^-  ?($~ _a)
    ?~  l.a  r.a
    ?~  r.a  l.a
    ?:  (vor n.l.a n.r.a)
      [n.l.a l.l.a $(l.a r.l.a)]
    [n.r.a $(r.a l.r.a) r.r.a]
  ::
  ++  put                                               ::  insert
    |=  {t/@da v/pipe}                                  ::  XX duplicates ++by
    ^+  a
    ?~  a  [[t v] ~ ~]
    ?<  =([t v] n.a)
    ?:  ((cor [t v]) n.a)
      =+  d=$(a l.a)
      ?>  ?=(^ d)
      ?:  (vor n.a n.d)
        [n.a d r.a]
      [n.d l.d [n.a r.d r.a]]
    =+  d=$(a r.a)
    ?>  ?=(^ d)
    ?:  (vor n.a n.d)
      [n.a l.a d]
    [n.d [n.a l.a l.d] r.d]
  ::
  ++  til                                               ::  next wake
    |-  ^-  (unit @da)
    ?~(a ~ ?~(l.a `p.n.a $(a l.a)))
  ::
  ++  tip                                               ::  raw behead
    |=  t/@da
    ^-  (pair (list pipe) pond)
    ?~  a  [~ ~]
    =+  l=$(a l.a)
    ?.  (lte p.n.a t)
      [p.l [n.a q.l r.a]]
    ?>  =(~ q.l)
    =+  r=$(a r.a)
    :_(q.r (weld p.l `(list pipe)`[q.n.a p.r]))
  ::
  ++  top  |=(t/@da =^(b a (tip t) [(flop p.b) a]))     ::  ordered behead
  --
--
::  simple packet pump
::
|%
++  pume                                                ::
  |_  $:  fex/(list flex)                               ::  effects
          mini                                          ::  state
      ==
  ::                                                    ::
  ++  abba                                              ::  a older than b
    |=  {a/part b/part}
    |((lth q.a q.b) &(=(q.a q.b) (lth p.a p.b)))
  ::                                                    ::
  ++  abet                                              ::  resolve
    ^-  {(list flex) mini}
    =.  .  aver
    [(flop fex) +<+]
  ::                                                    ::
  ++  aver                                              ::  verify
    ?>  (lth cur.saw max.saw)
    ?>  !=(0 max.saw)
    ?>  =(cur.saw (lent (~(tap to liv))))
    ?>  =(rey.saw (lent (~(tap to lop))))
    ?>  =+  |=  {a/coal b/coal}
            ?&  (lth out.a out.a)
                (lth lod.a lod.b)
                (abba tel.clu.a tel.clu.b)
            ==
        |-  ?|  ?=($~ liv)
                ?&  ?|  ?=($~ r.liv) 
                        ?&  (+< n.r.liv n.liv)
                            $(liv r.liv)
                    ==  ==
                    ?|  ?=($~ l.liv)
                        ?&  (+< n.liv n.l.liv)
                            $(liv l.liv)
                    ==  ==
                ==
            ==
    ?>  |-  ?|  ?=($~ lop)
                ?&  ?|  ?=($~ r.lop) 
                        ?&  (abba tel.n.r.lop tel.n.lop)
                            $(lop r.lop)
                    ==  ==
                    ?|  ?=($~ l.lop) 
                        ?&  (abba tel.n.lop tel.n.l.lop)
                            $(lop l.lop)
                    ==  == 
                ==
            ==
    .
  ::                                                    ::
  ++  back                                              ::  process raw ack
    |=  {dam/flap cop/coop lag/@dr}
    ^+  +>
    =-  (done:(lose(liv lov) ded) ack dam cop lag)
    |-  ^-  $:  ack/(unit coal) 
                ded/(list coal) 
                lov/(qeu coal)
            ==
    ?~  liv  [~ ~ ~]
    =+  ryt=$(liv r.liv)
    ?^  ack.ryt
      ::
      ::  found in front, no need to search back.
      ::
      [ack.ryt ded.ryt [n.liv l.liv lov.ryt]]
    ::
    ::  lose unacked packets sent before an acked virgin.
    ::
    =+  ^-  $:  top/?
                ack/(unit coal)
                ded/(list coal)
                lov/(qeu coal)
            ==
        ?:  =(dam fap.clu.n.liv)
          [| `n.liv ~ l.liv]
        [& $(liv l.liv)]
    ?~  ack  [~ ~ liv]
    =.  ded  ?:(top [n.liv ded] ded)
    =.  ded  ?:(vig.clu.u.ack (~(tap to r.liv) ded) ded)
    =.  lov  ?:(top [n.liv lov ~] lov)
    [ack ded lov]
  ::                                                    ::
  ++  clap                                              ::  ordered enqueue
    ::
    ::  the `lop` queue isn't really a queue in case of 
    ::  resent packets; packets from older messages
    ::  need to be sent first.  unfortunately hoon.hoon 
    ::  lacks a general sorted/balanced heap right now.
    ::  so we implement a balanced queue insert by hand.
    ::
    |=  clu/clue
    %_    +>
        lop
      |-  ^+  lop
      ?~  lop  [clu ~ ~]
      ?:  ?|  (abba tel.clu tel.n.lop)
              ?&  =(tel.clu tel.n.lop)
                  (lth fap.clu fap.n.lop)
          ==  ==
        [n.lop l.lop $(lop r.lop)]
      [n.lop $(lop l.lop) r.lop]
    ==
  ::                                                    ::
  ++  cull                                              ::  clear message
    |=  tiq/tick
    %_    +>
        liv
      |-  ^+  liv
      ?~  liv  ~
      =+  vil=[n.liv $(liv l.liv) $(liv r.liv)]
      ?.  =(tiq q.tel.clu.n.liv)  vil 
      ~(nip to `(qeu coal)`vil)
    ::
        lop
      |-  ^+  lop
      ?~  lop  ~
      =+  pol=[n.lop $(lop l.lop) $(lop r.lop)]
      ?:  =(tiq q.tel.n.lop)  pol
      ~(nip to `(qeu clue)`pol)
    ==
  ::                                                    ::
  ++  done                                              ::  process cooked ack
    |=  {lyd/(unit coal) dam/flap cop/coop lag/@dr}
    ^+  +>
    ?~  lyd  +>
    +>(fex [[%good dam tel.clu.u.lyd cop] fex])
  ::                                                    ::
  ++  fire                                              ::  send a packet
    |=  {now/@da clu/clue}
    ^+  +>
    ?>  (lth cur.saw max.saw)
    =+  out=?:(=(las.saw now) +(now) now)
    =+  lod=(add now (mul 2 rtt.saw))
    =.  lod  ?:((gth lod lad.saw) lod +(lad.saw))
    %=  +>.$
      fex      [[%send fap.clu dat.clu] fex]
      las.saw  out
      lad.saw  lod
      cur.saw  +(cur.saw)
      liv      (~(put to liv) [out lod clu])
    ==
  ::                                                    ::
  ++  flay                                              ::  time out packets
    |=  now/@da
    ^+  +>
    =-  (lose(liv q.ole) p.ole)
    ^=  ole
    =|  ded/(list coal)
    |-  ^+  [p=ded q=liv]
    ?~  liv  [ded ~]
    ?:  (gte now lod.n.liv)
      ::
      ::  everything in front of a dead packet is dead
      ::
      $(liv l.liv, ded (~(tap to r.liv) [n.liv ~]))
    =+  ryt=$(liv r.liv)
    [p.ryt [n.liv l.liv q.ryt]]
  ::                                                    ::
  ++  lose                                              ::  abandon packets
    |=  cud/(list coal)
    ^+  +>
    ?~  cud  +>
    ~&  :~  %pump-drop
            [%clue [vig tel `@p`fap]:clu.i.cud]
        ==
    %=    $
      cud      t.cud
      cur.saw  (dec cur.saw)
      rey.saw  +(rey.saw)
      +>       (clap clu.i.cud)
    ==
  ::                                                    ::
  ++  ship                                              ::  send packets
    |=  {now/@da cly/(list clue)}
    ^+  +>
    ?:  (gte cur.saw max.saw)  +>
    ?:  =(0 rey.saw)
      ?~  cly  +>
      $(cly t.cly, +> (fire now i.cly))
    =^  clu  lop  ~(get to lop)
    $(rey.saw (dec rey.saw), +> (fire now clu))
  ::                                                    ::
  ++  wait                                              ::  next wakeup
    ^-  (unit @da)  
    =+  tup=`(unit coal)`~(top to liv)
    ?~(tup ~ `lod.u.tup)
  ::                                                    ::
  ++  want                                              ::  window space
    ^-  @ud
    ?:  (gte cur.saw max.saw)  0
    =+  gap=(sub max.saw cur.saw)
    ?:  (gte rey.saw gap)  0
    (sub gap rey.saw)
  --
--
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aA, identity logic           ::
  ::
  |%
  ++  grip                                              ::  extend will
    |=  {wet/will law/will}
    ^-  will
    ?~  wet  law
    ?:  =(wet law)  law
    ?^  t.wet
      ?>((meld i.wet i.t.wet) [i.wet $(wet t.wet)])
    ?~  law
      ?>((pier i.wet) [i.wet ~])
    ?~  q.p.q.i.wet
      ?>((meld i.wet i.law) [i.wet law])
    =+  rul=(sein r.p.q.i.wet)
    |-  ^-  will
    ?:  ?&  =(rul r.p.q.i.law)
            =(p.p.q.i.law u.q.p.q.i.wet)
        ==
      ?>((meld i.wet i.law) [i.wet law])
    ?>(?=(^ t.law) $(law t.law))
  ::
  ++  meld                                              ::  verify connect
    |=  {new/deed old/deed}
    ^-  $&
    ?>  (melt new old)
    ?>  =((shaf %meld (sham q.new)) (need (sure:as:(haul r.q.old) *code p.new)))
    %&
  ::
  ++  melt                                              ::  proper connect
    |=  {new/deed old/deed}
    ^-  ?
    =+  rac=(clan r.p.q.new)
    ?&  =(r.new r.old)                                  ::  match fake
        ?~  q.p.q.new
          ?&  =(r.p.q.old r.p.q.new)
              &(!=(%earl rac) =(p.p.q.old (dec p.p.q.new)))
          ==
        ?&  &(!=(%pawn rac) !=(%czar rac))
            |(=(0 p.p.q.new) =(%earl rac))
            =(r.p.q.old (sein r.p.q.new))
            =(p.p.q.old u.q.p.q.new)
        ==
    ==
  ::
  ++  pare                                              ::  shorten against
    |=  {fou/will law/will}
    ::  ~&  [%pare-fou fou]
    ::  ~&  [%pare-law law]
    ^-  will
    =+  [ouf=(flop fou) wal=(flop law)]
    %-  flop
    |-  ^-  will
    ?~  ouf  wal
    ?~  wal  ~
    ?.  =(i.wal i.ouf)  ouf
    $(wal t.wal, ouf t.ouf)
  ::
  ++  pier  !:                                          ::  initial deed
    |=  wed/deed
    ^-  $&
    ?>  =+  rac=(clan r.p.q.wed)
        =+  loy=(haul r.q.wed)
        ?:  &(r.wed =(rac %czar))  %&
        ?>  =(0 p.p.q.wed)
        ?>  =(fig:ex:loy ?+(rac !! $czar (zeno r.p.q.wed), $pawn r.p.q.wed))
        ?>  =((shaf %self (sham q.wed)) (need (sure:as:loy *code p.wed)))
        %&
    %&
  ::
  ++  real                                              ::  validate
    |=  {mac/mace law/will}
    ?>  ?&  |-  ^-  ?
            ?~  mac  &
            ?>  ?&  ?=(^ law)
                    (lth p.p.q.i.law 9)                 ::  9-lives rule
                    =(p.p.q.i.law p.i.mac)
                    =(r.q.i.law pub:ex:(weur q.i.mac))
                ==
            $(mac t.mac, law t.law)
        ==
    %&
  ::
  ++  rice                                              ::  mace at life
    |=  {mar/life mac/mace}
    ^-  (unit mace)
    ?~  mac  ~
    ?:  =(mar p.i.mac)  [~ mac]
    ?:  (gth mar p.i.mac)  ~
    $(mac t.mac)
  ::
  ++  rick                                              ::  will at life
    |=  {mar/life lag/ship law/will}
    ^-  (unit will)
    ?~  law  ~
    ?:  =(mar p.p.q.i.law)  [~ law]
    ?:  (gth mar p.p.q.i.law)  ~
    ?:  |(?=($~ q.p.q.i.law) !=(lag r.p.q.i.law))  ~
    $(law t.law)
  ::
  ++  zeno                                              ::  imperial keyprint
    |=  zar/@pD
    ^-  @uvH  ^-  @
    %+  snag  zar
    ^-  (list @uw)
    :~  0wN.Kdp5k.p5ncD.4Wsih.bFQFu   ::    0, ~zod, urbit.org
        0w0                           ::    1, ~nec, Curtis Yarvin
        0w0                           ::    2, ~bud, Tlon Investor 1
        0w0                           ::    3, ~wes, Tlon Investor 2
        0w0                           ::    4, ~sev, Tlon Investor 2
        0wt.cKYxs.Yb5VZ.boSwm.l0yYc   ::    5, ~per, Tlon Investor 3 
        0w0                           ::    6, ~sut, Tlon Investor 4
        0w0                           ::    7, ~let, Tlon Investor 4
        0w0                           ::    8, ~ful, Tlon Investor 4
        0w0                           ::    9, ~pen, Tlon Investor 4
        0w0                           ::   10, ~syt, Tlon Investor 4
        0w0                           ::   11, ~dur, Tlon Investor 4
        0w0                           ::   12, ~wep, Sam Putman
        0w0                           ::   13, ~ser, Tlon Investor 5
        0w3j.H0sty.jHa3F.JlD26.4LPwV  ::   14, ~wyl, Zimran Ahmed
        0w3F.QdvV-.toAsR.hvUNk.fHjW6  ::   15, ~sun, Colin Smith 
        0w0                           ::   16, ~ryp, Tlon Investor 6
        0w0                           ::   17, ~syx, Tlon Investor 6
        0w0                           ::   18, ~dyr, Tlon Investor 6
        0w0                           ::   19, ~nup, Tlon Investor 6
        0w0                           ::   20, ~heb, Tlon Investor 6
        0w0                           ::   21, ~peg, Tlon Investor 6
        0w0                           ::   22, ~lup, Tlon Investor 6
        0w0                           ::   23, ~dep, Tlon Investor 6
        0w0                           ::   24, ~dys, Mike Gogulski
        0w0                           ::   25, ~put, Tlon Investor 7
        0w0                           ::   26, ~lug, Tlon Investor 8
        0w0                           ::   27, ~hec, Tlon Investor 8
        0w0                           ::   28, ~ryt, Tlon Investor 8
        0w0                           ::   29, ~tyv, Tlon Investor 8
        0w0                           ::   30, ~syd, Jennifer Kollmer
        0wp.BgRGJ.kslnv.PLAqb.TRKbr   ::   31, ~nex, Prakhar Goel
        0w0                           ::   32, ~lun, Tlon Investor 9
        0w0                           ::   33, ~mep, Tlon Investor 9
        0w0                           ::   34, ~lut, Tlon Investor 9
        0w0                           ::   35, ~sep, Tlon Investor 9
        0w0                           ::   36, ~pes, Jennifer Kollmer
        0w2J.WSHlR.t5VHN.X8GKE.DB-yz  ::   37, ~del, Kingdon Barrett
        0w1w.KF-J1.5I63F.khFyv.h0n4J  ::   38, ~sul, John Burnham
        0w3x.XaJbE.xaOn3.zXbaG.5xUiY  ::   39, ~ped, Jeremy Wall
        0w2.Mr2Id.SX8xI.MAs-j.5Y-1W   ::   40, ~tem, Tlon Investor 10
        0w0                           ::   41, ~led, Nick Caruso
        0w0                           ::   42, ~tul, Susan Yarvin
        0w0                           ::   43, ~met, Susan Yarvin
        0w0                           ::   44, ~wen, Susan Yarvin
        0w0                           ::   45, ~byn, Susan Yarvin 
        0w0                           ::   46, ~hex, James Torre
        0w0                           ::   47, ~feb, urbit.org
        0wK.GoKEY.rMjfn.ZcvFQ.n4BmX   ::   48, ~pyl, Michael Hartl
        0w0                           ::   49, ~dul, Jennifer Kollmer
        0w0                           ::   50, ~het, Jennifer Kollmer
        0w0                           ::   51, ~mev, Herbert Yarvin
        0w0                           ::   52, ~rut, Herbert Yarvin
        0w2L.M6-o5.DDTFL.R4sFL.7Zuay  ::   53, ~tyl, Tlon Investor 11
        0w0                           ::   54, ~wyd, Curtis Yarvin
        0w0                           ::   55, ~tep, Sibyl Kollmer
        0w0                           ::   56, ~bes, Sibyl Kollmer
        0w0                           ::   57, ~dex, Jared Hance 
        0w0                           ::   58, ~sef, Owen Rescher
        0w0                           ::   59, ~wyc, Galen Wolfe-Pauly
        0w0                           ::   60, ~bur, Galen Wolfe-Pauly
        0w0                           ::   61, ~der, Galen Wolfe-Pauly
        0w0                           ::   62, ~nep, Galen Wolfe-Pauly
        0w0                           ::   63, ~pur, Herbert Yarvin
        0w30.VtXvV.S~xIV.iMCL~.j9zTC  ::   64, ~rys, Charlie Cummings
        0w0                           ::   65, ~reb, Herbert Yarvin
        0wp.LslIa.IFSM9.mIp-z.KBIBh   ::   66, ~den, Michael Hartl
        0w0                           ::   67, ~nut, Henry Yarvin
        0w0                           ::   68, ~sub, Henry Yarvin
        0w0                           ::   69, ~pet, Henry Yarvin
        0w0                           ::   70, ~rul, Henry Yarvin
        0w0                           ::   71, ~syn, Henry Ault
        0w0                           ::   72, ~reg, Henry Ault
        0w0                           ::   73, ~tyd, Henry Ault
        0w0                           ::   74, ~sup, Henry Ault
        0w0                           ::   75, ~sem, Michael Livshin
        0w0                           ::   76, ~wyn, Anton Dyudin
        0w0                           ::   77, ~rec, Anton Dyudin
        0w0                           ::   78, ~meg, Anton Dyudin
        0w2L.tavpW.Lk4R-.elm7E.4KEqZ  ::   79, ~net, Anthony Martinez
        0w0                           ::   80, ~sec, Curtis Yarvin
        0w0                           ::   81, ~mul, Curtis Yarvin
        0w1F.Tqroo.wyq2m.cBaTM.9MbG-  ::   82, ~nym, Max Greer
        0w0                           ::   83, ~tev, Sibyl Kollmer
        0w2x.~ldho.Oo7kE.QqNSx.XteFh  ::   84, ~web, Ar Vicco
        0w0                           ::   85, ~sum, Philip Monk
        0w0                           ::   86, ~mut, Philip Monk
        0w0                           ::   87, ~nyx, Philip Monk
        0w30.UUr19.iBPlD.wfyJD.2CWPv  ::   88, ~rex, Tlon Investor 12
        0w0                           ::   89, ~teb, Sibyl Kollmer
        0w0                           ::   90, ~fus, Tlon Corporation
        0w0                           ::   91, ~hep, urbit.org
        0w0                           ::   92, ~ben, urbit.org
        0w0                           ::   93, ~mus, urbit.org
        0w0                           ::   94, ~wyx, urbit.org
        0w0                           ::   95, ~sym, urbit.org
        0w0                           ::   96, ~sel, urbit.org
        0w0                           ::   97, ~ruc, urbit.org
        0w0                           ::   98, ~dec, urbit.org
        0w1L.NQ-5f.ABF9R.kVwVJ.zRfn2  ::   99, ~wex, Pax Dickinson
        0w0                           ::  100, ~syr, urbit.org
        0w0                           ::  101, ~wet, urbit.org
        0w0                           ::  102, ~dyl, urbit.org
        0w0                           ::  103, ~myn, urbit.org
        0w0                           ::  104, ~mes, urbit.org
        0w0                           ::  105, ~det, urbit.org
        0w0                           ::  106, ~bet, urbit.org
        0w0                           ::  107, ~bel, urbit.org
        0w0                           ::  108, ~tux, Tlon Investor 13
        0w1D.JV9n0.9z~YK.yAWyi.c9~Lu  ::  109, ~tug, Philip Monk
        0w0                           ::  110, ~myr, urbit.org
        0w0                           ::  111, ~pel, urbit.org
        0w0                           ::  112, ~syp, urbit.org
        0w0                           ::  113, ~ter, urbit.org
        0w0                           ::  114, ~meb, urbit.org
        0w0                           ::  115, ~set, urbit.org
        0w0                           ::  116, ~dut, urbit.org
        0w0                           ::  117, ~deg, urbit.org
        0w0                           ::  118, ~tex, urbit.org
        0w0                           ::  119, ~sur, urbit.org
        0w0                           ::  120, ~fel, urbit.org
        0w0                           ::  121, ~tud, urbit.org
        0w0                           ::  122, ~nux, urbit.org
        0w0                           ::  123, ~rux, urbit.org
        0w0                           ::  124, ~ren, urbit.org
        0w0                           ::  125, ~wyt, urbit.org
        0w0                           ::  126, ~nub, urbit.org
        0w0                           ::  127, ~med, urbit.org
        0w20.GGLXx.aqxaQ.w4Iob.wdmmr  ::  128, ~lyt, Arthur Breitman
        0w0                           ::  129, ~dus, urbit.org
        0w0                           ::  130, ~neb, urbit.org
        0w0                           ::  131, ~rum, urbit.org
        0w0                           ::  132, ~tyn, urbit.org
        0w0                           ::  133, ~seg, urbit.org
        0w0                           ::  134, ~lyx, urbit.org
        0w0                           ::  135, ~pun, urbit.org
        0w0                           ::  136, ~res, urbit.org
        0w0                           ::  137, ~red, Alex Kravets
        0w3J.15iJA.0pbNk.mZXyh.A~uKb  ::  138, ~fun, Aaron Beckerman
        0w0                           ::  139, ~rev, urbit.org
        0w3m.Cqumo.ZC7-e.794A4.Bqhh8  ::  140, ~ref, Matt Brubeck
        0w0                           ::  141, ~mec, urbit.org
        0w0                           ::  142, ~ted, urbit.org
        0w2d.GLlYg.-MwtO.ZCPBE.OqGB9  ::  143, ~rus, Stephen Burnham
        0w0                           ::  144, ~bex, urbit.org
        0w0                           ::  145, ~leb, Justin LeBlanc
        0w0                           ::  146, ~dux, urbit.org
        0w0                           ::  147, ~ryn, urbit.org
        0w0                           ::  148, ~num, Tlon
        0w0                           ::  149, ~pyx, Katherine McFall
        0w2g.gLmg4.MtrHQ.A5VmH.WPk6G  ::  150, ~ryg, Dan Haffey
        0w0                           ::  151, ~ryx, Tlon
        0w0                           ::  152, ~fep, Tlon
        0w2j.T1u2s.BfXjV.ldOGR.aiZrQ  ::  153, ~tyr, Steve Dee
        0w0                           ::  154, ~tus, Tlon
        0w0                           ::  155, ~tyc, Tlon
        0w0                           ::  156, ~leg, Tlon
        0w0                           ::  157, ~nem, Tlon
        0w0                           ::  158, ~fer, Tlon
        0w0                           ::  159, ~mer, Tlon
        0w0                           ::  160, ~ten, Tlon
        0w0                           ::  161, ~lus, Tlon
        0w0                           ::  162, ~nus, Tlon
        0w0                           ::  163, ~syl, Tlon
        0w0                           ::  164, ~tec, Tlon
        0w0                           ::  165, ~mex, Tlon
        0w0                           ::  166, ~pub, Tlon
        0w0                           ::  167, ~rym, Tlon
        0w0                           ::  168, ~tuc, Tlon
        0w0                           ::  169, ~fyl, Tlon
        0w0                           ::  170, ~lep, Tlon
        0w0                           ::  171, ~deb, Tlon
        0w0                           ::  172, ~ber, Tlon
        0w0                           ::  173, ~mug, Tlon
        0w0                           ::  174, ~hut, Tlon
        0w0                           ::  175, ~tun, Tlon
        0w0                           ::  176, ~byl, Tlon
        0w0                           ::  177, ~sud, Tlon
        0w0                           ::  178, ~pem, Tlon
        0w0                           ::  179, ~dev, Tlon
        0w0                           ::  180, ~lur, Tlon
        0w0                           ::  181, ~def, Tlon
        0w0                           ::  182, ~bus, Tlon
        0w0                           ::  183, ~bep, Tlon
        0w0                           ::  184, ~run, Tlon
        0w0                           ::  185, ~mel, Tlon
        0w0                           ::  186, ~pex, Tlon
        0w0                           ::  187, ~dyt, Tlon
        0w0                           ::  188, ~byt, Tlon
        0w0                           ::  189, ~typ, Tlon
        0w0                           ::  190, ~lev, Tlon
        0w0                           ::  191, ~myl, Tlon
        0w0                           ::  192, ~wed, Tlon
        0w0                           ::  193, ~duc, Tlon
        0w0                           ::  194, ~fur, Tlon
        0w0                           ::  195, ~fex, Tlon
        0w0                           ::  196, ~nul, Tlon
        0w0                           ::  197, ~luc, Tlon
        0w0                           ::  198, ~len, Tlon
        0w0                           ::  199, ~ner, Tlon
        0wv.aixe9.7gG2w.7cJiy.i3Mg8   ::  200, ~lex, Michael Hartl
        0w0                           ::  201, ~rup, Owen Rescher
        0w0                           ::  202, ~ned, Tlon
        0w0                           ::  203, ~lec, Tlon
        0w0                           ::  204, ~ryd, Tlon
        0w1U.n361n.FC3jj.9cX26.V1Wif  ::  205, ~lyd, Adam Bliss
        0w0                           ::  206, ~fen, Tlon
        0w0                           ::  207, ~wel, Tlon
        0w0                           ::  208, ~nyd, Tlon
        0w0                           ::  209, ~hus, Tlon
        0w0                           ::  210, ~rel, Tlon
        0w0                           ::  211, ~rud, Tlon
        0w0                           ::  212, ~nes, Tlon
        0w16.~8NZV.VyMmf.4toMO.pui1R  ::  213, ~hes, Tlon Investor 14
        0w0                           ::  214, ~fet, Tlon
        0w0                           ::  215, ~des, Tlon
        0w0                           ::  216, ~ret, Tlon
        0w0                           ::  217, ~dun, Tlon
        0w0                           ::  218, ~ler, Tlon
        0w10.w0AUz.QVdks.HCNvf.ja~TO  ::  219, ~nyr, Ivan Matosevic
        0w0                           ::  220, ~seb, Tlon
        0w0                           ::  221, ~hul, Tlon
        0w0                           ::  222, ~ryl, Tlon
        0w0                           ::  223, ~lud, Tlon
        0w0                           ::  224, ~rem, Tlon
        0w0                           ::  225, ~lys, Tlon
        0w3C.YXlEl.pFbYV.9pYWI.d7cla  ::  226, ~fyn, Stephen Burnham
        0w0                           ::  227, ~wer, Tlon
        0w0                           ::  228, ~ryc, Tlon
        0w0                           ::  229, ~sug, Tlon
        0w0                           ::  230, ~nys, Tlon
        0w0                           ::  231, ~nyl, Tlon
        0w0                           ::  232, ~lyn, Tlon
        0w0                           ::  233, ~dyn, Tlon
        0w0                           ::  234, ~dem, Tlon
        0w0                           ::  235, ~lux, Tlon Investor 15
        0w0                           ::  236, ~fed, Tlon
        0w0                           ::  237, ~sed, Tlon
        0w0                           ::  238, ~bec, Tlon
        0w0                           ::  239, ~mun, Tlon
        0w0                           ::  240, ~lyr, Tlon
        0w0                           ::  241, ~tes, Tlon
        0w0                           ::  242, ~mud, Ian Rowan
        0w4.yybWD.F1BgE.ynzlF.47neH   ::  243, ~nyt, Byrne Hobart
        0w0                           ::  244, ~byr, Tlon
        0w0                           ::  245, ~sen, Tlon
        0w0                           ::  246, ~weg, Tlon
        0w28.bRVMq.Oi3tM.zOCNV.j00Yq  ::  247, ~fyr, Anton Dyudin
        0w0                           ::  248, ~mur, Tlon
        0w0                           ::  249, ~tel, Tlon
        0w3D.onYhb.3wvaz.62Ct8.nt3iJ  ::  250, ~rep, Raymond Pasco
        0w0                           ::  251, ~teg, Tlon
        0w0                           ::  252, ~pec, Tlon
        0w0                           ::  253, ~nel, Tlon
        0w0                           ::  254, ~nev, Tlon
        0wY.a0HAU.7Lbkf.6V514.OsJBv   ::  255, ~fes, John Burnham
    ==
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aB, packet format            ::
  ::
  |%
  ++  bite                                              ::  packet to cake
    |=  pac/rock  ^-  cake
    =+  [mag=(end 5 1 pac) bod=(rsh 5 1 pac)]
    =+  :*  vez=(end 0 3 mag)                           ::  protocol version
            chk=(cut 0 [3 20] mag)                      ::  checksum
            wix=(bex +((cut 0 [23 2] mag)))             ::  width of receiver
            vix=(bex +((cut 0 [25 2] mag)))             ::  width of sender
            tay=(cut 0 [27 5] mag)                      ::  message type
        ==
    ?>  =(7 vez)
    ?>  =(chk (end 0 20 (mug bod)))
    :+  [(end 3 wix bod) (cut 3 [wix vix] bod)]
      (kins tay)
    (rsh 3 (add wix vix) bod)
  ::
  ++  kins  |=(tay/@ (snag tay `(list skin)`[%none %open %fast %full ~]))
  ++  ksin  |=(sin/skin `@`?-(sin $none 0, $open 1, $fast 2, $full 3))
  ++  spit                                              ::  cake to packet
    |=  kec/cake  ^-  @
    =+  wim=(met 3 p.p.kec)
    =+  dum=(met 3 q.p.kec)
    =+  yax=?:((lte wim 2) 0 ?:((lte wim 4) 1 ?:((lte wim 8) 2 3)))
    =+  qax=?:((lte dum 2) 0 ?:((lte dum 4) 1 ?:((lte dum 8) 2 3)))
    =+  wix=(bex +(yax))
    =+  vix=(bex +(qax))
    =+  bod=:(mix p.p.kec (lsh 3 wix q.p.kec) (lsh 3 (add wix vix) r.kec))
    =+  tay=(ksin q.kec)
    %+  mix
      %+  can  0
      :~  [3 7]
          [20 (mug bod)]
          [2 yax]
          [2 qax]
          [5 tay]
      ==
    (lsh 5 1 bod)
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aC, PKI engine               ::
  ::
  |%
  ++  go                                                ::    go
    |_  ton/town                                        ::  ames state
    ++  as                                              ::    as:go
      |_  {our/ship saf/sufi}                           ::  per server
      ++  born                                          ::    born:as:go
        |=  {now/@da her/@p tic/@pG ges/gens pub/pass}  ::  register user
        ^-  {(unit will) _+>}
        ?.  =(our (sein her))  [~ +>.$]
        =+  nes=sen
        =+  ryt=(end 6 1 (shaf %tick (mix her (shax sec:ex:q.nes))))
        ?.  =(tic ryt)
          ~&  [%ames-wrong-ticket `@p`ryt]
          [~ +>.$]
        =+  rad=(~(get by hoc.saf) her)
        ?^  rad
          ?.  ?=(^ lew.wod.u.rad)
            $(hoc.saf (~(del by hoc.saf) her))          :: XX how can this be?
          ?.  =(pub r.q.i.lew.wod.u.rad)  [~ +>.$]
          [[~ lew.wod.u.rad] +>.$]
        =+  syp=[[0 [~ p.nes] her now] ges pub]
        =+  ded=[(sign:as:q.nes *code (shaf %meld (sham syp))) syp fak.ton]
        =+  wil=[ded law.saf]
        ?>  =(wil (grip wil ~))
        :-  [~ wil]
        +>.$(hoc.saf (~(put by hoc.saf) her [[~31337.1.1 ~ wil] ~ *clot]))
      ::
      ++  lax                                           ::    lax:as:go
        |_  {her/ship dur/door}                         ::  security engine
        ++  cluy                                        ::    cluy:lax:as:go
          ^-  {p/life q/gens r/acru}                    ::  client crypto
          ?~  lew.wod.dur  !!
          ?.  =(fak.ton r.i.lew.wod.dur)  ~|([%client-wrong-fake her] !!)
          :+  p.p.q.i.lew.wod.dur
            q.q.i.lew.wod.dur
          (haul r.q.i.lew.wod.dur)
        ::
        ++  clon
          ^-  life
          ?~(lew.wod.dur 0 p.p.q.i.lew.wod.dur)
        ::
        ++  deng
          |=  law/will
          %_(+> lew.wod.dur (grip law lew.wod.dur))
        ::
        ++  griz                                        ::    griz:lax:as:go
          |=  now/@da                                   ::  generate key for
          ^-  {p/code q/_+>}
          =+  key=(shas %enty (mix now any.ton))
          :-  key
          %=  +>.$
            any.ton      (shax (mix now any.ton))
            heg.caq.dur  (~(put by heg.caq.dur) (shaf %hand key) key)
          ==
        ::
        ++  pode                                        ::    pode:lax:as:go
          |=  now/@da                                   ::  timeout route
          ^+  +>
          ?:  (lth her 256)  +>
          +>(lun.wod.dur ~)
        ::
        ++  kuch                                        ::    kuch:lax:as:go
          |=  had/hand                                  ::  hear key tag
          ^-  (unit {code _+>})
          =+  wey=(~(get by heg.caq.dur) had)
          ?^  wey
            =+  key=u.wey
            :+  ~  key
            %=    ..kuch
                yed.caq.dur  [~ had u.wey]
                heg.caq.dur  (~(del by heg.caq.dur) had)
                qim.caq.dur  (~(put by qim.caq.dur) had key)
            ==
          =+  dyv=(~(get by qim.caq.dur) had)
          ?~  dyv  ~
          [~ u.dyv ..kuch]
        ::
        ++  wasc                                        ::    wasc:lax:as:go
          |=  key/code                                  ::  hear foreign code
          ^+  +>
          =+  had=(shaf %hand key)
          %_  ..wasc
            yed.caq.dur  [~ had key]
            qim.caq.dur  (~(put by qim.caq.dur) had key)
          ==
        ::
        ++  wast                                        ::    wast:lax:as:go
          |=  ryn/lane                                  ::  set route
          ^+  +>
          %=    +>
              lun.wod.dur
            ?:  ?=({$ix *} ryn)
              ?:  ?|  ?=($~ lun.wod.dur)
                      ?=({$ix *} u.lun.wod.dur)
                      ?&  ?=({$if *} u.lun.wod.dur)
                          (gth p.ryn (add ~s10 p.u.lun.wod.dur))
                      ==
                  ==
                [~ ryn]
              lun.wod.dur
            [~ ryn]
          ==
        ::
        ++  wist                                        ::    wist:lax:as:go
          |=  $:  now/@da                               ::  route via
                  waz/(list @p)
                  ryn/(unit lane)
                  pac/rock
              ==
          ^-  (list boon)
          ?:  =(our her)  [[%ouzo *lane pac] ~]
          ?~  waz  ~
          =+  dyr=?:(=(her i.waz) dur (gur i.waz))
          ?.  ?&  !=(our i.waz)
                  ?=(^ lun.wod.dyr)
              ==
            ::  ~&  [%wist-skip i.waz lun.wod.dyr]
            $(waz t.waz)
          :_  ?:  ?=($ix -.u.lun.wod.dyr)
                $(waz t.waz)
              ~
          :+  %ouzo  u.lun.wod.dyr
          ?:  &(=(i.waz her) =(~ ryn))  pac
          =+  mal=(jam `meal`[%fore her ryn pac])
          %-  spit
          ^-  cake
          :*  [our i.waz]
              ?~  yed.caq.dyr  [%none mal]
              :-  %fast
              %^  cat  7
                p.u.yed.caq.dyr
              (en:crua q.u.yed.caq.dyr mal)
          ==
        ::
        ++  xeno                                        ::    xeno:lax:as:go
          ^-  (list ship)                               ::  foreign canon
          (saxo her)
        ::
        ++  xong                                        ::    xong:lax:as:go
          ^-  (list ship)                               ::  route unto
          =+  [fro=xen too=xeno]
          =+  ^=  oot  ^-  (list ship)
              =|  oot/(list ship)
              |-  ^+  oot
              ?~  too  ~
              ?:  (lien fro |=(a/ship =(a i.too)))  ~
              [i.too $(too t.too)]
          ::  ~&  [%xong-to [our her] (weld oot ?>(?=(^ fro) t.fro))]
          (weld oot ?>(?=(^ fro) t.fro))
        ::
        ++  zuul                                        ::    zuul:lax:as:go
          |=  {now/@da ham/meal}                        ::  encode message
          ^-  {(list rock) _+>}
          =<  weft
          |%
          ++  wain                                      ::  message identity
            ^-  flea
            ?+  -.ham  [0 0]
              $bond  p.ham
              $carp  [kos liq]:p.ham
            == 
          ::
          ++  wasp                                      ::  null security
            ^-({p/skin q/@} [%none (jam ham)])
          ::
          ++  weft                                      ::  fragment message
            ^-  {p/(list rock) q/_+>.$}
            =^  gim  ..weft  wisp
            :_  +>.$
            ::  =-  ~&  :~  %zuul-wisp
            ::              (met 3 q.gim) 
            ::              (lent pex) 
            ::              (turn pex |=(a/@ (flam (shaf %flap a))))
            ::          ==
            ::      pex
            =-  ~?  (gth (lent pex) 1)
                    [%wisp (lent pex)]
                pex
            ^=  pex
            ^-  (list rock)
            =+  wit=(met ?:(fak.ton 13 13) q.gim)
            ?<  =(0 wit)
            ?:  |(?=($back -.ham) =(1 wit))
              =+  yup=(spit [our her] p.gim q.gim)
              [yup ~]
            =+  ruv=(rip ?:(fak.ton 13 13) q.gim)
            =+  inx=0
            |-  ^-  (list rock)
            ?~  ruv  ~
            =+  ^=  vie
                %+  spit
                  [our her]
                wasp(ham [%carp [wain (ksin p.gim) wit] inx i.ruv])
            :-  vie
            $(ruv t.ruv, inx +(inx))
          ::
          ++  wisp                                      ::  generate message
            ^-  {{p/skin q/@} q/_..wisp}
            ?:  =(%carp -.ham)
              [wasp ..wisp]
            ?:  !=(~ yed.caq.dur)
              ?>  ?=(^ yed.caq.dur)
              :_  ..wisp
              :-  %fast
              %^  cat  7
                p.u.yed.caq.dur
              (en:r:cluy q.u.yed.caq.dur (jam ham))
            ?:  &(=(~ lew.wod.dur) |(=(%back -.ham)))
              [wasp ..wisp]
            =^  tuy  +>.$
              ?:(=(~ lew.wod.dur) [*code +>.$] (griz now))
            :_  ..wisp
            =+  yig=sen
            ::  =+  bil=`will`(pare wyl.dur law.saf)    ::  XX not set
            =+  bil=law.saf                             ::  XX send whole will
            =+  hom=(jam ham)
            ?:  =(~ lew.wod.dur)
              :-  %open
              %^    jam
                  [~ `life`p.yig]
                bil
              (sign:as:q.yig tuy hom)
            :-  %full
              =+  cay=cluy
              %^    jam
                  [`life`p.cay `life`p.yig]
                bil
              (seal:as:q.yig pub:ex:r.cay tuy hom)
          --                                            ::  --zuul:lax:as:go
        --                                              ::  --lax:as:go
      ::
      ++  gur                                           ::  default door
        |=  her/ship
        ^-  door
        =+  def=?.((lth her 256) ~ [~ %if ~2000.1.1 0 (mix her .0.0.1.0)])
        [[~2100.1.1 def ~] ~ *clot]
      ::
      ++  myx                                           ::  door by ship
        |=  her/ship
        ^+  lax
        =+  fod=(~(get by hoc.saf) her)
        ~(. lax [her ?~(fod (gur her) u.fod)])
      ::
      ++  nux                                           ::  install door
        |=  new/_lax
        ^+  +>
        +>(hoc.saf (~(put by hoc.saf) her.new dur.new))
      ::
      ++  sen                                           ::  current crypto
        ^-  {p/life q/acru}
        ?~(val.saf !! [p.i.val.saf r.i.val.saf])
      ::
      ++  sev                                           ::  crypto by life
        |=  mar/life
        ^-  {p/? q/acru}
        ?~  val.saf  !!
        ?:  =(mar p.i.val.saf)
          [& r.i.val.saf]
        ?>  (lth mar p.i.val.saf)
        :-  |
        |-  ^-  acru
        ?>  ?=(^ t.val.saf)
        ?:  =(mar p.i.t.val.saf)
          r.i.t.val.saf
        $(t.val.saf t.t.val.saf)
      ::
      ++  sex                                           ::  export secrets
        |-  ^-  mace
        ?~  val.saf  ~
        :-  [p.i.val.saf sec:ex:r.i.val.saf]
        $(val.saf t.val.saf)
      ::
      ++  xen                                           ::  canon
        |-  ^-  (list ship)
        (saxo our)
      ::
      ++  yew                                           ::  best will for
        |=  her/ship
        ^-  will
        =+  gel=(~(get by hoc.saf) her)
        ?^  gel
          lew.wod.u.gel
        ?:((lth her 256) ~ $(her (sein her)))
      --                                                ::  --as:go
    ::
    ++  ha  !:                                          ::  adopt new license
      |=  {our/ship mac/mace wil/will}
      ^-  town
      ?>  !=(~ mac)
      ?>  ?=(^ wil)
      ::  ?>  =(our r.p.q.i.wil)
      ?>  =(wil (grip wil ~))
      ?>  (real mac wil)
      %_    ton
          fak  r.i.wil
          urb
        %+  ~(put by urb.ton)
          our
        :*  %-  flop
            |-  ^-  (list ship)
            ?:((lth our 256) ~ =+(seg=(sein our) [seg $(our seg)]))
        ::
            (turn mac |=({p/life q/ring} [p q (weur q)]))
            wil
            ~
            ~
        ==
      ==
    ::
    ++  su                                              ::  install safe
      |=  new/_as
      ^-  town
      ton(urb (~(put by urb.ton) our.new saf.new))
    ::
    ++  ti                                              ::  expire by time
      |=  now/@da
      ^-  town
      !!
    ::
    ++  us                                              ::  produce safe
      |=  our/ship
      ^-  (unit _as)
      =+  goh=(~(get by urb.ton) our)
      ?~  goh  ~
      [~ ~(. as [our u.goh])]
    --                                                ::  --go
  --
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aG, protocol engine          ::
  ::
  |%
  ++  am                                                ::    am
    |_  {now/@da fox/fort}                              ::  protocol engine
    ++  anon
      |=  wen/@da
      ^-  @tas
      ?:  =(wen now)  %now
      ?:  (gth wen now)
        (cat 3 (scot %ud (msec (sub wen now))) %ms)
      (cat 3 '-' $(now wen, wen now))
    ::
    ++  anun
      |=  wun/(unit @da)
      ^-  @tas
      ?~(wun %no (anon u.wun))
    ::
    ++  anos
      |=  one/@dr
      ^-  @tas
      ?:  =(`@`0 one)  '0ms'
      (cat 3 (scot %ud (msec one)) %ms)
    ::
    ++  anus
      |=  une/(unit @dr)
      ^-  @tas
      ?~(une %no (anos u.une))
    ::
    ++  boot                                            ::    boot:am
      ^-  fort                                          ::  restore from noun
      %=    fox
          urb.ton
        %-  ~(gas by *(map ship sufi))
        %+  turn
          (~(tap by urb.ton.fox) ~)
        |=  {p/ship q/sufi}  ^-  {p/ship q/sufi}
        :-  p
        %=    q
            val
          (turn val.q |=({p/life q/ring r/acru} [p q (weur q)]))
        ==
      ==
    ++  come                                            ::    come:am
      |=  {ges/(unit @t) wid/@ bur/@ fak/?}             ::  instantiate pawn
      ^-  {p/{p/ship q/@uvG} q/fort}
      =+  loy=(bruw wid bur)
      =+  rig=sec:ex:loy
      =+  our=`@p`fig:ex:loy
      =+  syp=[[0 ~ our now] [%en %pawn ges] pub:ex:loy]
      :-  [our pac:ex:loy]
      %_    fox
          ton
        %^    ~(ha go ton.fox)
            our
          `mace`[[0 rig] ~]
        `will`[[(sign:as:loy *@ (shaf %self (sham syp))) syp fak] ~]
          fak.ton
        fak
      ==
    ::
    ++  czar  !:                                        ::    czar:am
      |=  {our/ship ger/@uw fak/?}                      ::  instantiate emperor
      ^-  {p/(list boon) q/fort}
      =+  loy=?:(fak (bruw 2.048 our) (bruw 2.048 ger)) ::  fake uses carrier #
      =+  fim==(fig:ex:loy (zeno our))
      ?:  &(!fak !fim)  !!                              ::  not fake & bad fig
      =+  mac=`mace`[[0 sec:ex:loy] ~]
      =+  syp=`step`[`bray`[0 ~ our now] [%en %czar ~] pub:ex:loy]
      =+  ded=`deed`[(sign:as:loy *@ (shaf %self (sham syp))) syp fak]
      =+  buq=`buck`[mac [ded ~]]
      =:  ton.fox  (~(ha go ton.fox) our buq)
          zac.fox  (~(put by zac.fox) our *corn)
          fak.ton.fox  fak
        ==
      [[[%beer our pac:ex:loy] ~] fox]
    ::
    ++  doze
      %+  hunt  `(add now ~s32)
      |-  ^-  (unit @da)
      ?~  zac.fox  ~
      :(hunt $(zac.fox l.zac.fox) $(zac.fox r.zac.fox) doze:(um p.n.zac.fox))
    ::
    ++  gnaw                                            ::    gnaw:am
      |=  {ryn/lane pac/rock}                           ::  process packet
      ^-  {p/(list boon) q/fort}
      ?.  =(7 (end 0 3 pac))  [~ fox]
      =+  kec=(bite pac)
      ?:  (goop p.p.kec)  [~ fox]
      ?.  (~(has by urb.ton.fox) q.p.kec)
        [~ fox]
      =<  zork
      =<  abet
      ::  ~&  [%in p.p.kec ryn `@p`(mug (shaf %flap pac))]
      ::  ~&  [%in p.p.kec (flam (shaf %flap pac))]
      %-  chew:(ho:(um q.p.kec) p.p.kec)
      [q.kec (shaf %flap pac) ryn r.kec]
    ::
    ++  goop                                            ::  blacklist
      |=  him/ship
      |
    ::
    ++  have                                            ::    have:am
      |=  {our/ship buq/buck}                           ::  acquire license
      ^-  {p/(list boon) q/fort}
      =:  ton.fox  (~(ha go ton.fox) our buq)
          zac.fox  (~(put by zac.fox) our *corn)
        ==
      [[[%beer our pac:ex:q:sen:(need (~(us go ton.fox) our))] ~] fox]
    ::
    ++  kick                                            ::    kick:am
      |=  hen/duct                                      ::  refresh net
      =+  aks=(turn (~(tap by urb.ton.fox) ~) |=({p/ship q/sufi} p))
      |-  ^-  {p/(list boon) q/fort}
      ?~  aks  [~ fox]
      =^  buz  fox  zork:(kick:(um i.aks) hen)
      =^  biz  fox  $(aks t.aks)
      [(weld p.buz p.biz) fox]
    ::
    ++  rack                                            ::    ruck:am
      |=  {soq/sock kos/bole cop/coop}                  ::  new e2e ack
      ^-  {p/(list boon) q/fort}
      zork:abet:(hike:(ho:(um p.soq) q.soq) kos cop)
    ::
    ++  wake                                            ::    wake:am
      |=  hen/duct                                      ::  harvest packets
      =+  caz=zac.fox
      |-  ^-  {p/(list boon) q/fort}
      ?~  caz  [~ fox]
      =^  lef  fox  $(caz l.caz)
      =^  ryt  fox  $(caz r.caz)
      ::
      ::  oldpump
      ::  =^  bun  fox  zork:(wake:(um p.n.caz) hen)
      ::
      ::  newpump
      =^  bun  fox  zork:(walk:(um p.n.caz) hen)
      ::
      ::  nupump
      ::  =^  bun  fox  zork:(wake:(um p.n.caz) hen)
      ::
      :_(fox :(weld p.lef p.ryt p.bun))
    ::
    ++  wise                                            ::    wise:am
      |=  {soq/sock hen/duct cha/path val/*}            ::  send request
      ^-  {p/(list boon) q/fort}
      ::
      ::  oldpump
      ::  zork:abet:(we-wool:(wend:(ho:(um p.soq) q.soq) hen) cha val) 
      ::
      ::  newpump
      zork:abet:(we-woof:(wend:(ho:(um p.soq) q.soq) hen) cha val) 
      ::
      ::  nupump
      ::  zork:abet:(ve-wood:(vend:(ho:(um p.soq) q.soq) hen) cha val) 
    ::
    ++  wish                                            ::    wise:am
      |=  {soq/sock kos/bole cha/path val/*}            ::  return response
      ^-  {p/(list boon) q/fort}
      ::  oldpump
      ::  zork:abet:(we-wool:(wand:(ho:(um p.soq) q.soq) kos) cha val)
      ::
      ::  newpump
      zork:abet:(we-woof:(wand:(ho:(um p.soq) q.soq) kos) cha val)
      ::
      ::  nupump
      ::  zork:abet:ve-abet:(ve-wood:(vand:(ho:(um p.soq) q.soq) kos) cha val)
      ::
    ::
    ++  um                                              ::  per server
      |=  our/ship
      =+  gus=(need (~(us go ton.fox) our))
      =+  ^=  weg  ^-  corn
          =+  weg=(~(get by zac.fox) our)
          ?^(weg u.weg *corn)
      =|  bin/(list boon)
      |%
      ++  doze                                          ::    doze:um:am
        |-  ^-  (unit @da)                              ::  wakeup time
        ?~  wab.weg  ~
        :(hunt $(wab.weg l.wab.weg) $(wab.weg r.wab.weg) doze:(ho p.n.wab.weg))
      ::
      ++  wake                                          ::    wake:um:am
        |=  hen/duct                                    ::  activate (oldpump)
                                                        ::  activate (nupump)
        =.  +>  (kick hen)
        =+  baw=wab.weg
        |-  ^+  +>.^$
        ?~  baw  +>.^$
        =.  +>.^$  $(baw l.baw)
        =.  +>.^$  $(baw r.baw)
        abet:thaw:(ho p.n.baw)
      ::
      ++  walk                                          ::    walk:um:am
        |=  hen/duct                                    ::  activate (newpump)
        =^  gup  pod.weg  (~(top se pod.weg) now)
        |-  ^+  +>.^$
        ?~  gup  +>.^$
        $(gup t.gup, +>.^$ abet:(balk:(ho p.i.gup) q.i.gup))
      ::
      ++  ho                                            ::    ho:um:am
        |=  her/ship                                    ::  per friend
        =+  diz=(myx:gus her)
        =+  bah=(~(get by wab.weg) her)
        =>  .(bah `bath`?~(bah [~ [2 ~ ~] ~ ~] u.bah))
        |%
        ++  abet                                        ::    abet:ho:um:am
          %=  +>.$                                      ::  resolve
            gus      (nux:gus diz)
            wab.weg  (~(put by wab.weg) her bah)
          ==
        ::
        ++  back                                        ::    back:ho:um:am
          |=  {ost/bone dam/flap cop/coop lag/@dr}      ::  receive ack
          ^+  +>
          ?:  =(`@`0 dam)  +>                           ::  dummy ack
          ?.  (~(has by sal.bah) ost)
            ~&  [%back-lost ost (flam dam)]
            +>
          ::  oldpump
          ::  ~&  [%back-took ost (flam dam)]
          ::  (~(we-tock we ost (~(got by sal.bah) ost)) dam cop lag)
          ::
          ::  newpump
          abet:(back:(cave ost) dam cop lag)
          ::  
          ::  nupump
          ::  ve-abet:(ve-back:(vand ost) dam cop lag)
          ::
        ::
        ++  balk                                        ::    balk:ho:um:am
          |=  kos/bole                                  ::  wakeup (newpump)
          ^+  +>
          ::  XX pumpstuff
          =+  vac=(cave kos)
          =^  pex  vac  wake:vac
          =.  +>.$  abet:vac
          (busk xong:diz pex)
        ::
        ++  busk                                        ::    busk:ho:um:am
          |=  {waz/(list ship) pex/(list rock)}         ::  send packets
          %_    +>
              bin
            |-  ^+  bin
            ?~  pex  bin
            $(pex t.pex, bin (weld (flop (wist:diz now waz ~ i.pex)) bin))
          ==
        ::
        ++  cave                                        ::    cave:ho:um:am
          |=  kos/bole                                  ::  new packet pump
          =|  pump
          =<  abed
          |%  
          ++  abed                                      ::  instantiate
            =+  bip=(~(get by nup.bah) kos)
            %_(+ +< ?^(bip u.bip *pump))
          ::
          ++  abet                                      ::  resolve
            =.  .  wade
            =+  nyx=wait
            ::  ~&  :~  %cave-abet  
            ::          [her/her kos/kos]
            ::          [liv/wail win/win] 
            ::          wait/(anun nyx)
            ::      ==
            %_    +>.$
                nup.bah  (~(put by nup.bah) kos +>-(nex nyx))
                pod.weg
              =+  pod=?~(nex pod.weg (~(dal se pod.weg) u.nex her kos))
              ?~(nyx pod (~(put se pod) u.nyx her kos))
            ==
          ::
          ++  aimd                                      ::  TCP formula
            |=  boz/@ud                                 ::  number lost, 0=ack
            +>
          ::
          ++  aime                                      ::  TCP formula
            |=  boz/@ud                                 ::  number lost, 0=ack
            %_    +>
                win
              ?:  =(`@`0 boz) 
                ::
                ::  we don't grow the window if we sense buffer bloat
                ::
                ?:  ?&  !=(`@`0 rtm.pad.sac) 
                        (gth rts.pad.sac (mul 3 rtm.pad.sac))
                    ==
                  win 
                (add 1.536 win)
              (max 1.536 (rsh 0 boz win))
            ==
          ::
          ++  babe                                      ::  message ack
            |=  {liq/tick cop/coop}
            ^+  +>
            =+  lef=(~(got by nem) liq)
            ?.  =(~ cop)
              (done:cull:fine liq q.lef cop)
            ?.  =(1 p.lef)
              +>.$(nem (~(put by nem) liq (dec p.lef) q.lef))
            (done:fine liq q.lef cop)
          ::
          ++  back                                      ::  receive ack
            |=  {dam/flap cop/coop lag/@dr}
            ^+  +>
            =+  luq=(~(get by unc) dam)
            ?~  luq  
              ::  not waiting for this packet - eg, duplicate ack
              +>.$
            (babe:(home(unc (~(del by unc) dam)) dam lag) u.luq cop)
          ::
          ++  burp                                      ::  delay packets after
            |=  {lag/@dr aft/@da}
            ^+  +>
            ?:  =(`@`0 lag)  +>.$
            ?:  &  +>.$
            ~&  :*  %burp 
                    [her=her kos=kos] 
                    [lag=(anos lag) aft=(anon aft)]
                ==
            %_    +>
                chu
              |-  ^+  chu
              ?~  chu  ~  
              ?:  &(=(~ p.n.chu) q.n.chu)
                [n.chu l.chu $(chu r.chu)]
              :_  [$(chu l.chu) $(chu r.chu)]
              ?.  &(?=(^ p.n.chu) (gth u.p.n.chu aft))  n.chu
              n.chu(q %|, p `(add lag u.p.n.chu))
            ==
          ::
          ++  cull                                      ::  clear message  
            |=  liq/tick
            ~&  [%cave-cull her kos liq]
            %_    +>
                chu  
              |-  ^+  chu
              ?~  chu  ~
              =+  ^=  ecu  ^-  (qeu pony)
                  :+  n.chu
                    ?:((lte liq q.n.chu) $(chu l.chu) l.chu)
                  ?:((gte liq q.n.chu) $(chu r.chu) r.chu)
              ?.(=(`@`liq q.n.chu) ecu ~(nip to ecu))
            == 
          ::
          ++  cold  =(`@`0 fax.sac)                     ::  nothing happening
          ++  dead  &(!cold (gth (sub now lax.sac) ~s8))::  stuck
          ++  done                                      ::  deliver ack
            |=  {liq/tick cha/path cop/coop}
            ^+  +>
            +>(..cave we-abet:(we-toad:(wand kos) liq cha cop))
          ::
          ++  fine                                      ::  forget message
            |=  liq/tick 
            +>(nem (~(del by nem) liq))
          ::
          ++  hump                                      ::  combine pomp
            |=  {one/pomp two/pomp}
            ^-  pomp
            :*  (add byt.one byt.two)
                (add boz.one boz.two)
                ?^(rut.one rut.one rut.two)
            ==
          ::
          ++  honk                                      ::  lose all packets
            |-  ^-  (pair pomp (qeu pony))
            ?~  chu  [*pomp ~]
            =+  [lef=$(chu l.chu) ryt=$(chu r.chu)]
            =+  hup=(hump p.lef p.ryt)
            =+  neu=[n=n.chu l=q.lef r=q.ryt]
            ?~  p.n.chu  [hup neu]
            ~&  [%skip `@p`(mug p.s.n.chu)]
            :_  neu(p.n ~, q.n |)
            hup(boz +(boz.hup))
          ::
          ++  home
            |=  {dam/flap lag/@dr}
            ^+  +>
            =^  rey  chu  (hack `dam)
            =^  pex  +>.$  wash:(hone lag rey)
            +>.$(..busk (busk xong:diz pex))
          ::
          ++  hack                                      ::  accept 
            |=  dum/(unit flap)
            ^-  (pair pomp (qeu pony))
            ?~  chu  [*pomp ~]
            =+  ack=&(?=(^ dum) =(u.dum p.s.n.chu))
            =+  :*  ::
                    ::  we have lost all packets ahead of an ack.
                    ::
                    ryt=?.(ack $(chu r.chu) honk(chu r.chu))
                    ::
                    ::  there are no sent packets behind an unsent virgin.
                    ::
                    ^=  lef
                    ?:(&(=(~ p.n.chu) q.n.chu) [p=*pomp q=l.chu] $(chu l.chu))
                ==
            =+  :*  neu=[n=n.chu l=q.lef r=q.ryt]
                    hup=(hump p.lef p.ryt)
                    len=(met 3 q.s.n.chu)
                ==
            ?.  ack
              ?~  p.n.chu
                ::
                ::  n.chu is not live.
                ::
                :: ~&  [?:(q.n.chu %hack-hold %hack-cold) (flam p.s.n.chu)]
                [hup neu]
              ?:  (lth now (add loss u.p.n.chu))
                ::
                ::  n.chu remains live.
                ::
                :: ~&  [%hack-live (anon (add loss u.p.n.chu)) (flam p.s.n.chu)]
                [hup neu]
              ::
              ::  n.chu declared lost, no longer virgin.
              ::
              ~&  [%lost (anon (add loss u.p.n.chu)) (flam p.s.n.chu)]
              [hup(boz +(boz.hup)) neu(p.n ~, q.n |)]
            ::
            ::  n.chu acknowledged.
            ::
            :_  ~(nip to `(qeu pony)`neu)
            %_  hup
              byt  (add len byt.hup)
              rut  ?:  |(?=($~ p.n.chu) !q.n.chu)  
                     ~&  [%deaf (flam p.s.n.chu)]  
                     ~
                   ?:  (lth now u.p.n.chu)
                     ~&  :*  %hack-flub 
                             gap=(anon u.p.n.chu)
                             [now=now wen=u.p.n.chu]
                             (flam p.s.n.chu)
                         ==
                     !!
                   =+  `(min ~s1 (sub now u.p.n.chu))
                   ::  ~&  [%clap `@p`(mug p.s.n.chu) (anon u.p.n.chu)]
                   -
            ==
          ::
          ++  hone                                      ::  adjust for ack
            |=  {lag/@dr rey/pomp}
            ^+  +>
            =<  
                ::   ~&  :~  %hone  [her kos win wail]
                ::           rtm/(anos rtm.pad.sac)
                ::           rtg/(anos rtg.pad.sac)
                ::           rts/(anos rts.pad.sac)
                ::       ==
                .
            =.  +>  ?:(&(=(`@`0 byt.rey) =(`@`0 boz.rey)) +> (aimd boz.rey))
            =+  oyb=byt.pad.sac
            =.  byt.pad.sac  (add oyb byt.rey)
            ?~  rut.rey  +>.$
            =+  old=`@da`(sub now u.rut.rey)
            =+  dub=(mul 2 rtm.pad.sac)
            =:  rtm.pad.sac  ?:  =(`@`0 rtm.pad.sac)  u.rut.rey
                             (min rtm.pad.sac u.rut.rey)
                rtg.pad.sac  ?:  =(`@`0 rtg.pad.sac)  u.rut.rey
                             %+  div 
                               %+  add  (mul rtg.pad.sac oyb) 
                               (mul u.rut.rey byt.rey)
                             byt.pad.sac
                rts.pad.sac  ?:  =(`@`0 rts.pad.sac)  u.rut.rey
                             (div (add (mul rts.pad.sac 3) u.rut.rey) 4)
              ==
            ?.  &(!=(`@`0 dub) (gth rts.pad.sac dub))
              (burp lag old)
            ::
            ::  extreme buffer bloat, roundtrip double the minimum;
            ::  scale back window; delay later-sent packets
            ::
            (burp:(aimd 1) (add lag dub) old)
          ::
          ++  lost  |=(a/@da (gte now (add a loss)))    ::  sent deemed lost
          ++  loss                                      ::  loss timer
            ::  ?:  =(`@`0 rtg.pad.sac)  ~s1
            ::  (mul 3 rtg.pad.sac)
            ~s5
          ::
          ++  send                                      ::  add to queue
            |=  {liq/tick cha/path val/*}
            ^+  +>
            =.  +>  wade
            =^  pex  diz  (zuul:diz now [%bond [(mix kos 1) liq] cha val])
            ::  ~&  [%send (turn pex |=(a/@ (flam (shaf %flap a))))]
            =.  nem  (~(put by nem) liq [(lent pex) cha])
            |-  ^+  +>.^$
            ?~  pex  +>.^$
            =+  dam=(shaf %flap i.pex)
            %=  $
              pex  t.pex
              unc  (~(put by unc) dam liq)
              chu  (~(put to chu) `pony`[~ & liq dam i.pex])
            ==
          ::
          ++  waac                                      ::  merge statistics
            |=  new/plod
            ^-  plod
            =+  ols=(min (bex 20) byt.old)
            =+  sum=(add ols byt.new)
            ~&  [%waac new=byt.new old=byt.old sum=sum]
            :*  sum
                (div (add (mul ols rtm.old) (mul byt.new rtm.new)) sum)
                (div (add (mul ols rtg.old) (mul byt.new rtg.new)) sum)
                rts.new
            ==
          ::
          ++  wade                                      ::  update statistics
            ^+  .
            ?:  =(~ chu)
              ?:  cold  .
              ::
              ::  end burst, save statistics
              ::
              %_(. sac *plow, old pad.sac)
            ?.  =(`@`0 fax.sac)  .
            ::
            ::  start flow, default statistics
            ::
            %_    .
                win  65.536
                sac
              ^-  plow
              :*  fax=now
                  lax=now
                  pad=old(rtm ~s0, byt (min byt.old 16.384))
              ==
            ==
          ::
          ++  wake                                      ::  arbitrary activate
            ^-  {(list rock) _.}
            =.  .  wade
            =^  rey  chu  (hack ~)
            wash:(hone ~s0 rey)
          ::
          ++  wail                                      ::  live count
            |-  ^-  @ud
            ?~  chu  0
            =+  r=$(chu r.chu)
            ?:  &(q.n.chu =(~ p.n.chu))  r
            =+  l=$(chu l.chu)
            ;:  add  l  r
                ?:(&(?=(^ p.n.chu) !(lost u.p.n.chu)) (met 3 q.s.n.chu) 0)
            ==
          ::
          ++  wait                                      ::  wait until
            ^-  (unit @da)
            ?.  =(~ -:wosh)  `now                       ::  XX performance!
            walk  
          ::
          ++  walk                                      ::  first timeout
            |-  ^-  (unit @da)
            ?~  chu  ~
            ;:  hunt
              $(chu r.chu)
              ?~(p.n.chu ~ `(add u.p.n.chu loss))
              $(chu l.chu)
            ==
          ::
          ++  wosh                                      ::  flush packets, hack
            ^-  {(list rock) _.}
            =+  liv=wail
            ?:  (gth liv win)  [~ +]
            =+  [rum=(sub win liv) raw=*(list rock)]
            =<  $:work
            |%  ++  $  [(flop raw) ..wash]
                ++  work
                  ^+  .
                  =+  huc=chu
                  ?~  huc  +
                  =<  $
                  |%  ++  $
                        ^+  ..work
                        =.  ..work  rite
                        ?.  =(~ p.n.huc)  left
                        =+  len=(met 3 q.s.n.huc)
                        ?:  (lth rum len)  ..work
                        %=    left
                            rum      (sub rum len)
                            raw      [q.s.n.huc raw]
                            p.n.huc  `now
                        ==
                      ++  left
                        ^+  ..work
                        =.  ..work  work(chu l.huc)
                        ..work(chu huc(l chu))
                      ++  rite
                        ^+  ..work
                        =.  ..work  work(chu r.huc)
                        ..work(chu huc(r chu))
                  -- 
            --
          ::
          ++  wash                                      ::  flush packets
            ^-  {(list rock) _.}
            =+  liv=wail
            ?:  (gth liv win)  [~ +]
            =+  [rum=(sub win liv) raw=*(list rock)]
            =-  [(flop q.-) ..wash(chu r.-)]
            |-  ^-  (trel @ud (list rock) (qeu pony))
            ?~  chu  [rum raw ~]
            =+  ryt=$(chu r.chu)
            =>  .(rum p.ryt, raw q.ryt, r.chu r.ryt)
            ?.  =(~ p.n.chu)
              ::  ~&  [%wash-live (flam p.s.n.chu)]
              =+  lef=$(chu l.chu)
              [p.lef q.lef [n.chu r.lef r.chu]]
            =+  len=(met 3 q.s.n.chu)
            ?:  (lth rum len)  
              ::  ~&  [%wash-stop (flam p.s.n.chu) [rum len]]
              [rum raw chu]
            ::  ~&  [?:(q.n.chu %fire %warm) len (flam p.s.n.chu)]
            =+  lef=$(chu l.chu, rum (sub rum len), raw [q.s.n.chu raw])
            [p.lef q.lef [n.chu(p `now) r.lef r.chu]]
          --
        ::
        ++  chew                                        ::    chew:ho:um:am
          |=  {sin/skin dam/flap ryn/lane msg/@}        ::  handle anything
          ^+  +>
          ::
          ::  ++chew 
          ::
          =^  fud  diz  (grok sin ryn msg)
          ::  ~&  [%chew sin -.fud `@p`(mug dam) ryn (met 3 msg)]
          ?-  -.fud
            $back  =.  +>.$  ?.  =(%full sin)  +>.$
                       ::  here we send a dummy ack
                       ::  to complete the key exchange and stop
                       ::  the sender from using %full
                       ::  (conk ~ dam)
                       ::  (conk 0 `@`0 ~)
                       +>.$
                    ::  ~&  [%chew-back p.fud (flam dam) (flam q.fud)]
                   (back +.fud) 
            $bond  hi-abet:(hi-bond:(high p.fud dam ryn) q.fud r.fud)
            $carp  =<  hi-abet
                   %-  hi-carp:(high [kos liq]:p.fud dam ryn)
                   [(kins syn.p.fud) cnt.p.fud q.fud]
            $fore  (fore ryn +.fud)
          ==
        ::
        ++  conk                                        ::    conk:ho:um:am
          |=  {kos/bole dam/flap cop/coop}              ::  send acknowledge
          ^+  +>
          ?:  =(0 kos) 
            ::  don't ack an ack
            ~&  [%conk-acak (flam dam)]
            +>
          =^  pex  diz  (zuul:diz now [%back (mix 1 kos) dam cop ~s0])
          (busk xong:diz pex)
        ::
        ++  doze                                        ::    doze:ho:um:am
          ^-  (unit @da)                                ::  wait until
          ::  oldpump
          ::  rtn.sop.bah                               ::  XX oldpump
          ::
          ::  newpump
          =+  doe=~(til se pod.weg)
          ?:  ?=($~ doe)
            ~
          doe
          ::
          ::  nupump
          ::
          ::  =|  wun/(unit @da)
          ::  |-  ^-  (unit @da) 
          ::  ?~  sal.bah  ~
          ::  =.  wun  $(sal.bah l.sal.bah)
          ::  =.  wun  $(sal.bah r.sal.bah)
          ::  =+  nuw=ve-wait:(vond p.n.sal.bah q.n.sal.bah)
          ::  ?~(wun nuw ?~(nuw wun `(min u.nuw u.wun)))
        ::
        ++  fore                                        ::    fore:ho:um:am
          |=  {ryn/lane who/ship via/(unit lane) msg/@} ::  forward packet
          ^+  +>
          =+  ^=  lyn  ^-  lane
              ?~  via  ryn
              ?.  ?=($if -.u.via)  u.via
              [%ix +.u.via]
              ::  u.via
          ?:  =(our who)
            +>.$(bin [[%mead lyn msg] bin])
          =+  zid=(myx:gus who)
          +>.$(bin (weld (flop (wist:zid now xong:zid [~ lyn] msg)) bin))
        ::
        ++  grok                                        ::    grok:ho:um:am
          |=  {sin/skin ryn/lane msg/@}                 ::  decode message
          ^+  [*meal diz]
          ::
          ::  ++grok decodes a message blob to a ++meal.  Decoding
          ::  affects the orb connection state, diz.
          ::
          =+  maw=|=(@ ((hard meal) (cue +<)))
          =.  diz  ?:(=(%none sin) diz (wast:diz ryn))
          ?-  sin
              $none  
            ::  ~&  %chew-none
            [(maw msg) diz]
          ::
              $fast
            ::  ~&  %chew-fast
            =+  [mag=`hand`(end 7 1 msg) bod=(rsh 7 1 msg)]
            =+  dey=(kuch:diz mag)
            ?~  dey
              ~&  [%bad-key her mag]
              !!
            =^  key  diz  u.dey
            [(maw (dy:q:sen:gus key bod)) diz]
          ::
              $full
            ::  ~&  %chew-full
            =+  mex=((hard {p/{p/life q/life} q/will r/@}) (cue msg))
            =.  diz  (deng:diz q.mex)
            =+  wug=cluy:diz
            ?>  =(q.p.mex p.wug)
            =+  gey=(sev:gus p.p.mex)
            =+  mes=(need (tear:as:q.gey pub:ex:r.wug r.mex))
            =.  diz  (wast:(wasc:diz p.mes) ryn)
            [(maw q.mes) diz]
          ::
              $open
            ::  ~&  %chew-open
            =+  mex=((hard {p/{$~ q/life} q/will r/@}) (cue msg))
            =.  diz  (deng:diz q.mex)
            =+  wug=cluy:diz
            ?>  =(q.p.mex p.wug)
            =.  diz  (wast:diz ryn)
            [(maw (need (sure:as:r.wug *code r.mex))) diz]
          ==
        ::
        ++  hike                                        ::    hike:ho:um:am
          |=  {kos/bole cop/coop}                       ::  acknowledgment
          ^+  +>
          ::  ~&  [%hike [our her] kos cop]
          =+  loc=(~(got by fon.bah) kos)
          ?.  &(?=(^ laz.loc) =(kos p.p.u.laz.loc))
            ~&  [%hike-no-message kos laz.loc]
            !!
          ::  ~&  [?~(cop %ro %re) her kos q.p.u.laz.loc]
          hi-abet:(~(hi-back hi [kos q.p.u.laz.loc] [& +.u.laz.loc] loc) cop)
        ::
        ++  high                                        ::  high:ho:um:am
          |=  {fel/flea dam/flap ryn/lane}              ::  external message
          ^+  hi
          ~(. hi fel [& dam ryn] (fall (~(get by fon.bah) p.fel) *lock))
        ::
        ++  hi                                          ::  receiving core
          |_  $:  $:  kos/bole                          ::  sender 
                      liq/tick                          ::  index
                  ==
                  $:  tru/?                             ::  authenticated
                      fap/flap                          ::  critical flap
                      ryn/lane                          ::  received from
                  ==
                  lock
              ==
          ++  hi-abet                                   ::  resolve
            +>(fon.bah (~(put by fon.bah) kos +<+>))
          ::                                            ::  receive message
          ++  hi-bond
            |=   {cha/path val/*}
            ^+  +>
            ?:  (lth liq laq)  
              ::  we already acked this msg; ack it again
              ::  ~&  [%hi-bond-low [kos liq] laq]
              hi-cong
            ?:  (gth liq laq)  
              ::  later than the next msg; ignore
              ~&  [%hi-bond-high [kos liq] laq]
              +>
            ?:  !=(~ laz)
              ::  this msg is already being processed; ignore
              ~&  [%hi-bond-wait [kos liq] laq]
              +>
            =.  nys  (~(del by nys) liq)
            ?:  =(0 (end 0 1 kos))
              ~&  [%br her kos cha liq]
              =.  +>.$  (hi-back ~)
              %=  +>.$
                bin  :_(bin [%malt [our her] (~(got by r.zam.bah) kos) cha val])
              ==
            ~&  [%tr her kos cha liq]
            %=  +>.$
              bin  :_(bin [%milk [our her] kos cha val])
              laz  `[[kos liq] fap ryn]
            == 
          ::
          ++  hi-back                                   ::  app acknowledge
            |=  cop/coop
            ^+  +>
            (hi-cone(laq +(laq), laz ~) cop)
          ::
          ++  hi-carp                                   ::  receive fragment
            |=  {syn/skin cnt/@ud far/(pair @ud @)}
            ^+  +>
            ::  ~&  [%carp fap/`@p`(mug fap) syn/syn cnt/cnt far/p.far]
            ?:  (lth liq laq)
              ::  ~&  [%hi-card-low liq laq]
              hi-cong
            ?:  (gth liq laq)  
              ::  ~&  [%hi-card-high liq laq]
              +>
            =+  neb=`bait`(fall (~(get by nys) liq) [syn 0 [cnt ~]])
            ?>  &(=(p.neb syn) (gth p.r.neb p.far) =(p.r.neb cnt))
            =+  doy=(~(get by q.r.neb) p.far)
            ?^  doy  (hi-conk ~)
            =:  q.r.neb  (~(put by q.r.neb) p.far q.far)
                q.neb    +(q.neb)
              ==
            ?.  =(q.neb p.r.neb)
              (hi-conk(nys (~(put by nys) liq neb)) ~)
            =^  fud  diz  (grok syn ryn (hi-golf r.neb))
            =+  sec=?=(?($open $fast $full) syn)
            =.  tru  |(tru sec)
            ?:  ?=($back -.fud)
              ~&  [%back-phat [kos p.fud] (flam q.fud) r.fud s.fud]
              +>.$(+> (back +.fud))
            ?.  &(tru ?=($bond -.fud) =([kos liq] p.fud))
              ~&  [%ames-bad-bond tru -.fud [[kos liq] p.fud]]
              !!
            (hi-bond q.fud r.fud)
          ::
          ++  hi-cong  (hi-conk (~(get by exc) liq))    ::  accepted ack
          ++  hi-conk                                   ::  stated ack
            |=(cop/coop +>(+> (conk kos fap cop)))
          ::
          ++  hi-cone                                   ::  record ack
            |=  cop/coop
            =.  +>+>  (conk kos fap cop)
            ?~(cop +> +>(exc (~(put by exc) liq u.cop)))
          ::
          ++  hi-golf                                   ::    golf:hi:ho:um:am
            |=  duv/dove                                ::  assemble fragments
            =+  [nix=0 rax=*(list @)]
            |-  ^-  @
            ?:  =(p.duv nix)
              (can ?:(fak.ton.fox 13 13) (turn (flop rax) |=(a/@ [1 a])))
            $(nix +(nix), rax [(need (~(get by q.duv) nix)) rax])
          --
        ::
        ++  pong                                        ::    pong:ho:um:am
          |=  hen/duct                                  ::  test connection
          ^+  +>
          (conk 0 `@`0 ~)
        ::                                              ::
        ++  thaw                                        ::  activate by time
          ^+  .
          =+  lah=sal.bah
          =^  sal  +
              |-  ^+  [lah +>.$]
              ?~  lah  [~ +>.$]
              =^  lef  +>.$  $(lah l.lah) 
              =^  ryt  +>.$  $(lah r.lah) 
              =^  nod  +>.$  ve-abed:ve-wake:(vond n.lah)
              [[nod lef ryt] +>.$]
          +>(sal.bah sal)
        ::
        ++  ve                                          ::  outbound core
          |_  $:  kos/bole                              ::
                  mup/_pume                             ::
                  colt                                  ::
              ==                                        ::
          ++  ve-abed  [[kos +<+>] +>]                  ::  raw resolve
          ++  ve-abet                                   ::  resolve core
            =>  ve-able
            %=    +>
                sal.bah
              (~(put by sal.bah) kos +<+>)
            ==
          ::                                            ::  
          ++  ve-able                                   ::  converge machine
            ve-tire:ve-ably:ve-feed:ve-ably
          ::                                            ::
          ++  ve-ably                                   ::  apply pump effects
            ^+  .
            =^  fex  myn  abet:mup
            =.  mup  ~(. pume ~ myn)
            |-  ^+  +>.$
            ?~  fex  +>.$
            %=    $
                +>.$ 
              =.  +>.$  $(fex t.fex)
              ?-    -.i.fex
                  $send
                ~&  [%send `@p`(mug p.i.fex)]
                +>.$(+> (busk xong:diz [q.i.fex ~]))
              ::
                  $good
                ~&  [%good `@p`(mug p.i.fex)]
                (ve-good q.i.fex r.i.fex)
              ==
            ==
          ::                                            ::
          ++  ve-back                                   ::  hear an ack
            |=  {dam/flap cop/coop lag/@dr}
            +>(mup (back:mup dam cop lag))
          ::                                            ::
          ++  ve-feed                                   ::  feed pump
            ^+  .
            =^  cly  .  (ve-find want.mup)
            +(mup (ship:mup now cly))
          ::                                            ::
          ++  ve-find                                   ::  collect packets
            |=  may/@ud
            ^-  {(list clue) _+>}
            =-  [(flop -<) ->]
            =+  [inx=lac hav=*(list clue)]
            |-  ^-  {(list clue) _+>.^$}
            ?:  |(=(0 may) =(inx seq))  [hav +>.^$]
            =^  hey  +>.^$  (ve-flow inx may hav)
            $(inx +(inx), may p.hey, hav q.hey)
          ::                                            ::
          ++  ve-flow                                   ::  collect from msg
            |=  {tiq/tick may/@ud hav/(list clue)}
            =+  mob=(~(got by cob) tiq)
            |-  ^-  {(pair @ud (list clue)) _+>.^$}
            ?:  |(=(0 may) ?=($~ cly.mob))
              [[may hav] +>.^$(cob (~(put by cob) tiq mob))]
            %=  $
              may      (dec may)
              hav      [i.cly.mob hav]
              cly.mob  t.cly.mob
            ==
          ::                                            ::
          ++  ve-good                                   ::  handle ack
            |=  {paz/part cop/coop}
            ^+  +>
            =+  bum=(~(get by cob) q.paz)
            ?:  |(?=($~ bum) =(~ cly.u.bum))  
              ~&  [%ve-good-ignore paz ?=($~ cop)]
              +>.$
            ?^  cop
              ::
              ::  a failure; save this nack, clear the message
              ::
              ~&  [%ve-good-fail q.paz]
              %_  +>.$
                mup  (cull:mup q.paz)
                cob  (~(put by cob) q.paz u.bum(cly ~, cup `cop))
              ==
            ?>  (lth ack.u.bum num.u.bum)
            =.  ack.u.bum  +(ack.u.bum)
            =.  cup.u.bum  ?.(=(ack.u.bum num.u.bum) ~ [~ ~])
            +>.$(cob (~(put by cob) q.paz u.bum))
          ::                                            ::
          ++  ve-tire                                   ::  report results
            |-  ^+  +
            =+  zup=(~(get by cob) lac)
            ?~  zup  +.$
            ?~  cup.u.zup  +.$
            ~&  [?:(=(0 (end 0 1 kos)) %ta %ba) her kos lac]
            %=    $
                lac  +(lac)
                cob  (~(del by cob) lac)
                bin  :_  bin
              ?:  =(1 (end 0 1 kos))
                [%cola [our her] kos [cha u.cup]:u.zup]
              [%coke [our her] (~(got by r.zam.bah) kos) [cha u.cup]:u.zup]
            ==
          ::                                            ::
          ++  ve-wait                                   ::  next wakeup
            ^-  (unit @da)
            wait:mup
          ::                                            ::
          ++  ve-wake                                   ::  timeout
            ^+  .
            .(mup (flay:mup now))
          ::                                            ::
          ++  ve-wood                                   ::  send
            |=  {cha/path val/*}
            ^+  +>
            =^  pex  diz  (zuul:diz now [%bond [(mix kos 1) seq] cha val])
            ~&  [?:(=(0 (end 0 1 kos)) %tx %bx) her kos seq cha (lent pex)]
            %_    +>.$ 
                seq  +(seq)
                cob
              %+  ~(put by cob)
                seq
              ^-  comb
              :*  ~
                  cha
                  (lent pex)
                  0
                  =+  inx=0
                  |-  ?~  pex  ~
                      :_  $(pex +.pex, inx +(inx))
                      [& [inx seq] (shaf %flap i.pex) i.pex]
              ==
            ==
          --
        ::                                              ::
        ++  vind                                        ::  default colt
          ^-  colt
          :*  0     ::  seq/tick
              0     ::  lac/tick
              ~     ::  mis/(map tick (pair path coop))
              ~     ::  cob/(map tick comb)
              ^-  mini
              :*  ^-  stat
                  :*  :*  0               :: cur/@ud
                          4               :: max/@ud
                          0               :: rey/@ud
                      ==
                      :*  (div ~s1 30)    :: rtt/@dr
                          ~2010.1.1       :: las/@da
                          ~2010.1.1       :: lad/@da
                  ==  ==
                ~
                ~
          ==  ==
        ::                                              ::
        ++  vond                                        ::  outgoing core
          |=  {kos/bole cot/colt}
          ~(. ve kos ~(. pume ~ myn.cot) cot)
        ::                                              ::
        ++  vand                                        ::  response core
          |=  kos/bole
          (vond kos (fall (~(get by sal.bah) kos) vind))
        ::                                              ::
        ++  vend                                        ::  request core
          |=  hen/duct
          ^+  ve
          =+  ust=(~(get by q.zam.bah) hen)
          ?~  ust
            %.  [p.zam.bah vind]
            %_  vond
              p.zam.bah  (add 2 p.zam.bah)
              q.zam.bah  (~(put by q.zam.bah) hen p.zam.bah)
              r.zam.bah  (~(put by r.zam.bah) p.zam.bah hen)
            ==
          (vond u.ust (~(got by sal.bah) u.ust))
        ::
        ++  we                                          ::    we:ho:um:am
          |_  {kos/bole colt}                           ::  outgoing core
          ++  we-abet                                   ::    abet:we:ho:um:am
            %=    +>                                    ::  resolve
                sal.bah
              (~(put by sal.bah) kos +<+)
            ==
          ::
          ++  we-tire                                   ::    tire:we:ho:um:am
            |-  ^+  +                                   ::  report results
            =+  zup=(~(get by mis) lac)
            ?~  zup  +>
            ~&  [?:(=(0 (end 0 1 kos)) %ta %ba) her kos lac]
            %=    $
                lac  +(lac)
                mis  (~(del by mis) lac)
                bin  :_  bin
              ?:  =(1 (end 0 1 kos))
                [%cola [our her] kos u.zup]
              [%coke [our her] (~(got by r.zam.bah) kos) u.zup]
            ==
          ::
          ++  we-toad                                   ::    toad:we:ho:um:am
            |=  {liq/tick cha/path cop/coop}            ::  apply ack
            ^+  +>
            ?:  (lth liq lac)  +>.$
            ?:  (~(has by mis) liq)  +>.$
            we-tire(mis (~(put by mis) liq cha cop))
          ::
          ++  we-woof                                   ::    woof:we:ho:um:am
            |=  {cha/path val/*}                        ::  send message
            =<  we-abet
            ^+  +>
            ~&  [?:(=(0 (end 0 1 kos)) %tx %bx) her kos seq cha]
            ::  ~&  [%we-woof seq cha (mug val)]
            +>(seq +(seq), +> abet:(send:(cave kos) seq cha val))
          --
        ::
        ++  wand                                        ::    wend:ho:um:am
          |=  kos/bole                                  ::  response core
          ^+  we
          ~(. we kos (fall (~(get by sal.bah) kos) *colt))
        ::
        ++  wend                                        ::    wend:ho:um:am
          |=  hen/duct                                  ::  request core
          ^+  we
          =+  ust=(~(get by q.zam.bah) hen)
          ?~  ust
            %~  .
              %_  we
                p.zam.bah  (add 2 p.zam.bah)
                q.zam.bah  (~(put by q.zam.bah) hen p.zam.bah)
                r.zam.bah  (~(put by r.zam.bah) p.zam.bah hen)
              ==
              p.zam.bah 
              *colt
            ==
          ~(. we u.ust (~(got by sal.bah) u.ust))
        ::
        ++  zest
          ~
        --                                              ::  --ho:um:am
      ::
      ++  kick                                          ::    kick:um:am
        |=  hen/duct                                    ::  test connection
        ^+  +>
        =+  hoy=hoy.saf.gus
        |-  ^+  +>.^$
        ?~  hoy
          +>.^$
        $(hoy t.hoy, +>.^$ (pong i.hoy hen))
      ::
      ++  pals                                          ::    pals:um:am
        ^-  (list @p)                                   ::  active neighbors
        ::  XX
        ~
      ::
      ++  pong                                          ::    pong:um:am
        |=  {her/ship hen/duct}                         ::  test neighbor
        ^+  +>
        abet:(pong:(ho her) hen)
      ::
      ++  zork                                          ::    zork:um:am
        ^-  {p/(list boon) q/fort}                      ::  resolve
        :-  (flop bin)
        %_  fox
          ton  (~(su go ton.fox) gus)
          zac  (~(put by zac.fox) our.gus weg)
        ==
      --                                                ::  --um:am
    --                                                  ::  --am
  --
  .  ==
  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::
  ::              section 4aH, protocol vane            ::
  ::
  =|  $:  fox/fort                                      ::  kernel state
      ==                                                ::
  |=  {now/@da eny/@ ski/sley}                          ::  current invocation
  ^?                                                    ::  opaque core
  =<
    |%                                                  ::  vane interface
    ++  call                                            ::  handle request
      |=  $:  hen/duct
              hic/(hypo (hobo kiss-ames))
          ==
      =>  %=    .                                       ::  XX temporary
              q.hic
            ^-  kiss-ames
            ?:  ?=($soft -.q.hic)
              ((hard kiss-ames) p.q.hic)
            ?:  (~(nest ut -:!>(*kiss-ames)) | p.hic)  q.hic
            ~&  [%ames-call-flub (@tas `*`-.q.hic)]
            ((hard kiss-ames) q.hic)
          ==
      ^-  {p/(list move) q/_..^$}
      =^  duy  ..knob
        (knob hen q.hic)
      [duy ..^$]
    ::
    ++  doze
      |=  {now/@da hen/duct}
      ^-  (unit @da)
      ^doze
    ::
    ++  load
      |=  old/fort
      ^+  ..^$
      ~&  %ames-reload
      ..^$(fox old)
    ::
    ++  scry
      |=  {fur/(unit (set monk)) ren/@tas who/ship syd/desk lot/coin tyl/path}
      ^-  (unit (unit cage))
      ?~  tyl  [~ ~]
      =+  hun=(slaw %p i.tyl)
      ?~  hun  [~ ~]
      ?.  =(`@`0 ren)  ~
      ?+    lot  ~
          {$$ $ud @}
        (perm who u.hun q.p.lot [syd t.tyl])
      ::
          {$$ $da @}
        ?.  =(now q.p.lot)  ~
        (temp who u.hun [syd t.tyl])
      ==
    ::
    ++  stay  fox
    ++  take                                            ::  accept response
      |=  {tea/wire hen/duct hin/(hypo sign-arvo)}
      ^-  {p/(list move) q/_..^$}
      =^  duy  ..knap
        (knap tea hen q.hin)
      [duy ..^$]
    --
  |%
  ++  claw  |=(our/ship ^-(duct hen:(need (~(get by zac.fox) our))))
  ++  clod
    |=  {soq/sock kos/bole cha/path hen/duct cad/card-ames}
    ^-  {(list move) fort}
    ?>  ?=({@ *} cha)
    =+  pax=[(scot %p p.soq) (scot %p q.soq) (scot %ud kos) ~]
    =+  ^=  did
        ^-  move
        ?+  i.cha  ~|([%bad-vane soq hen cha] !!)
          $c  [hen %pass pax `note-arvo`[%c cad]]  
          $e  [hen %pass pax `note-arvo`[%e cad]]
          $g  [hen %pass pax `note-arvo`[%g cad]]
        ==
    [[did ~] fox]
  ::
  ++  clop
    |=  {now/@da hen/duct bon/boon}
    ^-  {(list move) fort}
    ?-    -.bon
        $acid  :_(fox [[hen [%give %drop ~]] ~])
        $beer
      :_  fox(zac (~(put by zac.fox) p.bon `corn`[hen ~ ~]))
      ~&  [%beer p.bon]
      :*  [hen [%slip %c %init p.bon]]
          [hen [%give %init p.bon]]
          [hen [%slip %a %kick now]]
          [hen [%slip %e %init p.bon]]
          [hen [%slip %g %init p.bon]]
          [hen [%slip %d %init p.bon]]                  ::  must be after gall
          ~
      ==
    ::
        $cola  (clod p.bon q.bon r.bon hen [%went p.bon +.r.bon q.bon s.bon])
        $coke  :_(fox [[q.bon [%give %woot q.p.bon r.bon s.bon]] ~])
        $malt  :_(fox [[q.bon [%give %waft q.p.bon r.bon s.bon]] ~])  
        $mead  :_(fox [[hen [%give %hear p.bon q.bon]] ~])
        $milk  (clod p.bon q.bon r.bon hen [%west p.bon +.r.bon q.bon s.bon])
        $ouzo
      ::  ~&  [%to now p.bon `@p`(mug (shaf %flap q.bon))] 
      ::  ~&  [%to (flam (shaf %flap q.bon))]
      :_  fox
      [[gad.fox [%give %send p.bon q.bon]] ~]
    ::
        $wine
      :_  fox
      =+  fom=~(rend co %$ %p q.p.bon)
      :~  :-  hen
          :+  %slip  %d
          :+  %flog  %text
          ;:  weld
            "; "
            fom
            q.bon
          ==
      ==
    ==
  ::
  ++  doze
    ^-  (unit @da)
    ~(doze am now fox)
  ::
  ++  knap
    |=  {tea/wire hen/duct sih/sign-arvo}
    ^-  {(list move) _+>}
    ?.  ?=({@ @ @ $~} tea)
      ~&  [%knap-tea tea]
      !!
    =+  [soq kos]=[[(slav %p i.tea) (slav %p i.t.tea)] (slav %ud i.t.t.tea)]
    ?+    sih  
      ~|([%ames-sign -.sih (@tas +<.sih)] !!)
    ::
        {?($e $c $g) $rend *}
      =^  bin  fox  (~(wish am [now fox]) soq kos p.+>.sih q.+>.sih)
      (knit hen bin)
    ::
        {?($e $c $g) $mack *}
      =^  bin  fox
          (~(rack am [now fox]) soq kos ?~(+>.sih ~ `[~ %lose u.p.+>.sih]))
      (knit hen bin)
    ==
  ::
  ++  knit
    |=  {hen/duct bin/(list boon)}
    ^-  {(list move) _+>}
    =|  out/(list move)
    |-  ^+  [out +>.^$]
    ?~  bin
      [(flop out) +>.^$]
    =^  toe  fox  (clop now hen i.bin)
    $(bin t.bin, out (weld (flop toe) out))
  ::
  ++  knob
    |=  {hen/duct kyz/kiss-ames}
    ^-  {(list move) _+>}
    ?:  ?=($crud -.kyz)
      [[[hen [%slip %d %flog kyz]] ~] +>]
    =^  bin  fox
        ^-  {(list boon) fort}
        ?-    -.kyz
            $barn
          [~ fox(gad hen)]
            $cash
          (~(have am [now fox]) p.kyz q.kyz)
        ::
            ?($want $wegh $west)
          !!
        ::
            $hear
          (~(gnaw am [now fox]) p.kyz q.kyz)
        ::
            $hole
          ~&  %ames-hole-disabled
          [~ fox]
        ::
            $junk
          [~ fox(any.ton (shax (mix any.ton.fox p.kyz)))]
        ::
            $kick
          (~(kick am [now fox(hop p.kyz)]) hen)
        ::
            $make
          =+  vun=(~(come am [now fox]) p.kyz (bex q.kyz) r.kyz s.kyz)
          [[[%beer p.vun] ~] q.vun]
        ::
            $sith
          (~(czar am [now fox]) p.kyz q.kyz r.kyz)
        ::
            $wake
          (~(wake am [now fox]) hen)
        ::
            $went
          ::  we don't send any responses as yet
          !!
        ::
            $wont
          (~(wise am [now fox]) p.kyz hen q.kyz r.kyz)
        ==
    (knit hen bin)
  ::
  ++  perm
    |=  {our/ship his/ship mar/@ud tyl/path}
    ^-  (unit (unit cage))
    ?~  tyl  ~
    ?:  ?=({$name $~} tyl)
      =+  wul=$(tyl [%will ~])
      ``[%noun !>(?~(wul (scot %p his) (gnow his q.q.q:((hard deed) -.u.wul))))]
    ?:  ?=({$gcos $~} tyl)
      =+  wul=$(tyl [%will ~])
      ?~(wul ~ ``[%noun !>(`gcos`q.q.q:((hard deed) -.u.wul))])
    =+  gys=(~(us go ton.fox) our)
    ?~  gys  ~
    ?.  =(our his)
      ?:  ?=({$will $~} tyl)
        =+  fod=(~(get by hoc.saf.u.gys) his)
        ?~  fod  ~
        %+  bind  (rick mar his lew.wod.u.fod)
        |=(a/will `[%noun !>(a)])
      ?:  ?=({$tick $~} tyl)
        ?.  =(our (sein his))  ~
        ``[%noun !>((end 6 1 (shaf %tick (mix his (shax sec:ex:q:sen:u.gys)))))]
      ~
    ?:  ?=({$buck $~} tyl)
      =+  muc=(rice mar sex:u.gys)
      =+  luw=(rick mar our law.saf.u.gys)
      ?.  &(?=(^ muc) ?=(^ luw))  ~
      ``[%noun !>(`buck`[u.muc u.luw])]
    ?:  ?=({$code $~} tyl)
      ``[%noun !>((end 6 1 (shaf %pass (shax sec:ex:q:sen:u.gys))))]
    ?:  ?=({$will $~} tyl)
      (bind (rick mar our law.saf.u.gys) |=(a/will `[%noun !>(a)]))
    ~
  ::
  ++  temp
    |=  {our/ship his/ship tyl/path}
    ^-  (unit (unit cage))
    ?:  ?=({?($show $tell) *} tyl)
      ?^  t.tyl  [~ ~]
      =+  gys=(~(us go ton.fox) our)
      ?~  gys  [~ ~]
      =+  zet=zest:(ho:(~(um am [now fox]) our) his)
      ``[%noun ?:(=(%show i.tyl) !>(>zet<) !>(zet))]
    ?:  ?=({$pals $~} tyl)
      ?.  =(our his)
        ~
      ``[%noun !>(pals:(~(um am [now fox]) our))]
    ?.  ?=({$life $~} tyl)
      =+  muc=$(tyl [%life ~])
      (perm our his ?~(muc 0 (@ud u.muc)) tyl)
    =+  gys=(~(us go ton.fox) our)
    ?~  gys  ~
    ?.  =(our his)
      =+  fod=(~(get by hoc.saf.u.gys) his)
      ?~  fod  ~
      ?~  lew.wod.u.fod  ~
      ``[%noun !>(`@ud`p.p.q.i.lew.wod.u.fod)]
    ?~  val.saf.u.gys  ~
    ``[%noun !>(`@ud`p.i.val.saf.u.gys)]
  ::
  ++  wegh
    ^-  mass
    :-  %ames
    :-  %|
    :~  fox+[%& fox]
    ==
  --
