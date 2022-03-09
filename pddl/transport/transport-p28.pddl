; Transport three-cities-sequential-8nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed

(define (problem transport-three-cities-sequential-8nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed)
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
 (= (base-drive city-2-loc-2 city-2-loc-1) 32)
 (= (base-drive city-2-loc-1 city-2-loc-2) 32)
 (= (base-drive city-2-loc-3 city-2-loc-1) 24)
 (= (base-drive city-2-loc-1 city-2-loc-3) 24)
 (= (base-drive city-2-loc-3 city-2-loc-2) 41)
 (= (base-drive city-2-loc-2 city-2-loc-3) 41)
 (= (base-drive city-2-loc-5 city-2-loc-2) 47)
 (= (base-drive city-2-loc-2 city-2-loc-5) 47)
 (= (base-drive city-2-loc-6 city-2-loc-1) 29)
 (= (base-drive city-2-loc-1 city-2-loc-6) 29)
 (= (base-drive city-2-loc-6 city-2-loc-3) 13)
 (= (base-drive city-2-loc-3 city-2-loc-6) 13)
 (= (base-drive city-2-loc-7 city-2-loc-2) 39)
 (= (base-drive city-2-loc-2 city-2-loc-7) 39)
 (= (base-drive city-2-loc-7 city-2-loc-4) 16)
 (= (base-drive city-2-loc-4 city-2-loc-7) 16)
 (= (base-drive city-2-loc-8 city-2-loc-1) 15)
 (= (base-drive city-2-loc-1 city-2-loc-8) 15)
 (= (base-drive city-2-loc-8 city-2-loc-2) 31)
 (= (base-drive city-2-loc-2 city-2-loc-8) 31)
 (= (base-drive city-2-loc-8 city-2-loc-3) 12)
 (= (base-drive city-2-loc-3 city-2-loc-8) 12)
 (= (base-drive city-2-loc-8 city-2-loc-6) 22)
 (= (base-drive city-2-loc-6 city-2-loc-8) 22)
 (= (base-drive city-3-loc-2 city-3-loc-1) 39)
 (= (base-drive city-3-loc-1 city-3-loc-2) 39)
 (= (base-drive city-3-loc-4 city-3-loc-1) 48)
 (= (base-drive city-3-loc-1 city-3-loc-4) 48)
 (= (base-drive city-3-loc-4 city-3-loc-2) 38)
 (= (base-drive city-3-loc-2 city-3-loc-4) 38)
 (= (base-drive city-3-loc-5 city-3-loc-3) 26)
 (= (base-drive city-3-loc-3 city-3-loc-5) 26)
 (= (base-drive city-3-loc-6 city-3-loc-3) 38)
 (= (base-drive city-3-loc-3 city-3-loc-6) 38)
 (= (base-drive city-3-loc-6 city-3-loc-4) 45)
 (= (base-drive city-3-loc-4 city-3-loc-6) 45)
 (= (base-drive city-3-loc-6 city-3-loc-5) 35)
 (= (base-drive city-3-loc-5 city-3-loc-6) 35)
 (= (base-drive city-3-loc-7 city-3-loc-1) 36)
 (= (base-drive city-3-loc-1 city-3-loc-7) 36)
 (= (base-drive city-3-loc-7 city-3-loc-2) 36)
 (= (base-drive city-3-loc-2 city-3-loc-7) 36)
 (= (base-drive city-3-loc-7 city-3-loc-4) 13)
 (= (base-drive city-3-loc-4 city-3-loc-7) 13)
 (= (base-drive city-3-loc-7 city-3-loc-6) 39)
 (= (base-drive city-3-loc-6 city-3-loc-7) 39)
 (= (base-drive city-3-loc-8 city-3-loc-3) 36)
 (= (base-drive city-3-loc-3 city-3-loc-8) 36)
 (= (base-drive city-3-loc-8 city-3-loc-4) 47)
 (= (base-drive city-3-loc-4 city-3-loc-8) 47)
 (= (base-drive city-3-loc-8 city-3-loc-5) 17)
 (= (base-drive city-3-loc-5 city-3-loc-8) 17)
 (= (base-drive city-3-loc-8 city-3-loc-6) 23)
 (= (base-drive city-3-loc-6 city-3-loc-8) 23)
 (= (base-drive city-3-loc-8 city-3-loc-7) 47)
 (= (base-drive city-3-loc-7 city-3-loc-8) 47)
 (= (base-drive city-1-loc-5 city-2-loc-6) 112)
 (= (base-drive city-2-loc-6 city-1-loc-5) 112)
 (= (base-drive city-1-loc-1 city-3-loc-1) 139)
 (= (base-drive city-3-loc-1 city-1-loc-1) 139)
 (= (base-drive city-2-loc-1 city-3-loc-1) 139)
 (= (base-drive city-3-loc-1 city-2-loc-1) 139)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 9885)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 5115)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 3176)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 9405)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 5169)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 8113)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 4707)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 5403)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 3257)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 3923)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 9907)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 3415)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 9921)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 9815)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 2695)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 6001)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 3357)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 5047)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 8837)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 6346)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-1) 3275)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-1) 4812)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-1) 2870)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-1) 6990)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-1) 7608)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-1) 8088)
  (= (cost-drive city-1-loc-8 city-1-loc-3 truck-1) 5728)
  (= (cost-drive city-1-loc-3 city-1-loc-8 truck-1) 4830)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 3285)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 6611)
  (= (cost-drive city-1-loc-8 city-1-loc-5 truck-1) 6041)
  (= (cost-drive city-1-loc-5 city-1-loc-8 truck-1) 9896)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 9505)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 7480)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 5762)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 1610)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 2399)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 3474)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 7297)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 2182)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-1) 1756)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-1) 6562)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-1) 4870)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-1) 8929)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 3088)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 3760)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-1) 6502)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-1) 7379)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-1) 4010)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-1) 6275)
  (= (cost-drive city-2-loc-8 city-2-loc-1 truck-1) 4257)
  (= (cost-drive city-2-loc-1 city-2-loc-8 truck-1) 4993)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-1) 3155)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-1) 7441)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-1) 6203)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-1) 2620)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 7704)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 6325)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 3444)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 7819)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-1) 9425)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-1) 6636)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-1) 5437)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-1) 7784)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-1) 4524)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-1) 5569)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-1) 7676)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-1) 9598)
  (= (cost-drive city-3-loc-6 city-3-loc-4 truck-1) 6134)
  (= (cost-drive city-3-loc-4 city-3-loc-6 truck-1) 4916)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-1) 7944)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-1) 8025)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-1) 2775)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-1) 2152)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-1) 8452)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-1) 6566)
  (= (cost-drive city-3-loc-7 city-3-loc-4 truck-1) 3846)
  (= (cost-drive city-3-loc-4 city-3-loc-7 truck-1) 3426)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-1) 8556)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-1) 3544)
  (= (cost-drive city-3-loc-8 city-3-loc-3 truck-1) 8368)
  (= (cost-drive city-3-loc-3 city-3-loc-8 truck-1) 1502)
  (= (cost-drive city-3-loc-8 city-3-loc-4 truck-1) 5655)
  (= (cost-drive city-3-loc-4 city-3-loc-8 truck-1) 3238)
  (= (cost-drive city-3-loc-8 city-3-loc-5 truck-1) 6928)
  (= (cost-drive city-3-loc-5 city-3-loc-8 truck-1) 5407)
  (= (cost-drive city-3-loc-8 city-3-loc-6 truck-1) 7144)
  (= (cost-drive city-3-loc-6 city-3-loc-8 truck-1) 4519)
  (= (cost-drive city-3-loc-8 city-3-loc-7 truck-1) 1813)
  (= (cost-drive city-3-loc-7 city-3-loc-8 truck-1) 1248)
  (= (cost-drive city-1-loc-5 city-2-loc-6 truck-1) 3728)
  (= (cost-drive city-2-loc-6 city-1-loc-5 truck-1) 6622)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-1) 4415)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-1) 2591)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-1) 6044)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-1) 9716)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 9372)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 8038)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 7477)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 3754)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 2723)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 9868)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 5314)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 6960)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 2493)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 2401)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 8986)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 5366)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 5597)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 2373)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 7088)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 8328)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 3301)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 7680)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 1933)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 4994)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-2) 7912)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-2) 3568)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-2) 3394)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-2) 7576)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-2) 8794)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-2) 3861)
  (= (cost-drive city-1-loc-8 city-1-loc-3 truck-2) 8688)
  (= (cost-drive city-1-loc-3 city-1-loc-8 truck-2) 2565)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 2967)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 3152)
  (= (cost-drive city-1-loc-8 city-1-loc-5 truck-2) 6790)
  (= (cost-drive city-1-loc-5 city-1-loc-8 truck-2) 8486)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 4696)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 3387)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 4173)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 1226)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 2729)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 3086)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 5312)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 9466)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-2) 4704)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-2) 4476)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-2) 3764)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-2) 6189)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 9760)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 5208)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-2) 3285)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-2) 4998)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-2) 7721)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-2) 9860)
  (= (cost-drive city-2-loc-8 city-2-loc-1 truck-2) 4345)
  (= (cost-drive city-2-loc-1 city-2-loc-8 truck-2) 3590)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-2) 1142)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-2) 6558)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-2) 1512)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-2) 3951)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 7377)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 4122)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 4329)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 4437)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-2) 3452)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-2) 3173)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-2) 2811)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-2) 5240)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-2) 7347)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-2) 9793)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-2) 6424)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-2) 3052)
  (= (cost-drive city-3-loc-6 city-3-loc-4 truck-2) 3776)
  (= (cost-drive city-3-loc-4 city-3-loc-6 truck-2) 8727)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-2) 3629)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-2) 8991)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-2) 9024)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-2) 6948)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-2) 5791)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-2) 7108)
  (= (cost-drive city-3-loc-7 city-3-loc-4 truck-2) 3069)
  (= (cost-drive city-3-loc-4 city-3-loc-7 truck-2) 4014)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-2) 6910)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-2) 3663)
  (= (cost-drive city-3-loc-8 city-3-loc-3 truck-2) 2154)
  (= (cost-drive city-3-loc-3 city-3-loc-8 truck-2) 3733)
  (= (cost-drive city-3-loc-8 city-3-loc-4 truck-2) 9994)
  (= (cost-drive city-3-loc-4 city-3-loc-8 truck-2) 3078)
  (= (cost-drive city-3-loc-8 city-3-loc-5 truck-2) 4921)
  (= (cost-drive city-3-loc-5 city-3-loc-8 truck-2) 5893)
  (= (cost-drive city-3-loc-8 city-3-loc-6 truck-2) 3727)
  (= (cost-drive city-3-loc-6 city-3-loc-8 truck-2) 3065)
  (= (cost-drive city-3-loc-8 city-3-loc-7 truck-2) 7879)
  (= (cost-drive city-3-loc-7 city-3-loc-8 truck-2) 8118)
  (= (cost-drive city-1-loc-5 city-2-loc-6 truck-2) 2346)
  (= (cost-drive city-2-loc-6 city-1-loc-5 truck-2) 3064)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-2) 4529)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-2) 6368)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-2) 7790)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-2) 6136)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 7679)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 1704)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 7274)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 8679)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-3) 8800)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-3) 1696)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-3) 7414)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-3) 8558)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 5684)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 6243)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 1647)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 5074)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 4953)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 4856)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 9892)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 1243)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 2038)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 8283)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 3524)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 5042)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-3) 6799)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-3) 8479)
  (= (cost-drive city-1-loc-7 city-1-loc-6 truck-3) 4685)
  (= (cost-drive city-1-loc-6 city-1-loc-7 truck-3) 1553)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-3) 1357)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-3) 5831)
  (= (cost-drive city-1-loc-8 city-1-loc-3 truck-3) 2896)
  (= (cost-drive city-1-loc-3 city-1-loc-8 truck-3) 3378)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-3) 2309)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-3) 1297)
  (= (cost-drive city-1-loc-8 city-1-loc-5 truck-3) 7545)
  (= (cost-drive city-1-loc-5 city-1-loc-8 truck-3) 9880)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 5408)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 6366)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-3) 9319)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-3) 7146)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-3) 1826)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-3) 5536)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-3) 1856)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-3) 7006)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-3) 9023)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-3) 7611)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-3) 4393)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-3) 3795)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 5877)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 5682)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-3) 1872)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-3) 5704)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-3) 1189)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-3) 8981)
  (= (cost-drive city-2-loc-8 city-2-loc-1 truck-3) 7681)
  (= (cost-drive city-2-loc-1 city-2-loc-8 truck-3) 5925)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-3) 3501)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-3) 6642)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-3) 5610)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-3) 6236)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-3) 2212)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-3) 5343)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-3) 2044)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-3) 5910)
  (= (cost-drive city-3-loc-4 city-3-loc-1 truck-3) 4869)
  (= (cost-drive city-3-loc-1 city-3-loc-4 truck-3) 5324)
  (= (cost-drive city-3-loc-4 city-3-loc-2 truck-3) 1553)
  (= (cost-drive city-3-loc-2 city-3-loc-4 truck-3) 8176)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-3) 4558)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-3) 7261)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-3) 7505)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-3) 3828)
  (= (cost-drive city-3-loc-6 city-3-loc-4 truck-3) 4239)
  (= (cost-drive city-3-loc-4 city-3-loc-6 truck-3) 4579)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-3) 7922)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-3) 6625)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-3) 3876)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-3) 9306)
  (= (cost-drive city-3-loc-7 city-3-loc-2 truck-3) 1149)
  (= (cost-drive city-3-loc-2 city-3-loc-7 truck-3) 4503)
  (= (cost-drive city-3-loc-7 city-3-loc-4 truck-3) 4260)
  (= (cost-drive city-3-loc-4 city-3-loc-7 truck-3) 8182)
  (= (cost-drive city-3-loc-7 city-3-loc-6 truck-3) 6082)
  (= (cost-drive city-3-loc-6 city-3-loc-7 truck-3) 4431)
  (= (cost-drive city-3-loc-8 city-3-loc-3 truck-3) 5470)
  (= (cost-drive city-3-loc-3 city-3-loc-8 truck-3) 3025)
  (= (cost-drive city-3-loc-8 city-3-loc-4 truck-3) 6027)
  (= (cost-drive city-3-loc-4 city-3-loc-8 truck-3) 4273)
  (= (cost-drive city-3-loc-8 city-3-loc-5 truck-3) 1239)
  (= (cost-drive city-3-loc-5 city-3-loc-8 truck-3) 7585)
  (= (cost-drive city-3-loc-8 city-3-loc-6 truck-3) 7422)
  (= (cost-drive city-3-loc-6 city-3-loc-8 truck-3) 8792)
  (= (cost-drive city-3-loc-8 city-3-loc-7 truck-3) 4624)
  (= (cost-drive city-3-loc-7 city-3-loc-8 truck-3) 6246)
  (= (cost-drive city-1-loc-5 city-2-loc-6 truck-3) 9121)
  (= (cost-drive city-2-loc-6 city-1-loc-5 truck-3) 5695)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-3) 9978)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-3) 4560)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-3) 7207)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-3) 2487)
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
  ; 2566,552 -> 2273,425
  (road city-2-loc-2 city-2-loc-1)
  ; 2273,425 -> 2566,552
  (road city-2-loc-1 city-2-loc-2)
  ; 2174,643 -> 2273,425
  (road city-2-loc-3 city-2-loc-1)
  ; 2273,425 -> 2174,643
  (road city-2-loc-1 city-2-loc-3)
  ; 2174,643 -> 2566,552
  (road city-2-loc-3 city-2-loc-2)
  ; 2566,552 -> 2174,643
  (road city-2-loc-2 city-2-loc-3)
  ; 2930,259 -> 2566,552
  (road city-2-loc-5 city-2-loc-2)
  ; 2566,552 -> 2930,259
  (road city-2-loc-2 city-2-loc-5)
  ; 2055,605 -> 2273,425
  (road city-2-loc-6 city-2-loc-1)
  ; 2273,425 -> 2055,605
  (road city-2-loc-1 city-2-loc-6)
  ; 2055,605 -> 2174,643
  (road city-2-loc-6 city-2-loc-3)
  ; 2174,643 -> 2055,605
  (road city-2-loc-3 city-2-loc-6)
  ; 2803,858 -> 2566,552
  (road city-2-loc-7 city-2-loc-2)
  ; 2566,552 -> 2803,858
  (road city-2-loc-2 city-2-loc-7)
  ; 2803,858 -> 2946,916
  (road city-2-loc-7 city-2-loc-4)
  ; 2946,916 -> 2803,858
  (road city-2-loc-4 city-2-loc-7)
  ; 2263,567 -> 2273,425
  (road city-2-loc-8 city-2-loc-1)
  ; 2273,425 -> 2263,567
  (road city-2-loc-1 city-2-loc-8)
  ; 2263,567 -> 2566,552
  (road city-2-loc-8 city-2-loc-2)
  ; 2566,552 -> 2263,567
  (road city-2-loc-2 city-2-loc-8)
  ; 2263,567 -> 2174,643
  (road city-2-loc-8 city-2-loc-3)
  ; 2174,643 -> 2263,567
  (road city-2-loc-3 city-2-loc-8)
  ; 2263,567 -> 2055,605
  (road city-2-loc-8 city-2-loc-6)
  ; 2055,605 -> 2263,567
  (road city-2-loc-6 city-2-loc-8)
  ; 1748,2863 -> 1362,2862
  (road city-3-loc-2 city-3-loc-1)
  ; 1362,2862 -> 1748,2863
  (road city-3-loc-1 city-3-loc-2)
  ; 1659,2497 -> 1362,2862
  (road city-3-loc-4 city-3-loc-1)
  ; 1362,2862 -> 1659,2497
  (road city-3-loc-1 city-3-loc-4)
  ; 1659,2497 -> 1748,2863
  (road city-3-loc-4 city-3-loc-2)
  ; 1748,2863 -> 1659,2497
  (road city-3-loc-2 city-3-loc-4)
  ; 1257,2005 -> 1006,2060
  (road city-3-loc-5 city-3-loc-3)
  ; 1006,2060 -> 1257,2005
  (road city-3-loc-3 city-3-loc-5)
  ; 1245,2346 -> 1006,2060
  (road city-3-loc-6 city-3-loc-3)
  ; 1006,2060 -> 1245,2346
  (road city-3-loc-3 city-3-loc-6)
  ; 1245,2346 -> 1659,2497
  (road city-3-loc-6 city-3-loc-4)
  ; 1659,2497 -> 1245,2346
  (road city-3-loc-4 city-3-loc-6)
  ; 1245,2346 -> 1257,2005
  (road city-3-loc-6 city-3-loc-5)
  ; 1257,2005 -> 1245,2346
  (road city-3-loc-5 city-3-loc-6)
  ; 1559,2565 -> 1362,2862
  (road city-3-loc-7 city-3-loc-1)
  ; 1362,2862 -> 1559,2565
  (road city-3-loc-1 city-3-loc-7)
  ; 1559,2565 -> 1748,2863
  (road city-3-loc-7 city-3-loc-2)
  ; 1748,2863 -> 1559,2565
  (road city-3-loc-2 city-3-loc-7)
  ; 1559,2565 -> 1659,2497
  (road city-3-loc-7 city-3-loc-4)
  ; 1659,2497 -> 1559,2565
  (road city-3-loc-4 city-3-loc-7)
  ; 1559,2565 -> 1245,2346
  (road city-3-loc-7 city-3-loc-6)
  ; 1245,2346 -> 1559,2565
  (road city-3-loc-6 city-3-loc-7)
  ; 1347,2149 -> 1006,2060
  (road city-3-loc-8 city-3-loc-3)
  ; 1006,2060 -> 1347,2149
  (road city-3-loc-3 city-3-loc-8)
  ; 1347,2149 -> 1659,2497
  (road city-3-loc-8 city-3-loc-4)
  ; 1659,2497 -> 1347,2149
  (road city-3-loc-4 city-3-loc-8)
  ; 1347,2149 -> 1257,2005
  (road city-3-loc-8 city-3-loc-5)
  ; 1257,2005 -> 1347,2149
  (road city-3-loc-5 city-3-loc-8)
  ; 1347,2149 -> 1245,2346
  (road city-3-loc-8 city-3-loc-6)
  ; 1245,2346 -> 1347,2149
  (road city-3-loc-6 city-3-loc-8)
  ; 1347,2149 -> 1559,2565
  (road city-3-loc-8 city-3-loc-7)
  ; 1559,2565 -> 1347,2149
  (road city-3-loc-7 city-3-loc-8)
  ; 977,899 <-> 2055,605
  (road city-1-loc-5 city-2-loc-6)
  (road city-2-loc-6 city-1-loc-5)
  (road city-1-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-1)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
  (at package-1 city-2-loc-4)
  (at package-2 city-1-loc-6)
  (at package-3 city-1-loc-6)
  (at package-4 city-2-loc-4)
  (at package-5 city-3-loc-1)
  (at package-6 city-1-loc-2)
  (at package-7 city-3-loc-2)
  (at package-8 city-2-loc-3)
  (at package-9 city-1-loc-6)
  (at truck-1 city-2-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-3-loc-4)
  (capacity truck-2 capacity-2)
  (at truck-3 city-1-loc-5)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-3-loc-6)
  (at package-2 city-3-loc-3)
  (at package-3 city-2-loc-3)
  (at package-4 city-1-loc-5)
  (at package-5 city-1-loc-7)
  (at package-6 city-1-loc-1)
  (at package-7 city-2-loc-2)
  (at package-8 city-3-loc-3)
  (at package-9 city-2-loc-4)
 ))
 (:metric minimize (total-cost))
)
