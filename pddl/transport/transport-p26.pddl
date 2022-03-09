; Transport three-cities-sequential-6nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed

(define (problem transport-three-cities-sequential-6nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-3-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-3-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-3-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-3-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-3-loc-6 - location
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
 (= (base-drive city-1-loc-3 city-1-loc-2) 50)
 (= (base-drive city-1-loc-2 city-1-loc-3) 50)
 (= (base-drive city-1-loc-4 city-1-loc-1) 26)
 (= (base-drive city-1-loc-1 city-1-loc-4) 26)
 (= (base-drive city-1-loc-4 city-1-loc-3) 45)
 (= (base-drive city-1-loc-3 city-1-loc-4) 45)
 (= (base-drive city-1-loc-5 city-1-loc-1) 37)
 (= (base-drive city-1-loc-1 city-1-loc-5) 37)
 (= (base-drive city-1-loc-5 city-1-loc-4) 12)
 (= (base-drive city-1-loc-4 city-1-loc-5) 12)
 (= (base-drive city-1-loc-6 city-1-loc-1) 54)
 (= (base-drive city-1-loc-1 city-1-loc-6) 54)
 (= (base-drive city-1-loc-6 city-1-loc-2) 19)
 (= (base-drive city-1-loc-2 city-1-loc-6) 19)
 (= (base-drive city-1-loc-6 city-1-loc-3) 34)
 (= (base-drive city-1-loc-3 city-1-loc-6) 34)
 (= (base-drive city-2-loc-2 city-2-loc-1) 30)
 (= (base-drive city-2-loc-1 city-2-loc-2) 30)
 (= (base-drive city-2-loc-3 city-2-loc-1) 49)
 (= (base-drive city-2-loc-1 city-2-loc-3) 49)
 (= (base-drive city-2-loc-3 city-2-loc-2) 47)
 (= (base-drive city-2-loc-2 city-2-loc-3) 47)
 (= (base-drive city-2-loc-4 city-2-loc-1) 18)
 (= (base-drive city-2-loc-1 city-2-loc-4) 18)
 (= (base-drive city-2-loc-4 city-2-loc-2) 24)
 (= (base-drive city-2-loc-2 city-2-loc-4) 24)
 (= (base-drive city-2-loc-4 city-2-loc-3) 32)
 (= (base-drive city-2-loc-3 city-2-loc-4) 32)
 (= (base-drive city-2-loc-5 city-2-loc-2) 42)
 (= (base-drive city-2-loc-2 city-2-loc-5) 42)
 (= (base-drive city-2-loc-5 city-2-loc-3) 24)
 (= (base-drive city-2-loc-3 city-2-loc-5) 24)
 (= (base-drive city-2-loc-5 city-2-loc-4) 41)
 (= (base-drive city-2-loc-4 city-2-loc-5) 41)
 (= (base-drive city-2-loc-6 city-2-loc-1) 43)
 (= (base-drive city-2-loc-1 city-2-loc-6) 43)
 (= (base-drive city-2-loc-6 city-2-loc-2) 41)
 (= (base-drive city-2-loc-2 city-2-loc-6) 41)
 (= (base-drive city-2-loc-6 city-2-loc-4) 53)
 (= (base-drive city-2-loc-4 city-2-loc-6) 53)
 (= (base-drive city-3-loc-2 city-3-loc-1) 35)
 (= (base-drive city-3-loc-1 city-3-loc-2) 35)
 (= (base-drive city-3-loc-3 city-3-loc-2) 39)
 (= (base-drive city-3-loc-2 city-3-loc-3) 39)
 (= (base-drive city-3-loc-4 city-3-loc-1) 17)
 (= (base-drive city-3-loc-1 city-3-loc-4) 17)
 (= (base-drive city-3-loc-4 city-3-loc-2) 23)
 (= (base-drive city-3-loc-2 city-3-loc-4) 23)
 (= (base-drive city-3-loc-4 city-3-loc-3) 47)
 (= (base-drive city-3-loc-3 city-3-loc-4) 47)
 (= (base-drive city-3-loc-5 city-3-loc-1) 48)
 (= (base-drive city-3-loc-1 city-3-loc-5) 48)
 (= (base-drive city-3-loc-5 city-3-loc-2) 16)
 (= (base-drive city-3-loc-2 city-3-loc-5) 16)
 (= (base-drive city-3-loc-5 city-3-loc-3) 24)
 (= (base-drive city-3-loc-3 city-3-loc-5) 24)
 (= (base-drive city-3-loc-5 city-3-loc-4) 33)
 (= (base-drive city-3-loc-4 city-3-loc-5) 33)
 (= (base-drive city-3-loc-6 city-3-loc-2) 38)
 (= (base-drive city-3-loc-2 city-3-loc-6) 38)
 (= (base-drive city-3-loc-6 city-3-loc-3) 42)
 (= (base-drive city-3-loc-3 city-3-loc-6) 42)
 (= (base-drive city-3-loc-6 city-3-loc-5) 29)
 (= (base-drive city-3-loc-5 city-3-loc-6) 29)
 (= (base-drive city-1-loc-5 city-2-loc-5) 123)
 (= (base-drive city-2-loc-5 city-1-loc-5) 123)
 (= (base-drive city-1-loc-4 city-3-loc-3) 142)
 (= (base-drive city-3-loc-3 city-1-loc-4) 142)
 (= (base-drive city-2-loc-3 city-3-loc-5) 145)
 (= (base-drive city-3-loc-5 city-2-loc-3) 145)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 8522)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 4047)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-1) 2990)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-1) 1649)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 6270)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 9500)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 8359)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 9503)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 5835)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 6712)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 3254)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 1104)
  (= (cost-drive city-1-loc-6 city-1-loc-1 truck-1) 6539)
  (= (cost-drive city-1-loc-1 city-1-loc-6 truck-1) 1529)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 5349)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 3774)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 3255)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 1143)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 9438)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 4605)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 2318)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 4632)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 3442)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 5084)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 1271)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 1176)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 9904)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 6591)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 1349)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 9049)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-1) 4584)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-1) 7380)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-1) 7205)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-1) 9076)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-1) 6962)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-1) 7561)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-1) 5856)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-1) 7822)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-1) 5545)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-1) 7846)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-1) 3691)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-1) 6903)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 4900)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 9714)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-1) 2068)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-1) 3070)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-1) 2051)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-1) 1955)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-1) 1963)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-1) 2616)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-1) 7606)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-1) 5904)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-1) 3068)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-1) 7801)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-1) 5558)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-1) 9503)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-1) 6542)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-1) 3175)
  (= (cost-drive city-3-loc-5 city-3-loc-4 truck-1) 9476)
  (= (cost-drive city-3-loc-4 city-3-loc-5 truck-1) 6963)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-1) 2001)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-1) 5395)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-1) 4712)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-1) 1944)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-1) 7243)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-1) 6854)
  (= (cost-drive city-1-loc-5 city-2-loc-5 truck-1) 1843)
  (= (cost-drive city-2-loc-5 city-1-loc-5 truck-1) 9976)
  (= (cost-drive city-1-loc-4 city-3-loc-3 truck-1) 6800)
  (= (cost-drive city-3-loc-3 city-1-loc-4 truck-1) 8205)
  (= (cost-drive city-2-loc-3 city-3-loc-5 truck-1) 9501)
  (= (cost-drive city-3-loc-5 city-2-loc-3 truck-1) 3722)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 9078)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 8523)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-2) 7351)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-2) 8816)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 3446)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 5932)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 6564)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 2869)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 2399)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 9262)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 9538)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 5592)
  (= (cost-drive city-1-loc-6 city-1-loc-1 truck-2) 4752)
  (= (cost-drive city-1-loc-1 city-1-loc-6 truck-2) 1352)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 3281)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 7706)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 9621)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 5634)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 6042)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 4382)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 7997)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 2039)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 8804)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 1560)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 6553)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 5121)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 4464)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 1238)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 7613)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 3748)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-2) 5672)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-2) 4449)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-2) 5940)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-2) 1153)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-2) 9016)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-2) 2696)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-2) 7124)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-2) 6910)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-2) 5442)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-2) 4260)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-2) 4099)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-2) 2766)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 4577)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 7424)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-2) 2223)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-2) 7362)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-2) 5582)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-2) 7997)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-2) 6321)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-2) 6359)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-2) 9394)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-2) 1835)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-2) 9174)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-2) 6283)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-2) 8262)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-2) 9838)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-2) 9018)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-2) 7811)
  (= (cost-drive city-3-loc-5 city-3-loc-4 truck-2) 3721)
  (= (cost-drive city-3-loc-4 city-3-loc-5 truck-2) 9842)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-2) 2953)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-2) 5392)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-2) 2918)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-2) 4255)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-2) 9867)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-2) 5288)
  (= (cost-drive city-1-loc-5 city-2-loc-5 truck-2) 7511)
  (= (cost-drive city-2-loc-5 city-1-loc-5 truck-2) 9493)
  (= (cost-drive city-1-loc-4 city-3-loc-3 truck-2) 2075)
  (= (cost-drive city-3-loc-3 city-1-loc-4 truck-2) 2515)
  (= (cost-drive city-2-loc-3 city-3-loc-5 truck-2) 4077)
  (= (cost-drive city-3-loc-5 city-2-loc-3 truck-2) 3798)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 1328)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 8160)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-3) 4711)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-3) 6043)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 8632)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 2719)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-3) 1890)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-3) 1151)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-3) 3612)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-3) 8358)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 7398)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 7692)
  (= (cost-drive city-1-loc-6 city-1-loc-1 truck-3) 6104)
  (= (cost-drive city-1-loc-1 city-1-loc-6 truck-3) 5125)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 3637)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 3388)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 9468)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 1371)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-3) 8037)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-3) 1928)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-3) 1454)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-3) 8290)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-3) 5409)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-3) 9893)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-3) 9085)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-3) 3622)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-3) 8633)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-3) 7097)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-3) 4232)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-3) 4893)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-3) 2805)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-3) 1208)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-3) 7205)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-3) 5722)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-3) 2182)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-3) 8579)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-3) 7739)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-3) 2494)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-3) 6325)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-3) 2249)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-3) 9248)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-3) 7384)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-3) 2636)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-3) 6219)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-3) 1254)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-3) 7134)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-3) 2711)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-3) 6939)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-3) 7356)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-3) 3358)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-3) 3728)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-3) 8012)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-3) 8427)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-3) 2564)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-3) 8160)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-3) 4973)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-3) 7793)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-3) 6248)
  (= (cost-drive city-3-loc-5 city-3-loc-4 truck-3) 7176)
  (= (cost-drive city-3-loc-4 city-3-loc-5 truck-3) 7763)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-3) 4110)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-3) 2097)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-3) 7676)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-3) 3798)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-3) 8441)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-3) 2431)
  (= (cost-drive city-1-loc-5 city-2-loc-5 truck-3) 4411)
  (= (cost-drive city-2-loc-5 city-1-loc-5 truck-3) 9488)
  (= (cost-drive city-1-loc-4 city-3-loc-3 truck-3) 9916)
  (= (cost-drive city-3-loc-3 city-1-loc-4 truck-3) 8004)
  (= (cost-drive city-2-loc-3 city-3-loc-5 truck-3) 7991)
  (= (cost-drive city-3-loc-5 city-2-loc-3 truck-3) 6800)
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
  ; 748,385 -> 384,50
  (road city-1-loc-3 city-1-loc-2)
  ; 384,50 -> 748,385
  (road city-1-loc-2 city-1-loc-3)
  ; 912,799 -> 890,543
  (road city-1-loc-4 city-1-loc-1)
  ; 890,543 -> 912,799
  (road city-1-loc-1 city-1-loc-4)
  ; 912,799 -> 748,385
  (road city-1-loc-4 city-1-loc-3)
  ; 748,385 -> 912,799
  (road city-1-loc-3 city-1-loc-4)
  ; 977,899 -> 890,543
  (road city-1-loc-5 city-1-loc-1)
  ; 890,543 -> 977,899
  (road city-1-loc-1 city-1-loc-5)
  ; 977,899 -> 912,799
  (road city-1-loc-5 city-1-loc-4)
  ; 912,799 -> 977,899
  (road city-1-loc-4 city-1-loc-5)
  ; 456,221 -> 890,543
  (road city-1-loc-6 city-1-loc-1)
  ; 890,543 -> 456,221
  (road city-1-loc-1 city-1-loc-6)
  ; 456,221 -> 384,50
  (road city-1-loc-6 city-1-loc-2)
  ; 384,50 -> 456,221
  (road city-1-loc-2 city-1-loc-6)
  ; 456,221 -> 748,385
  (road city-1-loc-6 city-1-loc-3)
  ; 748,385 -> 456,221
  (road city-1-loc-3 city-1-loc-6)
  ; 2564,783 -> 2742,542
  (road city-2-loc-2 city-2-loc-1)
  ; 2742,542 -> 2564,783
  (road city-2-loc-1 city-2-loc-2)
  ; 2273,425 -> 2742,542
  (road city-2-loc-3 city-2-loc-1)
  ; 2742,542 -> 2273,425
  (road city-2-loc-1 city-2-loc-3)
  ; 2273,425 -> 2564,783
  (road city-2-loc-3 city-2-loc-2)
  ; 2564,783 -> 2273,425
  (road city-2-loc-2 city-2-loc-3)
  ; 2566,552 -> 2742,542
  (road city-2-loc-4 city-2-loc-1)
  ; 2742,542 -> 2566,552
  (road city-2-loc-1 city-2-loc-4)
  ; 2566,552 -> 2564,783
  (road city-2-loc-4 city-2-loc-2)
  ; 2564,783 -> 2566,552
  (road city-2-loc-2 city-2-loc-4)
  ; 2566,552 -> 2273,425
  (road city-2-loc-4 city-2-loc-3)
  ; 2273,425 -> 2566,552
  (road city-2-loc-3 city-2-loc-4)
  ; 2174,643 -> 2564,783
  (road city-2-loc-5 city-2-loc-2)
  ; 2564,783 -> 2174,643
  (road city-2-loc-2 city-2-loc-5)
  ; 2174,643 -> 2273,425
  (road city-2-loc-5 city-2-loc-3)
  ; 2273,425 -> 2174,643
  (road city-2-loc-3 city-2-loc-5)
  ; 2174,643 -> 2566,552
  (road city-2-loc-5 city-2-loc-4)
  ; 2566,552 -> 2174,643
  (road city-2-loc-4 city-2-loc-5)
  ; 2946,916 -> 2742,542
  (road city-2-loc-6 city-2-loc-1)
  ; 2742,542 -> 2946,916
  (road city-2-loc-1 city-2-loc-6)
  ; 2946,916 -> 2564,783
  (road city-2-loc-6 city-2-loc-2)
  ; 2564,783 -> 2946,916
  (road city-2-loc-2 city-2-loc-6)
  ; 2946,916 -> 2566,552
  (road city-2-loc-6 city-2-loc-4)
  ; 2566,552 -> 2946,916
  (road city-2-loc-4 city-2-loc-6)
  ; 1245,2346 -> 1257,2005
  (road city-3-loc-2 city-3-loc-1)
  ; 1257,2005 -> 1245,2346
  (road city-3-loc-1 city-3-loc-2)
  ; 1559,2565 -> 1245,2346
  (road city-3-loc-3 city-3-loc-2)
  ; 1245,2346 -> 1559,2565
  (road city-3-loc-2 city-3-loc-3)
  ; 1347,2149 -> 1257,2005
  (road city-3-loc-4 city-3-loc-1)
  ; 1257,2005 -> 1347,2149
  (road city-3-loc-1 city-3-loc-4)
  ; 1347,2149 -> 1245,2346
  (road city-3-loc-4 city-3-loc-2)
  ; 1245,2346 -> 1347,2149
  (road city-3-loc-2 city-3-loc-4)
  ; 1347,2149 -> 1559,2565
  (road city-3-loc-4 city-3-loc-3)
  ; 1559,2565 -> 1347,2149
  (road city-3-loc-3 city-3-loc-4)
  ; 1336,2475 -> 1257,2005
  (road city-3-loc-5 city-3-loc-1)
  ; 1257,2005 -> 1336,2475
  (road city-3-loc-1 city-3-loc-5)
  ; 1336,2475 -> 1245,2346
  (road city-3-loc-5 city-3-loc-2)
  ; 1245,2346 -> 1336,2475
  (road city-3-loc-2 city-3-loc-5)
  ; 1336,2475 -> 1559,2565
  (road city-3-loc-5 city-3-loc-3)
  ; 1559,2565 -> 1336,2475
  (road city-3-loc-3 city-3-loc-5)
  ; 1336,2475 -> 1347,2149
  (road city-3-loc-5 city-3-loc-4)
  ; 1347,2149 -> 1336,2475
  (road city-3-loc-4 city-3-loc-5)
  ; 1170,2709 -> 1245,2346
  (road city-3-loc-6 city-3-loc-2)
  ; 1245,2346 -> 1170,2709
  (road city-3-loc-2 city-3-loc-6)
  ; 1170,2709 -> 1559,2565
  (road city-3-loc-6 city-3-loc-3)
  ; 1559,2565 -> 1170,2709
  (road city-3-loc-3 city-3-loc-6)
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-6 city-3-loc-5)
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-5 city-3-loc-6)
  ; 977,899 <-> 2174,643
  (road city-1-loc-5 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-5)
  (road city-1-loc-4 city-3-loc-3)
  (road city-3-loc-3 city-1-loc-4)
  (road city-2-loc-3 city-3-loc-5)
  (road city-3-loc-5 city-2-loc-3)
  (at package-1 city-1-loc-4)
  (at package-2 city-2-loc-3)
  (at package-3 city-3-loc-1)
  (at package-4 city-1-loc-2)
  (at package-5 city-3-loc-2)
  (at package-6 city-2-loc-2)
  (at package-7 city-1-loc-5)
  (at truck-1 city-2-loc-5)
  (capacity truck-1 capacity-2)
  (at truck-2 city-3-loc-3)
  (capacity truck-2 capacity-2)
  (at truck-3 city-1-loc-4)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-3)
  (at package-2 city-3-loc-4)
  (at package-3 city-3-loc-2)
  (at package-4 city-2-loc-3)
  (at package-5 city-1-loc-4)
  (at package-6 city-3-loc-1)
  (at package-7 city-1-loc-6)
 ))
 (:metric minimize (total-cost))
)
