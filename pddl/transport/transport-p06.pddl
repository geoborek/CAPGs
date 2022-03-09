; Transport city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed

(define (problem transport-city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
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
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-loc-3 city-loc-1) 22)
 (= (base-drive city-loc-1 city-loc-3) 22)
 (= (base-drive city-loc-4 city-loc-1) 26)
 (= (base-drive city-loc-1 city-loc-4) 26)
 (= (base-drive city-loc-5 city-loc-4) 12)
 (= (base-drive city-loc-4 city-loc-5) 12)
 (= (base-drive city-loc-6 city-loc-2) 19)
 (= (base-drive city-loc-2 city-loc-6) 19)
 (= (base-drive city-loc-7 city-loc-1) 15)
 (= (base-drive city-loc-1 city-loc-7) 15)
 (= (base-drive city-loc-7 city-loc-3) 16)
 (= (base-drive city-loc-3 city-loc-7) 16)
 (= (base-drive city-loc-7 city-loc-4) 31)
 (= (base-drive city-loc-4 city-loc-7) 31)
 (= (base-drive city-loc-8 city-loc-7) 30)
 (= (base-drive city-loc-7 city-loc-8) 30)
 (= (base-drive city-loc-9 city-loc-6) 28)
 (= (base-drive city-loc-6 city-loc-9) 28)
 (= (base-drive city-loc-10 city-loc-3) 25)
 (= (base-drive city-loc-3 city-loc-10) 25)
 (= (base-drive city-loc-10 city-loc-7) 18)
 (= (base-drive city-loc-7 city-loc-10) 18)
 (= (base-drive city-loc-10 city-loc-8) 24)
 (= (base-drive city-loc-8 city-loc-10) 24)
 (= (base-drive city-loc-10 city-loc-9) 32)
 (= (base-drive city-loc-9 city-loc-10) 32)
 (= (base-drive city-loc-11 city-loc-9) 24)
 (= (base-drive city-loc-9 city-loc-11) 24)
 (= (base-drive city-loc-12 city-loc-1) 29)
 (= (base-drive city-loc-1 city-loc-12) 29)
 (= (base-drive city-loc-12 city-loc-3) 23)
 (= (base-drive city-loc-3 city-loc-12) 23)
 (= (base-drive city-loc-13 city-loc-9) 29)
 (= (base-drive city-loc-9 city-loc-13) 29)
 (= (base-drive city-loc-13 city-loc-11) 13)
 (= (base-drive city-loc-11 city-loc-13) 13)
 (= (base-drive city-loc-14 city-loc-4) 13)
 (= (base-drive city-loc-4 city-loc-14) 13)
 (= (base-drive city-loc-14 city-loc-5) 18)
 (= (base-drive city-loc-5 city-loc-14) 18)
 (= (base-drive city-loc-14 city-loc-8) 25)
 (= (base-drive city-loc-8 city-loc-14) 25)
 (= (base-drive city-loc-15 city-loc-9) 15)
 (= (base-drive city-loc-9 city-loc-15) 15)
 (= (base-drive city-loc-15 city-loc-10) 31)
 (= (base-drive city-loc-10 city-loc-15) 31)
 (= (base-drive city-loc-15 city-loc-11) 12)
 (= (base-drive city-loc-11 city-loc-15) 12)
 (= (base-drive city-loc-15 city-loc-13) 22)
 (= (base-drive city-loc-13 city-loc-15) 22)
 (= (base-drive city-loc-16 city-loc-11) 16)
 (= (base-drive city-loc-11 city-loc-16) 16)
 (= (base-drive city-loc-16 city-loc-13) 20)
 (= (base-drive city-loc-13 city-loc-16) 20)
 (= (base-drive city-loc-16 city-loc-15) 27)
 (= (base-drive city-loc-15 city-loc-16) 27)
 (= (base-drive city-loc-17 city-loc-8) 16)
 (= (base-drive city-loc-8 city-loc-17) 16)
 (= (base-drive city-loc-17 city-loc-10) 21)
 (= (base-drive city-loc-10 city-loc-17) 21)
 (= (base-drive city-loc-17 city-loc-11) 26)
 (= (base-drive city-loc-11 city-loc-17) 26)
 (= (base-drive city-loc-17 city-loc-15) 22)
 (= (base-drive city-loc-15 city-loc-17) 22)
 (= (base-drive city-loc-17 city-loc-16) 31)
 (= (base-drive city-loc-16 city-loc-17) 31)
 (= (base-drive city-loc-18 city-loc-9) 25)
 (= (base-drive city-loc-9 city-loc-18) 25)
 (= (base-drive city-loc-18 city-loc-11) 31)
 (= (base-drive city-loc-11 city-loc-18) 31)
 (= (base-drive city-loc-18 city-loc-13) 24)
 (= (base-drive city-loc-13 city-loc-18) 24)
 (= (base-drive city-loc-18 city-loc-15) 31)
 (= (base-drive city-loc-15 city-loc-18) 31)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 5995)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 9930)
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 2164)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 2481)
  (= (cost-drive city-loc-5 city-loc-4 truck-1) 8632)
  (= (cost-drive city-loc-4 city-loc-5 truck-1) 8380)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 7959)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 3282)
  (= (cost-drive city-loc-7 city-loc-1 truck-1) 2792)
  (= (cost-drive city-loc-1 city-loc-7 truck-1) 7468)
  (= (cost-drive city-loc-7 city-loc-3 truck-1) 4278)
  (= (cost-drive city-loc-3 city-loc-7 truck-1) 9429)
  (= (cost-drive city-loc-7 city-loc-4 truck-1) 2056)
  (= (cost-drive city-loc-4 city-loc-7 truck-1) 8792)
  (= (cost-drive city-loc-8 city-loc-7 truck-1) 9479)
  (= (cost-drive city-loc-7 city-loc-8 truck-1) 4642)
  (= (cost-drive city-loc-9 city-loc-6 truck-1) 1553)
  (= (cost-drive city-loc-6 city-loc-9 truck-1) 5326)
  (= (cost-drive city-loc-10 city-loc-3 truck-1) 1968)
  (= (cost-drive city-loc-3 city-loc-10 truck-1) 9634)
  (= (cost-drive city-loc-10 city-loc-7 truck-1) 4380)
  (= (cost-drive city-loc-7 city-loc-10 truck-1) 1069)
  (= (cost-drive city-loc-10 city-loc-8 truck-1) 8071)
  (= (cost-drive city-loc-8 city-loc-10 truck-1) 9266)
  (= (cost-drive city-loc-10 city-loc-9 truck-1) 3839)
  (= (cost-drive city-loc-9 city-loc-10 truck-1) 9946)
  (= (cost-drive city-loc-11 city-loc-9 truck-1) 9111)
  (= (cost-drive city-loc-9 city-loc-11 truck-1) 5304)
  (= (cost-drive city-loc-12 city-loc-1 truck-1) 3724)
  (= (cost-drive city-loc-1 city-loc-12 truck-1) 4738)
  (= (cost-drive city-loc-12 city-loc-3 truck-1) 2143)
  (= (cost-drive city-loc-3 city-loc-12 truck-1) 2746)
  (= (cost-drive city-loc-13 city-loc-9 truck-1) 4161)
  (= (cost-drive city-loc-9 city-loc-13 truck-1) 5142)
  (= (cost-drive city-loc-13 city-loc-11 truck-1) 6319)
  (= (cost-drive city-loc-11 city-loc-13 truck-1) 3825)
  (= (cost-drive city-loc-14 city-loc-4 truck-1) 3175)
  (= (cost-drive city-loc-4 city-loc-14 truck-1) 2180)
  (= (cost-drive city-loc-14 city-loc-5 truck-1) 3066)
  (= (cost-drive city-loc-5 city-loc-14 truck-1) 4614)
  (= (cost-drive city-loc-14 city-loc-8 truck-1) 3095)
  (= (cost-drive city-loc-8 city-loc-14 truck-1) 9758)
  (= (cost-drive city-loc-15 city-loc-9 truck-1) 1109)
  (= (cost-drive city-loc-9 city-loc-15 truck-1) 6644)
  (= (cost-drive city-loc-15 city-loc-10 truck-1) 8014)
  (= (cost-drive city-loc-10 city-loc-15 truck-1) 6983)
  (= (cost-drive city-loc-15 city-loc-11 truck-1) 7149)
  (= (cost-drive city-loc-11 city-loc-15 truck-1) 3101)
  (= (cost-drive city-loc-15 city-loc-13 truck-1) 3749)
  (= (cost-drive city-loc-13 city-loc-15 truck-1) 1670)
  (= (cost-drive city-loc-16 city-loc-11 truck-1) 1689)
  (= (cost-drive city-loc-11 city-loc-16 truck-1) 5131)
  (= (cost-drive city-loc-16 city-loc-13 truck-1) 6640)
  (= (cost-drive city-loc-13 city-loc-16 truck-1) 1515)
  (= (cost-drive city-loc-16 city-loc-15 truck-1) 8923)
  (= (cost-drive city-loc-15 city-loc-16 truck-1) 1453)
  (= (cost-drive city-loc-17 city-loc-8 truck-1) 7181)
  (= (cost-drive city-loc-8 city-loc-17 truck-1) 3201)
  (= (cost-drive city-loc-17 city-loc-10 truck-1) 5282)
  (= (cost-drive city-loc-10 city-loc-17 truck-1) 2587)
  (= (cost-drive city-loc-17 city-loc-11 truck-1) 6572)
  (= (cost-drive city-loc-11 city-loc-17 truck-1) 4118)
  (= (cost-drive city-loc-17 city-loc-15 truck-1) 4990)
  (= (cost-drive city-loc-15 city-loc-17 truck-1) 3649)
  (= (cost-drive city-loc-17 city-loc-16 truck-1) 6394)
  (= (cost-drive city-loc-16 city-loc-17 truck-1) 1470)
  (= (cost-drive city-loc-18 city-loc-9 truck-1) 7770)
  (= (cost-drive city-loc-9 city-loc-18 truck-1) 5588)
  (= (cost-drive city-loc-18 city-loc-11 truck-1) 4080)
  (= (cost-drive city-loc-11 city-loc-18 truck-1) 8844)
  (= (cost-drive city-loc-18 city-loc-13 truck-1) 9187)
  (= (cost-drive city-loc-13 city-loc-18 truck-1) 8197)
  (= (cost-drive city-loc-18 city-loc-15 truck-1) 6511)
  (= (cost-drive city-loc-15 city-loc-18 truck-1) 2453)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 1283)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 7708)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 9442)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 7221)
  (= (cost-drive city-loc-5 city-loc-4 truck-2) 3367)
  (= (cost-drive city-loc-4 city-loc-5 truck-2) 9611)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 4205)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 5632)
  (= (cost-drive city-loc-7 city-loc-1 truck-2) 9942)
  (= (cost-drive city-loc-1 city-loc-7 truck-2) 8577)
  (= (cost-drive city-loc-7 city-loc-3 truck-2) 3163)
  (= (cost-drive city-loc-3 city-loc-7 truck-2) 6406)
  (= (cost-drive city-loc-7 city-loc-4 truck-2) 4246)
  (= (cost-drive city-loc-4 city-loc-7 truck-2) 7412)
  (= (cost-drive city-loc-8 city-loc-7 truck-2) 5831)
  (= (cost-drive city-loc-7 city-loc-8 truck-2) 4704)
  (= (cost-drive city-loc-9 city-loc-6 truck-2) 8838)
  (= (cost-drive city-loc-6 city-loc-9 truck-2) 1516)
  (= (cost-drive city-loc-10 city-loc-3 truck-2) 6675)
  (= (cost-drive city-loc-3 city-loc-10 truck-2) 1551)
  (= (cost-drive city-loc-10 city-loc-7 truck-2) 7935)
  (= (cost-drive city-loc-7 city-loc-10 truck-2) 7894)
  (= (cost-drive city-loc-10 city-loc-8 truck-2) 3545)
  (= (cost-drive city-loc-8 city-loc-10 truck-2) 4611)
  (= (cost-drive city-loc-10 city-loc-9 truck-2) 2054)
  (= (cost-drive city-loc-9 city-loc-10 truck-2) 2657)
  (= (cost-drive city-loc-11 city-loc-9 truck-2) 7641)
  (= (cost-drive city-loc-9 city-loc-11 truck-2) 5474)
  (= (cost-drive city-loc-12 city-loc-1 truck-2) 3655)
  (= (cost-drive city-loc-1 city-loc-12 truck-2) 2896)
  (= (cost-drive city-loc-12 city-loc-3 truck-2) 6580)
  (= (cost-drive city-loc-3 city-loc-12 truck-2) 3278)
  (= (cost-drive city-loc-13 city-loc-9 truck-2) 4612)
  (= (cost-drive city-loc-9 city-loc-13 truck-2) 7078)
  (= (cost-drive city-loc-13 city-loc-11 truck-2) 9973)
  (= (cost-drive city-loc-11 city-loc-13 truck-2) 7561)
  (= (cost-drive city-loc-14 city-loc-4 truck-2) 3708)
  (= (cost-drive city-loc-4 city-loc-14 truck-2) 1184)
  (= (cost-drive city-loc-14 city-loc-5 truck-2) 5407)
  (= (cost-drive city-loc-5 city-loc-14 truck-2) 1257)
  (= (cost-drive city-loc-14 city-loc-8 truck-2) 5806)
  (= (cost-drive city-loc-8 city-loc-14 truck-2) 4665)
  (= (cost-drive city-loc-15 city-loc-9 truck-2) 2766)
  (= (cost-drive city-loc-9 city-loc-15 truck-2) 2656)
  (= (cost-drive city-loc-15 city-loc-10 truck-2) 8548)
  (= (cost-drive city-loc-10 city-loc-15 truck-2) 5979)
  (= (cost-drive city-loc-15 city-loc-11 truck-2) 6950)
  (= (cost-drive city-loc-11 city-loc-15 truck-2) 6912)
  (= (cost-drive city-loc-15 city-loc-13 truck-2) 4505)
  (= (cost-drive city-loc-13 city-loc-15 truck-2) 9321)
  (= (cost-drive city-loc-16 city-loc-11 truck-2) 1468)
  (= (cost-drive city-loc-11 city-loc-16 truck-2) 2117)
  (= (cost-drive city-loc-16 city-loc-13 truck-2) 1187)
  (= (cost-drive city-loc-13 city-loc-16 truck-2) 7555)
  (= (cost-drive city-loc-16 city-loc-15 truck-2) 9241)
  (= (cost-drive city-loc-15 city-loc-16 truck-2) 2427)
  (= (cost-drive city-loc-17 city-loc-8 truck-2) 8803)
  (= (cost-drive city-loc-8 city-loc-17 truck-2) 6213)
  (= (cost-drive city-loc-17 city-loc-10 truck-2) 4547)
  (= (cost-drive city-loc-10 city-loc-17 truck-2) 3571)
  (= (cost-drive city-loc-17 city-loc-11 truck-2) 6600)
  (= (cost-drive city-loc-11 city-loc-17 truck-2) 2590)
  (= (cost-drive city-loc-17 city-loc-15 truck-2) 6667)
  (= (cost-drive city-loc-15 city-loc-17 truck-2) 3689)
  (= (cost-drive city-loc-17 city-loc-16 truck-2) 2640)
  (= (cost-drive city-loc-16 city-loc-17 truck-2) 3993)
  (= (cost-drive city-loc-18 city-loc-9 truck-2) 9386)
  (= (cost-drive city-loc-9 city-loc-18 truck-2) 7526)
  (= (cost-drive city-loc-18 city-loc-11 truck-2) 6774)
  (= (cost-drive city-loc-11 city-loc-18 truck-2) 5908)
  (= (cost-drive city-loc-18 city-loc-13 truck-2) 9665)
  (= (cost-drive city-loc-13 city-loc-18 truck-2) 8993)
  (= (cost-drive city-loc-18 city-loc-15 truck-2) 5875)
  (= (cost-drive city-loc-15 city-loc-18 truck-2) 8956)
  (= (cost-drive city-loc-3 city-loc-1 truck-3) 1326)
  (= (cost-drive city-loc-1 city-loc-3 truck-3) 5717)
  (= (cost-drive city-loc-4 city-loc-1 truck-3) 4326)
  (= (cost-drive city-loc-1 city-loc-4 truck-3) 7067)
  (= (cost-drive city-loc-5 city-loc-4 truck-3) 3704)
  (= (cost-drive city-loc-4 city-loc-5 truck-3) 4110)
  (= (cost-drive city-loc-6 city-loc-2 truck-3) 8419)
  (= (cost-drive city-loc-2 city-loc-6 truck-3) 1761)
  (= (cost-drive city-loc-7 city-loc-1 truck-3) 2536)
  (= (cost-drive city-loc-1 city-loc-7 truck-3) 8138)
  (= (cost-drive city-loc-7 city-loc-3 truck-3) 5780)
  (= (cost-drive city-loc-3 city-loc-7 truck-3) 6375)
  (= (cost-drive city-loc-7 city-loc-4 truck-3) 2938)
  (= (cost-drive city-loc-4 city-loc-7 truck-3) 2057)
  (= (cost-drive city-loc-8 city-loc-7 truck-3) 3568)
  (= (cost-drive city-loc-7 city-loc-8 truck-3) 3792)
  (= (cost-drive city-loc-9 city-loc-6 truck-3) 3460)
  (= (cost-drive city-loc-6 city-loc-9 truck-3) 9657)
  (= (cost-drive city-loc-10 city-loc-3 truck-3) 6019)
  (= (cost-drive city-loc-3 city-loc-10 truck-3) 7702)
  (= (cost-drive city-loc-10 city-loc-7 truck-3) 9100)
  (= (cost-drive city-loc-7 city-loc-10 truck-3) 2364)
  (= (cost-drive city-loc-10 city-loc-8 truck-3) 9184)
  (= (cost-drive city-loc-8 city-loc-10 truck-3) 1658)
  (= (cost-drive city-loc-10 city-loc-9 truck-3) 6022)
  (= (cost-drive city-loc-9 city-loc-10 truck-3) 6940)
  (= (cost-drive city-loc-11 city-loc-9 truck-3) 6633)
  (= (cost-drive city-loc-9 city-loc-11 truck-3) 4009)
  (= (cost-drive city-loc-12 city-loc-1 truck-3) 9017)
  (= (cost-drive city-loc-1 city-loc-12 truck-3) 3844)
  (= (cost-drive city-loc-12 city-loc-3 truck-3) 5352)
  (= (cost-drive city-loc-3 city-loc-12 truck-3) 6318)
  (= (cost-drive city-loc-13 city-loc-9 truck-3) 8998)
  (= (cost-drive city-loc-9 city-loc-13 truck-3) 2237)
  (= (cost-drive city-loc-13 city-loc-11 truck-3) 8679)
  (= (cost-drive city-loc-11 city-loc-13 truck-3) 6824)
  (= (cost-drive city-loc-14 city-loc-4 truck-3) 2538)
  (= (cost-drive city-loc-4 city-loc-14 truck-3) 4874)
  (= (cost-drive city-loc-14 city-loc-5 truck-3) 8849)
  (= (cost-drive city-loc-5 city-loc-14 truck-3) 8384)
  (= (cost-drive city-loc-14 city-loc-8 truck-3) 4911)
  (= (cost-drive city-loc-8 city-loc-14 truck-3) 9748)
  (= (cost-drive city-loc-15 city-loc-9 truck-3) 9977)
  (= (cost-drive city-loc-9 city-loc-15 truck-3) 3848)
  (= (cost-drive city-loc-15 city-loc-10 truck-3) 4255)
  (= (cost-drive city-loc-10 city-loc-15 truck-3) 2181)
  (= (cost-drive city-loc-15 city-loc-11 truck-3) 8946)
  (= (cost-drive city-loc-11 city-loc-15 truck-3) 6413)
  (= (cost-drive city-loc-15 city-loc-13 truck-3) 1937)
  (= (cost-drive city-loc-13 city-loc-15 truck-3) 3764)
  (= (cost-drive city-loc-16 city-loc-11 truck-3) 6889)
  (= (cost-drive city-loc-11 city-loc-16 truck-3) 6398)
  (= (cost-drive city-loc-16 city-loc-13 truck-3) 2609)
  (= (cost-drive city-loc-13 city-loc-16 truck-3) 5262)
  (= (cost-drive city-loc-16 city-loc-15 truck-3) 6053)
  (= (cost-drive city-loc-15 city-loc-16 truck-3) 2304)
  (= (cost-drive city-loc-17 city-loc-8 truck-3) 3760)
  (= (cost-drive city-loc-8 city-loc-17 truck-3) 2396)
  (= (cost-drive city-loc-17 city-loc-10 truck-3) 1348)
  (= (cost-drive city-loc-10 city-loc-17 truck-3) 9733)
  (= (cost-drive city-loc-17 city-loc-11 truck-3) 1021)
  (= (cost-drive city-loc-11 city-loc-17 truck-3) 8814)
  (= (cost-drive city-loc-17 city-loc-15 truck-3) 2090)
  (= (cost-drive city-loc-15 city-loc-17 truck-3) 7383)
  (= (cost-drive city-loc-17 city-loc-16 truck-3) 2594)
  (= (cost-drive city-loc-16 city-loc-17 truck-3) 1152)
  (= (cost-drive city-loc-18 city-loc-9 truck-3) 3159)
  (= (cost-drive city-loc-9 city-loc-18 truck-3) 7468)
  (= (cost-drive city-loc-18 city-loc-11 truck-3) 7042)
  (= (cost-drive city-loc-11 city-loc-18 truck-3) 9533)
  (= (cost-drive city-loc-18 city-loc-13 truck-3) 9514)
  (= (cost-drive city-loc-13 city-loc-18 truck-3) 1999)
  (= (cost-drive city-loc-18 city-loc-15 truck-3) 2853)
  (= (cost-drive city-loc-15 city-loc-18 truck-3) 8291)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 748,385 -> 890,543
  (road city-loc-3 city-loc-1)
  ; 890,543 -> 748,385
  (road city-loc-1 city-loc-3)
  ; 912,799 -> 890,543
  (road city-loc-4 city-loc-1)
  ; 890,543 -> 912,799
  (road city-loc-1 city-loc-4)
  ; 977,899 -> 912,799
  (road city-loc-5 city-loc-4)
  ; 912,799 -> 977,899
  (road city-loc-4 city-loc-5)
  ; 456,221 -> 384,50
  (road city-loc-6 city-loc-2)
  ; 384,50 -> 456,221
  (road city-loc-2 city-loc-6)
  ; 742,542 -> 890,543
  (road city-loc-7 city-loc-1)
  ; 890,543 -> 742,542
  (road city-loc-1 city-loc-7)
  ; 742,542 -> 748,385
  (road city-loc-7 city-loc-3)
  ; 748,385 -> 742,542
  (road city-loc-3 city-loc-7)
  ; 742,542 -> 912,799
  (road city-loc-7 city-loc-4)
  ; 912,799 -> 742,542
  (road city-loc-4 city-loc-7)
  ; 564,783 -> 742,542
  (road city-loc-8 city-loc-7)
  ; 742,542 -> 564,783
  (road city-loc-7 city-loc-8)
  ; 273,425 -> 456,221
  (road city-loc-9 city-loc-6)
  ; 456,221 -> 273,425
  (road city-loc-6 city-loc-9)
  ; 566,552 -> 748,385
  (road city-loc-10 city-loc-3)
  ; 748,385 -> 566,552
  (road city-loc-3 city-loc-10)
  ; 566,552 -> 742,542
  (road city-loc-10 city-loc-7)
  ; 742,542 -> 566,552
  (road city-loc-7 city-loc-10)
  ; 566,552 -> 564,783
  (road city-loc-10 city-loc-8)
  ; 564,783 -> 566,552
  (road city-loc-8 city-loc-10)
  ; 566,552 -> 273,425
  (road city-loc-10 city-loc-9)
  ; 273,425 -> 566,552
  (road city-loc-9 city-loc-10)
  ; 174,643 -> 273,425
  (road city-loc-11 city-loc-9)
  ; 273,425 -> 174,643
  (road city-loc-9 city-loc-11)
  ; 930,259 -> 890,543
  (road city-loc-12 city-loc-1)
  ; 890,543 -> 930,259
  (road city-loc-1 city-loc-12)
  ; 930,259 -> 748,385
  (road city-loc-12 city-loc-3)
  ; 748,385 -> 930,259
  (road city-loc-3 city-loc-12)
  ; 55,605 -> 273,425
  (road city-loc-13 city-loc-9)
  ; 273,425 -> 55,605
  (road city-loc-9 city-loc-13)
  ; 55,605 -> 174,643
  (road city-loc-13 city-loc-11)
  ; 174,643 -> 55,605
  (road city-loc-11 city-loc-13)
  ; 803,858 -> 912,799
  (road city-loc-14 city-loc-4)
  ; 912,799 -> 803,858
  (road city-loc-4 city-loc-14)
  ; 803,858 -> 977,899
  (road city-loc-14 city-loc-5)
  ; 977,899 -> 803,858
  (road city-loc-5 city-loc-14)
  ; 803,858 -> 564,783
  (road city-loc-14 city-loc-8)
  ; 564,783 -> 803,858
  (road city-loc-8 city-loc-14)
  ; 263,567 -> 273,425
  (road city-loc-15 city-loc-9)
  ; 273,425 -> 263,567
  (road city-loc-9 city-loc-15)
  ; 263,567 -> 566,552
  (road city-loc-15 city-loc-10)
  ; 566,552 -> 263,567
  (road city-loc-10 city-loc-15)
  ; 263,567 -> 174,643
  (road city-loc-15 city-loc-11)
  ; 174,643 -> 263,567
  (road city-loc-11 city-loc-15)
  ; 263,567 -> 55,605
  (road city-loc-15 city-loc-13)
  ; 55,605 -> 263,567
  (road city-loc-13 city-loc-15)
  ; 128,791 -> 174,643
  (road city-loc-16 city-loc-11)
  ; 174,643 -> 128,791
  (road city-loc-11 city-loc-16)
  ; 128,791 -> 55,605
  (road city-loc-16 city-loc-13)
  ; 55,605 -> 128,791
  (road city-loc-13 city-loc-16)
  ; 128,791 -> 263,567
  (road city-loc-16 city-loc-15)
  ; 263,567 -> 128,791
  (road city-loc-15 city-loc-16)
  ; 426,706 -> 564,783
  (road city-loc-17 city-loc-8)
  ; 564,783 -> 426,706
  (road city-loc-8 city-loc-17)
  ; 426,706 -> 566,552
  (road city-loc-17 city-loc-10)
  ; 566,552 -> 426,706
  (road city-loc-10 city-loc-17)
  ; 426,706 -> 174,643
  (road city-loc-17 city-loc-11)
  ; 174,643 -> 426,706
  (road city-loc-11 city-loc-17)
  ; 426,706 -> 263,567
  (road city-loc-17 city-loc-15)
  ; 263,567 -> 426,706
  (road city-loc-15 city-loc-17)
  ; 426,706 -> 128,791
  (road city-loc-17 city-loc-16)
  ; 128,791 -> 426,706
  (road city-loc-16 city-loc-17)
  ; 36,368 -> 273,425
  (road city-loc-18 city-loc-9)
  ; 273,425 -> 36,368
  (road city-loc-9 city-loc-18)
  ; 36,368 -> 174,643
  (road city-loc-18 city-loc-11)
  ; 174,643 -> 36,368
  (road city-loc-11 city-loc-18)
  ; 36,368 -> 55,605
  (road city-loc-18 city-loc-13)
  ; 55,605 -> 36,368
  (road city-loc-13 city-loc-18)
  ; 36,368 -> 263,567
  (road city-loc-18 city-loc-15)
  ; 263,567 -> 36,368
  (road city-loc-15 city-loc-18)
  (at package-1 city-loc-15)
  (at package-2 city-loc-1)
  (at package-3 city-loc-3)
  (at package-4 city-loc-2)
  (at package-5 city-loc-8)
  (at package-6 city-loc-8)
  (at package-7 city-loc-16)
  (at truck-1 city-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-1)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-6)
  (at package-2 city-loc-13)
  (at package-3 city-loc-1)
  (at package-4 city-loc-18)
  (at package-5 city-loc-9)
  (at package-6 city-loc-2)
  (at package-7 city-loc-14)
 ))
 (:metric minimize (total-cost))
)
