; Transport city-sequential-9nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-city-sequential-9nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed)
 (:domain transport)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
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
 (= (base-drive city-loc-7 city-loc-1) 15)
 (= (base-drive city-loc-1 city-loc-7) 15)
 (= (base-drive city-loc-7 city-loc-3) 16)
 (= (base-drive city-loc-3 city-loc-7) 16)
 (= (base-drive city-loc-7 city-loc-4) 31)
 (= (base-drive city-loc-4 city-loc-7) 31)
 (= (base-drive city-loc-8 city-loc-4) 35)
 (= (base-drive city-loc-4 city-loc-8) 35)
 (= (base-drive city-loc-8 city-loc-7) 30)
 (= (base-drive city-loc-7 city-loc-8) 30)
 (= (base-drive city-loc-9 city-loc-2) 40)
 (= (base-drive city-loc-2 city-loc-9) 40)
 (= (base-drive city-loc-9 city-loc-6) 28)
 (= (base-drive city-loc-6 city-loc-9) 28)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 4068)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 8344)
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 8041)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 3857)
  (= (cost-drive city-loc-5 city-loc-1 truck-1) 3111)
  (= (cost-drive city-loc-1 city-loc-5 truck-1) 4770)
  (= (cost-drive city-loc-5 city-loc-4 truck-1) 8437)
  (= (cost-drive city-loc-4 city-loc-5 truck-1) 7994)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 4555)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 6253)
  (= (cost-drive city-loc-6 city-loc-3 truck-1) 1216)
  (= (cost-drive city-loc-3 city-loc-6 truck-1) 8905)
  (= (cost-drive city-loc-7 city-loc-1 truck-1) 6352)
  (= (cost-drive city-loc-1 city-loc-7 truck-1) 4332)
  (= (cost-drive city-loc-7 city-loc-3 truck-1) 4827)
  (= (cost-drive city-loc-3 city-loc-7 truck-1) 7980)
  (= (cost-drive city-loc-7 city-loc-4 truck-1) 5697)
  (= (cost-drive city-loc-4 city-loc-7 truck-1) 5000)
  (= (cost-drive city-loc-8 city-loc-4 truck-1) 4471)
  (= (cost-drive city-loc-4 city-loc-8 truck-1) 4296)
  (= (cost-drive city-loc-8 city-loc-7 truck-1) 6843)
  (= (cost-drive city-loc-7 city-loc-8 truck-1) 2915)
  (= (cost-drive city-loc-9 city-loc-2 truck-1) 5600)
  (= (cost-drive city-loc-2 city-loc-9 truck-1) 8692)
  (= (cost-drive city-loc-9 city-loc-6 truck-1) 4753)
  (= (cost-drive city-loc-6 city-loc-9 truck-1) 4495)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 1515)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 7175)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 6484)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 3675)
  (= (cost-drive city-loc-5 city-loc-1 truck-2) 5941)
  (= (cost-drive city-loc-1 city-loc-5 truck-2) 2470)
  (= (cost-drive city-loc-5 city-loc-4 truck-2) 7121)
  (= (cost-drive city-loc-4 city-loc-5 truck-2) 7911)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 1017)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 6808)
  (= (cost-drive city-loc-6 city-loc-3 truck-2) 6293)
  (= (cost-drive city-loc-3 city-loc-6 truck-2) 7402)
  (= (cost-drive city-loc-7 city-loc-1 truck-2) 6154)
  (= (cost-drive city-loc-1 city-loc-7 truck-2) 8060)
  (= (cost-drive city-loc-7 city-loc-3 truck-2) 2676)
  (= (cost-drive city-loc-3 city-loc-7 truck-2) 9513)
  (= (cost-drive city-loc-7 city-loc-4 truck-2) 7380)
  (= (cost-drive city-loc-4 city-loc-7 truck-2) 6139)
  (= (cost-drive city-loc-8 city-loc-4 truck-2) 5792)
  (= (cost-drive city-loc-4 city-loc-8 truck-2) 8975)
  (= (cost-drive city-loc-8 city-loc-7 truck-2) 6967)
  (= (cost-drive city-loc-7 city-loc-8 truck-2) 9987)
  (= (cost-drive city-loc-9 city-loc-2 truck-2) 2909)
  (= (cost-drive city-loc-2 city-loc-9 truck-2) 6123)
  (= (cost-drive city-loc-9 city-loc-6 truck-2) 1952)
  (= (cost-drive city-loc-6 city-loc-9 truck-2) 6058)
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
  ; 742,542 -> 890,543
  (road city-loc-7 city-loc-1)
  ; 890,543 -> 742,542
  (road city-loc-1 city-loc-7)
  ; 742,542 -> 748,385
  (road city-loc-7 city-loc-3)
  ; 748,385 -> 742,542
  (road city-loc-3 city-loc-7)
  ; 742,542 -> 912,799
  (road city-loc-7 city-loc-4)
  ; 912,799 -> 742,542
  (road city-loc-4 city-loc-7)
  ; 564,783 -> 912,799
  (road city-loc-8 city-loc-4)
  ; 912,799 -> 564,783
  (road city-loc-4 city-loc-8)
  ; 564,783 -> 742,542
  (road city-loc-8 city-loc-7)
  ; 742,542 -> 564,783
  (road city-loc-7 city-loc-8)
  ; 273,425 -> 384,50
  (road city-loc-9 city-loc-2)
  ; 384,50 -> 273,425
  (road city-loc-2 city-loc-9)
  ; 273,425 -> 456,221
  (road city-loc-9 city-loc-6)
  ; 456,221 -> 273,425
  (road city-loc-6 city-loc-9)
  (at package-1 city-loc-6)
  (at package-2 city-loc-5)
  (at package-3 city-loc-6)
  (at package-4 city-loc-6)
  (at truck-1 city-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-9)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-3)
  (at package-3 city-loc-1)
  (at package-4 city-loc-8)
 ))
 (:metric minimize (total-cost))
)
