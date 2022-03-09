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
  (= (cost-drive city-1-loc-3 city-1-loc-1) 3474)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 4928)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 7058)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 9121)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 9316)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 8730)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 3534)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 7206)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 2538)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 4329)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 1228)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 4765)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 8299)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 9705)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 3088)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 9359)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 7587)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 2152)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 9829)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 7672)
  (= (cost-drive city-1-loc-10 city-1-loc-1) 3854)
  (= (cost-drive city-1-loc-1 city-1-loc-10) 6853)
  (= (cost-drive city-1-loc-10 city-1-loc-3) 7606)
  (= (cost-drive city-1-loc-3 city-1-loc-10) 5060)
  (= (cost-drive city-1-loc-10 city-1-loc-7) 1719)
  (= (cost-drive city-1-loc-7 city-1-loc-10) 1638)
  (= (cost-drive city-1-loc-10 city-1-loc-8) 8847)
  (= (cost-drive city-1-loc-8 city-1-loc-10) 2986)
  (= (cost-drive city-1-loc-10 city-1-loc-9) 7940)
  (= (cost-drive city-1-loc-9 city-1-loc-10) 2706)
  (= (cost-drive city-1-loc-11 city-1-loc-9) 3422)
  (= (cost-drive city-1-loc-9 city-1-loc-11) 9719)
  (= (cost-drive city-1-loc-12 city-1-loc-1) 6293)
  (= (cost-drive city-1-loc-1 city-1-loc-12) 6675)
  (= (cost-drive city-1-loc-12 city-1-loc-3) 5034)
  (= (cost-drive city-1-loc-3 city-1-loc-12) 3366)
  (= (cost-drive city-1-loc-13 city-1-loc-9) 3097)
  (= (cost-drive city-1-loc-9 city-1-loc-13) 3493)
  (= (cost-drive city-1-loc-13 city-1-loc-11) 7197)
  (= (cost-drive city-1-loc-11 city-1-loc-13) 4830)
  (= (cost-drive city-1-loc-14 city-1-loc-1) 7247)
  (= (cost-drive city-1-loc-1 city-1-loc-14) 2636)
  (= (cost-drive city-1-loc-14 city-1-loc-4) 9242)
  (= (cost-drive city-1-loc-4 city-1-loc-14) 2467)
  (= (cost-drive city-1-loc-14 city-1-loc-5) 1428)
  (= (cost-drive city-1-loc-5 city-1-loc-14) 9181)
  (= (cost-drive city-1-loc-14 city-1-loc-7) 8642)
  (= (cost-drive city-1-loc-7 city-1-loc-14) 8319)
  (= (cost-drive city-1-loc-14 city-1-loc-8) 1392)
  (= (cost-drive city-1-loc-8 city-1-loc-14) 2837)
  (= (cost-drive city-1-loc-15 city-1-loc-9) 1509)
  (= (cost-drive city-1-loc-9 city-1-loc-15) 2145)
  (= (cost-drive city-1-loc-15 city-1-loc-10) 8276)
  (= (cost-drive city-1-loc-10 city-1-loc-15) 6896)
  (= (cost-drive city-1-loc-15 city-1-loc-11) 5987)
  (= (cost-drive city-1-loc-11 city-1-loc-15) 3533)
  (= (cost-drive city-1-loc-15 city-1-loc-13) 5427)
  (= (cost-drive city-1-loc-13 city-1-loc-15) 8640)
  (= (cost-drive city-1-loc-16 city-1-loc-11) 1588)
  (= (cost-drive city-1-loc-11 city-1-loc-16) 1823)
  (= (cost-drive city-1-loc-16 city-1-loc-13) 3971)
  (= (cost-drive city-1-loc-13 city-1-loc-16) 1379)
  (= (cost-drive city-1-loc-16 city-1-loc-15) 1148)
  (= (cost-drive city-1-loc-15 city-1-loc-16) 1360)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 8515)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 9546)
  (= (cost-drive city-2-loc-4 city-2-loc-1) 3116)
  (= (cost-drive city-2-loc-1 city-2-loc-4) 3143)
  (= (cost-drive city-2-loc-4 city-2-loc-2) 2471)
  (= (cost-drive city-2-loc-2 city-2-loc-4) 8657)
  (= (cost-drive city-2-loc-4 city-2-loc-3) 8692)
  (= (cost-drive city-2-loc-3 city-2-loc-4) 9206)
  (= (cost-drive city-2-loc-5 city-2-loc-4) 7030)
  (= (cost-drive city-2-loc-4 city-2-loc-5) 2478)
  (= (cost-drive city-2-loc-6 city-2-loc-1) 9722)
  (= (cost-drive city-2-loc-1 city-2-loc-6) 2386)
  (= (cost-drive city-2-loc-6 city-2-loc-2) 5888)
  (= (cost-drive city-2-loc-2 city-2-loc-6) 9750)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 6591)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 1611)
  (= (cost-drive city-2-loc-6 city-2-loc-4) 5609)
  (= (cost-drive city-2-loc-4 city-2-loc-6) 5663)
  (= (cost-drive city-2-loc-8 city-2-loc-6) 3281)
  (= (cost-drive city-2-loc-6 city-2-loc-8) 1391)
  (= (cost-drive city-2-loc-8 city-2-loc-7) 3681)
  (= (cost-drive city-2-loc-7 city-2-loc-8) 4004)
  (= (cost-drive city-2-loc-9 city-2-loc-2) 4137)
  (= (cost-drive city-2-loc-2 city-2-loc-9) 7303)
  (= (cost-drive city-2-loc-10 city-2-loc-5) 4767)
  (= (cost-drive city-2-loc-5 city-2-loc-10) 9946)
  (= (cost-drive city-2-loc-11 city-2-loc-1) 3772)
  (= (cost-drive city-2-loc-1 city-2-loc-11) 1771)
  (= (cost-drive city-2-loc-11 city-2-loc-2) 5172)
  (= (cost-drive city-2-loc-2 city-2-loc-11) 6006)
  (= (cost-drive city-2-loc-11 city-2-loc-3) 2341)
  (= (cost-drive city-2-loc-3 city-2-loc-11) 3001)
  (= (cost-drive city-2-loc-11 city-2-loc-4) 7808)
  (= (cost-drive city-2-loc-4 city-2-loc-11) 4178)
  (= (cost-drive city-2-loc-11 city-2-loc-6) 1729)
  (= (cost-drive city-2-loc-6 city-2-loc-11) 6705)
  (= (cost-drive city-2-loc-12 city-2-loc-1) 6328)
  (= (cost-drive city-2-loc-1 city-2-loc-12) 6042)
  (= (cost-drive city-2-loc-12 city-2-loc-4) 5852)
  (= (cost-drive city-2-loc-4 city-2-loc-12) 8323)
  (= (cost-drive city-2-loc-12 city-2-loc-5) 9357)
  (= (cost-drive city-2-loc-5 city-2-loc-12) 4415)
  (= (cost-drive city-2-loc-12 city-2-loc-10) 7397)
  (= (cost-drive city-2-loc-10 city-2-loc-12) 6595)
  (= (cost-drive city-2-loc-12 city-2-loc-11) 6169)
  (= (cost-drive city-2-loc-11 city-2-loc-12) 1706)
  (= (cost-drive city-2-loc-13 city-2-loc-1) 9299)
  (= (cost-drive city-2-loc-1 city-2-loc-13) 6529)
  (= (cost-drive city-2-loc-13 city-2-loc-2) 3222)
  (= (cost-drive city-2-loc-2 city-2-loc-13) 7908)
  (= (cost-drive city-2-loc-13 city-2-loc-4) 3590)
  (= (cost-drive city-2-loc-4 city-2-loc-13) 5982)
  (= (cost-drive city-2-loc-13 city-2-loc-5) 4000)
  (= (cost-drive city-2-loc-5 city-2-loc-13) 5888)
  (= (cost-drive city-2-loc-13 city-2-loc-6) 8324)
  (= (cost-drive city-2-loc-6 city-2-loc-13) 9417)
  (= (cost-drive city-2-loc-13 city-2-loc-9) 3734)
  (= (cost-drive city-2-loc-9 city-2-loc-13) 4381)
  (= (cost-drive city-2-loc-13 city-2-loc-10) 7002)
  (= (cost-drive city-2-loc-10 city-2-loc-13) 1793)
  (= (cost-drive city-2-loc-13 city-2-loc-11) 6965)
  (= (cost-drive city-2-loc-11 city-2-loc-13) 7967)
  (= (cost-drive city-2-loc-13 city-2-loc-12) 2044)
  (= (cost-drive city-2-loc-12 city-2-loc-13) 8779)
  (= (cost-drive city-2-loc-14 city-2-loc-2) 1419)
  (= (cost-drive city-2-loc-2 city-2-loc-14) 4778)
  (= (cost-drive city-2-loc-14 city-2-loc-4) 4056)
  (= (cost-drive city-2-loc-4 city-2-loc-14) 2821)
  (= (cost-drive city-2-loc-14 city-2-loc-5) 9677)
  (= (cost-drive city-2-loc-5 city-2-loc-14) 3763)
  (= (cost-drive city-2-loc-14 city-2-loc-9) 8566)
  (= (cost-drive city-2-loc-9 city-2-loc-14) 8794)
  (= (cost-drive city-2-loc-14 city-2-loc-10) 5955)
  (= (cost-drive city-2-loc-10 city-2-loc-14) 2019)
  (= (cost-drive city-2-loc-14 city-2-loc-12) 5357)
  (= (cost-drive city-2-loc-12 city-2-loc-14) 1618)
  (= (cost-drive city-2-loc-14 city-2-loc-13) 3332)
  (= (cost-drive city-2-loc-13 city-2-loc-14) 3777)
  (= (cost-drive city-2-loc-15 city-2-loc-1) 4922)
  (= (cost-drive city-2-loc-1 city-2-loc-15) 2152)
  (= (cost-drive city-2-loc-15 city-2-loc-3) 2147)
  (= (cost-drive city-2-loc-3 city-2-loc-15) 3874)
  (= (cost-drive city-2-loc-15 city-2-loc-4) 4539)
  (= (cost-drive city-2-loc-4 city-2-loc-15) 8757)
  (= (cost-drive city-2-loc-15 city-2-loc-11) 3495)
  (= (cost-drive city-2-loc-11 city-2-loc-15) 8861)
  (= (cost-drive city-2-loc-15 city-2-loc-12) 7123)
  (= (cost-drive city-2-loc-12 city-2-loc-15) 2658)
  (= (cost-drive city-2-loc-16 city-2-loc-7) 8562)
  (= (cost-drive city-2-loc-7 city-2-loc-16) 1313)
  (= (cost-drive city-2-loc-16 city-2-loc-8) 6995)
  (= (cost-drive city-2-loc-8 city-2-loc-16) 1382)
  (= (cost-drive city-1-loc-12 city-2-loc-15) 7500)
  (= (cost-drive city-2-loc-15 city-1-loc-12) 6946)
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
