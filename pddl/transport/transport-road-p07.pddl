; Transport city-sequential-21nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-city-sequential-21nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed)
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
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
  city-loc-19 - location
  city-loc-20 - location
  city-loc-21 - location
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
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
  (= (base-drive city-loc-7 city-loc-1) 15)
  (= (base-drive city-loc-1 city-loc-7) 15)
  (= (base-drive city-loc-7 city-loc-3) 16)
  (= (base-drive city-loc-3 city-loc-7) 16)
  (= (base-drive city-loc-9 city-loc-6) 28)
  (= (base-drive city-loc-6 city-loc-9) 28)
  (= (base-drive city-loc-10 city-loc-3) 25)
  (= (base-drive city-loc-3 city-loc-10) 25)
  (= (base-drive city-loc-10 city-loc-7) 18)
  (= (base-drive city-loc-7 city-loc-10) 18)
  (= (base-drive city-loc-10 city-loc-8) 24)
  (= (base-drive city-loc-8 city-loc-10) 24)
  (= (base-drive city-loc-11 city-loc-9) 24)
  (= (base-drive city-loc-9 city-loc-11) 24)
  (= (base-drive city-loc-12 city-loc-1) 29)
  (= (base-drive city-loc-1 city-loc-12) 29)
  (= (base-drive city-loc-12 city-loc-3) 23)
  (= (base-drive city-loc-3 city-loc-12) 23)
  (= (base-drive city-loc-13 city-loc-9) 29)
  (= (base-drive city-loc-9 city-loc-13) 29)
  (= (base-drive city-loc-13 city-loc-11) 13)
  (= (base-drive city-loc-11 city-loc-13) 13)
  (= (base-drive city-loc-14 city-loc-4) 13)
  (= (base-drive city-loc-4 city-loc-14) 13)
  (= (base-drive city-loc-14 city-loc-5) 18)
  (= (base-drive city-loc-5 city-loc-14) 18)
  (= (base-drive city-loc-14 city-loc-8) 25)
  (= (base-drive city-loc-8 city-loc-14) 25)
  (= (base-drive city-loc-15 city-loc-9) 15)
  (= (base-drive city-loc-9 city-loc-15) 15)
  (= (base-drive city-loc-15 city-loc-11) 12)
  (= (base-drive city-loc-11 city-loc-15) 12)
  (= (base-drive city-loc-15 city-loc-13) 22)
  (= (base-drive city-loc-13 city-loc-15) 22)
  (= (base-drive city-loc-16 city-loc-11) 16)
  (= (base-drive city-loc-11 city-loc-16) 16)
  (= (base-drive city-loc-16 city-loc-13) 20)
  (= (base-drive city-loc-13 city-loc-16) 20)
  (= (base-drive city-loc-16 city-loc-15) 27)
  (= (base-drive city-loc-15 city-loc-16) 27)
  (= (base-drive city-loc-17 city-loc-8) 16)
  (= (base-drive city-loc-8 city-loc-17) 16)
  (= (base-drive city-loc-17 city-loc-10) 21)
  (= (base-drive city-loc-10 city-loc-17) 21)
  (= (base-drive city-loc-17 city-loc-11) 26)
  (= (base-drive city-loc-11 city-loc-17) 26)
  (= (base-drive city-loc-17 city-loc-15) 22)
  (= (base-drive city-loc-15 city-loc-17) 22)
  (= (base-drive city-loc-18 city-loc-9) 25)
  (= (base-drive city-loc-9 city-loc-18) 25)
  (= (base-drive city-loc-18 city-loc-13) 24)
  (= (base-drive city-loc-13 city-loc-18) 24)
  (= (base-drive city-loc-19 city-loc-12) 28)
  (= (base-drive city-loc-12 city-loc-19) 28)
  (= (base-drive city-loc-20 city-loc-2) 26)
  (= (base-drive city-loc-2 city-loc-20) 26)
  (= (base-drive city-loc-20 city-loc-18) 28)
  (= (base-drive city-loc-18 city-loc-20) 28)
  (= (base-drive city-loc-21 city-loc-6) 23)
  (= (base-drive city-loc-6 city-loc-21) 23)
  (= (base-drive city-loc-21 city-loc-9) 12)
  (= (base-drive city-loc-9 city-loc-21) 12)
  (= (base-drive city-loc-21 city-loc-10) 22)
  (= (base-drive city-loc-10 city-loc-21) 22)
  (= (base-drive city-loc-21 city-loc-15) 19)
  (= (base-drive city-loc-15 city-loc-21) 19)
  (= (base-drive city-loc-21 city-loc-17) 28)
  (= (base-drive city-loc-17 city-loc-21) 28)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1) 6723)
  (= (cost-drive city-loc-1 city-loc-3) 6799)
  (= (cost-drive city-loc-4 city-loc-1) 5097)
  (= (cost-drive city-loc-1 city-loc-4) 9883)
  (= (cost-drive city-loc-5 city-loc-4) 7394)
  (= (cost-drive city-loc-4 city-loc-5) 1333)
  (= (cost-drive city-loc-6 city-loc-2) 6123)
  (= (cost-drive city-loc-2 city-loc-6) 8041)
  (= (cost-drive city-loc-7 city-loc-1) 9372)
  (= (cost-drive city-loc-1 city-loc-7) 9595)
  (= (cost-drive city-loc-7 city-loc-3) 1476)
  (= (cost-drive city-loc-3 city-loc-7) 5634)
  (= (cost-drive city-loc-9 city-loc-6) 5889)
  (= (cost-drive city-loc-6 city-loc-9) 7201)
  (= (cost-drive city-loc-10 city-loc-3) 4229)
  (= (cost-drive city-loc-3 city-loc-10) 3877)
  (= (cost-drive city-loc-10 city-loc-7) 7945)
  (= (cost-drive city-loc-7 city-loc-10) 3036)
  (= (cost-drive city-loc-10 city-loc-8) 6247)
  (= (cost-drive city-loc-8 city-loc-10) 6782)
  (= (cost-drive city-loc-11 city-loc-9) 8428)
  (= (cost-drive city-loc-9 city-loc-11) 4539)
  (= (cost-drive city-loc-12 city-loc-1) 5193)
  (= (cost-drive city-loc-1 city-loc-12) 4592)
  (= (cost-drive city-loc-12 city-loc-3) 6776)
  (= (cost-drive city-loc-3 city-loc-12) 1586)
  (= (cost-drive city-loc-13 city-loc-9) 4728)
  (= (cost-drive city-loc-9 city-loc-13) 3451)
  (= (cost-drive city-loc-13 city-loc-11) 2138)
  (= (cost-drive city-loc-11 city-loc-13) 6337)
  (= (cost-drive city-loc-14 city-loc-4) 2249)
  (= (cost-drive city-loc-4 city-loc-14) 8399)
  (= (cost-drive city-loc-14 city-loc-5) 8784)
  (= (cost-drive city-loc-5 city-loc-14) 8450)
  (= (cost-drive city-loc-14 city-loc-8) 6865)
  (= (cost-drive city-loc-8 city-loc-14) 8675)
  (= (cost-drive city-loc-15 city-loc-9) 4177)
  (= (cost-drive city-loc-9 city-loc-15) 9236)
  (= (cost-drive city-loc-15 city-loc-11) 1078)
  (= (cost-drive city-loc-11 city-loc-15) 7272)
  (= (cost-drive city-loc-15 city-loc-13) 8437)
  (= (cost-drive city-loc-13 city-loc-15) 9291)
  (= (cost-drive city-loc-16 city-loc-11) 3753)
  (= (cost-drive city-loc-11 city-loc-16) 3860)
  (= (cost-drive city-loc-16 city-loc-13) 2842)
  (= (cost-drive city-loc-13 city-loc-16) 9827)
  (= (cost-drive city-loc-16 city-loc-15) 2573)
  (= (cost-drive city-loc-15 city-loc-16) 8532)
  (= (cost-drive city-loc-17 city-loc-8) 8259)
  (= (cost-drive city-loc-8 city-loc-17) 2169)
  (= (cost-drive city-loc-17 city-loc-10) 5821)
  (= (cost-drive city-loc-10 city-loc-17) 8451)
  (= (cost-drive city-loc-17 city-loc-11) 9476)
  (= (cost-drive city-loc-11 city-loc-17) 1352)
  (= (cost-drive city-loc-17 city-loc-15) 9326)
  (= (cost-drive city-loc-15 city-loc-17) 3986)
  (= (cost-drive city-loc-18 city-loc-9) 1482)
  (= (cost-drive city-loc-9 city-loc-18) 3352)
  (= (cost-drive city-loc-18 city-loc-13) 4427)
  (= (cost-drive city-loc-13 city-loc-18) 6530)
  (= (cost-drive city-loc-19 city-loc-12) 3043)
  (= (cost-drive city-loc-12 city-loc-19) 8913)
  (= (cost-drive city-loc-20 city-loc-2) 3711)
  (= (cost-drive city-loc-2 city-loc-20) 3152)
  (= (cost-drive city-loc-20 city-loc-18) 4425)
  (= (cost-drive city-loc-18 city-loc-20) 7215)
  (= (cost-drive city-loc-21 city-loc-6) 4386)
  (= (cost-drive city-loc-6 city-loc-21) 2453)
  (= (cost-drive city-loc-21 city-loc-9) 5290)
  (= (cost-drive city-loc-9 city-loc-21) 2766)
  (= (cost-drive city-loc-21 city-loc-10) 8228)
  (= (cost-drive city-loc-10 city-loc-21) 1304)
  (= (cost-drive city-loc-21 city-loc-15) 9694)
  (= (cost-drive city-loc-15 city-loc-21) 6121)
  (= (cost-drive city-loc-21 city-loc-17) 5894)
  (= (cost-drive city-loc-17 city-loc-21) 7455)
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
  ; 742,542 -> 890,543
  (road city-loc-7 city-loc-1)
  ; 890,543 -> 742,542
  (road city-loc-1 city-loc-7)
  ; 742,542 -> 748,385
  (road city-loc-7 city-loc-3)
  ; 748,385 -> 742,542
  (road city-loc-3 city-loc-7)
  ; 273,425 -> 456,221
  (road city-loc-9 city-loc-6)
  ; 456,221 -> 273,425
  (road city-loc-6 city-loc-9)
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
  ; 55,605 -> 273,425
  (road city-loc-13 city-loc-9)
  ; 273,425 -> 55,605
  (road city-loc-9 city-loc-13)
  ; 55,605 -> 174,643
  (road city-loc-13 city-loc-11)
  ; 174,643 -> 55,605
  (road city-loc-11 city-loc-13)
  ; 803,858 -> 912,799
  (road city-loc-14 city-loc-4)
  ; 912,799 -> 803,858
  (road city-loc-4 city-loc-14)
  ; 803,858 -> 977,899
  (road city-loc-14 city-loc-5)
  ; 977,899 -> 803,858
  (road city-loc-5 city-loc-14)
  ; 803,858 -> 564,783
  (road city-loc-14 city-loc-8)
  ; 564,783 -> 803,858
  (road city-loc-8 city-loc-14)
  ; 263,567 -> 273,425
  (road city-loc-15 city-loc-9)
  ; 273,425 -> 263,567
  (road city-loc-9 city-loc-15)
  ; 263,567 -> 174,643
  (road city-loc-15 city-loc-11)
  ; 174,643 -> 263,567
  (road city-loc-11 city-loc-15)
  ; 263,567 -> 55,605
  (road city-loc-15 city-loc-13)
  ; 55,605 -> 263,567
  (road city-loc-13 city-loc-15)
  ; 128,791 -> 174,643
  (road city-loc-16 city-loc-11)
  ; 174,643 -> 128,791
  (road city-loc-11 city-loc-16)
  ; 128,791 -> 55,605
  (road city-loc-16 city-loc-13)
  ; 55,605 -> 128,791
  (road city-loc-13 city-loc-16)
  ; 128,791 -> 263,567
  (road city-loc-16 city-loc-15)
  ; 263,567 -> 128,791
  (road city-loc-15 city-loc-16)
  ; 426,706 -> 564,783
  (road city-loc-17 city-loc-8)
  ; 564,783 -> 426,706
  (road city-loc-8 city-loc-17)
  ; 426,706 -> 566,552
  (road city-loc-17 city-loc-10)
  ; 566,552 -> 426,706
  (road city-loc-10 city-loc-17)
  ; 426,706 -> 174,643
  (road city-loc-17 city-loc-11)
  ; 174,643 -> 426,706
  (road city-loc-11 city-loc-17)
  ; 426,706 -> 263,567
  (road city-loc-17 city-loc-15)
  ; 263,567 -> 426,706
  (road city-loc-15 city-loc-17)
  ; 36,368 -> 273,425
  (road city-loc-18 city-loc-9)
  ; 273,425 -> 36,368
  (road city-loc-9 city-loc-18)
  ; 36,368 -> 55,605
  (road city-loc-18 city-loc-13)
  ; 55,605 -> 36,368
  (road city-loc-13 city-loc-18)
  ; 806,18 -> 930,259
  (road city-loc-19 city-loc-12)
  ; 930,259 -> 806,18
  (road city-loc-12 city-loc-19)
  ; 138,109 -> 384,50
  (road city-loc-20 city-loc-2)
  ; 384,50 -> 138,109
  (road city-loc-2 city-loc-20)
  ; 138,109 -> 36,368
  (road city-loc-20 city-loc-18)
  ; 36,368 -> 138,109
  (road city-loc-18 city-loc-20)
  ; 392,433 -> 456,221
  (road city-loc-21 city-loc-6)
  ; 456,221 -> 392,433
  (road city-loc-6 city-loc-21)
  ; 392,433 -> 273,425
  (road city-loc-21 city-loc-9)
  ; 273,425 -> 392,433
  (road city-loc-9 city-loc-21)
  ; 392,433 -> 566,552
  (road city-loc-21 city-loc-10)
  ; 566,552 -> 392,433
  (road city-loc-10 city-loc-21)
  ; 392,433 -> 263,567
  (road city-loc-21 city-loc-15)
  ; 263,567 -> 392,433
  (road city-loc-15 city-loc-21)
  ; 392,433 -> 426,706
  (road city-loc-21 city-loc-17)
  ; 426,706 -> 392,433
  (road city-loc-17 city-loc-21)
  (at package-1 city-loc-18)
  (at package-2 city-loc-19)
  (at package-3 city-loc-5)
  (at package-4 city-loc-19)
  (at package-5 city-loc-6)
  (at package-6 city-loc-19)
  (at package-7 city-loc-1)
  (at package-8 city-loc-7)
  (at truck-1 city-loc-1)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-10)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-17)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-21)
  (at package-2 city-loc-5)
  (at package-3 city-loc-13)
  (at package-4 city-loc-16)
  (at package-5 city-loc-2)
  (at package-6 city-loc-4)
  (at package-7 city-loc-8)
  (at package-8 city-loc-19)
 ))
 (:metric minimize (total-cost))
)
