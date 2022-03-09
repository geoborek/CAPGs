; Transport two-cities-sequential-12nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed

(define (problem transport-two-cities-sequential-12nodes-1000size-4degree-100mindistance-3trucks-7packages-2008seed)
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
  city-1-loc-11 - location
  city-2-loc-11 - location
  city-1-loc-12 - location
  city-2-loc-12 - location
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
  (= (base-drive city-1-loc-9 city-1-loc-2) 40)
  (= (base-drive city-1-loc-2 city-1-loc-9) 40)
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
  (= (base-drive city-1-loc-11 city-1-loc-9) 24)
  (= (base-drive city-1-loc-9 city-1-loc-11) 24)
  (= (base-drive city-1-loc-12 city-1-loc-1) 29)
  (= (base-drive city-1-loc-1 city-1-loc-12) 29)
  (= (base-drive city-1-loc-12 city-1-loc-3) 23)
  (= (base-drive city-1-loc-3 city-1-loc-12) 23)
  (= (base-drive city-1-loc-12 city-1-loc-7) 34)
  (= (base-drive city-1-loc-7 city-1-loc-12) 34)
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
  (= (base-drive city-2-loc-7 city-2-loc-1) 39)
  (= (base-drive city-2-loc-1 city-2-loc-7) 39)
  (= (base-drive city-2-loc-7 city-2-loc-3) 37)
  (= (base-drive city-2-loc-3 city-2-loc-7) 37)
  (= (base-drive city-2-loc-8 city-2-loc-2) 16)
  (= (base-drive city-2-loc-2 city-2-loc-8) 16)
  (= (base-drive city-2-loc-9 city-2-loc-1) 18)
  (= (base-drive city-2-loc-1 city-2-loc-9) 18)
  (= (base-drive city-2-loc-9 city-2-loc-2) 17)
  (= (base-drive city-2-loc-2 city-2-loc-9) 17)
  (= (base-drive city-2-loc-9 city-2-loc-3) 39)
  (= (base-drive city-2-loc-3 city-2-loc-9) 39)
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
  (= (base-drive city-2-loc-10 city-2-loc-5) 38)
  (= (base-drive city-2-loc-5 city-2-loc-10) 38)
  (= (base-drive city-2-loc-10 city-2-loc-7) 31)
  (= (base-drive city-2-loc-7 city-2-loc-10) 31)
  (= (base-drive city-2-loc-10 city-2-loc-8) 34)
  (= (base-drive city-2-loc-8 city-2-loc-10) 34)
  (= (base-drive city-2-loc-10 city-2-loc-9) 19)
  (= (base-drive city-2-loc-9 city-2-loc-10) 19)
  (= (base-drive city-2-loc-11 city-2-loc-1) 28)
  (= (base-drive city-2-loc-1 city-2-loc-11) 28)
  (= (base-drive city-2-loc-11 city-2-loc-2) 23)
  (= (base-drive city-2-loc-2 city-2-loc-11) 23)
  (= (base-drive city-2-loc-11 city-2-loc-3) 39)
  (= (base-drive city-2-loc-3 city-2-loc-11) 39)
  (= (base-drive city-2-loc-11 city-2-loc-7) 24)
  (= (base-drive city-2-loc-7 city-2-loc-11) 24)
  (= (base-drive city-2-loc-11 city-2-loc-8) 30)
  (= (base-drive city-2-loc-8 city-2-loc-11) 30)
  (= (base-drive city-2-loc-11 city-2-loc-9) 30)
  (= (base-drive city-2-loc-9 city-2-loc-11) 30)
  (= (base-drive city-2-loc-11 city-2-loc-10) 15)
  (= (base-drive city-2-loc-10 city-2-loc-11) 15)
  (= (base-drive city-2-loc-12 city-2-loc-1) 34)
  (= (base-drive city-2-loc-1 city-2-loc-12) 34)
  (= (base-drive city-2-loc-12 city-2-loc-5) 25)
  (= (base-drive city-2-loc-5 city-2-loc-12) 25)
  (= (base-drive city-2-loc-12 city-2-loc-9) 29)
  (= (base-drive city-2-loc-9 city-2-loc-12) 29)
  (= (base-drive city-1-loc-12 city-2-loc-12) 115)
  (= (base-drive city-2-loc-12 city-1-loc-12) 115)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 8197)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 5400)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 1341)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 1810)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 7389)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 8540)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 9999)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 8676)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 3252)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 7051)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 2055)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 5032)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 7307)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 4620)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 6915)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 4684)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 7194)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 3079)
  (= (cost-drive city-1-loc-8 city-1-loc-4) 2654)
  (= (cost-drive city-1-loc-4 city-1-loc-8) 6687)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 5569)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 6878)
  (= (cost-drive city-1-loc-9 city-1-loc-2) 7545)
  (= (cost-drive city-1-loc-2 city-1-loc-9) 4593)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 4342)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 6452)
  (= (cost-drive city-1-loc-10 city-1-loc-1) 5844)
  (= (cost-drive city-1-loc-1 city-1-loc-10) 6752)
  (= (cost-drive city-1-loc-10 city-1-loc-3) 5204)
  (= (cost-drive city-1-loc-3 city-1-loc-10) 1218)
  (= (cost-drive city-1-loc-10 city-1-loc-6) 5548)
  (= (cost-drive city-1-loc-6 city-1-loc-10) 3706)
  (= (cost-drive city-1-loc-10 city-1-loc-7) 3567)
  (= (cost-drive city-1-loc-7 city-1-loc-10) 5193)
  (= (cost-drive city-1-loc-10 city-1-loc-8) 1033)
  (= (cost-drive city-1-loc-8 city-1-loc-10) 3908)
  (= (cost-drive city-1-loc-10 city-1-loc-9) 5994)
  (= (cost-drive city-1-loc-9 city-1-loc-10) 7129)
  (= (cost-drive city-1-loc-11 city-1-loc-9) 7055)
  (= (cost-drive city-1-loc-9 city-1-loc-11) 8506)
  (= (cost-drive city-1-loc-12 city-1-loc-1) 9416)
  (= (cost-drive city-1-loc-1 city-1-loc-12) 3223)
  (= (cost-drive city-1-loc-12 city-1-loc-3) 9323)
  (= (cost-drive city-1-loc-3 city-1-loc-12) 5928)
  (= (cost-drive city-1-loc-12 city-1-loc-7) 7271)
  (= (cost-drive city-1-loc-7 city-1-loc-12) 9272)
  (= (cost-drive city-2-loc-2 city-2-loc-1) 1361)
  (= (cost-drive city-2-loc-1 city-2-loc-2) 7802)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 4426)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 3024)
  (= (cost-drive city-2-loc-5 city-2-loc-1) 8309)
  (= (cost-drive city-2-loc-1 city-2-loc-5) 1129)
  (= (cost-drive city-2-loc-5 city-2-loc-3) 2541)
  (= (cost-drive city-2-loc-3 city-2-loc-5) 5853)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 9490)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 7684)
  (= (cost-drive city-2-loc-6 city-2-loc-4) 3115)
  (= (cost-drive city-2-loc-4 city-2-loc-6) 6181)
  (= (cost-drive city-2-loc-7 city-2-loc-1) 4991)
  (= (cost-drive city-2-loc-1 city-2-loc-7) 8818)
  (= (cost-drive city-2-loc-7 city-2-loc-3) 2245)
  (= (cost-drive city-2-loc-3 city-2-loc-7) 9278)
  (= (cost-drive city-2-loc-8 city-2-loc-2) 7249)
  (= (cost-drive city-2-loc-2 city-2-loc-8) 8186)
  (= (cost-drive city-2-loc-9 city-2-loc-1) 8351)
  (= (cost-drive city-2-loc-1 city-2-loc-9) 9896)
  (= (cost-drive city-2-loc-9 city-2-loc-2) 4495)
  (= (cost-drive city-2-loc-2 city-2-loc-9) 8115)
  (= (cost-drive city-2-loc-9 city-2-loc-3) 5046)
  (= (cost-drive city-2-loc-3 city-2-loc-9) 5238)
  (= (cost-drive city-2-loc-9 city-2-loc-5) 7891)
  (= (cost-drive city-2-loc-5 city-2-loc-9) 2367)
  (= (cost-drive city-2-loc-9 city-2-loc-8) 4725)
  (= (cost-drive city-2-loc-8 city-2-loc-9) 4970)
  (= (cost-drive city-2-loc-10 city-2-loc-1) 8289)
  (= (cost-drive city-2-loc-1 city-2-loc-10) 1620)
  (= (cost-drive city-2-loc-10 city-2-loc-2) 6537)
  (= (cost-drive city-2-loc-2 city-2-loc-10) 1650)
  (= (cost-drive city-2-loc-10 city-2-loc-3) 4487)
  (= (cost-drive city-2-loc-3 city-2-loc-10) 3457)
  (= (cost-drive city-2-loc-10 city-2-loc-5) 8733)
  (= (cost-drive city-2-loc-5 city-2-loc-10) 9948)
  (= (cost-drive city-2-loc-10 city-2-loc-7) 4156)
  (= (cost-drive city-2-loc-7 city-2-loc-10) 7770)
  (= (cost-drive city-2-loc-10 city-2-loc-8) 5849)
  (= (cost-drive city-2-loc-8 city-2-loc-10) 4547)
  (= (cost-drive city-2-loc-10 city-2-loc-9) 4343)
  (= (cost-drive city-2-loc-9 city-2-loc-10) 1562)
  (= (cost-drive city-2-loc-11 city-2-loc-1) 7599)
  (= (cost-drive city-2-loc-1 city-2-loc-11) 8281)
  (= (cost-drive city-2-loc-11 city-2-loc-2) 1232)
  (= (cost-drive city-2-loc-2 city-2-loc-11) 1533)
  (= (cost-drive city-2-loc-11 city-2-loc-3) 3163)
  (= (cost-drive city-2-loc-3 city-2-loc-11) 8628)
  (= (cost-drive city-2-loc-11 city-2-loc-7) 6237)
  (= (cost-drive city-2-loc-7 city-2-loc-11) 5634)
  (= (cost-drive city-2-loc-11 city-2-loc-8) 2408)
  (= (cost-drive city-2-loc-8 city-2-loc-11) 5630)
  (= (cost-drive city-2-loc-11 city-2-loc-9) 7980)
  (= (cost-drive city-2-loc-9 city-2-loc-11) 2349)
  (= (cost-drive city-2-loc-11 city-2-loc-10) 8181)
  (= (cost-drive city-2-loc-10 city-2-loc-11) 8912)
  (= (cost-drive city-2-loc-12 city-2-loc-1) 8436)
  (= (cost-drive city-2-loc-1 city-2-loc-12) 5034)
  (= (cost-drive city-2-loc-12 city-2-loc-5) 7536)
  (= (cost-drive city-2-loc-5 city-2-loc-12) 5617)
  (= (cost-drive city-2-loc-12 city-2-loc-9) 6389)
  (= (cost-drive city-2-loc-9 city-2-loc-12) 9353)
  (= (cost-drive city-1-loc-12 city-2-loc-12) 6862)
  (= (cost-drive city-2-loc-12 city-1-loc-12) 6135)
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
  ; 273,425 -> 384,50
  (road city-1-loc-9 city-1-loc-2)
  ; 384,50 -> 273,425
  (road city-1-loc-2 city-1-loc-9)
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
  ; 174,643 -> 273,425
  (road city-1-loc-11 city-1-loc-9)
  ; 273,425 -> 174,643
  (road city-1-loc-9 city-1-loc-11)
  ; 930,259 -> 890,543
  (road city-1-loc-12 city-1-loc-1)
  ; 890,543 -> 930,259
  (road city-1-loc-1 city-1-loc-12)
  ; 930,259 -> 748,385
  (road city-1-loc-12 city-1-loc-3)
  ; 748,385 -> 930,259
  (road city-1-loc-3 city-1-loc-12)
  ; 930,259 -> 742,542
  (road city-1-loc-12 city-1-loc-7)
  ; 742,542 -> 930,259
  (road city-1-loc-7 city-1-loc-12)
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
  ; 2630,722 -> 2336,475
  (road city-2-loc-7 city-2-loc-1)
  ; 2336,475 -> 2630,722
  (road city-2-loc-1 city-2-loc-7)
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
  ; 2171,545 -> 2521,375
  (road city-2-loc-9 city-2-loc-3)
  ; 2521,375 -> 2171,545
  (road city-2-loc-3 city-2-loc-9)
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
  ; 2348,607 -> 2316,237
  (road city-2-loc-10 city-2-loc-5)
  ; 2316,237 -> 2348,607
  (road city-2-loc-5 city-2-loc-10)
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
  ; 2395,741 -> 2336,475
  (road city-2-loc-11 city-2-loc-1)
  ; 2336,475 -> 2395,741
  (road city-2-loc-1 city-2-loc-11)
  ; 2395,741 -> 2170,709
  (road city-2-loc-11 city-2-loc-2)
  ; 2170,709 -> 2395,741
  (road city-2-loc-2 city-2-loc-11)
  ; 2395,741 -> 2521,375
  (road city-2-loc-11 city-2-loc-3)
  ; 2521,375 -> 2395,741
  (road city-2-loc-3 city-2-loc-11)
  ; 2395,741 -> 2630,722
  (road city-2-loc-11 city-2-loc-7)
  ; 2630,722 -> 2395,741
  (road city-2-loc-7 city-2-loc-11)
  ; 2395,741 -> 2120,854
  (road city-2-loc-11 city-2-loc-8)
  ; 2120,854 -> 2395,741
  (road city-2-loc-8 city-2-loc-11)
  ; 2395,741 -> 2171,545
  (road city-2-loc-11 city-2-loc-9)
  ; 2171,545 -> 2395,741
  (road city-2-loc-9 city-2-loc-11)
  ; 2395,741 -> 2348,607
  (road city-2-loc-11 city-2-loc-10)
  ; 2348,607 -> 2395,741
  (road city-2-loc-10 city-2-loc-11)
  ; 2071,275 -> 2336,475
  (road city-2-loc-12 city-2-loc-1)
  ; 2336,475 -> 2071,275
  (road city-2-loc-1 city-2-loc-12)
  ; 2071,275 -> 2316,237
  (road city-2-loc-12 city-2-loc-5)
  ; 2316,237 -> 2071,275
  (road city-2-loc-5 city-2-loc-12)
  ; 2071,275 -> 2171,545
  (road city-2-loc-12 city-2-loc-9)
  ; 2171,545 -> 2071,275
  (road city-2-loc-9 city-2-loc-12)
  ; 930,259 <-> 2071,275
  (road city-1-loc-12 city-2-loc-12)
  (road city-2-loc-12 city-1-loc-12)
  (at package-1 city-1-loc-11)
  (at package-2 city-1-loc-2)
  (at package-3 city-1-loc-1)
  (at package-4 city-1-loc-7)
  (at package-5 city-1-loc-3)
  (at package-6 city-1-loc-12)
  (at package-7 city-1-loc-4)
  (at truck-1 city-2-loc-8)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-3)
  (capacity truck-2 capacity-4)
  (at truck-3 city-2-loc-11)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-8)
  (at package-2 city-2-loc-5)
  (at package-3 city-2-loc-6)
  (at package-4 city-2-loc-3)
  (at package-5 city-2-loc-10)
  (at package-6 city-2-loc-7)
  (at package-7 city-2-loc-10)
 ))
 (:metric minimize (total-cost))
)
