; Transport three-cities-sequential-9nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed

(define (problem transport-three-cities-sequential-9nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed)
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
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-3-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-3-loc-9 - location
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
 (= (base-drive city-1-loc-3 city-1-loc-1) 22)
 (= (base-drive city-1-loc-1 city-1-loc-3) 22)
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
 (= (base-drive city-1-loc-8 city-1-loc-1) 41)
 (= (base-drive city-1-loc-1 city-1-loc-8) 41)
 (= (base-drive city-1-loc-8 city-1-loc-3) 44)
 (= (base-drive city-1-loc-3 city-1-loc-8) 44)
 (= (base-drive city-1-loc-8 city-1-loc-4) 35)
 (= (base-drive city-1-loc-4 city-1-loc-8) 35)
 (= (base-drive city-1-loc-8 city-1-loc-5) 43)
 (= (base-drive city-1-loc-5 city-1-loc-8) 43)
 (= (base-drive city-1-loc-8 city-1-loc-7) 30)
 (= (base-drive city-1-loc-7 city-1-loc-8) 30)
 (= (base-drive city-1-loc-9 city-1-loc-2) 40)
 (= (base-drive city-1-loc-2 city-1-loc-9) 40)
 (= (base-drive city-1-loc-9 city-1-loc-6) 28)
 (= (base-drive city-1-loc-6 city-1-loc-9) 28)
 (= (base-drive city-2-loc-4 city-2-loc-2) 26)
 (= (base-drive city-2-loc-2 city-2-loc-4) 26)
 (= (base-drive city-2-loc-5 city-2-loc-2) 20)
 (= (base-drive city-2-loc-2 city-2-loc-5) 20)
 (= (base-drive city-2-loc-5 city-2-loc-4) 39)
 (= (base-drive city-2-loc-4 city-2-loc-5) 39)
 (= (base-drive city-2-loc-6 city-2-loc-3) 11)
 (= (base-drive city-2-loc-3 city-2-loc-6) 11)
 (= (base-drive city-2-loc-7 city-2-loc-1) 45)
 (= (base-drive city-2-loc-1 city-2-loc-7) 45)
 (= (base-drive city-2-loc-7 city-2-loc-2) 27)
 (= (base-drive city-2-loc-2 city-2-loc-7) 27)
 (= (base-drive city-2-loc-7 city-2-loc-5) 38)
 (= (base-drive city-2-loc-5 city-2-loc-7) 38)
 (= (base-drive city-2-loc-8 city-2-loc-3) 26)
 (= (base-drive city-2-loc-3 city-2-loc-8) 26)
 (= (base-drive city-2-loc-8 city-2-loc-6) 26)
 (= (base-drive city-2-loc-6 city-2-loc-8) 26)
 (= (base-drive city-2-loc-9 city-2-loc-3) 28)
 (= (base-drive city-2-loc-3 city-2-loc-9) 28)
 (= (base-drive city-2-loc-9 city-2-loc-6) 38)
 (= (base-drive city-2-loc-6 city-2-loc-9) 38)
 (= (base-drive city-2-loc-9 city-2-loc-7) 45)
 (= (base-drive city-2-loc-7 city-2-loc-9) 45)
 (= (base-drive city-2-loc-9 city-2-loc-8) 35)
 (= (base-drive city-2-loc-8 city-2-loc-9) 35)
 (= (base-drive city-3-loc-3 city-3-loc-1) 24)
 (= (base-drive city-3-loc-1 city-3-loc-3) 24)
 (= (base-drive city-3-loc-3 city-3-loc-2) 33)
 (= (base-drive city-3-loc-2 city-3-loc-3) 33)
 (= (base-drive city-3-loc-4 city-3-loc-1) 42)
 (= (base-drive city-3-loc-1 city-3-loc-4) 42)
 (= (base-drive city-3-loc-4 city-3-loc-3) 29)
 (= (base-drive city-3-loc-3 city-3-loc-4) 29)
 (= (base-drive city-3-loc-5 city-3-loc-1) 20)
 (= (base-drive city-3-loc-1 city-3-loc-5) 20)
 (= (base-drive city-3-loc-5 city-3-loc-2) 29)
 (= (base-drive city-3-loc-2 city-3-loc-5) 29)
 (= (base-drive city-3-loc-5 city-3-loc-3) 21)
 (= (base-drive city-3-loc-3 city-3-loc-5) 21)
 (= (base-drive city-3-loc-6 city-3-loc-2) 39)
 (= (base-drive city-3-loc-2 city-3-loc-6) 39)
 (= (base-drive city-3-loc-6 city-3-loc-5) 42)
 (= (base-drive city-3-loc-5 city-3-loc-6) 42)
 (= (base-drive city-3-loc-7 city-3-loc-1) 37)
 (= (base-drive city-3-loc-1 city-3-loc-7) 37)
 (= (base-drive city-3-loc-7 city-3-loc-2) 39)
 (= (base-drive city-3-loc-2 city-3-loc-7) 39)
 (= (base-drive city-3-loc-7 city-3-loc-3) 45)
 (= (base-drive city-3-loc-3 city-3-loc-7) 45)
 (= (base-drive city-3-loc-7 city-3-loc-5) 24)
 (= (base-drive city-3-loc-5 city-3-loc-7) 24)
 (= (base-drive city-3-loc-7 city-3-loc-6) 25)
 (= (base-drive city-3-loc-6 city-3-loc-7) 25)
 (= (base-drive city-3-loc-8 city-3-loc-1) 18)
 (= (base-drive city-3-loc-1 city-3-loc-8) 18)
 (= (base-drive city-3-loc-8 city-3-loc-3) 39)
 (= (base-drive city-3-loc-3 city-3-loc-8) 39)
 (= (base-drive city-3-loc-8 city-3-loc-5) 37)
 (= (base-drive city-3-loc-5 city-3-loc-8) 37)
 (= (base-drive city-3-loc-9 city-3-loc-3) 44)
 (= (base-drive city-3-loc-3 city-3-loc-9) 44)
 (= (base-drive city-3-loc-9 city-3-loc-4) 16)
 (= (base-drive city-3-loc-4 city-3-loc-9) 16)
 (= (base-drive city-1-loc-1 city-2-loc-6) 122)
 (= (base-drive city-2-loc-6 city-1-loc-1) 122)
 (= (base-drive city-1-loc-8 city-3-loc-9) 174)
 (= (base-drive city-3-loc-9 city-1-loc-8) 174)
 (= (base-drive city-2-loc-2 city-3-loc-6) 163)
 (= (base-drive city-3-loc-6 city-2-loc-2) 163)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 9587)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 5316)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 2608)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 9145)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 2202)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 6825)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 6406)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 1126)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 9299)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 5846)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 8860)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 3395)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 8273)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 5422)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 5405)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 7362)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 4067)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 7842)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 4277)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 4650)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-1) 5771)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-1) 5274)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-1) 6747)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-1) 7480)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-1) 3159)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-1) 8083)
  (= (cost-drive city-1-loc-8 city-1-loc-3 truck-1) 8265)
  (= (cost-drive city-1-loc-3 city-1-loc-8 truck-1) 2037)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 9096)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 1018)
  (= (cost-drive city-1-loc-8 city-1-loc-5 truck-1) 5821)
  (= (cost-drive city-1-loc-5 city-1-loc-8 truck-1) 4477)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 7872)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 9437)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-1) 1719)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-1) 3001)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 3170)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 1257)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 7678)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 8338)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-1) 7468)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-1) 4986)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-1) 3324)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-1) 7370)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 7865)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 7369)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-1) 8782)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-1) 1722)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-1) 9617)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-1) 5531)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-1) 7045)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-1) 5085)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-1) 2595)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-1) 5352)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 7672)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 5843)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-1) 9765)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-1) 6006)
  (= (cost-drive city-2-loc-9 city-2-loc-6 truck-1) 5293)
  (= (cost-drive city-2-loc-6 city-2-loc-9 truck-1) 4981)
  (= (cost-drive city-2-loc-9 city-2-loc-7 truck-1) 2185)
  (= (cost-drive city-2-loc-7 city-2-loc-9 truck-1) 8752)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-1) 4884)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-1) 3186)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-1) 1607)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-1) 6988)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-1) 9489)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-1) 6573)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-1) 8106)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-1) 6459)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-1) 2510)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-1) 4746)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-1) 7747)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-1) 3092)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-1) 8727)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-1) 2613)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-1) 5458)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-1) 4871)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-1) 3042)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-1) 7244)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-1) 8982)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-1) 8362)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-1) 9059)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-1) 1886)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-1) 1154)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-1) 1184)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-1) 5324)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-1) 8182)
  (= (cost-drive city-3-loc-7 city-3-loc-5 truck-1) 8335)
  (= (cost-drive city-3-loc-5 city-3-loc-7 truck-1) 4693)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-1) 7310)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-1) 7288)
  (= (cost-drive city-3-loc-8 city-3-loc-1 truck-1) 9344)
  (= (cost-drive city-3-loc-1 city-3-loc-8 truck-1) 8054)
  (= (cost-drive city-3-loc-8 city-3-loc-3 truck-1) 6570)
  (= (cost-drive city-3-loc-3 city-3-loc-8 truck-1) 7688)
  (= (cost-drive city-3-loc-8 city-3-loc-5 truck-1) 1489)
  (= (cost-drive city-3-loc-5 city-3-loc-8 truck-1) 9970)
  (= (cost-drive city-3-loc-9 city-3-loc-3 truck-1) 3939)
  (= (cost-drive city-3-loc-3 city-3-loc-9 truck-1) 4480)
  (= (cost-drive city-3-loc-9 city-3-loc-4 truck-1) 1995)
  (= (cost-drive city-3-loc-4 city-3-loc-9 truck-1) 6752)
  (= (cost-drive city-1-loc-1 city-2-loc-6 truck-1) 8829)
  (= (cost-drive city-2-loc-6 city-1-loc-1 truck-1) 2966)
  (= (cost-drive city-1-loc-8 city-3-loc-9 truck-1) 7039)
  (= (cost-drive city-3-loc-9 city-1-loc-8 truck-1) 2683)
  (= (cost-drive city-2-loc-2 city-3-loc-6 truck-1) 8214)
  (= (cost-drive city-3-loc-6 city-2-loc-2 truck-1) 1632)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 8319)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 9263)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 7419)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 3854)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 9181)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 2484)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 2697)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 5339)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 9259)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 8911)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 6451)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 8004)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 3506)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 6032)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 2656)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 9638)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 6050)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 4095)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 5152)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 4382)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-2) 8367)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-2) 5748)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-2) 6460)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-2) 7200)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-2) 4227)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-2) 8232)
  (= (cost-drive city-1-loc-8 city-1-loc-3 truck-2) 6916)
  (= (cost-drive city-1-loc-3 city-1-loc-8 truck-2) 5612)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 2378)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 8601)
  (= (cost-drive city-1-loc-8 city-1-loc-5 truck-2) 1770)
  (= (cost-drive city-1-loc-5 city-1-loc-8 truck-2) 7683)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 5368)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 3889)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-2) 6664)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-2) 4529)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 4373)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 5534)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 4091)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 5470)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-2) 5154)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-2) 1718)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-2) 9886)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-2) 9392)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 1931)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 9114)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-2) 9824)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-2) 6058)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-2) 2162)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-2) 4550)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-2) 8505)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-2) 8130)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-2) 7067)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-2) 3473)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 1082)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 8533)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-2) 1346)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-2) 6022)
  (= (cost-drive city-2-loc-9 city-2-loc-6 truck-2) 9387)
  (= (cost-drive city-2-loc-6 city-2-loc-9 truck-2) 6459)
  (= (cost-drive city-2-loc-9 city-2-loc-7 truck-2) 4839)
  (= (cost-drive city-2-loc-7 city-2-loc-9 truck-2) 5482)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-2) 2904)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-2) 7932)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-2) 8152)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-2) 7969)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-2) 9103)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-2) 1946)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-2) 6199)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-2) 2269)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-2) 7589)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-2) 5743)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-2) 2063)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-2) 8692)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-2) 8306)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-2) 8584)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-2) 1085)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-2) 1806)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-2) 6043)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-2) 6265)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-2) 9146)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-2) 8360)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-2) 5403)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-2) 2633)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-2) 5332)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-2) 3311)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-2) 7939)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-2) 2562)
  (= (cost-drive city-3-loc-7 city-3-loc-5 truck-2) 3641)
  (= (cost-drive city-3-loc-5 city-3-loc-7 truck-2) 3622)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-2) 1566)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-2) 1729)
  (= (cost-drive city-3-loc-8 city-3-loc-1 truck-2) 3937)
  (= (cost-drive city-3-loc-1 city-3-loc-8 truck-2) 1020)
  (= (cost-drive city-3-loc-8 city-3-loc-3 truck-2) 3275)
  (= (cost-drive city-3-loc-3 city-3-loc-8 truck-2) 4994)
  (= (cost-drive city-3-loc-8 city-3-loc-5 truck-2) 6175)
  (= (cost-drive city-3-loc-5 city-3-loc-8 truck-2) 1022)
  (= (cost-drive city-3-loc-9 city-3-loc-3 truck-2) 6143)
  (= (cost-drive city-3-loc-3 city-3-loc-9 truck-2) 7515)
  (= (cost-drive city-3-loc-9 city-3-loc-4 truck-2) 3904)
  (= (cost-drive city-3-loc-4 city-3-loc-9 truck-2) 4324)
  (= (cost-drive city-1-loc-1 city-2-loc-6 truck-2) 8933)
  (= (cost-drive city-2-loc-6 city-1-loc-1 truck-2) 9800)
  (= (cost-drive city-1-loc-8 city-3-loc-9 truck-2) 9950)
  (= (cost-drive city-3-loc-9 city-1-loc-8 truck-2) 3332)
  (= (cost-drive city-2-loc-2 city-3-loc-6 truck-2) 6913)
  (= (cost-drive city-3-loc-6 city-2-loc-2 truck-2) 6024)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 5467)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 1437)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 4770)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 3118)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-3) 5005)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-3) 5221)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-3) 4753)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-3) 2532)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 4956)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 2521)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 1774)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 6887)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 6727)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 4245)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 2393)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 6393)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 4380)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 1765)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 2005)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 4878)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-3) 2310)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-3) 5124)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-3) 3614)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-3) 6896)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-3) 5918)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-3) 1573)
  (= (cost-drive city-1-loc-8 city-1-loc-3 truck-3) 1412)
  (= (cost-drive city-1-loc-3 city-1-loc-8 truck-3) 8322)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-3) 7464)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-3) 8909)
  (= (cost-drive city-1-loc-8 city-1-loc-5 truck-3) 6035)
  (= (cost-drive city-1-loc-5 city-1-loc-8 truck-3) 8133)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 2425)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 7624)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-3) 2510)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-3) 3740)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 9029)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 3843)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-3) 5896)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-3) 6667)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-3) 3815)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-3) 9057)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-3) 9230)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-3) 4789)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 7752)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 7709)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-3) 5091)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-3) 1010)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-3) 9735)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-3) 1571)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-3) 6841)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-3) 6950)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-3) 7305)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-3) 2759)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-3) 5199)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-3) 9327)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-3) 3708)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-3) 4298)
  (= (cost-drive city-2-loc-9 city-2-loc-6 truck-3) 6167)
  (= (cost-drive city-2-loc-6 city-2-loc-9 truck-3) 4928)
  (= (cost-drive city-2-loc-9 city-2-loc-7 truck-3) 4666)
  (= (cost-drive city-2-loc-7 city-2-loc-9 truck-3) 6905)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-3) 7766)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-3) 2017)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-3) 7312)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-3) 8827)
  (= (cost-drive city-3-loc-3 city-3-loc-2 truck-3) 8648)
  (= (cost-drive city-3-loc-2 city-3-loc-3 truck-3) 8242)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-3) 7294)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-3) 6940)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-3) 2548)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-3) 1305)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-3) 6192)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-3) 4741)
  (= (cost-drive city-3-loc-5 city-3-loc-2 truck-3) 3455)
  (= (cost-drive city-3-loc-2 city-3-loc-5 truck-3) 5443)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-3) 2109)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-3) 8470)
  (= (cost-drive city-3-loc-6 city-3-loc-2 truck-3) 6194)
  (= (cost-drive city-3-loc-2 city-3-loc-6 truck-3) 8207)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-3) 1714)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-3) 7126)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-3) 7057)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-3) 5475)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-3) 5617)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-3) 7328)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-3) 7800)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-3) 8073)
  (= (cost-drive city-3-loc-7 city-3-loc-5 truck-3) 2815)
  (= (cost-drive city-3-loc-5 city-3-loc-7 truck-3) 7217)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-3) 1652)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-3) 1356)
  (= (cost-drive city-3-loc-8 city-3-loc-1 truck-3) 4908)
  (= (cost-drive city-3-loc-1 city-3-loc-8 truck-3) 8027)
  (= (cost-drive city-3-loc-8 city-3-loc-3 truck-3) 3302)
  (= (cost-drive city-3-loc-3 city-3-loc-8 truck-3) 5865)
  (= (cost-drive city-3-loc-8 city-3-loc-5 truck-3) 6125)
  (= (cost-drive city-3-loc-5 city-3-loc-8 truck-3) 9925)
  (= (cost-drive city-3-loc-9 city-3-loc-3 truck-3) 8507)
  (= (cost-drive city-3-loc-3 city-3-loc-9 truck-3) 3185)
  (= (cost-drive city-3-loc-9 city-3-loc-4 truck-3) 6815)
  (= (cost-drive city-3-loc-4 city-3-loc-9 truck-3) 3346)
  (= (cost-drive city-1-loc-1 city-2-loc-6 truck-3) 4852)
  (= (cost-drive city-2-loc-6 city-1-loc-1 truck-3) 6114)
  (= (cost-drive city-1-loc-8 city-3-loc-9 truck-3) 6117)
  (= (cost-drive city-3-loc-9 city-1-loc-8 truck-3) 9342)
  (= (cost-drive city-2-loc-2 city-3-loc-6 truck-3) 6521)
  (= (cost-drive city-3-loc-6 city-2-loc-2 truck-3) 7463)
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
  ; 564,783 -> 890,543
  (road city-1-loc-8 city-1-loc-1)
  ; 890,543 -> 564,783
  (road city-1-loc-1 city-1-loc-8)
  ; 564,783 -> 748,385
  (road city-1-loc-8 city-1-loc-3)
  ; 748,385 -> 564,783
  (road city-1-loc-3 city-1-loc-8)
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  ; 564,783 -> 977,899
  (road city-1-loc-8 city-1-loc-5)
  ; 977,899 -> 564,783
  (road city-1-loc-5 city-1-loc-8)
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
  ; 2362,862 -> 2589,754
  (road city-2-loc-4 city-2-loc-2)
  ; 2589,754 -> 2362,862
  (road city-2-loc-2 city-2-loc-4)
  ; 2748,863 -> 2589,754
  (road city-2-loc-5 city-2-loc-2)
  ; 2589,754 -> 2748,863
  (road city-2-loc-2 city-2-loc-5)
  ; 2748,863 -> 2362,862
  (road city-2-loc-5 city-2-loc-4)
  ; 2362,862 -> 2748,863
  (road city-2-loc-4 city-2-loc-5)
  ; 2006,60 -> 2053,153
  (road city-2-loc-6 city-2-loc-3)
  ; 2053,153 -> 2006,60
  (road city-2-loc-3 city-2-loc-6)
  ; 2659,497 -> 2988,202
  (road city-2-loc-7 city-2-loc-1)
  ; 2988,202 -> 2659,497
  (road city-2-loc-1 city-2-loc-7)
  ; 2659,497 -> 2589,754
  (road city-2-loc-7 city-2-loc-2)
  ; 2589,754 -> 2659,497
  (road city-2-loc-2 city-2-loc-7)
  ; 2659,497 -> 2748,863
  (road city-2-loc-7 city-2-loc-5)
  ; 2748,863 -> 2659,497
  (road city-2-loc-5 city-2-loc-7)
  ; 2257,5 -> 2053,153
  (road city-2-loc-8 city-2-loc-3)
  ; 2053,153 -> 2257,5
  (road city-2-loc-3 city-2-loc-8)
  ; 2257,5 -> 2006,60
  (road city-2-loc-8 city-2-loc-6)
  ; 2006,60 -> 2257,5
  (road city-2-loc-6 city-2-loc-8)
  ; 2245,346 -> 2053,153
  (road city-2-loc-9 city-2-loc-3)
  ; 2053,153 -> 2245,346
  (road city-2-loc-3 city-2-loc-9)
  ; 2245,346 -> 2006,60
  (road city-2-loc-9 city-2-loc-6)
  ; 2006,60 -> 2245,346
  (road city-2-loc-6 city-2-loc-9)
  ; 2245,346 -> 2659,497
  (road city-2-loc-9 city-2-loc-7)
  ; 2659,497 -> 2245,346
  (road city-2-loc-7 city-2-loc-9)
  ; 2245,346 -> 2257,5
  (road city-2-loc-9 city-2-loc-8)
  ; 2257,5 -> 2245,346
  (road city-2-loc-8 city-2-loc-9)
  ; 1336,2475 -> 1559,2565
  (road city-3-loc-3 city-3-loc-1)
  ; 1559,2565 -> 1336,2475
  (road city-3-loc-1 city-3-loc-3)
  ; 1336,2475 -> 1347,2149
  (road city-3-loc-3 city-3-loc-2)
  ; 1347,2149 -> 1336,2475
  (road city-3-loc-2 city-3-loc-3)
  ; 1170,2709 -> 1559,2565
  (road city-3-loc-4 city-3-loc-1)
  ; 1559,2565 -> 1170,2709
  (road city-3-loc-1 city-3-loc-4)
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-4 city-3-loc-3)
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-3 city-3-loc-4)
  ; 1521,2375 -> 1559,2565
  (road city-3-loc-5 city-3-loc-1)
  ; 1559,2565 -> 1521,2375
  (road city-3-loc-1 city-3-loc-5)
  ; 1521,2375 -> 1347,2149
  (road city-3-loc-5 city-3-loc-2)
  ; 1347,2149 -> 1521,2375
  (road city-3-loc-2 city-3-loc-5)
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-5 city-3-loc-3)
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-3 city-3-loc-5)
  ; 1701,2000 -> 1347,2149
  (road city-3-loc-6 city-3-loc-2)
  ; 1347,2149 -> 1701,2000
  (road city-3-loc-2 city-3-loc-6)
  ; 1701,2000 -> 1521,2375
  (road city-3-loc-6 city-3-loc-5)
  ; 1521,2375 -> 1701,2000
  (road city-3-loc-5 city-3-loc-6)
  ; 1720,2241 -> 1559,2565
  (road city-3-loc-7 city-3-loc-1)
  ; 1559,2565 -> 1720,2241
  (road city-3-loc-1 city-3-loc-7)
  ; 1720,2241 -> 1347,2149
  (road city-3-loc-7 city-3-loc-2)
  ; 1347,2149 -> 1720,2241
  (road city-3-loc-2 city-3-loc-7)
  ; 1720,2241 -> 1336,2475
  (road city-3-loc-7 city-3-loc-3)
  ; 1336,2475 -> 1720,2241
  (road city-3-loc-3 city-3-loc-7)
  ; 1720,2241 -> 1521,2375
  (road city-3-loc-7 city-3-loc-5)
  ; 1521,2375 -> 1720,2241
  (road city-3-loc-5 city-3-loc-7)
  ; 1720,2241 -> 1701,2000
  (road city-3-loc-7 city-3-loc-6)
  ; 1701,2000 -> 1720,2241
  (road city-3-loc-6 city-3-loc-7)
  ; 1630,2722 -> 1559,2565
  (road city-3-loc-8 city-3-loc-1)
  ; 1559,2565 -> 1630,2722
  (road city-3-loc-1 city-3-loc-8)
  ; 1630,2722 -> 1336,2475
  (road city-3-loc-8 city-3-loc-3)
  ; 1336,2475 -> 1630,2722
  (road city-3-loc-3 city-3-loc-8)
  ; 1630,2722 -> 1521,2375
  (road city-3-loc-8 city-3-loc-5)
  ; 1521,2375 -> 1630,2722
  (road city-3-loc-5 city-3-loc-8)
  ; 1120,2854 -> 1336,2475
  (road city-3-loc-9 city-3-loc-3)
  ; 1336,2475 -> 1120,2854
  (road city-3-loc-3 city-3-loc-9)
  ; 1120,2854 -> 1170,2709
  (road city-3-loc-9 city-3-loc-4)
  ; 1170,2709 -> 1120,2854
  (road city-3-loc-4 city-3-loc-9)
  ; 890,543 <-> 2006,60
  (road city-1-loc-1 city-2-loc-6)
  (road city-2-loc-6 city-1-loc-1)
  (road city-1-loc-8 city-3-loc-9)
  (road city-3-loc-9 city-1-loc-8)
  (road city-2-loc-2 city-3-loc-6)
  (road city-3-loc-6 city-2-loc-2)
  (at package-1 city-2-loc-3)
  (at package-2 city-1-loc-5)
  (at package-3 city-2-loc-6)
  (at package-4 city-2-loc-7)
  (at package-5 city-2-loc-7)
  (at package-6 city-1-loc-5)
  (at package-7 city-2-loc-3)
  (at package-8 city-2-loc-7)
  (at package-9 city-1-loc-3)
  (at package-10 city-3-loc-2)
  (at truck-1 city-1-loc-5)
  (capacity truck-1 capacity-2)
  (at truck-2 city-3-loc-3)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-2)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-3-loc-5)
  (at package-2 city-2-loc-4)
  (at package-3 city-2-loc-2)
  (at package-4 city-3-loc-5)
  (at package-5 city-3-loc-9)
  (at package-6 city-1-loc-3)
  (at package-7 city-2-loc-5)
  (at package-8 city-3-loc-8)
  (at package-9 city-1-loc-6)
  (at package-10 city-3-loc-6)
 ))
 (:metric minimize (total-cost))
)
