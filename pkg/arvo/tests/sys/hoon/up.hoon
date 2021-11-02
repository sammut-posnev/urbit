/+  *test
::
=/  cor  (up @ @)
=/  pr  (gas:cor ~ ~[[1 1 1] [2 2 2] [3 3 3] [4 4 4]])
=/  qr  (gas:cor ~ ~[[4 4 4] [3 3 3] [2 2 2] [1 1 1]])
=/  rr  (gas:cor ~ ~[[1 5 1] [2 2 2] [3 3 3] [4 4 4]])
=/  sr  (gas:cor ~ ~[[2 2 2] [1 1 1] [4 4 4] [3 3 3]])
::
=>
|%
++  grab
  |=  a=(unit (qual @ @ @ pri:cor))
  ^-  (trel @ @ @)
  ?>  ?=(^ a)
  [p.u.a q.u.a r.u.a]
--
::
|%
++  test-zero
  ;:  weld
    %-  expect
      !>  (zero:cor 0 2)
    %-  expect
      !>  !(zero:cor 4 5)
  ==
::
++  test-gone
  ;:  weld
    %-  expect  !>  (gone:cor 0 2 3)
    %-  expect  !>  !(gone:cor 0 1 3)
  ==
::
++  test-mask
  ;:  weld
    %+  expect-eq
      !>  (dec 0xffff.ffff)
      !>  (mask:cor 1)
    %+  expect-eq
      !>  (dec 0xffff.ffff)
      !>  (mask:cor 0xffff.ffff)
    %+  expect-eq
      !>  3.758.096.384
      !>  (mask:cor 0xf000.0000)
  ==
::
++  test-pert:cor
  ;:  weld
    %+  expect-eq
      !>  0
      !>  (pert:cor 1 1)
    %+  expect-eq
      !>  2
      !>  (pert:cor 2 1)
    %+  expect-eq
      !>  2.147.483.648
      !>  (pert:cor 2 0xffff.ffff)
  ==
::
++  test-high
  ;:  weld
    %+  expect-eq
      !>  1
      !>  (high:cor 0b1)
    %+  expect-eq
      !>  2
      !>  (high:cor 0b10)
    %+  expect-eq
      !>  4
      !>  (high:cor 0b100)
    %+  expect-eq
      !>  128
      !>  (high:cor 0b1000.0000)
  ==
::
++  test-lex
  ;:  weld
    %-  expect
      !>  (lex:cor [1 2] [3 4])
    %-  expect
      !>  (lex:cor [1 3] [2 4])
    %-  expect
      !>  !(lex:cor [2 3] [1 4])
    %-  expect
      !>  !(lex:cor [1 4] [1 2])
  ==
::
++  test-bot  ^-  tang
  ;:  weld
    %+  expect-eq
      !>  [1 1 1]
      !>  (grab (bot:cor pr))
    %+  expect-eq
      !>  [1 1 1]
      !>  (grab (bot:cor qr))
    %+  expect-eq
      !>  [1 1 1]
      !>  (grab (bot:cor sr))
  ==
::
++  test-cut  ^-  tang
  =/  tr  (gas:cor ~ ~[[2 2 2] [3 3 3] [4 4 4]])
  ;:  weld
    %+  expect-eq
      !>  tr
      !>  (cut:cor pr)
    %+  expect-eq
      !>  tr
      !>  (cut:cor qr)
    %+  expect-eq
      !>  tr
      !>  (cut:cor sr)
  ==
::
++  test-gun-pri  ^-  tang
  =/  tr  (gas:cor qr ~[[5 5 5]])
  ;:  weld
    %+  expect-eq
      !>  tr
      !>  q:(gun:cor pr 5 5 5)
    %+  expect-eq
      !>  tr
      !>  q:(gun:cor qr 5 5 5)
    %+  expect-eq
      !>  tr
      !>  q:(gun:cor sr 5 5 5)
  ==
::
++  test-gun-vic  ^-  tang
  =/  tr  (gun:cor qr 1 5 1)
  =/  ur  (gun:cor qr 2 5 2)
  =/  vr  (gun:cor qr 3 5 3)
  =/  wr  (gun:cor qr 4 5 4)
  ;:  weld
    %+  expect-eq
      !>  (some [1 1])
      !>  p.tr
    %+  expect-eq
      !>  (some [2 2])
      !>  p.ur
    %+  expect-eq
      !>  (some [3 3])
      !>  p.vr
    %+  expect-eq
      !>  (some [4 4])
      !>  p.wr
  ==
::
++  test-see-pri  ^-  tang
  %+  expect-eq
    !>  rr
    !>  q:(see:cor qr 1 5)
::
++  test-see-vic  ^-  tang
  ;:  weld
    %+  expect-eq
      !>  ~
      !>  p:(see:cor qr 5 5)
    %+  expect-eq
      !>  (some [1 1])
      !>  p:(see:cor qr 1 5)
  ==
--