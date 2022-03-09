; Transport three-cities-sequential-3nodes-1000size-2degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-three-cities-sequential-3nodes-1000size-2degree-100mindistance-2trucks-4packages-2008seed)
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
 (= (base-drive city-1-loc-3 city-1-loc-2) 50)
 (= (base-drive city-1-loc-2 city-1-loc-3) 50)
 (= (base-drive city-2-loc-2 city-2-loc-1) 30)
 (= (base-drive city-2-loc-1 city-2-loc-2) 30)
 (= (base-drive city-2-loc-3 city-2-loc-1) 49)
 (= (base-drive city-2-loc-1 city-2-loc-3) 49)
 (= (base-drive city-2-loc-3 city-2-loc-2) 47)
 (= (base-drive city-2-loc-2 city-2-loc-3) 47)
 (= (base-drive city-3-loc-2 city-3-loc-1) 41)
 (= (base-drive city-3-loc-1 city-3-loc-2) 41)
 (= (base-drive city-3-loc-3 city-3-loc-1) 53)
 (= (base-drive city-3-loc-1 city-3-loc-3) 53)
 (= (base-drive city-1-loc-1 city-2-loc-3) 139)
 (= (base-drive city-2-loc-3 city-1-loc-1) 139)
 (= (base-drive city-1-loc-1 city-3-loc-1) 186)
 (= (base-drive city-3-loc-1 city-1-loc-1) 186)
 (= (base-drive city-2-loc-3 city-3-loc-2) 186)
 (= (base-drive city-3-loc-2 city-2-loc-3) 186)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 5558)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 2775)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-1) 2722)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-1) 5765)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 5925)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 6886)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 6920)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 9338)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 1085)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 7009)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 4973)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 3608)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-1) 8712)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-1) 5560)
  (= (cost-drive city-1-loc-1 city-2-loc-3 truck-1) 8974)
  (= (cost-drive city-2-loc-3 city-1-loc-1 truck-1) 4467)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-1) 2175)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-1) 3154)
  (= (cost-drive city-2-loc-3 city-3-loc-2 truck-1) 3900)
  (= (cost-drive city-3-loc-2 city-2-loc-3 truck-1) 4485)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 5764)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 8767)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-2) 9491)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-2) 5876)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 8710)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 5515)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 7225)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 7527)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 3975)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 6684)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 9403)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 6234)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-2) 3512)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-2) 9411)
  (= (cost-drive city-1-loc-1 city-2-loc-3 truck-2) 8514)
  (= (cost-drive city-2-loc-3 city-1-loc-1 truck-2) 1239)
  (= (cost-drive city-1-loc-1 city-3-loc-1 truck-2) 6392)
  (= (cost-drive city-3-loc-1 city-1-loc-1 truck-2) 3110)
  (= (cost-drive city-2-loc-3 city-3-loc-2 truck-2) 8799)
  (= (cost-drive city-3-loc-2 city-2-loc-3 truck-2) 8354)
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
  ; 748,385 -> 384,50
  (road city-1-loc-3 city-1-loc-2)
  ; 384,50 -> 748,385
  (road city-1-loc-2 city-1-loc-3)
  ; 2564,783 -> 2742,542
  (road city-2-loc-2 city-2-loc-1)
  ; 2742,542 -> 2564,783
  (road city-2-loc-1 city-2-loc-2)
  ; 2273,425 -> 2742,542
  (road city-2-loc-3 city-2-loc-1)
  ; 2742,542 -> 2273,425
  (road city-2-loc-1 city-2-loc-3)
  ; 2273,425 -> 2564,783
  (road city-2-loc-3 city-2-loc-2)
  ; 2564,783 -> 2273,425
  (road city-2-loc-2 city-2-loc-3)
  ; 1174,2643 -> 1566,2552
  (road city-3-loc-2 city-3-loc-1)
  ; 1566,2552 -> 1174,2643
  (road city-3-loc-1 city-3-loc-2)
  ; 1946,2916 -> 1566,2552
  (road city-3-loc-3 city-3-loc-1)
  ; 1566,2552 -> 1946,2916
  (road city-3-loc-1 city-3-loc-3)
  ; 890,543 <-> 2273,425
  (road city-1-loc-1 city-2-loc-3)
  (road city-2-loc-3 city-1-loc-1)
  (road city-1-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-1)
  (road city-2-loc-3 city-3-loc-2)
  (road city-3-loc-2 city-2-loc-3)
  (at package-1 city-3-loc-1)
  (at package-2 city-1-loc-2)
  (at package-3 city-3-loc-3)
  (at package-4 city-1-loc-2)
  (at truck-1 city-1-loc-3)
  (capacity truck-1 capacity-3)
  (at truck-2 city-3-loc-1)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-1-loc-1)
  (at package-2 city-2-loc-2)
  (at package-3 city-1-loc-3)
  (at package-4 city-1-loc-3)
 ))
 (:metric minimize (total-cost))
)
