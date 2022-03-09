; Transport three-cities-sequential-7nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-three-cities-sequential-7nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed)
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
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-3-loc-7 - location
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
 (= (base-drive city-1-loc-7 city-1-loc-5) 43)
 (= (base-drive city-1-loc-5 city-1-loc-7) 43)
 (= (base-drive city-1-loc-7 city-1-loc-6) 43)
 (= (base-drive city-1-loc-6 city-1-loc-7) 43)
 (= (base-drive city-2-loc-2 city-2-loc-1) 47)
 (= (base-drive city-2-loc-1 city-2-loc-2) 47)
 (= (base-drive city-2-loc-3 city-2-loc-1) 24)
 (= (base-drive city-2-loc-1 city-2-loc-3) 24)
 (= (base-drive city-2-loc-3 city-2-loc-2) 32)
 (= (base-drive city-2-loc-2 city-2-loc-3) 32)
 (= (base-drive city-2-loc-4 city-2-loc-1) 42)
 (= (base-drive city-2-loc-1 city-2-loc-4) 42)
 (= (base-drive city-2-loc-4 city-2-loc-2) 24)
 (= (base-drive city-2-loc-2 city-2-loc-4) 24)
 (= (base-drive city-2-loc-4 city-2-loc-3) 41)
 (= (base-drive city-2-loc-3 city-2-loc-4) 41)
 (= (base-drive city-2-loc-5 city-2-loc-1) 41)
 (= (base-drive city-2-loc-1 city-2-loc-5) 41)
 (= (base-drive city-2-loc-6 city-2-loc-3) 47)
 (= (base-drive city-2-loc-3 city-2-loc-6) 47)
 (= (base-drive city-2-loc-7 city-2-loc-2) 29)
 (= (base-drive city-2-loc-2 city-2-loc-7) 29)
 (= (base-drive city-2-loc-7 city-2-loc-4) 13)
 (= (base-drive city-2-loc-4 city-2-loc-7) 13)
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
 (= (base-drive city-3-loc-7 city-3-loc-1) 46)
 (= (base-drive city-3-loc-1 city-3-loc-7) 46)
 (= (base-drive city-3-loc-7 city-3-loc-2) 28)
 (= (base-drive city-3-loc-2 city-3-loc-7) 28)
 (= (base-drive city-3-loc-7 city-3-loc-3) 20)
 (= (base-drive city-3-loc-3 city-3-loc-7) 20)
 (= (base-drive city-3-loc-7 city-3-loc-4) 29)
 (= (base-drive city-3-loc-4 city-3-loc-7) 29)
 (= (base-drive city-3-loc-7 city-3-loc-5) 21)
 (= (base-drive city-3-loc-5 city-3-loc-7) 21)
 (= (base-drive city-3-loc-7 city-3-loc-6) 49)
 (= (base-drive city-3-loc-6 city-3-loc-7) 49)
 (= (base-drive city-1-loc-5 city-2-loc-7) 112)
 (= (base-drive city-2-loc-7 city-1-loc-5) 112)
 (= (base-drive city-1-loc-4 city-3-loc-2) 142)
 (= (base-drive city-3-loc-2 city-1-loc-4) 142)
 (= (base-drive city-2-loc-6 city-3-loc-7) 165)
 (= (base-drive city-3-loc-7 city-2-loc-6) 165)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 7901)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 8534)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-1) 8158)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-1) 6198)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 8363)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 9328)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 3748)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 8169)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 9386)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 10000)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 6466)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 4079)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 6577)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 9976)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 8428)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 4444)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 2928)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 9578)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 2156)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 5649)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 4313)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 7109)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-1) 1585)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-1) 6824)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-1) 3552)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-1) 7221)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 2219)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 8494)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 4898)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 1016)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 2245)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 4054)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 5378)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 9149)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 8805)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 7393)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 9225)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 2719)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-1) 6352)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-1) 4823)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 1066)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 6178)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-1) 5022)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-1) 5800)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-1) 9483)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-1) 2941)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 9216)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 5450)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-1) 5315)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-1) 2809)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-1) 3421)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-1) 4113)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-1) 1855)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-1) 2500)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-1) 3285)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-1) 8152)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-1) 7358)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-1) 3745)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-1) 2242)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-1) 7618)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-1) 9626)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-1) 6398)
  (= (cost-drive city-3-loc-5 city-3-loc-4 truck-1) 4999)
  (= (cost-drive city-3-loc-4 city-3-loc-5 truck-1) 3339)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-1) 9187)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-1) 8454)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-1) 8232)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-1) 8235)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-1) 1545)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-1) 4440)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-1) 6611)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-1) 3148)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-1) 3905)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-1) 7078)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-1) 4186)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-1) 2963)
  (= (cost-drive city-3-loc-7 city-3-loc-4 truck-1) 2994)
  (= (cost-drive city-3-loc-4 city-3-loc-7 truck-1) 4000)
  (= (cost-drive city-3-loc-7 city-3-loc-5 truck-1) 6767)
  (= (cost-drive city-3-loc-5 city-3-loc-7 truck-1) 2966)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-1) 8578)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-1) 8179)
  (= (cost-drive city-1-loc-5 city-2-loc-7 truck-1) 4870)
  (= (cost-drive city-2-loc-7 city-1-loc-5 truck-1) 7401)
  (= (cost-drive city-1-loc-4 city-3-loc-2 truck-1) 4891)
  (= (cost-drive city-3-loc-2 city-1-loc-4 truck-1) 1518)
  (= (cost-drive city-2-loc-6 city-3-loc-7 truck-1) 1374)
  (= (cost-drive city-3-loc-7 city-2-loc-6 truck-1) 5290)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 6724)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 1379)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-2) 2594)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-2) 4056)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 7717)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 2407)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 6904)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 6437)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 6624)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 4121)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 3323)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 5357)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 7915)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 5419)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 9314)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 7834)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 1465)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 9550)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 9520)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 3102)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 2794)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 7196)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-2) 8851)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-2) 7932)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-2) 9020)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-2) 2802)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 8014)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 2296)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 5408)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 4289)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 3497)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 4792)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 8594)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 6559)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 3083)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 7454)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 8487)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 3718)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-2) 2671)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-2) 4838)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 5973)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 3958)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-2) 6077)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-2) 8381)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-2) 4197)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-2) 6423)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 3529)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 9136)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-2) 6421)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-2) 5595)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-2) 4066)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-2) 7303)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-2) 6197)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-2) 7177)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-2) 9007)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-2) 2290)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-2) 7138)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-2) 9290)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-2) 5212)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-2) 6578)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-2) 4383)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-2) 6309)
  (= (cost-drive city-3-loc-5 city-3-loc-4 truck-2) 3068)
  (= (cost-drive city-3-loc-4 city-3-loc-5 truck-2) 2972)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-2) 7770)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-2) 1333)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-2) 7606)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-2) 9537)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-2) 8134)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-2) 2512)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-2) 1964)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-2) 8789)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-2) 8928)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-2) 2905)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-2) 7426)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-2) 4321)
  (= (cost-drive city-3-loc-7 city-3-loc-4 truck-2) 3275)
  (= (cost-drive city-3-loc-4 city-3-loc-7 truck-2) 1554)
  (= (cost-drive city-3-loc-7 city-3-loc-5 truck-2) 1986)
  (= (cost-drive city-3-loc-5 city-3-loc-7 truck-2) 6062)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-2) 4297)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-2) 1005)
  (= (cost-drive city-1-loc-5 city-2-loc-7 truck-2) 3013)
  (= (cost-drive city-2-loc-7 city-1-loc-5 truck-2) 1536)
  (= (cost-drive city-1-loc-4 city-3-loc-2 truck-2) 2355)
  (= (cost-drive city-3-loc-2 city-1-loc-4 truck-2) 2854)
  (= (cost-drive city-2-loc-6 city-3-loc-7 truck-2) 3785)
  (= (cost-drive city-3-loc-7 city-2-loc-6 truck-2) 1806)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 6728)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 5230)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-3) 4151)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-3) 3540)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 9306)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 4043)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-3) 9239)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-3) 2487)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-3) 8135)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-3) 1330)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 4542)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 6212)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 9548)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 9715)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 4790)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 4898)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 3415)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 1077)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 3789)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 8790)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 6566)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 1777)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-3) 1473)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-3) 9732)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-3) 8962)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-3) 4758)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-3) 7185)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-3) 7630)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-3) 6369)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-3) 9725)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-3) 3619)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-3) 2506)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-3) 8627)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-3) 3944)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-3) 2697)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-3) 2468)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-3) 9848)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-3) 9009)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-3) 1541)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-3) 1781)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 1368)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 2359)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-3) 5640)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-3) 9076)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-3) 6737)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-3) 6096)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-3) 5670)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-3) 2550)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-3) 4773)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-3) 8237)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-3) 4440)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-3) 8717)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-3) 2510)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-3) 2266)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-3) 1490)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-3) 4533)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-3) 6246)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-3) 4938)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-3) 9055)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-3) 1181)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-3) 8054)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-3) 6041)
  (= (cost-drive city-3-loc-5 city-3-loc-4 truck-3) 3219)
  (= (cost-drive city-3-loc-4 city-3-loc-5 truck-3) 5269)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-3) 4794)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-3) 8728)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-3) 6892)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-3) 5440)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-3) 1635)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-3) 9061)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-3) 5118)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-3) 1655)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-3) 8465)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-3) 2854)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-3) 9317)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-3) 2452)
  (= (cost-drive city-3-loc-7 city-3-loc-4 truck-3) 3359)
  (= (cost-drive city-3-loc-4 city-3-loc-7 truck-3) 4154)
  (= (cost-drive city-3-loc-7 city-3-loc-5 truck-3) 7703)
  (= (cost-drive city-3-loc-5 city-3-loc-7 truck-3) 3056)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-3) 7839)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-3) 7556)
  (= (cost-drive city-1-loc-5 city-2-loc-7 truck-3) 8610)
  (= (cost-drive city-2-loc-7 city-1-loc-5 truck-3) 9593)
  (= (cost-drive city-1-loc-4 city-3-loc-2 truck-3) 7171)
  (= (cost-drive city-3-loc-2 city-1-loc-4 truck-3) 5486)
  (= (cost-drive city-2-loc-6 city-3-loc-7 truck-3) 4642)
  (= (cost-drive city-3-loc-7 city-2-loc-6 truck-3) 2973)
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
  ; 742,542 -> 977,899
  (road city-1-loc-7 city-1-loc-5)
  ; 977,899 -> 742,542
  (road city-1-loc-5 city-1-loc-7)
  ; 742,542 -> 456,221
  (road city-1-loc-7 city-1-loc-6)
  ; 456,221 -> 742,542
  (road city-1-loc-6 city-1-loc-7)
  ; 2273,425 -> 2564,783
  (road city-2-loc-2 city-2-loc-1)
  ; 2564,783 -> 2273,425
  (road city-2-loc-1 city-2-loc-2)
  ; 2566,552 -> 2564,783
  (road city-2-loc-3 city-2-loc-1)
  ; 2564,783 -> 2566,552
  (road city-2-loc-1 city-2-loc-3)
  ; 2566,552 -> 2273,425
  (road city-2-loc-3 city-2-loc-2)
  ; 2273,425 -> 2566,552
  (road city-2-loc-2 city-2-loc-3)
  ; 2174,643 -> 2564,783
  (road city-2-loc-4 city-2-loc-1)
  ; 2564,783 -> 2174,643
  (road city-2-loc-1 city-2-loc-4)
  ; 2174,643 -> 2273,425
  (road city-2-loc-4 city-2-loc-2)
  ; 2273,425 -> 2174,643
  (road city-2-loc-2 city-2-loc-4)
  ; 2174,643 -> 2566,552
  (road city-2-loc-4 city-2-loc-3)
  ; 2566,552 -> 2174,643
  (road city-2-loc-3 city-2-loc-4)
  ; 2946,916 -> 2564,783
  (road city-2-loc-5 city-2-loc-1)
  ; 2564,783 -> 2946,916
  (road city-2-loc-1 city-2-loc-5)
  ; 2930,259 -> 2566,552
  (road city-2-loc-6 city-2-loc-3)
  ; 2566,552 -> 2930,259
  (road city-2-loc-3 city-2-loc-6)
  ; 2055,605 -> 2273,425
  (road city-2-loc-7 city-2-loc-2)
  ; 2273,425 -> 2055,605
  (road city-2-loc-2 city-2-loc-7)
  ; 2055,605 -> 2174,643
  (road city-2-loc-7 city-2-loc-4)
  ; 2174,643 -> 2055,605
  (road city-2-loc-4 city-2-loc-7)
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
  ; 1521,2375 -> 1257,2005
  (road city-3-loc-7 city-3-loc-1)
  ; 1257,2005 -> 1521,2375
  (road city-3-loc-1 city-3-loc-7)
  ; 1521,2375 -> 1245,2346
  (road city-3-loc-7 city-3-loc-2)
  ; 1245,2346 -> 1521,2375
  (road city-3-loc-2 city-3-loc-7)
  ; 1521,2375 -> 1559,2565
  (road city-3-loc-7 city-3-loc-3)
  ; 1559,2565 -> 1521,2375
  (road city-3-loc-3 city-3-loc-7)
  ; 1521,2375 -> 1347,2149
  (road city-3-loc-7 city-3-loc-4)
  ; 1347,2149 -> 1521,2375
  (road city-3-loc-4 city-3-loc-7)
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-7 city-3-loc-5)
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-5 city-3-loc-7)
  ; 1521,2375 -> 1170,2709
  (road city-3-loc-7 city-3-loc-6)
  ; 1170,2709 -> 1521,2375
  (road city-3-loc-6 city-3-loc-7)
  ; 977,899 <-> 2055,605
  (road city-1-loc-5 city-2-loc-7)
  (road city-2-loc-7 city-1-loc-5)
  (road city-1-loc-4 city-3-loc-2)
  (road city-3-loc-2 city-1-loc-4)
  (road city-2-loc-6 city-3-loc-7)
  (road city-3-loc-7 city-2-loc-6)
  (at package-1 city-3-loc-1)
  (at package-2 city-1-loc-2)
  (at package-3 city-3-loc-2)
  (at package-4 city-2-loc-2)
  (at package-5 city-1-loc-5)
  (at package-6 city-2-loc-6)
  (at package-7 city-1-loc-6)
  (at package-8 city-2-loc-2)
  (at truck-1 city-1-loc-4)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-3)
  (capacity truck-2 capacity-4)
  (at truck-3 city-2-loc-5)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-3)
  (at package-2 city-1-loc-5)
  (at package-3 city-3-loc-1)
  (at package-4 city-1-loc-7)
  (at package-5 city-1-loc-1)
  (at package-6 city-2-loc-2)
  (at package-7 city-3-loc-2)
  (at package-8 city-2-loc-3)
 ))
 (:metric minimize (total-cost))
)
