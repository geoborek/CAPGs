; Transport three-cities-sequential-10nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed

(define (problem transport-three-cities-sequential-10nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed)
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
  city-1-loc-10 - location
  city-2-loc-10 - location
  city-3-loc-10 - location
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
  (= (base-drive city-1-loc-7 city-1-loc-5) 43)
  (= (base-drive city-1-loc-5 city-1-loc-7) 43)
  (= (base-drive city-1-loc-8 city-1-loc-1) 41)
  (= (base-drive city-1-loc-1 city-1-loc-8) 41)
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
  (= (base-drive city-1-loc-10 city-1-loc-4) 43)
  (= (base-drive city-1-loc-4 city-1-loc-10) 43)
  (= (base-drive city-1-loc-10 city-1-loc-6) 35)
  (= (base-drive city-1-loc-6 city-1-loc-10) 35)
  (= (base-drive city-1-loc-10 city-1-loc-7) 18)
  (= (base-drive city-1-loc-7 city-1-loc-10) 18)
  (= (base-drive city-1-loc-10 city-1-loc-8) 24)
  (= (base-drive city-1-loc-8 city-1-loc-10) 24)
  (= (base-drive city-1-loc-10 city-1-loc-9) 32)
  (= (base-drive city-1-loc-9 city-1-loc-10) 32)
  (= (base-drive city-2-loc-3 city-2-loc-1) 26)
  (= (base-drive city-2-loc-1 city-2-loc-3) 26)
  (= (base-drive city-2-loc-4 city-2-loc-1) 20)
  (= (base-drive city-2-loc-1 city-2-loc-4) 20)
  (= (base-drive city-2-loc-4 city-2-loc-3) 39)
  (= (base-drive city-2-loc-3 city-2-loc-4) 39)
  (= (base-drive city-2-loc-5 city-2-loc-2) 11)
  (= (base-drive city-2-loc-2 city-2-loc-5) 11)
  (= (base-drive city-2-loc-6 city-2-loc-1) 27)
  (= (base-drive city-2-loc-1 city-2-loc-6) 27)
  (= (base-drive city-2-loc-6 city-2-loc-4) 38)
  (= (base-drive city-2-loc-4 city-2-loc-6) 38)
  (= (base-drive city-2-loc-7 city-2-loc-2) 26)
  (= (base-drive city-2-loc-2 city-2-loc-7) 26)
  (= (base-drive city-2-loc-7 city-2-loc-5) 26)
  (= (base-drive city-2-loc-5 city-2-loc-7) 26)
  (= (base-drive city-2-loc-8 city-2-loc-2) 28)
  (= (base-drive city-2-loc-2 city-2-loc-8) 28)
  (= (base-drive city-2-loc-8 city-2-loc-5) 38)
  (= (base-drive city-2-loc-5 city-2-loc-8) 38)
  (= (base-drive city-2-loc-8 city-2-loc-7) 35)
  (= (base-drive city-2-loc-7 city-2-loc-8) 35)
  (= (base-drive city-2-loc-9 city-2-loc-1) 20)
  (= (base-drive city-2-loc-1 city-2-loc-9) 20)
  (= (base-drive city-2-loc-9 city-2-loc-3) 36)
  (= (base-drive city-2-loc-3 city-2-loc-9) 36)
  (= (base-drive city-2-loc-9 city-2-loc-4) 36)
  (= (base-drive city-2-loc-4 city-2-loc-9) 36)
  (= (base-drive city-2-loc-9 city-2-loc-6) 13)
  (= (base-drive city-2-loc-6 city-2-loc-9) 13)
  (= (base-drive city-2-loc-9 city-2-loc-8) 39)
  (= (base-drive city-2-loc-8 city-2-loc-9) 39)
  (= (base-drive city-2-loc-10 city-2-loc-2) 30)
  (= (base-drive city-2-loc-2 city-2-loc-10) 30)
  (= (base-drive city-2-loc-10 city-2-loc-5) 36)
  (= (base-drive city-2-loc-5 city-2-loc-10) 36)
  (= (base-drive city-2-loc-10 city-2-loc-7) 17)
  (= (base-drive city-2-loc-7 city-2-loc-10) 17)
  (= (base-drive city-2-loc-10 city-2-loc-8) 23)
  (= (base-drive city-2-loc-8 city-2-loc-10) 23)
  (= (base-drive city-3-loc-2 city-3-loc-1) 29)
  (= (base-drive city-3-loc-1 city-3-loc-2) 29)
  (= (base-drive city-3-loc-3 city-3-loc-1) 21)
  (= (base-drive city-3-loc-1 city-3-loc-3) 21)
  (= (base-drive city-3-loc-4 city-3-loc-3) 42)
  (= (base-drive city-3-loc-3 city-3-loc-4) 42)
  (= (base-drive city-3-loc-5 city-3-loc-1) 24)
  (= (base-drive city-3-loc-1 city-3-loc-5) 24)
  (= (base-drive city-3-loc-5 city-3-loc-3) 25)
  (= (base-drive city-3-loc-3 city-3-loc-5) 25)
  (= (base-drive city-3-loc-6 city-3-loc-3) 24)
  (= (base-drive city-3-loc-3 city-3-loc-6) 24)
  (= (base-drive city-3-loc-6 city-3-loc-4) 25)
  (= (base-drive city-3-loc-4 city-3-loc-6) 25)
  (= (base-drive city-3-loc-6 city-3-loc-5) 41)
  (= (base-drive city-3-loc-5 city-3-loc-6) 41)
  (= (base-drive city-3-loc-7 city-3-loc-1) 39)
  (= (base-drive city-3-loc-1 city-3-loc-7) 39)
  (= (base-drive city-3-loc-7 city-3-loc-3) 37)
  (= (base-drive city-3-loc-3 city-3-loc-7) 37)
  (= (base-drive city-3-loc-8 city-3-loc-2) 16)
  (= (base-drive city-3-loc-2 city-3-loc-8) 16)
  (= (base-drive city-3-loc-9 city-3-loc-1) 18)
  (= (base-drive city-3-loc-1 city-3-loc-9) 18)
  (= (base-drive city-3-loc-9 city-3-loc-2) 17)
  (= (base-drive city-3-loc-2 city-3-loc-9) 17)
  (= (base-drive city-3-loc-9 city-3-loc-3) 39)
  (= (base-drive city-3-loc-3 city-3-loc-9) 39)
  (= (base-drive city-3-loc-9 city-3-loc-5) 34)
  (= (base-drive city-3-loc-5 city-3-loc-9) 34)
  (= (base-drive city-3-loc-9 city-3-loc-8) 32)
  (= (base-drive city-3-loc-8 city-3-loc-9) 32)
  (= (base-drive city-3-loc-10 city-3-loc-1) 14)
  (= (base-drive city-3-loc-1 city-3-loc-10) 14)
  (= (base-drive city-3-loc-10 city-3-loc-2) 21)
  (= (base-drive city-3-loc-2 city-3-loc-10) 21)
  (= (base-drive city-3-loc-10 city-3-loc-3) 29)
  (= (base-drive city-3-loc-3 city-3-loc-10) 29)
  (= (base-drive city-3-loc-10 city-3-loc-5) 38)
  (= (base-drive city-3-loc-5 city-3-loc-10) 38)
  (= (base-drive city-3-loc-10 city-3-loc-7) 31)
  (= (base-drive city-3-loc-7 city-3-loc-10) 31)
  (= (base-drive city-3-loc-10 city-3-loc-8) 34)
  (= (base-drive city-3-loc-8 city-3-loc-10) 34)
  (= (base-drive city-3-loc-10 city-3-loc-9) 19)
  (= (base-drive city-3-loc-9 city-3-loc-10) 19)
  (= (base-drive city-1-loc-1 city-2-loc-5) 122)
  (= (base-drive city-2-loc-5 city-1-loc-1) 122)
  (= (base-drive city-1-loc-10 city-3-loc-2) 154)
  (= (base-drive city-3-loc-2 city-1-loc-10) 154)
  (= (base-drive city-2-loc-2 city-3-loc-5) 163)
  (= (base-drive city-3-loc-5 city-2-loc-2) 163)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 9627)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 7670)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 3243)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 2985)
  (= (cost-drive city-1-loc-5 city-1-loc-1) 4379)
  (= (cost-drive city-1-loc-1 city-1-loc-5) 7507)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 9987)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 6289)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 4519)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 3053)
  (= (cost-drive city-1-loc-6 city-1-loc-3) 8730)
  (= (cost-drive city-1-loc-3 city-1-loc-6) 6451)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 1574)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 4712)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 7093)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 9873)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 5761)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 7422)
  (= (cost-drive city-1-loc-7 city-1-loc-5) 2375)
  (= (cost-drive city-1-loc-5 city-1-loc-7) 6158)
  (= (cost-drive city-1-loc-8 city-1-loc-1) 1505)
  (= (cost-drive city-1-loc-1 city-1-loc-8) 5168)
  (= (cost-drive city-1-loc-8 city-1-loc-4) 3994)
  (= (cost-drive city-1-loc-4 city-1-loc-8) 9663)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 1328)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 2302)
  (= (cost-drive city-1-loc-9 city-1-loc-2) 8894)
  (= (cost-drive city-1-loc-2 city-1-loc-9) 8176)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 8517)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 6020)
  (= (cost-drive city-1-loc-10 city-1-loc-1) 1827)
  (= (cost-drive city-1-loc-1 city-1-loc-10) 7934)
  (= (cost-drive city-1-loc-10 city-1-loc-3) 9291)
  (= (cost-drive city-1-loc-3 city-1-loc-10) 8390)
  (= (cost-drive city-1-loc-10 city-1-loc-4) 6525)
  (= (cost-drive city-1-loc-4 city-1-loc-10) 6173)
  (= (cost-drive city-1-loc-10 city-1-loc-6) 2589)
  (= (cost-drive city-1-loc-6 city-1-loc-10) 3334)
  (= (cost-drive city-1-loc-10 city-1-loc-7) 7890)
  (= (cost-drive city-1-loc-7 city-1-loc-10) 3742)
  (= (cost-drive city-1-loc-10 city-1-loc-8) 4502)
  (= (cost-drive city-1-loc-8 city-1-loc-10) 9176)
  (= (cost-drive city-1-loc-10 city-1-loc-9) 8769)
  (= (cost-drive city-1-loc-9 city-1-loc-10) 5330)
  (= (cost-drive city-2-loc-3 city-2-loc-1) 6387)
  (= (cost-drive city-2-loc-1 city-2-loc-3) 2966)
  (= (cost-drive city-2-loc-4 city-2-loc-1) 2226)
  (= (cost-drive city-2-loc-1 city-2-loc-4) 5150)
  (= (cost-drive city-2-loc-4 city-2-loc-3) 4871)
  (= (cost-drive city-2-loc-3 city-2-loc-4) 6563)
  (= (cost-drive city-2-loc-5 city-2-loc-2) 6282)
  (= (cost-drive city-2-loc-2 city-2-loc-5) 9850)
  (= (cost-drive city-2-loc-6 city-2-loc-1) 3834)
  (= (cost-drive city-2-loc-1 city-2-loc-6) 9184)
  (= (cost-drive city-2-loc-6 city-2-loc-4) 3933)
  (= (cost-drive city-2-loc-4 city-2-loc-6) 5915)
  (= (cost-drive city-2-loc-7 city-2-loc-2) 6208)
  (= (cost-drive city-2-loc-2 city-2-loc-7) 2721)
  (= (cost-drive city-2-loc-7 city-2-loc-5) 5589)
  (= (cost-drive city-2-loc-5 city-2-loc-7) 7113)
  (= (cost-drive city-2-loc-8 city-2-loc-2) 7558)
  (= (cost-drive city-2-loc-2 city-2-loc-8) 2351)
  (= (cost-drive city-2-loc-8 city-2-loc-5) 2390)
  (= (cost-drive city-2-loc-5 city-2-loc-8) 3834)
  (= (cost-drive city-2-loc-8 city-2-loc-7) 5305)
  (= (cost-drive city-2-loc-7 city-2-loc-8) 7657)
  (= (cost-drive city-2-loc-9 city-2-loc-1) 9231)
  (= (cost-drive city-2-loc-1 city-2-loc-9) 4238)
  (= (cost-drive city-2-loc-9 city-2-loc-3) 4494)
  (= (cost-drive city-2-loc-3 city-2-loc-9) 8555)
  (= (cost-drive city-2-loc-9 city-2-loc-4) 4043)
  (= (cost-drive city-2-loc-4 city-2-loc-9) 8548)
  (= (cost-drive city-2-loc-9 city-2-loc-6) 3898)
  (= (cost-drive city-2-loc-6 city-2-loc-9) 2284)
  (= (cost-drive city-2-loc-9 city-2-loc-8) 9896)
  (= (cost-drive city-2-loc-8 city-2-loc-9) 9427)
  (= (cost-drive city-2-loc-10 city-2-loc-2) 9624)
  (= (cost-drive city-2-loc-2 city-2-loc-10) 3992)
  (= (cost-drive city-2-loc-10 city-2-loc-5) 7968)
  (= (cost-drive city-2-loc-5 city-2-loc-10) 4486)
  (= (cost-drive city-2-loc-10 city-2-loc-7) 8640)
  (= (cost-drive city-2-loc-7 city-2-loc-10) 8324)
  (= (cost-drive city-2-loc-10 city-2-loc-8) 6365)
  (= (cost-drive city-2-loc-8 city-2-loc-10) 2150)
  (= (cost-drive city-3-loc-2 city-3-loc-1) 3736)
  (= (cost-drive city-3-loc-1 city-3-loc-2) 1056)
  (= (cost-drive city-3-loc-3 city-3-loc-1) 2624)
  (= (cost-drive city-3-loc-1 city-3-loc-3) 4595)
  (= (cost-drive city-3-loc-4 city-3-loc-3) 3922)
  (= (cost-drive city-3-loc-3 city-3-loc-4) 7046)
  (= (cost-drive city-3-loc-5 city-3-loc-1) 6391)
  (= (cost-drive city-3-loc-1 city-3-loc-5) 7917)
  (= (cost-drive city-3-loc-5 city-3-loc-3) 5268)
  (= (cost-drive city-3-loc-3 city-3-loc-5) 3680)
  (= (cost-drive city-3-loc-6 city-3-loc-3) 3283)
  (= (cost-drive city-3-loc-3 city-3-loc-6) 5751)
  (= (cost-drive city-3-loc-6 city-3-loc-4) 1831)
  (= (cost-drive city-3-loc-4 city-3-loc-6) 7875)
  (= (cost-drive city-3-loc-6 city-3-loc-5) 5216)
  (= (cost-drive city-3-loc-5 city-3-loc-6) 1221)
  (= (cost-drive city-3-loc-7 city-3-loc-1) 3036)
  (= (cost-drive city-3-loc-1 city-3-loc-7) 1031)
  (= (cost-drive city-3-loc-7 city-3-loc-3) 8478)
  (= (cost-drive city-3-loc-3 city-3-loc-7) 5675)
  (= (cost-drive city-3-loc-8 city-3-loc-2) 3158)
  (= (cost-drive city-3-loc-2 city-3-loc-8) 5090)
  (= (cost-drive city-3-loc-9 city-3-loc-1) 9415)
  (= (cost-drive city-3-loc-1 city-3-loc-9) 6025)
  (= (cost-drive city-3-loc-9 city-3-loc-2) 9794)
  (= (cost-drive city-3-loc-2 city-3-loc-9) 8691)
  (= (cost-drive city-3-loc-9 city-3-loc-3) 6222)
  (= (cost-drive city-3-loc-3 city-3-loc-9) 5739)
  (= (cost-drive city-3-loc-9 city-3-loc-5) 4432)
  (= (cost-drive city-3-loc-5 city-3-loc-9) 2545)
  (= (cost-drive city-3-loc-9 city-3-loc-8) 3799)
  (= (cost-drive city-3-loc-8 city-3-loc-9) 1574)
  (= (cost-drive city-3-loc-10 city-3-loc-1) 6016)
  (= (cost-drive city-3-loc-1 city-3-loc-10) 2573)
  (= (cost-drive city-3-loc-10 city-3-loc-2) 9276)
  (= (cost-drive city-3-loc-2 city-3-loc-10) 1264)
  (= (cost-drive city-3-loc-10 city-3-loc-3) 4176)
  (= (cost-drive city-3-loc-3 city-3-loc-10) 6711)
  (= (cost-drive city-3-loc-10 city-3-loc-5) 5541)
  (= (cost-drive city-3-loc-5 city-3-loc-10) 8697)
  (= (cost-drive city-3-loc-10 city-3-loc-7) 2355)
  (= (cost-drive city-3-loc-7 city-3-loc-10) 1490)
  (= (cost-drive city-3-loc-10 city-3-loc-8) 8463)
  (= (cost-drive city-3-loc-8 city-3-loc-10) 2892)
  (= (cost-drive city-3-loc-10 city-3-loc-9) 9419)
  (= (cost-drive city-3-loc-9 city-3-loc-10) 5610)
  (= (cost-drive city-1-loc-1 city-2-loc-5) 1680)
  (= (cost-drive city-2-loc-5 city-1-loc-1) 5426)
  (= (cost-drive city-1-loc-10 city-3-loc-2) 2267)
  (= (cost-drive city-3-loc-2 city-1-loc-10) 8853)
  (= (cost-drive city-2-loc-2 city-3-loc-5) 1852)
  (= (cost-drive city-3-loc-5 city-2-loc-2) 8307)
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
  ; 742,542 -> 977,899
  (road city-1-loc-7 city-1-loc-5)
  ; 977,899 -> 742,542
  (road city-1-loc-5 city-1-loc-7)
  ; 564,783 -> 890,543
  (road city-1-loc-8 city-1-loc-1)
  ; 890,543 -> 564,783
  (road city-1-loc-1 city-1-loc-8)
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
  ; 566,552 -> 912,799
  (road city-1-loc-10 city-1-loc-4)
  ; 912,799 -> 566,552
  (road city-1-loc-4 city-1-loc-10)
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
  ; 2362,862 -> 2589,754
  (road city-2-loc-3 city-2-loc-1)
  ; 2589,754 -> 2362,862
  (road city-2-loc-1 city-2-loc-3)
  ; 2748,863 -> 2589,754
  (road city-2-loc-4 city-2-loc-1)
  ; 2589,754 -> 2748,863
  (road city-2-loc-1 city-2-loc-4)
  ; 2748,863 -> 2362,862
  (road city-2-loc-4 city-2-loc-3)
  ; 2362,862 -> 2748,863
  (road city-2-loc-3 city-2-loc-4)
  ; 2006,60 -> 2053,153
  (road city-2-loc-5 city-2-loc-2)
  ; 2053,153 -> 2006,60
  (road city-2-loc-2 city-2-loc-5)
  ; 2659,497 -> 2589,754
  (road city-2-loc-6 city-2-loc-1)
  ; 2589,754 -> 2659,497
  (road city-2-loc-1 city-2-loc-6)
  ; 2659,497 -> 2748,863
  (road city-2-loc-6 city-2-loc-4)
  ; 2748,863 -> 2659,497
  (road city-2-loc-4 city-2-loc-6)
  ; 2257,5 -> 2053,153
  (road city-2-loc-7 city-2-loc-2)
  ; 2053,153 -> 2257,5
  (road city-2-loc-2 city-2-loc-7)
  ; 2257,5 -> 2006,60
  (road city-2-loc-7 city-2-loc-5)
  ; 2006,60 -> 2257,5
  (road city-2-loc-5 city-2-loc-7)
  ; 2245,346 -> 2053,153
  (road city-2-loc-8 city-2-loc-2)
  ; 2053,153 -> 2245,346
  (road city-2-loc-2 city-2-loc-8)
  ; 2245,346 -> 2006,60
  (road city-2-loc-8 city-2-loc-5)
  ; 2006,60 -> 2245,346
  (road city-2-loc-5 city-2-loc-8)
  ; 2245,346 -> 2257,5
  (road city-2-loc-8 city-2-loc-7)
  ; 2257,5 -> 2245,346
  (road city-2-loc-7 city-2-loc-8)
  ; 2559,565 -> 2589,754
  (road city-2-loc-9 city-2-loc-1)
  ; 2589,754 -> 2559,565
  (road city-2-loc-1 city-2-loc-9)
  ; 2559,565 -> 2362,862
  (road city-2-loc-9 city-2-loc-3)
  ; 2362,862 -> 2559,565
  (road city-2-loc-3 city-2-loc-9)
  ; 2559,565 -> 2748,863
  (road city-2-loc-9 city-2-loc-4)
  ; 2748,863 -> 2559,565
  (road city-2-loc-4 city-2-loc-9)
  ; 2559,565 -> 2659,497
  (road city-2-loc-9 city-2-loc-6)
  ; 2659,497 -> 2559,565
  (road city-2-loc-6 city-2-loc-9)
  ; 2559,565 -> 2245,346
  (road city-2-loc-9 city-2-loc-8)
  ; 2245,346 -> 2559,565
  (road city-2-loc-8 city-2-loc-9)
  ; 2347,149 -> 2053,153
  (road city-2-loc-10 city-2-loc-2)
  ; 2053,153 -> 2347,149
  (road city-2-loc-2 city-2-loc-10)
  ; 2347,149 -> 2006,60
  (road city-2-loc-10 city-2-loc-5)
  ; 2006,60 -> 2347,149
  (road city-2-loc-5 city-2-loc-10)
  ; 2347,149 -> 2257,5
  (road city-2-loc-10 city-2-loc-7)
  ; 2257,5 -> 2347,149
  (road city-2-loc-7 city-2-loc-10)
  ; 2347,149 -> 2245,346
  (road city-2-loc-10 city-2-loc-8)
  ; 2245,346 -> 2347,149
  (road city-2-loc-8 city-2-loc-10)
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-2 city-3-loc-1)
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-1 city-3-loc-2)
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-3 city-3-loc-1)
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-1 city-3-loc-3)
  ; 1701,2000 -> 1521,2375
  (road city-3-loc-4 city-3-loc-3)
  ; 1521,2375 -> 1701,2000
  (road city-3-loc-3 city-3-loc-4)
  ; 1316,2237 -> 1336,2475
  (road city-3-loc-5 city-3-loc-1)
  ; 1336,2475 -> 1316,2237
  (road city-3-loc-1 city-3-loc-5)
  ; 1316,2237 -> 1521,2375
  (road city-3-loc-5 city-3-loc-3)
  ; 1521,2375 -> 1316,2237
  (road city-3-loc-3 city-3-loc-5)
  ; 1720,2241 -> 1521,2375
  (road city-3-loc-6 city-3-loc-3)
  ; 1521,2375 -> 1720,2241
  (road city-3-loc-3 city-3-loc-6)
  ; 1720,2241 -> 1701,2000
  (road city-3-loc-6 city-3-loc-4)
  ; 1701,2000 -> 1720,2241
  (road city-3-loc-4 city-3-loc-6)
  ; 1720,2241 -> 1316,2237
  (road city-3-loc-6 city-3-loc-5)
  ; 1316,2237 -> 1720,2241
  (road city-3-loc-5 city-3-loc-6)
  ; 1630,2722 -> 1336,2475
  (road city-3-loc-7 city-3-loc-1)
  ; 1336,2475 -> 1630,2722
  (road city-3-loc-1 city-3-loc-7)
  ; 1630,2722 -> 1521,2375
  (road city-3-loc-7 city-3-loc-3)
  ; 1521,2375 -> 1630,2722
  (road city-3-loc-3 city-3-loc-7)
  ; 1120,2854 -> 1170,2709
  (road city-3-loc-8 city-3-loc-2)
  ; 1170,2709 -> 1120,2854
  (road city-3-loc-2 city-3-loc-8)
  ; 1171,2545 -> 1336,2475
  (road city-3-loc-9 city-3-loc-1)
  ; 1336,2475 -> 1171,2545
  (road city-3-loc-1 city-3-loc-9)
  ; 1171,2545 -> 1170,2709
  (road city-3-loc-9 city-3-loc-2)
  ; 1170,2709 -> 1171,2545
  (road city-3-loc-2 city-3-loc-9)
  ; 1171,2545 -> 1521,2375
  (road city-3-loc-9 city-3-loc-3)
  ; 1521,2375 -> 1171,2545
  (road city-3-loc-3 city-3-loc-9)
  ; 1171,2545 -> 1316,2237
  (road city-3-loc-9 city-3-loc-5)
  ; 1316,2237 -> 1171,2545
  (road city-3-loc-5 city-3-loc-9)
  ; 1171,2545 -> 1120,2854
  (road city-3-loc-9 city-3-loc-8)
  ; 1120,2854 -> 1171,2545
  (road city-3-loc-8 city-3-loc-9)
  ; 1348,2607 -> 1336,2475
  (road city-3-loc-10 city-3-loc-1)
  ; 1336,2475 -> 1348,2607
  (road city-3-loc-1 city-3-loc-10)
  ; 1348,2607 -> 1170,2709
  (road city-3-loc-10 city-3-loc-2)
  ; 1170,2709 -> 1348,2607
  (road city-3-loc-2 city-3-loc-10)
  ; 1348,2607 -> 1521,2375
  (road city-3-loc-10 city-3-loc-3)
  ; 1521,2375 -> 1348,2607
  (road city-3-loc-3 city-3-loc-10)
  ; 1348,2607 -> 1316,2237
  (road city-3-loc-10 city-3-loc-5)
  ; 1316,2237 -> 1348,2607
  (road city-3-loc-5 city-3-loc-10)
  ; 1348,2607 -> 1630,2722
  (road city-3-loc-10 city-3-loc-7)
  ; 1630,2722 -> 1348,2607
  (road city-3-loc-7 city-3-loc-10)
  ; 1348,2607 -> 1120,2854
  (road city-3-loc-10 city-3-loc-8)
  ; 1120,2854 -> 1348,2607
  (road city-3-loc-8 city-3-loc-10)
  ; 1348,2607 -> 1171,2545
  (road city-3-loc-10 city-3-loc-9)
  ; 1171,2545 -> 1348,2607
  (road city-3-loc-9 city-3-loc-10)
  ; 890,543 <-> 2006,60
  (road city-1-loc-1 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-1)
  (road city-1-loc-10 city-3-loc-2)
  (road city-3-loc-2 city-1-loc-10)
  (road city-2-loc-2 city-3-loc-5)
  (road city-3-loc-5 city-2-loc-2)
  (at package-1 city-2-loc-8)
  (at package-2 city-2-loc-7)
  (at package-3 city-1-loc-6)
  (at package-4 city-2-loc-3)
  (at package-5 city-2-loc-8)
  (at package-6 city-1-loc-3)
  (at package-7 city-3-loc-2)
  (at package-8 city-1-loc-6)
  (at package-9 city-1-loc-10)
  (at package-10 city-1-loc-7)
  (at package-11 city-2-loc-3)
  (at truck-1 city-3-loc-9)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-4)
  (capacity truck-2 capacity-3)
  (at truck-3 city-1-loc-9)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-3-loc-9)
  (at package-2 city-1-loc-4)
  (at package-3 city-2-loc-5)
  (at package-4 city-3-loc-9)
  (at package-5 city-1-loc-7)
  (at package-6 city-3-loc-7)
  (at package-7 city-2-loc-10)
  (at package-8 city-1-loc-2)
  (at package-9 city-2-loc-7)
  (at package-10 city-3-loc-5)
  (at package-11 city-2-loc-10)
 ))
 (:metric minimize (total-cost))
)
