; Transport two-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed

(define (problem transport-two-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed)
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
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-1-loc-3 city-1-loc-1) 43)
 (= (base-drive city-1-loc-1 city-1-loc-3) 43)
 (= (base-drive city-1-loc-3 city-1-loc-2) 43)
 (= (base-drive city-1-loc-2 city-1-loc-3) 43)
 (= (base-drive city-1-loc-4 city-1-loc-1) 43)
 (= (base-drive city-1-loc-1 city-1-loc-4) 43)
 (= (base-drive city-1-loc-4 city-1-loc-3) 30)
 (= (base-drive city-1-loc-3 city-1-loc-4) 30)
 (= (base-drive city-2-loc-2 city-2-loc-1) 35)
 (= (base-drive city-2-loc-1 city-2-loc-2) 35)
 (= (base-drive city-2-loc-3 city-2-loc-2) 39)
 (= (base-drive city-2-loc-2 city-2-loc-3) 39)
 (= (base-drive city-2-loc-4 city-2-loc-1) 17)
 (= (base-drive city-2-loc-1 city-2-loc-4) 17)
 (= (base-drive city-2-loc-4 city-2-loc-2) 23)
 (= (base-drive city-2-loc-2 city-2-loc-4) 23)
 (= (base-drive city-2-loc-4 city-2-loc-3) 47)
 (= (base-drive city-2-loc-3 city-2-loc-4) 47)
 (= (base-drive city-1-loc-1 city-2-loc-2) 139)
 (= (base-drive city-2-loc-2 city-1-loc-1) 139)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 8166)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 9976)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-1) 9881)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-1) 8395)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 8172)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 9750)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 7750)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 2358)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 7172)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 6300)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 7074)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 4962)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 2275)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 7689)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 3871)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 6038)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 2456)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 4795)
  (= (cost-drive city-1-loc-1 city-2-loc-2 truck-1) 4898)
  (= (cost-drive city-2-loc-2 city-1-loc-1 truck-1) 2114)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 3482)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 1118)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-2) 2299)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-2) 6773)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 5848)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 9344)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 7736)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 6704)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 7068)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 7962)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 8968)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 8191)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 5027)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 3197)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 7976)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 7494)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 6946)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 7029)
  (= (cost-drive city-1-loc-1 city-2-loc-2 truck-2) 6416)
  (= (cost-drive city-2-loc-2 city-1-loc-1 truck-2) 8300)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 742,542 -> 977,899
  (road city-1-loc-3 city-1-loc-1)
  ; 977,899 -> 742,542
  (road city-1-loc-1 city-1-loc-3)
  ; 742,542 -> 456,221
  (road city-1-loc-3 city-1-loc-2)
  ; 456,221 -> 742,542
  (road city-1-loc-2 city-1-loc-3)
  ; 564,783 -> 977,899
  (road city-1-loc-4 city-1-loc-1)
  ; 977,899 -> 564,783
  (road city-1-loc-1 city-1-loc-4)
  ; 564,783 -> 742,542
  (road city-1-loc-4 city-1-loc-3)
  ; 742,542 -> 564,783
  (road city-1-loc-3 city-1-loc-4)
  ; 2245,346 -> 2257,5
  (road city-2-loc-2 city-2-loc-1)
  ; 2257,5 -> 2245,346
  (road city-2-loc-1 city-2-loc-2)
  ; 2559,565 -> 2245,346
  (road city-2-loc-3 city-2-loc-2)
  ; 2245,346 -> 2559,565
  (road city-2-loc-2 city-2-loc-3)
  ; 2347,149 -> 2257,5
  (road city-2-loc-4 city-2-loc-1)
  ; 2257,5 -> 2347,149
  (road city-2-loc-1 city-2-loc-4)
  ; 2347,149 -> 2245,346
  (road city-2-loc-4 city-2-loc-2)
  ; 2245,346 -> 2347,149
  (road city-2-loc-2 city-2-loc-4)
  ; 2347,149 -> 2559,565
  (road city-2-loc-4 city-2-loc-3)
  ; 2559,565 -> 2347,149
  (road city-2-loc-3 city-2-loc-4)
  ; 977,899 <-> 2245,346
  (road city-1-loc-1 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-1)
  (at package-1 city-1-loc-2)
  (at package-2 city-1-loc-2)
  (at package-3 city-1-loc-1)
  (at truck-1 city-2-loc-3)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-3)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-2)
  (at package-2 city-2-loc-3)
  (at package-3 city-2-loc-1)
 ))
 (:metric minimize (total-cost))
)
