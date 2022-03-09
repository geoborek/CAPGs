; Transport three-cities-sequential-9nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed

(define (problem transport-three-cities-sequential-9nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed)
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
  city-1-loc-9 - location
  city-2-loc-9 - location
  city-3-loc-9 - location
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
  package-10 - package
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
  (= (base-drive city-1-loc-9 city-1-loc-2) 40)
  (= (base-drive city-1-loc-2 city-1-loc-9) 40)
  (= (base-drive city-1-loc-9 city-1-loc-6) 28)
  (= (base-drive city-1-loc-6 city-1-loc-9) 28)
  (= (base-drive city-2-loc-4 city-2-loc-2) 26)
  (= (base-drive city-2-loc-2 city-2-loc-4) 26)
  (= (base-drive city-2-loc-5 city-2-loc-2) 20)
  (= (base-drive city-2-loc-2 city-2-loc-5) 20)
  (= (base-drive city-2-loc-5 city-2-loc-4) 39)
  (= (base-drive city-2-loc-4 city-2-loc-5) 39)
  (= (base-drive city-2-loc-6 city-2-loc-3) 11)
  (= (base-drive city-2-loc-3 city-2-loc-6) 11)
  (= (base-drive city-2-loc-7 city-2-loc-1) 45)
  (= (base-drive city-2-loc-1 city-2-loc-7) 45)
  (= (base-drive city-2-loc-7 city-2-loc-2) 27)
  (= (base-drive city-2-loc-2 city-2-loc-7) 27)
  (= (base-drive city-2-loc-7 city-2-loc-5) 38)
  (= (base-drive city-2-loc-5 city-2-loc-7) 38)
  (= (base-drive city-2-loc-8 city-2-loc-3) 26)
  (= (base-drive city-2-loc-3 city-2-loc-8) 26)
  (= (base-drive city-2-loc-8 city-2-loc-6) 26)
  (= (base-drive city-2-loc-6 city-2-loc-8) 26)
  (= (base-drive city-2-loc-9 city-2-loc-3) 28)
  (= (base-drive city-2-loc-3 city-2-loc-9) 28)
  (= (base-drive city-2-loc-9 city-2-loc-6) 38)
  (= (base-drive city-2-loc-6 city-2-loc-9) 38)
  (= (base-drive city-2-loc-9 city-2-loc-7) 45)
  (= (base-drive city-2-loc-7 city-2-loc-9) 45)
  (= (base-drive city-2-loc-9 city-2-loc-8) 35)
  (= (base-drive city-2-loc-8 city-2-loc-9) 35)
  (= (base-drive city-3-loc-3 city-3-loc-1) 24)
  (= (base-drive city-3-loc-1 city-3-loc-3) 24)
  (= (base-drive city-3-loc-3 city-3-loc-2) 33)
  (= (base-drive city-3-loc-2 city-3-loc-3) 33)
  (= (base-drive city-3-loc-4 city-3-loc-1) 42)
  (= (base-drive city-3-loc-1 city-3-loc-4) 42)
  (= (base-drive city-3-loc-4 city-3-loc-3) 29)
  (= (base-drive city-3-loc-3 city-3-loc-4) 29)
  (= (base-drive city-3-loc-5 city-3-loc-1) 20)
  (= (base-drive city-3-loc-1 city-3-loc-5) 20)
  (= (base-drive city-3-loc-5 city-3-loc-2) 29)
  (= (base-drive city-3-loc-2 city-3-loc-5) 29)
  (= (base-drive city-3-loc-5 city-3-loc-3) 21)
  (= (base-drive city-3-loc-3 city-3-loc-5) 21)
  (= (base-drive city-3-loc-6 city-3-loc-2) 39)
  (= (base-drive city-3-loc-2 city-3-loc-6) 39)
  (= (base-drive city-3-loc-6 city-3-loc-5) 42)
  (= (base-drive city-3-loc-5 city-3-loc-6) 42)
  (= (base-drive city-3-loc-7 city-3-loc-1) 37)
  (= (base-drive city-3-loc-1 city-3-loc-7) 37)
  (= (base-drive city-3-loc-7 city-3-loc-2) 39)
  (= (base-drive city-3-loc-2 city-3-loc-7) 39)
  (= (base-drive city-3-loc-7 city-3-loc-3) 45)
  (= (base-drive city-3-loc-3 city-3-loc-7) 45)
  (= (base-drive city-3-loc-7 city-3-loc-5) 24)
  (= (base-drive city-3-loc-5 city-3-loc-7) 24)
  (= (base-drive city-3-loc-7 city-3-loc-6) 25)
  (= (base-drive city-3-loc-6 city-3-loc-7) 25)
  (= (base-drive city-3-loc-8 city-3-loc-1) 18)
  (= (base-drive city-3-loc-1 city-3-loc-8) 18)
  (= (base-drive city-3-loc-8 city-3-loc-3) 39)
  (= (base-drive city-3-loc-3 city-3-loc-8) 39)
  (= (base-drive city-3-loc-8 city-3-loc-5) 37)
  (= (base-drive city-3-loc-5 city-3-loc-8) 37)
  (= (base-drive city-3-loc-9 city-3-loc-3) 44)
  (= (base-drive city-3-loc-3 city-3-loc-9) 44)
  (= (base-drive city-3-loc-9 city-3-loc-4) 16)
  (= (base-drive city-3-loc-4 city-3-loc-9) 16)
  (= (base-drive city-1-loc-1 city-2-loc-6) 122)
  (= (base-drive city-2-loc-6 city-1-loc-1) 122)
  (= (base-drive city-1-loc-8 city-3-loc-9) 174)
  (= (base-drive city-3-loc-9 city-1-loc-8) 174)
  (= (base-drive city-2-loc-2 city-3-loc-6) 163)
  (= (base-drive city-3-loc-6 city-2-loc-2) 163)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 7494)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 5238)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 7704)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 9821)
  (= (cost-drive city-1-loc-4 city-1-loc-3) 5976)
  (= (cost-drive city-1-loc-3 city-1-loc-4) 4427)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 7442)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 9720)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 3642)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 6550)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 5755)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 4161)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 1371)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 7748)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 9980)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 6466)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 2462)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 9006)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 5994)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 7578)
  (= (cost-drive city-1-loc-7 city-1-loc-5) 8532)
  (= (cost-drive city-1-loc-5 city-1-loc-7) 4823)
  (= (cost-drive city-1-loc-7 city-1-loc-6) 1093)
  (= (cost-drive city-1-loc-6 city-1-loc-7) 3543)
  (= (cost-drive city-1-loc-8 city-1-loc-1) 4169)
  (= (cost-drive city-1-loc-1 city-1-loc-8) 5877)
  (= (cost-drive city-1-loc-8 city-1-loc-3) 5324)
  (= (cost-drive city-1-loc-3 city-1-loc-8) 6677)
  (= (cost-drive city-1-loc-8 city-1-loc-4) 5823)
  (= (cost-drive city-1-loc-4 city-1-loc-8) 9621)
  (= (cost-drive city-1-loc-8 city-1-loc-5) 1845)
  (= (cost-drive city-1-loc-5 city-1-loc-8) 3775)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 2804)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 4011)
  (= (cost-drive city-1-loc-9 city-1-loc-2) 7614)
  (= (cost-drive city-1-loc-2 city-1-loc-9) 5004)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 6326)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 6555)
  (= (cost-drive city-2-loc-4 city-2-loc-2) 8773)
  (= (cost-drive city-2-loc-2 city-2-loc-4) 2444)
  (= (cost-drive city-2-loc-5 city-2-loc-2) 5630)
  (= (cost-drive city-2-loc-2 city-2-loc-5) 8315)
  (= (cost-drive city-2-loc-5 city-2-loc-4) 9102)
  (= (cost-drive city-2-loc-4 city-2-loc-5) 5323)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 5823)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 1644)
  (= (cost-drive city-2-loc-7 city-2-loc-1) 2241)
  (= (cost-drive city-2-loc-1 city-2-loc-7) 5421)
  (= (cost-drive city-2-loc-7 city-2-loc-2) 5741)
  (= (cost-drive city-2-loc-2 city-2-loc-7) 2273)
  (= (cost-drive city-2-loc-7 city-2-loc-5) 8261)
  (= (cost-drive city-2-loc-5 city-2-loc-7) 2970)
  (= (cost-drive city-2-loc-8 city-2-loc-3) 4140)
  (= (cost-drive city-2-loc-3 city-2-loc-8) 9118)
  (= (cost-drive city-2-loc-8 city-2-loc-6) 1965)
  (= (cost-drive city-2-loc-6 city-2-loc-8) 4326)
  (= (cost-drive city-2-loc-9 city-2-loc-3) 4946)
  (= (cost-drive city-2-loc-3 city-2-loc-9) 9016)
  (= (cost-drive city-2-loc-9 city-2-loc-6) 2772)
  (= (cost-drive city-2-loc-6 city-2-loc-9) 5937)
  (= (cost-drive city-2-loc-9 city-2-loc-7) 4913)
  (= (cost-drive city-2-loc-7 city-2-loc-9) 3858)
  (= (cost-drive city-2-loc-9 city-2-loc-8) 3263)
  (= (cost-drive city-2-loc-8 city-2-loc-9) 9900)
  (= (cost-drive city-3-loc-3 city-3-loc-1) 4308)
  (= (cost-drive city-3-loc-1 city-3-loc-3) 5078)
  (= (cost-drive city-3-loc-3 city-3-loc-2) 8733)
  (= (cost-drive city-3-loc-2 city-3-loc-3) 6959)
  (= (cost-drive city-3-loc-4 city-3-loc-1) 8302)
  (= (cost-drive city-3-loc-1 city-3-loc-4) 7663)
  (= (cost-drive city-3-loc-4 city-3-loc-3) 3397)
  (= (cost-drive city-3-loc-3 city-3-loc-4) 8567)
  (= (cost-drive city-3-loc-5 city-3-loc-1) 6586)
  (= (cost-drive city-3-loc-1 city-3-loc-5) 5841)
  (= (cost-drive city-3-loc-5 city-3-loc-2) 1390)
  (= (cost-drive city-3-loc-2 city-3-loc-5) 9985)
  (= (cost-drive city-3-loc-5 city-3-loc-3) 3954)
  (= (cost-drive city-3-loc-3 city-3-loc-5) 9536)
  (= (cost-drive city-3-loc-6 city-3-loc-2) 9549)
  (= (cost-drive city-3-loc-2 city-3-loc-6) 3941)
  (= (cost-drive city-3-loc-6 city-3-loc-5) 1835)
  (= (cost-drive city-3-loc-5 city-3-loc-6) 7158)
  (= (cost-drive city-3-loc-7 city-3-loc-1) 4196)
  (= (cost-drive city-3-loc-1 city-3-loc-7) 5529)
  (= (cost-drive city-3-loc-7 city-3-loc-2) 4867)
  (= (cost-drive city-3-loc-2 city-3-loc-7) 9369)
  (= (cost-drive city-3-loc-7 city-3-loc-3) 5902)
  (= (cost-drive city-3-loc-3 city-3-loc-7) 9546)
  (= (cost-drive city-3-loc-7 city-3-loc-5) 5826)
  (= (cost-drive city-3-loc-5 city-3-loc-7) 4862)
  (= (cost-drive city-3-loc-7 city-3-loc-6) 4107)
  (= (cost-drive city-3-loc-6 city-3-loc-7) 8885)
  (= (cost-drive city-3-loc-8 city-3-loc-1) 2502)
  (= (cost-drive city-3-loc-1 city-3-loc-8) 3923)
  (= (cost-drive city-3-loc-8 city-3-loc-3) 8836)
  (= (cost-drive city-3-loc-3 city-3-loc-8) 6889)
  (= (cost-drive city-3-loc-8 city-3-loc-5) 6147)
  (= (cost-drive city-3-loc-5 city-3-loc-8) 7640)
  (= (cost-drive city-3-loc-9 city-3-loc-3) 8865)
  (= (cost-drive city-3-loc-3 city-3-loc-9) 5664)
  (= (cost-drive city-3-loc-9 city-3-loc-4) 6116)
  (= (cost-drive city-3-loc-4 city-3-loc-9) 3349)
  (= (cost-drive city-1-loc-1 city-2-loc-6) 2900)
  (= (cost-drive city-2-loc-6 city-1-loc-1) 7818)
  (= (cost-drive city-1-loc-8 city-3-loc-9) 5330)
  (= (cost-drive city-3-loc-9 city-1-loc-8) 6688)
  (= (cost-drive city-2-loc-2 city-3-loc-6) 3642)
  (= (cost-drive city-3-loc-6 city-2-loc-2) 6683)
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
  ; 273,425 -> 384,50
  (road city-1-loc-9 city-1-loc-2)
  ; 384,50 -> 273,425
  (road city-1-loc-2 city-1-loc-9)
  ; 273,425 -> 456,221
  (road city-1-loc-9 city-1-loc-6)
  ; 456,221 -> 273,425
  (road city-1-loc-6 city-1-loc-9)
  ; 2362,862 -> 2589,754
  (road city-2-loc-4 city-2-loc-2)
  ; 2589,754 -> 2362,862
  (road city-2-loc-2 city-2-loc-4)
  ; 2748,863 -> 2589,754
  (road city-2-loc-5 city-2-loc-2)
  ; 2589,754 -> 2748,863
  (road city-2-loc-2 city-2-loc-5)
  ; 2748,863 -> 2362,862
  (road city-2-loc-5 city-2-loc-4)
  ; 2362,862 -> 2748,863
  (road city-2-loc-4 city-2-loc-5)
  ; 2006,60 -> 2053,153
  (road city-2-loc-6 city-2-loc-3)
  ; 2053,153 -> 2006,60
  (road city-2-loc-3 city-2-loc-6)
  ; 2659,497 -> 2988,202
  (road city-2-loc-7 city-2-loc-1)
  ; 2988,202 -> 2659,497
  (road city-2-loc-1 city-2-loc-7)
  ; 2659,497 -> 2589,754
  (road city-2-loc-7 city-2-loc-2)
  ; 2589,754 -> 2659,497
  (road city-2-loc-2 city-2-loc-7)
  ; 2659,497 -> 2748,863
  (road city-2-loc-7 city-2-loc-5)
  ; 2748,863 -> 2659,497
  (road city-2-loc-5 city-2-loc-7)
  ; 2257,5 -> 2053,153
  (road city-2-loc-8 city-2-loc-3)
  ; 2053,153 -> 2257,5
  (road city-2-loc-3 city-2-loc-8)
  ; 2257,5 -> 2006,60
  (road city-2-loc-8 city-2-loc-6)
  ; 2006,60 -> 2257,5
  (road city-2-loc-6 city-2-loc-8)
  ; 2245,346 -> 2053,153
  (road city-2-loc-9 city-2-loc-3)
  ; 2053,153 -> 2245,346
  (road city-2-loc-3 city-2-loc-9)
  ; 2245,346 -> 2006,60
  (road city-2-loc-9 city-2-loc-6)
  ; 2006,60 -> 2245,346
  (road city-2-loc-6 city-2-loc-9)
  ; 2245,346 -> 2659,497
  (road city-2-loc-9 city-2-loc-7)
  ; 2659,497 -> 2245,346
  (road city-2-loc-7 city-2-loc-9)
  ; 2245,346 -> 2257,5
  (road city-2-loc-9 city-2-loc-8)
  ; 2257,5 -> 2245,346
  (road city-2-loc-8 city-2-loc-9)
  ; 1336,2475 -> 1559,2565
  (road city-3-loc-3 city-3-loc-1)
  ; 1559,2565 -> 1336,2475
  (road city-3-loc-1 city-3-loc-3)
  ; 1336,2475 -> 1347,2149
  (road city-3-loc-3 city-3-loc-2)
  ; 1347,2149 -> 1336,2475
  (road city-3-loc-2 city-3-loc-3)
  ; 1170,2709 -> 1559,2565
  (road city-3-loc-4 city-3-loc-1)
  ; 1559,2565 -> 1170,2709
  (road city-3-loc-1 city-3-loc-4)
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-4 city-3-loc-3)
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-3 city-3-loc-4)
  ; 1521,2375 -> 1559,2565
  (road city-3-loc-5 city-3-loc-1)
  ; 1559,2565 -> 1521,2375
  (road city-3-loc-1 city-3-loc-5)
  ; 1521,2375 -> 1347,2149
  (road city-3-loc-5 city-3-loc-2)
  ; 1347,2149 -> 1521,2375
  (road city-3-loc-2 city-3-loc-5)
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-5 city-3-loc-3)
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-3 city-3-loc-5)
  ; 1701,2000 -> 1347,2149
  (road city-3-loc-6 city-3-loc-2)
  ; 1347,2149 -> 1701,2000
  (road city-3-loc-2 city-3-loc-6)
  ; 1701,2000 -> 1521,2375
  (road city-3-loc-6 city-3-loc-5)
  ; 1521,2375 -> 1701,2000
  (road city-3-loc-5 city-3-loc-6)
  ; 1720,2241 -> 1559,2565
  (road city-3-loc-7 city-3-loc-1)
  ; 1559,2565 -> 1720,2241
  (road city-3-loc-1 city-3-loc-7)
  ; 1720,2241 -> 1347,2149
  (road city-3-loc-7 city-3-loc-2)
  ; 1347,2149 -> 1720,2241
  (road city-3-loc-2 city-3-loc-7)
  ; 1720,2241 -> 1336,2475
  (road city-3-loc-7 city-3-loc-3)
  ; 1336,2475 -> 1720,2241
  (road city-3-loc-3 city-3-loc-7)
  ; 1720,2241 -> 1521,2375
  (road city-3-loc-7 city-3-loc-5)
  ; 1521,2375 -> 1720,2241
  (road city-3-loc-5 city-3-loc-7)
  ; 1720,2241 -> 1701,2000
  (road city-3-loc-7 city-3-loc-6)
  ; 1701,2000 -> 1720,2241
  (road city-3-loc-6 city-3-loc-7)
  ; 1630,2722 -> 1559,2565
  (road city-3-loc-8 city-3-loc-1)
  ; 1559,2565 -> 1630,2722
  (road city-3-loc-1 city-3-loc-8)
  ; 1630,2722 -> 1336,2475
  (road city-3-loc-8 city-3-loc-3)
  ; 1336,2475 -> 1630,2722
  (road city-3-loc-3 city-3-loc-8)
  ; 1630,2722 -> 1521,2375
  (road city-3-loc-8 city-3-loc-5)
  ; 1521,2375 -> 1630,2722
  (road city-3-loc-5 city-3-loc-8)
  ; 1120,2854 -> 1336,2475
  (road city-3-loc-9 city-3-loc-3)
  ; 1336,2475 -> 1120,2854
  (road city-3-loc-3 city-3-loc-9)
  ; 1120,2854 -> 1170,2709
  (road city-3-loc-9 city-3-loc-4)
  ; 1170,2709 -> 1120,2854
  (road city-3-loc-4 city-3-loc-9)
  ; 890,543 <-> 2006,60
  (road city-1-loc-1 city-2-loc-6)
  (road city-2-loc-6 city-1-loc-1)
  (road city-1-loc-8 city-3-loc-9)
  (road city-3-loc-9 city-1-loc-8)
  (road city-2-loc-2 city-3-loc-6)
  (road city-3-loc-6 city-2-loc-2)
  (at package-1 city-2-loc-3)
  (at package-2 city-1-loc-5)
  (at package-3 city-2-loc-6)
  (at package-4 city-2-loc-7)
  (at package-5 city-2-loc-7)
  (at package-6 city-1-loc-5)
  (at package-7 city-2-loc-3)
  (at package-8 city-2-loc-7)
  (at package-9 city-1-loc-3)
  (at package-10 city-3-loc-2)
  (at truck-1 city-1-loc-5)
  (capacity truck-1 capacity-2)
  (at truck-2 city-3-loc-3)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-2)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-3-loc-5)
  (at package-2 city-2-loc-4)
  (at package-3 city-2-loc-2)
  (at package-4 city-3-loc-5)
  (at package-5 city-3-loc-9)
  (at package-6 city-1-loc-3)
  (at package-7 city-2-loc-5)
  (at package-8 city-3-loc-8)
  (at package-9 city-1-loc-6)
  (at package-10 city-3-loc-6)
 ))
 (:metric minimize (total-cost))
)
