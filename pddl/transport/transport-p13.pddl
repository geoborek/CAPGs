; Transport two-cities-sequential-6nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed

(define (problem transport-two-cities-sequential-6nodes-1000size-3degree-100mindistance-2trucks-4packages-2008seed)
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
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
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
 (= (base-drive city-1-loc-4 city-1-loc-1) 26)
 (= (base-drive city-1-loc-1 city-1-loc-4) 26)
 (= (base-drive city-1-loc-4 city-1-loc-3) 45)
 (= (base-drive city-1-loc-3 city-1-loc-4) 45)
 (= (base-drive city-1-loc-5 city-1-loc-1) 37)
 (= (base-drive city-1-loc-1 city-1-loc-5) 37)
 (= (base-drive city-1-loc-5 city-1-loc-4) 12)
 (= (base-drive city-1-loc-4 city-1-loc-5) 12)
 (= (base-drive city-1-loc-6 city-1-loc-2) 19)
 (= (base-drive city-1-loc-2 city-1-loc-6) 19)
 (= (base-drive city-1-loc-6 city-1-loc-3) 34)
 (= (base-drive city-1-loc-3 city-1-loc-6) 34)
 (= (base-drive city-2-loc-2 city-2-loc-1) 30)
 (= (base-drive city-2-loc-1 city-2-loc-2) 30)
 (= (base-drive city-2-loc-3 city-2-loc-2) 47)
 (= (base-drive city-2-loc-2 city-2-loc-3) 47)
 (= (base-drive city-2-loc-4 city-2-loc-1) 18)
 (= (base-drive city-2-loc-1 city-2-loc-4) 18)
 (= (base-drive city-2-loc-4 city-2-loc-2) 24)
 (= (base-drive city-2-loc-2 city-2-loc-4) 24)
 (= (base-drive city-2-loc-4 city-2-loc-3) 32)
 (= (base-drive city-2-loc-3 city-2-loc-4) 32)
 (= (base-drive city-2-loc-5 city-2-loc-2) 42)
 (= (base-drive city-2-loc-2 city-2-loc-5) 42)
 (= (base-drive city-2-loc-5 city-2-loc-3) 24)
 (= (base-drive city-2-loc-3 city-2-loc-5) 24)
 (= (base-drive city-2-loc-5 city-2-loc-4) 41)
 (= (base-drive city-2-loc-4 city-2-loc-5) 41)
 (= (base-drive city-2-loc-6 city-2-loc-1) 43)
 (= (base-drive city-2-loc-1 city-2-loc-6) 43)
 (= (base-drive city-2-loc-6 city-2-loc-2) 41)
 (= (base-drive city-2-loc-2 city-2-loc-6) 41)
 (= (base-drive city-1-loc-5 city-2-loc-5) 123)
 (= (base-drive city-2-loc-5 city-1-loc-5) 123)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 8441)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 6505)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 8524)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 8138)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 7361)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 6025)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 7724)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 6783)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 3253)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 1019)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 3005)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 6030)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 8597)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 3057)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 2551)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 5803)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 6475)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 9118)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 1102)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 3610)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 3701)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 3679)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 7824)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 7113)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-1) 2686)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-1) 2214)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-1) 6872)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-1) 6859)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-1) 6262)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-1) 8602)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-1) 6946)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-1) 6806)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-1) 7204)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-1) 6137)
  (= (cost-drive city-1-loc-5 city-2-loc-5 truck-1) 7465)
  (= (cost-drive city-2-loc-5 city-1-loc-5 truck-1) 6880)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 1012)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 5382)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 8635)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 8327)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 2980)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 7310)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 7684)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 7657)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 2087)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 9964)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 4267)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 3762)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 2767)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 1412)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 5863)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 7908)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 4820)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 5979)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 9879)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 1603)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 7115)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 1834)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 5703)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 9524)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-2) 5347)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-2) 2551)
  (= (cost-drive city-2-loc-5 city-2-loc-3 truck-2) 5867)
  (= (cost-drive city-2-loc-3 city-2-loc-5 truck-2) 8499)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-2) 2861)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-2) 3081)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-2) 1652)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-2) 1404)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-2) 5667)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-2) 9457)
  (= (cost-drive city-1-loc-5 city-2-loc-5 truck-2) 6679)
  (= (cost-drive city-2-loc-5 city-1-loc-5 truck-2) 6856)
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
  ; 912,799 -> 890,543
  (road city-1-loc-4 city-1-loc-1)
  ; 890,543 -> 912,799
  (road city-1-loc-1 city-1-loc-4)
  ; 912,799 -> 748,385
  (road city-1-loc-4 city-1-loc-3)
  ; 748,385 -> 912,799
  (road city-1-loc-3 city-1-loc-4)
  ; 977,899 -> 890,543
  (road city-1-loc-5 city-1-loc-1)
  ; 890,543 -> 977,899
  (road city-1-loc-1 city-1-loc-5)
  ; 977,899 -> 912,799
  (road city-1-loc-5 city-1-loc-4)
  ; 912,799 -> 977,899
  (road city-1-loc-4 city-1-loc-5)
  ; 456,221 -> 384,50
  (road city-1-loc-6 city-1-loc-2)
  ; 384,50 -> 456,221
  (road city-1-loc-2 city-1-loc-6)
  ; 456,221 -> 748,385
  (road city-1-loc-6 city-1-loc-3)
  ; 748,385 -> 456,221
  (road city-1-loc-3 city-1-loc-6)
  ; 2564,783 -> 2742,542
  (road city-2-loc-2 city-2-loc-1)
  ; 2742,542 -> 2564,783
  (road city-2-loc-1 city-2-loc-2)
  ; 2273,425 -> 2564,783
  (road city-2-loc-3 city-2-loc-2)
  ; 2564,783 -> 2273,425
  (road city-2-loc-2 city-2-loc-3)
  ; 2566,552 -> 2742,542
  (road city-2-loc-4 city-2-loc-1)
  ; 2742,542 -> 2566,552
  (road city-2-loc-1 city-2-loc-4)
  ; 2566,552 -> 2564,783
  (road city-2-loc-4 city-2-loc-2)
  ; 2564,783 -> 2566,552
  (road city-2-loc-2 city-2-loc-4)
  ; 2566,552 -> 2273,425
  (road city-2-loc-4 city-2-loc-3)
  ; 2273,425 -> 2566,552
  (road city-2-loc-3 city-2-loc-4)
  ; 2174,643 -> 2564,783
  (road city-2-loc-5 city-2-loc-2)
  ; 2564,783 -> 2174,643
  (road city-2-loc-2 city-2-loc-5)
  ; 2174,643 -> 2273,425
  (road city-2-loc-5 city-2-loc-3)
  ; 2273,425 -> 2174,643
  (road city-2-loc-3 city-2-loc-5)
  ; 2174,643 -> 2566,552
  (road city-2-loc-5 city-2-loc-4)
  ; 2566,552 -> 2174,643
  (road city-2-loc-4 city-2-loc-5)
  ; 2946,916 -> 2742,542
  (road city-2-loc-6 city-2-loc-1)
  ; 2742,542 -> 2946,916
  (road city-2-loc-1 city-2-loc-6)
  ; 2946,916 -> 2564,783
  (road city-2-loc-6 city-2-loc-2)
  ; 2564,783 -> 2946,916
  (road city-2-loc-2 city-2-loc-6)
  ; 977,899 <-> 2174,643
  (road city-1-loc-5 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-5)
  (at package-1 city-1-loc-6)
  (at package-2 city-1-loc-2)
  (at package-3 city-1-loc-1)
  (at package-4 city-1-loc-4)
  (at truck-1 city-2-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-2-loc-2)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-5)
  (at package-3 city-2-loc-3)
  (at package-4 city-2-loc-5)
 ))
 (:metric minimize (total-cost))
)
