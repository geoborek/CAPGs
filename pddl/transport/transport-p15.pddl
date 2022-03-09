; Transport two-cities-sequential-10nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed

(define (problem transport-two-cities-sequential-10nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed)
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
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
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
 (= (base-drive city-2-loc-7 city-2-loc-3) 37)
 (= (base-drive city-2-loc-3 city-2-loc-7) 37)
 (= (base-drive city-2-loc-8 city-2-loc-2) 16)
 (= (base-drive city-2-loc-2 city-2-loc-8) 16)
 (= (base-drive city-2-loc-9 city-2-loc-1) 18)
 (= (base-drive city-2-loc-1 city-2-loc-9) 18)
 (= (base-drive city-2-loc-9 city-2-loc-2) 17)
 (= (base-drive city-2-loc-2 city-2-loc-9) 17)
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
 (= (base-drive city-2-loc-10 city-2-loc-7) 31)
 (= (base-drive city-2-loc-7 city-2-loc-10) 31)
 (= (base-drive city-2-loc-10 city-2-loc-8) 34)
 (= (base-drive city-2-loc-8 city-2-loc-10) 34)
 (= (base-drive city-2-loc-10 city-2-loc-9) 19)
 (= (base-drive city-2-loc-9 city-2-loc-10) 19)
 (= (base-drive city-1-loc-5 city-2-loc-8) 115)
 (= (base-drive city-2-loc-8 city-1-loc-5) 115)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 2568)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 9685)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 6101)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 4296)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 2666)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 9083)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 2135)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 3084)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 6540)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 2056)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 9643)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 7892)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 4437)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 6680)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 2184)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 1870)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 8302)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 8652)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 9119)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 5873)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 2193)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 4670)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 6682)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 6572)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-1) 5818)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-1) 6649)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 6793)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 9170)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-1) 8852)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-1) 4082)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 6307)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 2371)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 9472)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 3377)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-1) 1771)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-1) 5816)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 2116)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 4691)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 3973)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 9781)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-1) 9502)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-1) 6465)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-1) 8688)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-1) 1259)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 4879)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 3081)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-1) 8082)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-1) 3426)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-1) 9973)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-1) 5965)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-1) 1825)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-1) 6823)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-1) 9175)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-1) 8398)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-1) 1432)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-1) 2061)
  (= (cost-drive city-2-loc-9 city-2-loc-5 truck-1) 1197)
  (= (cost-drive city-2-loc-5 city-2-loc-9 truck-1) 1144)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-1) 5879)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-1) 6689)
  (= (cost-drive city-2-loc-10 city-2-loc-1 truck-1) 6313)
  (= (cost-drive city-2-loc-1 city-2-loc-10 truck-1) 1469)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-1) 2674)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-1) 3741)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-1) 4119)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-1) 9985)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-1) 4278)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-1) 5146)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-1) 4453)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-1) 6959)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-1) 9295)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-1) 1335)
  (= (cost-drive city-1-loc-5 city-2-loc-8 truck-1) 4332)
  (= (cost-drive city-2-loc-8 city-1-loc-5 truck-1) 2285)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 3485)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 4039)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 6769)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 4365)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 5346)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 7122)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 3017)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 6685)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 3185)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 8895)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 7116)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 5284)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 3683)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 1948)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 8349)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 6206)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 6727)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 2408)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 2776)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 9333)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 7415)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 6148)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 6551)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 9637)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-2) 9869)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-2) 6816)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 8567)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 5750)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-2) 1896)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-2) 5046)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 7213)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 2056)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 7913)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 9810)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-2) 2182)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-2) 8394)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 9110)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 2042)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 3479)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 3880)
  (= (cost-drive city-2-loc-5 city-2-loc-1 truck-2) 7478)
  (= (cost-drive city-2-loc-1 city-2-loc-5 truck-2) 6869)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-2) 7952)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-2) 1319)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 3009)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 3207)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-2) 1770)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-2) 3951)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-2) 9847)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-2) 6424)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-2) 3734)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-2) 6917)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-2) 4186)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-2) 5285)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-2) 6635)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-2) 3786)
  (= (cost-drive city-2-loc-9 city-2-loc-5 truck-2) 4021)
  (= (cost-drive city-2-loc-5 city-2-loc-9 truck-2) 6857)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-2) 9475)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-2) 6635)
  (= (cost-drive city-2-loc-10 city-2-loc-1 truck-2) 3698)
  (= (cost-drive city-2-loc-1 city-2-loc-10 truck-2) 3301)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-2) 8111)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-2) 3531)
  (= (cost-drive city-2-loc-10 city-2-loc-3 truck-2) 8626)
  (= (cost-drive city-2-loc-3 city-2-loc-10 truck-2) 6947)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-2) 5569)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-2) 1653)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-2) 1059)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-2) 3297)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-2) 6411)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-2) 9466)
  (= (cost-drive city-1-loc-5 city-2-loc-8 truck-2) 3842)
  (= (cost-drive city-2-loc-8 city-1-loc-5 truck-2) 2942)
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
  ; 977,899 <-> 2120,854
  (road city-1-loc-5 city-2-loc-8)
  (road city-2-loc-8 city-1-loc-5)
  (at package-1 city-1-loc-4)
  (at package-2 city-1-loc-8)
  (at package-3 city-1-loc-7)
  (at package-4 city-1-loc-7)
  (at package-5 city-1-loc-4)
  (at package-6 city-1-loc-6)
  (at truck-1 city-2-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-3)
  (at package-3 city-2-loc-9)
  (at package-4 city-2-loc-2)
  (at package-5 city-2-loc-1)
  (at package-6 city-2-loc-6)
 ))
 (:metric minimize (total-cost))
)
