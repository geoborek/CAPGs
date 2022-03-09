; Transport two-cities-sequential-6nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-two-cities-sequential-6nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed)
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
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
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
  (= (base-drive city-2-loc-2 city-2-loc-1) 30)
  (= (base-drive city-2-loc-1 city-2-loc-2) 30)
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
  (= (base-drive city-1-loc-5 city-2-loc-5) 123)
  (= (base-drive city-2-loc-5 city-1-loc-5) 123)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 3345)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 6824)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 2266)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 8664)
  (= (cost-drive city-1-loc-4 city-1-loc-3) 3097)
  (= (cost-drive city-1-loc-3 city-1-loc-4) 6304)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 9696)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 7656)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 8274)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 1846)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 5891)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 5621)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 4001)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 1786)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 6891)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 1216)
  (= (cost-drive city-2-loc-3 city-2-loc-2) 4440)
  (= (cost-drive city-2-loc-2 city-2-loc-3) 2385)
  (= (cost-drive city-2-loc-4 city-2-loc-1) 2600)
  (= (cost-drive city-2-loc-1 city-2-loc-4) 8144)
  (= (cost-drive city-2-loc-4 city-2-loc-2) 9045)
  (= (cost-drive city-2-loc-2 city-2-loc-4) 3439)
  (= (cost-drive city-2-loc-4 city-2-loc-3) 1882)
  (= (cost-drive city-2-loc-3 city-2-loc-4) 3334)
  (= (cost-drive city-2-loc-5 city-2-loc-2) 1324)
  (= (cost-drive city-2-loc-2 city-2-loc-5) 3331)
  (= (cost-drive city-2-loc-5 city-2-loc-3) 8252)
  (= (cost-drive city-2-loc-3 city-2-loc-5) 5409)
  (= (cost-drive city-2-loc-5 city-2-loc-4) 8020)
  (= (cost-drive city-2-loc-4 city-2-loc-5) 8966)
  (= (cost-drive city-2-loc-6 city-2-loc-1) 4375)
  (= (cost-drive city-2-loc-1 city-2-loc-6) 2109)
  (= (cost-drive city-2-loc-6 city-2-loc-2) 6518)
  (= (cost-drive city-2-loc-2 city-2-loc-6) 8036)
  (= (cost-drive city-1-loc-5 city-2-loc-5) 3112)
  (= (cost-drive city-2-loc-5 city-1-loc-5) 9848)
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
  ; 2564,783 -> 2742,542
  (road city-2-loc-2 city-2-loc-1)
  ; 2742,542 -> 2564,783
  (road city-2-loc-1 city-2-loc-2)
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
  ; 977,899 <-> 2174,643
  (road city-1-loc-5 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-5)
  (at package-1 city-1-loc-6)
  (at package-2 city-1-loc-2)
  (at package-3 city-1-loc-1)
  (at package-4 city-1-loc-4)
  (at truck-1 city-2-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-2-loc-2)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-5)
  (at package-3 city-2-loc-3)
  (at package-4 city-2-loc-5)
 ))
 (:metric minimize (total-cost))
)
