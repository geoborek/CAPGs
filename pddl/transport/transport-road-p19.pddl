; Transport two-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed

(define (problem transport-two-cities-sequential-18nodes-1000size-4degree-100mindistance-3trucks-10packages-2008seed)
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
  city-1-loc-17 - location
  city-2-loc-17 - location
  city-1-loc-18 - location
  city-2-loc-18 - location
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
  (= (base-drive city-1-loc-5 city-1-loc-4) 12)
  (= (base-drive city-1-loc-4 city-1-loc-5) 12)
  (= (base-drive city-1-loc-6 city-1-loc-2) 19)
  (= (base-drive city-1-loc-2 city-1-loc-6) 19)
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
  (= (base-drive city-1-loc-14 city-1-loc-4) 13)
  (= (base-drive city-1-loc-4 city-1-loc-14) 13)
  (= (base-drive city-1-loc-14 city-1-loc-5) 18)
  (= (base-drive city-1-loc-5 city-1-loc-14) 18)
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
  (= (base-drive city-1-loc-17 city-1-loc-8) 16)
  (= (base-drive city-1-loc-8 city-1-loc-17) 16)
  (= (base-drive city-1-loc-17 city-1-loc-10) 21)
  (= (base-drive city-1-loc-10 city-1-loc-17) 21)
  (= (base-drive city-1-loc-17 city-1-loc-11) 26)
  (= (base-drive city-1-loc-11 city-1-loc-17) 26)
  (= (base-drive city-1-loc-17 city-1-loc-15) 22)
  (= (base-drive city-1-loc-15 city-1-loc-17) 22)
  (= (base-drive city-1-loc-17 city-1-loc-16) 31)
  (= (base-drive city-1-loc-16 city-1-loc-17) 31)
  (= (base-drive city-1-loc-18 city-1-loc-9) 25)
  (= (base-drive city-1-loc-9 city-1-loc-18) 25)
  (= (base-drive city-1-loc-18 city-1-loc-11) 31)
  (= (base-drive city-1-loc-11 city-1-loc-18) 31)
  (= (base-drive city-1-loc-18 city-1-loc-13) 24)
  (= (base-drive city-1-loc-13 city-1-loc-18) 24)
  (= (base-drive city-1-loc-18 city-1-loc-15) 31)
  (= (base-drive city-1-loc-15 city-1-loc-18) 31)
  (= (base-drive city-2-loc-4 city-2-loc-1) 16)
  (= (base-drive city-2-loc-1 city-2-loc-4) 16)
  (= (base-drive city-2-loc-6 city-2-loc-3) 17)
  (= (base-drive city-2-loc-3 city-2-loc-6) 17)
  (= (base-drive city-2-loc-6 city-2-loc-5) 29)
  (= (base-drive city-2-loc-5 city-2-loc-6) 29)
  (= (base-drive city-2-loc-7 city-2-loc-1) 29)
  (= (base-drive city-2-loc-1 city-2-loc-7) 29)
  (= (base-drive city-2-loc-7 city-2-loc-3) 31)
  (= (base-drive city-2-loc-3 city-2-loc-7) 31)
  (= (base-drive city-2-loc-7 city-2-loc-4) 14)
  (= (base-drive city-2-loc-4 city-2-loc-7) 14)
  (= (base-drive city-2-loc-8 city-2-loc-1) 28)
  (= (base-drive city-2-loc-1 city-2-loc-8) 28)
  (= (base-drive city-2-loc-8 city-2-loc-3) 12)
  (= (base-drive city-2-loc-3 city-2-loc-8) 12)
  (= (base-drive city-2-loc-8 city-2-loc-4) 29)
  (= (base-drive city-2-loc-4 city-2-loc-8) 29)
  (= (base-drive city-2-loc-8 city-2-loc-6) 27)
  (= (base-drive city-2-loc-6 city-2-loc-8) 27)
  (= (base-drive city-2-loc-8 city-2-loc-7) 29)
  (= (base-drive city-2-loc-7 city-2-loc-8) 29)
  (= (base-drive city-2-loc-9 city-2-loc-2) 20)
  (= (base-drive city-2-loc-2 city-2-loc-9) 20)
  (= (base-drive city-2-loc-10 city-2-loc-2) 20)
  (= (base-drive city-2-loc-2 city-2-loc-10) 20)
  (= (base-drive city-2-loc-10 city-2-loc-6) 30)
  (= (base-drive city-2-loc-6 city-2-loc-10) 30)
  (= (base-drive city-2-loc-10 city-2-loc-9) 21)
  (= (base-drive city-2-loc-9 city-2-loc-10) 21)
  (= (base-drive city-2-loc-11 city-2-loc-9) 21)
  (= (base-drive city-2-loc-9 city-2-loc-11) 21)
  (= (base-drive city-2-loc-11 city-2-loc-10) 23)
  (= (base-drive city-2-loc-10 city-2-loc-11) 23)
  (= (base-drive city-2-loc-12 city-2-loc-2) 30)
  (= (base-drive city-2-loc-2 city-2-loc-12) 30)
  (= (base-drive city-2-loc-13 city-2-loc-2) 22)
  (= (base-drive city-2-loc-2 city-2-loc-13) 22)
  (= (base-drive city-2-loc-13 city-2-loc-3) 17)
  (= (base-drive city-2-loc-3 city-2-loc-13) 17)
  (= (base-drive city-2-loc-13 city-2-loc-6) 19)
  (= (base-drive city-2-loc-6 city-2-loc-13) 19)
  (= (base-drive city-2-loc-13 city-2-loc-7) 32)
  (= (base-drive city-2-loc-7 city-2-loc-13) 32)
  (= (base-drive city-2-loc-13 city-2-loc-8) 28)
  (= (base-drive city-2-loc-8 city-2-loc-13) 28)
  (= (base-drive city-2-loc-13 city-2-loc-10) 31)
  (= (base-drive city-2-loc-10 city-2-loc-13) 31)
  (= (base-drive city-2-loc-14 city-2-loc-2) 25)
  (= (base-drive city-2-loc-2 city-2-loc-14) 25)
  (= (base-drive city-2-loc-14 city-2-loc-3) 30)
  (= (base-drive city-2-loc-3 city-2-loc-14) 30)
  (= (base-drive city-2-loc-14 city-2-loc-7) 24)
  (= (base-drive city-2-loc-7 city-2-loc-14) 24)
  (= (base-drive city-2-loc-14 city-2-loc-12) 22)
  (= (base-drive city-2-loc-12 city-2-loc-14) 22)
  (= (base-drive city-2-loc-14 city-2-loc-13) 18)
  (= (base-drive city-2-loc-13 city-2-loc-14) 18)
  (= (base-drive city-2-loc-15 city-2-loc-2) 24)
  (= (base-drive city-2-loc-2 city-2-loc-15) 24)
  (= (base-drive city-2-loc-15 city-2-loc-3) 32)
  (= (base-drive city-2-loc-3 city-2-loc-15) 32)
  (= (base-drive city-2-loc-15 city-2-loc-5) 31)
  (= (base-drive city-2-loc-5 city-2-loc-15) 31)
  (= (base-drive city-2-loc-15 city-2-loc-6) 18)
  (= (base-drive city-2-loc-6 city-2-loc-15) 18)
  (= (base-drive city-2-loc-15 city-2-loc-10) 13)
  (= (base-drive city-2-loc-10 city-2-loc-15) 13)
  (= (base-drive city-2-loc-15 city-2-loc-13) 24)
  (= (base-drive city-2-loc-13 city-2-loc-15) 24)
  (= (base-drive city-2-loc-16 city-2-loc-3) 16)
  (= (base-drive city-2-loc-3 city-2-loc-16) 16)
  (= (base-drive city-2-loc-16 city-2-loc-6) 20)
  (= (base-drive city-2-loc-6 city-2-loc-16) 20)
  (= (base-drive city-2-loc-16 city-2-loc-8) 16)
  (= (base-drive city-2-loc-8 city-2-loc-16) 16)
  (= (base-drive city-2-loc-16 city-2-loc-13) 31)
  (= (base-drive city-2-loc-13 city-2-loc-16) 31)
  (= (base-drive city-2-loc-17 city-2-loc-5) 15)
  (= (base-drive city-2-loc-5 city-2-loc-17) 15)
  (= (base-drive city-2-loc-17 city-2-loc-6) 19)
  (= (base-drive city-2-loc-6 city-2-loc-17) 19)
  (= (base-drive city-2-loc-17 city-2-loc-10) 27)
  (= (base-drive city-2-loc-10 city-2-loc-17) 27)
  (= (base-drive city-2-loc-17 city-2-loc-15) 17)
  (= (base-drive city-2-loc-15 city-2-loc-17) 17)
  (= (base-drive city-2-loc-18 city-2-loc-1) 15)
  (= (base-drive city-2-loc-1 city-2-loc-18) 15)
  (= (base-drive city-2-loc-18 city-2-loc-4) 28)
  (= (base-drive city-2-loc-4 city-2-loc-18) 28)
  (= (base-drive city-2-loc-18 city-2-loc-8) 23)
  (= (base-drive city-2-loc-8 city-2-loc-18) 23)
  (= (base-drive city-1-loc-12 city-2-loc-5) 128)
  (= (base-drive city-2-loc-5 city-1-loc-12) 128)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 4564)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 1745)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 9315)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 9527)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 5661)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 6716)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 4425)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 7548)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 4667)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 2075)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 2320)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 8769)
  (= (cost-drive city-1-loc-7 city-1-loc-4) 1309)
  (= (cost-drive city-1-loc-4 city-1-loc-7) 8008)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 8356)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 6352)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 2005)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 1783)
  (= (cost-drive city-1-loc-10 city-1-loc-3) 7635)
  (= (cost-drive city-1-loc-3 city-1-loc-10) 5642)
  (= (cost-drive city-1-loc-10 city-1-loc-7) 2259)
  (= (cost-drive city-1-loc-7 city-1-loc-10) 6767)
  (= (cost-drive city-1-loc-10 city-1-loc-8) 6061)
  (= (cost-drive city-1-loc-8 city-1-loc-10) 9523)
  (= (cost-drive city-1-loc-10 city-1-loc-9) 2702)
  (= (cost-drive city-1-loc-9 city-1-loc-10) 1443)
  (= (cost-drive city-1-loc-11 city-1-loc-9) 7281)
  (= (cost-drive city-1-loc-9 city-1-loc-11) 9144)
  (= (cost-drive city-1-loc-12 city-1-loc-1) 2338)
  (= (cost-drive city-1-loc-1 city-1-loc-12) 7401)
  (= (cost-drive city-1-loc-12 city-1-loc-3) 5875)
  (= (cost-drive city-1-loc-3 city-1-loc-12) 1639)
  (= (cost-drive city-1-loc-13 city-1-loc-9) 4659)
  (= (cost-drive city-1-loc-9 city-1-loc-13) 6686)
  (= (cost-drive city-1-loc-13 city-1-loc-11) 8487)
  (= (cost-drive city-1-loc-11 city-1-loc-13) 9717)
  (= (cost-drive city-1-loc-14 city-1-loc-4) 3604)
  (= (cost-drive city-1-loc-4 city-1-loc-14) 4507)
  (= (cost-drive city-1-loc-14 city-1-loc-5) 7095)
  (= (cost-drive city-1-loc-5 city-1-loc-14) 3185)
  (= (cost-drive city-1-loc-14 city-1-loc-8) 1407)
  (= (cost-drive city-1-loc-8 city-1-loc-14) 7324)
  (= (cost-drive city-1-loc-15 city-1-loc-9) 3724)
  (= (cost-drive city-1-loc-9 city-1-loc-15) 5973)
  (= (cost-drive city-1-loc-15 city-1-loc-10) 1836)
  (= (cost-drive city-1-loc-10 city-1-loc-15) 7631)
  (= (cost-drive city-1-loc-15 city-1-loc-11) 4548)
  (= (cost-drive city-1-loc-11 city-1-loc-15) 2959)
  (= (cost-drive city-1-loc-15 city-1-loc-13) 8938)
  (= (cost-drive city-1-loc-13 city-1-loc-15) 8312)
  (= (cost-drive city-1-loc-16 city-1-loc-11) 9306)
  (= (cost-drive city-1-loc-11 city-1-loc-16) 9839)
  (= (cost-drive city-1-loc-16 city-1-loc-13) 8544)
  (= (cost-drive city-1-loc-13 city-1-loc-16) 7510)
  (= (cost-drive city-1-loc-16 city-1-loc-15) 9766)
  (= (cost-drive city-1-loc-15 city-1-loc-16) 9096)
  (= (cost-drive city-1-loc-17 city-1-loc-8) 1517)
  (= (cost-drive city-1-loc-8 city-1-loc-17) 9598)
  (= (cost-drive city-1-loc-17 city-1-loc-10) 7200)
  (= (cost-drive city-1-loc-10 city-1-loc-17) 5643)
  (= (cost-drive city-1-loc-17 city-1-loc-11) 2382)
  (= (cost-drive city-1-loc-11 city-1-loc-17) 3865)
  (= (cost-drive city-1-loc-17 city-1-loc-15) 9875)
  (= (cost-drive city-1-loc-15 city-1-loc-17) 1328)
  (= (cost-drive city-1-loc-17 city-1-loc-16) 7183)
  (= (cost-drive city-1-loc-16 city-1-loc-17) 8859)
  (= (cost-drive city-1-loc-18 city-1-loc-9) 9511)
  (= (cost-drive city-1-loc-9 city-1-loc-18) 8394)
  (= (cost-drive city-1-loc-18 city-1-loc-11) 7026)
  (= (cost-drive city-1-loc-11 city-1-loc-18) 1078)
  (= (cost-drive city-1-loc-18 city-1-loc-13) 9755)
  (= (cost-drive city-1-loc-13 city-1-loc-18) 7040)
  (= (cost-drive city-1-loc-18 city-1-loc-15) 9635)
  (= (cost-drive city-1-loc-15 city-1-loc-18) 1984)
  (= (cost-drive city-2-loc-4 city-2-loc-1) 2268)
  (= (cost-drive city-2-loc-1 city-2-loc-4) 3129)
  (= (cost-drive city-2-loc-6 city-2-loc-3) 4952)
  (= (cost-drive city-2-loc-3 city-2-loc-6) 1076)
  (= (cost-drive city-2-loc-6 city-2-loc-5) 7757)
  (= (cost-drive city-2-loc-5 city-2-loc-6) 1461)
  (= (cost-drive city-2-loc-7 city-2-loc-1) 7113)
  (= (cost-drive city-2-loc-1 city-2-loc-7) 3133)
  (= (cost-drive city-2-loc-7 city-2-loc-3) 1458)
  (= (cost-drive city-2-loc-3 city-2-loc-7) 1386)
  (= (cost-drive city-2-loc-7 city-2-loc-4) 7417)
  (= (cost-drive city-2-loc-4 city-2-loc-7) 9195)
  (= (cost-drive city-2-loc-8 city-2-loc-1) 7575)
  (= (cost-drive city-2-loc-1 city-2-loc-8) 4247)
  (= (cost-drive city-2-loc-8 city-2-loc-3) 2360)
  (= (cost-drive city-2-loc-3 city-2-loc-8) 4914)
  (= (cost-drive city-2-loc-8 city-2-loc-4) 3398)
  (= (cost-drive city-2-loc-4 city-2-loc-8) 6541)
  (= (cost-drive city-2-loc-8 city-2-loc-6) 4279)
  (= (cost-drive city-2-loc-6 city-2-loc-8) 8831)
  (= (cost-drive city-2-loc-8 city-2-loc-7) 8235)
  (= (cost-drive city-2-loc-7 city-2-loc-8) 4096)
  (= (cost-drive city-2-loc-9 city-2-loc-2) 5896)
  (= (cost-drive city-2-loc-2 city-2-loc-9) 8181)
  (= (cost-drive city-2-loc-10 city-2-loc-2) 8018)
  (= (cost-drive city-2-loc-2 city-2-loc-10) 7318)
  (= (cost-drive city-2-loc-10 city-2-loc-6) 7756)
  (= (cost-drive city-2-loc-6 city-2-loc-10) 1573)
  (= (cost-drive city-2-loc-10 city-2-loc-9) 2569)
  (= (cost-drive city-2-loc-9 city-2-loc-10) 3251)
  (= (cost-drive city-2-loc-11 city-2-loc-9) 1107)
  (= (cost-drive city-2-loc-9 city-2-loc-11) 3066)
  (= (cost-drive city-2-loc-11 city-2-loc-10) 5033)
  (= (cost-drive city-2-loc-10 city-2-loc-11) 3839)
  (= (cost-drive city-2-loc-12 city-2-loc-2) 2926)
  (= (cost-drive city-2-loc-2 city-2-loc-12) 1916)
  (= (cost-drive city-2-loc-13 city-2-loc-2) 8539)
  (= (cost-drive city-2-loc-2 city-2-loc-13) 8653)
  (= (cost-drive city-2-loc-13 city-2-loc-3) 3747)
  (= (cost-drive city-2-loc-3 city-2-loc-13) 6245)
  (= (cost-drive city-2-loc-13 city-2-loc-6) 8456)
  (= (cost-drive city-2-loc-6 city-2-loc-13) 4763)
  (= (cost-drive city-2-loc-13 city-2-loc-7) 1411)
  (= (cost-drive city-2-loc-7 city-2-loc-13) 2244)
  (= (cost-drive city-2-loc-13 city-2-loc-8) 6189)
  (= (cost-drive city-2-loc-8 city-2-loc-13) 1071)
  (= (cost-drive city-2-loc-13 city-2-loc-10) 1137)
  (= (cost-drive city-2-loc-10 city-2-loc-13) 3342)
  (= (cost-drive city-2-loc-14 city-2-loc-2) 9252)
  (= (cost-drive city-2-loc-2 city-2-loc-14) 7965)
  (= (cost-drive city-2-loc-14 city-2-loc-3) 2413)
  (= (cost-drive city-2-loc-3 city-2-loc-14) 6106)
  (= (cost-drive city-2-loc-14 city-2-loc-7) 4494)
  (= (cost-drive city-2-loc-7 city-2-loc-14) 5898)
  (= (cost-drive city-2-loc-14 city-2-loc-12) 7289)
  (= (cost-drive city-2-loc-12 city-2-loc-14) 4760)
  (= (cost-drive city-2-loc-14 city-2-loc-13) 2446)
  (= (cost-drive city-2-loc-13 city-2-loc-14) 4519)
  (= (cost-drive city-2-loc-15 city-2-loc-2) 2602)
  (= (cost-drive city-2-loc-2 city-2-loc-15) 4108)
  (= (cost-drive city-2-loc-15 city-2-loc-3) 4817)
  (= (cost-drive city-2-loc-3 city-2-loc-15) 6730)
  (= (cost-drive city-2-loc-15 city-2-loc-5) 1571)
  (= (cost-drive city-2-loc-5 city-2-loc-15) 4808)
  (= (cost-drive city-2-loc-15 city-2-loc-6) 6858)
  (= (cost-drive city-2-loc-6 city-2-loc-15) 2713)
  (= (cost-drive city-2-loc-15 city-2-loc-10) 6761)
  (= (cost-drive city-2-loc-10 city-2-loc-15) 4372)
  (= (cost-drive city-2-loc-15 city-2-loc-13) 1882)
  (= (cost-drive city-2-loc-13 city-2-loc-15) 8131)
  (= (cost-drive city-2-loc-16 city-2-loc-3) 6136)
  (= (cost-drive city-2-loc-3 city-2-loc-16) 8833)
  (= (cost-drive city-2-loc-16 city-2-loc-6) 1872)
  (= (cost-drive city-2-loc-6 city-2-loc-16) 7748)
  (= (cost-drive city-2-loc-16 city-2-loc-8) 8365)
  (= (cost-drive city-2-loc-8 city-2-loc-16) 4937)
  (= (cost-drive city-2-loc-16 city-2-loc-13) 5849)
  (= (cost-drive city-2-loc-13 city-2-loc-16) 5778)
  (= (cost-drive city-2-loc-17 city-2-loc-5) 3293)
  (= (cost-drive city-2-loc-5 city-2-loc-17) 5753)
  (= (cost-drive city-2-loc-17 city-2-loc-6) 5758)
  (= (cost-drive city-2-loc-6 city-2-loc-17) 7657)
  (= (cost-drive city-2-loc-17 city-2-loc-10) 8509)
  (= (cost-drive city-2-loc-10 city-2-loc-17) 5183)
  (= (cost-drive city-2-loc-17 city-2-loc-15) 1636)
  (= (cost-drive city-2-loc-15 city-2-loc-17) 8530)
  (= (cost-drive city-2-loc-18 city-2-loc-1) 7035)
  (= (cost-drive city-2-loc-1 city-2-loc-18) 9555)
  (= (cost-drive city-2-loc-18 city-2-loc-4) 7544)
  (= (cost-drive city-2-loc-4 city-2-loc-18) 4014)
  (= (cost-drive city-2-loc-18 city-2-loc-8) 6428)
  (= (cost-drive city-2-loc-8 city-2-loc-18) 4622)
  (= (cost-drive city-1-loc-12 city-2-loc-5) 5072)
  (= (cost-drive city-2-loc-5 city-1-loc-12) 9802)
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
  ; 803,858 -> 912,799
  (road city-1-loc-14 city-1-loc-4)
  ; 912,799 -> 803,858
  (road city-1-loc-4 city-1-loc-14)
  ; 803,858 -> 977,899
  (road city-1-loc-14 city-1-loc-5)
  ; 977,899 -> 803,858
  (road city-1-loc-5 city-1-loc-14)
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
  ; 426,706 -> 564,783
  (road city-1-loc-17 city-1-loc-8)
  ; 564,783 -> 426,706
  (road city-1-loc-8 city-1-loc-17)
  ; 426,706 -> 566,552
  (road city-1-loc-17 city-1-loc-10)
  ; 566,552 -> 426,706
  (road city-1-loc-10 city-1-loc-17)
  ; 426,706 -> 174,643
  (road city-1-loc-17 city-1-loc-11)
  ; 174,643 -> 426,706
  (road city-1-loc-11 city-1-loc-17)
  ; 426,706 -> 263,567
  (road city-1-loc-17 city-1-loc-15)
  ; 263,567 -> 426,706
  (road city-1-loc-15 city-1-loc-17)
  ; 426,706 -> 128,791
  (road city-1-loc-17 city-1-loc-16)
  ; 128,791 -> 426,706
  (road city-1-loc-16 city-1-loc-17)
  ; 36,368 -> 273,425
  (road city-1-loc-18 city-1-loc-9)
  ; 273,425 -> 36,368
  (road city-1-loc-9 city-1-loc-18)
  ; 36,368 -> 174,643
  (road city-1-loc-18 city-1-loc-11)
  ; 174,643 -> 36,368
  (road city-1-loc-11 city-1-loc-18)
  ; 36,368 -> 55,605
  (road city-1-loc-18 city-1-loc-13)
  ; 55,605 -> 36,368
  (road city-1-loc-13 city-1-loc-18)
  ; 36,368 -> 263,567
  (road city-1-loc-18 city-1-loc-15)
  ; 263,567 -> 36,368
  (road city-1-loc-15 city-1-loc-18)
  ; 2936,210 -> 2872,63
  (road city-2-loc-4 city-2-loc-1)
  ; 2872,63 -> 2936,210
  (road city-2-loc-1 city-2-loc-4)
  ; 2480,435 -> 2614,343
  (road city-2-loc-6 city-2-loc-3)
  ; 2614,343 -> 2480,435
  (road city-2-loc-3 city-2-loc-6)
  ; 2480,435 -> 2193,424
  (road city-2-loc-6 city-2-loc-5)
  ; 2193,424 -> 2480,435
  (road city-2-loc-5 city-2-loc-6)
  ; 2918,341 -> 2872,63
  (road city-2-loc-7 city-2-loc-1)
  ; 2872,63 -> 2918,341
  (road city-2-loc-1 city-2-loc-7)
  ; 2918,341 -> 2614,343
  (road city-2-loc-7 city-2-loc-3)
  ; 2614,343 -> 2918,341
  (road city-2-loc-3 city-2-loc-7)
  ; 2918,341 -> 2936,210
  (road city-2-loc-7 city-2-loc-4)
  ; 2936,210 -> 2918,341
  (road city-2-loc-4 city-2-loc-7)
  ; 2651,235 -> 2872,63
  (road city-2-loc-8 city-2-loc-1)
  ; 2872,63 -> 2651,235
  (road city-2-loc-1 city-2-loc-8)
  ; 2651,235 -> 2614,343
  (road city-2-loc-8 city-2-loc-3)
  ; 2614,343 -> 2651,235
  (road city-2-loc-3 city-2-loc-8)
  ; 2651,235 -> 2936,210
  (road city-2-loc-8 city-2-loc-4)
  ; 2936,210 -> 2651,235
  (road city-2-loc-4 city-2-loc-8)
  ; 2651,235 -> 2480,435
  (road city-2-loc-8 city-2-loc-6)
  ; 2480,435 -> 2651,235
  (road city-2-loc-6 city-2-loc-8)
  ; 2651,235 -> 2918,341
  (road city-2-loc-8 city-2-loc-7)
  ; 2918,341 -> 2651,235
  (road city-2-loc-7 city-2-loc-8)
  ; 2560,901 -> 2645,721
  (road city-2-loc-9 city-2-loc-2)
  ; 2645,721 -> 2560,901
  (road city-2-loc-2 city-2-loc-9)
  ; 2447,732 -> 2645,721
  (road city-2-loc-10 city-2-loc-2)
  ; 2645,721 -> 2447,732
  (road city-2-loc-2 city-2-loc-10)
  ; 2447,732 -> 2480,435
  (road city-2-loc-10 city-2-loc-6)
  ; 2480,435 -> 2447,732
  (road city-2-loc-6 city-2-loc-10)
  ; 2447,732 -> 2560,901
  (road city-2-loc-10 city-2-loc-9)
  ; 2560,901 -> 2447,732
  (road city-2-loc-9 city-2-loc-10)
  ; 2362,940 -> 2560,901
  (road city-2-loc-11 city-2-loc-9)
  ; 2560,901 -> 2362,940
  (road city-2-loc-9 city-2-loc-11)
  ; 2362,940 -> 2447,732
  (road city-2-loc-11 city-2-loc-10)
  ; 2447,732 -> 2362,940
  (road city-2-loc-10 city-2-loc-11)
  ; 2941,734 -> 2645,721
  (road city-2-loc-12 city-2-loc-2)
  ; 2645,721 -> 2941,734
  (road city-2-loc-2 city-2-loc-12)
  ; 2653,507 -> 2645,721
  (road city-2-loc-13 city-2-loc-2)
  ; 2645,721 -> 2653,507
  (road city-2-loc-2 city-2-loc-13)
  ; 2653,507 -> 2614,343
  (road city-2-loc-13 city-2-loc-3)
  ; 2614,343 -> 2653,507
  (road city-2-loc-3 city-2-loc-13)
  ; 2653,507 -> 2480,435
  (road city-2-loc-13 city-2-loc-6)
  ; 2480,435 -> 2653,507
  (road city-2-loc-6 city-2-loc-13)
  ; 2653,507 -> 2918,341
  (road city-2-loc-13 city-2-loc-7)
  ; 2918,341 -> 2653,507
  (road city-2-loc-7 city-2-loc-13)
  ; 2653,507 -> 2651,235
  (road city-2-loc-13 city-2-loc-8)
  ; 2651,235 -> 2653,507
  (road city-2-loc-8 city-2-loc-13)
  ; 2653,507 -> 2447,732
  (road city-2-loc-13 city-2-loc-10)
  ; 2447,732 -> 2653,507
  (road city-2-loc-10 city-2-loc-13)
  ; 2820,551 -> 2645,721
  (road city-2-loc-14 city-2-loc-2)
  ; 2645,721 -> 2820,551
  (road city-2-loc-2 city-2-loc-14)
  ; 2820,551 -> 2614,343
  (road city-2-loc-14 city-2-loc-3)
  ; 2614,343 -> 2820,551
  (road city-2-loc-3 city-2-loc-14)
  ; 2820,551 -> 2918,341
  (road city-2-loc-14 city-2-loc-7)
  ; 2918,341 -> 2820,551
  (road city-2-loc-7 city-2-loc-14)
  ; 2820,551 -> 2941,734
  (road city-2-loc-14 city-2-loc-12)
  ; 2941,734 -> 2820,551
  (road city-2-loc-12 city-2-loc-14)
  ; 2820,551 -> 2653,507
  (road city-2-loc-14 city-2-loc-13)
  ; 2653,507 -> 2820,551
  (road city-2-loc-13 city-2-loc-14)
  ; 2437,605 -> 2645,721
  (road city-2-loc-15 city-2-loc-2)
  ; 2645,721 -> 2437,605
  (road city-2-loc-2 city-2-loc-15)
  ; 2437,605 -> 2614,343
  (road city-2-loc-15 city-2-loc-3)
  ; 2614,343 -> 2437,605
  (road city-2-loc-3 city-2-loc-15)
  ; 2437,605 -> 2193,424
  (road city-2-loc-15 city-2-loc-5)
  ; 2193,424 -> 2437,605
  (road city-2-loc-5 city-2-loc-15)
  ; 2437,605 -> 2480,435
  (road city-2-loc-15 city-2-loc-6)
  ; 2480,435 -> 2437,605
  (road city-2-loc-6 city-2-loc-15)
  ; 2437,605 -> 2447,732
  (road city-2-loc-15 city-2-loc-10)
  ; 2447,732 -> 2437,605
  (road city-2-loc-10 city-2-loc-15)
  ; 2437,605 -> 2653,507
  (road city-2-loc-15 city-2-loc-13)
  ; 2653,507 -> 2437,605
  (road city-2-loc-13 city-2-loc-15)
  ; 2497,244 -> 2614,343
  (road city-2-loc-16 city-2-loc-3)
  ; 2614,343 -> 2497,244
  (road city-2-loc-3 city-2-loc-16)
  ; 2497,244 -> 2480,435
  (road city-2-loc-16 city-2-loc-6)
  ; 2480,435 -> 2497,244
  (road city-2-loc-6 city-2-loc-16)
  ; 2497,244 -> 2651,235
  (road city-2-loc-16 city-2-loc-8)
  ; 2651,235 -> 2497,244
  (road city-2-loc-8 city-2-loc-16)
  ; 2497,244 -> 2653,507
  (road city-2-loc-16 city-2-loc-13)
  ; 2653,507 -> 2497,244
  (road city-2-loc-13 city-2-loc-16)
  ; 2305,509 -> 2193,424
  (road city-2-loc-17 city-2-loc-5)
  ; 2193,424 -> 2305,509
  (road city-2-loc-5 city-2-loc-17)
  ; 2305,509 -> 2480,435
  (road city-2-loc-17 city-2-loc-6)
  ; 2480,435 -> 2305,509
  (road city-2-loc-6 city-2-loc-17)
  ; 2305,509 -> 2447,732
  (road city-2-loc-17 city-2-loc-10)
  ; 2447,732 -> 2305,509
  (road city-2-loc-10 city-2-loc-17)
  ; 2305,509 -> 2437,605
  (road city-2-loc-17 city-2-loc-15)
  ; 2437,605 -> 2305,509
  (road city-2-loc-15 city-2-loc-17)
  ; 2731,24 -> 2872,63
  (road city-2-loc-18 city-2-loc-1)
  ; 2872,63 -> 2731,24
  (road city-2-loc-1 city-2-loc-18)
  ; 2731,24 -> 2936,210
  (road city-2-loc-18 city-2-loc-4)
  ; 2936,210 -> 2731,24
  (road city-2-loc-4 city-2-loc-18)
  ; 2731,24 -> 2651,235
  (road city-2-loc-18 city-2-loc-8)
  ; 2651,235 -> 2731,24
  (road city-2-loc-8 city-2-loc-18)
  ; 930,259 <-> 2193,424
  (road city-1-loc-12 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-12)
  (at package-1 city-1-loc-9)
  (at package-2 city-1-loc-4)
  (at package-3 city-1-loc-9)
  (at package-4 city-1-loc-17)
  (at package-5 city-1-loc-9)
  (at package-6 city-1-loc-14)
  (at package-7 city-1-loc-10)
  (at package-8 city-1-loc-6)
  (at package-9 city-1-loc-16)
  (at package-10 city-1-loc-10)
  (at truck-1 city-2-loc-8)
  (capacity truck-1 capacity-4)
  (at truck-2 city-2-loc-6)
  (capacity truck-2 capacity-4)
  (at truck-3 city-2-loc-4)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-2-loc-3)
  (at package-2 city-2-loc-14)
  (at package-3 city-2-loc-5)
  (at package-4 city-2-loc-4)
  (at package-5 city-2-loc-4)
  (at package-6 city-2-loc-8)
  (at package-7 city-2-loc-1)
  (at package-8 city-2-loc-10)
  (at package-9 city-2-loc-7)
  (at package-10 city-2-loc-8)
 ))
 (:metric minimize (total-cost))
)
