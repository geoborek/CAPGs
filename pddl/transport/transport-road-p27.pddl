; Transport three-cities-sequential-7nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-three-cities-sequential-7nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed)
 (:domain transport)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-3-loc-2 - location
  city-1-loc-3 - location
  city-2-loc-3 - location
  city-3-loc-3 - location
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-3-loc-4 - location
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-3-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
  city-3-loc-6 - location
  city-1-loc-7 - location
  city-2-loc-7 - location
  city-3-loc-7 - location
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
  (= (base-drive city-1-loc-3 city-1-loc-1) 22)
  (= (base-drive city-1-loc-1 city-1-loc-3) 22)
  (= (base-drive city-1-loc-3 city-1-loc-2) 50)
  (= (base-drive city-1-loc-2 city-1-loc-3) 50)
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
  (= (base-drive city-1-loc-7 city-1-loc-1) 15)
  (= (base-drive city-1-loc-1 city-1-loc-7) 15)
  (= (base-drive city-1-loc-7 city-1-loc-3) 16)
  (= (base-drive city-1-loc-3 city-1-loc-7) 16)
  (= (base-drive city-1-loc-7 city-1-loc-4) 31)
  (= (base-drive city-1-loc-4 city-1-loc-7) 31)
  (= (base-drive city-1-loc-7 city-1-loc-5) 43)
  (= (base-drive city-1-loc-5 city-1-loc-7) 43)
  (= (base-drive city-1-loc-7 city-1-loc-6) 43)
  (= (base-drive city-1-loc-6 city-1-loc-7) 43)
  (= (base-drive city-2-loc-2 city-2-loc-1) 47)
  (= (base-drive city-2-loc-1 city-2-loc-2) 47)
  (= (base-drive city-2-loc-3 city-2-loc-1) 24)
  (= (base-drive city-2-loc-1 city-2-loc-3) 24)
  (= (base-drive city-2-loc-3 city-2-loc-2) 32)
  (= (base-drive city-2-loc-2 city-2-loc-3) 32)
  (= (base-drive city-2-loc-4 city-2-loc-1) 42)
  (= (base-drive city-2-loc-1 city-2-loc-4) 42)
  (= (base-drive city-2-loc-4 city-2-loc-2) 24)
  (= (base-drive city-2-loc-2 city-2-loc-4) 24)
  (= (base-drive city-2-loc-4 city-2-loc-3) 41)
  (= (base-drive city-2-loc-3 city-2-loc-4) 41)
  (= (base-drive city-2-loc-5 city-2-loc-1) 41)
  (= (base-drive city-2-loc-1 city-2-loc-5) 41)
  (= (base-drive city-2-loc-6 city-2-loc-3) 47)
  (= (base-drive city-2-loc-3 city-2-loc-6) 47)
  (= (base-drive city-2-loc-7 city-2-loc-2) 29)
  (= (base-drive city-2-loc-2 city-2-loc-7) 29)
  (= (base-drive city-2-loc-7 city-2-loc-4) 13)
  (= (base-drive city-2-loc-4 city-2-loc-7) 13)
  (= (base-drive city-3-loc-2 city-3-loc-1) 35)
  (= (base-drive city-3-loc-1 city-3-loc-2) 35)
  (= (base-drive city-3-loc-3 city-3-loc-2) 39)
  (= (base-drive city-3-loc-2 city-3-loc-3) 39)
  (= (base-drive city-3-loc-4 city-3-loc-1) 17)
  (= (base-drive city-3-loc-1 city-3-loc-4) 17)
  (= (base-drive city-3-loc-4 city-3-loc-2) 23)
  (= (base-drive city-3-loc-2 city-3-loc-4) 23)
  (= (base-drive city-3-loc-4 city-3-loc-3) 47)
  (= (base-drive city-3-loc-3 city-3-loc-4) 47)
  (= (base-drive city-3-loc-5 city-3-loc-1) 48)
  (= (base-drive city-3-loc-1 city-3-loc-5) 48)
  (= (base-drive city-3-loc-5 city-3-loc-2) 16)
  (= (base-drive city-3-loc-2 city-3-loc-5) 16)
  (= (base-drive city-3-loc-5 city-3-loc-3) 24)
  (= (base-drive city-3-loc-3 city-3-loc-5) 24)
  (= (base-drive city-3-loc-5 city-3-loc-4) 33)
  (= (base-drive city-3-loc-4 city-3-loc-5) 33)
  (= (base-drive city-3-loc-6 city-3-loc-2) 38)
  (= (base-drive city-3-loc-2 city-3-loc-6) 38)
  (= (base-drive city-3-loc-6 city-3-loc-3) 42)
  (= (base-drive city-3-loc-3 city-3-loc-6) 42)
  (= (base-drive city-3-loc-6 city-3-loc-5) 29)
  (= (base-drive city-3-loc-5 city-3-loc-6) 29)
  (= (base-drive city-3-loc-7 city-3-loc-1) 46)
  (= (base-drive city-3-loc-1 city-3-loc-7) 46)
  (= (base-drive city-3-loc-7 city-3-loc-2) 28)
  (= (base-drive city-3-loc-2 city-3-loc-7) 28)
  (= (base-drive city-3-loc-7 city-3-loc-3) 20)
  (= (base-drive city-3-loc-3 city-3-loc-7) 20)
  (= (base-drive city-3-loc-7 city-3-loc-4) 29)
  (= (base-drive city-3-loc-4 city-3-loc-7) 29)
  (= (base-drive city-3-loc-7 city-3-loc-5) 21)
  (= (base-drive city-3-loc-5 city-3-loc-7) 21)
  (= (base-drive city-3-loc-7 city-3-loc-6) 49)
  (= (base-drive city-3-loc-6 city-3-loc-7) 49)
  (= (base-drive city-1-loc-5 city-2-loc-7) 112)
  (= (base-drive city-2-loc-7 city-1-loc-5) 112)
  (= (base-drive city-1-loc-4 city-3-loc-2) 142)
  (= (base-drive city-3-loc-2 city-1-loc-4) 142)
  (= (base-drive city-2-loc-6 city-3-loc-7) 165)
  (= (base-drive city-3-loc-7 city-2-loc-6) 165)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 5090)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 5575)
  (= (cost-drive city-1-loc-3 city-1-loc-2) 1389)
  (= (cost-drive city-1-loc-2 city-1-loc-3) 1681)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 3595)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 3545)
  (= (cost-drive city-1-loc-4 city-1-loc-3) 8288)
  (= (cost-drive city-1-loc-3 city-1-loc-4) 9168)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 9085)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 8280)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 5171)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 2913)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 1600)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 3163)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 3469)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 6264)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 8277)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 4175)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 1126)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 5735)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 4034)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 2783)
  (= (cost-drive city-1-loc-7 city-1-loc-5) 5550)
  (= (cost-drive city-1-loc-5 city-1-loc-7) 9855)
  (= (cost-drive city-1-loc-7 city-1-loc-6) 2546)
  (= (cost-drive city-1-loc-6 city-1-loc-7) 4663)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 1100)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 8056)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 7663)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 4668)
  (= (cost-drive city-2-loc-3 city-2-loc-2) 4527)
  (= (cost-drive city-2-loc-2 city-2-loc-3) 8411)
  (= (cost-drive city-2-loc-4 city-2-loc-1) 1075)
  (= (cost-drive city-2-loc-1 city-2-loc-4) 1529)
  (= (cost-drive city-2-loc-4 city-2-loc-2) 2195)
  (= (cost-drive city-2-loc-2 city-2-loc-4) 4918)
  (= (cost-drive city-2-loc-4 city-2-loc-3) 4967)
  (= (cost-drive city-2-loc-3 city-2-loc-4) 6688)
  (= (cost-drive city-2-loc-5 city-2-loc-1) 6967)
  (= (cost-drive city-2-loc-1 city-2-loc-5) 3400)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 2710)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 7540)
  (= (cost-drive city-2-loc-7 city-2-loc-2) 8370)
  (= (cost-drive city-2-loc-2 city-2-loc-7) 7989)
  (= (cost-drive city-2-loc-7 city-2-loc-4) 6906)
  (= (cost-drive city-2-loc-4 city-2-loc-7) 8609)
  (= (cost-drive city-3-loc-2 city-3-loc-1) 9077)
  (= (cost-drive city-3-loc-1 city-3-loc-2) 7015)
  (= (cost-drive city-3-loc-3 city-3-loc-2) 5798)
  (= (cost-drive city-3-loc-2 city-3-loc-3) 2097)
  (= (cost-drive city-3-loc-4 city-3-loc-1) 7753)
  (= (cost-drive city-3-loc-1 city-3-loc-4) 9252)
  (= (cost-drive city-3-loc-4 city-3-loc-2) 6207)
  (= (cost-drive city-3-loc-2 city-3-loc-4) 7979)
  (= (cost-drive city-3-loc-4 city-3-loc-3) 6350)
  (= (cost-drive city-3-loc-3 city-3-loc-4) 4100)
  (= (cost-drive city-3-loc-5 city-3-loc-1) 2749)
  (= (cost-drive city-3-loc-1 city-3-loc-5) 2500)
  (= (cost-drive city-3-loc-5 city-3-loc-2) 3740)
  (= (cost-drive city-3-loc-2 city-3-loc-5) 2421)
  (= (cost-drive city-3-loc-5 city-3-loc-3) 9187)
  (= (cost-drive city-3-loc-3 city-3-loc-5) 3073)
  (= (cost-drive city-3-loc-5 city-3-loc-4) 5618)
  (= (cost-drive city-3-loc-4 city-3-loc-5) 6923)
  (= (cost-drive city-3-loc-6 city-3-loc-2) 2498)
  (= (cost-drive city-3-loc-2 city-3-loc-6) 9306)
  (= (cost-drive city-3-loc-6 city-3-loc-3) 9643)
  (= (cost-drive city-3-loc-3 city-3-loc-6) 1827)
  (= (cost-drive city-3-loc-6 city-3-loc-5) 2662)
  (= (cost-drive city-3-loc-5 city-3-loc-6) 2221)
  (= (cost-drive city-3-loc-7 city-3-loc-1) 2476)
  (= (cost-drive city-3-loc-1 city-3-loc-7) 3529)
  (= (cost-drive city-3-loc-7 city-3-loc-2) 4507)
  (= (cost-drive city-3-loc-2 city-3-loc-7) 1709)
  (= (cost-drive city-3-loc-7 city-3-loc-3) 7778)
  (= (cost-drive city-3-loc-3 city-3-loc-7) 6213)
  (= (cost-drive city-3-loc-7 city-3-loc-4) 3967)
  (= (cost-drive city-3-loc-4 city-3-loc-7) 5040)
  (= (cost-drive city-3-loc-7 city-3-loc-5) 2242)
  (= (cost-drive city-3-loc-5 city-3-loc-7) 4246)
  (= (cost-drive city-3-loc-7 city-3-loc-6) 2745)
  (= (cost-drive city-3-loc-6 city-3-loc-7) 8011)
  (= (cost-drive city-1-loc-5 city-2-loc-7) 5612)
  (= (cost-drive city-2-loc-7 city-1-loc-5) 5521)
  (= (cost-drive city-1-loc-4 city-3-loc-2) 7758)
  (= (cost-drive city-3-loc-2 city-1-loc-4) 6649)
  (= (cost-drive city-2-loc-6 city-3-loc-7) 7613)
  (= (cost-drive city-3-loc-7 city-2-loc-6) 3881)
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
  ; 748,385 -> 384,50
  (road city-1-loc-3 city-1-loc-2)
  ; 384,50 -> 748,385
  (road city-1-loc-2 city-1-loc-3)
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
  ; 742,542 -> 977,899
  (road city-1-loc-7 city-1-loc-5)
  ; 977,899 -> 742,542
  (road city-1-loc-5 city-1-loc-7)
  ; 742,542 -> 456,221
  (road city-1-loc-7 city-1-loc-6)
  ; 456,221 -> 742,542
  (road city-1-loc-6 city-1-loc-7)
  ; 2273,425 -> 2564,783
  (road city-2-loc-2 city-2-loc-1)
  ; 2564,783 -> 2273,425
  (road city-2-loc-1 city-2-loc-2)
  ; 2566,552 -> 2564,783
  (road city-2-loc-3 city-2-loc-1)
  ; 2564,783 -> 2566,552
  (road city-2-loc-1 city-2-loc-3)
  ; 2566,552 -> 2273,425
  (road city-2-loc-3 city-2-loc-2)
  ; 2273,425 -> 2566,552
  (road city-2-loc-2 city-2-loc-3)
  ; 2174,643 -> 2564,783
  (road city-2-loc-4 city-2-loc-1)
  ; 2564,783 -> 2174,643
  (road city-2-loc-1 city-2-loc-4)
  ; 2174,643 -> 2273,425
  (road city-2-loc-4 city-2-loc-2)
  ; 2273,425 -> 2174,643
  (road city-2-loc-2 city-2-loc-4)
  ; 2174,643 -> 2566,552
  (road city-2-loc-4 city-2-loc-3)
  ; 2566,552 -> 2174,643
  (road city-2-loc-3 city-2-loc-4)
  ; 2946,916 -> 2564,783
  (road city-2-loc-5 city-2-loc-1)
  ; 2564,783 -> 2946,916
  (road city-2-loc-1 city-2-loc-5)
  ; 2930,259 -> 2566,552
  (road city-2-loc-6 city-2-loc-3)
  ; 2566,552 -> 2930,259
  (road city-2-loc-3 city-2-loc-6)
  ; 2055,605 -> 2273,425
  (road city-2-loc-7 city-2-loc-2)
  ; 2273,425 -> 2055,605
  (road city-2-loc-2 city-2-loc-7)
  ; 2055,605 -> 2174,643
  (road city-2-loc-7 city-2-loc-4)
  ; 2174,643 -> 2055,605
  (road city-2-loc-4 city-2-loc-7)
  ; 1245,2346 -> 1257,2005
  (road city-3-loc-2 city-3-loc-1)
  ; 1257,2005 -> 1245,2346
  (road city-3-loc-1 city-3-loc-2)
  ; 1559,2565 -> 1245,2346
  (road city-3-loc-3 city-3-loc-2)
  ; 1245,2346 -> 1559,2565
  (road city-3-loc-2 city-3-loc-3)
  ; 1347,2149 -> 1257,2005
  (road city-3-loc-4 city-3-loc-1)
  ; 1257,2005 -> 1347,2149
  (road city-3-loc-1 city-3-loc-4)
  ; 1347,2149 -> 1245,2346
  (road city-3-loc-4 city-3-loc-2)
  ; 1245,2346 -> 1347,2149
  (road city-3-loc-2 city-3-loc-4)
  ; 1347,2149 -> 1559,2565
  (road city-3-loc-4 city-3-loc-3)
  ; 1559,2565 -> 1347,2149
  (road city-3-loc-3 city-3-loc-4)
  ; 1336,2475 -> 1257,2005
  (road city-3-loc-5 city-3-loc-1)
  ; 1257,2005 -> 1336,2475
  (road city-3-loc-1 city-3-loc-5)
  ; 1336,2475 -> 1245,2346
  (road city-3-loc-5 city-3-loc-2)
  ; 1245,2346 -> 1336,2475
  (road city-3-loc-2 city-3-loc-5)
  ; 1336,2475 -> 1559,2565
  (road city-3-loc-5 city-3-loc-3)
  ; 1559,2565 -> 1336,2475
  (road city-3-loc-3 city-3-loc-5)
  ; 1336,2475 -> 1347,2149
  (road city-3-loc-5 city-3-loc-4)
  ; 1347,2149 -> 1336,2475
  (road city-3-loc-4 city-3-loc-5)
  ; 1170,2709 -> 1245,2346
  (road city-3-loc-6 city-3-loc-2)
  ; 1245,2346 -> 1170,2709
  (road city-3-loc-2 city-3-loc-6)
  ; 1170,2709 -> 1559,2565
  (road city-3-loc-6 city-3-loc-3)
  ; 1559,2565 -> 1170,2709
  (road city-3-loc-3 city-3-loc-6)
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-6 city-3-loc-5)
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-5 city-3-loc-6)
  ; 1521,2375 -> 1257,2005
  (road city-3-loc-7 city-3-loc-1)
  ; 1257,2005 -> 1521,2375
  (road city-3-loc-1 city-3-loc-7)
  ; 1521,2375 -> 1245,2346
  (road city-3-loc-7 city-3-loc-2)
  ; 1245,2346 -> 1521,2375
  (road city-3-loc-2 city-3-loc-7)
  ; 1521,2375 -> 1559,2565
  (road city-3-loc-7 city-3-loc-3)
  ; 1559,2565 -> 1521,2375
  (road city-3-loc-3 city-3-loc-7)
  ; 1521,2375 -> 1347,2149
  (road city-3-loc-7 city-3-loc-4)
  ; 1347,2149 -> 1521,2375
  (road city-3-loc-4 city-3-loc-7)
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-7 city-3-loc-5)
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-5 city-3-loc-7)
  ; 1521,2375 -> 1170,2709
  (road city-3-loc-7 city-3-loc-6)
  ; 1170,2709 -> 1521,2375
  (road city-3-loc-6 city-3-loc-7)
  ; 977,899 <-> 2055,605
  (road city-1-loc-5 city-2-loc-7)
  (road city-2-loc-7 city-1-loc-5)
  (road city-1-loc-4 city-3-loc-2)
  (road city-3-loc-2 city-1-loc-4)
  (road city-2-loc-6 city-3-loc-7)
  (road city-3-loc-7 city-2-loc-6)
  (at package-1 city-3-loc-1)
  (at package-2 city-1-loc-2)
  (at package-3 city-3-loc-2)
  (at package-4 city-2-loc-2)
  (at package-5 city-1-loc-5)
  (at package-6 city-2-loc-6)
  (at package-7 city-1-loc-6)
  (at package-8 city-2-loc-2)
  (at truck-1 city-1-loc-4)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-3)
  (capacity truck-2 capacity-4)
  (at truck-3 city-2-loc-5)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-3)
  (at package-2 city-1-loc-5)
  (at package-3 city-3-loc-1)
  (at package-4 city-1-loc-7)
  (at package-5 city-1-loc-1)
  (at package-6 city-2-loc-2)
  (at package-7 city-3-loc-2)
  (at package-8 city-2-loc-3)
 ))
 (:metric minimize (total-cost))
)
