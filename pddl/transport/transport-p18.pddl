; Transport two-cities-sequential-16nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed

(define (problem transport-two-cities-sequential-16nodes-1000size-4degree-100mindistance-3trucks-9packages-2008seed)
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
  city-1-loc-13 - location
  city-2-loc-13 - location
  city-1-loc-14 - location
  city-2-loc-14 - location
  city-1-loc-15 - location
  city-2-loc-15 - location
  city-1-loc-16 - location
  city-2-loc-16 - location
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
 (= (base-drive city-1-loc-8 city-1-loc-7) 30)
 (= (base-drive city-1-loc-7 city-1-loc-8) 30)
 (= (base-drive city-1-loc-9 city-1-loc-6) 28)
 (= (base-drive city-1-loc-6 city-1-loc-9) 28)
 (= (base-drive city-1-loc-10 city-1-loc-1) 33)
 (= (base-drive city-1-loc-1 city-1-loc-10) 33)
 (= (base-drive city-1-loc-10 city-1-loc-3) 25)
 (= (base-drive city-1-loc-3 city-1-loc-10) 25)
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
 (= (base-drive city-1-loc-13 city-1-loc-9) 29)
 (= (base-drive city-1-loc-9 city-1-loc-13) 29)
 (= (base-drive city-1-loc-13 city-1-loc-11) 13)
 (= (base-drive city-1-loc-11 city-1-loc-13) 13)
 (= (base-drive city-1-loc-14 city-1-loc-1) 33)
 (= (base-drive city-1-loc-1 city-1-loc-14) 33)
 (= (base-drive city-1-loc-14 city-1-loc-4) 13)
 (= (base-drive city-1-loc-4 city-1-loc-14) 13)
 (= (base-drive city-1-loc-14 city-1-loc-5) 18)
 (= (base-drive city-1-loc-5 city-1-loc-14) 18)
 (= (base-drive city-1-loc-14 city-1-loc-7) 33)
 (= (base-drive city-1-loc-7 city-1-loc-14) 33)
 (= (base-drive city-1-loc-14 city-1-loc-8) 25)
 (= (base-drive city-1-loc-8 city-1-loc-14) 25)
 (= (base-drive city-1-loc-15 city-1-loc-9) 15)
 (= (base-drive city-1-loc-9 city-1-loc-15) 15)
 (= (base-drive city-1-loc-15 city-1-loc-10) 31)
 (= (base-drive city-1-loc-10 city-1-loc-15) 31)
 (= (base-drive city-1-loc-15 city-1-loc-11) 12)
 (= (base-drive city-1-loc-11 city-1-loc-15) 12)
 (= (base-drive city-1-loc-15 city-1-loc-13) 22)
 (= (base-drive city-1-loc-13 city-1-loc-15) 22)
 (= (base-drive city-1-loc-16 city-1-loc-11) 16)
 (= (base-drive city-1-loc-11 city-1-loc-16) 16)
 (= (base-drive city-1-loc-16 city-1-loc-13) 20)
 (= (base-drive city-1-loc-13 city-1-loc-16) 20)
 (= (base-drive city-1-loc-16 city-1-loc-15) 27)
 (= (base-drive city-1-loc-15 city-1-loc-16) 27)
 (= (base-drive city-2-loc-3 city-2-loc-1) 23)
 (= (base-drive city-2-loc-1 city-2-loc-3) 23)
 (= (base-drive city-2-loc-4 city-2-loc-1) 16)
 (= (base-drive city-2-loc-1 city-2-loc-4) 16)
 (= (base-drive city-2-loc-4 city-2-loc-2) 24)
 (= (base-drive city-2-loc-2 city-2-loc-4) 24)
 (= (base-drive city-2-loc-4 city-2-loc-3) 33)
 (= (base-drive city-2-loc-3 city-2-loc-4) 33)
 (= (base-drive city-2-loc-5 city-2-loc-4) 29)
 (= (base-drive city-2-loc-4 city-2-loc-5) 29)
 (= (base-drive city-2-loc-6 city-2-loc-1) 28)
 (= (base-drive city-2-loc-1 city-2-loc-6) 28)
 (= (base-drive city-2-loc-6 city-2-loc-2) 20)
 (= (base-drive city-2-loc-2 city-2-loc-6) 20)
 (= (base-drive city-2-loc-6 city-2-loc-3) 29)
 (= (base-drive city-2-loc-3 city-2-loc-6) 29)
 (= (base-drive city-2-loc-6 city-2-loc-4) 21)
 (= (base-drive city-2-loc-4 city-2-loc-6) 21)
 (= (base-drive city-2-loc-8 city-2-loc-6) 24)
 (= (base-drive city-2-loc-6 city-2-loc-8) 24)
 (= (base-drive city-2-loc-8 city-2-loc-7) 25)
 (= (base-drive city-2-loc-7 city-2-loc-8) 25)
 (= (base-drive city-2-loc-9 city-2-loc-2) 18)
 (= (base-drive city-2-loc-2 city-2-loc-9) 18)
 (= (base-drive city-2-loc-10 city-2-loc-5) 16)
 (= (base-drive city-2-loc-5 city-2-loc-10) 16)
 (= (base-drive city-2-loc-11 city-2-loc-1) 15)
 (= (base-drive city-2-loc-1 city-2-loc-11) 15)
 (= (base-drive city-2-loc-11 city-2-loc-2) 34)
 (= (base-drive city-2-loc-2 city-2-loc-11) 34)
 (= (base-drive city-2-loc-11 city-2-loc-3) 14)
 (= (base-drive city-2-loc-3 city-2-loc-11) 14)
 (= (base-drive city-2-loc-11 city-2-loc-4) 20)
 (= (base-drive city-2-loc-4 city-2-loc-11) 20)
 (= (base-drive city-2-loc-11 city-2-loc-6) 18)
 (= (base-drive city-2-loc-6 city-2-loc-11) 18)
 (= (base-drive city-2-loc-12 city-2-loc-1) 22)
 (= (base-drive city-2-loc-1 city-2-loc-12) 22)
 (= (base-drive city-2-loc-12 city-2-loc-4) 18)
 (= (base-drive city-2-loc-4 city-2-loc-12) 18)
 (= (base-drive city-2-loc-12 city-2-loc-5) 17)
 (= (base-drive city-2-loc-5 city-2-loc-12) 17)
 (= (base-drive city-2-loc-12 city-2-loc-10) 32)
 (= (base-drive city-2-loc-10 city-2-loc-12) 32)
 (= (base-drive city-2-loc-12 city-2-loc-11) 34)
 (= (base-drive city-2-loc-11 city-2-loc-12) 34)
 (= (base-drive city-2-loc-13 city-2-loc-1) 29)
 (= (base-drive city-2-loc-1 city-2-loc-13) 29)
 (= (base-drive city-2-loc-13 city-2-loc-2) 22)
 (= (base-drive city-2-loc-2 city-2-loc-13) 22)
 (= (base-drive city-2-loc-13 city-2-loc-4) 14)
 (= (base-drive city-2-loc-4 city-2-loc-13) 14)
 (= (base-drive city-2-loc-13 city-2-loc-5) 21)
 (= (base-drive city-2-loc-5 city-2-loc-13) 21)
 (= (base-drive city-2-loc-13 city-2-loc-6) 29)
 (= (base-drive city-2-loc-6 city-2-loc-13) 29)
 (= (base-drive city-2-loc-13 city-2-loc-9) 31)
 (= (base-drive city-2-loc-9 city-2-loc-13) 31)
 (= (base-drive city-2-loc-13 city-2-loc-10) 34)
 (= (base-drive city-2-loc-10 city-2-loc-13) 34)
 (= (base-drive city-2-loc-13 city-2-loc-11) 33)
 (= (base-drive city-2-loc-11 city-2-loc-13) 33)
 (= (base-drive city-2-loc-13 city-2-loc-12) 19)
 (= (base-drive city-2-loc-12 city-2-loc-13) 19)
 (= (base-drive city-2-loc-14 city-2-loc-2) 25)
 (= (base-drive city-2-loc-2 city-2-loc-14) 25)
 (= (base-drive city-2-loc-14 city-2-loc-4) 28)
 (= (base-drive city-2-loc-4 city-2-loc-14) 28)
 (= (base-drive city-2-loc-14 city-2-loc-5) 23)
 (= (base-drive city-2-loc-5 city-2-loc-14) 23)
 (= (base-drive city-2-loc-14 city-2-loc-9) 24)
 (= (base-drive city-2-loc-9 city-2-loc-14) 24)
 (= (base-drive city-2-loc-14 city-2-loc-10) 30)
 (= (base-drive city-2-loc-10 city-2-loc-14) 30)
 (= (base-drive city-2-loc-14 city-2-loc-12) 30)
 (= (base-drive city-2-loc-12 city-2-loc-14) 30)
 (= (base-drive city-2-loc-14 city-2-loc-13) 15)
 (= (base-drive city-2-loc-13 city-2-loc-14) 15)
 (= (base-drive city-2-loc-15 city-2-loc-1) 19)
 (= (base-drive city-2-loc-1 city-2-loc-15) 19)
 (= (base-drive city-2-loc-15 city-2-loc-3) 31)
 (= (base-drive city-2-loc-3 city-2-loc-15) 31)
 (= (base-drive city-2-loc-15 city-2-loc-4) 34)
 (= (base-drive city-2-loc-4 city-2-loc-15) 34)
 (= (base-drive city-2-loc-15 city-2-loc-11) 31)
 (= (base-drive city-2-loc-11 city-2-loc-15) 31)
 (= (base-drive city-2-loc-15 city-2-loc-12) 29)
 (= (base-drive city-2-loc-12 city-2-loc-15) 29)
 (= (base-drive city-2-loc-16 city-2-loc-7) 21)
 (= (base-drive city-2-loc-7 city-2-loc-16) 21)
 (= (base-drive city-2-loc-16 city-2-loc-8) 18)
 (= (base-drive city-2-loc-8 city-2-loc-16) 18)
 (= (base-drive city-1-loc-12 city-2-loc-15) 115)
 (= (base-drive city-2-loc-15 city-1-loc-12) 115)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 1335)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 9410)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 6751)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 4374)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 7277)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 5807)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 5140)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 6682)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 5881)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 2944)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 8776)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 1918)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 3329)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 8024)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 6916)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 4446)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 2968)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 4754)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 9867)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 8472)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-1) 5509)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-1) 3245)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 9473)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 1271)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 1089)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 2199)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 9503)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 6158)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-1) 7989)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-1) 4447)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-1) 7825)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-1) 5297)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-1) 8393)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-1) 5804)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-1) 6120)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-1) 3828)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-1) 7540)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-1) 6578)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-1) 2770)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-1) 2222)
  (= (cost-drive city-1-loc-14 city-1-loc-1 truck-1) 8311)
  (= (cost-drive city-1-loc-1 city-1-loc-14 truck-1) 1446)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-1) 7897)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-1) 5204)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-1) 9588)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-1) 8063)
  (= (cost-drive city-1-loc-14 city-1-loc-7 truck-1) 1600)
  (= (cost-drive city-1-loc-7 city-1-loc-14 truck-1) 1515)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-1) 1822)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-1) 4432)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-1) 1048)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-1) 9836)
  (= (cost-drive city-1-loc-15 city-1-loc-10 truck-1) 5902)
  (= (cost-drive city-1-loc-10 city-1-loc-15 truck-1) 3454)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-1) 4003)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-1) 2539)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-1) 5228)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-1) 6513)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-1) 2008)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-1) 4611)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-1) 2720)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-1) 7673)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-1) 1319)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-1) 3226)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 6910)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 7200)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 3954)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 2800)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 4998)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 2651)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 2709)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 9866)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-1) 7763)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-1) 8368)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-1) 3530)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-1) 5258)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-1) 3095)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-1) 5722)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 7414)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 1926)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-1) 8059)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-1) 8052)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 6617)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 3728)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-1) 8336)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-1) 6046)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-1) 9195)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-1) 8783)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-1) 7875)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-1) 3580)
  (= (cost-drive city-2-loc-11 city-2-loc-1 truck-1) 8892)
  (= (cost-drive city-2-loc-1 city-2-loc-11 truck-1) 7465)
  (= (cost-drive city-2-loc-11 city-2-loc-2 truck-1) 6643)
  (= (cost-drive city-2-loc-2 city-2-loc-11 truck-1) 7431)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-1) 8578)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-1) 3674)
  (= (cost-drive city-2-loc-11 city-2-loc-4 truck-1) 7984)
  (= (cost-drive city-2-loc-4 city-2-loc-11 truck-1) 1511)
  (= (cost-drive city-2-loc-11 city-2-loc-6 truck-1) 5410)
  (= (cost-drive city-2-loc-6 city-2-loc-11 truck-1) 8476)
  (= (cost-drive city-2-loc-12 city-2-loc-1 truck-1) 6334)
  (= (cost-drive city-2-loc-1 city-2-loc-12 truck-1) 3119)
  (= (cost-drive city-2-loc-12 city-2-loc-4 truck-1) 6601)
  (= (cost-drive city-2-loc-4 city-2-loc-12 truck-1) 8901)
  (= (cost-drive city-2-loc-12 city-2-loc-5 truck-1) 9440)
  (= (cost-drive city-2-loc-5 city-2-loc-12 truck-1) 5383)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-1) 5121)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-1) 9110)
  (= (cost-drive city-2-loc-12 city-2-loc-11 truck-1) 8838)
  (= (cost-drive city-2-loc-11 city-2-loc-12 truck-1) 9963)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-1) 6752)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-1) 2289)
  (= (cost-drive city-2-loc-13 city-2-loc-2 truck-1) 6253)
  (= (cost-drive city-2-loc-2 city-2-loc-13 truck-1) 1397)
  (= (cost-drive city-2-loc-13 city-2-loc-4 truck-1) 3835)
  (= (cost-drive city-2-loc-4 city-2-loc-13 truck-1) 7986)
  (= (cost-drive city-2-loc-13 city-2-loc-5 truck-1) 2872)
  (= (cost-drive city-2-loc-5 city-2-loc-13 truck-1) 6328)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-1) 7360)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-1) 3244)
  (= (cost-drive city-2-loc-13 city-2-loc-9 truck-1) 9695)
  (= (cost-drive city-2-loc-9 city-2-loc-13 truck-1) 7609)
  (= (cost-drive city-2-loc-13 city-2-loc-10 truck-1) 2184)
  (= (cost-drive city-2-loc-10 city-2-loc-13 truck-1) 4856)
  (= (cost-drive city-2-loc-13 city-2-loc-11 truck-1) 9439)
  (= (cost-drive city-2-loc-11 city-2-loc-13 truck-1) 5162)
  (= (cost-drive city-2-loc-13 city-2-loc-12 truck-1) 2751)
  (= (cost-drive city-2-loc-12 city-2-loc-13 truck-1) 8973)
  (= (cost-drive city-2-loc-14 city-2-loc-2 truck-1) 8700)
  (= (cost-drive city-2-loc-2 city-2-loc-14 truck-1) 2244)
  (= (cost-drive city-2-loc-14 city-2-loc-4 truck-1) 3097)
  (= (cost-drive city-2-loc-4 city-2-loc-14 truck-1) 1642)
  (= (cost-drive city-2-loc-14 city-2-loc-5 truck-1) 3939)
  (= (cost-drive city-2-loc-5 city-2-loc-14 truck-1) 6326)
  (= (cost-drive city-2-loc-14 city-2-loc-9 truck-1) 6159)
  (= (cost-drive city-2-loc-9 city-2-loc-14 truck-1) 4695)
  (= (cost-drive city-2-loc-14 city-2-loc-10 truck-1) 5478)
  (= (cost-drive city-2-loc-10 city-2-loc-14 truck-1) 9572)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-1) 9193)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-1) 3269)
  (= (cost-drive city-2-loc-14 city-2-loc-13 truck-1) 4270)
  (= (cost-drive city-2-loc-13 city-2-loc-14 truck-1) 8637)
  (= (cost-drive city-2-loc-15 city-2-loc-1 truck-1) 6695)
  (= (cost-drive city-2-loc-1 city-2-loc-15 truck-1) 2977)
  (= (cost-drive city-2-loc-15 city-2-loc-3 truck-1) 7663)
  (= (cost-drive city-2-loc-3 city-2-loc-15 truck-1) 4677)
  (= (cost-drive city-2-loc-15 city-2-loc-4 truck-1) 7921)
  (= (cost-drive city-2-loc-4 city-2-loc-15 truck-1) 2690)
  (= (cost-drive city-2-loc-15 city-2-loc-11 truck-1) 3954)
  (= (cost-drive city-2-loc-11 city-2-loc-15 truck-1) 1217)
  (= (cost-drive city-2-loc-15 city-2-loc-12 truck-1) 2495)
  (= (cost-drive city-2-loc-12 city-2-loc-15 truck-1) 6075)
  (= (cost-drive city-2-loc-16 city-2-loc-7 truck-1) 4206)
  (= (cost-drive city-2-loc-7 city-2-loc-16 truck-1) 4256)
  (= (cost-drive city-2-loc-16 city-2-loc-8 truck-1) 5857)
  (= (cost-drive city-2-loc-8 city-2-loc-16 truck-1) 6284)
  (= (cost-drive city-1-loc-12 city-2-loc-15 truck-1) 3719)
  (= (cost-drive city-2-loc-15 city-1-loc-12 truck-1) 7717)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 9138)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 6707)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 1277)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 2285)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 3802)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 4702)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 7082)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 9462)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 9676)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 9007)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 3046)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 6692)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 1329)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 4170)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 4257)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 5469)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 2879)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 7745)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 4382)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 1184)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-2) 9221)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-2) 1101)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 1546)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 3990)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 6822)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 2456)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 5733)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 4995)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-2) 5308)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-2) 4329)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-2) 9430)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-2) 3659)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-2) 1038)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-2) 1514)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-2) 2204)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-2) 9163)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-2) 1201)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-2) 4015)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-2) 5663)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-2) 1289)
  (= (cost-drive city-1-loc-14 city-1-loc-1 truck-2) 4756)
  (= (cost-drive city-1-loc-1 city-1-loc-14 truck-2) 9034)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-2) 8208)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-2) 6559)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-2) 1832)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-2) 8561)
  (= (cost-drive city-1-loc-14 city-1-loc-7 truck-2) 2973)
  (= (cost-drive city-1-loc-7 city-1-loc-14 truck-2) 8199)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-2) 4540)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-2) 7293)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-2) 3866)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-2) 6055)
  (= (cost-drive city-1-loc-15 city-1-loc-10 truck-2) 6273)
  (= (cost-drive city-1-loc-10 city-1-loc-15 truck-2) 4014)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-2) 8520)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-2) 7205)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-2) 9330)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-2) 4668)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-2) 3326)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-2) 5220)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-2) 5412)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-2) 6880)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-2) 2521)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-2) 2954)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 6371)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 6775)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 8001)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 2653)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 3971)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 2839)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 9192)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 7627)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-2) 1209)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-2) 6900)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-2) 5199)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-2) 2186)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-2) 8491)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-2) 9330)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 3608)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 6087)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-2) 5775)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-2) 4428)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 1382)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 4671)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-2) 7495)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-2) 1512)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-2) 1704)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-2) 5752)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-2) 4004)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-2) 4644)
  (= (cost-drive city-2-loc-11 city-2-loc-1 truck-2) 8025)
  (= (cost-drive city-2-loc-1 city-2-loc-11 truck-2) 3963)
  (= (cost-drive city-2-loc-11 city-2-loc-2 truck-2) 6850)
  (= (cost-drive city-2-loc-2 city-2-loc-11 truck-2) 6278)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-2) 4698)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-2) 4940)
  (= (cost-drive city-2-loc-11 city-2-loc-4 truck-2) 8182)
  (= (cost-drive city-2-loc-4 city-2-loc-11 truck-2) 1528)
  (= (cost-drive city-2-loc-11 city-2-loc-6 truck-2) 8379)
  (= (cost-drive city-2-loc-6 city-2-loc-11 truck-2) 2934)
  (= (cost-drive city-2-loc-12 city-2-loc-1 truck-2) 7429)
  (= (cost-drive city-2-loc-1 city-2-loc-12 truck-2) 9678)
  (= (cost-drive city-2-loc-12 city-2-loc-4 truck-2) 2090)
  (= (cost-drive city-2-loc-4 city-2-loc-12 truck-2) 8204)
  (= (cost-drive city-2-loc-12 city-2-loc-5 truck-2) 3297)
  (= (cost-drive city-2-loc-5 city-2-loc-12 truck-2) 5715)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-2) 3026)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-2) 1394)
  (= (cost-drive city-2-loc-12 city-2-loc-11 truck-2) 7218)
  (= (cost-drive city-2-loc-11 city-2-loc-12 truck-2) 9078)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-2) 3890)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-2) 7293)
  (= (cost-drive city-2-loc-13 city-2-loc-2 truck-2) 9529)
  (= (cost-drive city-2-loc-2 city-2-loc-13 truck-2) 2778)
  (= (cost-drive city-2-loc-13 city-2-loc-4 truck-2) 4151)
  (= (cost-drive city-2-loc-4 city-2-loc-13 truck-2) 7162)
  (= (cost-drive city-2-loc-13 city-2-loc-5 truck-2) 3074)
  (= (cost-drive city-2-loc-5 city-2-loc-13 truck-2) 3838)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-2) 7570)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-2) 1564)
  (= (cost-drive city-2-loc-13 city-2-loc-9 truck-2) 4795)
  (= (cost-drive city-2-loc-9 city-2-loc-13 truck-2) 2486)
  (= (cost-drive city-2-loc-13 city-2-loc-10 truck-2) 5277)
  (= (cost-drive city-2-loc-10 city-2-loc-13 truck-2) 9290)
  (= (cost-drive city-2-loc-13 city-2-loc-11 truck-2) 4384)
  (= (cost-drive city-2-loc-11 city-2-loc-13 truck-2) 1247)
  (= (cost-drive city-2-loc-13 city-2-loc-12 truck-2) 4826)
  (= (cost-drive city-2-loc-12 city-2-loc-13 truck-2) 6712)
  (= (cost-drive city-2-loc-14 city-2-loc-2 truck-2) 2893)
  (= (cost-drive city-2-loc-2 city-2-loc-14 truck-2) 6003)
  (= (cost-drive city-2-loc-14 city-2-loc-4 truck-2) 7388)
  (= (cost-drive city-2-loc-4 city-2-loc-14 truck-2) 8308)
  (= (cost-drive city-2-loc-14 city-2-loc-5 truck-2) 3829)
  (= (cost-drive city-2-loc-5 city-2-loc-14 truck-2) 2322)
  (= (cost-drive city-2-loc-14 city-2-loc-9 truck-2) 3282)
  (= (cost-drive city-2-loc-9 city-2-loc-14 truck-2) 9085)
  (= (cost-drive city-2-loc-14 city-2-loc-10 truck-2) 4601)
  (= (cost-drive city-2-loc-10 city-2-loc-14 truck-2) 5837)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-2) 8533)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-2) 8462)
  (= (cost-drive city-2-loc-14 city-2-loc-13 truck-2) 2490)
  (= (cost-drive city-2-loc-13 city-2-loc-14 truck-2) 5143)
  (= (cost-drive city-2-loc-15 city-2-loc-1 truck-2) 9795)
  (= (cost-drive city-2-loc-1 city-2-loc-15 truck-2) 6545)
  (= (cost-drive city-2-loc-15 city-2-loc-3 truck-2) 3767)
  (= (cost-drive city-2-loc-3 city-2-loc-15 truck-2) 3918)
  (= (cost-drive city-2-loc-15 city-2-loc-4 truck-2) 7000)
  (= (cost-drive city-2-loc-4 city-2-loc-15 truck-2) 4552)
  (= (cost-drive city-2-loc-15 city-2-loc-11 truck-2) 8356)
  (= (cost-drive city-2-loc-11 city-2-loc-15 truck-2) 3597)
  (= (cost-drive city-2-loc-15 city-2-loc-12 truck-2) 7327)
  (= (cost-drive city-2-loc-12 city-2-loc-15 truck-2) 5656)
  (= (cost-drive city-2-loc-16 city-2-loc-7 truck-2) 8845)
  (= (cost-drive city-2-loc-7 city-2-loc-16 truck-2) 8583)
  (= (cost-drive city-2-loc-16 city-2-loc-8 truck-2) 6571)
  (= (cost-drive city-2-loc-8 city-2-loc-16 truck-2) 1969)
  (= (cost-drive city-1-loc-12 city-2-loc-15 truck-2) 3229)
  (= (cost-drive city-2-loc-15 city-1-loc-12 truck-2) 7547)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 5200)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 5655)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 3918)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 6199)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 7661)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 2413)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 3761)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 2337)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 3589)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 5960)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 8675)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 3700)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 7286)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 4497)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 1803)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 4018)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 1505)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 9810)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 7728)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 8903)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-3) 6844)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-3) 6861)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-3) 2499)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-3) 1459)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-3) 8954)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-3) 1627)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-3) 3862)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-3) 6900)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-3) 2570)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-3) 3407)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-3) 1343)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-3) 9813)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-3) 2425)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-3) 5468)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-3) 1176)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-3) 4979)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-3) 8557)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-3) 5411)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-3) 6735)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-3) 7708)
  (= (cost-drive city-1-loc-14 city-1-loc-1 truck-3) 9272)
  (= (cost-drive city-1-loc-1 city-1-loc-14 truck-3) 8936)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-3) 8189)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-3) 1603)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-3) 8511)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-3) 1360)
  (= (cost-drive city-1-loc-14 city-1-loc-7 truck-3) 3286)
  (= (cost-drive city-1-loc-7 city-1-loc-14 truck-3) 4781)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-3) 4174)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-3) 5404)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-3) 5394)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-3) 6693)
  (= (cost-drive city-1-loc-15 city-1-loc-10 truck-3) 5427)
  (= (cost-drive city-1-loc-10 city-1-loc-15 truck-3) 5253)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-3) 9995)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-3) 2150)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-3) 9468)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-3) 9668)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-3) 6929)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-3) 4247)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-3) 5474)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-3) 7583)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-3) 6524)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-3) 2032)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-3) 2054)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-3) 1006)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-3) 3025)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-3) 6332)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-3) 4575)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-3) 8268)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-3) 3881)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-3) 7936)
  (= (cost-drive city-2-loc-5 city-2-loc-4 truck-3) 3969)
  (= (cost-drive city-2-loc-4 city-2-loc-5 truck-3) 9092)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-3) 7850)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-3) 5754)
  (= (cost-drive city-2-loc-6 city-2-loc-2 truck-3) 2705)
  (= (cost-drive city-2-loc-2 city-2-loc-6 truck-3) 6939)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 2274)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 1826)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-3) 8156)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-3) 9926)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-3) 2501)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-3) 7728)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-3) 9888)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-3) 3849)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-3) 8621)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-3) 1713)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-3) 5229)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-3) 9416)
  (= (cost-drive city-2-loc-11 city-2-loc-1 truck-3) 3526)
  (= (cost-drive city-2-loc-1 city-2-loc-11 truck-3) 5745)
  (= (cost-drive city-2-loc-11 city-2-loc-2 truck-3) 1436)
  (= (cost-drive city-2-loc-2 city-2-loc-11 truck-3) 9971)
  (= (cost-drive city-2-loc-11 city-2-loc-3 truck-3) 9395)
  (= (cost-drive city-2-loc-3 city-2-loc-11 truck-3) 3929)
  (= (cost-drive city-2-loc-11 city-2-loc-4 truck-3) 4273)
  (= (cost-drive city-2-loc-4 city-2-loc-11 truck-3) 8149)
  (= (cost-drive city-2-loc-11 city-2-loc-6 truck-3) 9486)
  (= (cost-drive city-2-loc-6 city-2-loc-11 truck-3) 6218)
  (= (cost-drive city-2-loc-12 city-2-loc-1 truck-3) 6491)
  (= (cost-drive city-2-loc-1 city-2-loc-12 truck-3) 2567)
  (= (cost-drive city-2-loc-12 city-2-loc-4 truck-3) 3544)
  (= (cost-drive city-2-loc-4 city-2-loc-12 truck-3) 5047)
  (= (cost-drive city-2-loc-12 city-2-loc-5 truck-3) 6199)
  (= (cost-drive city-2-loc-5 city-2-loc-12 truck-3) 9377)
  (= (cost-drive city-2-loc-12 city-2-loc-10 truck-3) 8669)
  (= (cost-drive city-2-loc-10 city-2-loc-12 truck-3) 2162)
  (= (cost-drive city-2-loc-12 city-2-loc-11 truck-3) 6926)
  (= (cost-drive city-2-loc-11 city-2-loc-12 truck-3) 8547)
  (= (cost-drive city-2-loc-13 city-2-loc-1 truck-3) 6590)
  (= (cost-drive city-2-loc-1 city-2-loc-13 truck-3) 3281)
  (= (cost-drive city-2-loc-13 city-2-loc-2 truck-3) 6836)
  (= (cost-drive city-2-loc-2 city-2-loc-13 truck-3) 8009)
  (= (cost-drive city-2-loc-13 city-2-loc-4 truck-3) 7399)
  (= (cost-drive city-2-loc-4 city-2-loc-13 truck-3) 6899)
  (= (cost-drive city-2-loc-13 city-2-loc-5 truck-3) 8856)
  (= (cost-drive city-2-loc-5 city-2-loc-13 truck-3) 4474)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-3) 8647)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-3) 8518)
  (= (cost-drive city-2-loc-13 city-2-loc-9 truck-3) 9456)
  (= (cost-drive city-2-loc-9 city-2-loc-13 truck-3) 8734)
  (= (cost-drive city-2-loc-13 city-2-loc-10 truck-3) 7926)
  (= (cost-drive city-2-loc-10 city-2-loc-13 truck-3) 2575)
  (= (cost-drive city-2-loc-13 city-2-loc-11 truck-3) 1544)
  (= (cost-drive city-2-loc-11 city-2-loc-13 truck-3) 1545)
  (= (cost-drive city-2-loc-13 city-2-loc-12 truck-3) 2865)
  (= (cost-drive city-2-loc-12 city-2-loc-13 truck-3) 2408)
  (= (cost-drive city-2-loc-14 city-2-loc-2 truck-3) 5987)
  (= (cost-drive city-2-loc-2 city-2-loc-14 truck-3) 7398)
  (= (cost-drive city-2-loc-14 city-2-loc-4 truck-3) 9265)
  (= (cost-drive city-2-loc-4 city-2-loc-14 truck-3) 5556)
  (= (cost-drive city-2-loc-14 city-2-loc-5 truck-3) 1914)
  (= (cost-drive city-2-loc-5 city-2-loc-14 truck-3) 2158)
  (= (cost-drive city-2-loc-14 city-2-loc-9 truck-3) 9556)
  (= (cost-drive city-2-loc-9 city-2-loc-14 truck-3) 9216)
  (= (cost-drive city-2-loc-14 city-2-loc-10 truck-3) 9030)
  (= (cost-drive city-2-loc-10 city-2-loc-14 truck-3) 6963)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-3) 3948)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-3) 4793)
  (= (cost-drive city-2-loc-14 city-2-loc-13 truck-3) 4671)
  (= (cost-drive city-2-loc-13 city-2-loc-14 truck-3) 4002)
  (= (cost-drive city-2-loc-15 city-2-loc-1 truck-3) 4609)
  (= (cost-drive city-2-loc-1 city-2-loc-15 truck-3) 2722)
  (= (cost-drive city-2-loc-15 city-2-loc-3 truck-3) 8945)
  (= (cost-drive city-2-loc-3 city-2-loc-15 truck-3) 3516)
  (= (cost-drive city-2-loc-15 city-2-loc-4 truck-3) 3085)
  (= (cost-drive city-2-loc-4 city-2-loc-15 truck-3) 6945)
  (= (cost-drive city-2-loc-15 city-2-loc-11 truck-3) 3883)
  (= (cost-drive city-2-loc-11 city-2-loc-15 truck-3) 3306)
  (= (cost-drive city-2-loc-15 city-2-loc-12 truck-3) 4106)
  (= (cost-drive city-2-loc-12 city-2-loc-15 truck-3) 3282)
  (= (cost-drive city-2-loc-16 city-2-loc-7 truck-3) 5578)
  (= (cost-drive city-2-loc-7 city-2-loc-16 truck-3) 8889)
  (= (cost-drive city-2-loc-16 city-2-loc-8 truck-3) 7552)
  (= (cost-drive city-2-loc-8 city-2-loc-16 truck-3) 8131)
  (= (cost-drive city-1-loc-12 city-2-loc-15 truck-3) 1732)
  (= (cost-drive city-2-loc-15 city-1-loc-12 truck-3) 6019)
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
  ; 55,605 -> 273,425
  (road city-1-loc-13 city-1-loc-9)
  ; 273,425 -> 55,605
  (road city-1-loc-9 city-1-loc-13)
  ; 55,605 -> 174,643
  (road city-1-loc-13 city-1-loc-11)
  ; 174,643 -> 55,605
  (road city-1-loc-11 city-1-loc-13)
  ; 803,858 -> 890,543
  (road city-1-loc-14 city-1-loc-1)
  ; 890,543 -> 803,858
  (road city-1-loc-1 city-1-loc-14)
  ; 803,858 -> 912,799
  (road city-1-loc-14 city-1-loc-4)
  ; 912,799 -> 803,858
  (road city-1-loc-4 city-1-loc-14)
  ; 803,858 -> 977,899
  (road city-1-loc-14 city-1-loc-5)
  ; 977,899 -> 803,858
  (road city-1-loc-5 city-1-loc-14)
  ; 803,858 -> 742,542
  (road city-1-loc-14 city-1-loc-7)
  ; 742,542 -> 803,858
  (road city-1-loc-7 city-1-loc-14)
  ; 803,858 -> 564,783
  (road city-1-loc-14 city-1-loc-8)
  ; 564,783 -> 803,858
  (road city-1-loc-8 city-1-loc-14)
  ; 263,567 -> 273,425
  (road city-1-loc-15 city-1-loc-9)
  ; 273,425 -> 263,567
  (road city-1-loc-9 city-1-loc-15)
  ; 263,567 -> 566,552
  (road city-1-loc-15 city-1-loc-10)
  ; 566,552 -> 263,567
  (road city-1-loc-10 city-1-loc-15)
  ; 263,567 -> 174,643
  (road city-1-loc-15 city-1-loc-11)
  ; 174,643 -> 263,567
  (road city-1-loc-11 city-1-loc-15)
  ; 263,567 -> 55,605
  (road city-1-loc-15 city-1-loc-13)
  ; 55,605 -> 263,567
  (road city-1-loc-13 city-1-loc-15)
  ; 128,791 -> 174,643
  (road city-1-loc-16 city-1-loc-11)
  ; 174,643 -> 128,791
  (road city-1-loc-11 city-1-loc-16)
  ; 128,791 -> 55,605
  (road city-1-loc-16 city-1-loc-13)
  ; 55,605 -> 128,791
  (road city-1-loc-13 city-1-loc-16)
  ; 128,791 -> 263,567
  (road city-1-loc-16 city-1-loc-15)
  ; 263,567 -> 128,791
  (road city-1-loc-15 city-1-loc-16)
  ; 2347,149 -> 2245,346
  (road city-2-loc-3 city-2-loc-1)
  ; 2245,346 -> 2347,149
  (road city-2-loc-1 city-2-loc-3)
  ; 2336,475 -> 2245,346
  (road city-2-loc-4 city-2-loc-1)
  ; 2245,346 -> 2336,475
  (road city-2-loc-1 city-2-loc-4)
  ; 2336,475 -> 2559,565
  (road city-2-loc-4 city-2-loc-2)
  ; 2559,565 -> 2336,475
  (road city-2-loc-2 city-2-loc-4)
  ; 2336,475 -> 2347,149
  (road city-2-loc-4 city-2-loc-3)
  ; 2347,149 -> 2336,475
  (road city-2-loc-3 city-2-loc-4)
  ; 2170,709 -> 2336,475
  (road city-2-loc-5 city-2-loc-4)
  ; 2336,475 -> 2170,709
  (road city-2-loc-4 city-2-loc-5)
  ; 2521,375 -> 2245,346
  (road city-2-loc-6 city-2-loc-1)
  ; 2245,346 -> 2521,375
  (road city-2-loc-1 city-2-loc-6)
  ; 2521,375 -> 2559,565
  (road city-2-loc-6 city-2-loc-2)
  ; 2559,565 -> 2521,375
  (road city-2-loc-2 city-2-loc-6)
  ; 2521,375 -> 2347,149
  (road city-2-loc-6 city-2-loc-3)
  ; 2347,149 -> 2521,375
  (road city-2-loc-3 city-2-loc-6)
  ; 2521,375 -> 2336,475
  (road city-2-loc-6 city-2-loc-4)
  ; 2336,475 -> 2521,375
  (road city-2-loc-4 city-2-loc-6)
  ; 2720,241 -> 2521,375
  (road city-2-loc-8 city-2-loc-6)
  ; 2521,375 -> 2720,241
  (road city-2-loc-6 city-2-loc-8)
  ; 2720,241 -> 2701,0
  (road city-2-loc-8 city-2-loc-7)
  ; 2701,0 -> 2720,241
  (road city-2-loc-7 city-2-loc-8)
  ; 2630,722 -> 2559,565
  (road city-2-loc-9 city-2-loc-2)
  ; 2559,565 -> 2630,722
  (road city-2-loc-2 city-2-loc-9)
  ; 2120,854 -> 2170,709
  (road city-2-loc-10 city-2-loc-5)
  ; 2170,709 -> 2120,854
  (road city-2-loc-5 city-2-loc-10)
  ; 2377,283 -> 2245,346
  (road city-2-loc-11 city-2-loc-1)
  ; 2245,346 -> 2377,283
  (road city-2-loc-1 city-2-loc-11)
  ; 2377,283 -> 2559,565
  (road city-2-loc-11 city-2-loc-2)
  ; 2559,565 -> 2377,283
  (road city-2-loc-2 city-2-loc-11)
  ; 2377,283 -> 2347,149
  (road city-2-loc-11 city-2-loc-3)
  ; 2347,149 -> 2377,283
  (road city-2-loc-3 city-2-loc-11)
  ; 2377,283 -> 2336,475
  (road city-2-loc-11 city-2-loc-4)
  ; 2336,475 -> 2377,283
  (road city-2-loc-4 city-2-loc-11)
  ; 2377,283 -> 2521,375
  (road city-2-loc-11 city-2-loc-6)
  ; 2521,375 -> 2377,283
  (road city-2-loc-6 city-2-loc-11)
  ; 2171,545 -> 2245,346
  (road city-2-loc-12 city-2-loc-1)
  ; 2245,346 -> 2171,545
  (road city-2-loc-1 city-2-loc-12)
  ; 2171,545 -> 2336,475
  (road city-2-loc-12 city-2-loc-4)
  ; 2336,475 -> 2171,545
  (road city-2-loc-4 city-2-loc-12)
  ; 2171,545 -> 2170,709
  (road city-2-loc-12 city-2-loc-5)
  ; 2170,709 -> 2171,545
  (road city-2-loc-5 city-2-loc-12)
  ; 2171,545 -> 2120,854
  (road city-2-loc-12 city-2-loc-10)
  ; 2120,854 -> 2171,545
  (road city-2-loc-10 city-2-loc-12)
  ; 2171,545 -> 2377,283
  (road city-2-loc-12 city-2-loc-11)
  ; 2377,283 -> 2171,545
  (road city-2-loc-11 city-2-loc-12)
  ; 2348,607 -> 2245,346
  (road city-2-loc-13 city-2-loc-1)
  ; 2245,346 -> 2348,607
  (road city-2-loc-1 city-2-loc-13)
  ; 2348,607 -> 2559,565
  (road city-2-loc-13 city-2-loc-2)
  ; 2559,565 -> 2348,607
  (road city-2-loc-2 city-2-loc-13)
  ; 2348,607 -> 2336,475
  (road city-2-loc-13 city-2-loc-4)
  ; 2336,475 -> 2348,607
  (road city-2-loc-4 city-2-loc-13)
  ; 2348,607 -> 2170,709
  (road city-2-loc-13 city-2-loc-5)
  ; 2170,709 -> 2348,607
  (road city-2-loc-5 city-2-loc-13)
  ; 2348,607 -> 2521,375
  (road city-2-loc-13 city-2-loc-6)
  ; 2521,375 -> 2348,607
  (road city-2-loc-6 city-2-loc-13)
  ; 2348,607 -> 2630,722
  (road city-2-loc-13 city-2-loc-9)
  ; 2630,722 -> 2348,607
  (road city-2-loc-9 city-2-loc-13)
  ; 2348,607 -> 2120,854
  (road city-2-loc-13 city-2-loc-10)
  ; 2120,854 -> 2348,607
  (road city-2-loc-10 city-2-loc-13)
  ; 2348,607 -> 2377,283
  (road city-2-loc-13 city-2-loc-11)
  ; 2377,283 -> 2348,607
  (road city-2-loc-11 city-2-loc-13)
  ; 2348,607 -> 2171,545
  (road city-2-loc-13 city-2-loc-12)
  ; 2171,545 -> 2348,607
  (road city-2-loc-12 city-2-loc-13)
  ; 2395,741 -> 2559,565
  (road city-2-loc-14 city-2-loc-2)
  ; 2559,565 -> 2395,741
  (road city-2-loc-2 city-2-loc-14)
  ; 2395,741 -> 2336,475
  (road city-2-loc-14 city-2-loc-4)
  ; 2336,475 -> 2395,741
  (road city-2-loc-4 city-2-loc-14)
  ; 2395,741 -> 2170,709
  (road city-2-loc-14 city-2-loc-5)
  ; 2170,709 -> 2395,741
  (road city-2-loc-5 city-2-loc-14)
  ; 2395,741 -> 2630,722
  (road city-2-loc-14 city-2-loc-9)
  ; 2630,722 -> 2395,741
  (road city-2-loc-9 city-2-loc-14)
  ; 2395,741 -> 2120,854
  (road city-2-loc-14 city-2-loc-10)
  ; 2120,854 -> 2395,741
  (road city-2-loc-10 city-2-loc-14)
  ; 2395,741 -> 2171,545
  (road city-2-loc-14 city-2-loc-12)
  ; 2171,545 -> 2395,741
  (road city-2-loc-12 city-2-loc-14)
  ; 2395,741 -> 2348,607
  (road city-2-loc-14 city-2-loc-13)
  ; 2348,607 -> 2395,741
  (road city-2-loc-13 city-2-loc-14)
  ; 2071,275 -> 2245,346
  (road city-2-loc-15 city-2-loc-1)
  ; 2245,346 -> 2071,275
  (road city-2-loc-1 city-2-loc-15)
  ; 2071,275 -> 2347,149
  (road city-2-loc-15 city-2-loc-3)
  ; 2347,149 -> 2071,275
  (road city-2-loc-3 city-2-loc-15)
  ; 2071,275 -> 2336,475
  (road city-2-loc-15 city-2-loc-4)
  ; 2336,475 -> 2071,275
  (road city-2-loc-4 city-2-loc-15)
  ; 2071,275 -> 2377,283
  (road city-2-loc-15 city-2-loc-11)
  ; 2377,283 -> 2071,275
  (road city-2-loc-11 city-2-loc-15)
  ; 2071,275 -> 2171,545
  (road city-2-loc-15 city-2-loc-12)
  ; 2171,545 -> 2071,275
  (road city-2-loc-12 city-2-loc-15)
  ; 2858,139 -> 2701,0
  (road city-2-loc-16 city-2-loc-7)
  ; 2701,0 -> 2858,139
  (road city-2-loc-7 city-2-loc-16)
  ; 2858,139 -> 2720,241
  (road city-2-loc-16 city-2-loc-8)
  ; 2720,241 -> 2858,139
  (road city-2-loc-8 city-2-loc-16)
  ; 930,259 <-> 2071,275
  (road city-1-loc-12 city-2-loc-15)
  (road city-2-loc-15 city-1-loc-12)
  (at package-1 city-1-loc-2)
  (at package-2 city-1-loc-9)
  (at package-3 city-1-loc-4)
  (at package-4 city-1-loc-16)
  (at package-5 city-1-loc-5)
  (at package-6 city-1-loc-11)
  (at package-7 city-1-loc-7)
  (at package-8 city-1-loc-4)
  (at package-9 city-1-loc-16)
  (at truck-1 city-2-loc-14)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-10)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-8)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-14)
  (at package-2 city-2-loc-9)
  (at package-3 city-2-loc-13)
  (at package-4 city-2-loc-15)
  (at package-5 city-2-loc-2)
  (at package-6 city-2-loc-6)
  (at package-7 city-2-loc-8)
  (at package-8 city-2-loc-8)
  (at package-9 city-2-loc-14)
 ))
 (:metric minimize (total-cost))
)
