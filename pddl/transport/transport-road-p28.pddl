; Transport three-cities-sequential-8nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed

(define (problem transport-three-cities-sequential-8nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed)
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
  city-1-loc-8 - location
  city-2-loc-8 - location
  city-3-loc-8 - location
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
  (= (base-drive city-1-loc-8 city-1-loc-1) 41)
  (= (base-drive city-1-loc-1 city-1-loc-8) 41)
  (= (base-drive city-1-loc-8 city-1-loc-3) 44)
  (= (base-drive city-1-loc-3 city-1-loc-8) 44)
  (= (base-drive city-1-loc-8 city-1-loc-4) 35)
  (= (base-drive city-1-loc-4 city-1-loc-8) 35)
  (= (base-drive city-1-loc-8 city-1-loc-5) 43)
  (= (base-drive city-1-loc-5 city-1-loc-8) 43)
  (= (base-drive city-1-loc-8 city-1-loc-7) 30)
  (= (base-drive city-1-loc-7 city-1-loc-8) 30)
  (= (base-drive city-2-loc-2 city-2-loc-1) 32)
  (= (base-drive city-2-loc-1 city-2-loc-2) 32)
  (= (base-drive city-2-loc-3 city-2-loc-1) 24)
  (= (base-drive city-2-loc-1 city-2-loc-3) 24)
  (= (base-drive city-2-loc-3 city-2-loc-2) 41)
  (= (base-drive city-2-loc-2 city-2-loc-3) 41)
  (= (base-drive city-2-loc-5 city-2-loc-2) 47)
  (= (base-drive city-2-loc-2 city-2-loc-5) 47)
  (= (base-drive city-2-loc-6 city-2-loc-1) 29)
  (= (base-drive city-2-loc-1 city-2-loc-6) 29)
  (= (base-drive city-2-loc-6 city-2-loc-3) 13)
  (= (base-drive city-2-loc-3 city-2-loc-6) 13)
  (= (base-drive city-2-loc-7 city-2-loc-2) 39)
  (= (base-drive city-2-loc-2 city-2-loc-7) 39)
  (= (base-drive city-2-loc-7 city-2-loc-4) 16)
  (= (base-drive city-2-loc-4 city-2-loc-7) 16)
  (= (base-drive city-2-loc-8 city-2-loc-1) 15)
  (= (base-drive city-2-loc-1 city-2-loc-8) 15)
  (= (base-drive city-2-loc-8 city-2-loc-2) 31)
  (= (base-drive city-2-loc-2 city-2-loc-8) 31)
  (= (base-drive city-2-loc-8 city-2-loc-3) 12)
  (= (base-drive city-2-loc-3 city-2-loc-8) 12)
  (= (base-drive city-2-loc-8 city-2-loc-6) 22)
  (= (base-drive city-2-loc-6 city-2-loc-8) 22)
  (= (base-drive city-3-loc-2 city-3-loc-1) 39)
  (= (base-drive city-3-loc-1 city-3-loc-2) 39)
  (= (base-drive city-3-loc-4 city-3-loc-1) 48)
  (= (base-drive city-3-loc-1 city-3-loc-4) 48)
  (= (base-drive city-3-loc-4 city-3-loc-2) 38)
  (= (base-drive city-3-loc-2 city-3-loc-4) 38)
  (= (base-drive city-3-loc-5 city-3-loc-3) 26)
  (= (base-drive city-3-loc-3 city-3-loc-5) 26)
  (= (base-drive city-3-loc-6 city-3-loc-3) 38)
  (= (base-drive city-3-loc-3 city-3-loc-6) 38)
  (= (base-drive city-3-loc-6 city-3-loc-4) 45)
  (= (base-drive city-3-loc-4 city-3-loc-6) 45)
  (= (base-drive city-3-loc-6 city-3-loc-5) 35)
  (= (base-drive city-3-loc-5 city-3-loc-6) 35)
  (= (base-drive city-3-loc-7 city-3-loc-1) 36)
  (= (base-drive city-3-loc-1 city-3-loc-7) 36)
  (= (base-drive city-3-loc-7 city-3-loc-2) 36)
  (= (base-drive city-3-loc-2 city-3-loc-7) 36)
  (= (base-drive city-3-loc-7 city-3-loc-4) 13)
  (= (base-drive city-3-loc-4 city-3-loc-7) 13)
  (= (base-drive city-3-loc-7 city-3-loc-6) 39)
  (= (base-drive city-3-loc-6 city-3-loc-7) 39)
  (= (base-drive city-3-loc-8 city-3-loc-3) 36)
  (= (base-drive city-3-loc-3 city-3-loc-8) 36)
  (= (base-drive city-3-loc-8 city-3-loc-4) 47)
  (= (base-drive city-3-loc-4 city-3-loc-8) 47)
  (= (base-drive city-3-loc-8 city-3-loc-5) 17)
  (= (base-drive city-3-loc-5 city-3-loc-8) 17)
  (= (base-drive city-3-loc-8 city-3-loc-6) 23)
  (= (base-drive city-3-loc-6 city-3-loc-8) 23)
  (= (base-drive city-3-loc-8 city-3-loc-7) 47)
  (= (base-drive city-3-loc-7 city-3-loc-8) 47)
  (= (base-drive city-1-loc-5 city-2-loc-6) 112)
  (= (base-drive city-2-loc-6 city-1-loc-5) 112)
  (= (base-drive city-1-loc-1 city-3-loc-1) 139)
  (= (base-drive city-3-loc-1 city-1-loc-1) 139)
  (= (base-drive city-2-loc-1 city-3-loc-1) 139)
  (= (base-drive city-3-loc-1 city-2-loc-1) 139)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 9719)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 9952)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 6125)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 6558)
  (= (cost-drive city-1-loc-4 city-1-loc-3) 5338)
  (= (cost-drive city-1-loc-3 city-1-loc-4) 3615)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 7412)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 7893)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 5643)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 2914)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 1537)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 5288)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 2535)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 9104)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 5422)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 9129)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 8557)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 6149)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 2318)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 3692)
  (= (cost-drive city-1-loc-7 city-1-loc-5) 4019)
  (= (cost-drive city-1-loc-5 city-1-loc-7) 1876)
  (= (cost-drive city-1-loc-7 city-1-loc-6) 1897)
  (= (cost-drive city-1-loc-6 city-1-loc-7) 5382)
  (= (cost-drive city-1-loc-8 city-1-loc-1) 8366)
  (= (cost-drive city-1-loc-1 city-1-loc-8) 7965)
  (= (cost-drive city-1-loc-8 city-1-loc-3) 2456)
  (= (cost-drive city-1-loc-3 city-1-loc-8) 7891)
  (= (cost-drive city-1-loc-8 city-1-loc-4) 4445)
  (= (cost-drive city-1-loc-4 city-1-loc-8) 1018)
  (= (cost-drive city-1-loc-8 city-1-loc-5) 7993)
  (= (cost-drive city-1-loc-5 city-1-loc-8) 6323)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 3505)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 3402)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 9108)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 2349)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 1783)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 6178)
  (= (cost-drive city-2-loc-3 city-2-loc-2) 1905)
  (= (cost-drive city-2-loc-2 city-2-loc-3) 4037)
  (= (cost-drive city-2-loc-5 city-2-loc-2) 2821)
  (= (cost-drive city-2-loc-2 city-2-loc-5) 1818)
  (= (cost-drive city-2-loc-6 city-2-loc-1) 6105)
  (= (cost-drive city-2-loc-1 city-2-loc-6) 4867)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 4366)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 1181)
  (= (cost-drive city-2-loc-7 city-2-loc-2) 6042)
  (= (cost-drive city-2-loc-2 city-2-loc-7) 4973)
  (= (cost-drive city-2-loc-7 city-2-loc-4) 6718)
  (= (cost-drive city-2-loc-4 city-2-loc-7) 5498)
  (= (cost-drive city-2-loc-8 city-2-loc-1) 5647)
  (= (cost-drive city-2-loc-1 city-2-loc-8) 3986)
  (= (cost-drive city-2-loc-8 city-2-loc-2) 4945)
  (= (cost-drive city-2-loc-2 city-2-loc-8) 5245)
  (= (cost-drive city-2-loc-8 city-2-loc-3) 8040)
  (= (cost-drive city-2-loc-3 city-2-loc-8) 6557)
  (= (cost-drive city-2-loc-8 city-2-loc-6) 9457)
  (= (cost-drive city-2-loc-6 city-2-loc-8) 4769)
  (= (cost-drive city-3-loc-2 city-3-loc-1) 9092)
  (= (cost-drive city-3-loc-1 city-3-loc-2) 4457)
  (= (cost-drive city-3-loc-4 city-3-loc-1) 9280)
  (= (cost-drive city-3-loc-1 city-3-loc-4) 3915)
  (= (cost-drive city-3-loc-4 city-3-loc-2) 4142)
  (= (cost-drive city-3-loc-2 city-3-loc-4) 2442)
  (= (cost-drive city-3-loc-5 city-3-loc-3) 2335)
  (= (cost-drive city-3-loc-3 city-3-loc-5) 6908)
  (= (cost-drive city-3-loc-6 city-3-loc-3) 9517)
  (= (cost-drive city-3-loc-3 city-3-loc-6) 1077)
  (= (cost-drive city-3-loc-6 city-3-loc-4) 3384)
  (= (cost-drive city-3-loc-4 city-3-loc-6) 8328)
  (= (cost-drive city-3-loc-6 city-3-loc-5) 2009)
  (= (cost-drive city-3-loc-5 city-3-loc-6) 8586)
  (= (cost-drive city-3-loc-7 city-3-loc-1) 8612)
  (= (cost-drive city-3-loc-1 city-3-loc-7) 2229)
  (= (cost-drive city-3-loc-7 city-3-loc-2) 2787)
  (= (cost-drive city-3-loc-2 city-3-loc-7) 3479)
  (= (cost-drive city-3-loc-7 city-3-loc-4) 8967)
  (= (cost-drive city-3-loc-4 city-3-loc-7) 1785)
  (= (cost-drive city-3-loc-7 city-3-loc-6) 8259)
  (= (cost-drive city-3-loc-6 city-3-loc-7) 7092)
  (= (cost-drive city-3-loc-8 city-3-loc-3) 5472)
  (= (cost-drive city-3-loc-3 city-3-loc-8) 9621)
  (= (cost-drive city-3-loc-8 city-3-loc-4) 9113)
  (= (cost-drive city-3-loc-4 city-3-loc-8) 8394)
  (= (cost-drive city-3-loc-8 city-3-loc-5) 1320)
  (= (cost-drive city-3-loc-5 city-3-loc-8) 2679)
  (= (cost-drive city-3-loc-8 city-3-loc-6) 4749)
  (= (cost-drive city-3-loc-6 city-3-loc-8) 3027)
  (= (cost-drive city-3-loc-8 city-3-loc-7) 2735)
  (= (cost-drive city-3-loc-7 city-3-loc-8) 6031)
  (= (cost-drive city-1-loc-5 city-2-loc-6) 5513)
  (= (cost-drive city-2-loc-6 city-1-loc-5) 9385)
  (= (cost-drive city-1-loc-1 city-3-loc-1) 4741)
  (= (cost-drive city-3-loc-1 city-1-loc-1) 4569)
  (= (cost-drive city-2-loc-1 city-3-loc-1) 9894)
  (= (cost-drive city-3-loc-1 city-2-loc-1) 2833)
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
  ; 564,783 -> 890,543
  (road city-1-loc-8 city-1-loc-1)
  ; 890,543 -> 564,783
  (road city-1-loc-1 city-1-loc-8)
  ; 564,783 -> 748,385
  (road city-1-loc-8 city-1-loc-3)
  ; 748,385 -> 564,783
  (road city-1-loc-3 city-1-loc-8)
  ; 564,783 -> 912,799
  (road city-1-loc-8 city-1-loc-4)
  ; 912,799 -> 564,783
  (road city-1-loc-4 city-1-loc-8)
  ; 564,783 -> 977,899
  (road city-1-loc-8 city-1-loc-5)
  ; 977,899 -> 564,783
  (road city-1-loc-5 city-1-loc-8)
  ; 564,783 -> 742,542
  (road city-1-loc-8 city-1-loc-7)
  ; 742,542 -> 564,783
  (road city-1-loc-7 city-1-loc-8)
  ; 2566,552 -> 2273,425
  (road city-2-loc-2 city-2-loc-1)
  ; 2273,425 -> 2566,552
  (road city-2-loc-1 city-2-loc-2)
  ; 2174,643 -> 2273,425
  (road city-2-loc-3 city-2-loc-1)
  ; 2273,425 -> 2174,643
  (road city-2-loc-1 city-2-loc-3)
  ; 2174,643 -> 2566,552
  (road city-2-loc-3 city-2-loc-2)
  ; 2566,552 -> 2174,643
  (road city-2-loc-2 city-2-loc-3)
  ; 2930,259 -> 2566,552
  (road city-2-loc-5 city-2-loc-2)
  ; 2566,552 -> 2930,259
  (road city-2-loc-2 city-2-loc-5)
  ; 2055,605 -> 2273,425
  (road city-2-loc-6 city-2-loc-1)
  ; 2273,425 -> 2055,605
  (road city-2-loc-1 city-2-loc-6)
  ; 2055,605 -> 2174,643
  (road city-2-loc-6 city-2-loc-3)
  ; 2174,643 -> 2055,605
  (road city-2-loc-3 city-2-loc-6)
  ; 2803,858 -> 2566,552
  (road city-2-loc-7 city-2-loc-2)
  ; 2566,552 -> 2803,858
  (road city-2-loc-2 city-2-loc-7)
  ; 2803,858 -> 2946,916
  (road city-2-loc-7 city-2-loc-4)
  ; 2946,916 -> 2803,858
  (road city-2-loc-4 city-2-loc-7)
  ; 2263,567 -> 2273,425
  (road city-2-loc-8 city-2-loc-1)
  ; 2273,425 -> 2263,567
  (road city-2-loc-1 city-2-loc-8)
  ; 2263,567 -> 2566,552
  (road city-2-loc-8 city-2-loc-2)
  ; 2566,552 -> 2263,567
  (road city-2-loc-2 city-2-loc-8)
  ; 2263,567 -> 2174,643
  (road city-2-loc-8 city-2-loc-3)
  ; 2174,643 -> 2263,567
  (road city-2-loc-3 city-2-loc-8)
  ; 2263,567 -> 2055,605
  (road city-2-loc-8 city-2-loc-6)
  ; 2055,605 -> 2263,567
  (road city-2-loc-6 city-2-loc-8)
  ; 1748,2863 -> 1362,2862
  (road city-3-loc-2 city-3-loc-1)
  ; 1362,2862 -> 1748,2863
  (road city-3-loc-1 city-3-loc-2)
  ; 1659,2497 -> 1362,2862
  (road city-3-loc-4 city-3-loc-1)
  ; 1362,2862 -> 1659,2497
  (road city-3-loc-1 city-3-loc-4)
  ; 1659,2497 -> 1748,2863
  (road city-3-loc-4 city-3-loc-2)
  ; 1748,2863 -> 1659,2497
  (road city-3-loc-2 city-3-loc-4)
  ; 1257,2005 -> 1006,2060
  (road city-3-loc-5 city-3-loc-3)
  ; 1006,2060 -> 1257,2005
  (road city-3-loc-3 city-3-loc-5)
  ; 1245,2346 -> 1006,2060
  (road city-3-loc-6 city-3-loc-3)
  ; 1006,2060 -> 1245,2346
  (road city-3-loc-3 city-3-loc-6)
  ; 1245,2346 -> 1659,2497
  (road city-3-loc-6 city-3-loc-4)
  ; 1659,2497 -> 1245,2346
  (road city-3-loc-4 city-3-loc-6)
  ; 1245,2346 -> 1257,2005
  (road city-3-loc-6 city-3-loc-5)
  ; 1257,2005 -> 1245,2346
  (road city-3-loc-5 city-3-loc-6)
  ; 1559,2565 -> 1362,2862
  (road city-3-loc-7 city-3-loc-1)
  ; 1362,2862 -> 1559,2565
  (road city-3-loc-1 city-3-loc-7)
  ; 1559,2565 -> 1748,2863
  (road city-3-loc-7 city-3-loc-2)
  ; 1748,2863 -> 1559,2565
  (road city-3-loc-2 city-3-loc-7)
  ; 1559,2565 -> 1659,2497
  (road city-3-loc-7 city-3-loc-4)
  ; 1659,2497 -> 1559,2565
  (road city-3-loc-4 city-3-loc-7)
  ; 1559,2565 -> 1245,2346
  (road city-3-loc-7 city-3-loc-6)
  ; 1245,2346 -> 1559,2565
  (road city-3-loc-6 city-3-loc-7)
  ; 1347,2149 -> 1006,2060
  (road city-3-loc-8 city-3-loc-3)
  ; 1006,2060 -> 1347,2149
  (road city-3-loc-3 city-3-loc-8)
  ; 1347,2149 -> 1659,2497
  (road city-3-loc-8 city-3-loc-4)
  ; 1659,2497 -> 1347,2149
  (road city-3-loc-4 city-3-loc-8)
  ; 1347,2149 -> 1257,2005
  (road city-3-loc-8 city-3-loc-5)
  ; 1257,2005 -> 1347,2149
  (road city-3-loc-5 city-3-loc-8)
  ; 1347,2149 -> 1245,2346
  (road city-3-loc-8 city-3-loc-6)
  ; 1245,2346 -> 1347,2149
  (road city-3-loc-6 city-3-loc-8)
  ; 1347,2149 -> 1559,2565
  (road city-3-loc-8 city-3-loc-7)
  ; 1559,2565 -> 1347,2149
  (road city-3-loc-7 city-3-loc-8)
  ; 977,899 <-> 2055,605
  (road city-1-loc-5 city-2-loc-6)
  (road city-2-loc-6 city-1-loc-5)
  (road city-1-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-1)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
  (at package-1 city-2-loc-4)
  (at package-2 city-1-loc-6)
  (at package-3 city-1-loc-6)
  (at package-4 city-2-loc-4)
  (at package-5 city-3-loc-1)
  (at package-6 city-1-loc-2)
  (at package-7 city-3-loc-2)
  (at package-8 city-2-loc-3)
  (at package-9 city-1-loc-6)
  (at truck-1 city-2-loc-6)
  (capacity truck-1 capacity-2)
  (at truck-2 city-3-loc-4)
  (capacity truck-2 capacity-2)
  (at truck-3 city-1-loc-5)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-3-loc-6)
  (at package-2 city-3-loc-3)
  (at package-3 city-2-loc-3)
  (at package-4 city-1-loc-5)
  (at package-5 city-1-loc-7)
  (at package-6 city-1-loc-1)
  (at package-7 city-2-loc-2)
  (at package-8 city-3-loc-3)
  (at package-9 city-2-loc-4)
 ))
 (:metric minimize (total-cost))
)
