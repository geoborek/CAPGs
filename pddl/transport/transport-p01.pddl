; Transport city-sequential-3nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed

(define (problem transport-city-sequential-3nodes-1000size-2degree-100mindistance-2trucks-2packages-2008seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
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
 (= (base-drive city-loc-3 city-loc-1) 22)
 (= (base-drive city-loc-1 city-loc-3) 22)
 (= (base-drive city-loc-3 city-loc-2) 50)
 (= (base-drive city-loc-2 city-loc-3) 50)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 4299)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 5630)
  (= (cost-drive city-loc-3 city-loc-2 truck-1) 7379)
  (= (cost-drive city-loc-2 city-loc-3 truck-1) 5211)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 5456)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 8290)
  (= (cost-drive city-loc-3 city-loc-2 truck-2) 9605)
  (= (cost-drive city-loc-2 city-loc-3 truck-2) 3638)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 748,385 -> 890,543
  (road city-loc-3 city-loc-1)
  ; 890,543 -> 748,385
  (road city-loc-1 city-loc-3)
  ; 748,385 -> 384,50
  (road city-loc-3 city-loc-2)
  ; 384,50 -> 748,385
  (road city-loc-2 city-loc-3)
  (at package-1 city-loc-3)
  (at package-2 city-loc-3)
  (at truck-1 city-loc-3)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-2)
  (at package-2 city-loc-2)
 ))
 (:metric minimize (total-cost))
)
