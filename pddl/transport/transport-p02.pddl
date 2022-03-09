; Transport city-sequential-6nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed

(define (problem transport-city-sequential-6nodes-1000size-2degree-100mindistance-2trucks-3packages-2008seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
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
 (= (base-drive city-loc-3 city-loc-1) 22)
 (= (base-drive city-loc-1 city-loc-3) 22)
 (= (base-drive city-loc-4 city-loc-1) 26)
 (= (base-drive city-loc-1 city-loc-4) 26)
 (= (base-drive city-loc-5 city-loc-1) 37)
 (= (base-drive city-loc-1 city-loc-5) 37)
 (= (base-drive city-loc-5 city-loc-4) 12)
 (= (base-drive city-loc-4 city-loc-5) 12)
 (= (base-drive city-loc-6 city-loc-2) 19)
 (= (base-drive city-loc-2 city-loc-6) 19)
 (= (base-drive city-loc-6 city-loc-3) 34)
 (= (base-drive city-loc-3 city-loc-6) 34)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 9147)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 8561)
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 1437)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 9918)
  (= (cost-drive city-loc-5 city-loc-1 truck-1) 7883)
  (= (cost-drive city-loc-1 city-loc-5 truck-1) 1436)
  (= (cost-drive city-loc-5 city-loc-4 truck-1) 4600)
  (= (cost-drive city-loc-4 city-loc-5 truck-1) 6547)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 8374)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 1741)
  (= (cost-drive city-loc-6 city-loc-3 truck-1) 5364)
  (= (cost-drive city-loc-3 city-loc-6 truck-1) 3764)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 6756)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 3730)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 8023)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 9432)
  (= (cost-drive city-loc-5 city-loc-1 truck-2) 5121)
  (= (cost-drive city-loc-1 city-loc-5 truck-2) 5160)
  (= (cost-drive city-loc-5 city-loc-4 truck-2) 4492)
  (= (cost-drive city-loc-4 city-loc-5 truck-2) 6413)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 3755)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 1584)
  (= (cost-drive city-loc-6 city-loc-3 truck-2) 2551)
  (= (cost-drive city-loc-3 city-loc-6 truck-2) 2239)
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
  ; 912,799 -> 890,543
  (road city-loc-4 city-loc-1)
  ; 890,543 -> 912,799
  (road city-loc-1 city-loc-4)
  ; 977,899 -> 890,543
  (road city-loc-5 city-loc-1)
  ; 890,543 -> 977,899
  (road city-loc-1 city-loc-5)
  ; 977,899 -> 912,799
  (road city-loc-5 city-loc-4)
  ; 912,799 -> 977,899
  (road city-loc-4 city-loc-5)
  ; 456,221 -> 384,50
  (road city-loc-6 city-loc-2)
  ; 384,50 -> 456,221
  (road city-loc-2 city-loc-6)
  ; 456,221 -> 748,385
  (road city-loc-6 city-loc-3)
  ; 748,385 -> 456,221
  (road city-loc-3 city-loc-6)
  (at package-1 city-loc-5)
  (at package-2 city-loc-4)
  (at package-3 city-loc-4)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-4)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-loc-4)
  (at package-2 city-loc-2)
  (at package-3 city-loc-6)
 ))
 (:metric minimize (total-cost))
)
