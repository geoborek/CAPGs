; Transport three-cities-sequential-2nodes-1000size-1degree-100mindistance-2trucks-3packages-2008seed

(define (problem transport-three-cities-sequential-2nodes-1000size-1degree-100mindistance-2trucks-3packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-3-loc-2 - location
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
 (= (base-drive city-1-loc-2 city-1-loc-1) 45)
 (= (base-drive city-1-loc-1 city-1-loc-2) 45)
 (= (base-drive city-2-loc-2 city-2-loc-1) 30)
 (= (base-drive city-2-loc-1 city-2-loc-2) 30)
 (= (base-drive city-3-loc-2 city-3-loc-1) 32)
 (= (base-drive city-3-loc-1 city-3-loc-2) 32)
 (= (base-drive city-1-loc-2 city-2-loc-2) 166)
 (= (base-drive city-2-loc-2 city-1-loc-2) 166)
 (= (base-drive city-1-loc-2 city-3-loc-1) 185)
 (= (base-drive city-3-loc-1 city-1-loc-2) 185)
 (= (base-drive city-2-loc-1 city-3-loc-2) 186)
 (= (base-drive city-3-loc-2 city-2-loc-1) 186)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-2 city-1-loc-1 truck-1) 9891)
  (= (cost-drive city-1-loc-1 city-1-loc-2 truck-1) 1133)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 5910)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 7856)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 7544)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 8356)
  (= (cost-drive city-1-loc-2 city-2-loc-2 truck-1) 2153)
  (= (cost-drive city-2-loc-2 city-1-loc-2 truck-1) 8159)
  (= (cost-drive city-1-loc-2 city-3-loc-1 truck-1) 5249)
  (= (cost-drive city-3-loc-1 city-1-loc-2 truck-1) 4538)
  (= (cost-drive city-2-loc-1 city-3-loc-2 truck-1) 6579)
  (= (cost-drive city-3-loc-2 city-2-loc-1 truck-1) 3794)
  (= (cost-drive city-1-loc-2 city-1-loc-1 truck-2) 4485)
  (= (cost-drive city-1-loc-1 city-1-loc-2 truck-2) 8915)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 3937)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 1948)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 7447)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 6398)
  (= (cost-drive city-1-loc-2 city-2-loc-2 truck-2) 2114)
  (= (cost-drive city-2-loc-2 city-1-loc-2 truck-2) 5366)
  (= (cost-drive city-1-loc-2 city-3-loc-1 truck-2) 6566)
  (= (cost-drive city-3-loc-1 city-1-loc-2 truck-2) 4654)
  (= (cost-drive city-2-loc-1 city-3-loc-2 truck-2) 6859)
  (= (cost-drive city-3-loc-2 city-2-loc-1 truck-2) 8898)
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
  ; 1566,2552 -> 1273,2425
  (road city-3-loc-2 city-3-loc-1)
  ; 1273,2425 -> 1566,2552
  (road city-3-loc-1 city-3-loc-2)
  ; 912,799 <-> 2564,783
  (road city-1-loc-2 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-2)
  (road city-1-loc-2 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-2)
  (road city-2-loc-1 city-3-loc-2)
  (road city-3-loc-2 city-2-loc-1)
  (at package-1 city-2-loc-2)
  (at package-2 city-1-loc-2)
  (at package-3 city-3-loc-2)
  (at truck-1 city-3-loc-1)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-2)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-1-loc-2)
  (at package-2 city-2-loc-2)
  (at package-3 city-1-loc-1)
 ))
 (:metric minimize (total-cost))
)
