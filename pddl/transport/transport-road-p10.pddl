; Transport city-sequential-30nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed

(define (problem transport-city-sequential-30nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed)
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
  city-loc-25 - location
  city-loc-26 - location
  city-loc-27 - location
  city-loc-28 - location
  city-loc-29 - location
  city-loc-30 - location
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
  package-11 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
  (= (base-drive city-loc-4 city-loc-2) 21)
  (= (base-drive city-loc-2 city-loc-4) 21)
  (= (base-drive city-loc-5 city-loc-1) 12)
  (= (base-drive city-loc-1 city-loc-5) 12)
  (= (base-drive city-loc-6 city-loc-2) 13)
  (= (base-drive city-loc-2 city-loc-6) 13)
  (= (base-drive city-loc-7 city-loc-2) 16)
  (= (base-drive city-loc-2 city-loc-7) 16)
  (= (base-drive city-loc-7 city-loc-6) 19)
  (= (base-drive city-loc-6 city-loc-7) 19)
  (= (base-drive city-loc-8 city-loc-2) 21)
  (= (base-drive city-loc-2 city-loc-8) 21)
  (= (base-drive city-loc-8 city-loc-3) 24)
  (= (base-drive city-loc-3 city-loc-8) 24)
  (= (base-drive city-loc-8 city-loc-7) 15)
  (= (base-drive city-loc-7 city-loc-8) 15)
  (= (base-drive city-loc-11 city-loc-2) 21)
  (= (base-drive city-loc-2 city-loc-11) 21)
  (= (base-drive city-loc-11 city-loc-6) 11)
  (= (base-drive city-loc-6 city-loc-11) 11)
  (= (base-drive city-loc-11 city-loc-9) 24)
  (= (base-drive city-loc-9 city-loc-11) 24)
  (= (base-drive city-loc-12 city-loc-4) 16)
  (= (base-drive city-loc-4 city-loc-12) 16)
  (= (base-drive city-loc-14 city-loc-3) 15)
  (= (base-drive city-loc-3 city-loc-14) 15)
  (= (base-drive city-loc-14 city-loc-7) 21)
  (= (base-drive city-loc-7 city-loc-14) 21)
  (= (base-drive city-loc-14 city-loc-8) 21)
  (= (base-drive city-loc-8 city-loc-14) 21)
  (= (base-drive city-loc-15 city-loc-1) 22)
  (= (base-drive city-loc-1 city-loc-15) 22)
  (= (base-drive city-loc-15 city-loc-5) 18)
  (= (base-drive city-loc-5 city-loc-15) 18)
  (= (base-drive city-loc-15 city-loc-6) 22)
  (= (base-drive city-loc-6 city-loc-15) 22)
  (= (base-drive city-loc-15 city-loc-7) 16)
  (= (base-drive city-loc-7 city-loc-15) 16)
  (= (base-drive city-loc-15 city-loc-14) 24)
  (= (base-drive city-loc-14 city-loc-15) 24)
  (= (base-drive city-loc-16 city-loc-3) 22)
  (= (base-drive city-loc-3 city-loc-16) 22)
  (= (base-drive city-loc-16 city-loc-8) 13)
  (= (base-drive city-loc-8 city-loc-16) 13)
  (= (base-drive city-loc-17 city-loc-1) 14)
  (= (base-drive city-loc-1 city-loc-17) 14)
  (= (base-drive city-loc-17 city-loc-5) 25)
  (= (base-drive city-loc-5 city-loc-17) 25)
  (= (base-drive city-loc-18 city-loc-10) 11)
  (= (base-drive city-loc-10 city-loc-18) 11)
  (= (base-drive city-loc-19 city-loc-2) 25)
  (= (base-drive city-loc-2 city-loc-19) 25)
  (= (base-drive city-loc-19 city-loc-5) 24)
  (= (base-drive city-loc-5 city-loc-19) 24)
  (= (base-drive city-loc-19 city-loc-6) 13)
  (= (base-drive city-loc-6 city-loc-19) 13)
  (= (base-drive city-loc-19 city-loc-7) 24)
  (= (base-drive city-loc-7 city-loc-19) 24)
  (= (base-drive city-loc-19 city-loc-9) 20)
  (= (base-drive city-loc-9 city-loc-19) 20)
  (= (base-drive city-loc-19 city-loc-11) 15)
  (= (base-drive city-loc-11 city-loc-19) 15)
  (= (base-drive city-loc-19 city-loc-15) 18)
  (= (base-drive city-loc-15 city-loc-19) 18)
  (= (base-drive city-loc-20 city-loc-1) 15)
  (= (base-drive city-loc-1 city-loc-20) 15)
  (= (base-drive city-loc-20 city-loc-5) 19)
  (= (base-drive city-loc-5 city-loc-20) 19)
  (= (base-drive city-loc-20 city-loc-7) 22)
  (= (base-drive city-loc-7 city-loc-20) 22)
  (= (base-drive city-loc-20 city-loc-14) 19)
  (= (base-drive city-loc-14 city-loc-20) 19)
  (= (base-drive city-loc-20 city-loc-15) 12)
  (= (base-drive city-loc-15 city-loc-20) 12)
  (= (base-drive city-loc-20 city-loc-17) 17)
  (= (base-drive city-loc-17 city-loc-20) 17)
  (= (base-drive city-loc-21 city-loc-10) 22)
  (= (base-drive city-loc-10 city-loc-21) 22)
  (= (base-drive city-loc-21 city-loc-18) 14)
  (= (base-drive city-loc-18 city-loc-21) 14)
  (= (base-drive city-loc-22 city-loc-1) 17)
  (= (base-drive city-loc-1 city-loc-22) 17)
  (= (base-drive city-loc-22 city-loc-10) 23)
  (= (base-drive city-loc-10 city-loc-22) 23)
  (= (base-drive city-loc-22 city-loc-17) 12)
  (= (base-drive city-loc-17 city-loc-22) 12)
  (= (base-drive city-loc-23 city-loc-3) 20)
  (= (base-drive city-loc-3 city-loc-23) 20)
  (= (base-drive city-loc-23 city-loc-8) 23)
  (= (base-drive city-loc-8 city-loc-23) 23)
  (= (base-drive city-loc-23 city-loc-16) 12)
  (= (base-drive city-loc-16 city-loc-23) 12)
  (= (base-drive city-loc-24 city-loc-8) 21)
  (= (base-drive city-loc-8 city-loc-24) 21)
  (= (base-drive city-loc-24 city-loc-12) 17)
  (= (base-drive city-loc-12 city-loc-24) 17)
  (= (base-drive city-loc-24 city-loc-16) 13)
  (= (base-drive city-loc-16 city-loc-24) 13)
  (= (base-drive city-loc-24 city-loc-23) 21)
  (= (base-drive city-loc-23 city-loc-24) 21)
  (= (base-drive city-loc-25 city-loc-13) 14)
  (= (base-drive city-loc-13 city-loc-25) 14)
  (= (base-drive city-loc-26 city-loc-3) 22)
  (= (base-drive city-loc-3 city-loc-26) 22)
  (= (base-drive city-loc-26 city-loc-14) 14)
  (= (base-drive city-loc-14 city-loc-26) 14)
  (= (base-drive city-loc-26 city-loc-17) 17)
  (= (base-drive city-loc-17 city-loc-26) 17)
  (= (base-drive city-loc-26 city-loc-20) 19)
  (= (base-drive city-loc-20 city-loc-26) 19)
  (= (base-drive city-loc-27 city-loc-21) 24)
  (= (base-drive city-loc-21 city-loc-27) 24)
  (= (base-drive city-loc-27 city-loc-25) 22)
  (= (base-drive city-loc-25 city-loc-27) 22)
  (= (base-drive city-loc-27 city-loc-26) 18)
  (= (base-drive city-loc-26 city-loc-27) 18)
  (= (base-drive city-loc-28 city-loc-10) 18)
  (= (base-drive city-loc-10 city-loc-28) 18)
  (= (base-drive city-loc-28 city-loc-22) 23)
  (= (base-drive city-loc-22 city-loc-28) 23)
  (= (base-drive city-loc-29 city-loc-1) 10)
  (= (base-drive city-loc-1 city-loc-29) 10)
  (= (base-drive city-loc-29 city-loc-5) 12)
  (= (base-drive city-loc-5 city-loc-29) 12)
  (= (base-drive city-loc-29 city-loc-17) 23)
  (= (base-drive city-loc-17 city-loc-29) 23)
  (= (base-drive city-loc-29 city-loc-20) 25)
  (= (base-drive city-loc-20 city-loc-29) 25)
  (= (base-drive city-loc-29 city-loc-22) 21)
  (= (base-drive city-loc-22 city-loc-29) 21)
  (= (base-drive city-loc-30 city-loc-5) 18)
  (= (base-drive city-loc-5 city-loc-30) 18)
  (= (base-drive city-loc-30 city-loc-9) 14)
  (= (base-drive city-loc-9 city-loc-30) 14)
  (= (base-drive city-loc-30 city-loc-15) 25)
  (= (base-drive city-loc-15 city-loc-30) 25)
  (= (base-drive city-loc-30 city-loc-19) 15)
  (= (base-drive city-loc-19 city-loc-30) 15)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-4 city-loc-2) 3635)
  (= (cost-drive city-loc-2 city-loc-4) 2614)
  (= (cost-drive city-loc-5 city-loc-1) 1410)
  (= (cost-drive city-loc-1 city-loc-5) 1009)
  (= (cost-drive city-loc-6 city-loc-2) 9942)
  (= (cost-drive city-loc-2 city-loc-6) 8929)
  (= (cost-drive city-loc-7 city-loc-2) 9470)
  (= (cost-drive city-loc-2 city-loc-7) 4615)
  (= (cost-drive city-loc-7 city-loc-6) 8594)
  (= (cost-drive city-loc-6 city-loc-7) 2685)
  (= (cost-drive city-loc-8 city-loc-2) 1156)
  (= (cost-drive city-loc-2 city-loc-8) 4575)
  (= (cost-drive city-loc-8 city-loc-3) 7360)
  (= (cost-drive city-loc-3 city-loc-8) 3227)
  (= (cost-drive city-loc-8 city-loc-7) 2270)
  (= (cost-drive city-loc-7 city-loc-8) 9777)
  (= (cost-drive city-loc-11 city-loc-2) 7780)
  (= (cost-drive city-loc-2 city-loc-11) 3203)
  (= (cost-drive city-loc-11 city-loc-6) 7771)
  (= (cost-drive city-loc-6 city-loc-11) 5194)
  (= (cost-drive city-loc-11 city-loc-9) 2018)
  (= (cost-drive city-loc-9 city-loc-11) 6095)
  (= (cost-drive city-loc-12 city-loc-4) 5496)
  (= (cost-drive city-loc-4 city-loc-12) 5228)
  (= (cost-drive city-loc-14 city-loc-3) 3111)
  (= (cost-drive city-loc-3 city-loc-14) 8125)
  (= (cost-drive city-loc-14 city-loc-7) 8363)
  (= (cost-drive city-loc-7 city-loc-14) 4689)
  (= (cost-drive city-loc-14 city-loc-8) 1387)
  (= (cost-drive city-loc-8 city-loc-14) 3131)
  (= (cost-drive city-loc-15 city-loc-1) 2193)
  (= (cost-drive city-loc-1 city-loc-15) 3841)
  (= (cost-drive city-loc-15 city-loc-5) 3550)
  (= (cost-drive city-loc-5 city-loc-15) 4487)
  (= (cost-drive city-loc-15 city-loc-6) 5389)
  (= (cost-drive city-loc-6 city-loc-15) 6469)
  (= (cost-drive city-loc-15 city-loc-7) 2715)
  (= (cost-drive city-loc-7 city-loc-15) 2132)
  (= (cost-drive city-loc-15 city-loc-14) 1715)
  (= (cost-drive city-loc-14 city-loc-15) 9971)
  (= (cost-drive city-loc-16 city-loc-3) 8064)
  (= (cost-drive city-loc-3 city-loc-16) 5248)
  (= (cost-drive city-loc-16 city-loc-8) 3865)
  (= (cost-drive city-loc-8 city-loc-16) 9868)
  (= (cost-drive city-loc-17 city-loc-1) 3217)
  (= (cost-drive city-loc-1 city-loc-17) 8158)
  (= (cost-drive city-loc-17 city-loc-5) 5743)
  (= (cost-drive city-loc-5 city-loc-17) 1486)
  (= (cost-drive city-loc-18 city-loc-10) 1912)
  (= (cost-drive city-loc-10 city-loc-18) 7863)
  (= (cost-drive city-loc-19 city-loc-2) 6108)
  (= (cost-drive city-loc-2 city-loc-19) 4481)
  (= (cost-drive city-loc-19 city-loc-5) 5762)
  (= (cost-drive city-loc-5 city-loc-19) 2699)
  (= (cost-drive city-loc-19 city-loc-6) 5870)
  (= (cost-drive city-loc-6 city-loc-19) 7019)
  (= (cost-drive city-loc-19 city-loc-7) 7059)
  (= (cost-drive city-loc-7 city-loc-19) 3486)
  (= (cost-drive city-loc-19 city-loc-9) 7773)
  (= (cost-drive city-loc-9 city-loc-19) 9075)
  (= (cost-drive city-loc-19 city-loc-11) 4269)
  (= (cost-drive city-loc-11 city-loc-19) 3428)
  (= (cost-drive city-loc-19 city-loc-15) 8037)
  (= (cost-drive city-loc-15 city-loc-19) 9647)
  (= (cost-drive city-loc-20 city-loc-1) 4701)
  (= (cost-drive city-loc-1 city-loc-20) 2671)
  (= (cost-drive city-loc-20 city-loc-5) 2324)
  (= (cost-drive city-loc-5 city-loc-20) 4485)
  (= (cost-drive city-loc-20 city-loc-7) 2120)
  (= (cost-drive city-loc-7 city-loc-20) 5975)
  (= (cost-drive city-loc-20 city-loc-14) 8298)
  (= (cost-drive city-loc-14 city-loc-20) 5972)
  (= (cost-drive city-loc-20 city-loc-15) 1546)
  (= (cost-drive city-loc-15 city-loc-20) 2956)
  (= (cost-drive city-loc-20 city-loc-17) 7447)
  (= (cost-drive city-loc-17 city-loc-20) 8693)
  (= (cost-drive city-loc-21 city-loc-10) 1362)
  (= (cost-drive city-loc-10 city-loc-21) 9303)
  (= (cost-drive city-loc-21 city-loc-18) 8715)
  (= (cost-drive city-loc-18 city-loc-21) 3982)
  (= (cost-drive city-loc-22 city-loc-1) 7482)
  (= (cost-drive city-loc-1 city-loc-22) 7391)
  (= (cost-drive city-loc-22 city-loc-10) 4045)
  (= (cost-drive city-loc-10 city-loc-22) 1566)
  (= (cost-drive city-loc-22 city-loc-17) 8334)
  (= (cost-drive city-loc-17 city-loc-22) 1070)
  (= (cost-drive city-loc-23 city-loc-3) 2877)
  (= (cost-drive city-loc-3 city-loc-23) 4313)
  (= (cost-drive city-loc-23 city-loc-8) 5497)
  (= (cost-drive city-loc-8 city-loc-23) 6223)
  (= (cost-drive city-loc-23 city-loc-16) 7647)
  (= (cost-drive city-loc-16 city-loc-23) 4070)
  (= (cost-drive city-loc-24 city-loc-8) 5380)
  (= (cost-drive city-loc-8 city-loc-24) 1038)
  (= (cost-drive city-loc-24 city-loc-12) 5143)
  (= (cost-drive city-loc-12 city-loc-24) 4320)
  (= (cost-drive city-loc-24 city-loc-16) 3349)
  (= (cost-drive city-loc-16 city-loc-24) 9378)
  (= (cost-drive city-loc-24 city-loc-23) 7996)
  (= (cost-drive city-loc-23 city-loc-24) 2013)
  (= (cost-drive city-loc-25 city-loc-13) 6890)
  (= (cost-drive city-loc-13 city-loc-25) 4204)
  (= (cost-drive city-loc-26 city-loc-3) 5083)
  (= (cost-drive city-loc-3 city-loc-26) 4288)
  (= (cost-drive city-loc-26 city-loc-14) 9438)
  (= (cost-drive city-loc-14 city-loc-26) 9908)
  (= (cost-drive city-loc-26 city-loc-17) 8130)
  (= (cost-drive city-loc-17 city-loc-26) 3237)
  (= (cost-drive city-loc-26 city-loc-20) 6355)
  (= (cost-drive city-loc-20 city-loc-26) 5227)
  (= (cost-drive city-loc-27 city-loc-21) 5268)
  (= (cost-drive city-loc-21 city-loc-27) 9812)
  (= (cost-drive city-loc-27 city-loc-25) 7074)
  (= (cost-drive city-loc-25 city-loc-27) 9791)
  (= (cost-drive city-loc-27 city-loc-26) 7406)
  (= (cost-drive city-loc-26 city-loc-27) 3695)
  (= (cost-drive city-loc-28 city-loc-10) 3450)
  (= (cost-drive city-loc-10 city-loc-28) 1370)
  (= (cost-drive city-loc-28 city-loc-22) 3499)
  (= (cost-drive city-loc-22 city-loc-28) 2117)
  (= (cost-drive city-loc-29 city-loc-1) 9257)
  (= (cost-drive city-loc-1 city-loc-29) 5036)
  (= (cost-drive city-loc-29 city-loc-5) 8520)
  (= (cost-drive city-loc-5 city-loc-29) 9865)
  (= (cost-drive city-loc-29 city-loc-17) 2279)
  (= (cost-drive city-loc-17 city-loc-29) 4266)
  (= (cost-drive city-loc-29 city-loc-20) 6839)
  (= (cost-drive city-loc-20 city-loc-29) 2563)
  (= (cost-drive city-loc-29 city-loc-22) 3836)
  (= (cost-drive city-loc-22 city-loc-29) 1751)
  (= (cost-drive city-loc-30 city-loc-5) 6927)
  (= (cost-drive city-loc-5 city-loc-30) 5472)
  (= (cost-drive city-loc-30 city-loc-9) 4352)
  (= (cost-drive city-loc-9 city-loc-30) 7402)
  (= (cost-drive city-loc-30 city-loc-15) 5434)
  (= (cost-drive city-loc-15 city-loc-30) 2277)
  (= (cost-drive city-loc-30 city-loc-19) 3583)
  (= (cost-drive city-loc-19 city-loc-30) 1495)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 120,854 -> 200,669
  (road city-loc-4 city-loc-2)
  ; 200,669 -> 120,854
  (road city-loc-2 city-loc-4)
  ; 377,283 -> 490,285
  (road city-loc-5 city-loc-1)
  ; 490,285 -> 377,283
  (road city-loc-1 city-loc-5)
  ; 171,545 -> 200,669
  (road city-loc-6 city-loc-2)
  ; 200,669 -> 171,545
  (road city-loc-2 city-loc-6)
  ; 348,607 -> 200,669
  (road city-loc-7 city-loc-2)
  ; 200,669 -> 348,607
  (road city-loc-2 city-loc-7)
  ; 348,607 -> 171,545
  (road city-loc-7 city-loc-6)
  ; 171,545 -> 348,607
  (road city-loc-6 city-loc-7)
  ; 395,741 -> 200,669
  (road city-loc-8 city-loc-2)
  ; 200,669 -> 395,741
  (road city-loc-2 city-loc-8)
  ; 395,741 -> 630,722
  (road city-loc-8 city-loc-3)
  ; 630,722 -> 395,741
  (road city-loc-3 city-loc-8)
  ; 395,741 -> 348,607
  (road city-loc-8 city-loc-7)
  ; 348,607 -> 395,741
  (road city-loc-7 city-loc-8)
  ; 69,508 -> 200,669
  (road city-loc-11 city-loc-2)
  ; 200,669 -> 69,508
  (road city-loc-2 city-loc-11)
  ; 69,508 -> 171,545
  (road city-loc-11 city-loc-6)
  ; 171,545 -> 69,508
  (road city-loc-6 city-loc-11)
  ; 69,508 -> 71,275
  (road city-loc-11 city-loc-9)
  ; 71,275 -> 69,508
  (road city-loc-9 city-loc-11)
  ; 203,987 -> 120,854
  (road city-loc-12 city-loc-4)
  ; 120,854 -> 203,987
  (road city-loc-4 city-loc-12)
  ; 551,602 -> 630,722
  (road city-loc-14 city-loc-3)
  ; 630,722 -> 551,602
  (road city-loc-3 city-loc-14)
  ; 551,602 -> 348,607
  (road city-loc-14 city-loc-7)
  ; 348,607 -> 551,602
  (road city-loc-7 city-loc-14)
  ; 551,602 -> 395,741
  (road city-loc-14 city-loc-8)
  ; 395,741 -> 551,602
  (road city-loc-8 city-loc-14)
  ; 366,457 -> 490,285
  (road city-loc-15 city-loc-1)
  ; 490,285 -> 366,457
  (road city-loc-1 city-loc-15)
  ; 366,457 -> 377,283
  (road city-loc-15 city-loc-5)
  ; 377,283 -> 366,457
  (road city-loc-5 city-loc-15)
  ; 366,457 -> 171,545
  (road city-loc-15 city-loc-6)
  ; 171,545 -> 366,457
  (road city-loc-6 city-loc-15)
  ; 366,457 -> 348,607
  (road city-loc-15 city-loc-7)
  ; 348,607 -> 366,457
  (road city-loc-7 city-loc-15)
  ; 366,457 -> 551,602
  (road city-loc-15 city-loc-14)
  ; 551,602 -> 366,457
  (road city-loc-14 city-loc-15)
  ; 453,848 -> 630,722
  (road city-loc-16 city-loc-3)
  ; 630,722 -> 453,848
  (road city-loc-3 city-loc-16)
  ; 453,848 -> 395,741
  (road city-loc-16 city-loc-8)
  ; 395,741 -> 453,848
  (road city-loc-8 city-loc-16)
  ; 614,343 -> 490,285
  (road city-loc-17 city-loc-1)
  ; 490,285 -> 614,343
  (road city-loc-1 city-loc-17)
  ; 614,343 -> 377,283
  (road city-loc-17 city-loc-5)
  ; 377,283 -> 614,343
  (road city-loc-5 city-loc-17)
  ; 936,210 -> 858,139
  (road city-loc-18 city-loc-10)
  ; 858,139 -> 936,210
  (road city-loc-10 city-loc-18)
  ; 193,424 -> 200,669
  (road city-loc-19 city-loc-2)
  ; 200,669 -> 193,424
  (road city-loc-2 city-loc-19)
  ; 193,424 -> 377,283
  (road city-loc-19 city-loc-5)
  ; 377,283 -> 193,424
  (road city-loc-5 city-loc-19)
  ; 193,424 -> 171,545
  (road city-loc-19 city-loc-6)
  ; 171,545 -> 193,424
  (road city-loc-6 city-loc-19)
  ; 193,424 -> 348,607
  (road city-loc-19 city-loc-7)
  ; 348,607 -> 193,424
  (road city-loc-7 city-loc-19)
  ; 193,424 -> 71,275
  (road city-loc-19 city-loc-9)
  ; 71,275 -> 193,424
  (road city-loc-9 city-loc-19)
  ; 193,424 -> 69,508
  (road city-loc-19 city-loc-11)
  ; 69,508 -> 193,424
  (road city-loc-11 city-loc-19)
  ; 193,424 -> 366,457
  (road city-loc-19 city-loc-15)
  ; 366,457 -> 193,424
  (road city-loc-15 city-loc-19)
  ; 480,435 -> 490,285
  (road city-loc-20 city-loc-1)
  ; 490,285 -> 480,435
  (road city-loc-1 city-loc-20)
  ; 480,435 -> 377,283
  (road city-loc-20 city-loc-5)
  ; 377,283 -> 480,435
  (road city-loc-5 city-loc-20)
  ; 480,435 -> 348,607
  (road city-loc-20 city-loc-7)
  ; 348,607 -> 480,435
  (road city-loc-7 city-loc-20)
  ; 480,435 -> 551,602
  (road city-loc-20 city-loc-14)
  ; 551,602 -> 480,435
  (road city-loc-14 city-loc-20)
  ; 480,435 -> 366,457
  (road city-loc-20 city-loc-15)
  ; 366,457 -> 480,435
  (road city-loc-15 city-loc-20)
  ; 480,435 -> 614,343
  (road city-loc-20 city-loc-17)
  ; 614,343 -> 480,435
  (road city-loc-17 city-loc-20)
  ; 918,341 -> 858,139
  (road city-loc-21 city-loc-10)
  ; 858,139 -> 918,341
  (road city-loc-10 city-loc-21)
  ; 918,341 -> 936,210
  (road city-loc-21 city-loc-18)
  ; 936,210 -> 918,341
  (road city-loc-18 city-loc-21)
  ; 651,235 -> 490,285
  (road city-loc-22 city-loc-1)
  ; 490,285 -> 651,235
  (road city-loc-1 city-loc-22)
  ; 651,235 -> 858,139
  (road city-loc-22 city-loc-10)
  ; 858,139 -> 651,235
  (road city-loc-10 city-loc-22)
  ; 651,235 -> 614,343
  (road city-loc-22 city-loc-17)
  ; 614,343 -> 651,235
  (road city-loc-17 city-loc-22)
  ; 560,901 -> 630,722
  (road city-loc-23 city-loc-3)
  ; 630,722 -> 560,901
  (road city-loc-3 city-loc-23)
  ; 560,901 -> 395,741
  (road city-loc-23 city-loc-8)
  ; 395,741 -> 560,901
  (road city-loc-8 city-loc-23)
  ; 560,901 -> 453,848
  (road city-loc-23 city-loc-16)
  ; 453,848 -> 560,901
  (road city-loc-16 city-loc-23)
  ; 362,940 -> 395,741
  (road city-loc-24 city-loc-8)
  ; 395,741 -> 362,940
  (road city-loc-8 city-loc-24)
  ; 362,940 -> 203,987
  (road city-loc-24 city-loc-12)
  ; 203,987 -> 362,940
  (road city-loc-12 city-loc-24)
  ; 362,940 -> 453,848
  (road city-loc-24 city-loc-16)
  ; 453,848 -> 362,940
  (road city-loc-16 city-loc-24)
  ; 362,940 -> 560,901
  (road city-loc-24 city-loc-23)
  ; 560,901 -> 362,940
  (road city-loc-23 city-loc-24)
  ; 941,734 -> 968,863
  (road city-loc-25 city-loc-13)
  ; 968,863 -> 941,734
  (road city-loc-13 city-loc-25)
  ; 653,507 -> 630,722
  (road city-loc-26 city-loc-3)
  ; 630,722 -> 653,507
  (road city-loc-3 city-loc-26)
  ; 653,507 -> 551,602
  (road city-loc-26 city-loc-14)
  ; 551,602 -> 653,507
  (road city-loc-14 city-loc-26)
  ; 653,507 -> 614,343
  (road city-loc-26 city-loc-17)
  ; 614,343 -> 653,507
  (road city-loc-17 city-loc-26)
  ; 653,507 -> 480,435
  (road city-loc-26 city-loc-20)
  ; 480,435 -> 653,507
  (road city-loc-20 city-loc-26)
  ; 820,551 -> 918,341
  (road city-loc-27 city-loc-21)
  ; 918,341 -> 820,551
  (road city-loc-21 city-loc-27)
  ; 820,551 -> 941,734
  (road city-loc-27 city-loc-25)
  ; 941,734 -> 820,551
  (road city-loc-25 city-loc-27)
  ; 820,551 -> 653,507
  (road city-loc-27 city-loc-26)
  ; 653,507 -> 820,551
  (road city-loc-26 city-loc-27)
  ; 731,24 -> 858,139
  (road city-loc-28 city-loc-10)
  ; 858,139 -> 731,24
  (road city-loc-10 city-loc-28)
  ; 731,24 -> 651,235
  (road city-loc-28 city-loc-22)
  ; 651,235 -> 731,24
  (road city-loc-22 city-loc-28)
  ; 452,192 -> 490,285
  (road city-loc-29 city-loc-1)
  ; 490,285 -> 452,192
  (road city-loc-1 city-loc-29)
  ; 452,192 -> 377,283
  (road city-loc-29 city-loc-5)
  ; 377,283 -> 452,192
  (road city-loc-5 city-loc-29)
  ; 452,192 -> 614,343
  (road city-loc-29 city-loc-17)
  ; 614,343 -> 452,192
  (road city-loc-17 city-loc-29)
  ; 452,192 -> 480,435
  (road city-loc-29 city-loc-20)
  ; 480,435 -> 452,192
  (road city-loc-20 city-loc-29)
  ; 452,192 -> 651,235
  (road city-loc-29 city-loc-22)
  ; 651,235 -> 452,192
  (road city-loc-22 city-loc-29)
  ; 205,275 -> 377,283
  (road city-loc-30 city-loc-5)
  ; 377,283 -> 205,275
  (road city-loc-5 city-loc-30)
  ; 205,275 -> 71,275
  (road city-loc-30 city-loc-9)
  ; 71,275 -> 205,275
  (road city-loc-9 city-loc-30)
  ; 205,275 -> 366,457
  (road city-loc-30 city-loc-15)
  ; 366,457 -> 205,275
  (road city-loc-15 city-loc-30)
  ; 205,275 -> 193,424
  (road city-loc-30 city-loc-19)
  ; 193,424 -> 205,275
  (road city-loc-19 city-loc-30)
  (at package-1 city-loc-4)
  (at package-2 city-loc-23)
  (at package-3 city-loc-9)
  (at package-4 city-loc-7)
  (at package-5 city-loc-6)
  (at package-6 city-loc-13)
  (at package-7 city-loc-1)
  (at package-8 city-loc-16)
  (at package-9 city-loc-11)
  (at package-10 city-loc-12)
  (at package-11 city-loc-19)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-24)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-29)
  (at package-2 city-loc-20)
  (at package-3 city-loc-28)
  (at package-4 city-loc-28)
  (at package-5 city-loc-5)
  (at package-6 city-loc-5)
  (at package-7 city-loc-30)
  (at package-8 city-loc-29)
  (at package-9 city-loc-4)
  (at package-10 city-loc-28)
  (at package-11 city-loc-27)
 ))
 (:metric minimize (total-cost))
)
