; Transport city-sequential-15nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed

(define (problem transport-city-sequential-15nodes-1000size-3degree-100mindistance-2trucks-6packages-2008seed)
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
 (= (base-drive city-loc-4 city-loc-1) 17)
 (= (base-drive city-loc-1 city-loc-4) 17)
 (= (base-drive city-loc-4 city-loc-2) 23)
 (= (base-drive city-loc-2 city-loc-4) 23)
 (= (base-drive city-loc-5 city-loc-2) 16)
 (= (base-drive city-loc-2 city-loc-5) 16)
 (= (base-drive city-loc-5 city-loc-3) 24)
 (= (base-drive city-loc-3 city-loc-5) 24)
 (= (base-drive city-loc-6 city-loc-5) 29)
 (= (base-drive city-loc-5 city-loc-6) 29)
 (= (base-drive city-loc-7 city-loc-2) 28)
 (= (base-drive city-loc-2 city-loc-7) 28)
 (= (base-drive city-loc-7 city-loc-3) 20)
 (= (base-drive city-loc-3 city-loc-7) 20)
 (= (base-drive city-loc-7 city-loc-4) 29)
 (= (base-drive city-loc-4 city-loc-7) 29)
 (= (base-drive city-loc-7 city-loc-5) 21)
 (= (base-drive city-loc-5 city-loc-7) 21)
 (= (base-drive city-loc-9 city-loc-7) 24)
 (= (base-drive city-loc-7 city-loc-9) 24)
 (= (base-drive city-loc-9 city-loc-8) 25)
 (= (base-drive city-loc-8 city-loc-9) 25)
 (= (base-drive city-loc-10 city-loc-3) 18)
 (= (base-drive city-loc-3 city-loc-10) 18)
 (= (base-drive city-loc-11 city-loc-6) 16)
 (= (base-drive city-loc-6 city-loc-11) 16)
 (= (base-drive city-loc-12 city-loc-2) 15)
 (= (base-drive city-loc-2 city-loc-12) 15)
 (= (base-drive city-loc-12 city-loc-4) 14)
 (= (base-drive city-loc-4 city-loc-12) 14)
 (= (base-drive city-loc-12 city-loc-5) 20)
 (= (base-drive city-loc-5 city-loc-12) 20)
 (= (base-drive city-loc-12 city-loc-7) 18)
 (= (base-drive city-loc-7 city-loc-12) 18)
 (= (base-drive city-loc-13 city-loc-2) 22)
 (= (base-drive city-loc-2 city-loc-13) 22)
 (= (base-drive city-loc-13 city-loc-5) 18)
 (= (base-drive city-loc-5 city-loc-13) 18)
 (= (base-drive city-loc-13 city-loc-6) 17)
 (= (base-drive city-loc-6 city-loc-13) 17)
 (= (base-drive city-loc-14 city-loc-2) 29)
 (= (base-drive city-loc-2 city-loc-14) 29)
 (= (base-drive city-loc-14 city-loc-3) 22)
 (= (base-drive city-loc-3 city-loc-14) 22)
 (= (base-drive city-loc-14 city-loc-5) 14)
 (= (base-drive city-loc-5 city-loc-14) 14)
 (= (base-drive city-loc-14 city-loc-6) 21)
 (= (base-drive city-loc-6 city-loc-14) 21)
 (= (base-drive city-loc-14 city-loc-7) 29)
 (= (base-drive city-loc-7 city-loc-14) 29)
 (= (base-drive city-loc-14 city-loc-13) 19)
 (= (base-drive city-loc-13 city-loc-14) 19)
 (= (base-drive city-loc-15 city-loc-3) 25)
 (= (base-drive city-loc-3 city-loc-15) 25)
 (= (base-drive city-loc-15 city-loc-5) 28)
 (= (base-drive city-loc-5 city-loc-15) 28)
 (= (base-drive city-loc-15 city-loc-6) 23)
 (= (base-drive city-loc-6 city-loc-15) 23)
 (= (base-drive city-loc-15 city-loc-10) 24)
 (= (base-drive city-loc-10 city-loc-15) 24)
 (= (base-drive city-loc-15 city-loc-11) 30)
 (= (base-drive city-loc-11 city-loc-15) 30)
 (= (base-drive city-loc-15 city-loc-13) 30)
 (= (base-drive city-loc-13 city-loc-15) 30)
 (= (base-drive city-loc-15 city-loc-14) 15)
 (= (base-drive city-loc-14 city-loc-15) 15)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 5579)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 2343)
  (= (cost-drive city-loc-4 city-loc-2 truck-1) 4346)
  (= (cost-drive city-loc-2 city-loc-4 truck-1) 8312)
  (= (cost-drive city-loc-5 city-loc-2 truck-1) 2290)
  (= (cost-drive city-loc-2 city-loc-5 truck-1) 9235)
  (= (cost-drive city-loc-5 city-loc-3 truck-1) 5713)
  (= (cost-drive city-loc-3 city-loc-5 truck-1) 9998)
  (= (cost-drive city-loc-6 city-loc-5 truck-1) 4385)
  (= (cost-drive city-loc-5 city-loc-6 truck-1) 4740)
  (= (cost-drive city-loc-7 city-loc-2 truck-1) 3578)
  (= (cost-drive city-loc-2 city-loc-7 truck-1) 9397)
  (= (cost-drive city-loc-7 city-loc-3 truck-1) 9410)
  (= (cost-drive city-loc-3 city-loc-7 truck-1) 4974)
  (= (cost-drive city-loc-7 city-loc-4 truck-1) 8205)
  (= (cost-drive city-loc-4 city-loc-7 truck-1) 7550)
  (= (cost-drive city-loc-7 city-loc-5 truck-1) 5775)
  (= (cost-drive city-loc-5 city-loc-7 truck-1) 4335)
  (= (cost-drive city-loc-9 city-loc-7 truck-1) 4226)
  (= (cost-drive city-loc-7 city-loc-9 truck-1) 8476)
  (= (cost-drive city-loc-9 city-loc-8 truck-1) 3504)
  (= (cost-drive city-loc-8 city-loc-9 truck-1) 3582)
  (= (cost-drive city-loc-10 city-loc-3 truck-1) 8759)
  (= (cost-drive city-loc-3 city-loc-10 truck-1) 6130)
  (= (cost-drive city-loc-11 city-loc-6 truck-1) 2291)
  (= (cost-drive city-loc-6 city-loc-11 truck-1) 4777)
  (= (cost-drive city-loc-12 city-loc-2 truck-1) 2067)
  (= (cost-drive city-loc-2 city-loc-12 truck-1) 4401)
  (= (cost-drive city-loc-12 city-loc-4 truck-1) 7107)
  (= (cost-drive city-loc-4 city-loc-12 truck-1) 1782)
  (= (cost-drive city-loc-12 city-loc-5 truck-1) 6898)
  (= (cost-drive city-loc-5 city-loc-12 truck-1) 1923)
  (= (cost-drive city-loc-12 city-loc-7 truck-1) 7311)
  (= (cost-drive city-loc-7 city-loc-12 truck-1) 6791)
  (= (cost-drive city-loc-13 city-loc-2 truck-1) 8345)
  (= (cost-drive city-loc-2 city-loc-13 truck-1) 1383)
  (= (cost-drive city-loc-13 city-loc-5 truck-1) 7621)
  (= (cost-drive city-loc-5 city-loc-13 truck-1) 7078)
  (= (cost-drive city-loc-13 city-loc-6 truck-1) 7656)
  (= (cost-drive city-loc-6 city-loc-13 truck-1) 5074)
  (= (cost-drive city-loc-14 city-loc-2 truck-1) 1453)
  (= (cost-drive city-loc-2 city-loc-14 truck-1) 9256)
  (= (cost-drive city-loc-14 city-loc-3 truck-1) 8639)
  (= (cost-drive city-loc-3 city-loc-14 truck-1) 8512)
  (= (cost-drive city-loc-14 city-loc-5 truck-1) 2865)
  (= (cost-drive city-loc-5 city-loc-14 truck-1) 6923)
  (= (cost-drive city-loc-14 city-loc-6 truck-1) 6495)
  (= (cost-drive city-loc-6 city-loc-14 truck-1) 7192)
  (= (cost-drive city-loc-14 city-loc-7 truck-1) 9318)
  (= (cost-drive city-loc-7 city-loc-14 truck-1) 7027)
  (= (cost-drive city-loc-14 city-loc-13 truck-1) 7793)
  (= (cost-drive city-loc-13 city-loc-14 truck-1) 5268)
  (= (cost-drive city-loc-15 city-loc-3 truck-1) 9890)
  (= (cost-drive city-loc-3 city-loc-15 truck-1) 5926)
  (= (cost-drive city-loc-15 city-loc-5 truck-1) 3140)
  (= (cost-drive city-loc-5 city-loc-15 truck-1) 1628)
  (= (cost-drive city-loc-15 city-loc-6 truck-1) 7321)
  (= (cost-drive city-loc-6 city-loc-15 truck-1) 7326)
  (= (cost-drive city-loc-15 city-loc-10 truck-1) 8571)
  (= (cost-drive city-loc-10 city-loc-15 truck-1) 7375)
  (= (cost-drive city-loc-15 city-loc-11 truck-1) 5828)
  (= (cost-drive city-loc-11 city-loc-15 truck-1) 6295)
  (= (cost-drive city-loc-15 city-loc-13 truck-1) 5661)
  (= (cost-drive city-loc-13 city-loc-15 truck-1) 2799)
  (= (cost-drive city-loc-15 city-loc-14 truck-1) 7480)
  (= (cost-drive city-loc-14 city-loc-15 truck-1) 4673)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 7303)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 4461)
  (= (cost-drive city-loc-4 city-loc-2 truck-2) 9346)
  (= (cost-drive city-loc-2 city-loc-4 truck-2) 4501)
  (= (cost-drive city-loc-5 city-loc-2 truck-2) 4256)
  (= (cost-drive city-loc-2 city-loc-5 truck-2) 3390)
  (= (cost-drive city-loc-5 city-loc-3 truck-2) 9246)
  (= (cost-drive city-loc-3 city-loc-5 truck-2) 9440)
  (= (cost-drive city-loc-6 city-loc-5 truck-2) 9722)
  (= (cost-drive city-loc-5 city-loc-6 truck-2) 3530)
  (= (cost-drive city-loc-7 city-loc-2 truck-2) 9476)
  (= (cost-drive city-loc-2 city-loc-7 truck-2) 1496)
  (= (cost-drive city-loc-7 city-loc-3 truck-2) 8812)
  (= (cost-drive city-loc-3 city-loc-7 truck-2) 2780)
  (= (cost-drive city-loc-7 city-loc-4 truck-2) 6169)
  (= (cost-drive city-loc-4 city-loc-7 truck-2) 6580)
  (= (cost-drive city-loc-7 city-loc-5 truck-2) 7863)
  (= (cost-drive city-loc-5 city-loc-7 truck-2) 5206)
  (= (cost-drive city-loc-9 city-loc-7 truck-2) 3018)
  (= (cost-drive city-loc-7 city-loc-9 truck-2) 5289)
  (= (cost-drive city-loc-9 city-loc-8 truck-2) 1335)
  (= (cost-drive city-loc-8 city-loc-9 truck-2) 9053)
  (= (cost-drive city-loc-10 city-loc-3 truck-2) 9564)
  (= (cost-drive city-loc-3 city-loc-10 truck-2) 3548)
  (= (cost-drive city-loc-11 city-loc-6 truck-2) 9400)
  (= (cost-drive city-loc-6 city-loc-11 truck-2) 5393)
  (= (cost-drive city-loc-12 city-loc-2 truck-2) 5956)
  (= (cost-drive city-loc-2 city-loc-12 truck-2) 1807)
  (= (cost-drive city-loc-12 city-loc-4 truck-2) 7248)
  (= (cost-drive city-loc-4 city-loc-12 truck-2) 1258)
  (= (cost-drive city-loc-12 city-loc-5 truck-2) 2819)
  (= (cost-drive city-loc-5 city-loc-12 truck-2) 6965)
  (= (cost-drive city-loc-12 city-loc-7 truck-2) 7651)
  (= (cost-drive city-loc-7 city-loc-12 truck-2) 8616)
  (= (cost-drive city-loc-13 city-loc-2 truck-2) 9949)
  (= (cost-drive city-loc-2 city-loc-13 truck-2) 8011)
  (= (cost-drive city-loc-13 city-loc-5 truck-2) 5645)
  (= (cost-drive city-loc-5 city-loc-13 truck-2) 1462)
  (= (cost-drive city-loc-13 city-loc-6 truck-2) 8838)
  (= (cost-drive city-loc-6 city-loc-13 truck-2) 8796)
  (= (cost-drive city-loc-14 city-loc-2 truck-2) 1856)
  (= (cost-drive city-loc-2 city-loc-14 truck-2) 6468)
  (= (cost-drive city-loc-14 city-loc-3 truck-2) 9488)
  (= (cost-drive city-loc-3 city-loc-14 truck-2) 9738)
  (= (cost-drive city-loc-14 city-loc-5 truck-2) 8119)
  (= (cost-drive city-loc-5 city-loc-14 truck-2) 9216)
  (= (cost-drive city-loc-14 city-loc-6 truck-2) 1301)
  (= (cost-drive city-loc-6 city-loc-14 truck-2) 4316)
  (= (cost-drive city-loc-14 city-loc-7 truck-2) 2348)
  (= (cost-drive city-loc-7 city-loc-14 truck-2) 6098)
  (= (cost-drive city-loc-14 city-loc-13 truck-2) 8688)
  (= (cost-drive city-loc-13 city-loc-14 truck-2) 2122)
  (= (cost-drive city-loc-15 city-loc-3 truck-2) 8265)
  (= (cost-drive city-loc-3 city-loc-15 truck-2) 2924)
  (= (cost-drive city-loc-15 city-loc-5 truck-2) 1251)
  (= (cost-drive city-loc-5 city-loc-15 truck-2) 4870)
  (= (cost-drive city-loc-15 city-loc-6 truck-2) 5539)
  (= (cost-drive city-loc-6 city-loc-15 truck-2) 2164)
  (= (cost-drive city-loc-15 city-loc-10 truck-2) 6234)
  (= (cost-drive city-loc-10 city-loc-15 truck-2) 5310)
  (= (cost-drive city-loc-15 city-loc-11 truck-2) 9341)
  (= (cost-drive city-loc-11 city-loc-15 truck-2) 9291)
  (= (cost-drive city-loc-15 city-loc-13 truck-2) 9171)
  (= (cost-drive city-loc-13 city-loc-15 truck-2) 1209)
  (= (cost-drive city-loc-15 city-loc-14 truck-2) 3308)
  (= (cost-drive city-loc-14 city-loc-15 truck-2) 2748)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 347,149 -> 257,5
  (road city-loc-4 city-loc-1)
  ; 257,5 -> 347,149
  (road city-loc-1 city-loc-4)
  ; 347,149 -> 245,346
  (road city-loc-4 city-loc-2)
  ; 245,346 -> 347,149
  (road city-loc-2 city-loc-4)
  ; 336,475 -> 245,346
  (road city-loc-5 city-loc-2)
  ; 245,346 -> 336,475
  (road city-loc-2 city-loc-5)
  ; 336,475 -> 559,565
  (road city-loc-5 city-loc-3)
  ; 559,565 -> 336,475
  (road city-loc-3 city-loc-5)
  ; 170,709 -> 336,475
  (road city-loc-6 city-loc-5)
  ; 336,475 -> 170,709
  (road city-loc-5 city-loc-6)
  ; 521,375 -> 245,346
  (road city-loc-7 city-loc-2)
  ; 245,346 -> 521,375
  (road city-loc-2 city-loc-7)
  ; 521,375 -> 559,565
  (road city-loc-7 city-loc-3)
  ; 559,565 -> 521,375
  (road city-loc-3 city-loc-7)
  ; 521,375 -> 347,149
  (road city-loc-7 city-loc-4)
  ; 347,149 -> 521,375
  (road city-loc-4 city-loc-7)
  ; 521,375 -> 336,475
  (road city-loc-7 city-loc-5)
  ; 336,475 -> 521,375
  (road city-loc-5 city-loc-7)
  ; 720,241 -> 521,375
  (road city-loc-9 city-loc-7)
  ; 521,375 -> 720,241
  (road city-loc-7 city-loc-9)
  ; 720,241 -> 701,0
  (road city-loc-9 city-loc-8)
  ; 701,0 -> 720,241
  (road city-loc-8 city-loc-9)
  ; 630,722 -> 559,565
  (road city-loc-10 city-loc-3)
  ; 559,565 -> 630,722
  (road city-loc-3 city-loc-10)
  ; 120,854 -> 170,709
  (road city-loc-11 city-loc-6)
  ; 170,709 -> 120,854
  (road city-loc-6 city-loc-11)
  ; 377,283 -> 245,346
  (road city-loc-12 city-loc-2)
  ; 245,346 -> 377,283
  (road city-loc-2 city-loc-12)
  ; 377,283 -> 347,149
  (road city-loc-12 city-loc-4)
  ; 347,149 -> 377,283
  (road city-loc-4 city-loc-12)
  ; 377,283 -> 336,475
  (road city-loc-12 city-loc-5)
  ; 336,475 -> 377,283
  (road city-loc-5 city-loc-12)
  ; 377,283 -> 521,375
  (road city-loc-12 city-loc-7)
  ; 521,375 -> 377,283
  (road city-loc-7 city-loc-12)
  ; 171,545 -> 245,346
  (road city-loc-13 city-loc-2)
  ; 245,346 -> 171,545
  (road city-loc-2 city-loc-13)
  ; 171,545 -> 336,475
  (road city-loc-13 city-loc-5)
  ; 336,475 -> 171,545
  (road city-loc-5 city-loc-13)
  ; 171,545 -> 170,709
  (road city-loc-13 city-loc-6)
  ; 170,709 -> 171,545
  (road city-loc-6 city-loc-13)
  ; 348,607 -> 245,346
  (road city-loc-14 city-loc-2)
  ; 245,346 -> 348,607
  (road city-loc-2 city-loc-14)
  ; 348,607 -> 559,565
  (road city-loc-14 city-loc-3)
  ; 559,565 -> 348,607
  (road city-loc-3 city-loc-14)
  ; 348,607 -> 336,475
  (road city-loc-14 city-loc-5)
  ; 336,475 -> 348,607
  (road city-loc-5 city-loc-14)
  ; 348,607 -> 170,709
  (road city-loc-14 city-loc-6)
  ; 170,709 -> 348,607
  (road city-loc-6 city-loc-14)
  ; 348,607 -> 521,375
  (road city-loc-14 city-loc-7)
  ; 521,375 -> 348,607
  (road city-loc-7 city-loc-14)
  ; 348,607 -> 171,545
  (road city-loc-14 city-loc-13)
  ; 171,545 -> 348,607
  (road city-loc-13 city-loc-14)
  ; 395,741 -> 559,565
  (road city-loc-15 city-loc-3)
  ; 559,565 -> 395,741
  (road city-loc-3 city-loc-15)
  ; 395,741 -> 336,475
  (road city-loc-15 city-loc-5)
  ; 336,475 -> 395,741
  (road city-loc-5 city-loc-15)
  ; 395,741 -> 170,709
  (road city-loc-15 city-loc-6)
  ; 170,709 -> 395,741
  (road city-loc-6 city-loc-15)
  ; 395,741 -> 630,722
  (road city-loc-15 city-loc-10)
  ; 630,722 -> 395,741
  (road city-loc-10 city-loc-15)
  ; 395,741 -> 120,854
  (road city-loc-15 city-loc-11)
  ; 120,854 -> 395,741
  (road city-loc-11 city-loc-15)
  ; 395,741 -> 171,545
  (road city-loc-15 city-loc-13)
  ; 171,545 -> 395,741
  (road city-loc-13 city-loc-15)
  ; 395,741 -> 348,607
  (road city-loc-15 city-loc-14)
  ; 348,607 -> 395,741
  (road city-loc-14 city-loc-15)
  (at package-1 city-loc-10)
  (at package-2 city-loc-11)
  (at package-3 city-loc-5)
  (at package-4 city-loc-9)
  (at package-5 city-loc-6)
  (at package-6 city-loc-4)
  (at truck-1 city-loc-12)
  (capacity truck-1 capacity-3)
  (at truck-2 city-loc-5)
  (capacity truck-2 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-13)
  (at package-2 city-loc-3)
  (at package-3 city-loc-2)
  (at package-4 city-loc-8)
  (at package-5 city-loc-4)
  (at package-6 city-loc-15)
 ))
 (:metric minimize (total-cost))
)
