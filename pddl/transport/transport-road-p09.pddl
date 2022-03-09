; Transport city-sequential-27nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed

(define (problem transport-city-sequential-27nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed)
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
  (= (base-drive city-loc-4 city-loc-2) 17)
  (= (base-drive city-loc-2 city-loc-4) 17)
  (= (base-drive city-loc-7 city-loc-5) 13)
  (= (base-drive city-loc-5 city-loc-7) 13)
  (= (base-drive city-loc-8 city-loc-2) 16)
  (= (base-drive city-loc-2 city-loc-8) 16)
  (= (base-drive city-loc-8 city-loc-5) 26)
  (= (base-drive city-loc-5 city-loc-8) 26)
  (= (base-drive city-loc-8 city-loc-7) 18)
  (= (base-drive city-loc-7 city-loc-8) 18)
  (= (base-drive city-loc-9 city-loc-2) 19)
  (= (base-drive city-loc-2 city-loc-9) 19)
  (= (base-drive city-loc-9 city-loc-4) 21)
  (= (base-drive city-loc-4 city-loc-9) 21)
  (= (base-drive city-loc-9 city-loc-5) 26)
  (= (base-drive city-loc-5 city-loc-9) 26)
  (= (base-drive city-loc-9 city-loc-8) 21)
  (= (base-drive city-loc-8 city-loc-9) 21)
  (= (base-drive city-loc-10 city-loc-4) 26)
  (= (base-drive city-loc-4 city-loc-10) 26)
  (= (base-drive city-loc-11 city-loc-9) 17)
  (= (base-drive city-loc-9 city-loc-11) 17)
  (= (base-drive city-loc-12 city-loc-4) 17)
  (= (base-drive city-loc-4 city-loc-12) 17)
  (= (base-drive city-loc-12 city-loc-10) 13)
  (= (base-drive city-loc-10 city-loc-12) 13)
  (= (base-drive city-loc-13 city-loc-11) 26)
  (= (base-drive city-loc-11 city-loc-13) 26)
  (= (base-drive city-loc-13 city-loc-12) 21)
  (= (base-drive city-loc-12 city-loc-13) 21)
  (= (base-drive city-loc-14 city-loc-2) 24)
  (= (base-drive city-loc-2 city-loc-14) 24)
  (= (base-drive city-loc-14 city-loc-3) 22)
  (= (base-drive city-loc-3 city-loc-14) 22)
  (= (base-drive city-loc-14 city-loc-4) 13)
  (= (base-drive city-loc-4 city-loc-14) 13)
  (= (base-drive city-loc-14 city-loc-10) 19)
  (= (base-drive city-loc-10 city-loc-14) 19)
  (= (base-drive city-loc-14 city-loc-12) 17)
  (= (base-drive city-loc-12 city-loc-14) 17)
  (= (base-drive city-loc-15 city-loc-3) 13)
  (= (base-drive city-loc-3 city-loc-15) 13)
  (= (base-drive city-loc-16 city-loc-5) 16)
  (= (base-drive city-loc-5 city-loc-16) 16)
  (= (base-drive city-loc-16 city-loc-9) 25)
  (= (base-drive city-loc-9 city-loc-16) 25)
  (= (base-drive city-loc-16 city-loc-11) 19)
  (= (base-drive city-loc-11 city-loc-16) 19)
  (= (base-drive city-loc-18 city-loc-7) 20)
  (= (base-drive city-loc-7 city-loc-18) 20)
  (= (base-drive city-loc-18 city-loc-8) 24)
  (= (base-drive city-loc-8 city-loc-18) 24)
  (= (base-drive city-loc-18 city-loc-17) 13)
  (= (base-drive city-loc-17 city-loc-18) 13)
  (= (base-drive city-loc-19 city-loc-6) 24)
  (= (base-drive city-loc-6 city-loc-19) 24)
  (= (base-drive city-loc-20 city-loc-17) 16)
  (= (base-drive city-loc-17 city-loc-20) 16)
  (= (base-drive city-loc-20 city-loc-18) 26)
  (= (base-drive city-loc-18 city-loc-20) 26)
  (= (base-drive city-loc-21 city-loc-3) 18)
  (= (base-drive city-loc-3 city-loc-21) 18)
  (= (base-drive city-loc-21 city-loc-10) 15)
  (= (base-drive city-loc-10 city-loc-21) 15)
  (= (base-drive city-loc-21 city-loc-12) 26)
  (= (base-drive city-loc-12 city-loc-21) 26)
  (= (base-drive city-loc-21 city-loc-14) 20)
  (= (base-drive city-loc-14 city-loc-21) 20)
  (= (base-drive city-loc-22 city-loc-3) 16)
  (= (base-drive city-loc-3 city-loc-22) 16)
  (= (base-drive city-loc-22 city-loc-6) 18)
  (= (base-drive city-loc-6 city-loc-22) 18)
  (= (base-drive city-loc-22 city-loc-15) 18)
  (= (base-drive city-loc-15 city-loc-22) 18)
  (= (base-drive city-loc-23 city-loc-2) 21)
  (= (base-drive city-loc-2 city-loc-23) 21)
  (= (base-drive city-loc-23 city-loc-3) 20)
  (= (base-drive city-loc-3 city-loc-23) 20)
  (= (base-drive city-loc-23 city-loc-4) 26)
  (= (base-drive city-loc-4 city-loc-23) 26)
  (= (base-drive city-loc-23 city-loc-14) 22)
  (= (base-drive city-loc-14 city-loc-23) 22)
  (= (base-drive city-loc-23 city-loc-15) 15)
  (= (base-drive city-loc-15 city-loc-23) 15)
  (= (base-drive city-loc-24 city-loc-6) 14)
  (= (base-drive city-loc-6 city-loc-24) 14)
  (= (base-drive city-loc-24 city-loc-19) 16)
  (= (base-drive city-loc-19 city-loc-24) 16)
  (= (base-drive city-loc-25 city-loc-11) 12)
  (= (base-drive city-loc-11 city-loc-25) 12)
  (= (base-drive city-loc-25 city-loc-16) 15)
  (= (base-drive city-loc-16 city-loc-25) 15)
  (= (base-drive city-loc-26 city-loc-3) 26)
  (= (base-drive city-loc-3 city-loc-26) 26)
  (= (base-drive city-loc-26 city-loc-6) 11)
  (= (base-drive city-loc-6 city-loc-26) 11)
  (= (base-drive city-loc-26 city-loc-15) 21)
  (= (base-drive city-loc-15 city-loc-26) 21)
  (= (base-drive city-loc-26 city-loc-19) 20)
  (= (base-drive city-loc-19 city-loc-26) 20)
  (= (base-drive city-loc-26 city-loc-22) 13)
  (= (base-drive city-loc-22 city-loc-26) 13)
  (= (base-drive city-loc-26 city-loc-24) 19)
  (= (base-drive city-loc-24 city-loc-26) 19)
  (= (base-drive city-loc-27 city-loc-1) 15)
  (= (base-drive city-loc-1 city-loc-27) 15)
  (= (base-drive city-loc-27 city-loc-15) 22)
  (= (base-drive city-loc-15 city-loc-27) 22)
  (= (base-drive city-loc-27 city-loc-23) 15)
  (= (base-drive city-loc-23 city-loc-27) 15)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-4 city-loc-2) 8185)
  (= (cost-drive city-loc-2 city-loc-4) 7830)
  (= (cost-drive city-loc-7 city-loc-5) 1617)
  (= (cost-drive city-loc-5 city-loc-7) 5162)
  (= (cost-drive city-loc-8 city-loc-2) 5563)
  (= (cost-drive city-loc-2 city-loc-8) 1016)
  (= (cost-drive city-loc-8 city-loc-5) 3450)
  (= (cost-drive city-loc-5 city-loc-8) 7240)
  (= (cost-drive city-loc-8 city-loc-7) 5662)
  (= (cost-drive city-loc-7 city-loc-8) 8347)
  (= (cost-drive city-loc-9 city-loc-2) 5634)
  (= (cost-drive city-loc-2 city-loc-9) 8321)
  (= (cost-drive city-loc-9 city-loc-4) 3640)
  (= (cost-drive city-loc-4 city-loc-9) 6211)
  (= (cost-drive city-loc-9 city-loc-5) 8173)
  (= (cost-drive city-loc-5 city-loc-9) 1053)
  (= (cost-drive city-loc-9 city-loc-8) 5429)
  (= (cost-drive city-loc-8 city-loc-9) 3952)
  (= (cost-drive city-loc-10 city-loc-4) 2681)
  (= (cost-drive city-loc-4 city-loc-10) 4139)
  (= (cost-drive city-loc-11 city-loc-9) 7030)
  (= (cost-drive city-loc-9 city-loc-11) 3596)
  (= (cost-drive city-loc-12 city-loc-4) 2508)
  (= (cost-drive city-loc-4 city-loc-12) 6385)
  (= (cost-drive city-loc-12 city-loc-10) 2615)
  (= (cost-drive city-loc-10 city-loc-12) 5961)
  (= (cost-drive city-loc-13 city-loc-11) 4039)
  (= (cost-drive city-loc-11 city-loc-13) 5728)
  (= (cost-drive city-loc-13 city-loc-12) 9119)
  (= (cost-drive city-loc-12 city-loc-13) 4047)
  (= (cost-drive city-loc-14 city-loc-2) 1353)
  (= (cost-drive city-loc-2 city-loc-14) 2216)
  (= (cost-drive city-loc-14 city-loc-3) 3530)
  (= (cost-drive city-loc-3 city-loc-14) 8495)
  (= (cost-drive city-loc-14 city-loc-4) 4335)
  (= (cost-drive city-loc-4 city-loc-14) 8628)
  (= (cost-drive city-loc-14 city-loc-10) 6966)
  (= (cost-drive city-loc-10 city-loc-14) 6116)
  (= (cost-drive city-loc-14 city-loc-12) 2392)
  (= (cost-drive city-loc-12 city-loc-14) 3670)
  (= (cost-drive city-loc-15 city-loc-3) 3528)
  (= (cost-drive city-loc-3 city-loc-15) 7260)
  (= (cost-drive city-loc-16 city-loc-5) 1686)
  (= (cost-drive city-loc-5 city-loc-16) 9725)
  (= (cost-drive city-loc-16 city-loc-9) 7345)
  (= (cost-drive city-loc-9 city-loc-16) 6433)
  (= (cost-drive city-loc-16 city-loc-11) 4269)
  (= (cost-drive city-loc-11 city-loc-16) 1488)
  (= (cost-drive city-loc-18 city-loc-7) 6278)
  (= (cost-drive city-loc-7 city-loc-18) 3792)
  (= (cost-drive city-loc-18 city-loc-8) 9283)
  (= (cost-drive city-loc-8 city-loc-18) 8163)
  (= (cost-drive city-loc-18 city-loc-17) 3764)
  (= (cost-drive city-loc-17 city-loc-18) 4643)
  (= (cost-drive city-loc-19 city-loc-6) 9914)
  (= (cost-drive city-loc-6 city-loc-19) 1954)
  (= (cost-drive city-loc-20 city-loc-17) 3442)
  (= (cost-drive city-loc-17 city-loc-20) 7039)
  (= (cost-drive city-loc-20 city-loc-18) 3188)
  (= (cost-drive city-loc-18 city-loc-20) 5033)
  (= (cost-drive city-loc-21 city-loc-3) 8632)
  (= (cost-drive city-loc-3 city-loc-21) 7736)
  (= (cost-drive city-loc-21 city-loc-10) 7520)
  (= (cost-drive city-loc-10 city-loc-21) 2521)
  (= (cost-drive city-loc-21 city-loc-12) 6789)
  (= (cost-drive city-loc-12 city-loc-21) 8766)
  (= (cost-drive city-loc-21 city-loc-14) 3371)
  (= (cost-drive city-loc-14 city-loc-21) 3360)
  (= (cost-drive city-loc-22 city-loc-3) 3176)
  (= (cost-drive city-loc-3 city-loc-22) 5188)
  (= (cost-drive city-loc-22 city-loc-6) 8029)
  (= (cost-drive city-loc-6 city-loc-22) 2647)
  (= (cost-drive city-loc-22 city-loc-15) 6703)
  (= (cost-drive city-loc-15 city-loc-22) 9492)
  (= (cost-drive city-loc-23 city-loc-2) 9927)
  (= (cost-drive city-loc-2 city-loc-23) 2107)
  (= (cost-drive city-loc-23 city-loc-3) 7648)
  (= (cost-drive city-loc-3 city-loc-23) 9581)
  (= (cost-drive city-loc-23 city-loc-4) 7352)
  (= (cost-drive city-loc-4 city-loc-23) 5038)
  (= (cost-drive city-loc-23 city-loc-14) 4096)
  (= (cost-drive city-loc-14 city-loc-23) 8315)
  (= (cost-drive city-loc-23 city-loc-15) 2519)
  (= (cost-drive city-loc-15 city-loc-23) 7223)
  (= (cost-drive city-loc-24 city-loc-6) 4114)
  (= (cost-drive city-loc-6 city-loc-24) 1150)
  (= (cost-drive city-loc-24 city-loc-19) 6082)
  (= (cost-drive city-loc-19 city-loc-24) 6819)
  (= (cost-drive city-loc-25 city-loc-11) 8165)
  (= (cost-drive city-loc-11 city-loc-25) 9573)
  (= (cost-drive city-loc-25 city-loc-16) 5068)
  (= (cost-drive city-loc-16 city-loc-25) 9938)
  (= (cost-drive city-loc-26 city-loc-3) 1011)
  (= (cost-drive city-loc-3 city-loc-26) 3774)
  (= (cost-drive city-loc-26 city-loc-6) 5030)
  (= (cost-drive city-loc-6 city-loc-26) 5540)
  (= (cost-drive city-loc-26 city-loc-15) 9731)
  (= (cost-drive city-loc-15 city-loc-26) 1606)
  (= (cost-drive city-loc-26 city-loc-19) 7047)
  (= (cost-drive city-loc-19 city-loc-26) 1273)
  (= (cost-drive city-loc-26 city-loc-22) 2576)
  (= (cost-drive city-loc-22 city-loc-26) 9266)
  (= (cost-drive city-loc-26 city-loc-24) 2727)
  (= (cost-drive city-loc-24 city-loc-26) 1756)
  (= (cost-drive city-loc-27 city-loc-1) 8882)
  (= (cost-drive city-loc-1 city-loc-27) 3175)
  (= (cost-drive city-loc-27 city-loc-15) 8115)
  (= (cost-drive city-loc-15 city-loc-27) 3883)
  (= (cost-drive city-loc-27 city-loc-23) 6168)
  (= (cost-drive city-loc-23 city-loc-27) 3527)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 305,509 -> 437,605
  (road city-loc-4 city-loc-2)
  ; 437,605 -> 305,509
  (road city-loc-2 city-loc-4)
  ; 463,927 -> 339,962
  (road city-loc-7 city-loc-5)
  ; 339,962 -> 463,927
  (road city-loc-5 city-loc-7)
  ; 486,752 -> 437,605
  (road city-loc-8 city-loc-2)
  ; 437,605 -> 486,752
  (road city-loc-2 city-loc-8)
  ; 486,752 -> 339,962
  (road city-loc-8 city-loc-5)
  ; 339,962 -> 486,752
  (road city-loc-5 city-loc-8)
  ; 486,752 -> 463,927
  (road city-loc-8 city-loc-7)
  ; 463,927 -> 486,752
  (road city-loc-7 city-loc-8)
  ; 281,709 -> 437,605
  (road city-loc-9 city-loc-2)
  ; 437,605 -> 281,709
  (road city-loc-2 city-loc-9)
  ; 281,709 -> 305,509
  (road city-loc-9 city-loc-4)
  ; 305,509 -> 281,709
  (road city-loc-4 city-loc-9)
  ; 281,709 -> 339,962
  (road city-loc-9 city-loc-5)
  ; 339,962 -> 281,709
  (road city-loc-5 city-loc-9)
  ; 281,709 -> 486,752
  (road city-loc-9 city-loc-8)
  ; 486,752 -> 281,709
  (road city-loc-8 city-loc-9)
  ; 205,275 -> 305,509
  (road city-loc-10 city-loc-4)
  ; 305,509 -> 205,275
  (road city-loc-4 city-loc-10)
  ; 119,757 -> 281,709
  (road city-loc-11 city-loc-9)
  ; 281,709 -> 119,757
  (road city-loc-9 city-loc-11)
  ; 179,400 -> 305,509
  (road city-loc-12 city-loc-4)
  ; 305,509 -> 179,400
  (road city-loc-4 city-loc-12)
  ; 179,400 -> 205,275
  (road city-loc-12 city-loc-10)
  ; 205,275 -> 179,400
  (road city-loc-10 city-loc-12)
  ; 15,529 -> 119,757
  (road city-loc-13 city-loc-11)
  ; 119,757 -> 15,529
  (road city-loc-11 city-loc-13)
  ; 15,529 -> 179,400
  (road city-loc-13 city-loc-12)
  ; 179,400 -> 15,529
  (road city-loc-12 city-loc-13)
  ; 342,393 -> 437,605
  (road city-loc-14 city-loc-2)
  ; 437,605 -> 342,393
  (road city-loc-2 city-loc-14)
  ; 342,393 -> 497,244
  (road city-loc-14 city-loc-3)
  ; 497,244 -> 342,393
  (road city-loc-3 city-loc-14)
  ; 342,393 -> 305,509
  (road city-loc-14 city-loc-4)
  ; 305,509 -> 342,393
  (road city-loc-4 city-loc-14)
  ; 342,393 -> 205,275
  (road city-loc-14 city-loc-10)
  ; 205,275 -> 342,393
  (road city-loc-10 city-loc-14)
  ; 342,393 -> 179,400
  (road city-loc-14 city-loc-12)
  ; 179,400 -> 342,393
  (road city-loc-12 city-loc-14)
  ; 612,304 -> 497,244
  (road city-loc-15 city-loc-3)
  ; 497,244 -> 612,304
  (road city-loc-3 city-loc-15)
  ; 188,934 -> 339,962
  (road city-loc-16 city-loc-5)
  ; 339,962 -> 188,934
  (road city-loc-5 city-loc-16)
  ; 188,934 -> 281,709
  (road city-loc-16 city-loc-9)
  ; 281,709 -> 188,934
  (road city-loc-9 city-loc-16)
  ; 188,934 -> 119,757
  (road city-loc-16 city-loc-11)
  ; 119,757 -> 188,934
  (road city-loc-11 city-loc-16)
  ; 660,909 -> 463,927
  (road city-loc-18 city-loc-7)
  ; 463,927 -> 660,909
  (road city-loc-7 city-loc-18)
  ; 660,909 -> 486,752
  (road city-loc-18 city-loc-8)
  ; 486,752 -> 660,909
  (road city-loc-8 city-loc-18)
  ; 660,909 -> 776,948
  (road city-loc-18 city-loc-17)
  ; 776,948 -> 660,909
  (road city-loc-17 city-loc-18)
  ; 916,162 -> 731,24
  (road city-loc-19 city-loc-6)
  ; 731,24 -> 916,162
  (road city-loc-6 city-loc-19)
  ; 914,881 -> 776,948
  (road city-loc-20 city-loc-17)
  ; 776,948 -> 914,881
  (road city-loc-17 city-loc-20)
  ; 914,881 -> 660,909
  (road city-loc-20 city-loc-18)
  ; 660,909 -> 914,881
  (road city-loc-18 city-loc-20)
  ; 331,195 -> 497,244
  (road city-loc-21 city-loc-3)
  ; 497,244 -> 331,195
  (road city-loc-3 city-loc-21)
  ; 331,195 -> 205,275
  (road city-loc-21 city-loc-10)
  ; 205,275 -> 331,195
  (road city-loc-10 city-loc-21)
  ; 331,195 -> 179,400
  (road city-loc-21 city-loc-12)
  ; 179,400 -> 331,195
  (road city-loc-12 city-loc-21)
  ; 331,195 -> 342,393
  (road city-loc-21 city-loc-14)
  ; 342,393 -> 331,195
  (road city-loc-14 city-loc-21)
  ; 599,133 -> 497,244
  (road city-loc-22 city-loc-3)
  ; 497,244 -> 599,133
  (road city-loc-3 city-loc-22)
  ; 599,133 -> 731,24
  (road city-loc-22 city-loc-6)
  ; 731,24 -> 599,133
  (road city-loc-6 city-loc-22)
  ; 599,133 -> 612,304
  (road city-loc-22 city-loc-15)
  ; 612,304 -> 599,133
  (road city-loc-15 city-loc-22)
  ; 549,437 -> 437,605
  (road city-loc-23 city-loc-2)
  ; 437,605 -> 549,437
  (road city-loc-2 city-loc-23)
  ; 549,437 -> 497,244
  (road city-loc-23 city-loc-3)
  ; 497,244 -> 549,437
  (road city-loc-3 city-loc-23)
  ; 549,437 -> 305,509
  (road city-loc-23 city-loc-4)
  ; 305,509 -> 549,437
  (road city-loc-4 city-loc-23)
  ; 549,437 -> 342,393
  (road city-loc-23 city-loc-14)
  ; 342,393 -> 549,437
  (road city-loc-14 city-loc-23)
  ; 549,437 -> 612,304
  (road city-loc-23 city-loc-15)
  ; 612,304 -> 549,437
  (road city-loc-15 city-loc-23)
  ; 870,18 -> 731,24
  (road city-loc-24 city-loc-6)
  ; 731,24 -> 870,18
  (road city-loc-6 city-loc-24)
  ; 870,18 -> 916,162
  (road city-loc-24 city-loc-19)
  ; 916,162 -> 870,18
  (road city-loc-19 city-loc-24)
  ; 63,862 -> 119,757
  (road city-loc-25 city-loc-11)
  ; 119,757 -> 63,862
  (road city-loc-11 city-loc-25)
  ; 63,862 -> 188,934
  (road city-loc-25 city-loc-16)
  ; 188,934 -> 63,862
  (road city-loc-16 city-loc-25)
  ; 720,128 -> 497,244
  (road city-loc-26 city-loc-3)
  ; 497,244 -> 720,128
  (road city-loc-3 city-loc-26)
  ; 720,128 -> 731,24
  (road city-loc-26 city-loc-6)
  ; 731,24 -> 720,128
  (road city-loc-6 city-loc-26)
  ; 720,128 -> 612,304
  (road city-loc-26 city-loc-15)
  ; 612,304 -> 720,128
  (road city-loc-15 city-loc-26)
  ; 720,128 -> 916,162
  (road city-loc-26 city-loc-19)
  ; 916,162 -> 720,128
  (road city-loc-19 city-loc-26)
  ; 720,128 -> 599,133
  (road city-loc-26 city-loc-22)
  ; 599,133 -> 720,128
  (road city-loc-22 city-loc-26)
  ; 720,128 -> 870,18
  (road city-loc-26 city-loc-24)
  ; 870,18 -> 720,128
  (road city-loc-24 city-loc-26)
  ; 683,505 -> 820,551
  (road city-loc-27 city-loc-1)
  ; 820,551 -> 683,505
  (road city-loc-1 city-loc-27)
  ; 683,505 -> 612,304
  (road city-loc-27 city-loc-15)
  ; 612,304 -> 683,505
  (road city-loc-15 city-loc-27)
  ; 683,505 -> 549,437
  (road city-loc-27 city-loc-23)
  ; 549,437 -> 683,505
  (road city-loc-23 city-loc-27)
  (at package-1 city-loc-10)
  (at package-2 city-loc-1)
  (at package-3 city-loc-10)
  (at package-4 city-loc-2)
  (at package-5 city-loc-6)
  (at package-6 city-loc-7)
  (at package-7 city-loc-25)
  (at package-8 city-loc-24)
  (at package-9 city-loc-18)
  (at package-10 city-loc-22)
  (at truck-1 city-loc-15)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-27)
  (capacity truck-2 capacity-3)
  (at truck-3 city-loc-18)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-15)
  (at package-2 city-loc-2)
  (at package-3 city-loc-2)
  (at package-4 city-loc-17)
  (at package-5 city-loc-10)
  (at package-6 city-loc-14)
  (at package-7 city-loc-5)
  (at package-8 city-loc-5)
  (at package-9 city-loc-2)
  (at package-10 city-loc-7)
 ))
 (:metric minimize (total-cost))
)
