; Transport two-cities-sequential-2nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed

(define (problem transport-two-cities-sequential-2nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-1-loc-2 city-1-loc-1) 45)
 (= (base-drive city-1-loc-1 city-1-loc-2) 45)
 (= (base-drive city-2-loc-2 city-2-loc-1) 30)
 (= (base-drive city-2-loc-1 city-2-loc-2) 30)
 (= (base-drive city-1-loc-2 city-2-loc-2) 166)
 (= (base-drive city-2-loc-2 city-1-loc-2) 166)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-2 city-1-loc-1 truck-1) 9963)
  (= (cost-drive city-1-loc-1 city-1-loc-2 truck-1) 4538)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 5945)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 1455)
  (= (cost-drive city-1-loc-2 city-2-loc-2 truck-1) 5378)
  (= (cost-drive city-2-loc-2 city-1-loc-2 truck-1) 2263)
  (= (cost-drive city-1-loc-2 city-1-loc-1 truck-2) 6189)
  (= (cost-drive city-1-loc-1 city-1-loc-2 truck-2) 4339)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 1195)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 8225)
  (= (cost-drive city-1-loc-2 city-2-loc-2 truck-2) 5231)
  (= (cost-drive city-2-loc-2 city-1-loc-2 truck-2) 7133)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 912,799 -> 748,385
  (road city-1-loc-2 city-1-loc-1)
  ; 748,385 -> 912,799
  (road city-1-loc-1 city-1-loc-2)
  ; 2564,783 -> 2742,542
  (road city-2-loc-2 city-2-loc-1)
  ; 2742,542 -> 2564,783
  (road city-2-loc-1 city-2-loc-2)
  ; 912,799 <-> 2564,783
  (road city-1-loc-2 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-2)
  (at package-1 city-1-loc-1)
  (at package-2 city-1-loc-1)
  (at truck-1 city-2-loc-2)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-2)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-2)
 ))
 (:metric minimize (total-cost))
)
