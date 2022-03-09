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
  (= (cost-drive city-1-loc-3 city-1-loc-1) 3796)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 3779)
  (= (cost-drive city-1-loc-3 city-1-loc-2) 2357)
  (= (cost-drive city-1-loc-2 city-1-loc-3) 9809)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 6197)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 7389)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 1853)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 3782)
  (= (cost-drive city-2-loc-3 city-2-loc-2) 5452)
  (= (cost-drive city-2-loc-2 city-2-loc-3) 6974)
  (= (cost-drive city-3-loc-2 city-3-loc-1) 2519)
  (= (cost-drive city-3-loc-1 city-3-loc-2) 5939)
  (= (cost-drive city-3-loc-3 city-3-loc-1) 6432)
  (= (cost-drive city-3-loc-1 city-3-loc-3) 8317)
  (= (cost-drive city-1-loc-1 city-2-loc-3) 1527)
  (= (cost-drive city-2-loc-3 city-1-loc-1) 3569)
  (= (cost-drive city-1-loc-1 city-3-loc-1) 4362)
  (= (cost-drive city-3-loc-1 city-1-loc-1) 6033)
  (= (cost-drive city-2-loc-3 city-3-loc-2) 8155)
  (= (cost-drive city-3-loc-2 city-2-loc-3) 2669)
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
