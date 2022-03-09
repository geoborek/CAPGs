; Transport city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed

(define (problem transport-city-sequential-18nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed)
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
  (= (base-drive city-loc-7 city-loc-4) 31)
  (= (base-drive city-loc-4 city-loc-7) 31)
  (= (base-drive city-loc-8 city-loc-7) 30)
  (= (base-drive city-loc-7 city-loc-8) 30)
  (= (base-drive city-loc-9 city-loc-6) 28)
  (= (base-drive city-loc-6 city-loc-9) 28)
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
  (= (base-drive city-loc-15 city-loc-10) 31)
  (= (base-drive city-loc-10 city-loc-15) 31)
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
  (= (base-drive city-loc-17 city-loc-16) 31)
  (= (base-drive city-loc-16 city-loc-17) 31)
  (= (base-drive city-loc-18 city-loc-9) 25)
  (= (base-drive city-loc-9 city-loc-18) 25)
  (= (base-drive city-loc-18 city-loc-11) 31)
  (= (base-drive city-loc-11 city-loc-18) 31)
  (= (base-drive city-loc-18 city-loc-13) 24)
  (= (base-drive city-loc-13 city-loc-18) 24)
  (= (base-drive city-loc-18 city-loc-15) 31)
  (= (base-drive city-loc-15 city-loc-18) 31)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1) 2472)
  (= (cost-drive city-loc-1 city-loc-3) 7040)
  (= (cost-drive city-loc-4 city-loc-1) 5315)
  (= (cost-drive city-loc-1 city-loc-4) 8011)
  (= (cost-drive city-loc-5 city-loc-4) 7870)
  (= (cost-drive city-loc-4 city-loc-5) 1283)
  (= (cost-drive city-loc-6 city-loc-2) 4254)
  (= (cost-drive city-loc-2 city-loc-6) 7797)
  (= (cost-drive city-loc-7 city-loc-1) 6421)
  (= (cost-drive city-loc-1 city-loc-7) 5377)
  (= (cost-drive city-loc-7 city-loc-3) 9710)
  (= (cost-drive city-loc-3 city-loc-7) 8484)
  (= (cost-drive city-loc-7 city-loc-4) 6747)
  (= (cost-drive city-loc-4 city-loc-7) 4681)
  (= (cost-drive city-loc-8 city-loc-7) 8764)
  (= (cost-drive city-loc-7 city-loc-8) 3086)
  (= (cost-drive city-loc-9 city-loc-6) 3389)
  (= (cost-drive city-loc-6 city-loc-9) 2326)
  (= (cost-drive city-loc-10 city-loc-3) 5436)
  (= (cost-drive city-loc-3 city-loc-10) 1546)
  (= (cost-drive city-loc-10 city-loc-7) 1766)
  (= (cost-drive city-loc-7 city-loc-10) 1421)
  (= (cost-drive city-loc-10 city-loc-8) 3843)
  (= (cost-drive city-loc-8 city-loc-10) 1245)
  (= (cost-drive city-loc-10 city-loc-9) 1942)
  (= (cost-drive city-loc-9 city-loc-10) 8893)
  (= (cost-drive city-loc-11 city-loc-9) 5728)
  (= (cost-drive city-loc-9 city-loc-11) 2197)
  (= (cost-drive city-loc-12 city-loc-1) 3154)
  (= (cost-drive city-loc-1 city-loc-12) 3677)
  (= (cost-drive city-loc-12 city-loc-3) 9355)
  (= (cost-drive city-loc-3 city-loc-12) 8076)
  (= (cost-drive city-loc-13 city-loc-9) 6918)
  (= (cost-drive city-loc-9 city-loc-13) 7699)
  (= (cost-drive city-loc-13 city-loc-11) 1773)
  (= (cost-drive city-loc-11 city-loc-13) 9189)
  (= (cost-drive city-loc-14 city-loc-4) 6864)
  (= (cost-drive city-loc-4 city-loc-14) 2874)
  (= (cost-drive city-loc-14 city-loc-5) 8094)
  (= (cost-drive city-loc-5 city-loc-14) 9622)
  (= (cost-drive city-loc-14 city-loc-8) 9799)
  (= (cost-drive city-loc-8 city-loc-14) 8486)
  (= (cost-drive city-loc-15 city-loc-9) 8458)
  (= (cost-drive city-loc-9 city-loc-15) 5253)
  (= (cost-drive city-loc-15 city-loc-10) 2939)
  (= (cost-drive city-loc-10 city-loc-15) 6536)
  (= (cost-drive city-loc-15 city-loc-11) 3133)
  (= (cost-drive city-loc-11 city-loc-15) 1769)
  (= (cost-drive city-loc-15 city-loc-13) 7720)
  (= (cost-drive city-loc-13 city-loc-15) 3626)
  (= (cost-drive city-loc-16 city-loc-11) 3793)
  (= (cost-drive city-loc-11 city-loc-16) 4697)
  (= (cost-drive city-loc-16 city-loc-13) 1058)
  (= (cost-drive city-loc-13 city-loc-16) 3447)
  (= (cost-drive city-loc-16 city-loc-15) 4816)
  (= (cost-drive city-loc-15 city-loc-16) 1871)
  (= (cost-drive city-loc-17 city-loc-8) 1672)
  (= (cost-drive city-loc-8 city-loc-17) 4867)
  (= (cost-drive city-loc-17 city-loc-10) 6487)
  (= (cost-drive city-loc-10 city-loc-17) 9080)
  (= (cost-drive city-loc-17 city-loc-11) 3394)
  (= (cost-drive city-loc-11 city-loc-17) 1884)
  (= (cost-drive city-loc-17 city-loc-15) 1101)
  (= (cost-drive city-loc-15 city-loc-17) 1961)
  (= (cost-drive city-loc-17 city-loc-16) 9480)
  (= (cost-drive city-loc-16 city-loc-17) 7480)
  (= (cost-drive city-loc-18 city-loc-9) 2347)
  (= (cost-drive city-loc-9 city-loc-18) 4655)
  (= (cost-drive city-loc-18 city-loc-11) 8354)
  (= (cost-drive city-loc-11 city-loc-18) 1623)
  (= (cost-drive city-loc-18 city-loc-13) 2983)
  (= (cost-drive city-loc-13 city-loc-18) 5958)
  (= (cost-drive city-loc-18 city-loc-15) 1046)
  (= (cost-drive city-loc-15 city-loc-18) 5129)
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
  ; 263,567 -> 566,552
  (road city-loc-15 city-loc-10)
  ; 566,552 -> 263,567
  (road city-loc-10 city-loc-15)
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
  ; 426,706 -> 128,791
  (road city-loc-17 city-loc-16)
  ; 128,791 -> 426,706
  (road city-loc-16 city-loc-17)
  ; 36,368 -> 273,425
  (road city-loc-18 city-loc-9)
  ; 273,425 -> 36,368
  (road city-loc-9 city-loc-18)
  ; 36,368 -> 174,643
  (road city-loc-18 city-loc-11)
  ; 174,643 -> 36,368
  (road city-loc-11 city-loc-18)
  ; 36,368 -> 55,605
  (road city-loc-18 city-loc-13)
  ; 55,605 -> 36,368
  (road city-loc-13 city-loc-18)
  ; 36,368 -> 263,567
  (road city-loc-18 city-loc-15)
  ; 263,567 -> 36,368
  (road city-loc-15 city-loc-18)
  (at package-1 city-loc-15)
  (at package-2 city-loc-1)
  (at package-3 city-loc-3)
  (at package-4 city-loc-2)
  (at package-5 city-loc-8)
  (at package-6 city-loc-8)
  (at package-7 city-loc-16)
  (at truck-1 city-loc-5)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-1)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-6)
  (at package-2 city-loc-13)
  (at package-3 city-loc-1)
  (at package-4 city-loc-18)
  (at package-5 city-loc-9)
  (at package-6 city-loc-2)
  (at package-7 city-loc-14)
 ))
 (:metric minimize (total-cost))
)
