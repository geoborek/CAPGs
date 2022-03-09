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
  (= (cost-drive city-loc-3 city-loc-1) 4734)
  (= (cost-drive city-loc-1 city-loc-3) 6511)
  (= (cost-drive city-loc-4 city-loc-1) 5346)
  (= (cost-drive city-loc-1 city-loc-4) 2649)
  (= (cost-drive city-loc-5 city-loc-4) 3790)
  (= (cost-drive city-loc-4 city-loc-5) 5717)
  (= (cost-drive city-loc-6 city-loc-2) 1758)
  (= (cost-drive city-loc-2 city-loc-6) 9043)
  (= (cost-drive city-loc-6 city-loc-3) 1236)
  (= (cost-drive city-loc-3 city-loc-6) 2164)
  (= (cost-drive city-loc-7 city-loc-1) 3532)
  (= (cost-drive city-loc-1 city-loc-7) 5872)
  (= (cost-drive city-loc-7 city-loc-3) 7731)
  (= (cost-drive city-loc-3 city-loc-7) 1400)
  (= (cost-drive city-loc-7 city-loc-4) 5927)
  (= (cost-drive city-loc-4 city-loc-7) 7324)
  (= (cost-drive city-loc-8 city-loc-7) 8720)
  (= (cost-drive city-loc-7 city-loc-8) 8611)
  (= (cost-drive city-loc-9 city-loc-6) 8477)
  (= (cost-drive city-loc-6 city-loc-9) 5965)
  (= (cost-drive city-loc-10 city-loc-1) 3640)
  (= (cost-drive city-loc-1 city-loc-10) 8483)
  (= (cost-drive city-loc-10 city-loc-3) 9212)
  (= (cost-drive city-loc-3 city-loc-10) 2590)
  (= (cost-drive city-loc-10 city-loc-7) 7693)
  (= (cost-drive city-loc-7 city-loc-10) 8112)
  (= (cost-drive city-loc-10 city-loc-8) 8906)
  (= (cost-drive city-loc-8 city-loc-10) 5310)
  (= (cost-drive city-loc-10 city-loc-9) 1985)
  (= (cost-drive city-loc-9 city-loc-10) 9380)
  (= (cost-drive city-loc-11 city-loc-9) 7527)
  (= (cost-drive city-loc-9 city-loc-11) 5502)
  (= (cost-drive city-loc-12 city-loc-1) 1786)
  (= (cost-drive city-loc-1 city-loc-12) 9004)
  (= (cost-drive city-loc-12 city-loc-3) 7980)
  (= (cost-drive city-loc-3 city-loc-12) 8154)
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
