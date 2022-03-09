; Transport city-sequential-24nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed

(define (problem transport-city-sequential-24nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed)
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
  city-loc-22 - location
  city-loc-23 - location
  city-loc-24 - location
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
  package-9 - package
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
  (= (base-drive city-loc-12 city-loc-3) 23)
  (= (base-drive city-loc-3 city-loc-12) 23)
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
  (= (base-drive city-loc-22 city-loc-11) 25)
  (= (base-drive city-loc-11 city-loc-22) 25)
  (= (base-drive city-loc-22 city-loc-16) 14)
  (= (base-drive city-loc-16 city-loc-22) 14)
  (= (base-drive city-loc-22 city-loc-17) 27)
  (= (base-drive city-loc-17 city-loc-22) 27)
  (= (base-drive city-loc-23 city-loc-19) 13)
  (= (base-drive city-loc-19 city-loc-23) 13)
  (= (base-drive city-loc-24 city-loc-1) 14)
  (= (base-drive city-loc-1 city-loc-24) 14)
  (= (base-drive city-loc-24 city-loc-3) 26)
  (= (base-drive city-loc-3 city-loc-24) 26)
  (= (base-drive city-loc-24 city-loc-7) 27)
  (= (base-drive city-loc-7 city-loc-24) 27)
  (= (base-drive city-loc-24 city-loc-12) 21)
  (= (base-drive city-loc-12 city-loc-24) 21)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1) 5369)
  (= (cost-drive city-loc-1 city-loc-3) 7582)
  (= (cost-drive city-loc-4 city-loc-1) 8633)
  (= (cost-drive city-loc-1 city-loc-4) 6767)
  (= (cost-drive city-loc-5 city-loc-4) 9028)
  (= (cost-drive city-loc-4 city-loc-5) 1505)
  (= (cost-drive city-loc-6 city-loc-2) 1638)
  (= (cost-drive city-loc-2 city-loc-6) 6080)
  (= (cost-drive city-loc-7 city-loc-1) 5209)
  (= (cost-drive city-loc-1 city-loc-7) 9058)
  (= (cost-drive city-loc-7 city-loc-3) 6022)
  (= (cost-drive city-loc-3 city-loc-7) 1900)
  (= (cost-drive city-loc-9 city-loc-6) 7418)
  (= (cost-drive city-loc-6 city-loc-9) 3833)
  (= (cost-drive city-loc-10 city-loc-3) 9790)
  (= (cost-drive city-loc-3 city-loc-10) 1749)
  (= (cost-drive city-loc-10 city-loc-7) 5820)
  (= (cost-drive city-loc-7 city-loc-10) 8015)
  (= (cost-drive city-loc-10 city-loc-8) 8240)
  (= (cost-drive city-loc-8 city-loc-10) 8308)
  (= (cost-drive city-loc-11 city-loc-9) 2041)
  (= (cost-drive city-loc-9 city-loc-11) 5488)
  (= (cost-drive city-loc-12 city-loc-3) 2875)
  (= (cost-drive city-loc-3 city-loc-12) 7822)
  (= (cost-drive city-loc-13 city-loc-11) 6526)
  (= (cost-drive city-loc-11 city-loc-13) 5998)
  (= (cost-drive city-loc-14 city-loc-4) 6655)
  (= (cost-drive city-loc-4 city-loc-14) 9580)
  (= (cost-drive city-loc-14 city-loc-5) 3281)
  (= (cost-drive city-loc-5 city-loc-14) 5096)
  (= (cost-drive city-loc-14 city-loc-8) 7687)
  (= (cost-drive city-loc-8 city-loc-14) 9710)
  (= (cost-drive city-loc-15 city-loc-9) 5225)
  (= (cost-drive city-loc-9 city-loc-15) 6782)
  (= (cost-drive city-loc-15 city-loc-11) 3343)
  (= (cost-drive city-loc-11 city-loc-15) 6571)
  (= (cost-drive city-loc-15 city-loc-13) 9269)
  (= (cost-drive city-loc-13 city-loc-15) 4967)
  (= (cost-drive city-loc-16 city-loc-11) 3409)
  (= (cost-drive city-loc-11 city-loc-16) 9958)
  (= (cost-drive city-loc-16 city-loc-13) 7574)
  (= (cost-drive city-loc-13 city-loc-16) 5809)
  (= (cost-drive city-loc-16 city-loc-15) 2970)
  (= (cost-drive city-loc-15 city-loc-16) 6056)
  (= (cost-drive city-loc-17 city-loc-8) 9165)
  (= (cost-drive city-loc-8 city-loc-17) 8463)
  (= (cost-drive city-loc-17 city-loc-10) 9085)
  (= (cost-drive city-loc-10 city-loc-17) 9638)
  (= (cost-drive city-loc-17 city-loc-11) 7825)
  (= (cost-drive city-loc-11 city-loc-17) 4789)
  (= (cost-drive city-loc-17 city-loc-15) 1278)
  (= (cost-drive city-loc-15 city-loc-17) 1731)
  (= (cost-drive city-loc-18 city-loc-9) 2559)
  (= (cost-drive city-loc-9 city-loc-18) 4943)
  (= (cost-drive city-loc-18 city-loc-13) 2238)
  (= (cost-drive city-loc-13 city-loc-18) 7647)
  (= (cost-drive city-loc-19 city-loc-12) 5827)
  (= (cost-drive city-loc-12 city-loc-19) 8662)
  (= (cost-drive city-loc-20 city-loc-2) 7207)
  (= (cost-drive city-loc-2 city-loc-20) 4307)
  (= (cost-drive city-loc-21 city-loc-6) 6836)
  (= (cost-drive city-loc-6 city-loc-21) 4270)
  (= (cost-drive city-loc-21 city-loc-9) 9437)
  (= (cost-drive city-loc-9 city-loc-21) 6632)
  (= (cost-drive city-loc-21 city-loc-10) 2344)
  (= (cost-drive city-loc-10 city-loc-21) 1072)
  (= (cost-drive city-loc-21 city-loc-15) 8532)
  (= (cost-drive city-loc-15 city-loc-21) 2964)
  (= (cost-drive city-loc-21 city-loc-17) 5137)
  (= (cost-drive city-loc-17 city-loc-21) 8062)
  (= (cost-drive city-loc-22 city-loc-11) 7840)
  (= (cost-drive city-loc-11 city-loc-22) 8474)
  (= (cost-drive city-loc-22 city-loc-16) 2392)
  (= (cost-drive city-loc-16 city-loc-22) 7390)
  (= (cost-drive city-loc-22 city-loc-17) 2917)
  (= (cost-drive city-loc-17 city-loc-22) 4464)
  (= (cost-drive city-loc-23 city-loc-19) 6933)
  (= (cost-drive city-loc-19 city-loc-23) 9924)
  (= (cost-drive city-loc-24 city-loc-1) 2756)
  (= (cost-drive city-loc-1 city-loc-24) 2999)
  (= (cost-drive city-loc-24 city-loc-3) 9174)
  (= (cost-drive city-loc-3 city-loc-24) 5263)
  (= (cost-drive city-loc-24 city-loc-7) 8736)
  (= (cost-drive city-loc-7 city-loc-24) 3134)
  (= (cost-drive city-loc-24 city-loc-12) 1229)
  (= (cost-drive city-loc-12 city-loc-24) 3831)
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
  ; 930,259 -> 748,385
  (road city-loc-12 city-loc-3)
  ; 748,385 -> 930,259
  (road city-loc-3 city-loc-12)
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
  ; 231,881 -> 174,643
  (road city-loc-22 city-loc-11)
  ; 174,643 -> 231,881
  (road city-loc-11 city-loc-22)
  ; 231,881 -> 128,791
  (road city-loc-22 city-loc-16)
  ; 128,791 -> 231,881
  (road city-loc-16 city-loc-22)
  ; 231,881 -> 426,706
  (road city-loc-22 city-loc-17)
  ; 426,706 -> 231,881
  (road city-loc-17 city-loc-22)
  ; 682,8 -> 806,18
  (road city-loc-23 city-loc-19)
  ; 806,18 -> 682,8
  (road city-loc-19 city-loc-23)
  ; 989,457 -> 890,543
  (road city-loc-24 city-loc-1)
  ; 890,543 -> 989,457
  (road city-loc-1 city-loc-24)
  ; 989,457 -> 748,385
  (road city-loc-24 city-loc-3)
  ; 748,385 -> 989,457
  (road city-loc-3 city-loc-24)
  ; 989,457 -> 742,542
  (road city-loc-24 city-loc-7)
  ; 742,542 -> 989,457
  (road city-loc-7 city-loc-24)
  ; 989,457 -> 930,259
  (road city-loc-24 city-loc-12)
  ; 930,259 -> 989,457
  (road city-loc-12 city-loc-24)
  (at package-1 city-loc-2)
  (at package-2 city-loc-19)
  (at package-3 city-loc-24)
  (at package-4 city-loc-5)
  (at package-5 city-loc-15)
  (at package-6 city-loc-19)
  (at package-7 city-loc-2)
  (at package-8 city-loc-4)
  (at package-9 city-loc-9)
  (at truck-1 city-loc-18)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-1)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-16)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-12)
  (at package-2 city-loc-7)
  (at package-3 city-loc-1)
  (at package-4 city-loc-6)
  (at package-5 city-loc-9)
  (at package-6 city-loc-14)
  (at package-7 city-loc-14)
  (at package-8 city-loc-9)
  (at package-9 city-loc-4)
 ))
 (:metric minimize (total-cost))
)
