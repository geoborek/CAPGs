; Transport city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-city-sequential-12nodes-1000size-3degree-100mindistance-2trucks-5packages-2008seed)
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
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
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
 (= (base-drive city-loc-8 city-loc-7) 30)
 (= (base-drive city-loc-7 city-loc-8) 30)
 (= (base-drive city-loc-9 city-loc-6) 28)
 (= (base-drive city-loc-6 city-loc-9) 28)
 (= (base-drive city-loc-10 city-loc-1) 33)
 (= (base-drive city-loc-1 city-loc-10) 33)
 (= (base-drive city-loc-10 city-loc-3) 25)
 (= (base-drive city-loc-3 city-loc-10) 25)
 (= (base-drive city-loc-10 city-loc-7) 18)
 (= (base-drive city-loc-7 city-loc-10) 18)
 (= (base-drive city-loc-10 city-loc-8) 24)
 (= (base-drive city-loc-8 city-loc-10) 24)
 (= (base-drive city-loc-10 city-loc-9) 32)
 (= (base-drive city-loc-9 city-loc-10) 32)
 (= (base-drive city-loc-11 city-loc-9) 24)
 (= (base-drive city-loc-9 city-loc-11) 24)
 (= (base-drive city-loc-12 city-loc-1) 29)
 (= (base-drive city-loc-1 city-loc-12) 29)
 (= (base-drive city-loc-12 city-loc-3) 23)
 (= (base-drive city-loc-3 city-loc-12) 23)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 6361)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 4014)
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 8756)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 4973)
  (= (cost-drive city-loc-5 city-loc-4 truck-1) 5621)
  (= (cost-drive city-loc-4 city-loc-5 truck-1) 6353)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 9106)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 2331)
  (= (cost-drive city-loc-6 city-loc-3 truck-1) 6283)
  (= (cost-drive city-loc-3 city-loc-6 truck-1) 4380)
  (= (cost-drive city-loc-7 city-loc-1 truck-1) 4193)
  (= (cost-drive city-loc-1 city-loc-7 truck-1) 5521)
  (= (cost-drive city-loc-7 city-loc-3 truck-1) 6529)
  (= (cost-drive city-loc-3 city-loc-7 truck-1) 8723)
  (= (cost-drive city-loc-7 city-loc-4 truck-1) 6609)
  (= (cost-drive city-loc-4 city-loc-7 truck-1) 5943)
  (= (cost-drive city-loc-8 city-loc-7 truck-1) 5992)
  (= (cost-drive city-loc-7 city-loc-8 truck-1) 7405)
  (= (cost-drive city-loc-9 city-loc-6 truck-1) 3591)
  (= (cost-drive city-loc-6 city-loc-9 truck-1) 4749)
  (= (cost-drive city-loc-10 city-loc-1 truck-1) 3641)
  (= (cost-drive city-loc-1 city-loc-10 truck-1) 8906)
  (= (cost-drive city-loc-10 city-loc-3 truck-1) 5105)
  (= (cost-drive city-loc-3 city-loc-10 truck-1) 7036)
  (= (cost-drive city-loc-10 city-loc-7 truck-1) 9817)
  (= (cost-drive city-loc-7 city-loc-10 truck-1) 8866)
  (= (cost-drive city-loc-10 city-loc-8 truck-1) 4577)
  (= (cost-drive city-loc-8 city-loc-10 truck-1) 5610)
  (= (cost-drive city-loc-10 city-loc-9 truck-1) 9859)
  (= (cost-drive city-loc-9 city-loc-10 truck-1) 8219)
  (= (cost-drive city-loc-11 city-loc-9 truck-1) 8247)
  (= (cost-drive city-loc-9 city-loc-11 truck-1) 4590)
  (= (cost-drive city-loc-12 city-loc-1 truck-1) 5761)
  (= (cost-drive city-loc-1 city-loc-12 truck-1) 5199)
  (= (cost-drive city-loc-12 city-loc-3 truck-1) 2479)
  (= (cost-drive city-loc-3 city-loc-12 truck-1) 6352)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 8476)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 9053)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 6337)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 6897)
  (= (cost-drive city-loc-5 city-loc-4 truck-2) 7636)
  (= (cost-drive city-loc-4 city-loc-5 truck-2) 1859)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 3226)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 5136)
  (= (cost-drive city-loc-6 city-loc-3 truck-2) 5481)
  (= (cost-drive city-loc-3 city-loc-6 truck-2) 8984)
  (= (cost-drive city-loc-7 city-loc-1 truck-2) 4001)
  (= (cost-drive city-loc-1 city-loc-7 truck-2) 3648)
  (= (cost-drive city-loc-7 city-loc-3 truck-2) 2120)
  (= (cost-drive city-loc-3 city-loc-7 truck-2) 1059)
  (= (cost-drive city-loc-7 city-loc-4 truck-2) 5644)
  (= (cost-drive city-loc-4 city-loc-7 truck-2) 9590)
  (= (cost-drive city-loc-8 city-loc-7 truck-2) 6742)
  (= (cost-drive city-loc-7 city-loc-8 truck-2) 2315)
  (= (cost-drive city-loc-9 city-loc-6 truck-2) 9618)
  (= (cost-drive city-loc-6 city-loc-9 truck-2) 9692)
  (= (cost-drive city-loc-10 city-loc-1 truck-2) 9168)
  (= (cost-drive city-loc-1 city-loc-10 truck-2) 1960)
  (= (cost-drive city-loc-10 city-loc-3 truck-2) 5967)
  (= (cost-drive city-loc-3 city-loc-10 truck-2) 6839)
  (= (cost-drive city-loc-10 city-loc-7 truck-2) 4983)
  (= (cost-drive city-loc-7 city-loc-10 truck-2) 1060)
  (= (cost-drive city-loc-10 city-loc-8 truck-2) 7709)
  (= (cost-drive city-loc-8 city-loc-10 truck-2) 6535)
  (= (cost-drive city-loc-10 city-loc-9 truck-2) 2690)
  (= (cost-drive city-loc-9 city-loc-10 truck-2) 5126)
  (= (cost-drive city-loc-11 city-loc-9 truck-2) 8313)
  (= (cost-drive city-loc-9 city-loc-11 truck-2) 9694)
  (= (cost-drive city-loc-12 city-loc-1 truck-2) 6534)
  (= (cost-drive city-loc-1 city-loc-12 truck-2) 7884)
  (= (cost-drive city-loc-12 city-loc-3 truck-2) 7862)
  (= (cost-drive city-loc-3 city-loc-12 truck-2) 1703)
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
  ; 564,783 -> 742,542
  (road city-loc-8 city-loc-7)
  ; 742,542 -> 564,783
  (road city-loc-7 city-loc-8)
  ; 273,425 -> 456,221
  (road city-loc-9 city-loc-6)
  ; 456,221 -> 273,425
  (road city-loc-6 city-loc-9)
  ; 566,552 -> 890,543
  (road city-loc-10 city-loc-1)
  ; 890,543 -> 566,552
  (road city-loc-1 city-loc-10)
  ; 566,552 -> 748,385
  (road city-loc-10 city-loc-3)
  ; 748,385 -> 566,552
  (road city-loc-3 city-loc-10)
  ; 566,552 -> 742,542
  (road city-loc-10 city-loc-7)
  ; 742,542 -> 566,552
  (road city-loc-7 city-loc-10)
  ; 566,552 -> 564,783
  (road city-loc-10 city-loc-8)
  ; 564,783 -> 566,552
  (road city-loc-8 city-loc-10)
  ; 566,552 -> 273,425
  (road city-loc-10 city-loc-9)
  ; 273,425 -> 566,552
  (road city-loc-9 city-loc-10)
  ; 174,643 -> 273,425
  (road city-loc-11 city-loc-9)
  ; 273,425 -> 174,643
  (road city-loc-9 city-loc-11)
  ; 930,259 -> 890,543
  (road city-loc-12 city-loc-1)
  ; 890,543 -> 930,259
  (road city-loc-1 city-loc-12)
  ; 930,259 -> 748,385
  (road city-loc-12 city-loc-3)
  ; 748,385 -> 930,259
  (road city-loc-3 city-loc-12)
  (at package-1 city-loc-1)
  (at package-2 city-loc-8)
  (at package-3 city-loc-10)
  (at package-4 city-loc-11)
  (at package-5 city-loc-4)
  (at truck-1 city-loc-2)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-9)
  (at package-2 city-loc-1)
  (at package-3 city-loc-5)
  (at package-4 city-loc-10)
  (at package-5 city-loc-1)
 ))
 (:metric minimize (total-cost))
)
