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
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 9927)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 9218)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 1359)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 2849)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-1) 9576)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-1) 7998)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 8580)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 2439)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 6825)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 4957)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-1) 6799)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-1) 8085)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 7656)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 9721)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 9034)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 3230)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 9960)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 5422)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-1) 6477)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-1) 8311)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-1) 9359)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-1) 7823)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-1) 4006)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-1) 2849)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 4922)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 7426)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-1) 8867)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-1) 3438)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 6332)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 2680)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-1) 1356)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-1) 7884)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 8630)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 3099)
  (= (cost-drive city-1-loc-10 city-1-loc-4 truck-1) 5833)
  (= (cost-drive city-1-loc-4 city-1-loc-10 truck-1) 7680)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-1) 4371)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-1) 6316)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 2903)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 5932)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 6918)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 1274)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-1) 9566)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-1) 7022)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-1) 1584)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-1) 6460)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 6305)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 5612)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 9705)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 9671)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-1) 1446)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-1) 9786)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-1) 2950)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-1) 7343)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-1) 3514)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-1) 8614)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-1) 5743)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-1) 1047)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-1) 2107)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-1) 7660)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-1) 7897)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-1) 1042)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-1) 4464)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-1) 2770)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-1) 1545)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-1) 8470)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-1) 1808)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-1) 1454)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-1) 3961)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-1) 2811)
  (= (cost-drive city-2-loc-9 city-2-loc-4 truck-1) 9724)
  (= (cost-drive city-2-loc-4 city-2-loc-9 truck-1) 5390)
  (= (cost-drive city-2-loc-9 city-2-loc-6 truck-1) 4170)
  (= (cost-drive city-2-loc-6 city-2-loc-9 truck-1) 5932)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-1) 3723)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-1) 8691)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-1) 2289)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-1) 8816)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-1) 9569)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-1) 7008)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-1) 7281)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-1) 9159)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-1) 8188)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-1) 2464)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 7078)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 8973)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-1) 1219)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-1) 1592)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-1) 1020)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-1) 9670)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-1) 9780)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-1) 4517)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-1) 7916)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-1) 4523)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-1) 5458)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-1) 7826)
  (= (cost-drive city-3-loc-6 city-3-loc-4 truck-1) 8345)
  (= (cost-drive city-3-loc-4 city-3-loc-6 truck-1) 7772)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-1) 9816)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-1) 1582)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-1) 7975)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-1) 3403)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-1) 4984)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-1) 5384)
  (= (cost-drive city-3-loc-8 city-3-loc-2 truck-1) 8396)
  (= (cost-drive city-3-loc-2 city-3-loc-8 truck-1) 1716)
  (= (cost-drive city-3-loc-9 city-3-loc-1 truck-1) 6754)
  (= (cost-drive city-3-loc-1 city-3-loc-9 truck-1) 4325)
  (= (cost-drive city-3-loc-9 city-3-loc-2 truck-1) 4868)
  (= (cost-drive city-3-loc-2 city-3-loc-9 truck-1) 1165)
  (= (cost-drive city-3-loc-9 city-3-loc-3 truck-1) 6616)
  (= (cost-drive city-3-loc-3 city-3-loc-9 truck-1) 2724)
  (= (cost-drive city-3-loc-9 city-3-loc-5 truck-1) 5411)
  (= (cost-drive city-3-loc-5 city-3-loc-9 truck-1) 3519)
  (= (cost-drive city-3-loc-9 city-3-loc-8 truck-1) 5846)
  (= (cost-drive city-3-loc-8 city-3-loc-9 truck-1) 2886)
  (= (cost-drive city-3-loc-10 city-3-loc-1 truck-1) 1821)
  (= (cost-drive city-3-loc-1 city-3-loc-10 truck-1) 3454)
  (= (cost-drive city-3-loc-10 city-3-loc-2 truck-1) 7047)
  (= (cost-drive city-3-loc-2 city-3-loc-10 truck-1) 9136)
  (= (cost-drive city-3-loc-10 city-3-loc-3 truck-1) 7171)
  (= (cost-drive city-3-loc-3 city-3-loc-10 truck-1) 6575)
  (= (cost-drive city-3-loc-10 city-3-loc-5 truck-1) 5456)
  (= (cost-drive city-3-loc-5 city-3-loc-10 truck-1) 5977)
  (= (cost-drive city-3-loc-10 city-3-loc-7 truck-1) 2559)
  (= (cost-drive city-3-loc-7 city-3-loc-10 truck-1) 7085)
  (= (cost-drive city-3-loc-10 city-3-loc-8 truck-1) 2558)
  (= (cost-drive city-3-loc-8 city-3-loc-10 truck-1) 6545)
  (= (cost-drive city-3-loc-10 city-3-loc-9 truck-1) 3913)
  (= (cost-drive city-3-loc-9 city-3-loc-10 truck-1) 1848)
  (= (cost-drive city-1-loc-1 city-2-loc-5 truck-1) 1537)
  (= (cost-drive city-2-loc-5 city-1-loc-1 truck-1) 5673)
  (= (cost-drive city-1-loc-10 city-3-loc-2 truck-1) 7643)
  (= (cost-drive city-3-loc-2 city-1-loc-10 truck-1) 7111)
  (= (cost-drive city-2-loc-2 city-3-loc-5 truck-1) 8264)
  (= (cost-drive city-3-loc-5 city-2-loc-2 truck-1) 7840)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 9793)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 6476)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 1348)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 6745)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-2) 8114)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-2) 3638)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 9857)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 3186)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 5429)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 4951)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-2) 6899)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-2) 6944)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 3124)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 4685)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 6515)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 3382)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 9357)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 7971)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-2) 6381)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-2) 2948)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-2) 4626)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-2) 5357)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-2) 8282)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-2) 2072)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 9705)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 9882)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-2) 2166)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-2) 5375)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 6762)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 3560)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-2) 4437)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-2) 2201)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 9711)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 1935)
  (= (cost-drive city-1-loc-10 city-1-loc-4 truck-2) 3451)
  (= (cost-drive city-1-loc-4 city-1-loc-10 truck-2) 6951)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-2) 7160)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-2) 9599)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 8455)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 7627)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 7544)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 9363)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-2) 4601)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-2) 9588)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-2) 2674)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-2) 6141)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 5593)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 3606)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 9370)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 4021)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-2) 6184)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-2) 9578)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-2) 3039)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-2) 6861)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-2) 8910)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-2) 9288)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-2) 7362)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-2) 7314)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-2) 4751)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-2) 4677)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-2) 5289)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-2) 5997)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-2) 4262)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-2) 1992)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-2) 9941)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-2) 5369)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-2) 7531)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-2) 7317)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-2) 2767)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-2) 1903)
  (= (cost-drive city-2-loc-9 city-2-loc-4 truck-2) 5897)
  (= (cost-drive city-2-loc-4 city-2-loc-9 truck-2) 4044)
  (= (cost-drive city-2-loc-9 city-2-loc-6 truck-2) 2978)
  (= (cost-drive city-2-loc-6 city-2-loc-9 truck-2) 3262)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-2) 4366)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-2) 7565)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-2) 4801)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-2) 1347)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-2) 9166)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-2) 5819)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-2) 2203)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-2) 8254)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-2) 1954)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-2) 2203)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 2439)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 8745)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-2) 7598)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-2) 5730)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-2) 4876)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-2) 6614)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-2) 6640)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-2) 5068)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-2) 9819)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-2) 2548)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-2) 8500)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-2) 4850)
  (= (cost-drive city-3-loc-6 city-3-loc-4 truck-2) 9956)
  (= (cost-drive city-3-loc-4 city-3-loc-6 truck-2) 5228)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-2) 7890)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-2) 4991)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-2) 8003)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-2) 5562)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-2) 3920)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-2) 7338)
  (= (cost-drive city-3-loc-8 city-3-loc-2 truck-2) 8571)
  (= (cost-drive city-3-loc-2 city-3-loc-8 truck-2) 8813)
  (= (cost-drive city-3-loc-9 city-3-loc-1 truck-2) 8302)
  (= (cost-drive city-3-loc-1 city-3-loc-9 truck-2) 6508)
  (= (cost-drive city-3-loc-9 city-3-loc-2 truck-2) 2276)
  (= (cost-drive city-3-loc-2 city-3-loc-9 truck-2) 7723)
  (= (cost-drive city-3-loc-9 city-3-loc-3 truck-2) 9942)
  (= (cost-drive city-3-loc-3 city-3-loc-9 truck-2) 6208)
  (= (cost-drive city-3-loc-9 city-3-loc-5 truck-2) 4648)
  (= (cost-drive city-3-loc-5 city-3-loc-9 truck-2) 9848)
  (= (cost-drive city-3-loc-9 city-3-loc-8 truck-2) 1779)
  (= (cost-drive city-3-loc-8 city-3-loc-9 truck-2) 9462)
  (= (cost-drive city-3-loc-10 city-3-loc-1 truck-2) 4826)
  (= (cost-drive city-3-loc-1 city-3-loc-10 truck-2) 3366)
  (= (cost-drive city-3-loc-10 city-3-loc-2 truck-2) 7168)
  (= (cost-drive city-3-loc-2 city-3-loc-10 truck-2) 6379)
  (= (cost-drive city-3-loc-10 city-3-loc-3 truck-2) 8921)
  (= (cost-drive city-3-loc-3 city-3-loc-10 truck-2) 8309)
  (= (cost-drive city-3-loc-10 city-3-loc-5 truck-2) 4810)
  (= (cost-drive city-3-loc-5 city-3-loc-10 truck-2) 3634)
  (= (cost-drive city-3-loc-10 city-3-loc-7 truck-2) 8590)
  (= (cost-drive city-3-loc-7 city-3-loc-10 truck-2) 2871)
  (= (cost-drive city-3-loc-10 city-3-loc-8 truck-2) 7325)
  (= (cost-drive city-3-loc-8 city-3-loc-10 truck-2) 9302)
  (= (cost-drive city-3-loc-10 city-3-loc-9 truck-2) 2046)
  (= (cost-drive city-3-loc-9 city-3-loc-10 truck-2) 5085)
  (= (cost-drive city-1-loc-1 city-2-loc-5 truck-2) 9640)
  (= (cost-drive city-2-loc-5 city-1-loc-1 truck-2) 8953)
  (= (cost-drive city-1-loc-10 city-3-loc-2 truck-2) 8111)
  (= (cost-drive city-3-loc-2 city-1-loc-10 truck-2) 6372)
  (= (cost-drive city-2-loc-2 city-3-loc-5 truck-2) 7053)
  (= (cost-drive city-3-loc-5 city-2-loc-2 truck-2) 3889)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 3686)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 3794)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 5420)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 6331)
  (= (cost-drive city-1-loc-5 city-1-loc-1 truck-3) 6426)
  (= (cost-drive city-1-loc-1 city-1-loc-5 truck-3) 3636)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 5323)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 2619)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 5896)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 9779)
  (= (cost-drive city-1-loc-6 city-1-loc-3 truck-3) 9371)
  (= (cost-drive city-1-loc-3 city-1-loc-6 truck-3) 8619)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 1994)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 7248)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 5431)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 1183)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 3722)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 6885)
  (= (cost-drive city-1-loc-7 city-1-loc-5 truck-3) 5872)
  (= (cost-drive city-1-loc-5 city-1-loc-7 truck-3) 2851)
  (= (cost-drive city-1-loc-8 city-1-loc-1 truck-3) 4537)
  (= (cost-drive city-1-loc-1 city-1-loc-8 truck-3) 7233)
  (= (cost-drive city-1-loc-8 city-1-loc-4 truck-3) 5549)
  (= (cost-drive city-1-loc-4 city-1-loc-8 truck-3) 4344)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 6626)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 5564)
  (= (cost-drive city-1-loc-9 city-1-loc-2 truck-3) 3014)
  (= (cost-drive city-1-loc-2 city-1-loc-9 truck-3) 3878)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 4862)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 5256)
  (= (cost-drive city-1-loc-10 city-1-loc-1 truck-3) 4021)
  (= (cost-drive city-1-loc-1 city-1-loc-10 truck-3) 8386)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-3) 8546)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-3) 7060)
  (= (cost-drive city-1-loc-10 city-1-loc-4 truck-3) 8548)
  (= (cost-drive city-1-loc-4 city-1-loc-10 truck-3) 7162)
  (= (cost-drive city-1-loc-10 city-1-loc-6 truck-3) 4418)
  (= (cost-drive city-1-loc-6 city-1-loc-10 truck-3) 7248)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-3) 4098)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-3) 6970)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-3) 3895)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-3) 1384)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-3) 9409)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-3) 4172)
  (= (cost-drive city-2-loc-3 city-2-loc-1 truck-3) 7181)
  (= (cost-drive city-2-loc-1 city-2-loc-3 truck-3) 4852)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-3) 7202)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-3) 4631)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-3) 7818)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-3) 7960)
  (= (cost-drive city-2-loc-5 city-2-loc-2 truck-3) 1732)
  (= (cost-drive city-2-loc-2 city-2-loc-5 truck-3) 4695)
  (= (cost-drive city-2-loc-6 city-2-loc-1 truck-3) 4107)
  (= (cost-drive city-2-loc-1 city-2-loc-6 truck-3) 1810)
  (= (cost-drive city-2-loc-6 city-2-loc-4 truck-3) 3229)
  (= (cost-drive city-2-loc-4 city-2-loc-6 truck-3) 5093)
  (= (cost-drive city-2-loc-7 city-2-loc-2 truck-3) 1228)
  (= (cost-drive city-2-loc-2 city-2-loc-7 truck-3) 4114)
  (= (cost-drive city-2-loc-7 city-2-loc-5 truck-3) 4822)
  (= (cost-drive city-2-loc-5 city-2-loc-7 truck-3) 8271)
  (= (cost-drive city-2-loc-8 city-2-loc-2 truck-3) 4212)
  (= (cost-drive city-2-loc-2 city-2-loc-8 truck-3) 7911)
  (= (cost-drive city-2-loc-8 city-2-loc-5 truck-3) 9704)
  (= (cost-drive city-2-loc-5 city-2-loc-8 truck-3) 8215)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-3) 7265)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-3) 6568)
  (= (cost-drive city-2-loc-9 city-2-loc-1 truck-3) 2917)
  (= (cost-drive city-2-loc-1 city-2-loc-9 truck-3) 7997)
  (= (cost-drive city-2-loc-9 city-2-loc-3 truck-3) 2662)
  (= (cost-drive city-2-loc-3 city-2-loc-9 truck-3) 9507)
  (= (cost-drive city-2-loc-9 city-2-loc-4 truck-3) 6249)
  (= (cost-drive city-2-loc-4 city-2-loc-9 truck-3) 4859)
  (= (cost-drive city-2-loc-9 city-2-loc-6 truck-3) 3732)
  (= (cost-drive city-2-loc-6 city-2-loc-9 truck-3) 4549)
  (= (cost-drive city-2-loc-9 city-2-loc-8 truck-3) 7491)
  (= (cost-drive city-2-loc-8 city-2-loc-9 truck-3) 8827)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-3) 7748)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-3) 1275)
  (= (cost-drive city-2-loc-10 city-2-loc-5 truck-3) 9093)
  (= (cost-drive city-2-loc-5 city-2-loc-10 truck-3) 6201)
  (= (cost-drive city-2-loc-10 city-2-loc-7 truck-3) 1335)
  (= (cost-drive city-2-loc-7 city-2-loc-10 truck-3) 3493)
  (= (cost-drive city-2-loc-10 city-2-loc-8 truck-3) 5165)
  (= (cost-drive city-2-loc-8 city-2-loc-10 truck-3) 4070)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-3) 6664)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-3) 7658)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-3) 9802)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-3) 4345)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-3) 8159)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-3) 6494)
  (= (cost-drive city-3-loc-5 city-3-loc-1 truck-3) 2022)
  (= (cost-drive city-3-loc-1 city-3-loc-5 truck-3) 8214)
  (= (cost-drive city-3-loc-5 city-3-loc-3 truck-3) 7628)
  (= (cost-drive city-3-loc-3 city-3-loc-5 truck-3) 9200)
  (= (cost-drive city-3-loc-6 city-3-loc-3 truck-3) 6765)
  (= (cost-drive city-3-loc-3 city-3-loc-6 truck-3) 8978)
  (= (cost-drive city-3-loc-6 city-3-loc-4 truck-3) 5859)
  (= (cost-drive city-3-loc-4 city-3-loc-6 truck-3) 8650)
  (= (cost-drive city-3-loc-6 city-3-loc-5 truck-3) 9171)
  (= (cost-drive city-3-loc-5 city-3-loc-6 truck-3) 3047)
  (= (cost-drive city-3-loc-7 city-3-loc-1 truck-3) 9182)
  (= (cost-drive city-3-loc-1 city-3-loc-7 truck-3) 1386)
  (= (cost-drive city-3-loc-7 city-3-loc-3 truck-3) 1571)
  (= (cost-drive city-3-loc-3 city-3-loc-7 truck-3) 6644)
  (= (cost-drive city-3-loc-8 city-3-loc-2 truck-3) 9337)
  (= (cost-drive city-3-loc-2 city-3-loc-8 truck-3) 3414)
  (= (cost-drive city-3-loc-9 city-3-loc-1 truck-3) 7906)
  (= (cost-drive city-3-loc-1 city-3-loc-9 truck-3) 2377)
  (= (cost-drive city-3-loc-9 city-3-loc-2 truck-3) 5962)
  (= (cost-drive city-3-loc-2 city-3-loc-9 truck-3) 3797)
  (= (cost-drive city-3-loc-9 city-3-loc-3 truck-3) 8837)
  (= (cost-drive city-3-loc-3 city-3-loc-9 truck-3) 3491)
  (= (cost-drive city-3-loc-9 city-3-loc-5 truck-3) 4226)
  (= (cost-drive city-3-loc-5 city-3-loc-9 truck-3) 1848)
  (= (cost-drive city-3-loc-9 city-3-loc-8 truck-3) 7686)
  (= (cost-drive city-3-loc-8 city-3-loc-9 truck-3) 6063)
  (= (cost-drive city-3-loc-10 city-3-loc-1 truck-3) 5776)
  (= (cost-drive city-3-loc-1 city-3-loc-10 truck-3) 5315)
  (= (cost-drive city-3-loc-10 city-3-loc-2 truck-3) 1105)
  (= (cost-drive city-3-loc-2 city-3-loc-10 truck-3) 1809)
  (= (cost-drive city-3-loc-10 city-3-loc-3 truck-3) 4517)
  (= (cost-drive city-3-loc-3 city-3-loc-10 truck-3) 3293)
  (= (cost-drive city-3-loc-10 city-3-loc-5 truck-3) 2709)
  (= (cost-drive city-3-loc-5 city-3-loc-10 truck-3) 7990)
  (= (cost-drive city-3-loc-10 city-3-loc-7 truck-3) 9460)
  (= (cost-drive city-3-loc-7 city-3-loc-10 truck-3) 6719)
  (= (cost-drive city-3-loc-10 city-3-loc-8 truck-3) 1166)
  (= (cost-drive city-3-loc-8 city-3-loc-10 truck-3) 3895)
  (= (cost-drive city-3-loc-10 city-3-loc-9 truck-3) 7340)
  (= (cost-drive city-3-loc-9 city-3-loc-10 truck-3) 5954)
  (= (cost-drive city-1-loc-1 city-2-loc-5 truck-3) 1189)
  (= (cost-drive city-2-loc-5 city-1-loc-1 truck-3) 5262)
  (= (cost-drive city-1-loc-10 city-3-loc-2 truck-3) 6602)
  (= (cost-drive city-3-loc-2 city-1-loc-10 truck-3) 6759)
  (= (cost-drive city-2-loc-2 city-3-loc-5 truck-3) 3613)
  (= (cost-drive city-3-loc-5 city-2-loc-2 truck-3) 7851)
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
