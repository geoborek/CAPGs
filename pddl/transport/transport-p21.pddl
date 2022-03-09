; Transport three-cities-sequential-1nodes-1000size-0degree-100mindistance-2trucks-2packages-2008seed

(define (problem transport-three-cities-sequential-1nodes-1000size-0degree-100mindistance-2trucks-2packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
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
 (= (base-drive city-1-loc-1 city-2-loc-1) 158)
 (= (base-drive city-2-loc-1 city-1-loc-1) 158)
 (= (base-drive city-1-loc-1 city-3-loc-1) 158)
 (= (base-drive city-3-loc-1 city-1-loc-1) 158)
 (= (base-drive city-2-loc-1 city-3-loc-1) 158)
 (= (base-drive city-3-loc-1 city-2-loc-1) 158)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-1 city-2-loc-1 truck-1) 7957)
  (= (cost-drive city-2-loc-1 city-1-loc-1 truck-1) 1485)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-1) 4963)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-1) 5889)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-1) 9594)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-1) 6364)
  (= (cost-drive city-1-loc-1 city-2-loc-1 truck-2) 2787)
  (= (cost-drive city-2-loc-1 city-1-loc-1 truck-2) 6566)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-2) 3922)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-2) 8136)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-2) 3576)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-2) 6604)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 890,543 <-> 2384,50
  (road city-1-loc-1 city-2-loc-1)
  (road city-2-loc-1 city-1-loc-1)
  (road city-1-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-1)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
  (at package-1 city-3-loc-1)
  (at package-2 city-3-loc-1)
  (at truck-1 city-2-loc-1)
  (capacity truck-1 capacity-4)
  (at truck-2 city-2-loc-1)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-1-loc-1)
  (at package-2 city-2-loc-1)
 ))
 (:metric minimize (total-cost))
)
