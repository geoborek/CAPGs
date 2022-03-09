; Transport two-cities-sequential-14nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-two-cities-sequential-14nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-1-loc-3 city-1-loc-1) 22)
 (= (base-drive city-1-loc-1 city-1-loc-3) 22)
 (= (base-drive city-1-loc-4 city-1-loc-1) 26)
 (= (base-drive city-1-loc-1 city-1-loc-4) 26)
 (= (base-drive city-1-loc-5 city-1-loc-4) 12)
 (= (base-drive city-1-loc-4 city-1-loc-5) 12)
 (= (base-drive city-1-loc-6 city-1-loc-2) 19)
 (= (base-drive city-1-loc-2 city-1-loc-6) 19)
 (= (base-drive city-1-loc-6 city-1-loc-3) 34)
 (= (base-drive city-1-loc-3 city-1-loc-6) 34)
 (= (base-drive city-1-loc-7 city-1-loc-1) 15)
 (= (base-drive city-1-loc-1 city-1-loc-7) 15)
 (= (base-drive city-1-loc-7 city-1-loc-3) 16)
 (= (base-drive city-1-loc-3 city-1-loc-7) 16)
 (= (base-drive city-1-loc-7 city-1-loc-4) 31)
 (= (base-drive city-1-loc-4 city-1-loc-7) 31)
 (= (base-drive city-1-loc-8 city-1-loc-4) 35)
 (= (base-drive city-1-loc-4 city-1-loc-8) 35)
 (= (base-drive city-1-loc-8 city-1-loc-7) 30)
 (= (base-drive city-1-loc-7 city-1-loc-8) 30)
 (= (base-drive city-1-loc-9 city-1-loc-6) 28)
 (= (base-drive city-1-loc-6 city-1-loc-9) 28)
 (= (base-drive city-1-loc-10 city-1-loc-1) 33)
 (= (base-drive city-1-loc-1 city-1-loc-10) 33)
 (= (base-drive city-1-loc-10 city-1-loc-3) 25)
 (= (base-drive city-1-loc-3 city-1-loc-10) 25)
 (= (base-drive city-1-loc-10 city-1-loc-6) 35)
 (= (base-drive city-1-loc-6 city-1-loc-10) 35)
 (= (base-drive city-1-loc-10 city-1-loc-7) 18)
 (= (base-drive city-1-loc-7 city-1-loc-10) 18)
 (= (base-drive city-1-loc-10 city-1-loc-8) 24)
 (= (base-drive city-1-loc-8 city-1-loc-10) 24)
 (= (base-drive city-1-loc-10 city-1-loc-9) 32)
 (= (base-drive city-1-loc-9 city-1-loc-10) 32)
 (= (base-drive city-1-loc-11 city-1-loc-9) 24)
 (= (base-drive city-1-loc-9 city-1-loc-11) 24)
 (= (base-drive city-1-loc-12 city-1-loc-1) 29)
 (= (base-drive city-1-loc-1 city-1-loc-12) 29)
 (= (base-drive city-1-loc-12 city-1-loc-3) 23)
 (= (base-drive city-1-loc-3 city-1-loc-12) 23)
 (= (base-drive city-1-loc-12 city-1-loc-7) 34)
 (= (base-drive city-1-loc-7 city-1-loc-12) 34)
 (= (base-drive city-1-loc-13 city-1-loc-9) 29)
 (= (base-drive city-1-loc-9 city-1-loc-13) 29)
 (= (base-drive city-1-loc-13 city-1-loc-11) 13)
 (= (base-drive city-1-loc-11 city-1-loc-13) 13)
 (= (base-drive city-1-loc-14 city-1-loc-1) 33)
 (= (base-drive city-1-loc-1 city-1-loc-14) 33)
 (= (base-drive city-1-loc-14 city-1-loc-4) 13)
 (= (base-drive city-1-loc-4 city-1-loc-14) 13)
 (= (base-drive city-1-loc-14 city-1-loc-5) 18)
 (= (base-drive city-1-loc-5 city-1-loc-14) 18)
 (= (base-drive city-1-loc-14 city-1-loc-7) 33)
 (= (base-drive city-1-loc-7 city-1-loc-14) 33)
 (= (base-drive city-1-loc-14 city-1-loc-8) 25)
 (= (base-drive city-1-loc-8 city-1-loc-14) 25)
 (= (base-drive city-2-loc-4 city-2-loc-2) 26)
 (= (base-drive city-2-loc-2 city-2-loc-4) 26)
 (= (base-drive city-2-loc-5 city-2-loc-4) 35)
 (= (base-drive city-2-loc-4 city-2-loc-5) 35)
 (= (base-drive city-2-loc-6 city-2-loc-1) 36)
 (= (base-drive city-2-loc-1 city-2-loc-6) 36)
 (= (base-drive city-2-loc-6 city-2-loc-3) 13)
 (= (base-drive city-2-loc-3 city-2-loc-6) 13)
 (= (base-drive city-2-loc-7 city-2-loc-2) 36)
 (= (base-drive city-2-loc-2 city-2-loc-7) 36)
 (= (base-drive city-2-loc-7 city-2-loc-4) 17)
 (= (base-drive city-2-loc-4 city-2-loc-7) 17)
 (= (base-drive city-2-loc-7 city-2-loc-5) 23)
 (= (base-drive city-2-loc-5 city-2-loc-7) 23)
 (= (base-drive city-2-loc-8 city-2-loc-3) 33)
 (= (base-drive city-2-loc-3 city-2-loc-8) 33)
 (= (base-drive city-2-loc-8 city-2-loc-5) 16)
 (= (base-drive city-2-loc-5 city-2-loc-8) 16)
 (= (base-drive city-2-loc-8 city-2-loc-6) 24)
 (= (base-drive city-2-loc-6 city-2-loc-8) 24)
 (= (base-drive city-2-loc-8 city-2-loc-7) 33)
 (= (base-drive city-2-loc-7 city-2-loc-8) 33)
 (= (base-drive city-2-loc-9 city-2-loc-8) 29)
 (= (base-drive city-2-loc-8 city-2-loc-9) 29)
 (= (base-drive city-2-loc-10 city-2-loc-3) 19)
 (= (base-drive city-2-loc-3 city-2-loc-10) 19)
 (= (base-drive city-2-loc-10 city-2-loc-5) 28)
 (= (base-drive city-2-loc-5 city-2-loc-10) 28)
 (= (base-drive city-2-loc-10 city-2-loc-6) 20)
 (= (base-drive city-2-loc-6 city-2-loc-10) 20)
 (= (base-drive city-2-loc-10 city-2-loc-7) 29)
 (= (base-drive city-2-loc-7 city-2-loc-10) 29)
 (= (base-drive city-2-loc-10 city-2-loc-8) 21)
 (= (base-drive city-2-loc-8 city-2-loc-10) 21)
 (= (base-drive city-2-loc-12 city-2-loc-3) 27)
 (= (base-drive city-2-loc-3 city-2-loc-12) 27)
 (= (base-drive city-2-loc-12 city-2-loc-6) 37)
 (= (base-drive city-2-loc-6 city-2-loc-12) 37)
 (= (base-drive city-2-loc-12 city-2-loc-10) 24)
 (= (base-drive city-2-loc-10 city-2-loc-12) 24)
 (= (base-drive city-2-loc-12 city-2-loc-11) 25)
 (= (base-drive city-2-loc-11 city-2-loc-12) 25)
 (= (base-drive city-2-loc-13 city-2-loc-1) 19)
 (= (base-drive city-2-loc-1 city-2-loc-13) 19)
 (= (base-drive city-2-loc-13 city-2-loc-3) 23)
 (= (base-drive city-2-loc-3 city-2-loc-13) 23)
 (= (base-drive city-2-loc-13 city-2-loc-6) 18)
 (= (base-drive city-2-loc-6 city-2-loc-13) 18)
 (= (base-drive city-2-loc-14 city-2-loc-9) 16)
 (= (base-drive city-2-loc-9 city-2-loc-14) 16)
 (= (base-drive city-1-loc-12 city-2-loc-2) 110)
 (= (base-drive city-2-loc-2 city-1-loc-12) 110)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 9753)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 2294)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 4679)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 7087)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 1762)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 4481)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 4087)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 5259)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 7205)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 8294)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 3431)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 7933)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 7615)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 3064)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 1317)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 1127)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 5169)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 9521)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 6972)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 8734)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 9879)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 6573)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-1) 9710)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-1) 4674)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 6790)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 1240)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-1) 7294)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-1) 5044)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 5421)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 9875)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 9845)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 7720)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-1) 5537)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-1) 8592)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-1) 9656)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-1) 9083)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-1) 8808)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-1) 2189)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-1) 2678)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-1) 4586)
  (= (cost-drive city-1-loc-12 city-1-loc-7 truck-1) 2031)
  (= (cost-drive city-1-loc-7 city-1-loc-12 truck-1) 9094)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-1) 9611)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-1) 9402)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-1) 5853)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-1) 1661)
  (= (cost-drive city-1-loc-14 city-1-loc-1 truck-1) 4067)
  (= (cost-drive city-1-loc-1 city-1-loc-14 truck-1) 7486)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-1) 8697)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-1) 1482)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-1) 8203)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-1) 7920)
  (= (cost-drive city-1-loc-14 city-1-loc-7 truck-1) 3710)
  (= (cost-drive city-1-loc-7 city-1-loc-14 truck-1) 6830)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-1) 5539)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-1) 4846)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 2068)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 6623)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-1) 8161)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-1) 4298)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-1) 7993)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-1) 4964)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 1711)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 5291)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-1) 9693)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-1) 8457)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-1) 5255)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-1) 8415)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-1) 7279)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-1) 5272)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-1) 5760)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-1) 6044)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-1) 4094)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-1) 2633)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 3902)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 5196)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-1) 9322)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-1) 3167)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-1) 7194)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-1) 6317)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-1) 6851)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-1) 1810)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-1) 4773)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-1) 1477)
  (= (cost-drive city-2-loc-10 city-2-loc-6 truck-1) 4186)
  (= (cost-drive city-2-loc-6 city-2-loc-10 truck-1) 4423)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-1) 7130)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-1) 8615)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-1) 5531)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-1) 9142)
  (= (cost-drive city-2-loc-12 city-2-loc-3 truck-1) 4791)
  (= (cost-drive city-2-loc-3 city-2-loc-12 truck-1) 5073)
  (= (cost-drive city-2-loc-12 city-2-loc-6 truck-1) 2380)
  (= (cost-drive city-2-loc-6 city-2-loc-12 truck-1) 5169)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-1) 9738)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-1) 2537)
  (= (cost-drive city-2-loc-12 city-2-loc-11 truck-1) 2068)
  (= (cost-drive city-2-loc-11 city-2-loc-12 truck-1) 9843)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-1) 5558)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-1) 3144)
  (= (cost-drive city-2-loc-13 city-2-loc-3 truck-1) 3589)
  (= (cost-drive city-2-loc-3 city-2-loc-13 truck-1) 3335)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-1) 5982)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-1) 4536)
  (= (cost-drive city-2-loc-14 city-2-loc-9 truck-1) 9748)
  (= (cost-drive city-2-loc-9 city-2-loc-14 truck-1) 3838)
  (= (cost-drive city-1-loc-12 city-2-loc-2 truck-1) 3753)
  (= (cost-drive city-2-loc-2 city-1-loc-12 truck-1) 6546)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 1391)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 7126)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 5186)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 4123)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 5976)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 3090)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 7647)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 2557)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 6556)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 2803)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 8958)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 1252)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 6924)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 4044)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 3661)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 6928)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 6602)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 7828)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 8493)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 9602)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 6329)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 7682)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-2) 9187)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-2) 6334)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 8597)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 2617)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-2) 3630)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-2) 6246)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 6725)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 7224)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 6205)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 3405)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-2) 4543)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-2) 5873)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-2) 7475)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-2) 5647)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-2) 3114)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-2) 6683)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-2) 9253)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-2) 5016)
  (= (cost-drive city-1-loc-12 city-1-loc-7 truck-2) 2412)
  (= (cost-drive city-1-loc-7 city-1-loc-12 truck-2) 5896)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-2) 2390)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-2) 3415)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-2) 5166)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-2) 2328)
  (= (cost-drive city-1-loc-14 city-1-loc-1 truck-2) 6663)
  (= (cost-drive city-1-loc-1 city-1-loc-14 truck-2) 3545)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-2) 9448)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-2) 8193)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-2) 5824)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-2) 6672)
  (= (cost-drive city-1-loc-14 city-1-loc-7 truck-2) 2717)
  (= (cost-drive city-1-loc-7 city-1-loc-14 truck-2) 6114)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-2) 2731)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-2) 5886)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 4724)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 6556)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-2) 9906)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-2) 4531)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-2) 2680)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-2) 8406)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 2985)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 8573)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-2) 1962)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-2) 2388)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-2) 6951)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-2) 7244)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-2) 8767)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-2) 7075)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-2) 9474)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-2) 5846)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-2) 6267)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-2) 6310)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 3873)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 5295)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-2) 2743)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-2) 7903)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-2) 4457)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-2) 1754)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-2) 4899)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-2) 5636)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-2) 9718)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-2) 3015)
  (= (cost-drive city-2-loc-10 city-2-loc-6 truck-2) 3360)
  (= (cost-drive city-2-loc-6 city-2-loc-10 truck-2) 1503)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-2) 5333)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-2) 4017)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-2) 7164)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-2) 4968)
  (= (cost-drive city-2-loc-12 city-2-loc-3 truck-2) 3509)
  (= (cost-drive city-2-loc-3 city-2-loc-12 truck-2) 3850)
  (= (cost-drive city-2-loc-12 city-2-loc-6 truck-2) 4085)
  (= (cost-drive city-2-loc-6 city-2-loc-12 truck-2) 4453)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-2) 2789)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-2) 1025)
  (= (cost-drive city-2-loc-12 city-2-loc-11 truck-2) 4249)
  (= (cost-drive city-2-loc-11 city-2-loc-12 truck-2) 1849)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-2) 5281)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-2) 1052)
  (= (cost-drive city-2-loc-13 city-2-loc-3 truck-2) 4257)
  (= (cost-drive city-2-loc-3 city-2-loc-13 truck-2) 7529)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-2) 8932)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-2) 4409)
  (= (cost-drive city-2-loc-14 city-2-loc-9 truck-2) 9182)
  (= (cost-drive city-2-loc-9 city-2-loc-14 truck-2) 1380)
  (= (cost-drive city-1-loc-12 city-2-loc-2 truck-2) 7014)
  (= (cost-drive city-2-loc-2 city-1-loc-12 truck-2) 1154)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 7405)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 1311)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 1660)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 4343)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 4778)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 7628)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 9696)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 8280)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 1865)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 1456)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 6437)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 5126)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 8692)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 6699)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 6929)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 3801)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-3) 3582)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-3) 7621)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 1568)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 6882)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 2527)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 4658)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-3) 1992)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-3) 3293)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-3) 3435)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-3) 1967)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-3) 9085)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-3) 9784)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-3) 5016)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-3) 4129)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-3) 1191)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-3) 7045)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-3) 3764)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-3) 1672)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-3) 3717)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-3) 1899)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-3) 3202)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-3) 4728)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-3) 9944)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-3) 8018)
  (= (cost-drive city-1-loc-12 city-1-loc-7 truck-3) 5160)
  (= (cost-drive city-1-loc-7 city-1-loc-12 truck-3) 5802)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-3) 3984)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-3) 3747)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-3) 7727)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-3) 3585)
  (= (cost-drive city-1-loc-14 city-1-loc-1 truck-3) 6445)
  (= (cost-drive city-1-loc-1 city-1-loc-14 truck-3) 5938)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-3) 1603)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-3) 3155)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-3) 1314)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-3) 4307)
  (= (cost-drive city-1-loc-14 city-1-loc-7 truck-3) 4604)
  (= (cost-drive city-1-loc-7 city-1-loc-14 truck-3) 4251)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-3) 6375)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-3) 5688)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-3) 1343)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-3) 7218)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-3) 3995)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-3) 8762)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-3) 6379)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-3) 2318)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 6126)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 9815)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-3) 9911)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-3) 2807)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-3) 3205)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-3) 8966)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-3) 6085)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-3) 6305)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-3) 6259)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-3) 5646)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-3) 5922)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-3) 2462)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-3) 6504)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-3) 9230)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-3) 6329)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-3) 6517)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-3) 4579)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-3) 6056)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-3) 8390)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-3) 3056)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-3) 7350)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-3) 4945)
  (= (cost-drive city-2-loc-10 city-2-loc-6 truck-3) 7800)
  (= (cost-drive city-2-loc-6 city-2-loc-10 truck-3) 4247)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-3) 3496)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-3) 2217)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-3) 8048)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-3) 2133)
  (= (cost-drive city-2-loc-12 city-2-loc-3 truck-3) 6736)
  (= (cost-drive city-2-loc-3 city-2-loc-12 truck-3) 5638)
  (= (cost-drive city-2-loc-12 city-2-loc-6 truck-3) 4949)
  (= (cost-drive city-2-loc-6 city-2-loc-12 truck-3) 6107)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-3) 2099)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-3) 4507)
  (= (cost-drive city-2-loc-12 city-2-loc-11 truck-3) 2446)
  (= (cost-drive city-2-loc-11 city-2-loc-12 truck-3) 2112)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-3) 5284)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-3) 8226)
  (= (cost-drive city-2-loc-13 city-2-loc-3 truck-3) 2819)
  (= (cost-drive city-2-loc-3 city-2-loc-13 truck-3) 5104)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-3) 5211)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-3) 2631)
  (= (cost-drive city-2-loc-14 city-2-loc-9 truck-3) 3979)
  (= (cost-drive city-2-loc-9 city-2-loc-14 truck-3) 7404)
  (= (cost-drive city-1-loc-12 city-2-loc-2 truck-3) 9575)
  (= (cost-drive city-2-loc-2 city-1-loc-12 truck-3) 9733)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 748,385 -> 890,543
  (road city-1-loc-3 city-1-loc-1)
  ; 890,543 -> 748,385
  (road city-1-loc-1 city-1-loc-3)
  ; 912,799 -> 890,543
  (road city-1-loc-4 city-1-loc-1)
  ; 890,543 -> 912,799
  (road city-1-loc-1 city-1-loc-4)
  ; 977,899 -> 912,799
  (road city-1-loc-5 city-1-loc-4)
  ; 912,799 -> 977,899
  (road city-1-loc-4 city-1-loc-5)
  ; 456,221 -> 384,50
  (road city-1-loc-6 city-1-loc-2)
  ; 384,50 -> 456,221
  (road city-1-loc-2 city-1-loc-6)
  ; 456,221 -> 748,385
  (road city-1-loc-6 city-1-loc-3)
  ; 748,385 -> 456,221
  (road city-1-loc-3 city-1-loc-6)
  ; 742,542 -> 890,543
  (road city-1-loc-7 city-1-loc-1)
  ; 890,543 -> 742,542
  (road city-1-loc-1 city-1-loc-7)
  ; 742,542 -> 748,385
  (road city-1-loc-7 city-1-loc-3)
  ; 748,385 -> 742,542
  (road city-1-loc-3 city-1-loc-7)
  ; 742,542 -> 912,799
  (road city-1-loc-7 city-1-loc-4)
  ; 912,799 -> 742,542
  (road city-1-loc-4 city-1-loc-7)
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  ; 273,425 -> 456,221
  (road city-1-loc-9 city-1-loc-6)
  ; 456,221 -> 273,425
  (road city-1-loc-6 city-1-loc-9)
  ; 566,552 -> 890,543
  (road city-1-loc-10 city-1-loc-1)
  ; 890,543 -> 566,552
  (road city-1-loc-1 city-1-loc-10)
  ; 566,552 -> 748,385
  (road city-1-loc-10 city-1-loc-3)
  ; 748,385 -> 566,552
  (road city-1-loc-3 city-1-loc-10)
  ; 566,552 -> 456,221
  (road city-1-loc-10 city-1-loc-6)
  ; 456,221 -> 566,552
  (road city-1-loc-6 city-1-loc-10)
  ; 566,552 -> 742,542
  (road city-1-loc-10 city-1-loc-7)
  ; 742,542 -> 566,552
  (road city-1-loc-7 city-1-loc-10)
  ; 566,552 -> 564,783
  (road city-1-loc-10 city-1-loc-8)
  ; 564,783 -> 566,552
  (road city-1-loc-8 city-1-loc-10)
  ; 566,552 -> 273,425
  (road city-1-loc-10 city-1-loc-9)
  ; 273,425 -> 566,552
  (road city-1-loc-9 city-1-loc-10)
  ; 174,643 -> 273,425
  (road city-1-loc-11 city-1-loc-9)
  ; 273,425 -> 174,643
  (road city-1-loc-9 city-1-loc-11)
  ; 930,259 -> 890,543
  (road city-1-loc-12 city-1-loc-1)
  ; 890,543 -> 930,259
  (road city-1-loc-1 city-1-loc-12)
  ; 930,259 -> 748,385
  (road city-1-loc-12 city-1-loc-3)
  ; 748,385 -> 930,259
  (road city-1-loc-3 city-1-loc-12)
  ; 930,259 -> 742,542
  (road city-1-loc-12 city-1-loc-7)
  ; 742,542 -> 930,259
  (road city-1-loc-7 city-1-loc-12)
  ; 55,605 -> 273,425
  (road city-1-loc-13 city-1-loc-9)
  ; 273,425 -> 55,605
  (road city-1-loc-9 city-1-loc-13)
  ; 55,605 -> 174,643
  (road city-1-loc-13 city-1-loc-11)
  ; 174,643 -> 55,605
  (road city-1-loc-11 city-1-loc-13)
  ; 803,858 -> 890,543
  (road city-1-loc-14 city-1-loc-1)
  ; 890,543 -> 803,858
  (road city-1-loc-1 city-1-loc-14)
  ; 803,858 -> 912,799
  (road city-1-loc-14 city-1-loc-4)
  ; 912,799 -> 803,858
  (road city-1-loc-4 city-1-loc-14)
  ; 803,858 -> 977,899
  (road city-1-loc-14 city-1-loc-5)
  ; 977,899 -> 803,858
  (road city-1-loc-5 city-1-loc-14)
  ; 803,858 -> 742,542
  (road city-1-loc-14 city-1-loc-7)
  ; 742,542 -> 803,858
  (road city-1-loc-7 city-1-loc-14)
  ; 803,858 -> 564,783
  (road city-1-loc-14 city-1-loc-8)
  ; 564,783 -> 803,858
  (road city-1-loc-8 city-1-loc-14)
  ; 2257,5 -> 2006,60
  (road city-2-loc-4 city-2-loc-2)
  ; 2006,60 -> 2257,5
  (road city-2-loc-2 city-2-loc-4)
  ; 2245,346 -> 2257,5
  (road city-2-loc-5 city-2-loc-4)
  ; 2257,5 -> 2245,346
  (road city-2-loc-4 city-2-loc-5)
  ; 2559,565 -> 2748,863
  (road city-2-loc-6 city-2-loc-1)
  ; 2748,863 -> 2559,565
  (road city-2-loc-1 city-2-loc-6)
  ; 2559,565 -> 2659,497
  (road city-2-loc-6 city-2-loc-3)
  ; 2659,497 -> 2559,565
  (road city-2-loc-3 city-2-loc-6)
  ; 2347,149 -> 2006,60
  (road city-2-loc-7 city-2-loc-2)
  ; 2006,60 -> 2347,149
  (road city-2-loc-2 city-2-loc-7)
  ; 2347,149 -> 2257,5
  (road city-2-loc-7 city-2-loc-4)
  ; 2257,5 -> 2347,149
  (road city-2-loc-4 city-2-loc-7)
  ; 2347,149 -> 2245,346
  (road city-2-loc-7 city-2-loc-5)
  ; 2245,346 -> 2347,149
  (road city-2-loc-5 city-2-loc-7)
  ; 2336,475 -> 2659,497
  (road city-2-loc-8 city-2-loc-3)
  ; 2659,497 -> 2336,475
  (road city-2-loc-3 city-2-loc-8)
  ; 2336,475 -> 2245,346
  (road city-2-loc-8 city-2-loc-5)
  ; 2245,346 -> 2336,475
  (road city-2-loc-5 city-2-loc-8)
  ; 2336,475 -> 2559,565
  (road city-2-loc-8 city-2-loc-6)
  ; 2559,565 -> 2336,475
  (road city-2-loc-6 city-2-loc-8)
  ; 2336,475 -> 2347,149
  (road city-2-loc-8 city-2-loc-7)
  ; 2347,149 -> 2336,475
  (road city-2-loc-7 city-2-loc-8)
  ; 2170,709 -> 2336,475
  (road city-2-loc-9 city-2-loc-8)
  ; 2336,475 -> 2170,709
  (road city-2-loc-8 city-2-loc-9)
  ; 2521,375 -> 2659,497
  (road city-2-loc-10 city-2-loc-3)
  ; 2659,497 -> 2521,375
  (road city-2-loc-3 city-2-loc-10)
  ; 2521,375 -> 2245,346
  (road city-2-loc-10 city-2-loc-5)
  ; 2245,346 -> 2521,375
  (road city-2-loc-5 city-2-loc-10)
  ; 2521,375 -> 2559,565
  (road city-2-loc-10 city-2-loc-6)
  ; 2559,565 -> 2521,375
  (road city-2-loc-6 city-2-loc-10)
  ; 2521,375 -> 2347,149
  (road city-2-loc-10 city-2-loc-7)
  ; 2347,149 -> 2521,375
  (road city-2-loc-7 city-2-loc-10)
  ; 2521,375 -> 2336,475
  (road city-2-loc-10 city-2-loc-8)
  ; 2336,475 -> 2521,375
  (road city-2-loc-8 city-2-loc-10)
  ; 2720,241 -> 2659,497
  (road city-2-loc-12 city-2-loc-3)
  ; 2659,497 -> 2720,241
  (road city-2-loc-3 city-2-loc-12)
  ; 2720,241 -> 2559,565
  (road city-2-loc-12 city-2-loc-6)
  ; 2559,565 -> 2720,241
  (road city-2-loc-6 city-2-loc-12)
  ; 2720,241 -> 2521,375
  (road city-2-loc-12 city-2-loc-10)
  ; 2521,375 -> 2720,241
  (road city-2-loc-10 city-2-loc-12)
  ; 2720,241 -> 2701,0
  (road city-2-loc-12 city-2-loc-11)
  ; 2701,0 -> 2720,241
  (road city-2-loc-11 city-2-loc-12)
  ; 2630,722 -> 2748,863
  (road city-2-loc-13 city-2-loc-1)
  ; 2748,863 -> 2630,722
  (road city-2-loc-1 city-2-loc-13)
  ; 2630,722 -> 2659,497
  (road city-2-loc-13 city-2-loc-3)
  ; 2659,497 -> 2630,722
  (road city-2-loc-3 city-2-loc-13)
  ; 2630,722 -> 2559,565
  (road city-2-loc-13 city-2-loc-6)
  ; 2559,565 -> 2630,722
  (road city-2-loc-6 city-2-loc-13)
  ; 2120,854 -> 2170,709
  (road city-2-loc-14 city-2-loc-9)
  ; 2170,709 -> 2120,854
  (road city-2-loc-9 city-2-loc-14)
  ; 930,259 <-> 2006,60
  (road city-1-loc-12 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-12)
  (at package-1 city-1-loc-6)
  (at package-2 city-1-loc-4)
  (at package-3 city-1-loc-3)
  (at package-4 city-1-loc-8)
  (at package-5 city-1-loc-5)
  (at package-6 city-1-loc-9)
  (at package-7 city-1-loc-6)
  (at package-8 city-1-loc-11)
  (at truck-1 city-2-loc-10)
  (capacity truck-1 capacity-4)
  (at truck-2 city-2-loc-5)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-6)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-9)
  (at package-2 city-2-loc-11)
  (at package-3 city-2-loc-1)
  (at package-4 city-2-loc-4)
  (at package-5 city-2-loc-13)
  (at package-6 city-2-loc-2)
  (at package-7 city-2-loc-1)
  (at package-8 city-2-loc-8)
 ))
 (:metric minimize (total-cost))
)
