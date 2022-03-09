; Transport two-cities-sequential-10nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed

(define (problem transport-two-cities-sequential-10nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed)
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
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-1-loc-10 - location
  city-2-loc-10 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
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
  (= (base-drive city-1-loc-5 city-1-loc-1) 37)
  (= (base-drive city-1-loc-1 city-1-loc-5) 37)
  (= (base-drive city-1-loc-5 city-1-loc-4) 12)
  (= (base-drive city-1-loc-4 city-1-loc-5) 12)
  (= (base-drive city-1-loc-6 city-1-loc-2) 19)
  (= (base-drive city-1-loc-2 city-1-loc-6) 19)
  (= (base-drive city-1-loc-6 city-1-loc-3) 34)
  (= (base-drive city-1-loc-3 city-1-loc-6) 34)
  (= (base-drive city-1-loc-7 city-1-loc-1) 15)
  (= (base-drive city-1-loc-1 city-1-loc-7) 15)
  (= (base-drive city-1-loc-7 city-1-loc-3) 16)
  (= (base-drive city-1-loc-3 city-1-loc-7) 16)
  (= (base-drive city-1-loc-7 city-1-loc-4) 31)
  (= (base-drive city-1-loc-4 city-1-loc-7) 31)
  (= (base-drive city-1-loc-8 city-1-loc-4) 35)
  (= (base-drive city-1-loc-4 city-1-loc-8) 35)
  (= (base-drive city-1-loc-8 city-1-loc-7) 30)
  (= (base-drive city-1-loc-7 city-1-loc-8) 30)
  (= (base-drive city-1-loc-9 city-1-loc-6) 28)
  (= (base-drive city-1-loc-6 city-1-loc-9) 28)
  (= (base-drive city-1-loc-10 city-1-loc-1) 33)
  (= (base-drive city-1-loc-1 city-1-loc-10) 33)
  (= (base-drive city-1-loc-10 city-1-loc-3) 25)
  (= (base-drive city-1-loc-3 city-1-loc-10) 25)
  (= (base-drive city-1-loc-10 city-1-loc-6) 35)
  (= (base-drive city-1-loc-6 city-1-loc-10) 35)
  (= (base-drive city-1-loc-10 city-1-loc-7) 18)
  (= (base-drive city-1-loc-7 city-1-loc-10) 18)
  (= (base-drive city-1-loc-10 city-1-loc-8) 24)
  (= (base-drive city-1-loc-8 city-1-loc-10) 24)
  (= (base-drive city-1-loc-10 city-1-loc-9) 32)
  (= (base-drive city-1-loc-9 city-1-loc-10) 32)
  (= (base-drive city-2-loc-2 city-2-loc-1) 29)
  (= (base-drive city-2-loc-1 city-2-loc-2) 29)
  (= (base-drive city-2-loc-3 city-2-loc-1) 21)
  (= (base-drive city-2-loc-1 city-2-loc-3) 21)
  (= (base-drive city-2-loc-5 city-2-loc-1) 24)
  (= (base-drive city-2-loc-1 city-2-loc-5) 24)
  (= (base-drive city-2-loc-5 city-2-loc-3) 25)
  (= (base-drive city-2-loc-3 city-2-loc-5) 25)
  (= (base-drive city-2-loc-6 city-2-loc-3) 24)
  (= (base-drive city-2-loc-3 city-2-loc-6) 24)
  (= (base-drive city-2-loc-6 city-2-loc-4) 25)
  (= (base-drive city-2-loc-4 city-2-loc-6) 25)
  (= (base-drive city-2-loc-7 city-2-loc-3) 37)
  (= (base-drive city-2-loc-3 city-2-loc-7) 37)
  (= (base-drive city-2-loc-8 city-2-loc-2) 16)
  (= (base-drive city-2-loc-2 city-2-loc-8) 16)
  (= (base-drive city-2-loc-9 city-2-loc-1) 18)
  (= (base-drive city-2-loc-1 city-2-loc-9) 18)
  (= (base-drive city-2-loc-9 city-2-loc-2) 17)
  (= (base-drive city-2-loc-2 city-2-loc-9) 17)
  (= (base-drive city-2-loc-9 city-2-loc-5) 34)
  (= (base-drive city-2-loc-5 city-2-loc-9) 34)
  (= (base-drive city-2-loc-9 city-2-loc-8) 32)
  (= (base-drive city-2-loc-8 city-2-loc-9) 32)
  (= (base-drive city-2-loc-10 city-2-loc-1) 14)
  (= (base-drive city-2-loc-1 city-2-loc-10) 14)
  (= (base-drive city-2-loc-10 city-2-loc-2) 21)
  (= (base-drive city-2-loc-2 city-2-loc-10) 21)
  (= (base-drive city-2-loc-10 city-2-loc-3) 29)
  (= (base-drive city-2-loc-3 city-2-loc-10) 29)
  (= (base-drive city-2-loc-10 city-2-loc-7) 31)
  (= (base-drive city-2-loc-7 city-2-loc-10) 31)
  (= (base-drive city-2-loc-10 city-2-loc-8) 34)
  (= (base-drive city-2-loc-8 city-2-loc-10) 34)
  (= (base-drive city-2-loc-10 city-2-loc-9) 19)
  (= (base-drive city-2-loc-9 city-2-loc-10) 19)
  (= (base-drive city-1-loc-5 city-2-loc-8) 115)
  (= (base-drive city-2-loc-8 city-1-loc-5) 115)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 1055)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 8450)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 8289)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 8012)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 9980)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 5211)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 2845)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 4265)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 8607)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 4072)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 4553)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 2754)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 6182)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 2823)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 6183)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 9085)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 4684)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 2156)
  (= (cost-drive city-1-loc-8 city-1-loc-4) 3299)
  (= (cost-drive city-1-loc-4 city-1-loc-8) 9109)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 7732)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 3320)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 1476)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 7466)
  (= (cost-drive city-1-loc-10 city-1-loc-1) 9252)
  (= (cost-drive city-1-loc-1 city-1-loc-10) 1671)
  (= (cost-drive city-1-loc-10 city-1-loc-3) 5545)
  (= (cost-drive city-1-loc-3 city-1-loc-10) 3576)
  (= (cost-drive city-1-loc-10 city-1-loc-6) 1582)
  (= (cost-drive city-1-loc-6 city-1-loc-10) 6871)
  (= (cost-drive city-1-loc-10 city-1-loc-7) 5632)
  (= (cost-drive city-1-loc-7 city-1-loc-10) 3811)
  (= (cost-drive city-1-loc-10 city-1-loc-8) 2072)
  (= (cost-drive city-1-loc-8 city-1-loc-10) 8880)
  (= (cost-drive city-1-loc-10 city-1-loc-9) 2886)
  (= (cost-drive city-1-loc-9 city-1-loc-10) 7449)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 3328)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 6468)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 9466)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 1004)
  (= (cost-drive city-2-loc-5 city-2-loc-1) 2882)
  (= (cost-drive city-2-loc-1 city-2-loc-5) 3165)
  (= (cost-drive city-2-loc-5 city-2-loc-3) 3827)
  (= (cost-drive city-2-loc-3 city-2-loc-5) 6246)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 4416)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 6501)
  (= (cost-drive city-2-loc-6 city-2-loc-4) 3874)
  (= (cost-drive city-2-loc-4 city-2-loc-6) 7010)
  (= (cost-drive city-2-loc-7 city-2-loc-3) 7932)
  (= (cost-drive city-2-loc-3 city-2-loc-7) 5865)
  (= (cost-drive city-2-loc-8 city-2-loc-2) 1108)
  (= (cost-drive city-2-loc-2 city-2-loc-8) 7207)
  (= (cost-drive city-2-loc-9 city-2-loc-1) 1511)
  (= (cost-drive city-2-loc-1 city-2-loc-9) 1970)
  (= (cost-drive city-2-loc-9 city-2-loc-2) 4410)
  (= (cost-drive city-2-loc-2 city-2-loc-9) 3346)
  (= (cost-drive city-2-loc-9 city-2-loc-5) 1729)
  (= (cost-drive city-2-loc-5 city-2-loc-9) 5983)
  (= (cost-drive city-2-loc-9 city-2-loc-8) 9398)
  (= (cost-drive city-2-loc-8 city-2-loc-9) 8750)
  (= (cost-drive city-2-loc-10 city-2-loc-1) 2502)
  (= (cost-drive city-2-loc-1 city-2-loc-10) 4013)
  (= (cost-drive city-2-loc-10 city-2-loc-2) 2658)
  (= (cost-drive city-2-loc-2 city-2-loc-10) 1795)
  (= (cost-drive city-2-loc-10 city-2-loc-3) 3033)
  (= (cost-drive city-2-loc-3 city-2-loc-10) 4626)
  (= (cost-drive city-2-loc-10 city-2-loc-7) 2303)
  (= (cost-drive city-2-loc-7 city-2-loc-10) 7871)
  (= (cost-drive city-2-loc-10 city-2-loc-8) 2468)
  (= (cost-drive city-2-loc-8 city-2-loc-10) 9769)
  (= (cost-drive city-2-loc-10 city-2-loc-9) 4219)
  (= (cost-drive city-2-loc-9 city-2-loc-10) 2594)
  (= (cost-drive city-1-loc-5 city-2-loc-8) 8858)
  (= (cost-drive city-2-loc-8 city-1-loc-5) 2026)
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
  ; 742,542 -> 890,543
  (road city-1-loc-7 city-1-loc-1)
  ; 890,543 -> 742,542
  (road city-1-loc-1 city-1-loc-7)
  ; 742,542 -> 748,385
  (road city-1-loc-7 city-1-loc-3)
  ; 748,385 -> 742,542
  (road city-1-loc-3 city-1-loc-7)
  ; 742,542 -> 912,799
  (road city-1-loc-7 city-1-loc-4)
  ; 912,799 -> 742,542
  (road city-1-loc-4 city-1-loc-7)
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  ; 273,425 -> 456,221
  (road city-1-loc-9 city-1-loc-6)
  ; 456,221 -> 273,425
  (road city-1-loc-6 city-1-loc-9)
  ; 566,552 -> 890,543
  (road city-1-loc-10 city-1-loc-1)
  ; 890,543 -> 566,552
  (road city-1-loc-1 city-1-loc-10)
  ; 566,552 -> 748,385
  (road city-1-loc-10 city-1-loc-3)
  ; 748,385 -> 566,552
  (road city-1-loc-3 city-1-loc-10)
  ; 566,552 -> 456,221
  (road city-1-loc-10 city-1-loc-6)
  ; 456,221 -> 566,552
  (road city-1-loc-6 city-1-loc-10)
  ; 566,552 -> 742,542
  (road city-1-loc-10 city-1-loc-7)
  ; 742,542 -> 566,552
  (road city-1-loc-7 city-1-loc-10)
  ; 566,552 -> 564,783
  (road city-1-loc-10 city-1-loc-8)
  ; 564,783 -> 566,552
  (road city-1-loc-8 city-1-loc-10)
  ; 566,552 -> 273,425
  (road city-1-loc-10 city-1-loc-9)
  ; 273,425 -> 566,552
  (road city-1-loc-9 city-1-loc-10)
  ; 2170,709 -> 2336,475
  (road city-2-loc-2 city-2-loc-1)
  ; 2336,475 -> 2170,709
  (road city-2-loc-1 city-2-loc-2)
  ; 2521,375 -> 2336,475
  (road city-2-loc-3 city-2-loc-1)
  ; 2336,475 -> 2521,375
  (road city-2-loc-1 city-2-loc-3)
  ; 2316,237 -> 2336,475
  (road city-2-loc-5 city-2-loc-1)
  ; 2336,475 -> 2316,237
  (road city-2-loc-1 city-2-loc-5)
  ; 2316,237 -> 2521,375
  (road city-2-loc-5 city-2-loc-3)
  ; 2521,375 -> 2316,237
  (road city-2-loc-3 city-2-loc-5)
  ; 2720,241 -> 2521,375
  (road city-2-loc-6 city-2-loc-3)
  ; 2521,375 -> 2720,241
  (road city-2-loc-3 city-2-loc-6)
  ; 2720,241 -> 2701,0
  (road city-2-loc-6 city-2-loc-4)
  ; 2701,0 -> 2720,241
  (road city-2-loc-4 city-2-loc-6)
  ; 2630,722 -> 2521,375
  (road city-2-loc-7 city-2-loc-3)
  ; 2521,375 -> 2630,722
  (road city-2-loc-3 city-2-loc-7)
  ; 2120,854 -> 2170,709
  (road city-2-loc-8 city-2-loc-2)
  ; 2170,709 -> 2120,854
  (road city-2-loc-2 city-2-loc-8)
  ; 2171,545 -> 2336,475
  (road city-2-loc-9 city-2-loc-1)
  ; 2336,475 -> 2171,545
  (road city-2-loc-1 city-2-loc-9)
  ; 2171,545 -> 2170,709
  (road city-2-loc-9 city-2-loc-2)
  ; 2170,709 -> 2171,545
  (road city-2-loc-2 city-2-loc-9)
  ; 2171,545 -> 2316,237
  (road city-2-loc-9 city-2-loc-5)
  ; 2316,237 -> 2171,545
  (road city-2-loc-5 city-2-loc-9)
  ; 2171,545 -> 2120,854
  (road city-2-loc-9 city-2-loc-8)
  ; 2120,854 -> 2171,545
  (road city-2-loc-8 city-2-loc-9)
  ; 2348,607 -> 2336,475
  (road city-2-loc-10 city-2-loc-1)
  ; 2336,475 -> 2348,607
  (road city-2-loc-1 city-2-loc-10)
  ; 2348,607 -> 2170,709
  (road city-2-loc-10 city-2-loc-2)
  ; 2170,709 -> 2348,607
  (road city-2-loc-2 city-2-loc-10)
  ; 2348,607 -> 2521,375
  (road city-2-loc-10 city-2-loc-3)
  ; 2521,375 -> 2348,607
  (road city-2-loc-3 city-2-loc-10)
  ; 2348,607 -> 2630,722
  (road city-2-loc-10 city-2-loc-7)
  ; 2630,722 -> 2348,607
  (road city-2-loc-7 city-2-loc-10)
  ; 2348,607 -> 2120,854
  (road city-2-loc-10 city-2-loc-8)
  ; 2120,854 -> 2348,607
  (road city-2-loc-8 city-2-loc-10)
  ; 2348,607 -> 2171,545
  (road city-2-loc-10 city-2-loc-9)
  ; 2171,545 -> 2348,607
  (road city-2-loc-9 city-2-loc-10)
  ; 977,899 <-> 2120,854
  (road city-1-loc-5 city-2-loc-8)
  (road city-2-loc-8 city-1-loc-5)
  (at package-1 city-1-loc-4)
  (at package-2 city-1-loc-8)
  (at package-3 city-1-loc-7)
  (at package-4 city-1-loc-7)
  (at package-5 city-1-loc-4)
  (at package-6 city-1-loc-6)
  (at truck-1 city-2-loc-4)
  (capacity truck-1 capacity-2)
  (at truck-2 city-2-loc-6)
  (capacity truck-2 capacity-4)
 )
 (:goal (and
  (at package-1 city-2-loc-1)
  (at package-2 city-2-loc-3)
  (at package-3 city-2-loc-9)
  (at package-4 city-2-loc-2)
  (at package-5 city-2-loc-1)
  (at package-6 city-2-loc-6)
 ))
 (:metric minimize (total-cost))
)
