; Transport city-sequential-24nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed

(define (problem transport-city-sequential-24nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed)
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
  city-loc-19 - location
  city-loc-20 - location
  city-loc-21 - location
  city-loc-22 - location
  city-loc-23 - location
  city-loc-24 - location
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
 (= (base-drive city-loc-9 city-loc-6) 28)
 (= (base-drive city-loc-6 city-loc-9) 28)
 (= (base-drive city-loc-10 city-loc-3) 25)
 (= (base-drive city-loc-3 city-loc-10) 25)
 (= (base-drive city-loc-10 city-loc-7) 18)
 (= (base-drive city-loc-7 city-loc-10) 18)
 (= (base-drive city-loc-10 city-loc-8) 24)
 (= (base-drive city-loc-8 city-loc-10) 24)
 (= (base-drive city-loc-11 city-loc-9) 24)
 (= (base-drive city-loc-9 city-loc-11) 24)
 (= (base-drive city-loc-12 city-loc-3) 23)
 (= (base-drive city-loc-3 city-loc-12) 23)
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
 (= (base-drive city-loc-18 city-loc-9) 25)
 (= (base-drive city-loc-9 city-loc-18) 25)
 (= (base-drive city-loc-18 city-loc-13) 24)
 (= (base-drive city-loc-13 city-loc-18) 24)
 (= (base-drive city-loc-19 city-loc-12) 28)
 (= (base-drive city-loc-12 city-loc-19) 28)
 (= (base-drive city-loc-20 city-loc-2) 26)
 (= (base-drive city-loc-2 city-loc-20) 26)
 (= (base-drive city-loc-21 city-loc-6) 23)
 (= (base-drive city-loc-6 city-loc-21) 23)
 (= (base-drive city-loc-21 city-loc-9) 12)
 (= (base-drive city-loc-9 city-loc-21) 12)
 (= (base-drive city-loc-21 city-loc-10) 22)
 (= (base-drive city-loc-10 city-loc-21) 22)
 (= (base-drive city-loc-21 city-loc-15) 19)
 (= (base-drive city-loc-15 city-loc-21) 19)
 (= (base-drive city-loc-21 city-loc-17) 28)
 (= (base-drive city-loc-17 city-loc-21) 28)
 (= (base-drive city-loc-22 city-loc-11) 25)
 (= (base-drive city-loc-11 city-loc-22) 25)
 (= (base-drive city-loc-22 city-loc-16) 14)
 (= (base-drive city-loc-16 city-loc-22) 14)
 (= (base-drive city-loc-22 city-loc-17) 27)
 (= (base-drive city-loc-17 city-loc-22) 27)
 (= (base-drive city-loc-23 city-loc-19) 13)
 (= (base-drive city-loc-19 city-loc-23) 13)
 (= (base-drive city-loc-24 city-loc-1) 14)
 (= (base-drive city-loc-1 city-loc-24) 14)
 (= (base-drive city-loc-24 city-loc-3) 26)
 (= (base-drive city-loc-3 city-loc-24) 26)
 (= (base-drive city-loc-24 city-loc-7) 27)
 (= (base-drive city-loc-7 city-loc-24) 27)
 (= (base-drive city-loc-24 city-loc-12) 21)
 (= (base-drive city-loc-12 city-loc-24) 21)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 4646)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 3115)
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 1877)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 9431)
  (= (cost-drive city-loc-5 city-loc-4 truck-1) 9723)
  (= (cost-drive city-loc-4 city-loc-5 truck-1) 4502)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 1197)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 4437)
  (= (cost-drive city-loc-7 city-loc-1 truck-1) 6178)
  (= (cost-drive city-loc-1 city-loc-7 truck-1) 5620)
  (= (cost-drive city-loc-7 city-loc-3 truck-1) 6305)
  (= (cost-drive city-loc-3 city-loc-7 truck-1) 6036)
  (= (cost-drive city-loc-9 city-loc-6 truck-1) 5692)
  (= (cost-drive city-loc-6 city-loc-9 truck-1) 9844)
  (= (cost-drive city-loc-10 city-loc-3 truck-1) 1120)
  (= (cost-drive city-loc-3 city-loc-10 truck-1) 2353)
  (= (cost-drive city-loc-10 city-loc-7 truck-1) 1996)
  (= (cost-drive city-loc-7 city-loc-10 truck-1) 9033)
  (= (cost-drive city-loc-10 city-loc-8 truck-1) 9052)
  (= (cost-drive city-loc-8 city-loc-10 truck-1) 4791)
  (= (cost-drive city-loc-11 city-loc-9 truck-1) 9929)
  (= (cost-drive city-loc-9 city-loc-11 truck-1) 4725)
  (= (cost-drive city-loc-12 city-loc-3 truck-1) 9470)
  (= (cost-drive city-loc-3 city-loc-12 truck-1) 2804)
  (= (cost-drive city-loc-13 city-loc-11 truck-1) 8605)
  (= (cost-drive city-loc-11 city-loc-13 truck-1) 7065)
  (= (cost-drive city-loc-14 city-loc-4 truck-1) 8372)
  (= (cost-drive city-loc-4 city-loc-14 truck-1) 3415)
  (= (cost-drive city-loc-14 city-loc-5 truck-1) 9666)
  (= (cost-drive city-loc-5 city-loc-14 truck-1) 2178)
  (= (cost-drive city-loc-14 city-loc-8 truck-1) 7058)
  (= (cost-drive city-loc-8 city-loc-14 truck-1) 9728)
  (= (cost-drive city-loc-15 city-loc-9 truck-1) 6724)
  (= (cost-drive city-loc-9 city-loc-15 truck-1) 9262)
  (= (cost-drive city-loc-15 city-loc-11 truck-1) 8384)
  (= (cost-drive city-loc-11 city-loc-15 truck-1) 6985)
  (= (cost-drive city-loc-15 city-loc-13 truck-1) 8780)
  (= (cost-drive city-loc-13 city-loc-15 truck-1) 3619)
  (= (cost-drive city-loc-16 city-loc-11 truck-1) 8947)
  (= (cost-drive city-loc-11 city-loc-16 truck-1) 1009)
  (= (cost-drive city-loc-16 city-loc-13 truck-1) 3691)
  (= (cost-drive city-loc-13 city-loc-16 truck-1) 3886)
  (= (cost-drive city-loc-16 city-loc-15 truck-1) 5917)
  (= (cost-drive city-loc-15 city-loc-16 truck-1) 4857)
  (= (cost-drive city-loc-17 city-loc-8 truck-1) 4364)
  (= (cost-drive city-loc-8 city-loc-17 truck-1) 4017)
  (= (cost-drive city-loc-17 city-loc-10 truck-1) 4309)
  (= (cost-drive city-loc-10 city-loc-17 truck-1) 5074)
  (= (cost-drive city-loc-17 city-loc-11 truck-1) 3285)
  (= (cost-drive city-loc-11 city-loc-17 truck-1) 1415)
  (= (cost-drive city-loc-17 city-loc-15 truck-1) 5681)
  (= (cost-drive city-loc-15 city-loc-17 truck-1) 9161)
  (= (cost-drive city-loc-18 city-loc-9 truck-1) 8348)
  (= (cost-drive city-loc-9 city-loc-18 truck-1) 8298)
  (= (cost-drive city-loc-18 city-loc-13 truck-1) 1175)
  (= (cost-drive city-loc-13 city-loc-18 truck-1) 9185)
  (= (cost-drive city-loc-19 city-loc-12 truck-1) 5589)
  (= (cost-drive city-loc-12 city-loc-19 truck-1) 3574)
  (= (cost-drive city-loc-20 city-loc-2 truck-1) 5748)
  (= (cost-drive city-loc-2 city-loc-20 truck-1) 5702)
  (= (cost-drive city-loc-21 city-loc-6 truck-1) 8022)
  (= (cost-drive city-loc-6 city-loc-21 truck-1) 2771)
  (= (cost-drive city-loc-21 city-loc-9 truck-1) 3663)
  (= (cost-drive city-loc-9 city-loc-21 truck-1) 9306)
  (= (cost-drive city-loc-21 city-loc-10 truck-1) 1020)
  (= (cost-drive city-loc-10 city-loc-21 truck-1) 5645)
  (= (cost-drive city-loc-21 city-loc-15 truck-1) 1069)
  (= (cost-drive city-loc-15 city-loc-21 truck-1) 9825)
  (= (cost-drive city-loc-21 city-loc-17 truck-1) 1257)
  (= (cost-drive city-loc-17 city-loc-21 truck-1) 5796)
  (= (cost-drive city-loc-22 city-loc-11 truck-1) 7319)
  (= (cost-drive city-loc-11 city-loc-22 truck-1) 6672)
  (= (cost-drive city-loc-22 city-loc-16 truck-1) 4034)
  (= (cost-drive city-loc-16 city-loc-22 truck-1) 7505)
  (= (cost-drive city-loc-22 city-loc-17 truck-1) 9832)
  (= (cost-drive city-loc-17 city-loc-22 truck-1) 9508)
  (= (cost-drive city-loc-23 city-loc-19 truck-1) 7426)
  (= (cost-drive city-loc-19 city-loc-23 truck-1) 9181)
  (= (cost-drive city-loc-24 city-loc-1 truck-1) 4875)
  (= (cost-drive city-loc-1 city-loc-24 truck-1) 3426)
  (= (cost-drive city-loc-24 city-loc-3 truck-1) 4273)
  (= (cost-drive city-loc-3 city-loc-24 truck-1) 2860)
  (= (cost-drive city-loc-24 city-loc-7 truck-1) 5628)
  (= (cost-drive city-loc-7 city-loc-24 truck-1) 1914)
  (= (cost-drive city-loc-24 city-loc-12 truck-1) 5446)
  (= (cost-drive city-loc-12 city-loc-24 truck-1) 1790)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 5351)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 7907)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 9617)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 4424)
  (= (cost-drive city-loc-5 city-loc-4 truck-2) 4981)
  (= (cost-drive city-loc-4 city-loc-5 truck-2) 3884)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 8949)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 5386)
  (= (cost-drive city-loc-7 city-loc-1 truck-2) 8679)
  (= (cost-drive city-loc-1 city-loc-7 truck-2) 4891)
  (= (cost-drive city-loc-7 city-loc-3 truck-2) 5365)
  (= (cost-drive city-loc-3 city-loc-7 truck-2) 9256)
  (= (cost-drive city-loc-9 city-loc-6 truck-2) 6435)
  (= (cost-drive city-loc-6 city-loc-9 truck-2) 2830)
  (= (cost-drive city-loc-10 city-loc-3 truck-2) 8415)
  (= (cost-drive city-loc-3 city-loc-10 truck-2) 8323)
  (= (cost-drive city-loc-10 city-loc-7 truck-2) 5163)
  (= (cost-drive city-loc-7 city-loc-10 truck-2) 7847)
  (= (cost-drive city-loc-10 city-loc-8 truck-2) 5489)
  (= (cost-drive city-loc-8 city-loc-10 truck-2) 4170)
  (= (cost-drive city-loc-11 city-loc-9 truck-2) 9631)
  (= (cost-drive city-loc-9 city-loc-11 truck-2) 2663)
  (= (cost-drive city-loc-12 city-loc-3 truck-2) 2953)
  (= (cost-drive city-loc-3 city-loc-12 truck-2) 3289)
  (= (cost-drive city-loc-13 city-loc-11 truck-2) 2756)
  (= (cost-drive city-loc-11 city-loc-13 truck-2) 6440)
  (= (cost-drive city-loc-14 city-loc-4 truck-2) 3652)
  (= (cost-drive city-loc-4 city-loc-14 truck-2) 7055)
  (= (cost-drive city-loc-14 city-loc-5 truck-2) 3710)
  (= (cost-drive city-loc-5 city-loc-14 truck-2) 8559)
  (= (cost-drive city-loc-14 city-loc-8 truck-2) 6866)
  (= (cost-drive city-loc-8 city-loc-14 truck-2) 6871)
  (= (cost-drive city-loc-15 city-loc-9 truck-2) 2962)
  (= (cost-drive city-loc-9 city-loc-15 truck-2) 4191)
  (= (cost-drive city-loc-15 city-loc-11 truck-2) 9179)
  (= (cost-drive city-loc-11 city-loc-15 truck-2) 3727)
  (= (cost-drive city-loc-15 city-loc-13 truck-2) 4080)
  (= (cost-drive city-loc-13 city-loc-15 truck-2) 3442)
  (= (cost-drive city-loc-16 city-loc-11 truck-2) 5504)
  (= (cost-drive city-loc-11 city-loc-16 truck-2) 2998)
  (= (cost-drive city-loc-16 city-loc-13 truck-2) 7078)
  (= (cost-drive city-loc-13 city-loc-16 truck-2) 6159)
  (= (cost-drive city-loc-16 city-loc-15 truck-2) 2596)
  (= (cost-drive city-loc-15 city-loc-16 truck-2) 7912)
  (= (cost-drive city-loc-17 city-loc-8 truck-2) 3429)
  (= (cost-drive city-loc-8 city-loc-17 truck-2) 6861)
  (= (cost-drive city-loc-17 city-loc-10 truck-2) 4694)
  (= (cost-drive city-loc-10 city-loc-17 truck-2) 8778)
  (= (cost-drive city-loc-17 city-loc-11 truck-2) 5153)
  (= (cost-drive city-loc-11 city-loc-17 truck-2) 5493)
  (= (cost-drive city-loc-17 city-loc-15 truck-2) 5074)
  (= (cost-drive city-loc-15 city-loc-17 truck-2) 6469)
  (= (cost-drive city-loc-18 city-loc-9 truck-2) 7843)
  (= (cost-drive city-loc-9 city-loc-18 truck-2) 8419)
  (= (cost-drive city-loc-18 city-loc-13 truck-2) 1512)
  (= (cost-drive city-loc-13 city-loc-18 truck-2) 6190)
  (= (cost-drive city-loc-19 city-loc-12 truck-2) 2789)
  (= (cost-drive city-loc-12 city-loc-19 truck-2) 1995)
  (= (cost-drive city-loc-20 city-loc-2 truck-2) 8794)
  (= (cost-drive city-loc-2 city-loc-20 truck-2) 5444)
  (= (cost-drive city-loc-21 city-loc-6 truck-2) 2044)
  (= (cost-drive city-loc-6 city-loc-21 truck-2) 9030)
  (= (cost-drive city-loc-21 city-loc-9 truck-2) 7146)
  (= (cost-drive city-loc-9 city-loc-21 truck-2) 5913)
  (= (cost-drive city-loc-21 city-loc-10 truck-2) 2007)
  (= (cost-drive city-loc-10 city-loc-21 truck-2) 6832)
  (= (cost-drive city-loc-21 city-loc-15 truck-2) 1612)
  (= (cost-drive city-loc-15 city-loc-21 truck-2) 1712)
  (= (cost-drive city-loc-21 city-loc-17 truck-2) 5924)
  (= (cost-drive city-loc-17 city-loc-21 truck-2) 5436)
  (= (cost-drive city-loc-22 city-loc-11 truck-2) 9306)
  (= (cost-drive city-loc-11 city-loc-22 truck-2) 9959)
  (= (cost-drive city-loc-22 city-loc-16 truck-2) 8583)
  (= (cost-drive city-loc-16 city-loc-22 truck-2) 6595)
  (= (cost-drive city-loc-22 city-loc-17 truck-2) 8431)
  (= (cost-drive city-loc-17 city-loc-22 truck-2) 8706)
  (= (cost-drive city-loc-23 city-loc-19 truck-2) 1834)
  (= (cost-drive city-loc-19 city-loc-23 truck-2) 1299)
  (= (cost-drive city-loc-24 city-loc-1 truck-2) 2441)
  (= (cost-drive city-loc-1 city-loc-24 truck-2) 5332)
  (= (cost-drive city-loc-24 city-loc-3 truck-2) 1612)
  (= (cost-drive city-loc-3 city-loc-24 truck-2) 1996)
  (= (cost-drive city-loc-24 city-loc-7 truck-2) 6775)
  (= (cost-drive city-loc-7 city-loc-24 truck-2) 5271)
  (= (cost-drive city-loc-24 city-loc-12 truck-2) 6437)
  (= (cost-drive city-loc-12 city-loc-24 truck-2) 4805)
  (= (cost-drive city-loc-3 city-loc-1 truck-3) 2550)
  (= (cost-drive city-loc-1 city-loc-3 truck-3) 2845)
  (= (cost-drive city-loc-4 city-loc-1 truck-3) 7130)
  (= (cost-drive city-loc-1 city-loc-4 truck-3) 2447)
  (= (cost-drive city-loc-5 city-loc-4 truck-3) 1704)
  (= (cost-drive city-loc-4 city-loc-5 truck-3) 2667)
  (= (cost-drive city-loc-6 city-loc-2 truck-3) 4574)
  (= (cost-drive city-loc-2 city-loc-6 truck-3) 2331)
  (= (cost-drive city-loc-7 city-loc-1 truck-3) 1008)
  (= (cost-drive city-loc-1 city-loc-7 truck-3) 6162)
  (= (cost-drive city-loc-7 city-loc-3 truck-3) 3210)
  (= (cost-drive city-loc-3 city-loc-7 truck-3) 2788)
  (= (cost-drive city-loc-9 city-loc-6 truck-3) 8640)
  (= (cost-drive city-loc-6 city-loc-9 truck-3) 2777)
  (= (cost-drive city-loc-10 city-loc-3 truck-3) 8149)
  (= (cost-drive city-loc-3 city-loc-10 truck-3) 3934)
  (= (cost-drive city-loc-10 city-loc-7 truck-3) 5915)
  (= (cost-drive city-loc-7 city-loc-10 truck-3) 5786)
  (= (cost-drive city-loc-10 city-loc-8 truck-3) 8371)
  (= (cost-drive city-loc-8 city-loc-10 truck-3) 5923)
  (= (cost-drive city-loc-11 city-loc-9 truck-3) 5537)
  (= (cost-drive city-loc-9 city-loc-11 truck-3) 7005)
  (= (cost-drive city-loc-12 city-loc-3 truck-3) 2951)
  (= (cost-drive city-loc-3 city-loc-12 truck-3) 5540)
  (= (cost-drive city-loc-13 city-loc-11 truck-3) 1937)
  (= (cost-drive city-loc-11 city-loc-13 truck-3) 6709)
  (= (cost-drive city-loc-14 city-loc-4 truck-3) 3357)
  (= (cost-drive city-loc-4 city-loc-14 truck-3) 3045)
  (= (cost-drive city-loc-14 city-loc-5 truck-3) 8832)
  (= (cost-drive city-loc-5 city-loc-14 truck-3) 1048)
  (= (cost-drive city-loc-14 city-loc-8 truck-3) 6860)
  (= (cost-drive city-loc-8 city-loc-14 truck-3) 5467)
  (= (cost-drive city-loc-15 city-loc-9 truck-3) 5760)
  (= (cost-drive city-loc-9 city-loc-15 truck-3) 6519)
  (= (cost-drive city-loc-15 city-loc-11 truck-3) 6688)
  (= (cost-drive city-loc-11 city-loc-15 truck-3) 7508)
  (= (cost-drive city-loc-15 city-loc-13 truck-3) 4928)
  (= (cost-drive city-loc-13 city-loc-15 truck-3) 2708)
  (= (cost-drive city-loc-16 city-loc-11 truck-3) 8615)
  (= (cost-drive city-loc-11 city-loc-16 truck-3) 1321)
  (= (cost-drive city-loc-16 city-loc-13 truck-3) 2604)
  (= (cost-drive city-loc-13 city-loc-16 truck-3) 2095)
  (= (cost-drive city-loc-16 city-loc-15 truck-3) 8497)
  (= (cost-drive city-loc-15 city-loc-16 truck-3) 4533)
  (= (cost-drive city-loc-17 city-loc-8 truck-3) 3012)
  (= (cost-drive city-loc-8 city-loc-17 truck-3) 4506)
  (= (cost-drive city-loc-17 city-loc-10 truck-3) 2071)
  (= (cost-drive city-loc-10 city-loc-17 truck-3) 7202)
  (= (cost-drive city-loc-17 city-loc-11 truck-3) 2205)
  (= (cost-drive city-loc-11 city-loc-17 truck-3) 7931)
  (= (cost-drive city-loc-17 city-loc-15 truck-3) 7563)
  (= (cost-drive city-loc-15 city-loc-17 truck-3) 2803)
  (= (cost-drive city-loc-18 city-loc-9 truck-3) 9474)
  (= (cost-drive city-loc-9 city-loc-18 truck-3) 7437)
  (= (cost-drive city-loc-18 city-loc-13 truck-3) 7044)
  (= (cost-drive city-loc-13 city-loc-18 truck-3) 1423)
  (= (cost-drive city-loc-19 city-loc-12 truck-3) 2512)
  (= (cost-drive city-loc-12 city-loc-19 truck-3) 5565)
  (= (cost-drive city-loc-20 city-loc-2 truck-3) 8124)
  (= (cost-drive city-loc-2 city-loc-20 truck-3) 9659)
  (= (cost-drive city-loc-21 city-loc-6 truck-3) 5073)
  (= (cost-drive city-loc-6 city-loc-21 truck-3) 6643)
  (= (cost-drive city-loc-21 city-loc-9 truck-3) 5586)
  (= (cost-drive city-loc-9 city-loc-21 truck-3) 4994)
  (= (cost-drive city-loc-21 city-loc-10 truck-3) 7360)
  (= (cost-drive city-loc-10 city-loc-21 truck-3) 3392)
  (= (cost-drive city-loc-21 city-loc-15 truck-3) 2525)
  (= (cost-drive city-loc-15 city-loc-21 truck-3) 1250)
  (= (cost-drive city-loc-21 city-loc-17 truck-3) 1822)
  (= (cost-drive city-loc-17 city-loc-21 truck-3) 5154)
  (= (cost-drive city-loc-22 city-loc-11 truck-3) 9619)
  (= (cost-drive city-loc-11 city-loc-22 truck-3) 2252)
  (= (cost-drive city-loc-22 city-loc-16 truck-3) 1709)
  (= (cost-drive city-loc-16 city-loc-22 truck-3) 3145)
  (= (cost-drive city-loc-22 city-loc-17 truck-3) 9753)
  (= (cost-drive city-loc-17 city-loc-22 truck-3) 6077)
  (= (cost-drive city-loc-23 city-loc-19 truck-3) 8820)
  (= (cost-drive city-loc-19 city-loc-23 truck-3) 1732)
  (= (cost-drive city-loc-24 city-loc-1 truck-3) 6091)
  (= (cost-drive city-loc-1 city-loc-24 truck-3) 4955)
  (= (cost-drive city-loc-24 city-loc-3 truck-3) 7089)
  (= (cost-drive city-loc-3 city-loc-24 truck-3) 4581)
  (= (cost-drive city-loc-24 city-loc-7 truck-3) 5503)
  (= (cost-drive city-loc-7 city-loc-24 truck-3) 5186)
  (= (cost-drive city-loc-24 city-loc-12 truck-3) 3386)
  (= (cost-drive city-loc-12 city-loc-24 truck-3) 7862)
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
  ; 174,643 -> 273,425
  (road city-loc-11 city-loc-9)
  ; 273,425 -> 174,643
  (road city-loc-9 city-loc-11)
  ; 930,259 -> 748,385
  (road city-loc-12 city-loc-3)
  ; 748,385 -> 930,259
  (road city-loc-3 city-loc-12)
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
  ; 36,368 -> 273,425
  (road city-loc-18 city-loc-9)
  ; 273,425 -> 36,368
  (road city-loc-9 city-loc-18)
  ; 36,368 -> 55,605
  (road city-loc-18 city-loc-13)
  ; 55,605 -> 36,368
  (road city-loc-13 city-loc-18)
  ; 806,18 -> 930,259
  (road city-loc-19 city-loc-12)
  ; 930,259 -> 806,18
  (road city-loc-12 city-loc-19)
  ; 138,109 -> 384,50
  (road city-loc-20 city-loc-2)
  ; 384,50 -> 138,109
  (road city-loc-2 city-loc-20)
  ; 392,433 -> 456,221
  (road city-loc-21 city-loc-6)
  ; 456,221 -> 392,433
  (road city-loc-6 city-loc-21)
  ; 392,433 -> 273,425
  (road city-loc-21 city-loc-9)
  ; 273,425 -> 392,433
  (road city-loc-9 city-loc-21)
  ; 392,433 -> 566,552
  (road city-loc-21 city-loc-10)
  ; 566,552 -> 392,433
  (road city-loc-10 city-loc-21)
  ; 392,433 -> 263,567
  (road city-loc-21 city-loc-15)
  ; 263,567 -> 392,433
  (road city-loc-15 city-loc-21)
  ; 392,433 -> 426,706
  (road city-loc-21 city-loc-17)
  ; 426,706 -> 392,433
  (road city-loc-17 city-loc-21)
  ; 231,881 -> 174,643
  (road city-loc-22 city-loc-11)
  ; 174,643 -> 231,881
  (road city-loc-11 city-loc-22)
  ; 231,881 -> 128,791
  (road city-loc-22 city-loc-16)
  ; 128,791 -> 231,881
  (road city-loc-16 city-loc-22)
  ; 231,881 -> 426,706
  (road city-loc-22 city-loc-17)
  ; 426,706 -> 231,881
  (road city-loc-17 city-loc-22)
  ; 682,8 -> 806,18
  (road city-loc-23 city-loc-19)
  ; 806,18 -> 682,8
  (road city-loc-19 city-loc-23)
  ; 989,457 -> 890,543
  (road city-loc-24 city-loc-1)
  ; 890,543 -> 989,457
  (road city-loc-1 city-loc-24)
  ; 989,457 -> 748,385
  (road city-loc-24 city-loc-3)
  ; 748,385 -> 989,457
  (road city-loc-3 city-loc-24)
  ; 989,457 -> 742,542
  (road city-loc-24 city-loc-7)
  ; 742,542 -> 989,457
  (road city-loc-7 city-loc-24)
  ; 989,457 -> 930,259
  (road city-loc-24 city-loc-12)
  ; 930,259 -> 989,457
  (road city-loc-12 city-loc-24)
  (at package-1 city-loc-2)
  (at package-2 city-loc-19)
  (at package-3 city-loc-24)
  (at package-4 city-loc-5)
  (at package-5 city-loc-15)
  (at package-6 city-loc-19)
  (at package-7 city-loc-2)
  (at package-8 city-loc-4)
  (at package-9 city-loc-9)
  (at truck-1 city-loc-18)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-16)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-12)
  (at package-2 city-loc-7)
  (at package-3 city-loc-1)
  (at package-4 city-loc-6)
  (at package-5 city-loc-9)
  (at package-6 city-loc-14)
  (at package-7 city-loc-14)
  (at package-8 city-loc-9)
  (at package-9 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
