; Transport two-cities-sequential-12nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed

(define (problem transport-two-cities-sequential-12nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed)
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
 (= (base-drive city-1-loc-3 city-1-loc-1) 22)
 (= (base-drive city-1-loc-1 city-1-loc-3) 22)
 (= (base-drive city-1-loc-4 city-1-loc-1) 26)
 (= (base-drive city-1-loc-1 city-1-loc-4) 26)
 (= (base-drive city-1-loc-5 city-1-loc-1) 37)
 (= (base-drive city-1-loc-1 city-1-loc-5) 37)
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
 (= (base-drive city-1-loc-9 city-1-loc-2) 40)
 (= (base-drive city-1-loc-2 city-1-loc-9) 40)
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
 (= (base-drive city-2-loc-2 city-2-loc-1) 29)
 (= (base-drive city-2-loc-1 city-2-loc-2) 29)
 (= (base-drive city-2-loc-3 city-2-loc-1) 21)
 (= (base-drive city-2-loc-1 city-2-loc-3) 21)
 (= (base-drive city-2-loc-5 city-2-loc-1) 24)
 (= (base-drive city-2-loc-1 city-2-loc-5) 24)
 (= (base-drive city-2-loc-5 city-2-loc-3) 25)
 (= (base-drive city-2-loc-3 city-2-loc-5) 25)
 (= (base-drive city-2-loc-6 city-2-loc-3) 24)
 (= (base-drive city-2-loc-3 city-2-loc-6) 24)
 (= (base-drive city-2-loc-6 city-2-loc-4) 25)
 (= (base-drive city-2-loc-4 city-2-loc-6) 25)
 (= (base-drive city-2-loc-7 city-2-loc-1) 39)
 (= (base-drive city-2-loc-1 city-2-loc-7) 39)
 (= (base-drive city-2-loc-7 city-2-loc-3) 37)
 (= (base-drive city-2-loc-3 city-2-loc-7) 37)
 (= (base-drive city-2-loc-8 city-2-loc-2) 16)
 (= (base-drive city-2-loc-2 city-2-loc-8) 16)
 (= (base-drive city-2-loc-9 city-2-loc-1) 18)
 (= (base-drive city-2-loc-1 city-2-loc-9) 18)
 (= (base-drive city-2-loc-9 city-2-loc-2) 17)
 (= (base-drive city-2-loc-2 city-2-loc-9) 17)
 (= (base-drive city-2-loc-9 city-2-loc-3) 39)
 (= (base-drive city-2-loc-3 city-2-loc-9) 39)
 (= (base-drive city-2-loc-9 city-2-loc-5) 34)
 (= (base-drive city-2-loc-5 city-2-loc-9) 34)
 (= (base-drive city-2-loc-9 city-2-loc-8) 32)
 (= (base-drive city-2-loc-8 city-2-loc-9) 32)
 (= (base-drive city-2-loc-10 city-2-loc-1) 14)
 (= (base-drive city-2-loc-1 city-2-loc-10) 14)
 (= (base-drive city-2-loc-10 city-2-loc-2) 21)
 (= (base-drive city-2-loc-2 city-2-loc-10) 21)
 (= (base-drive city-2-loc-10 city-2-loc-3) 29)
 (= (base-drive city-2-loc-3 city-2-loc-10) 29)
 (= (base-drive city-2-loc-10 city-2-loc-5) 38)
 (= (base-drive city-2-loc-5 city-2-loc-10) 38)
 (= (base-drive city-2-loc-10 city-2-loc-7) 31)
 (= (base-drive city-2-loc-7 city-2-loc-10) 31)
 (= (base-drive city-2-loc-10 city-2-loc-8) 34)
 (= (base-drive city-2-loc-8 city-2-loc-10) 34)
 (= (base-drive city-2-loc-10 city-2-loc-9) 19)
 (= (base-drive city-2-loc-9 city-2-loc-10) 19)
 (= (base-drive city-2-loc-11 city-2-loc-1) 28)
 (= (base-drive city-2-loc-1 city-2-loc-11) 28)
 (= (base-drive city-2-loc-11 city-2-loc-2) 23)
 (= (base-drive city-2-loc-2 city-2-loc-11) 23)
 (= (base-drive city-2-loc-11 city-2-loc-3) 39)
 (= (base-drive city-2-loc-3 city-2-loc-11) 39)
 (= (base-drive city-2-loc-11 city-2-loc-7) 24)
 (= (base-drive city-2-loc-7 city-2-loc-11) 24)
 (= (base-drive city-2-loc-11 city-2-loc-8) 30)
 (= (base-drive city-2-loc-8 city-2-loc-11) 30)
 (= (base-drive city-2-loc-11 city-2-loc-9) 30)
 (= (base-drive city-2-loc-9 city-2-loc-11) 30)
 (= (base-drive city-2-loc-11 city-2-loc-10) 15)
 (= (base-drive city-2-loc-10 city-2-loc-11) 15)
 (= (base-drive city-2-loc-12 city-2-loc-1) 34)
 (= (base-drive city-2-loc-1 city-2-loc-12) 34)
 (= (base-drive city-2-loc-12 city-2-loc-5) 25)
 (= (base-drive city-2-loc-5 city-2-loc-12) 25)
 (= (base-drive city-2-loc-12 city-2-loc-9) 29)
 (= (base-drive city-2-loc-9 city-2-loc-12) 29)
 (= (base-drive city-1-loc-12 city-2-loc-12) 115)
 (= (base-drive city-2-loc-12 city-1-loc-12) 115)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 5357)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 4816)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 3309)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 8387)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 4601)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 9955)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 8532)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 8661)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 7877)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 9181)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 5529)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 5562)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 7254)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 3160)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 1599)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 5003)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 3207)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 3815)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 8825)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 8342)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 5045)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 7220)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-1) 2004)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-1) 7030)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 6935)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 9975)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-1) 8828)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-1) 3121)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 7428)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 9407)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-1) 6875)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-1) 8040)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 6357)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 7483)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 6536)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 4025)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-1) 1948)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-1) 4055)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-1) 1045)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-1) 2707)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-1) 7985)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-1) 9629)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-1) 8782)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-1) 8074)
  (= (cost-drive city-1-loc-12 city-1-loc-7 truck-1) 2271)
  (= (cost-drive city-1-loc-7 city-1-loc-12 truck-1) 6995)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 7891)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 3130)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 1206)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 8707)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-1) 6880)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-1) 6973)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-1) 2482)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-1) 2969)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 8524)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 8746)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-1) 8802)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-1) 2103)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-1) 8649)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-1) 1618)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-1) 4434)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-1) 8507)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-1) 1589)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-1) 8531)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-1) 2436)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-1) 1183)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-1) 7964)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-1) 3365)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-1) 6640)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-1) 1316)
  (= (cost-drive city-2-loc-9 city-2-loc-5 truck-1) 2898)
  (= (cost-drive city-2-loc-5 city-2-loc-9 truck-1) 1033)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-1) 3395)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-1) 3382)
  (= (cost-drive city-2-loc-10 city-2-loc-1 truck-1) 8335)
  (= (cost-drive city-2-loc-1 city-2-loc-10 truck-1) 8731)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-1) 2071)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-1) 5684)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-1) 3733)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-1) 6187)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-1) 8271)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-1) 6027)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-1) 5937)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-1) 8041)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-1) 1244)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-1) 9047)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-1) 1502)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-1) 1096)
  (= (cost-drive city-2-loc-11 city-2-loc-1 truck-1) 8356)
  (= (cost-drive city-2-loc-1 city-2-loc-11 truck-1) 1303)
  (= (cost-drive city-2-loc-11 city-2-loc-2 truck-1) 9021)
  (= (cost-drive city-2-loc-2 city-2-loc-11 truck-1) 1298)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-1) 7019)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-1) 2817)
  (= (cost-drive city-2-loc-11 city-2-loc-7 truck-1) 4431)
  (= (cost-drive city-2-loc-7 city-2-loc-11 truck-1) 7956)
  (= (cost-drive city-2-loc-11 city-2-loc-8 truck-1) 2525)
  (= (cost-drive city-2-loc-8 city-2-loc-11 truck-1) 6668)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-1) 8920)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-1) 3430)
  (= (cost-drive city-2-loc-11 city-2-loc-10 truck-1) 7651)
  (= (cost-drive city-2-loc-10 city-2-loc-11 truck-1) 1534)
  (= (cost-drive city-2-loc-12 city-2-loc-1 truck-1) 3198)
  (= (cost-drive city-2-loc-1 city-2-loc-12 truck-1) 7531)
  (= (cost-drive city-2-loc-12 city-2-loc-5 truck-1) 4848)
  (= (cost-drive city-2-loc-5 city-2-loc-12 truck-1) 4462)
  (= (cost-drive city-2-loc-12 city-2-loc-9 truck-1) 2977)
  (= (cost-drive city-2-loc-9 city-2-loc-12 truck-1) 6502)
  (= (cost-drive city-1-loc-12 city-2-loc-12 truck-1) 3962)
  (= (cost-drive city-2-loc-12 city-1-loc-12 truck-1) 9493)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 7841)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 3690)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 6773)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 2088)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 6227)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 3780)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 8437)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 8110)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 6392)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 2069)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 4836)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 9848)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 8984)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 4017)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 7816)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 5577)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 7835)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 9679)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 6048)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 8482)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 7275)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 2364)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-2) 5076)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-2) 9427)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 3768)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 2418)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-2) 5305)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-2) 9045)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 8150)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 3008)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-2) 2320)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-2) 7410)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 6937)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 3321)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 3436)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 7564)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-2) 8680)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-2) 9766)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-2) 2680)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-2) 7289)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-2) 9779)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-2) 7651)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-2) 1163)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-2) 3623)
  (= (cost-drive city-1-loc-12 city-1-loc-7 truck-2) 5337)
  (= (cost-drive city-1-loc-7 city-1-loc-12 truck-2) 2362)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 2341)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 5497)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 5372)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 4128)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-2) 4017)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-2) 5231)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-2) 7343)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-2) 2226)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 7423)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 5263)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-2) 4013)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-2) 3461)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-2) 1473)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-2) 7534)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-2) 5347)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-2) 9342)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-2) 2308)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-2) 9886)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-2) 1415)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-2) 1272)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-2) 9278)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-2) 8264)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-2) 6833)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-2) 6685)
  (= (cost-drive city-2-loc-9 city-2-loc-5 truck-2) 4496)
  (= (cost-drive city-2-loc-5 city-2-loc-9 truck-2) 3678)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-2) 3861)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-2) 3190)
  (= (cost-drive city-2-loc-10 city-2-loc-1 truck-2) 9140)
  (= (cost-drive city-2-loc-1 city-2-loc-10 truck-2) 7627)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-2) 3848)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-2) 1600)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-2) 9998)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-2) 5735)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-2) 5076)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-2) 7720)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-2) 6110)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-2) 9227)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-2) 2120)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-2) 3772)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-2) 9706)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-2) 5433)
  (= (cost-drive city-2-loc-11 city-2-loc-1 truck-2) 1563)
  (= (cost-drive city-2-loc-1 city-2-loc-11 truck-2) 8085)
  (= (cost-drive city-2-loc-11 city-2-loc-2 truck-2) 6409)
  (= (cost-drive city-2-loc-2 city-2-loc-11 truck-2) 1592)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-2) 2103)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-2) 9479)
  (= (cost-drive city-2-loc-11 city-2-loc-7 truck-2) 3960)
  (= (cost-drive city-2-loc-7 city-2-loc-11 truck-2) 8411)
  (= (cost-drive city-2-loc-11 city-2-loc-8 truck-2) 3437)
  (= (cost-drive city-2-loc-8 city-2-loc-11 truck-2) 7352)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-2) 6736)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-2) 4781)
  (= (cost-drive city-2-loc-11 city-2-loc-10 truck-2) 2653)
  (= (cost-drive city-2-loc-10 city-2-loc-11 truck-2) 5583)
  (= (cost-drive city-2-loc-12 city-2-loc-1 truck-2) 1017)
  (= (cost-drive city-2-loc-1 city-2-loc-12 truck-2) 9173)
  (= (cost-drive city-2-loc-12 city-2-loc-5 truck-2) 6676)
  (= (cost-drive city-2-loc-5 city-2-loc-12 truck-2) 2063)
  (= (cost-drive city-2-loc-12 city-2-loc-9 truck-2) 6959)
  (= (cost-drive city-2-loc-9 city-2-loc-12 truck-2) 4951)
  (= (cost-drive city-1-loc-12 city-2-loc-12 truck-2) 5825)
  (= (cost-drive city-2-loc-12 city-1-loc-12 truck-2) 8454)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 8854)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 1113)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 1415)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 5047)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-3) 4854)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-3) 1282)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 3256)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 9188)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 1369)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 3837)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 4358)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 2472)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 2878)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 2753)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 9360)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 4420)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 6770)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 4670)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-3) 2811)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-3) 6868)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 2917)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 1732)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-3) 1621)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-3) 4082)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 9019)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 2004)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-3) 8277)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-3) 8495)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-3) 4267)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-3) 8731)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-3) 4561)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-3) 8128)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-3) 1782)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-3) 9826)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-3) 3233)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-3) 3937)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-3) 7691)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-3) 2299)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-3) 4044)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-3) 5796)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-3) 7230)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-3) 2643)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-3) 7711)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-3) 5376)
  (= (cost-drive city-1-loc-12 city-1-loc-7 truck-3) 7856)
  (= (cost-drive city-1-loc-7 city-1-loc-12 truck-3) 6393)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-3) 3676)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-3) 7331)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-3) 5153)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-3) 8682)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-3) 6267)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-3) 1183)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-3) 6151)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-3) 8254)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 8052)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 1130)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-3) 9932)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-3) 8138)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-3) 9204)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-3) 5505)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-3) 7627)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-3) 5016)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-3) 4037)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-3) 6570)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-3) 7968)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-3) 9717)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-3) 9778)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-3) 3347)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-3) 4250)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-3) 3926)
  (= (cost-drive city-2-loc-9 city-2-loc-5 truck-3) 2621)
  (= (cost-drive city-2-loc-5 city-2-loc-9 truck-3) 8453)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-3) 6675)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-3) 5454)
  (= (cost-drive city-2-loc-10 city-2-loc-1 truck-3) 8628)
  (= (cost-drive city-2-loc-1 city-2-loc-10 truck-3) 9500)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-3) 9216)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-3) 3310)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-3) 6117)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-3) 9771)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-3) 2642)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-3) 4043)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-3) 2288)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-3) 6925)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-3) 2063)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-3) 1879)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-3) 9193)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-3) 7503)
  (= (cost-drive city-2-loc-11 city-2-loc-1 truck-3) 9092)
  (= (cost-drive city-2-loc-1 city-2-loc-11 truck-3) 3814)
  (= (cost-drive city-2-loc-11 city-2-loc-2 truck-3) 4102)
  (= (cost-drive city-2-loc-2 city-2-loc-11 truck-3) 4428)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-3) 5697)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-3) 6626)
  (= (cost-drive city-2-loc-11 city-2-loc-7 truck-3) 2749)
  (= (cost-drive city-2-loc-7 city-2-loc-11 truck-3) 7559)
  (= (cost-drive city-2-loc-11 city-2-loc-8 truck-3) 1904)
  (= (cost-drive city-2-loc-8 city-2-loc-11 truck-3) 8955)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-3) 1955)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-3) 2409)
  (= (cost-drive city-2-loc-11 city-2-loc-10 truck-3) 9884)
  (= (cost-drive city-2-loc-10 city-2-loc-11 truck-3) 7212)
  (= (cost-drive city-2-loc-12 city-2-loc-1 truck-3) 8020)
  (= (cost-drive city-2-loc-1 city-2-loc-12 truck-3) 7580)
  (= (cost-drive city-2-loc-12 city-2-loc-5 truck-3) 7745)
  (= (cost-drive city-2-loc-5 city-2-loc-12 truck-3) 8358)
  (= (cost-drive city-2-loc-12 city-2-loc-9 truck-3) 7876)
  (= (cost-drive city-2-loc-9 city-2-loc-12 truck-3) 7170)
  (= (cost-drive city-1-loc-12 city-2-loc-12 truck-3) 7384)
  (= (cost-drive city-2-loc-12 city-1-loc-12 truck-3) 6419)
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
  ; 977,899 -> 890,543
  (road city-1-loc-5 city-1-loc-1)
  ; 890,543 -> 977,899
  (road city-1-loc-1 city-1-loc-5)
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
  ; 273,425 -> 384,50
  (road city-1-loc-9 city-1-loc-2)
  ; 384,50 -> 273,425
  (road city-1-loc-2 city-1-loc-9)
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
  ; 2170,709 -> 2336,475
  (road city-2-loc-2 city-2-loc-1)
  ; 2336,475 -> 2170,709
  (road city-2-loc-1 city-2-loc-2)
  ; 2521,375 -> 2336,475
  (road city-2-loc-3 city-2-loc-1)
  ; 2336,475 -> 2521,375
  (road city-2-loc-1 city-2-loc-3)
  ; 2316,237 -> 2336,475
  (road city-2-loc-5 city-2-loc-1)
  ; 2336,475 -> 2316,237
  (road city-2-loc-1 city-2-loc-5)
  ; 2316,237 -> 2521,375
  (road city-2-loc-5 city-2-loc-3)
  ; 2521,375 -> 2316,237
  (road city-2-loc-3 city-2-loc-5)
  ; 2720,241 -> 2521,375
  (road city-2-loc-6 city-2-loc-3)
  ; 2521,375 -> 2720,241
  (road city-2-loc-3 city-2-loc-6)
  ; 2720,241 -> 2701,0
  (road city-2-loc-6 city-2-loc-4)
  ; 2701,0 -> 2720,241
  (road city-2-loc-4 city-2-loc-6)
  ; 2630,722 -> 2336,475
  (road city-2-loc-7 city-2-loc-1)
  ; 2336,475 -> 2630,722
  (road city-2-loc-1 city-2-loc-7)
  ; 2630,722 -> 2521,375
  (road city-2-loc-7 city-2-loc-3)
  ; 2521,375 -> 2630,722
  (road city-2-loc-3 city-2-loc-7)
  ; 2120,854 -> 2170,709
  (road city-2-loc-8 city-2-loc-2)
  ; 2170,709 -> 2120,854
  (road city-2-loc-2 city-2-loc-8)
  ; 2171,545 -> 2336,475
  (road city-2-loc-9 city-2-loc-1)
  ; 2336,475 -> 2171,545
  (road city-2-loc-1 city-2-loc-9)
  ; 2171,545 -> 2170,709
  (road city-2-loc-9 city-2-loc-2)
  ; 2170,709 -> 2171,545
  (road city-2-loc-2 city-2-loc-9)
  ; 2171,545 -> 2521,375
  (road city-2-loc-9 city-2-loc-3)
  ; 2521,375 -> 2171,545
  (road city-2-loc-3 city-2-loc-9)
  ; 2171,545 -> 2316,237
  (road city-2-loc-9 city-2-loc-5)
  ; 2316,237 -> 2171,545
  (road city-2-loc-5 city-2-loc-9)
  ; 2171,545 -> 2120,854
  (road city-2-loc-9 city-2-loc-8)
  ; 2120,854 -> 2171,545
  (road city-2-loc-8 city-2-loc-9)
  ; 2348,607 -> 2336,475
  (road city-2-loc-10 city-2-loc-1)
  ; 2336,475 -> 2348,607
  (road city-2-loc-1 city-2-loc-10)
  ; 2348,607 -> 2170,709
  (road city-2-loc-10 city-2-loc-2)
  ; 2170,709 -> 2348,607
  (road city-2-loc-2 city-2-loc-10)
  ; 2348,607 -> 2521,375
  (road city-2-loc-10 city-2-loc-3)
  ; 2521,375 -> 2348,607
  (road city-2-loc-3 city-2-loc-10)
  ; 2348,607 -> 2316,237
  (road city-2-loc-10 city-2-loc-5)
  ; 2316,237 -> 2348,607
  (road city-2-loc-5 city-2-loc-10)
  ; 2348,607 -> 2630,722
  (road city-2-loc-10 city-2-loc-7)
  ; 2630,722 -> 2348,607
  (road city-2-loc-7 city-2-loc-10)
  ; 2348,607 -> 2120,854
  (road city-2-loc-10 city-2-loc-8)
  ; 2120,854 -> 2348,607
  (road city-2-loc-8 city-2-loc-10)
  ; 2348,607 -> 2171,545
  (road city-2-loc-10 city-2-loc-9)
  ; 2171,545 -> 2348,607
  (road city-2-loc-9 city-2-loc-10)
  ; 2395,741 -> 2336,475
  (road city-2-loc-11 city-2-loc-1)
  ; 2336,475 -> 2395,741
  (road city-2-loc-1 city-2-loc-11)
  ; 2395,741 -> 2170,709
  (road city-2-loc-11 city-2-loc-2)
  ; 2170,709 -> 2395,741
  (road city-2-loc-2 city-2-loc-11)
  ; 2395,741 -> 2521,375
  (road city-2-loc-11 city-2-loc-3)
  ; 2521,375 -> 2395,741
  (road city-2-loc-3 city-2-loc-11)
  ; 2395,741 -> 2630,722
  (road city-2-loc-11 city-2-loc-7)
  ; 2630,722 -> 2395,741
  (road city-2-loc-7 city-2-loc-11)
  ; 2395,741 -> 2120,854
  (road city-2-loc-11 city-2-loc-8)
  ; 2120,854 -> 2395,741
  (road city-2-loc-8 city-2-loc-11)
  ; 2395,741 -> 2171,545
  (road city-2-loc-11 city-2-loc-9)
  ; 2171,545 -> 2395,741
  (road city-2-loc-9 city-2-loc-11)
  ; 2395,741 -> 2348,607
  (road city-2-loc-11 city-2-loc-10)
  ; 2348,607 -> 2395,741
  (road city-2-loc-10 city-2-loc-11)
  ; 2071,275 -> 2336,475
  (road city-2-loc-12 city-2-loc-1)
  ; 2336,475 -> 2071,275
  (road city-2-loc-1 city-2-loc-12)
  ; 2071,275 -> 2316,237
  (road city-2-loc-12 city-2-loc-5)
  ; 2316,237 -> 2071,275
  (road city-2-loc-5 city-2-loc-12)
  ; 2071,275 -> 2171,545
  (road city-2-loc-12 city-2-loc-9)
  ; 2171,545 -> 2071,275
  (road city-2-loc-9 city-2-loc-12)
  ; 930,259 <-> 2071,275
  (road city-1-loc-12 city-2-loc-12)
  (road city-2-loc-12 city-1-loc-12)
  (at package-1 city-1-loc-11)
  (at package-2 city-1-loc-2)
  (at package-3 city-1-loc-1)
  (at package-4 city-1-loc-7)
  (at package-5 city-1-loc-3)
  (at package-6 city-1-loc-12)
  (at package-7 city-1-loc-4)
  (at truck-1 city-2-loc-8)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-3)
  (capacity truck-2 capacity-4)
  (at truck-3 city-2-loc-11)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-8)
  (at package-2 city-2-loc-5)
  (at package-3 city-2-loc-6)
  (at package-4 city-2-loc-3)
  (at package-5 city-2-loc-10)
  (at package-6 city-2-loc-7)
  (at package-7 city-2-loc-10)
 ))
 (:metric minimize (total-cost))
)
