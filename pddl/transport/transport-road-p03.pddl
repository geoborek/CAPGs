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
  (= (cost-drive city-loc-3 city-loc-1) 9793)
  (= (cost-drive city-loc-1 city-loc-3) 8593)
  (= (cost-drive city-loc-4 city-loc-1) 9809)
  (= (cost-drive city-loc-1 city-loc-4) 9743)
  (= (cost-drive city-loc-5 city-loc-1) 7880)
  (= (cost-drive city-loc-1 city-loc-5) 6160)
  (= (cost-drive city-loc-5 city-loc-4) 9766)
  (= (cost-drive city-loc-4 city-loc-5) 4440)
  (= (cost-drive city-loc-6 city-loc-2) 9014)
  (= (cost-drive city-loc-2 city-loc-6) 2618)
  (= (cost-drive city-loc-6 city-loc-3) 4001)
  (= (cost-drive city-loc-3 city-loc-6) 1691)
  (= (cost-drive city-loc-7 city-loc-1) 1273)
  (= (cost-drive city-loc-1 city-loc-7) 3826)
  (= (cost-drive city-loc-7 city-loc-3) 9039)
  (= (cost-drive city-loc-3 city-loc-7) 9350)
  (= (cost-drive city-loc-7 city-loc-4) 6964)
  (= (cost-drive city-loc-4 city-loc-7) 4367)
  (= (cost-drive city-loc-8 city-loc-4) 9976)
  (= (cost-drive city-loc-4 city-loc-8) 8534)
  (= (cost-drive city-loc-8 city-loc-7) 8905)
  (= (cost-drive city-loc-7 city-loc-8) 4725)
  (= (cost-drive city-loc-9 city-loc-2) 9621)
  (= (cost-drive city-loc-2 city-loc-9) 7580)
  (= (cost-drive city-loc-9 city-loc-6) 1684)
  (= (cost-drive city-loc-6 city-loc-9) 3113)
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
