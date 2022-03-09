; Transport two-cities-sequential-8nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-two-cities-sequential-8nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed)
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
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
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
 (= (base-drive city-1-loc-8 city-1-loc-1) 41)
 (= (base-drive city-1-loc-1 city-1-loc-8) 41)
 (= (base-drive city-1-loc-8 city-1-loc-4) 35)
 (= (base-drive city-1-loc-4 city-1-loc-8) 35)
 (= (base-drive city-1-loc-8 city-1-loc-7) 30)
 (= (base-drive city-1-loc-7 city-1-loc-8) 30)
 (= (base-drive city-2-loc-2 city-2-loc-1) 39)
 (= (base-drive city-2-loc-1 city-2-loc-2) 39)
 (= (base-drive city-2-loc-4 city-2-loc-2) 38)
 (= (base-drive city-2-loc-2 city-2-loc-4) 38)
 (= (base-drive city-2-loc-5 city-2-loc-3) 26)
 (= (base-drive city-2-loc-3 city-2-loc-5) 26)
 (= (base-drive city-2-loc-6 city-2-loc-3) 38)
 (= (base-drive city-2-loc-3 city-2-loc-6) 38)
 (= (base-drive city-2-loc-6 city-2-loc-5) 35)
 (= (base-drive city-2-loc-5 city-2-loc-6) 35)
 (= (base-drive city-2-loc-7 city-2-loc-1) 36)
 (= (base-drive city-2-loc-1 city-2-loc-7) 36)
 (= (base-drive city-2-loc-7 city-2-loc-2) 36)
 (= (base-drive city-2-loc-2 city-2-loc-7) 36)
 (= (base-drive city-2-loc-7 city-2-loc-4) 13)
 (= (base-drive city-2-loc-4 city-2-loc-7) 13)
 (= (base-drive city-2-loc-7 city-2-loc-6) 39)
 (= (base-drive city-2-loc-6 city-2-loc-7) 39)
 (= (base-drive city-2-loc-8 city-2-loc-3) 36)
 (= (base-drive city-2-loc-3 city-2-loc-8) 36)
 (= (base-drive city-2-loc-8 city-2-loc-5) 17)
 (= (base-drive city-2-loc-5 city-2-loc-8) 17)
 (= (base-drive city-2-loc-8 city-2-loc-6) 23)
 (= (base-drive city-2-loc-6 city-2-loc-8) 23)
 (= (base-drive city-1-loc-1 city-2-loc-3) 122)
 (= (base-drive city-2-loc-3 city-1-loc-1) 122)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 1412)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 9331)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 1757)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 4817)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 5459)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 4186)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 5639)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 7991)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 7459)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 4797)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 4600)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 6762)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 5747)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 3222)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 9989)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 8310)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 5509)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 6629)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-1) 8187)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-1) 7187)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 6231)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 3543)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 4934)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 8639)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 6378)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 8235)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 3506)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 7417)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-1) 9702)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-1) 8186)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 8983)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 4231)
  (= (cost-drive city-2-loc-6 city-2-loc-5 truck-1) 5833)
  (= (cost-drive city-2-loc-5 city-2-loc-6 truck-1) 1627)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-1) 5374)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-1) 2270)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-1) 6005)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-1) 1930)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-1) 6855)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-1) 5947)
  (= (cost-drive city-2-loc-7 city-2-loc-6 truck-1) 4044)
  (= (cost-drive city-2-loc-6 city-2-loc-7 truck-1) 5492)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-1) 9425)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-1) 9807)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-1) 9134)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-1) 4020)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 2723)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 1458)
  (= (cost-drive city-1-loc-1 city-2-loc-3 truck-1) 1937)
  (= (cost-drive city-2-loc-3 city-1-loc-1 truck-1) 4690)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 5640)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 6255)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 2568)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 3491)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 8956)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 8724)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 8301)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 8905)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 2330)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 4200)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 8799)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 8613)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 2615)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 9959)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 4599)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 3580)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 8682)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 4350)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-2) 6202)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-2) 3019)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 2339)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 2874)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 9791)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 6193)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 5972)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 7755)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 4382)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 7976)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-2) 8593)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-2) 8453)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 8604)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 9814)
  (= (cost-drive city-2-loc-6 city-2-loc-5 truck-2) 3706)
  (= (cost-drive city-2-loc-5 city-2-loc-6 truck-2) 9942)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-2) 1135)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-2) 4756)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-2) 9028)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-2) 4816)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-2) 2800)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-2) 8410)
  (= (cost-drive city-2-loc-7 city-2-loc-6 truck-2) 6134)
  (= (cost-drive city-2-loc-6 city-2-loc-7 truck-2) 9946)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-2) 1531)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-2) 8902)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-2) 7912)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-2) 3824)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 8227)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 9321)
  (= (cost-drive city-1-loc-1 city-2-loc-3 truck-2) 9546)
  (= (cost-drive city-2-loc-3 city-1-loc-1 truck-2) 6474)
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
  ; 564,783 -> 890,543
  (road city-1-loc-8 city-1-loc-1)
  ; 890,543 -> 564,783
  (road city-1-loc-1 city-1-loc-8)
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  ; 2748,863 -> 2362,862
  (road city-2-loc-2 city-2-loc-1)
  ; 2362,862 -> 2748,863
  (road city-2-loc-1 city-2-loc-2)
  ; 2659,497 -> 2748,863
  (road city-2-loc-4 city-2-loc-2)
  ; 2748,863 -> 2659,497
  (road city-2-loc-2 city-2-loc-4)
  ; 2257,5 -> 2006,60
  (road city-2-loc-5 city-2-loc-3)
  ; 2006,60 -> 2257,5
  (road city-2-loc-3 city-2-loc-5)
  ; 2245,346 -> 2006,60
  (road city-2-loc-6 city-2-loc-3)
  ; 2006,60 -> 2245,346
  (road city-2-loc-3 city-2-loc-6)
  ; 2245,346 -> 2257,5
  (road city-2-loc-6 city-2-loc-5)
  ; 2257,5 -> 2245,346
  (road city-2-loc-5 city-2-loc-6)
  ; 2559,565 -> 2362,862
  (road city-2-loc-7 city-2-loc-1)
  ; 2362,862 -> 2559,565
  (road city-2-loc-1 city-2-loc-7)
  ; 2559,565 -> 2748,863
  (road city-2-loc-7 city-2-loc-2)
  ; 2748,863 -> 2559,565
  (road city-2-loc-2 city-2-loc-7)
  ; 2559,565 -> 2659,497
  (road city-2-loc-7 city-2-loc-4)
  ; 2659,497 -> 2559,565
  (road city-2-loc-4 city-2-loc-7)
  ; 2559,565 -> 2245,346
  (road city-2-loc-7 city-2-loc-6)
  ; 2245,346 -> 2559,565
  (road city-2-loc-6 city-2-loc-7)
  ; 2347,149 -> 2006,60
  (road city-2-loc-8 city-2-loc-3)
  ; 2006,60 -> 2347,149
  (road city-2-loc-3 city-2-loc-8)
  ; 2347,149 -> 2257,5
  (road city-2-loc-8 city-2-loc-5)
  ; 2257,5 -> 2347,149
  (road city-2-loc-5 city-2-loc-8)
  ; 2347,149 -> 2245,346
  (road city-2-loc-8 city-2-loc-6)
  ; 2245,346 -> 2347,149
  (road city-2-loc-6 city-2-loc-8)
  ; 890,543 <-> 2006,60
  (road city-1-loc-1 city-2-loc-3)
  (road city-2-loc-3 city-1-loc-1)
  (at package-1 city-1-loc-3)
  (at package-2 city-1-loc-4)
  (at package-3 city-1-loc-2)
  (at package-4 city-1-loc-6)
  (at package-5 city-1-loc-1)
  (at truck-1 city-2-loc-6)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-4)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-3)
  (at package-3 city-2-loc-2)
  (at package-4 city-2-loc-6)
  (at package-5 city-2-loc-2)
 ))
 (:metric minimize (total-cost))
)
