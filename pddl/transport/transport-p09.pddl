; Transport city-sequential-27nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed

(define (problem transport-city-sequential-27nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed)
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
  city-loc-25 - location
  city-loc-26 - location
  city-loc-27 - location
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
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-loc-4 city-loc-2) 17)
 (= (base-drive city-loc-2 city-loc-4) 17)
 (= (base-drive city-loc-7 city-loc-5) 13)
 (= (base-drive city-loc-5 city-loc-7) 13)
 (= (base-drive city-loc-8 city-loc-2) 16)
 (= (base-drive city-loc-2 city-loc-8) 16)
 (= (base-drive city-loc-8 city-loc-5) 26)
 (= (base-drive city-loc-5 city-loc-8) 26)
 (= (base-drive city-loc-8 city-loc-7) 18)
 (= (base-drive city-loc-7 city-loc-8) 18)
 (= (base-drive city-loc-9 city-loc-2) 19)
 (= (base-drive city-loc-2 city-loc-9) 19)
 (= (base-drive city-loc-9 city-loc-4) 21)
 (= (base-drive city-loc-4 city-loc-9) 21)
 (= (base-drive city-loc-9 city-loc-5) 26)
 (= (base-drive city-loc-5 city-loc-9) 26)
 (= (base-drive city-loc-9 city-loc-8) 21)
 (= (base-drive city-loc-8 city-loc-9) 21)
 (= (base-drive city-loc-10 city-loc-4) 26)
 (= (base-drive city-loc-4 city-loc-10) 26)
 (= (base-drive city-loc-11 city-loc-9) 17)
 (= (base-drive city-loc-9 city-loc-11) 17)
 (= (base-drive city-loc-12 city-loc-4) 17)
 (= (base-drive city-loc-4 city-loc-12) 17)
 (= (base-drive city-loc-12 city-loc-10) 13)
 (= (base-drive city-loc-10 city-loc-12) 13)
 (= (base-drive city-loc-13 city-loc-11) 26)
 (= (base-drive city-loc-11 city-loc-13) 26)
 (= (base-drive city-loc-13 city-loc-12) 21)
 (= (base-drive city-loc-12 city-loc-13) 21)
 (= (base-drive city-loc-14 city-loc-2) 24)
 (= (base-drive city-loc-2 city-loc-14) 24)
 (= (base-drive city-loc-14 city-loc-3) 22)
 (= (base-drive city-loc-3 city-loc-14) 22)
 (= (base-drive city-loc-14 city-loc-4) 13)
 (= (base-drive city-loc-4 city-loc-14) 13)
 (= (base-drive city-loc-14 city-loc-10) 19)
 (= (base-drive city-loc-10 city-loc-14) 19)
 (= (base-drive city-loc-14 city-loc-12) 17)
 (= (base-drive city-loc-12 city-loc-14) 17)
 (= (base-drive city-loc-15 city-loc-3) 13)
 (= (base-drive city-loc-3 city-loc-15) 13)
 (= (base-drive city-loc-16 city-loc-5) 16)
 (= (base-drive city-loc-5 city-loc-16) 16)
 (= (base-drive city-loc-16 city-loc-9) 25)
 (= (base-drive city-loc-9 city-loc-16) 25)
 (= (base-drive city-loc-16 city-loc-11) 19)
 (= (base-drive city-loc-11 city-loc-16) 19)
 (= (base-drive city-loc-18 city-loc-7) 20)
 (= (base-drive city-loc-7 city-loc-18) 20)
 (= (base-drive city-loc-18 city-loc-8) 24)
 (= (base-drive city-loc-8 city-loc-18) 24)
 (= (base-drive city-loc-18 city-loc-17) 13)
 (= (base-drive city-loc-17 city-loc-18) 13)
 (= (base-drive city-loc-19 city-loc-6) 24)
 (= (base-drive city-loc-6 city-loc-19) 24)
 (= (base-drive city-loc-20 city-loc-17) 16)
 (= (base-drive city-loc-17 city-loc-20) 16)
 (= (base-drive city-loc-20 city-loc-18) 26)
 (= (base-drive city-loc-18 city-loc-20) 26)
 (= (base-drive city-loc-21 city-loc-3) 18)
 (= (base-drive city-loc-3 city-loc-21) 18)
 (= (base-drive city-loc-21 city-loc-10) 15)
 (= (base-drive city-loc-10 city-loc-21) 15)
 (= (base-drive city-loc-21 city-loc-12) 26)
 (= (base-drive city-loc-12 city-loc-21) 26)
 (= (base-drive city-loc-21 city-loc-14) 20)
 (= (base-drive city-loc-14 city-loc-21) 20)
 (= (base-drive city-loc-22 city-loc-3) 16)
 (= (base-drive city-loc-3 city-loc-22) 16)
 (= (base-drive city-loc-22 city-loc-6) 18)
 (= (base-drive city-loc-6 city-loc-22) 18)
 (= (base-drive city-loc-22 city-loc-15) 18)
 (= (base-drive city-loc-15 city-loc-22) 18)
 (= (base-drive city-loc-23 city-loc-2) 21)
 (= (base-drive city-loc-2 city-loc-23) 21)
 (= (base-drive city-loc-23 city-loc-3) 20)
 (= (base-drive city-loc-3 city-loc-23) 20)
 (= (base-drive city-loc-23 city-loc-4) 26)
 (= (base-drive city-loc-4 city-loc-23) 26)
 (= (base-drive city-loc-23 city-loc-14) 22)
 (= (base-drive city-loc-14 city-loc-23) 22)
 (= (base-drive city-loc-23 city-loc-15) 15)
 (= (base-drive city-loc-15 city-loc-23) 15)
 (= (base-drive city-loc-24 city-loc-6) 14)
 (= (base-drive city-loc-6 city-loc-24) 14)
 (= (base-drive city-loc-24 city-loc-19) 16)
 (= (base-drive city-loc-19 city-loc-24) 16)
 (= (base-drive city-loc-25 city-loc-11) 12)
 (= (base-drive city-loc-11 city-loc-25) 12)
 (= (base-drive city-loc-25 city-loc-16) 15)
 (= (base-drive city-loc-16 city-loc-25) 15)
 (= (base-drive city-loc-26 city-loc-3) 26)
 (= (base-drive city-loc-3 city-loc-26) 26)
 (= (base-drive city-loc-26 city-loc-6) 11)
 (= (base-drive city-loc-6 city-loc-26) 11)
 (= (base-drive city-loc-26 city-loc-15) 21)
 (= (base-drive city-loc-15 city-loc-26) 21)
 (= (base-drive city-loc-26 city-loc-19) 20)
 (= (base-drive city-loc-19 city-loc-26) 20)
 (= (base-drive city-loc-26 city-loc-22) 13)
 (= (base-drive city-loc-22 city-loc-26) 13)
 (= (base-drive city-loc-26 city-loc-24) 19)
 (= (base-drive city-loc-24 city-loc-26) 19)
 (= (base-drive city-loc-27 city-loc-1) 15)
 (= (base-drive city-loc-1 city-loc-27) 15)
 (= (base-drive city-loc-27 city-loc-15) 22)
 (= (base-drive city-loc-15 city-loc-27) 22)
 (= (base-drive city-loc-27 city-loc-23) 15)
 (= (base-drive city-loc-23 city-loc-27) 15)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-4 city-loc-2 truck-1) 2709)
  (= (cost-drive city-loc-2 city-loc-4 truck-1) 6248)
  (= (cost-drive city-loc-7 city-loc-5 truck-1) 8311)
  (= (cost-drive city-loc-5 city-loc-7 truck-1) 7804)
  (= (cost-drive city-loc-8 city-loc-2 truck-1) 7586)
  (= (cost-drive city-loc-2 city-loc-8 truck-1) 4160)
  (= (cost-drive city-loc-8 city-loc-5 truck-1) 4202)
  (= (cost-drive city-loc-5 city-loc-8 truck-1) 3909)
  (= (cost-drive city-loc-8 city-loc-7 truck-1) 8277)
  (= (cost-drive city-loc-7 city-loc-8 truck-1) 5424)
  (= (cost-drive city-loc-9 city-loc-2 truck-1) 7693)
  (= (cost-drive city-loc-2 city-loc-9 truck-1) 1996)
  (= (cost-drive city-loc-9 city-loc-4 truck-1) 4466)
  (= (cost-drive city-loc-4 city-loc-9 truck-1) 6442)
  (= (cost-drive city-loc-9 city-loc-5 truck-1) 8134)
  (= (cost-drive city-loc-5 city-loc-9 truck-1) 9035)
  (= (cost-drive city-loc-9 city-loc-8 truck-1) 2074)
  (= (cost-drive city-loc-8 city-loc-9 truck-1) 3707)
  (= (cost-drive city-loc-10 city-loc-4 truck-1) 1723)
  (= (cost-drive city-loc-4 city-loc-10 truck-1) 6884)
  (= (cost-drive city-loc-11 city-loc-9 truck-1) 2722)
  (= (cost-drive city-loc-9 city-loc-11 truck-1) 4353)
  (= (cost-drive city-loc-12 city-loc-4 truck-1) 6353)
  (= (cost-drive city-loc-4 city-loc-12 truck-1) 4681)
  (= (cost-drive city-loc-12 city-loc-10 truck-1) 1346)
  (= (cost-drive city-loc-10 city-loc-12 truck-1) 8539)
  (= (cost-drive city-loc-13 city-loc-11 truck-1) 6986)
  (= (cost-drive city-loc-11 city-loc-13 truck-1) 6431)
  (= (cost-drive city-loc-13 city-loc-12 truck-1) 3812)
  (= (cost-drive city-loc-12 city-loc-13 truck-1) 1129)
  (= (cost-drive city-loc-14 city-loc-2 truck-1) 2844)
  (= (cost-drive city-loc-2 city-loc-14 truck-1) 5123)
  (= (cost-drive city-loc-14 city-loc-3 truck-1) 2919)
  (= (cost-drive city-loc-3 city-loc-14 truck-1) 5140)
  (= (cost-drive city-loc-14 city-loc-4 truck-1) 8056)
  (= (cost-drive city-loc-4 city-loc-14 truck-1) 8162)
  (= (cost-drive city-loc-14 city-loc-10 truck-1) 9473)
  (= (cost-drive city-loc-10 city-loc-14 truck-1) 7039)
  (= (cost-drive city-loc-14 city-loc-12 truck-1) 6955)
  (= (cost-drive city-loc-12 city-loc-14 truck-1) 6558)
  (= (cost-drive city-loc-15 city-loc-3 truck-1) 4124)
  (= (cost-drive city-loc-3 city-loc-15 truck-1) 3797)
  (= (cost-drive city-loc-16 city-loc-5 truck-1) 8000)
  (= (cost-drive city-loc-5 city-loc-16 truck-1) 7029)
  (= (cost-drive city-loc-16 city-loc-9 truck-1) 4655)
  (= (cost-drive city-loc-9 city-loc-16 truck-1) 8035)
  (= (cost-drive city-loc-16 city-loc-11 truck-1) 3765)
  (= (cost-drive city-loc-11 city-loc-16 truck-1) 8416)
  (= (cost-drive city-loc-18 city-loc-7 truck-1) 2017)
  (= (cost-drive city-loc-7 city-loc-18 truck-1) 5337)
  (= (cost-drive city-loc-18 city-loc-8 truck-1) 6379)
  (= (cost-drive city-loc-8 city-loc-18 truck-1) 2976)
  (= (cost-drive city-loc-18 city-loc-17 truck-1) 7857)
  (= (cost-drive city-loc-17 city-loc-18 truck-1) 2692)
  (= (cost-drive city-loc-19 city-loc-6 truck-1) 3167)
  (= (cost-drive city-loc-6 city-loc-19 truck-1) 4531)
  (= (cost-drive city-loc-20 city-loc-17 truck-1) 7203)
  (= (cost-drive city-loc-17 city-loc-20 truck-1) 3515)
  (= (cost-drive city-loc-20 city-loc-18 truck-1) 1792)
  (= (cost-drive city-loc-18 city-loc-20 truck-1) 3969)
  (= (cost-drive city-loc-21 city-loc-3 truck-1) 6867)
  (= (cost-drive city-loc-3 city-loc-21 truck-1) 1257)
  (= (cost-drive city-loc-21 city-loc-10 truck-1) 1415)
  (= (cost-drive city-loc-10 city-loc-21 truck-1) 5761)
  (= (cost-drive city-loc-21 city-loc-12 truck-1) 3439)
  (= (cost-drive city-loc-12 city-loc-21 truck-1) 6167)
  (= (cost-drive city-loc-21 city-loc-14 truck-1) 6462)
  (= (cost-drive city-loc-14 city-loc-21 truck-1) 1152)
  (= (cost-drive city-loc-22 city-loc-3 truck-1) 6308)
  (= (cost-drive city-loc-3 city-loc-22 truck-1) 2607)
  (= (cost-drive city-loc-22 city-loc-6 truck-1) 7065)
  (= (cost-drive city-loc-6 city-loc-22 truck-1) 1062)
  (= (cost-drive city-loc-22 city-loc-15 truck-1) 7709)
  (= (cost-drive city-loc-15 city-loc-22 truck-1) 1366)
  (= (cost-drive city-loc-23 city-loc-2 truck-1) 1507)
  (= (cost-drive city-loc-2 city-loc-23 truck-1) 7438)
  (= (cost-drive city-loc-23 city-loc-3 truck-1) 4936)
  (= (cost-drive city-loc-3 city-loc-23 truck-1) 6252)
  (= (cost-drive city-loc-23 city-loc-4 truck-1) 7362)
  (= (cost-drive city-loc-4 city-loc-23 truck-1) 7937)
  (= (cost-drive city-loc-23 city-loc-14 truck-1) 5878)
  (= (cost-drive city-loc-14 city-loc-23 truck-1) 9905)
  (= (cost-drive city-loc-23 city-loc-15 truck-1) 4947)
  (= (cost-drive city-loc-15 city-loc-23 truck-1) 6728)
  (= (cost-drive city-loc-24 city-loc-6 truck-1) 2451)
  (= (cost-drive city-loc-6 city-loc-24 truck-1) 1230)
  (= (cost-drive city-loc-24 city-loc-19 truck-1) 7359)
  (= (cost-drive city-loc-19 city-loc-24 truck-1) 3600)
  (= (cost-drive city-loc-25 city-loc-11 truck-1) 4868)
  (= (cost-drive city-loc-11 city-loc-25 truck-1) 6253)
  (= (cost-drive city-loc-25 city-loc-16 truck-1) 3805)
  (= (cost-drive city-loc-16 city-loc-25 truck-1) 7750)
  (= (cost-drive city-loc-26 city-loc-3 truck-1) 3151)
  (= (cost-drive city-loc-3 city-loc-26 truck-1) 7321)
  (= (cost-drive city-loc-26 city-loc-6 truck-1) 9255)
  (= (cost-drive city-loc-6 city-loc-26 truck-1) 1212)
  (= (cost-drive city-loc-26 city-loc-15 truck-1) 4936)
  (= (cost-drive city-loc-15 city-loc-26 truck-1) 8285)
  (= (cost-drive city-loc-26 city-loc-19 truck-1) 3670)
  (= (cost-drive city-loc-19 city-loc-26 truck-1) 6072)
  (= (cost-drive city-loc-26 city-loc-22 truck-1) 5553)
  (= (cost-drive city-loc-22 city-loc-26 truck-1) 1970)
  (= (cost-drive city-loc-26 city-loc-24 truck-1) 9796)
  (= (cost-drive city-loc-24 city-loc-26 truck-1) 3765)
  (= (cost-drive city-loc-27 city-loc-1 truck-1) 6980)
  (= (cost-drive city-loc-1 city-loc-27 truck-1) 7471)
  (= (cost-drive city-loc-27 city-loc-15 truck-1) 4256)
  (= (cost-drive city-loc-15 city-loc-27 truck-1) 7718)
  (= (cost-drive city-loc-27 city-loc-23 truck-1) 8510)
  (= (cost-drive city-loc-23 city-loc-27 truck-1) 4815)
  (= (cost-drive city-loc-4 city-loc-2 truck-2) 7705)
  (= (cost-drive city-loc-2 city-loc-4 truck-2) 9694)
  (= (cost-drive city-loc-7 city-loc-5 truck-2) 4148)
  (= (cost-drive city-loc-5 city-loc-7 truck-2) 9941)
  (= (cost-drive city-loc-8 city-loc-2 truck-2) 3060)
  (= (cost-drive city-loc-2 city-loc-8 truck-2) 1498)
  (= (cost-drive city-loc-8 city-loc-5 truck-2) 1359)
  (= (cost-drive city-loc-5 city-loc-8 truck-2) 1054)
  (= (cost-drive city-loc-8 city-loc-7 truck-2) 9067)
  (= (cost-drive city-loc-7 city-loc-8 truck-2) 7509)
  (= (cost-drive city-loc-9 city-loc-2 truck-2) 2860)
  (= (cost-drive city-loc-2 city-loc-9 truck-2) 6522)
  (= (cost-drive city-loc-9 city-loc-4 truck-2) 3266)
  (= (cost-drive city-loc-4 city-loc-9 truck-2) 8471)
  (= (cost-drive city-loc-9 city-loc-5 truck-2) 6735)
  (= (cost-drive city-loc-5 city-loc-9 truck-2) 5965)
  (= (cost-drive city-loc-9 city-loc-8 truck-2) 6588)
  (= (cost-drive city-loc-8 city-loc-9 truck-2) 7626)
  (= (cost-drive city-loc-10 city-loc-4 truck-2) 2243)
  (= (cost-drive city-loc-4 city-loc-10 truck-2) 3380)
  (= (cost-drive city-loc-11 city-loc-9 truck-2) 5642)
  (= (cost-drive city-loc-9 city-loc-11 truck-2) 4136)
  (= (cost-drive city-loc-12 city-loc-4 truck-2) 2012)
  (= (cost-drive city-loc-4 city-loc-12 truck-2) 6617)
  (= (cost-drive city-loc-12 city-loc-10 truck-2) 3546)
  (= (cost-drive city-loc-10 city-loc-12 truck-2) 2283)
  (= (cost-drive city-loc-13 city-loc-11 truck-2) 2045)
  (= (cost-drive city-loc-11 city-loc-13 truck-2) 2430)
  (= (cost-drive city-loc-13 city-loc-12 truck-2) 5356)
  (= (cost-drive city-loc-12 city-loc-13 truck-2) 9224)
  (= (cost-drive city-loc-14 city-loc-2 truck-2) 6371)
  (= (cost-drive city-loc-2 city-loc-14 truck-2) 4317)
  (= (cost-drive city-loc-14 city-loc-3 truck-2) 1331)
  (= (cost-drive city-loc-3 city-loc-14 truck-2) 4384)
  (= (cost-drive city-loc-14 city-loc-4 truck-2) 8219)
  (= (cost-drive city-loc-4 city-loc-14 truck-2) 4413)
  (= (cost-drive city-loc-14 city-loc-10 truck-2) 8173)
  (= (cost-drive city-loc-10 city-loc-14 truck-2) 6470)
  (= (cost-drive city-loc-14 city-loc-12 truck-2) 9359)
  (= (cost-drive city-loc-12 city-loc-14 truck-2) 8026)
  (= (cost-drive city-loc-15 city-loc-3 truck-2) 1719)
  (= (cost-drive city-loc-3 city-loc-15 truck-2) 1339)
  (= (cost-drive city-loc-16 city-loc-5 truck-2) 3375)
  (= (cost-drive city-loc-5 city-loc-16 truck-2) 4792)
  (= (cost-drive city-loc-16 city-loc-9 truck-2) 8520)
  (= (cost-drive city-loc-9 city-loc-16 truck-2) 1761)
  (= (cost-drive city-loc-16 city-loc-11 truck-2) 2091)
  (= (cost-drive city-loc-11 city-loc-16 truck-2) 7466)
  (= (cost-drive city-loc-18 city-loc-7 truck-2) 4026)
  (= (cost-drive city-loc-7 city-loc-18 truck-2) 4800)
  (= (cost-drive city-loc-18 city-loc-8 truck-2) 2224)
  (= (cost-drive city-loc-8 city-loc-18 truck-2) 5626)
  (= (cost-drive city-loc-18 city-loc-17 truck-2) 7269)
  (= (cost-drive city-loc-17 city-loc-18 truck-2) 2888)
  (= (cost-drive city-loc-19 city-loc-6 truck-2) 1879)
  (= (cost-drive city-loc-6 city-loc-19 truck-2) 6262)
  (= (cost-drive city-loc-20 city-loc-17 truck-2) 2411)
  (= (cost-drive city-loc-17 city-loc-20 truck-2) 7401)
  (= (cost-drive city-loc-20 city-loc-18 truck-2) 5656)
  (= (cost-drive city-loc-18 city-loc-20 truck-2) 1035)
  (= (cost-drive city-loc-21 city-loc-3 truck-2) 4999)
  (= (cost-drive city-loc-3 city-loc-21 truck-2) 1500)
  (= (cost-drive city-loc-21 city-loc-10 truck-2) 6876)
  (= (cost-drive city-loc-10 city-loc-21 truck-2) 1652)
  (= (cost-drive city-loc-21 city-loc-12 truck-2) 3854)
  (= (cost-drive city-loc-12 city-loc-21 truck-2) 1111)
  (= (cost-drive city-loc-21 city-loc-14 truck-2) 1646)
  (= (cost-drive city-loc-14 city-loc-21 truck-2) 8166)
  (= (cost-drive city-loc-22 city-loc-3 truck-2) 9856)
  (= (cost-drive city-loc-3 city-loc-22 truck-2) 8627)
  (= (cost-drive city-loc-22 city-loc-6 truck-2) 3126)
  (= (cost-drive city-loc-6 city-loc-22 truck-2) 9285)
  (= (cost-drive city-loc-22 city-loc-15 truck-2) 9893)
  (= (cost-drive city-loc-15 city-loc-22 truck-2) 9784)
  (= (cost-drive city-loc-23 city-loc-2 truck-2) 1423)
  (= (cost-drive city-loc-2 city-loc-23 truck-2) 3974)
  (= (cost-drive city-loc-23 city-loc-3 truck-2) 6729)
  (= (cost-drive city-loc-3 city-loc-23 truck-2) 7070)
  (= (cost-drive city-loc-23 city-loc-4 truck-2) 7362)
  (= (cost-drive city-loc-4 city-loc-23 truck-2) 1902)
  (= (cost-drive city-loc-23 city-loc-14 truck-2) 4203)
  (= (cost-drive city-loc-14 city-loc-23 truck-2) 9096)
  (= (cost-drive city-loc-23 city-loc-15 truck-2) 9917)
  (= (cost-drive city-loc-15 city-loc-23 truck-2) 7689)
  (= (cost-drive city-loc-24 city-loc-6 truck-2) 1505)
  (= (cost-drive city-loc-6 city-loc-24 truck-2) 6978)
  (= (cost-drive city-loc-24 city-loc-19 truck-2) 8498)
  (= (cost-drive city-loc-19 city-loc-24 truck-2) 3616)
  (= (cost-drive city-loc-25 city-loc-11 truck-2) 8750)
  (= (cost-drive city-loc-11 city-loc-25 truck-2) 7160)
  (= (cost-drive city-loc-25 city-loc-16 truck-2) 1565)
  (= (cost-drive city-loc-16 city-loc-25 truck-2) 8753)
  (= (cost-drive city-loc-26 city-loc-3 truck-2) 3425)
  (= (cost-drive city-loc-3 city-loc-26 truck-2) 9283)
  (= (cost-drive city-loc-26 city-loc-6 truck-2) 5937)
  (= (cost-drive city-loc-6 city-loc-26 truck-2) 9350)
  (= (cost-drive city-loc-26 city-loc-15 truck-2) 1891)
  (= (cost-drive city-loc-15 city-loc-26 truck-2) 7002)
  (= (cost-drive city-loc-26 city-loc-19 truck-2) 3291)
  (= (cost-drive city-loc-19 city-loc-26 truck-2) 5258)
  (= (cost-drive city-loc-26 city-loc-22 truck-2) 8747)
  (= (cost-drive city-loc-22 city-loc-26 truck-2) 2234)
  (= (cost-drive city-loc-26 city-loc-24 truck-2) 4707)
  (= (cost-drive city-loc-24 city-loc-26 truck-2) 1022)
  (= (cost-drive city-loc-27 city-loc-1 truck-2) 7717)
  (= (cost-drive city-loc-1 city-loc-27 truck-2) 3812)
  (= (cost-drive city-loc-27 city-loc-15 truck-2) 4271)
  (= (cost-drive city-loc-15 city-loc-27 truck-2) 5011)
  (= (cost-drive city-loc-27 city-loc-23 truck-2) 5424)
  (= (cost-drive city-loc-23 city-loc-27 truck-2) 5713)
  (= (cost-drive city-loc-4 city-loc-2 truck-3) 9765)
  (= (cost-drive city-loc-2 city-loc-4 truck-3) 6946)
  (= (cost-drive city-loc-7 city-loc-5 truck-3) 8120)
  (= (cost-drive city-loc-5 city-loc-7 truck-3) 1484)
  (= (cost-drive city-loc-8 city-loc-2 truck-3) 9259)
  (= (cost-drive city-loc-2 city-loc-8 truck-3) 5902)
  (= (cost-drive city-loc-8 city-loc-5 truck-3) 1824)
  (= (cost-drive city-loc-5 city-loc-8 truck-3) 4381)
  (= (cost-drive city-loc-8 city-loc-7 truck-3) 7602)
  (= (cost-drive city-loc-7 city-loc-8 truck-3) 9821)
  (= (cost-drive city-loc-9 city-loc-2 truck-3) 4488)
  (= (cost-drive city-loc-2 city-loc-9 truck-3) 9003)
  (= (cost-drive city-loc-9 city-loc-4 truck-3) 5910)
  (= (cost-drive city-loc-4 city-loc-9 truck-3) 2132)
  (= (cost-drive city-loc-9 city-loc-5 truck-3) 6785)
  (= (cost-drive city-loc-5 city-loc-9 truck-3) 2849)
  (= (cost-drive city-loc-9 city-loc-8 truck-3) 5847)
  (= (cost-drive city-loc-8 city-loc-9 truck-3) 5364)
  (= (cost-drive city-loc-10 city-loc-4 truck-3) 8323)
  (= (cost-drive city-loc-4 city-loc-10 truck-3) 7645)
  (= (cost-drive city-loc-11 city-loc-9 truck-3) 6582)
  (= (cost-drive city-loc-9 city-loc-11 truck-3) 1665)
  (= (cost-drive city-loc-12 city-loc-4 truck-3) 5330)
  (= (cost-drive city-loc-4 city-loc-12 truck-3) 4957)
  (= (cost-drive city-loc-12 city-loc-10 truck-3) 6713)
  (= (cost-drive city-loc-10 city-loc-12 truck-3) 8580)
  (= (cost-drive city-loc-13 city-loc-11 truck-3) 1981)
  (= (cost-drive city-loc-11 city-loc-13 truck-3) 8509)
  (= (cost-drive city-loc-13 city-loc-12 truck-3) 8917)
  (= (cost-drive city-loc-12 city-loc-13 truck-3) 4853)
  (= (cost-drive city-loc-14 city-loc-2 truck-3) 9375)
  (= (cost-drive city-loc-2 city-loc-14 truck-3) 4535)
  (= (cost-drive city-loc-14 city-loc-3 truck-3) 1576)
  (= (cost-drive city-loc-3 city-loc-14 truck-3) 6412)
  (= (cost-drive city-loc-14 city-loc-4 truck-3) 4786)
  (= (cost-drive city-loc-4 city-loc-14 truck-3) 1891)
  (= (cost-drive city-loc-14 city-loc-10 truck-3) 8938)
  (= (cost-drive city-loc-10 city-loc-14 truck-3) 5153)
  (= (cost-drive city-loc-14 city-loc-12 truck-3) 8203)
  (= (cost-drive city-loc-12 city-loc-14 truck-3) 5449)
  (= (cost-drive city-loc-15 city-loc-3 truck-3) 2142)
  (= (cost-drive city-loc-3 city-loc-15 truck-3) 1732)
  (= (cost-drive city-loc-16 city-loc-5 truck-3) 9184)
  (= (cost-drive city-loc-5 city-loc-16 truck-3) 2513)
  (= (cost-drive city-loc-16 city-loc-9 truck-3) 6969)
  (= (cost-drive city-loc-9 city-loc-16 truck-3) 6200)
  (= (cost-drive city-loc-16 city-loc-11 truck-3) 2345)
  (= (cost-drive city-loc-11 city-loc-16 truck-3) 8667)
  (= (cost-drive city-loc-18 city-loc-7 truck-3) 9979)
  (= (cost-drive city-loc-7 city-loc-18 truck-3) 4835)
  (= (cost-drive city-loc-18 city-loc-8 truck-3) 5141)
  (= (cost-drive city-loc-8 city-loc-18 truck-3) 8699)
  (= (cost-drive city-loc-18 city-loc-17 truck-3) 4938)
  (= (cost-drive city-loc-17 city-loc-18 truck-3) 3210)
  (= (cost-drive city-loc-19 city-loc-6 truck-3) 3403)
  (= (cost-drive city-loc-6 city-loc-19 truck-3) 7181)
  (= (cost-drive city-loc-20 city-loc-17 truck-3) 7635)
  (= (cost-drive city-loc-17 city-loc-20 truck-3) 2439)
  (= (cost-drive city-loc-20 city-loc-18 truck-3) 7033)
  (= (cost-drive city-loc-18 city-loc-20 truck-3) 4508)
  (= (cost-drive city-loc-21 city-loc-3 truck-3) 1718)
  (= (cost-drive city-loc-3 city-loc-21 truck-3) 9516)
  (= (cost-drive city-loc-21 city-loc-10 truck-3) 1799)
  (= (cost-drive city-loc-10 city-loc-21 truck-3) 5455)
  (= (cost-drive city-loc-21 city-loc-12 truck-3) 4273)
  (= (cost-drive city-loc-12 city-loc-21 truck-3) 7810)
  (= (cost-drive city-loc-21 city-loc-14 truck-3) 9030)
  (= (cost-drive city-loc-14 city-loc-21 truck-3) 2752)
  (= (cost-drive city-loc-22 city-loc-3 truck-3) 9897)
  (= (cost-drive city-loc-3 city-loc-22 truck-3) 9326)
  (= (cost-drive city-loc-22 city-loc-6 truck-3) 4286)
  (= (cost-drive city-loc-6 city-loc-22 truck-3) 6595)
  (= (cost-drive city-loc-22 city-loc-15 truck-3) 8614)
  (= (cost-drive city-loc-15 city-loc-22 truck-3) 4672)
  (= (cost-drive city-loc-23 city-loc-2 truck-3) 8836)
  (= (cost-drive city-loc-2 city-loc-23 truck-3) 3026)
  (= (cost-drive city-loc-23 city-loc-3 truck-3) 5153)
  (= (cost-drive city-loc-3 city-loc-23 truck-3) 9883)
  (= (cost-drive city-loc-23 city-loc-4 truck-3) 6308)
  (= (cost-drive city-loc-4 city-loc-23 truck-3) 8642)
  (= (cost-drive city-loc-23 city-loc-14 truck-3) 8715)
  (= (cost-drive city-loc-14 city-loc-23 truck-3) 1937)
  (= (cost-drive city-loc-23 city-loc-15 truck-3) 5747)
  (= (cost-drive city-loc-15 city-loc-23 truck-3) 6844)
  (= (cost-drive city-loc-24 city-loc-6 truck-3) 3364)
  (= (cost-drive city-loc-6 city-loc-24 truck-3) 7289)
  (= (cost-drive city-loc-24 city-loc-19 truck-3) 1124)
  (= (cost-drive city-loc-19 city-loc-24 truck-3) 5257)
  (= (cost-drive city-loc-25 city-loc-11 truck-3) 4079)
  (= (cost-drive city-loc-11 city-loc-25 truck-3) 7790)
  (= (cost-drive city-loc-25 city-loc-16 truck-3) 2731)
  (= (cost-drive city-loc-16 city-loc-25 truck-3) 7607)
  (= (cost-drive city-loc-26 city-loc-3 truck-3) 6727)
  (= (cost-drive city-loc-3 city-loc-26 truck-3) 3300)
  (= (cost-drive city-loc-26 city-loc-6 truck-3) 7668)
  (= (cost-drive city-loc-6 city-loc-26 truck-3) 1283)
  (= (cost-drive city-loc-26 city-loc-15 truck-3) 5623)
  (= (cost-drive city-loc-15 city-loc-26 truck-3) 3316)
  (= (cost-drive city-loc-26 city-loc-19 truck-3) 1287)
  (= (cost-drive city-loc-19 city-loc-26 truck-3) 7173)
  (= (cost-drive city-loc-26 city-loc-22 truck-3) 8171)
  (= (cost-drive city-loc-22 city-loc-26 truck-3) 3208)
  (= (cost-drive city-loc-26 city-loc-24 truck-3) 1145)
  (= (cost-drive city-loc-24 city-loc-26 truck-3) 2548)
  (= (cost-drive city-loc-27 city-loc-1 truck-3) 7068)
  (= (cost-drive city-loc-1 city-loc-27 truck-3) 5021)
  (= (cost-drive city-loc-27 city-loc-15 truck-3) 7154)
  (= (cost-drive city-loc-15 city-loc-27 truck-3) 6469)
  (= (cost-drive city-loc-27 city-loc-23 truck-3) 5347)
  (= (cost-drive city-loc-23 city-loc-27 truck-3) 3057)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 305,509 -> 437,605
  (road city-loc-4 city-loc-2)
  ; 437,605 -> 305,509
  (road city-loc-2 city-loc-4)
  ; 463,927 -> 339,962
  (road city-loc-7 city-loc-5)
  ; 339,962 -> 463,927
  (road city-loc-5 city-loc-7)
  ; 486,752 -> 437,605
  (road city-loc-8 city-loc-2)
  ; 437,605 -> 486,752
  (road city-loc-2 city-loc-8)
  ; 486,752 -> 339,962
  (road city-loc-8 city-loc-5)
  ; 339,962 -> 486,752
  (road city-loc-5 city-loc-8)
  ; 486,752 -> 463,927
  (road city-loc-8 city-loc-7)
  ; 463,927 -> 486,752
  (road city-loc-7 city-loc-8)
  ; 281,709 -> 437,605
  (road city-loc-9 city-loc-2)
  ; 437,605 -> 281,709
  (road city-loc-2 city-loc-9)
  ; 281,709 -> 305,509
  (road city-loc-9 city-loc-4)
  ; 305,509 -> 281,709
  (road city-loc-4 city-loc-9)
  ; 281,709 -> 339,962
  (road city-loc-9 city-loc-5)
  ; 339,962 -> 281,709
  (road city-loc-5 city-loc-9)
  ; 281,709 -> 486,752
  (road city-loc-9 city-loc-8)
  ; 486,752 -> 281,709
  (road city-loc-8 city-loc-9)
  ; 205,275 -> 305,509
  (road city-loc-10 city-loc-4)
  ; 305,509 -> 205,275
  (road city-loc-4 city-loc-10)
  ; 119,757 -> 281,709
  (road city-loc-11 city-loc-9)
  ; 281,709 -> 119,757
  (road city-loc-9 city-loc-11)
  ; 179,400 -> 305,509
  (road city-loc-12 city-loc-4)
  ; 305,509 -> 179,400
  (road city-loc-4 city-loc-12)
  ; 179,400 -> 205,275
  (road city-loc-12 city-loc-10)
  ; 205,275 -> 179,400
  (road city-loc-10 city-loc-12)
  ; 15,529 -> 119,757
  (road city-loc-13 city-loc-11)
  ; 119,757 -> 15,529
  (road city-loc-11 city-loc-13)
  ; 15,529 -> 179,400
  (road city-loc-13 city-loc-12)
  ; 179,400 -> 15,529
  (road city-loc-12 city-loc-13)
  ; 342,393 -> 437,605
  (road city-loc-14 city-loc-2)
  ; 437,605 -> 342,393
  (road city-loc-2 city-loc-14)
  ; 342,393 -> 497,244
  (road city-loc-14 city-loc-3)
  ; 497,244 -> 342,393
  (road city-loc-3 city-loc-14)
  ; 342,393 -> 305,509
  (road city-loc-14 city-loc-4)
  ; 305,509 -> 342,393
  (road city-loc-4 city-loc-14)
  ; 342,393 -> 205,275
  (road city-loc-14 city-loc-10)
  ; 205,275 -> 342,393
  (road city-loc-10 city-loc-14)
  ; 342,393 -> 179,400
  (road city-loc-14 city-loc-12)
  ; 179,400 -> 342,393
  (road city-loc-12 city-loc-14)
  ; 612,304 -> 497,244
  (road city-loc-15 city-loc-3)
  ; 497,244 -> 612,304
  (road city-loc-3 city-loc-15)
  ; 188,934 -> 339,962
  (road city-loc-16 city-loc-5)
  ; 339,962 -> 188,934
  (road city-loc-5 city-loc-16)
  ; 188,934 -> 281,709
  (road city-loc-16 city-loc-9)
  ; 281,709 -> 188,934
  (road city-loc-9 city-loc-16)
  ; 188,934 -> 119,757
  (road city-loc-16 city-loc-11)
  ; 119,757 -> 188,934
  (road city-loc-11 city-loc-16)
  ; 660,909 -> 463,927
  (road city-loc-18 city-loc-7)
  ; 463,927 -> 660,909
  (road city-loc-7 city-loc-18)
  ; 660,909 -> 486,752
  (road city-loc-18 city-loc-8)
  ; 486,752 -> 660,909
  (road city-loc-8 city-loc-18)
  ; 660,909 -> 776,948
  (road city-loc-18 city-loc-17)
  ; 776,948 -> 660,909
  (road city-loc-17 city-loc-18)
  ; 916,162 -> 731,24
  (road city-loc-19 city-loc-6)
  ; 731,24 -> 916,162
  (road city-loc-6 city-loc-19)
  ; 914,881 -> 776,948
  (road city-loc-20 city-loc-17)
  ; 776,948 -> 914,881
  (road city-loc-17 city-loc-20)
  ; 914,881 -> 660,909
  (road city-loc-20 city-loc-18)
  ; 660,909 -> 914,881
  (road city-loc-18 city-loc-20)
  ; 331,195 -> 497,244
  (road city-loc-21 city-loc-3)
  ; 497,244 -> 331,195
  (road city-loc-3 city-loc-21)
  ; 331,195 -> 205,275
  (road city-loc-21 city-loc-10)
  ; 205,275 -> 331,195
  (road city-loc-10 city-loc-21)
  ; 331,195 -> 179,400
  (road city-loc-21 city-loc-12)
  ; 179,400 -> 331,195
  (road city-loc-12 city-loc-21)
  ; 331,195 -> 342,393
  (road city-loc-21 city-loc-14)
  ; 342,393 -> 331,195
  (road city-loc-14 city-loc-21)
  ; 599,133 -> 497,244
  (road city-loc-22 city-loc-3)
  ; 497,244 -> 599,133
  (road city-loc-3 city-loc-22)
  ; 599,133 -> 731,24
  (road city-loc-22 city-loc-6)
  ; 731,24 -> 599,133
  (road city-loc-6 city-loc-22)
  ; 599,133 -> 612,304
  (road city-loc-22 city-loc-15)
  ; 612,304 -> 599,133
  (road city-loc-15 city-loc-22)
  ; 549,437 -> 437,605
  (road city-loc-23 city-loc-2)
  ; 437,605 -> 549,437
  (road city-loc-2 city-loc-23)
  ; 549,437 -> 497,244
  (road city-loc-23 city-loc-3)
  ; 497,244 -> 549,437
  (road city-loc-3 city-loc-23)
  ; 549,437 -> 305,509
  (road city-loc-23 city-loc-4)
  ; 305,509 -> 549,437
  (road city-loc-4 city-loc-23)
  ; 549,437 -> 342,393
  (road city-loc-23 city-loc-14)
  ; 342,393 -> 549,437
  (road city-loc-14 city-loc-23)
  ; 549,437 -> 612,304
  (road city-loc-23 city-loc-15)
  ; 612,304 -> 549,437
  (road city-loc-15 city-loc-23)
  ; 870,18 -> 731,24
  (road city-loc-24 city-loc-6)
  ; 731,24 -> 870,18
  (road city-loc-6 city-loc-24)
  ; 870,18 -> 916,162
  (road city-loc-24 city-loc-19)
  ; 916,162 -> 870,18
  (road city-loc-19 city-loc-24)
  ; 63,862 -> 119,757
  (road city-loc-25 city-loc-11)
  ; 119,757 -> 63,862
  (road city-loc-11 city-loc-25)
  ; 63,862 -> 188,934
  (road city-loc-25 city-loc-16)
  ; 188,934 -> 63,862
  (road city-loc-16 city-loc-25)
  ; 720,128 -> 497,244
  (road city-loc-26 city-loc-3)
  ; 497,244 -> 720,128
  (road city-loc-3 city-loc-26)
  ; 720,128 -> 731,24
  (road city-loc-26 city-loc-6)
  ; 731,24 -> 720,128
  (road city-loc-6 city-loc-26)
  ; 720,128 -> 612,304
  (road city-loc-26 city-loc-15)
  ; 612,304 -> 720,128
  (road city-loc-15 city-loc-26)
  ; 720,128 -> 916,162
  (road city-loc-26 city-loc-19)
  ; 916,162 -> 720,128
  (road city-loc-19 city-loc-26)
  ; 720,128 -> 599,133
  (road city-loc-26 city-loc-22)
  ; 599,133 -> 720,128
  (road city-loc-22 city-loc-26)
  ; 720,128 -> 870,18
  (road city-loc-26 city-loc-24)
  ; 870,18 -> 720,128
  (road city-loc-24 city-loc-26)
  ; 683,505 -> 820,551
  (road city-loc-27 city-loc-1)
  ; 820,551 -> 683,505
  (road city-loc-1 city-loc-27)
  ; 683,505 -> 612,304
  (road city-loc-27 city-loc-15)
  ; 612,304 -> 683,505
  (road city-loc-15 city-loc-27)
  ; 683,505 -> 549,437
  (road city-loc-27 city-loc-23)
  ; 549,437 -> 683,505
  (road city-loc-23 city-loc-27)
  (at package-1 city-loc-10)
  (at package-2 city-loc-1)
  (at package-3 city-loc-10)
  (at package-4 city-loc-2)
  (at package-5 city-loc-6)
  (at package-6 city-loc-7)
  (at package-7 city-loc-25)
  (at package-8 city-loc-24)
  (at package-9 city-loc-18)
  (at package-10 city-loc-22)
  (at truck-1 city-loc-15)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-27)
  (capacity truck-2 capacity-3)
  (at truck-3 city-loc-18)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-15)
  (at package-2 city-loc-2)
  (at package-3 city-loc-2)
  (at package-4 city-loc-17)
  (at package-5 city-loc-10)
  (at package-6 city-loc-14)
  (at package-7 city-loc-5)
  (at package-8 city-loc-5)
  (at package-9 city-loc-2)
  (at package-10 city-loc-7)
 ))
 (:metric minimize (total-cost))
)
