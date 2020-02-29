/+  *test
|%
++  test-slam-wa-dry  ^-  tang
  ::
  %+  expect-eq
    !>(7)
    -:(~(slam wa *worm) !>(add) !>([3 4]))
::  +test-slam-wa-wet: does +slam:wa perform correct wet type inference?
::
::    Also test that the cache doesn't gain any new entries when given a
::    sample of a previously seen type.
::
++  test-slam-wa-wet  ^-  tang
  ::  use the same .list-type for both calls
  ::
  ::    Types defined on different lines won't be noun-equal, and so
  ::    won't test that the cache kicked in on the second entry.
  ::
  =/  list-type=type  -:!>(*(list @))
  =|  worm0=worm
  =+  [res1 worm1]=(~(slam wa worm0) !>(flop) [list-type ~[1 2 3]])
  =+  [res2 worm2]=(~(slam wa worm1) !>(flop) [list-type ~[4 5 6]])
  ::
  ;:  weld
    %+  expect-eq
      res1
      [list-type ~[3 2 1]]
  ::
    %+  expect-eq
      res2
      [list-type ~[6 5 4]]
  ::
    %+  expect-eq
      !>  worm1
      !>  worm2
  ==
::
++  test-side-ok  ^-  tang
  =/  vax=vase  !>([%foo 17])
  %+  expect-eq
    !>  (side vax)
    !>  [hed=!>(%foo) tal=!>(17)]
::
++  test-side-crash  ^-  tang
  =/  vax=vase  !>(17)
  %+  expect-eq
    !>  ?=([%| *] (mule |.((side vax))))
    !>  `?`%.y
::
++  test-sill-ok  ^-  tang
  =/  vax=vase  !>(`(list @ud)`~[1 2 3])
  %+  expect-eq
    !>  `(list @ud)`(turn (sill vax) |=(vase !<(@ud +<)))
    !>  `(list @ud)`~[1 2 3]
::
++  test-sill-crash  ^-  tang
  =/  vax=vase  !>([1 2])
  %+  expect-eq
    !>  ?=([%| *] (mule |.((sill vax))))
    !>  `?`%.y
--
