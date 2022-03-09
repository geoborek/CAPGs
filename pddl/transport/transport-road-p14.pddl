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
  (= (cost-drive city-1-loc-3 city-1-loc-1) 5668)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 3253)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 9998)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 1802)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 6959)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 9932)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 3918)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 9733)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 2906)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 4430)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 4116)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 6943)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 3101)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 3545)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 4915)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 5799)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 8528)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 1358)
  (= (cost-drive city-1-loc-8 city-1-loc-1) 6232)
  (= (cost-drive city-1-loc-1 city-1-loc-8) 2518)
  (= (cost-drive city-1-loc-8 city-1-loc-4) 7065)
  (= (cost-drive city-1-loc-4 city-1-loc-8) 9880)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 7362)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 2052)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 7514)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 8100)
  (= (cost-drive city-2-loc-4 city-2-loc-2) 2558)
  (= (cost-drive city-2-loc-2 city-2-loc-4) 7491)
  (= (cost-drive city-2-loc-5 city-2-loc-3) 8413)
  (= (cost-drive city-2-loc-3 city-2-loc-5) 3471)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 2693)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 8360)
  (= (cost-drive city-2-loc-6 city-2-loc-5) 9395)
  (= (cost-drive city-2-loc-5 city-2-loc-6) 6356)
  (= (cost-drive city-2-loc-7 city-2-loc-1) 7809)
  (= (cost-drive city-2-loc-1 city-2-loc-7) 1235)
  (= (cost-drive city-2-loc-7 city-2-loc-2) 5427)
  (= (cost-drive city-2-loc-2 city-2-loc-7) 1013)
  (= (cost-drive city-2-loc-7 city-2-loc-4) 9880)
  (= (cost-drive city-2-loc-4 city-2-loc-7) 6969)
  (= (cost-drive city-2-loc-7 city-2-loc-6) 8747)
  (= (cost-drive city-2-loc-6 city-2-loc-7) 9470)
  (= (cost-drive city-2-loc-8 city-2-loc-3) 8252)
  (= (cost-drive city-2-loc-3 city-2-loc-8) 5565)
  (= (cost-drive city-2-loc-8 city-2-loc-5) 9170)
  (= (cost-drive city-2-loc-5 city-2-loc-8) 7381)
  (= (cost-drive city-2-loc-8 city-2-loc-6) 4028)
  (= (cost-drive city-2-loc-6 city-2-loc-8) 7601)
  (= (cost-drive city-1-loc-1 city-2-loc-3) 9751)
  (= (cost-drive city-2-loc-3 city-1-loc-1) 6865)
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
