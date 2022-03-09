; Transport two-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed

(define (problem transport-two-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed)
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
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
  city-1-loc-19 - location
  city-2-loc-19 - location
  city-1-loc-20 - location
  city-2-loc-20 - location
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
  package-9 - package
  package-10 - package
  package-11 - package
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
 (= (base-drive city-1-loc-7 city-1-loc-1) 15)
 (= (base-drive city-1-loc-1 city-1-loc-7) 15)
 (= (base-drive city-1-loc-7 city-1-loc-3) 16)
 (= (base-drive city-1-loc-3 city-1-loc-7) 16)
 (= (base-drive city-1-loc-8 city-1-loc-7) 30)
 (= (base-drive city-1-loc-7 city-1-loc-8) 30)
 (= (base-drive city-1-loc-9 city-1-loc-6) 28)
 (= (base-drive city-1-loc-6 city-1-loc-9) 28)
 (= (base-drive city-1-loc-10 city-1-loc-3) 25)
 (= (base-drive city-1-loc-3 city-1-loc-10) 25)
 (= (base-drive city-1-loc-10 city-1-loc-7) 18)
 (= (base-drive city-1-loc-7 city-1-loc-10) 18)
 (= (base-drive city-1-loc-10 city-1-loc-8) 24)
 (= (base-drive city-1-loc-8 city-1-loc-10) 24)
 (= (base-drive city-1-loc-11 city-1-loc-9) 24)
 (= (base-drive city-1-loc-9 city-1-loc-11) 24)
 (= (base-drive city-1-loc-12 city-1-loc-1) 29)
 (= (base-drive city-1-loc-1 city-1-loc-12) 29)
 (= (base-drive city-1-loc-12 city-1-loc-3) 23)
 (= (base-drive city-1-loc-3 city-1-loc-12) 23)
 (= (base-drive city-1-loc-13 city-1-loc-9) 29)
 (= (base-drive city-1-loc-9 city-1-loc-13) 29)
 (= (base-drive city-1-loc-13 city-1-loc-11) 13)
 (= (base-drive city-1-loc-11 city-1-loc-13) 13)
 (= (base-drive city-1-loc-14 city-1-loc-4) 13)
 (= (base-drive city-1-loc-4 city-1-loc-14) 13)
 (= (base-drive city-1-loc-14 city-1-loc-5) 18)
 (= (base-drive city-1-loc-5 city-1-loc-14) 18)
 (= (base-drive city-1-loc-14 city-1-loc-8) 25)
 (= (base-drive city-1-loc-8 city-1-loc-14) 25)
 (= (base-drive city-1-loc-15 city-1-loc-9) 15)
 (= (base-drive city-1-loc-9 city-1-loc-15) 15)
 (= (base-drive city-1-loc-15 city-1-loc-11) 12)
 (= (base-drive city-1-loc-11 city-1-loc-15) 12)
 (= (base-drive city-1-loc-15 city-1-loc-13) 22)
 (= (base-drive city-1-loc-13 city-1-loc-15) 22)
 (= (base-drive city-1-loc-16 city-1-loc-11) 16)
 (= (base-drive city-1-loc-11 city-1-loc-16) 16)
 (= (base-drive city-1-loc-16 city-1-loc-13) 20)
 (= (base-drive city-1-loc-13 city-1-loc-16) 20)
 (= (base-drive city-1-loc-16 city-1-loc-15) 27)
 (= (base-drive city-1-loc-15 city-1-loc-16) 27)
 (= (base-drive city-1-loc-17 city-1-loc-8) 16)
 (= (base-drive city-1-loc-8 city-1-loc-17) 16)
 (= (base-drive city-1-loc-17 city-1-loc-10) 21)
 (= (base-drive city-1-loc-10 city-1-loc-17) 21)
 (= (base-drive city-1-loc-17 city-1-loc-11) 26)
 (= (base-drive city-1-loc-11 city-1-loc-17) 26)
 (= (base-drive city-1-loc-17 city-1-loc-15) 22)
 (= (base-drive city-1-loc-15 city-1-loc-17) 22)
 (= (base-drive city-1-loc-18 city-1-loc-9) 25)
 (= (base-drive city-1-loc-9 city-1-loc-18) 25)
 (= (base-drive city-1-loc-18 city-1-loc-13) 24)
 (= (base-drive city-1-loc-13 city-1-loc-18) 24)
 (= (base-drive city-1-loc-18 city-1-loc-15) 31)
 (= (base-drive city-1-loc-15 city-1-loc-18) 31)
 (= (base-drive city-1-loc-19 city-1-loc-12) 28)
 (= (base-drive city-1-loc-12 city-1-loc-19) 28)
 (= (base-drive city-1-loc-20 city-1-loc-2) 26)
 (= (base-drive city-1-loc-2 city-1-loc-20) 26)
 (= (base-drive city-1-loc-20 city-1-loc-18) 28)
 (= (base-drive city-1-loc-18 city-1-loc-20) 28)
 (= (base-drive city-2-loc-7 city-2-loc-3) 21)
 (= (base-drive city-2-loc-3 city-2-loc-7) 21)
 (= (base-drive city-2-loc-8 city-2-loc-6) 26)
 (= (base-drive city-2-loc-6 city-2-loc-8) 26)
 (= (base-drive city-2-loc-9 city-2-loc-2) 28)
 (= (base-drive city-2-loc-2 city-2-loc-9) 28)
 (= (base-drive city-2-loc-10 city-2-loc-4) 15)
 (= (base-drive city-2-loc-4 city-2-loc-10) 15)
 (= (base-drive city-2-loc-11 city-2-loc-3) 14)
 (= (base-drive city-2-loc-3 city-2-loc-11) 14)
 (= (base-drive city-2-loc-11 city-2-loc-9) 26)
 (= (base-drive city-2-loc-9 city-2-loc-11) 26)
 (= (base-drive city-2-loc-12 city-2-loc-4) 24)
 (= (base-drive city-2-loc-4 city-2-loc-12) 24)
 (= (base-drive city-2-loc-12 city-2-loc-10) 11)
 (= (base-drive city-2-loc-10 city-2-loc-12) 11)
 (= (base-drive city-2-loc-13 city-2-loc-1) 28)
 (= (base-drive city-2-loc-1 city-2-loc-13) 28)
 (= (base-drive city-2-loc-13 city-2-loc-9) 27)
 (= (base-drive city-2-loc-9 city-2-loc-13) 27)
 (= (base-drive city-2-loc-14 city-2-loc-10) 26)
 (= (base-drive city-2-loc-10 city-2-loc-14) 26)
 (= (base-drive city-2-loc-14 city-2-loc-12) 26)
 (= (base-drive city-2-loc-12 city-2-loc-14) 26)
 (= (base-drive city-2-loc-15 city-2-loc-1) 18)
 (= (base-drive city-2-loc-1 city-2-loc-15) 18)
 (= (base-drive city-2-loc-15 city-2-loc-4) 24)
 (= (base-drive city-2-loc-4 city-2-loc-15) 24)
 (= (base-drive city-2-loc-15 city-2-loc-10) 28)
 (= (base-drive city-2-loc-10 city-2-loc-15) 28)
 (= (base-drive city-2-loc-16 city-2-loc-1) 22)
 (= (base-drive city-2-loc-1 city-2-loc-16) 22)
 (= (base-drive city-2-loc-16 city-2-loc-9) 20)
 (= (base-drive city-2-loc-9 city-2-loc-16) 20)
 (= (base-drive city-2-loc-16 city-2-loc-13) 13)
 (= (base-drive city-2-loc-13 city-2-loc-16) 13)
 (= (base-drive city-2-loc-17 city-2-loc-1) 29)
 (= (base-drive city-2-loc-1 city-2-loc-17) 29)
 (= (base-drive city-2-loc-17 city-2-loc-10) 30)
 (= (base-drive city-2-loc-10 city-2-loc-17) 30)
 (= (base-drive city-2-loc-17 city-2-loc-14) 17)
 (= (base-drive city-2-loc-14 city-2-loc-17) 17)
 (= (base-drive city-2-loc-17 city-2-loc-15) 23)
 (= (base-drive city-2-loc-15 city-2-loc-17) 23)
 (= (base-drive city-2-loc-18 city-2-loc-3) 19)
 (= (base-drive city-2-loc-3 city-2-loc-18) 19)
 (= (base-drive city-2-loc-18 city-2-loc-7) 13)
 (= (base-drive city-2-loc-7 city-2-loc-18) 13)
 (= (base-drive city-2-loc-18 city-2-loc-11) 25)
 (= (base-drive city-2-loc-11 city-2-loc-18) 25)
 (= (base-drive city-2-loc-19 city-2-loc-1) 15)
 (= (base-drive city-2-loc-1 city-2-loc-19) 15)
 (= (base-drive city-2-loc-19 city-2-loc-13) 19)
 (= (base-drive city-2-loc-13 city-2-loc-19) 19)
 (= (base-drive city-2-loc-19 city-2-loc-15) 28)
 (= (base-drive city-2-loc-15 city-2-loc-19) 28)
 (= (base-drive city-2-loc-19 city-2-loc-16) 20)
 (= (base-drive city-2-loc-16 city-2-loc-19) 20)
 (= (base-drive city-2-loc-19 city-2-loc-17) 29)
 (= (base-drive city-2-loc-17 city-2-loc-19) 29)
 (= (base-drive city-2-loc-20 city-2-loc-5) 24)
 (= (base-drive city-2-loc-5 city-2-loc-20) 24)
 (= (base-drive city-2-loc-20 city-2-loc-8) 28)
 (= (base-drive city-2-loc-8 city-2-loc-20) 28)
 (= (base-drive city-2-loc-20 city-2-loc-13) 27)
 (= (base-drive city-2-loc-13 city-2-loc-20) 27)
 (= (base-drive city-2-loc-20 city-2-loc-19) 24)
 (= (base-drive city-2-loc-19 city-2-loc-20) 24)
 (= (base-drive city-1-loc-12 city-2-loc-4) 109)
 (= (base-drive city-2-loc-4 city-1-loc-12) 109)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 3401)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 6412)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 5956)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 7288)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 2458)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 6957)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 7341)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 5039)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 5928)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 3729)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 1739)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 6480)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 5834)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 6613)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 5463)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 4594)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 2886)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 8380)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 7872)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 3856)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 7841)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 4689)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-1) 6529)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-1) 5689)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-1) 3101)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-1) 7424)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-1) 3063)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-1) 9582)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-1) 6652)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-1) 9931)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-1) 1897)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-1) 4300)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-1) 8150)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-1) 5100)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-1) 2747)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-1) 7888)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-1) 6803)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-1) 9887)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-1) 9938)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-1) 1598)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-1) 3450)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-1) 8905)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-1) 1370)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-1) 8215)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-1) 8088)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-1) 8657)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-1) 4917)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-1) 9989)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-1) 3008)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-1) 2098)
  (= (cost-drive city-1-loc-17 city-1-loc-8 truck-1) 2699)
  (= (cost-drive city-1-loc-8 city-1-loc-17 truck-1) 1118)
  (= (cost-drive city-1-loc-17 city-1-loc-10 truck-1) 8269)
  (= (cost-drive city-1-loc-10 city-1-loc-17 truck-1) 3646)
  (= (cost-drive city-1-loc-17 city-1-loc-11 truck-1) 8470)
  (= (cost-drive city-1-loc-11 city-1-loc-17 truck-1) 9609)
  (= (cost-drive city-1-loc-17 city-1-loc-15 truck-1) 4940)
  (= (cost-drive city-1-loc-15 city-1-loc-17 truck-1) 4664)
  (= (cost-drive city-1-loc-18 city-1-loc-9 truck-1) 6607)
  (= (cost-drive city-1-loc-9 city-1-loc-18 truck-1) 8693)
  (= (cost-drive city-1-loc-18 city-1-loc-13 truck-1) 3227)
  (= (cost-drive city-1-loc-13 city-1-loc-18 truck-1) 8187)
  (= (cost-drive city-1-loc-18 city-1-loc-15 truck-1) 7407)
  (= (cost-drive city-1-loc-15 city-1-loc-18 truck-1) 6675)
  (= (cost-drive city-1-loc-19 city-1-loc-12 truck-1) 1865)
  (= (cost-drive city-1-loc-12 city-1-loc-19 truck-1) 5546)
  (= (cost-drive city-1-loc-20 city-1-loc-2 truck-1) 3832)
  (= (cost-drive city-1-loc-2 city-1-loc-20 truck-1) 9892)
  (= (cost-drive city-1-loc-20 city-1-loc-18 truck-1) 5641)
  (= (cost-drive city-1-loc-18 city-1-loc-20 truck-1) 4783)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-1) 1049)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-1) 1941)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 3782)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 3347)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-1) 5784)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-1) 7476)
  (= (cost-drive city-2-loc-10 city-2-loc-4 truck-1) 6413)
  (= (cost-drive city-2-loc-4 city-2-loc-10 truck-1) 3499)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-1) 2649)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-1) 9190)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-1) 5446)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-1) 2679)
  (= (cost-drive city-2-loc-12 city-2-loc-4 truck-1) 3814)
  (= (cost-drive city-2-loc-4 city-2-loc-12 truck-1) 1132)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-1) 7929)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-1) 1312)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-1) 7015)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-1) 2802)
  (= (cost-drive city-2-loc-13 city-2-loc-9 truck-1) 2125)
  (= (cost-drive city-2-loc-9 city-2-loc-13 truck-1) 1355)
  (= (cost-drive city-2-loc-14 city-2-loc-10 truck-1) 2259)
  (= (cost-drive city-2-loc-10 city-2-loc-14 truck-1) 2622)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-1) 4616)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-1) 1699)
  (= (cost-drive city-2-loc-15 city-2-loc-1 truck-1) 4958)
  (= (cost-drive city-2-loc-1 city-2-loc-15 truck-1) 4646)
  (= (cost-drive city-2-loc-15 city-2-loc-4 truck-1) 9867)
  (= (cost-drive city-2-loc-4 city-2-loc-15 truck-1) 1457)
  (= (cost-drive city-2-loc-15 city-2-loc-10 truck-1) 2515)
  (= (cost-drive city-2-loc-10 city-2-loc-15 truck-1) 3890)
  (= (cost-drive city-2-loc-16 city-2-loc-1 truck-1) 5337)
  (= (cost-drive city-2-loc-1 city-2-loc-16 truck-1) 1798)
  (= (cost-drive city-2-loc-16 city-2-loc-9 truck-1) 9857)
  (= (cost-drive city-2-loc-9 city-2-loc-16 truck-1) 5105)
  (= (cost-drive city-2-loc-16 city-2-loc-13 truck-1) 4883)
  (= (cost-drive city-2-loc-13 city-2-loc-16 truck-1) 1774)
  (= (cost-drive city-2-loc-17 city-2-loc-1 truck-1) 9089)
  (= (cost-drive city-2-loc-1 city-2-loc-17 truck-1) 5629)
  (= (cost-drive city-2-loc-17 city-2-loc-10 truck-1) 6233)
  (= (cost-drive city-2-loc-10 city-2-loc-17 truck-1) 6749)
  (= (cost-drive city-2-loc-17 city-2-loc-14 truck-1) 4323)
  (= (cost-drive city-2-loc-14 city-2-loc-17 truck-1) 2414)
  (= (cost-drive city-2-loc-17 city-2-loc-15 truck-1) 6033)
  (= (cost-drive city-2-loc-15 city-2-loc-17 truck-1) 1519)
  (= (cost-drive city-2-loc-18 city-2-loc-3 truck-1) 8223)
  (= (cost-drive city-2-loc-3 city-2-loc-18 truck-1) 8933)
  (= (cost-drive city-2-loc-18 city-2-loc-7 truck-1) 6000)
  (= (cost-drive city-2-loc-7 city-2-loc-18 truck-1) 5496)
  (= (cost-drive city-2-loc-18 city-2-loc-11 truck-1) 6374)
  (= (cost-drive city-2-loc-11 city-2-loc-18 truck-1) 2049)
  (= (cost-drive city-2-loc-19 city-2-loc-1 truck-1) 1793)
  (= (cost-drive city-2-loc-1 city-2-loc-19 truck-1) 5294)
  (= (cost-drive city-2-loc-19 city-2-loc-13 truck-1) 6913)
  (= (cost-drive city-2-loc-13 city-2-loc-19 truck-1) 6481)
  (= (cost-drive city-2-loc-19 city-2-loc-15 truck-1) 3588)
  (= (cost-drive city-2-loc-15 city-2-loc-19 truck-1) 9870)
  (= (cost-drive city-2-loc-19 city-2-loc-16 truck-1) 2572)
  (= (cost-drive city-2-loc-16 city-2-loc-19 truck-1) 3763)
  (= (cost-drive city-2-loc-19 city-2-loc-17 truck-1) 6862)
  (= (cost-drive city-2-loc-17 city-2-loc-19 truck-1) 7630)
  (= (cost-drive city-2-loc-20 city-2-loc-5 truck-1) 6516)
  (= (cost-drive city-2-loc-5 city-2-loc-20 truck-1) 1629)
  (= (cost-drive city-2-loc-20 city-2-loc-8 truck-1) 1929)
  (= (cost-drive city-2-loc-8 city-2-loc-20 truck-1) 8243)
  (= (cost-drive city-2-loc-20 city-2-loc-13 truck-1) 3309)
  (= (cost-drive city-2-loc-13 city-2-loc-20 truck-1) 3226)
  (= (cost-drive city-2-loc-20 city-2-loc-19 truck-1) 4483)
  (= (cost-drive city-2-loc-19 city-2-loc-20 truck-1) 8465)
  (= (cost-drive city-1-loc-12 city-2-loc-4 truck-1) 2468)
  (= (cost-drive city-2-loc-4 city-1-loc-12 truck-1) 1645)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 8721)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 4670)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 8759)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 2965)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 5650)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 1254)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 6033)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 9521)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 4429)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 4589)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 7924)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 1820)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 3489)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 6933)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 9886)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 2116)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 6033)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 5077)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 8184)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 8918)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 6934)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 4101)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-2) 1103)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-2) 3969)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-2) 7947)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-2) 9877)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-2) 5830)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-2) 3002)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-2) 5496)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-2) 6911)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-2) 1827)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-2) 9485)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-2) 2567)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-2) 3952)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-2) 7709)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-2) 4650)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-2) 9456)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-2) 3798)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-2) 7590)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-2) 8472)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-2) 2411)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-2) 3557)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-2) 8924)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-2) 8335)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-2) 1977)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-2) 2528)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-2) 3677)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-2) 3840)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-2) 1601)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-2) 9015)
  (= (cost-drive city-1-loc-17 city-1-loc-8 truck-2) 8656)
  (= (cost-drive city-1-loc-8 city-1-loc-17 truck-2) 9077)
  (= (cost-drive city-1-loc-17 city-1-loc-10 truck-2) 8761)
  (= (cost-drive city-1-loc-10 city-1-loc-17 truck-2) 6654)
  (= (cost-drive city-1-loc-17 city-1-loc-11 truck-2) 2551)
  (= (cost-drive city-1-loc-11 city-1-loc-17 truck-2) 4360)
  (= (cost-drive city-1-loc-17 city-1-loc-15 truck-2) 6901)
  (= (cost-drive city-1-loc-15 city-1-loc-17 truck-2) 7290)
  (= (cost-drive city-1-loc-18 city-1-loc-9 truck-2) 3381)
  (= (cost-drive city-1-loc-9 city-1-loc-18 truck-2) 6157)
  (= (cost-drive city-1-loc-18 city-1-loc-13 truck-2) 4849)
  (= (cost-drive city-1-loc-13 city-1-loc-18 truck-2) 7317)
  (= (cost-drive city-1-loc-18 city-1-loc-15 truck-2) 4714)
  (= (cost-drive city-1-loc-15 city-1-loc-18 truck-2) 7000)
  (= (cost-drive city-1-loc-19 city-1-loc-12 truck-2) 1268)
  (= (cost-drive city-1-loc-12 city-1-loc-19 truck-2) 3922)
  (= (cost-drive city-1-loc-20 city-1-loc-2 truck-2) 9276)
  (= (cost-drive city-1-loc-2 city-1-loc-20 truck-2) 7685)
  (= (cost-drive city-1-loc-20 city-1-loc-18 truck-2) 3882)
  (= (cost-drive city-1-loc-18 city-1-loc-20 truck-2) 3747)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-2) 1428)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-2) 4766)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 2472)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 9056)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-2) 9933)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-2) 5442)
  (= (cost-drive city-2-loc-10 city-2-loc-4 truck-2) 9665)
  (= (cost-drive city-2-loc-4 city-2-loc-10 truck-2) 4261)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-2) 7109)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-2) 9156)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-2) 9129)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-2) 3038)
  (= (cost-drive city-2-loc-12 city-2-loc-4 truck-2) 2301)
  (= (cost-drive city-2-loc-4 city-2-loc-12 truck-2) 3778)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-2) 3920)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-2) 1282)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-2) 4684)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-2) 7815)
  (= (cost-drive city-2-loc-13 city-2-loc-9 truck-2) 9593)
  (= (cost-drive city-2-loc-9 city-2-loc-13 truck-2) 8202)
  (= (cost-drive city-2-loc-14 city-2-loc-10 truck-2) 2834)
  (= (cost-drive city-2-loc-10 city-2-loc-14 truck-2) 6671)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-2) 3723)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-2) 5511)
  (= (cost-drive city-2-loc-15 city-2-loc-1 truck-2) 2208)
  (= (cost-drive city-2-loc-1 city-2-loc-15 truck-2) 6755)
  (= (cost-drive city-2-loc-15 city-2-loc-4 truck-2) 3159)
  (= (cost-drive city-2-loc-4 city-2-loc-15 truck-2) 9787)
  (= (cost-drive city-2-loc-15 city-2-loc-10 truck-2) 3632)
  (= (cost-drive city-2-loc-10 city-2-loc-15 truck-2) 4265)
  (= (cost-drive city-2-loc-16 city-2-loc-1 truck-2) 4106)
  (= (cost-drive city-2-loc-1 city-2-loc-16 truck-2) 2853)
  (= (cost-drive city-2-loc-16 city-2-loc-9 truck-2) 6580)
  (= (cost-drive city-2-loc-9 city-2-loc-16 truck-2) 3412)
  (= (cost-drive city-2-loc-16 city-2-loc-13 truck-2) 9098)
  (= (cost-drive city-2-loc-13 city-2-loc-16 truck-2) 5178)
  (= (cost-drive city-2-loc-17 city-2-loc-1 truck-2) 3551)
  (= (cost-drive city-2-loc-1 city-2-loc-17 truck-2) 2365)
  (= (cost-drive city-2-loc-17 city-2-loc-10 truck-2) 4790)
  (= (cost-drive city-2-loc-10 city-2-loc-17 truck-2) 8254)
  (= (cost-drive city-2-loc-17 city-2-loc-14 truck-2) 3696)
  (= (cost-drive city-2-loc-14 city-2-loc-17 truck-2) 2081)
  (= (cost-drive city-2-loc-17 city-2-loc-15 truck-2) 9008)
  (= (cost-drive city-2-loc-15 city-2-loc-17 truck-2) 3369)
  (= (cost-drive city-2-loc-18 city-2-loc-3 truck-2) 3406)
  (= (cost-drive city-2-loc-3 city-2-loc-18 truck-2) 2286)
  (= (cost-drive city-2-loc-18 city-2-loc-7 truck-2) 1771)
  (= (cost-drive city-2-loc-7 city-2-loc-18 truck-2) 8913)
  (= (cost-drive city-2-loc-18 city-2-loc-11 truck-2) 1474)
  (= (cost-drive city-2-loc-11 city-2-loc-18 truck-2) 1791)
  (= (cost-drive city-2-loc-19 city-2-loc-1 truck-2) 2711)
  (= (cost-drive city-2-loc-1 city-2-loc-19 truck-2) 7853)
  (= (cost-drive city-2-loc-19 city-2-loc-13 truck-2) 4916)
  (= (cost-drive city-2-loc-13 city-2-loc-19 truck-2) 7468)
  (= (cost-drive city-2-loc-19 city-2-loc-15 truck-2) 4566)
  (= (cost-drive city-2-loc-15 city-2-loc-19 truck-2) 2464)
  (= (cost-drive city-2-loc-19 city-2-loc-16 truck-2) 7310)
  (= (cost-drive city-2-loc-16 city-2-loc-19 truck-2) 2993)
  (= (cost-drive city-2-loc-19 city-2-loc-17 truck-2) 1743)
  (= (cost-drive city-2-loc-17 city-2-loc-19 truck-2) 8500)
  (= (cost-drive city-2-loc-20 city-2-loc-5 truck-2) 9616)
  (= (cost-drive city-2-loc-5 city-2-loc-20 truck-2) 5566)
  (= (cost-drive city-2-loc-20 city-2-loc-8 truck-2) 7102)
  (= (cost-drive city-2-loc-8 city-2-loc-20 truck-2) 4104)
  (= (cost-drive city-2-loc-20 city-2-loc-13 truck-2) 3505)
  (= (cost-drive city-2-loc-13 city-2-loc-20 truck-2) 7392)
  (= (cost-drive city-2-loc-20 city-2-loc-19 truck-2) 7669)
  (= (cost-drive city-2-loc-19 city-2-loc-20 truck-2) 2211)
  (= (cost-drive city-1-loc-12 city-2-loc-4 truck-2) 8483)
  (= (cost-drive city-2-loc-4 city-1-loc-12 truck-2) 7059)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 3376)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 3801)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 9736)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 4863)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 3678)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 7016)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 8709)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 4854)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 2778)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 6286)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 6884)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 3104)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 7708)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 5883)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 5099)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 7366)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-3) 5287)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-3) 4121)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-3) 9702)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-3) 6442)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-3) 9263)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-3) 7952)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-3) 8513)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-3) 8115)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-3) 3616)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-3) 6007)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-3) 1615)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-3) 1089)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-3) 7736)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-3) 5943)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-3) 2346)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-3) 5134)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-3) 4444)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-3) 8151)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-3) 3658)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-3) 7442)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-3) 1301)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-3) 8969)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-3) 3768)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-3) 2588)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-3) 1655)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-3) 6091)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-3) 6147)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-3) 7421)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-3) 5935)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-3) 1716)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-3) 5379)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-3) 9203)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-3) 3124)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-3) 6992)
  (= (cost-drive city-1-loc-17 city-1-loc-8 truck-3) 4234)
  (= (cost-drive city-1-loc-8 city-1-loc-17 truck-3) 2124)
  (= (cost-drive city-1-loc-17 city-1-loc-10 truck-3) 5303)
  (= (cost-drive city-1-loc-10 city-1-loc-17 truck-3) 5329)
  (= (cost-drive city-1-loc-17 city-1-loc-11 truck-3) 6326)
  (= (cost-drive city-1-loc-11 city-1-loc-17 truck-3) 3954)
  (= (cost-drive city-1-loc-17 city-1-loc-15 truck-3) 8450)
  (= (cost-drive city-1-loc-15 city-1-loc-17 truck-3) 5760)
  (= (cost-drive city-1-loc-18 city-1-loc-9 truck-3) 5805)
  (= (cost-drive city-1-loc-9 city-1-loc-18 truck-3) 2553)
  (= (cost-drive city-1-loc-18 city-1-loc-13 truck-3) 5645)
  (= (cost-drive city-1-loc-13 city-1-loc-18 truck-3) 8455)
  (= (cost-drive city-1-loc-18 city-1-loc-15 truck-3) 2695)
  (= (cost-drive city-1-loc-15 city-1-loc-18 truck-3) 1169)
  (= (cost-drive city-1-loc-19 city-1-loc-12 truck-3) 4329)
  (= (cost-drive city-1-loc-12 city-1-loc-19 truck-3) 3198)
  (= (cost-drive city-1-loc-20 city-1-loc-2 truck-3) 3907)
  (= (cost-drive city-1-loc-2 city-1-loc-20 truck-3) 6344)
  (= (cost-drive city-1-loc-20 city-1-loc-18 truck-3) 9925)
  (= (cost-drive city-1-loc-18 city-1-loc-20 truck-3) 4018)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-3) 9252)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-3) 9493)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-3) 4675)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-3) 6367)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-3) 7223)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-3) 6450)
  (= (cost-drive city-2-loc-10 city-2-loc-4 truck-3) 1476)
  (= (cost-drive city-2-loc-4 city-2-loc-10 truck-3) 1795)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-3) 3491)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-3) 9206)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-3) 9090)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-3) 7855)
  (= (cost-drive city-2-loc-12 city-2-loc-4 truck-3) 6396)
  (= (cost-drive city-2-loc-4 city-2-loc-12 truck-3) 8434)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-3) 7085)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-3) 2784)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-3) 8041)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-3) 3080)
  (= (cost-drive city-2-loc-13 city-2-loc-9 truck-3) 7122)
  (= (cost-drive city-2-loc-9 city-2-loc-13 truck-3) 1512)
  (= (cost-drive city-2-loc-14 city-2-loc-10 truck-3) 6430)
  (= (cost-drive city-2-loc-10 city-2-loc-14 truck-3) 5844)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-3) 1345)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-3) 3630)
  (= (cost-drive city-2-loc-15 city-2-loc-1 truck-3) 6391)
  (= (cost-drive city-2-loc-1 city-2-loc-15 truck-3) 9161)
  (= (cost-drive city-2-loc-15 city-2-loc-4 truck-3) 1951)
  (= (cost-drive city-2-loc-4 city-2-loc-15 truck-3) 8060)
  (= (cost-drive city-2-loc-15 city-2-loc-10 truck-3) 9388)
  (= (cost-drive city-2-loc-10 city-2-loc-15 truck-3) 5985)
  (= (cost-drive city-2-loc-16 city-2-loc-1 truck-3) 2392)
  (= (cost-drive city-2-loc-1 city-2-loc-16 truck-3) 6938)
  (= (cost-drive city-2-loc-16 city-2-loc-9 truck-3) 1123)
  (= (cost-drive city-2-loc-9 city-2-loc-16 truck-3) 7940)
  (= (cost-drive city-2-loc-16 city-2-loc-13 truck-3) 4369)
  (= (cost-drive city-2-loc-13 city-2-loc-16 truck-3) 4329)
  (= (cost-drive city-2-loc-17 city-2-loc-1 truck-3) 6651)
  (= (cost-drive city-2-loc-1 city-2-loc-17 truck-3) 1045)
  (= (cost-drive city-2-loc-17 city-2-loc-10 truck-3) 8635)
  (= (cost-drive city-2-loc-10 city-2-loc-17 truck-3) 3334)
  (= (cost-drive city-2-loc-17 city-2-loc-14 truck-3) 1592)
  (= (cost-drive city-2-loc-14 city-2-loc-17 truck-3) 6636)
  (= (cost-drive city-2-loc-17 city-2-loc-15 truck-3) 4447)
  (= (cost-drive city-2-loc-15 city-2-loc-17 truck-3) 1124)
  (= (cost-drive city-2-loc-18 city-2-loc-3 truck-3) 5821)
  (= (cost-drive city-2-loc-3 city-2-loc-18 truck-3) 8179)
  (= (cost-drive city-2-loc-18 city-2-loc-7 truck-3) 6222)
  (= (cost-drive city-2-loc-7 city-2-loc-18 truck-3) 5728)
  (= (cost-drive city-2-loc-18 city-2-loc-11 truck-3) 6684)
  (= (cost-drive city-2-loc-11 city-2-loc-18 truck-3) 5729)
  (= (cost-drive city-2-loc-19 city-2-loc-1 truck-3) 4178)
  (= (cost-drive city-2-loc-1 city-2-loc-19 truck-3) 3405)
  (= (cost-drive city-2-loc-19 city-2-loc-13 truck-3) 5375)
  (= (cost-drive city-2-loc-13 city-2-loc-19 truck-3) 5087)
  (= (cost-drive city-2-loc-19 city-2-loc-15 truck-3) 4474)
  (= (cost-drive city-2-loc-15 city-2-loc-19 truck-3) 8869)
  (= (cost-drive city-2-loc-19 city-2-loc-16 truck-3) 9207)
  (= (cost-drive city-2-loc-16 city-2-loc-19 truck-3) 9245)
  (= (cost-drive city-2-loc-19 city-2-loc-17 truck-3) 5592)
  (= (cost-drive city-2-loc-17 city-2-loc-19 truck-3) 8852)
  (= (cost-drive city-2-loc-20 city-2-loc-5 truck-3) 2354)
  (= (cost-drive city-2-loc-5 city-2-loc-20 truck-3) 5233)
  (= (cost-drive city-2-loc-20 city-2-loc-8 truck-3) 3787)
  (= (cost-drive city-2-loc-8 city-2-loc-20 truck-3) 2842)
  (= (cost-drive city-2-loc-20 city-2-loc-13 truck-3) 8858)
  (= (cost-drive city-2-loc-13 city-2-loc-20 truck-3) 9229)
  (= (cost-drive city-2-loc-20 city-2-loc-19 truck-3) 4515)
  (= (cost-drive city-2-loc-19 city-2-loc-20 truck-3) 2445)
  (= (cost-drive city-1-loc-12 city-2-loc-4 truck-3) 3739)
  (= (cost-drive city-2-loc-4 city-1-loc-12 truck-3) 8450)
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
  ; 742,542 -> 890,543
  (road city-1-loc-7 city-1-loc-1)
  ; 890,543 -> 742,542
  (road city-1-loc-1 city-1-loc-7)
  ; 742,542 -> 748,385
  (road city-1-loc-7 city-1-loc-3)
  ; 748,385 -> 742,542
  (road city-1-loc-3 city-1-loc-7)
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  ; 273,425 -> 456,221
  (road city-1-loc-9 city-1-loc-6)
  ; 456,221 -> 273,425
  (road city-1-loc-6 city-1-loc-9)
  ; 566,552 -> 748,385
  (road city-1-loc-10 city-1-loc-3)
  ; 748,385 -> 566,552
  (road city-1-loc-3 city-1-loc-10)
  ; 566,552 -> 742,542
  (road city-1-loc-10 city-1-loc-7)
  ; 742,542 -> 566,552
  (road city-1-loc-7 city-1-loc-10)
  ; 566,552 -> 564,783
  (road city-1-loc-10 city-1-loc-8)
  ; 564,783 -> 566,552
  (road city-1-loc-8 city-1-loc-10)
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
  ; 55,605 -> 273,425
  (road city-1-loc-13 city-1-loc-9)
  ; 273,425 -> 55,605
  (road city-1-loc-9 city-1-loc-13)
  ; 55,605 -> 174,643
  (road city-1-loc-13 city-1-loc-11)
  ; 174,643 -> 55,605
  (road city-1-loc-11 city-1-loc-13)
  ; 803,858 -> 912,799
  (road city-1-loc-14 city-1-loc-4)
  ; 912,799 -> 803,858
  (road city-1-loc-4 city-1-loc-14)
  ; 803,858 -> 977,899
  (road city-1-loc-14 city-1-loc-5)
  ; 977,899 -> 803,858
  (road city-1-loc-5 city-1-loc-14)
  ; 803,858 -> 564,783
  (road city-1-loc-14 city-1-loc-8)
  ; 564,783 -> 803,858
  (road city-1-loc-8 city-1-loc-14)
  ; 263,567 -> 273,425
  (road city-1-loc-15 city-1-loc-9)
  ; 273,425 -> 263,567
  (road city-1-loc-9 city-1-loc-15)
  ; 263,567 -> 174,643
  (road city-1-loc-15 city-1-loc-11)
  ; 174,643 -> 263,567
  (road city-1-loc-11 city-1-loc-15)
  ; 263,567 -> 55,605
  (road city-1-loc-15 city-1-loc-13)
  ; 55,605 -> 263,567
  (road city-1-loc-13 city-1-loc-15)
  ; 128,791 -> 174,643
  (road city-1-loc-16 city-1-loc-11)
  ; 174,643 -> 128,791
  (road city-1-loc-11 city-1-loc-16)
  ; 128,791 -> 55,605
  (road city-1-loc-16 city-1-loc-13)
  ; 55,605 -> 128,791
  (road city-1-loc-13 city-1-loc-16)
  ; 128,791 -> 263,567
  (road city-1-loc-16 city-1-loc-15)
  ; 263,567 -> 128,791
  (road city-1-loc-15 city-1-loc-16)
  ; 426,706 -> 564,783
  (road city-1-loc-17 city-1-loc-8)
  ; 564,783 -> 426,706
  (road city-1-loc-8 city-1-loc-17)
  ; 426,706 -> 566,552
  (road city-1-loc-17 city-1-loc-10)
  ; 566,552 -> 426,706
  (road city-1-loc-10 city-1-loc-17)
  ; 426,706 -> 174,643
  (road city-1-loc-17 city-1-loc-11)
  ; 174,643 -> 426,706
  (road city-1-loc-11 city-1-loc-17)
  ; 426,706 -> 263,567
  (road city-1-loc-17 city-1-loc-15)
  ; 263,567 -> 426,706
  (road city-1-loc-15 city-1-loc-17)
  ; 36,368 -> 273,425
  (road city-1-loc-18 city-1-loc-9)
  ; 273,425 -> 36,368
  (road city-1-loc-9 city-1-loc-18)
  ; 36,368 -> 55,605
  (road city-1-loc-18 city-1-loc-13)
  ; 55,605 -> 36,368
  (road city-1-loc-13 city-1-loc-18)
  ; 36,368 -> 263,567
  (road city-1-loc-18 city-1-loc-15)
  ; 263,567 -> 36,368
  (road city-1-loc-15 city-1-loc-18)
  ; 806,18 -> 930,259
  (road city-1-loc-19 city-1-loc-12)
  ; 930,259 -> 806,18
  (road city-1-loc-12 city-1-loc-19)
  ; 138,109 -> 384,50
  (road city-1-loc-20 city-1-loc-2)
  ; 384,50 -> 138,109
  (road city-1-loc-2 city-1-loc-20)
  ; 138,109 -> 36,368
  (road city-1-loc-20 city-1-loc-18)
  ; 36,368 -> 138,109
  (road city-1-loc-18 city-1-loc-20)
  ; 2058,770 -> 2231,881
  (road city-2-loc-7 city-2-loc-3)
  ; 2231,881 -> 2058,770
  (road city-2-loc-3 city-2-loc-7)
  ; 2988,202 -> 2989,457
  (road city-2-loc-8 city-2-loc-6)
  ; 2989,457 -> 2988,202
  (road city-2-loc-6 city-2-loc-8)
  ; 2589,754 -> 2842,866
  (road city-2-loc-9 city-2-loc-2)
  ; 2842,866 -> 2589,754
  (road city-2-loc-2 city-2-loc-9)
  ; 2053,153 -> 2013,291
  (road city-2-loc-10 city-2-loc-4)
  ; 2013,291 -> 2053,153
  (road city-2-loc-4 city-2-loc-10)
  ; 2362,862 -> 2231,881
  (road city-2-loc-11 city-2-loc-3)
  ; 2231,881 -> 2362,862
  (road city-2-loc-3 city-2-loc-11)
  ; 2362,862 -> 2589,754
  (road city-2-loc-11 city-2-loc-9)
  ; 2589,754 -> 2362,862
  (road city-2-loc-9 city-2-loc-11)
  ; 2006,60 -> 2013,291
  (road city-2-loc-12 city-2-loc-4)
  ; 2013,291 -> 2006,60
  (road city-2-loc-4 city-2-loc-12)
  ; 2006,60 -> 2053,153
  (road city-2-loc-12 city-2-loc-10)
  ; 2053,153 -> 2006,60
  (road city-2-loc-10 city-2-loc-12)
  ; 2659,497 -> 2392,433
  (road city-2-loc-13 city-2-loc-1)
  ; 2392,433 -> 2659,497
  (road city-2-loc-1 city-2-loc-13)
  ; 2659,497 -> 2589,754
  (road city-2-loc-13 city-2-loc-9)
  ; 2589,754 -> 2659,497
  (road city-2-loc-9 city-2-loc-13)
  ; 2257,5 -> 2053,153
  (road city-2-loc-14 city-2-loc-10)
  ; 2053,153 -> 2257,5
  (road city-2-loc-10 city-2-loc-14)
  ; 2257,5 -> 2006,60
  (road city-2-loc-14 city-2-loc-12)
  ; 2006,60 -> 2257,5
  (road city-2-loc-12 city-2-loc-14)
  ; 2245,346 -> 2392,433
  (road city-2-loc-15 city-2-loc-1)
  ; 2392,433 -> 2245,346
  (road city-2-loc-1 city-2-loc-15)
  ; 2245,346 -> 2013,291
  (road city-2-loc-15 city-2-loc-4)
  ; 2013,291 -> 2245,346
  (road city-2-loc-4 city-2-loc-15)
  ; 2245,346 -> 2053,153
  (road city-2-loc-15 city-2-loc-10)
  ; 2053,153 -> 2245,346
  (road city-2-loc-10 city-2-loc-15)
  ; 2559,565 -> 2392,433
  (road city-2-loc-16 city-2-loc-1)
  ; 2392,433 -> 2559,565
  (road city-2-loc-1 city-2-loc-16)
  ; 2559,565 -> 2589,754
  (road city-2-loc-16 city-2-loc-9)
  ; 2589,754 -> 2559,565
  (road city-2-loc-9 city-2-loc-16)
  ; 2559,565 -> 2659,497
  (road city-2-loc-16 city-2-loc-13)
  ; 2659,497 -> 2559,565
  (road city-2-loc-13 city-2-loc-16)
  ; 2347,149 -> 2392,433
  (road city-2-loc-17 city-2-loc-1)
  ; 2392,433 -> 2347,149
  (road city-2-loc-1 city-2-loc-17)
  ; 2347,149 -> 2053,153
  (road city-2-loc-17 city-2-loc-10)
  ; 2053,153 -> 2347,149
  (road city-2-loc-10 city-2-loc-17)
  ; 2347,149 -> 2257,5
  (road city-2-loc-17 city-2-loc-14)
  ; 2257,5 -> 2347,149
  (road city-2-loc-14 city-2-loc-17)
  ; 2347,149 -> 2245,346
  (road city-2-loc-17 city-2-loc-15)
  ; 2245,346 -> 2347,149
  (road city-2-loc-15 city-2-loc-17)
  ; 2170,709 -> 2231,881
  (road city-2-loc-18 city-2-loc-3)
  ; 2231,881 -> 2170,709
  (road city-2-loc-3 city-2-loc-18)
  ; 2170,709 -> 2058,770
  (road city-2-loc-18 city-2-loc-7)
  ; 2058,770 -> 2170,709
  (road city-2-loc-7 city-2-loc-18)
  ; 2170,709 -> 2362,862
  (road city-2-loc-18 city-2-loc-11)
  ; 2362,862 -> 2170,709
  (road city-2-loc-11 city-2-loc-18)
  ; 2521,375 -> 2392,433
  (road city-2-loc-19 city-2-loc-1)
  ; 2392,433 -> 2521,375
  (road city-2-loc-1 city-2-loc-19)
  ; 2521,375 -> 2659,497
  (road city-2-loc-19 city-2-loc-13)
  ; 2659,497 -> 2521,375
  (road city-2-loc-13 city-2-loc-19)
  ; 2521,375 -> 2245,346
  (road city-2-loc-19 city-2-loc-15)
  ; 2245,346 -> 2521,375
  (road city-2-loc-15 city-2-loc-19)
  ; 2521,375 -> 2559,565
  (road city-2-loc-19 city-2-loc-16)
  ; 2559,565 -> 2521,375
  (road city-2-loc-16 city-2-loc-19)
  ; 2521,375 -> 2347,149
  (road city-2-loc-19 city-2-loc-17)
  ; 2347,149 -> 2521,375
  (road city-2-loc-17 city-2-loc-19)
  ; 2720,241 -> 2682,8
  (road city-2-loc-20 city-2-loc-5)
  ; 2682,8 -> 2720,241
  (road city-2-loc-5 city-2-loc-20)
  ; 2720,241 -> 2988,202
  (road city-2-loc-20 city-2-loc-8)
  ; 2988,202 -> 2720,241
  (road city-2-loc-8 city-2-loc-20)
  ; 2720,241 -> 2659,497
  (road city-2-loc-20 city-2-loc-13)
  ; 2659,497 -> 2720,241
  (road city-2-loc-13 city-2-loc-20)
  ; 2720,241 -> 2521,375
  (road city-2-loc-20 city-2-loc-19)
  ; 2521,375 -> 2720,241
  (road city-2-loc-19 city-2-loc-20)
  ; 930,259 <-> 2013,291
  (road city-1-loc-12 city-2-loc-4)
  (road city-2-loc-4 city-1-loc-12)
  (at package-1 city-1-loc-10)
  (at package-2 city-1-loc-6)
  (at package-3 city-1-loc-5)
  (at package-4 city-1-loc-14)
  (at package-5 city-1-loc-13)
  (at package-6 city-1-loc-15)
  (at package-7 city-1-loc-3)
  (at package-8 city-1-loc-18)
  (at package-9 city-1-loc-8)
  (at package-10 city-1-loc-6)
  (at package-11 city-1-loc-4)
  (at truck-1 city-2-loc-11)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-13)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-15)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-14)
  (at package-2 city-2-loc-7)
  (at package-3 city-2-loc-11)
  (at package-4 city-2-loc-8)
  (at package-5 city-2-loc-5)
  (at package-6 city-2-loc-12)
  (at package-7 city-2-loc-16)
  (at package-8 city-2-loc-2)
  (at package-9 city-2-loc-6)
  (at package-10 city-2-loc-18)
  (at package-11 city-2-loc-3)
 ))
 (:metric minimize (total-cost))
)
