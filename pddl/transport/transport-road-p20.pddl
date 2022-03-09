; Transport two-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed

(define (problem transport-two-cities-sequential-20nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed)
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
  city-1-loc-19 - location
  city-2-loc-19 - location
  city-1-loc-20 - location
  city-2-loc-20 - location
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
  (= (base-drive city-1-loc-5 city-1-loc-4) 12)
  (= (base-drive city-1-loc-4 city-1-loc-5) 12)
  (= (base-drive city-1-loc-6 city-1-loc-2) 19)
  (= (base-drive city-1-loc-2 city-1-loc-6) 19)
  (= (base-drive city-1-loc-7 city-1-loc-1) 15)
  (= (base-drive city-1-loc-1 city-1-loc-7) 15)
  (= (base-drive city-1-loc-7 city-1-loc-3) 16)
  (= (base-drive city-1-loc-3 city-1-loc-7) 16)
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
  (= (base-drive city-1-loc-18 city-1-loc-9) 25)
  (= (base-drive city-1-loc-9 city-1-loc-18) 25)
  (= (base-drive city-1-loc-18 city-1-loc-13) 24)
  (= (base-drive city-1-loc-13 city-1-loc-18) 24)
  (= (base-drive city-1-loc-18 city-1-loc-15) 31)
  (= (base-drive city-1-loc-15 city-1-loc-18) 31)
  (= (base-drive city-1-loc-19 city-1-loc-12) 28)
  (= (base-drive city-1-loc-12 city-1-loc-19) 28)
  (= (base-drive city-1-loc-20 city-1-loc-2) 26)
  (= (base-drive city-1-loc-2 city-1-loc-20) 26)
  (= (base-drive city-1-loc-20 city-1-loc-18) 28)
  (= (base-drive city-1-loc-18 city-1-loc-20) 28)
  (= (base-drive city-2-loc-7 city-2-loc-3) 21)
  (= (base-drive city-2-loc-3 city-2-loc-7) 21)
  (= (base-drive city-2-loc-8 city-2-loc-6) 26)
  (= (base-drive city-2-loc-6 city-2-loc-8) 26)
  (= (base-drive city-2-loc-9 city-2-loc-2) 28)
  (= (base-drive city-2-loc-2 city-2-loc-9) 28)
  (= (base-drive city-2-loc-10 city-2-loc-4) 15)
  (= (base-drive city-2-loc-4 city-2-loc-10) 15)
  (= (base-drive city-2-loc-11 city-2-loc-3) 14)
  (= (base-drive city-2-loc-3 city-2-loc-11) 14)
  (= (base-drive city-2-loc-11 city-2-loc-9) 26)
  (= (base-drive city-2-loc-9 city-2-loc-11) 26)
  (= (base-drive city-2-loc-12 city-2-loc-4) 24)
  (= (base-drive city-2-loc-4 city-2-loc-12) 24)
  (= (base-drive city-2-loc-12 city-2-loc-10) 11)
  (= (base-drive city-2-loc-10 city-2-loc-12) 11)
  (= (base-drive city-2-loc-13 city-2-loc-1) 28)
  (= (base-drive city-2-loc-1 city-2-loc-13) 28)
  (= (base-drive city-2-loc-13 city-2-loc-9) 27)
  (= (base-drive city-2-loc-9 city-2-loc-13) 27)
  (= (base-drive city-2-loc-14 city-2-loc-10) 26)
  (= (base-drive city-2-loc-10 city-2-loc-14) 26)
  (= (base-drive city-2-loc-14 city-2-loc-12) 26)
  (= (base-drive city-2-loc-12 city-2-loc-14) 26)
  (= (base-drive city-2-loc-15 city-2-loc-1) 18)
  (= (base-drive city-2-loc-1 city-2-loc-15) 18)
  (= (base-drive city-2-loc-15 city-2-loc-4) 24)
  (= (base-drive city-2-loc-4 city-2-loc-15) 24)
  (= (base-drive city-2-loc-15 city-2-loc-10) 28)
  (= (base-drive city-2-loc-10 city-2-loc-15) 28)
  (= (base-drive city-2-loc-16 city-2-loc-1) 22)
  (= (base-drive city-2-loc-1 city-2-loc-16) 22)
  (= (base-drive city-2-loc-16 city-2-loc-9) 20)
  (= (base-drive city-2-loc-9 city-2-loc-16) 20)
  (= (base-drive city-2-loc-16 city-2-loc-13) 13)
  (= (base-drive city-2-loc-13 city-2-loc-16) 13)
  (= (base-drive city-2-loc-17 city-2-loc-1) 29)
  (= (base-drive city-2-loc-1 city-2-loc-17) 29)
  (= (base-drive city-2-loc-17 city-2-loc-10) 30)
  (= (base-drive city-2-loc-10 city-2-loc-17) 30)
  (= (base-drive city-2-loc-17 city-2-loc-14) 17)
  (= (base-drive city-2-loc-14 city-2-loc-17) 17)
  (= (base-drive city-2-loc-17 city-2-loc-15) 23)
  (= (base-drive city-2-loc-15 city-2-loc-17) 23)
  (= (base-drive city-2-loc-18 city-2-loc-3) 19)
  (= (base-drive city-2-loc-3 city-2-loc-18) 19)
  (= (base-drive city-2-loc-18 city-2-loc-7) 13)
  (= (base-drive city-2-loc-7 city-2-loc-18) 13)
  (= (base-drive city-2-loc-18 city-2-loc-11) 25)
  (= (base-drive city-2-loc-11 city-2-loc-18) 25)
  (= (base-drive city-2-loc-19 city-2-loc-1) 15)
  (= (base-drive city-2-loc-1 city-2-loc-19) 15)
  (= (base-drive city-2-loc-19 city-2-loc-13) 19)
  (= (base-drive city-2-loc-13 city-2-loc-19) 19)
  (= (base-drive city-2-loc-19 city-2-loc-15) 28)
  (= (base-drive city-2-loc-15 city-2-loc-19) 28)
  (= (base-drive city-2-loc-19 city-2-loc-16) 20)
  (= (base-drive city-2-loc-16 city-2-loc-19) 20)
  (= (base-drive city-2-loc-19 city-2-loc-17) 29)
  (= (base-drive city-2-loc-17 city-2-loc-19) 29)
  (= (base-drive city-2-loc-20 city-2-loc-5) 24)
  (= (base-drive city-2-loc-5 city-2-loc-20) 24)
  (= (base-drive city-2-loc-20 city-2-loc-8) 28)
  (= (base-drive city-2-loc-8 city-2-loc-20) 28)
  (= (base-drive city-2-loc-20 city-2-loc-13) 27)
  (= (base-drive city-2-loc-13 city-2-loc-20) 27)
  (= (base-drive city-2-loc-20 city-2-loc-19) 24)
  (= (base-drive city-2-loc-19 city-2-loc-20) 24)
  (= (base-drive city-1-loc-12 city-2-loc-4) 109)
  (= (base-drive city-2-loc-4 city-1-loc-12) 109)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1) 4947)
  (= (cost-drive city-1-loc-1 city-1-loc-3) 9800)
  (= (cost-drive city-1-loc-4 city-1-loc-1) 5914)
  (= (cost-drive city-1-loc-1 city-1-loc-4) 2868)
  (= (cost-drive city-1-loc-5 city-1-loc-4) 6380)
  (= (cost-drive city-1-loc-4 city-1-loc-5) 7924)
  (= (cost-drive city-1-loc-6 city-1-loc-2) 9379)
  (= (cost-drive city-1-loc-2 city-1-loc-6) 7940)
  (= (cost-drive city-1-loc-7 city-1-loc-1) 8049)
  (= (cost-drive city-1-loc-1 city-1-loc-7) 9261)
  (= (cost-drive city-1-loc-7 city-1-loc-3) 5185)
  (= (cost-drive city-1-loc-3 city-1-loc-7) 2241)
  (= (cost-drive city-1-loc-8 city-1-loc-7) 4788)
  (= (cost-drive city-1-loc-7 city-1-loc-8) 4164)
  (= (cost-drive city-1-loc-9 city-1-loc-6) 5433)
  (= (cost-drive city-1-loc-6 city-1-loc-9) 3185)
  (= (cost-drive city-1-loc-10 city-1-loc-3) 7364)
  (= (cost-drive city-1-loc-3 city-1-loc-10) 5618)
  (= (cost-drive city-1-loc-10 city-1-loc-7) 1270)
  (= (cost-drive city-1-loc-7 city-1-loc-10) 5873)
  (= (cost-drive city-1-loc-10 city-1-loc-8) 6026)
  (= (cost-drive city-1-loc-8 city-1-loc-10) 1552)
  (= (cost-drive city-1-loc-11 city-1-loc-9) 6782)
  (= (cost-drive city-1-loc-9 city-1-loc-11) 5981)
  (= (cost-drive city-1-loc-12 city-1-loc-1) 1702)
  (= (cost-drive city-1-loc-1 city-1-loc-12) 6852)
  (= (cost-drive city-1-loc-12 city-1-loc-3) 3995)
  (= (cost-drive city-1-loc-3 city-1-loc-12) 9157)
  (= (cost-drive city-1-loc-13 city-1-loc-9) 1188)
  (= (cost-drive city-1-loc-9 city-1-loc-13) 3671)
  (= (cost-drive city-1-loc-13 city-1-loc-11) 2933)
  (= (cost-drive city-1-loc-11 city-1-loc-13) 5623)
  (= (cost-drive city-1-loc-14 city-1-loc-4) 4123)
  (= (cost-drive city-1-loc-4 city-1-loc-14) 9394)
  (= (cost-drive city-1-loc-14 city-1-loc-5) 9993)
  (= (cost-drive city-1-loc-5 city-1-loc-14) 5528)
  (= (cost-drive city-1-loc-14 city-1-loc-8) 3924)
  (= (cost-drive city-1-loc-8 city-1-loc-14) 3058)
  (= (cost-drive city-1-loc-15 city-1-loc-9) 1705)
  (= (cost-drive city-1-loc-9 city-1-loc-15) 2747)
  (= (cost-drive city-1-loc-15 city-1-loc-11) 4041)
  (= (cost-drive city-1-loc-11 city-1-loc-15) 3988)
  (= (cost-drive city-1-loc-15 city-1-loc-13) 5332)
  (= (cost-drive city-1-loc-13 city-1-loc-15) 9951)
  (= (cost-drive city-1-loc-16 city-1-loc-11) 4574)
  (= (cost-drive city-1-loc-11 city-1-loc-16) 3544)
  (= (cost-drive city-1-loc-16 city-1-loc-13) 7502)
  (= (cost-drive city-1-loc-13 city-1-loc-16) 7286)
  (= (cost-drive city-1-loc-16 city-1-loc-15) 9621)
  (= (cost-drive city-1-loc-15 city-1-loc-16) 8195)
  (= (cost-drive city-1-loc-17 city-1-loc-8) 4841)
  (= (cost-drive city-1-loc-8 city-1-loc-17) 7686)
  (= (cost-drive city-1-loc-17 city-1-loc-10) 6483)
  (= (cost-drive city-1-loc-10 city-1-loc-17) 1863)
  (= (cost-drive city-1-loc-17 city-1-loc-11) 3064)
  (= (cost-drive city-1-loc-11 city-1-loc-17) 7144)
  (= (cost-drive city-1-loc-17 city-1-loc-15) 3620)
  (= (cost-drive city-1-loc-15 city-1-loc-17) 7975)
  (= (cost-drive city-1-loc-18 city-1-loc-9) 4641)
  (= (cost-drive city-1-loc-9 city-1-loc-18) 6855)
  (= (cost-drive city-1-loc-18 city-1-loc-13) 2856)
  (= (cost-drive city-1-loc-13 city-1-loc-18) 9581)
  (= (cost-drive city-1-loc-18 city-1-loc-15) 3836)
  (= (cost-drive city-1-loc-15 city-1-loc-18) 4431)
  (= (cost-drive city-1-loc-19 city-1-loc-12) 3586)
  (= (cost-drive city-1-loc-12 city-1-loc-19) 9033)
  (= (cost-drive city-1-loc-20 city-1-loc-2) 2491)
  (= (cost-drive city-1-loc-2 city-1-loc-20) 7130)
  (= (cost-drive city-1-loc-20 city-1-loc-18) 1830)
  (= (cost-drive city-1-loc-18 city-1-loc-20) 5253)
  (= (cost-drive city-2-loc-7 city-2-loc-3) 4554)
  (= (cost-drive city-2-loc-3 city-2-loc-7) 4723)
  (= (cost-drive city-2-loc-8 city-2-loc-6) 7520)
  (= (cost-drive city-2-loc-6 city-2-loc-8) 6835)
  (= (cost-drive city-2-loc-9 city-2-loc-2) 6892)
  (= (cost-drive city-2-loc-2 city-2-loc-9) 4147)
  (= (cost-drive city-2-loc-10 city-2-loc-4) 6364)
  (= (cost-drive city-2-loc-4 city-2-loc-10) 3656)
  (= (cost-drive city-2-loc-11 city-2-loc-3) 3480)
  (= (cost-drive city-2-loc-3 city-2-loc-11) 2711)
  (= (cost-drive city-2-loc-11 city-2-loc-9) 2048)
  (= (cost-drive city-2-loc-9 city-2-loc-11) 3401)
  (= (cost-drive city-2-loc-12 city-2-loc-4) 9018)
  (= (cost-drive city-2-loc-4 city-2-loc-12) 9132)
  (= (cost-drive city-2-loc-12 city-2-loc-10) 3917)
  (= (cost-drive city-2-loc-10 city-2-loc-12) 3410)
  (= (cost-drive city-2-loc-13 city-2-loc-1) 7336)
  (= (cost-drive city-2-loc-1 city-2-loc-13) 2013)
  (= (cost-drive city-2-loc-13 city-2-loc-9) 2037)
  (= (cost-drive city-2-loc-9 city-2-loc-13) 7747)
  (= (cost-drive city-2-loc-14 city-2-loc-10) 5397)
  (= (cost-drive city-2-loc-10 city-2-loc-14) 5582)
  (= (cost-drive city-2-loc-14 city-2-loc-12) 8256)
  (= (cost-drive city-2-loc-12 city-2-loc-14) 7643)
  (= (cost-drive city-2-loc-15 city-2-loc-1) 5847)
  (= (cost-drive city-2-loc-1 city-2-loc-15) 3884)
  (= (cost-drive city-2-loc-15 city-2-loc-4) 5249)
  (= (cost-drive city-2-loc-4 city-2-loc-15) 5210)
  (= (cost-drive city-2-loc-15 city-2-loc-10) 5541)
  (= (cost-drive city-2-loc-10 city-2-loc-15) 3773)
  (= (cost-drive city-2-loc-16 city-2-loc-1) 6864)
  (= (cost-drive city-2-loc-1 city-2-loc-16) 4790)
  (= (cost-drive city-2-loc-16 city-2-loc-9) 7386)
  (= (cost-drive city-2-loc-9 city-2-loc-16) 9185)
  (= (cost-drive city-2-loc-16 city-2-loc-13) 5408)
  (= (cost-drive city-2-loc-13 city-2-loc-16) 9513)
  (= (cost-drive city-2-loc-17 city-2-loc-1) 3308)
  (= (cost-drive city-2-loc-1 city-2-loc-17) 9797)
  (= (cost-drive city-2-loc-17 city-2-loc-10) 6688)
  (= (cost-drive city-2-loc-10 city-2-loc-17) 2221)
  (= (cost-drive city-2-loc-17 city-2-loc-14) 8328)
  (= (cost-drive city-2-loc-14 city-2-loc-17) 2649)
  (= (cost-drive city-2-loc-17 city-2-loc-15) 1855)
  (= (cost-drive city-2-loc-15 city-2-loc-17) 5997)
  (= (cost-drive city-2-loc-18 city-2-loc-3) 1126)
  (= (cost-drive city-2-loc-3 city-2-loc-18) 8760)
  (= (cost-drive city-2-loc-18 city-2-loc-7) 8059)
  (= (cost-drive city-2-loc-7 city-2-loc-18) 6239)
  (= (cost-drive city-2-loc-18 city-2-loc-11) 4457)
  (= (cost-drive city-2-loc-11 city-2-loc-18) 5900)
  (= (cost-drive city-2-loc-19 city-2-loc-1) 2569)
  (= (cost-drive city-2-loc-1 city-2-loc-19) 6015)
  (= (cost-drive city-2-loc-19 city-2-loc-13) 4916)
  (= (cost-drive city-2-loc-13 city-2-loc-19) 2402)
  (= (cost-drive city-2-loc-19 city-2-loc-15) 7936)
  (= (cost-drive city-2-loc-15 city-2-loc-19) 2255)
  (= (cost-drive city-2-loc-19 city-2-loc-16) 3452)
  (= (cost-drive city-2-loc-16 city-2-loc-19) 4234)
  (= (cost-drive city-2-loc-19 city-2-loc-17) 4368)
  (= (cost-drive city-2-loc-17 city-2-loc-19) 3756)
  (= (cost-drive city-2-loc-20 city-2-loc-5) 2319)
  (= (cost-drive city-2-loc-5 city-2-loc-20) 5254)
  (= (cost-drive city-2-loc-20 city-2-loc-8) 9249)
  (= (cost-drive city-2-loc-8 city-2-loc-20) 2837)
  (= (cost-drive city-2-loc-20 city-2-loc-13) 7075)
  (= (cost-drive city-2-loc-13 city-2-loc-20) 2309)
  (= (cost-drive city-2-loc-20 city-2-loc-19) 5047)
  (= (cost-drive city-2-loc-19 city-2-loc-20) 7862)
  (= (cost-drive city-1-loc-12 city-2-loc-4) 3275)
  (= (cost-drive city-2-loc-4 city-1-loc-12) 4283)
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
  ; 36,368 -> 273,425
  (road city-1-loc-18 city-1-loc-9)
  ; 273,425 -> 36,368
  (road city-1-loc-9 city-1-loc-18)
  ; 36,368 -> 55,605
  (road city-1-loc-18 city-1-loc-13)
  ; 55,605 -> 36,368
  (road city-1-loc-13 city-1-loc-18)
  ; 36,368 -> 263,567
  (road city-1-loc-18 city-1-loc-15)
  ; 263,567 -> 36,368
  (road city-1-loc-15 city-1-loc-18)
  ; 806,18 -> 930,259
  (road city-1-loc-19 city-1-loc-12)
  ; 930,259 -> 806,18
  (road city-1-loc-12 city-1-loc-19)
  ; 138,109 -> 384,50
  (road city-1-loc-20 city-1-loc-2)
  ; 384,50 -> 138,109
  (road city-1-loc-2 city-1-loc-20)
  ; 138,109 -> 36,368
  (road city-1-loc-20 city-1-loc-18)
  ; 36,368 -> 138,109
  (road city-1-loc-18 city-1-loc-20)
  ; 2058,770 -> 2231,881
  (road city-2-loc-7 city-2-loc-3)
  ; 2231,881 -> 2058,770
  (road city-2-loc-3 city-2-loc-7)
  ; 2988,202 -> 2989,457
  (road city-2-loc-8 city-2-loc-6)
  ; 2989,457 -> 2988,202
  (road city-2-loc-6 city-2-loc-8)
  ; 2589,754 -> 2842,866
  (road city-2-loc-9 city-2-loc-2)
  ; 2842,866 -> 2589,754
  (road city-2-loc-2 city-2-loc-9)
  ; 2053,153 -> 2013,291
  (road city-2-loc-10 city-2-loc-4)
  ; 2013,291 -> 2053,153
  (road city-2-loc-4 city-2-loc-10)
  ; 2362,862 -> 2231,881
  (road city-2-loc-11 city-2-loc-3)
  ; 2231,881 -> 2362,862
  (road city-2-loc-3 city-2-loc-11)
  ; 2362,862 -> 2589,754
  (road city-2-loc-11 city-2-loc-9)
  ; 2589,754 -> 2362,862
  (road city-2-loc-9 city-2-loc-11)
  ; 2006,60 -> 2013,291
  (road city-2-loc-12 city-2-loc-4)
  ; 2013,291 -> 2006,60
  (road city-2-loc-4 city-2-loc-12)
  ; 2006,60 -> 2053,153
  (road city-2-loc-12 city-2-loc-10)
  ; 2053,153 -> 2006,60
  (road city-2-loc-10 city-2-loc-12)
  ; 2659,497 -> 2392,433
  (road city-2-loc-13 city-2-loc-1)
  ; 2392,433 -> 2659,497
  (road city-2-loc-1 city-2-loc-13)
  ; 2659,497 -> 2589,754
  (road city-2-loc-13 city-2-loc-9)
  ; 2589,754 -> 2659,497
  (road city-2-loc-9 city-2-loc-13)
  ; 2257,5 -> 2053,153
  (road city-2-loc-14 city-2-loc-10)
  ; 2053,153 -> 2257,5
  (road city-2-loc-10 city-2-loc-14)
  ; 2257,5 -> 2006,60
  (road city-2-loc-14 city-2-loc-12)
  ; 2006,60 -> 2257,5
  (road city-2-loc-12 city-2-loc-14)
  ; 2245,346 -> 2392,433
  (road city-2-loc-15 city-2-loc-1)
  ; 2392,433 -> 2245,346
  (road city-2-loc-1 city-2-loc-15)
  ; 2245,346 -> 2013,291
  (road city-2-loc-15 city-2-loc-4)
  ; 2013,291 -> 2245,346
  (road city-2-loc-4 city-2-loc-15)
  ; 2245,346 -> 2053,153
  (road city-2-loc-15 city-2-loc-10)
  ; 2053,153 -> 2245,346
  (road city-2-loc-10 city-2-loc-15)
  ; 2559,565 -> 2392,433
  (road city-2-loc-16 city-2-loc-1)
  ; 2392,433 -> 2559,565
  (road city-2-loc-1 city-2-loc-16)
  ; 2559,565 -> 2589,754
  (road city-2-loc-16 city-2-loc-9)
  ; 2589,754 -> 2559,565
  (road city-2-loc-9 city-2-loc-16)
  ; 2559,565 -> 2659,497
  (road city-2-loc-16 city-2-loc-13)
  ; 2659,497 -> 2559,565
  (road city-2-loc-13 city-2-loc-16)
  ; 2347,149 -> 2392,433
  (road city-2-loc-17 city-2-loc-1)
  ; 2392,433 -> 2347,149
  (road city-2-loc-1 city-2-loc-17)
  ; 2347,149 -> 2053,153
  (road city-2-loc-17 city-2-loc-10)
  ; 2053,153 -> 2347,149
  (road city-2-loc-10 city-2-loc-17)
  ; 2347,149 -> 2257,5
  (road city-2-loc-17 city-2-loc-14)
  ; 2257,5 -> 2347,149
  (road city-2-loc-14 city-2-loc-17)
  ; 2347,149 -> 2245,346
  (road city-2-loc-17 city-2-loc-15)
  ; 2245,346 -> 2347,149
  (road city-2-loc-15 city-2-loc-17)
  ; 2170,709 -> 2231,881
  (road city-2-loc-18 city-2-loc-3)
  ; 2231,881 -> 2170,709
  (road city-2-loc-3 city-2-loc-18)
  ; 2170,709 -> 2058,770
  (road city-2-loc-18 city-2-loc-7)
  ; 2058,770 -> 2170,709
  (road city-2-loc-7 city-2-loc-18)
  ; 2170,709 -> 2362,862
  (road city-2-loc-18 city-2-loc-11)
  ; 2362,862 -> 2170,709
  (road city-2-loc-11 city-2-loc-18)
  ; 2521,375 -> 2392,433
  (road city-2-loc-19 city-2-loc-1)
  ; 2392,433 -> 2521,375
  (road city-2-loc-1 city-2-loc-19)
  ; 2521,375 -> 2659,497
  (road city-2-loc-19 city-2-loc-13)
  ; 2659,497 -> 2521,375
  (road city-2-loc-13 city-2-loc-19)
  ; 2521,375 -> 2245,346
  (road city-2-loc-19 city-2-loc-15)
  ; 2245,346 -> 2521,375
  (road city-2-loc-15 city-2-loc-19)
  ; 2521,375 -> 2559,565
  (road city-2-loc-19 city-2-loc-16)
  ; 2559,565 -> 2521,375
  (road city-2-loc-16 city-2-loc-19)
  ; 2521,375 -> 2347,149
  (road city-2-loc-19 city-2-loc-17)
  ; 2347,149 -> 2521,375
  (road city-2-loc-17 city-2-loc-19)
  ; 2720,241 -> 2682,8
  (road city-2-loc-20 city-2-loc-5)
  ; 2682,8 -> 2720,241
  (road city-2-loc-5 city-2-loc-20)
  ; 2720,241 -> 2988,202
  (road city-2-loc-20 city-2-loc-8)
  ; 2988,202 -> 2720,241
  (road city-2-loc-8 city-2-loc-20)
  ; 2720,241 -> 2659,497
  (road city-2-loc-20 city-2-loc-13)
  ; 2659,497 -> 2720,241
  (road city-2-loc-13 city-2-loc-20)
  ; 2720,241 -> 2521,375
  (road city-2-loc-20 city-2-loc-19)
  ; 2521,375 -> 2720,241
  (road city-2-loc-19 city-2-loc-20)
  ; 930,259 <-> 2013,291
  (road city-1-loc-12 city-2-loc-4)
  (road city-2-loc-4 city-1-loc-12)
  (at package-1 city-1-loc-10)
  (at package-2 city-1-loc-6)
  (at package-3 city-1-loc-5)
  (at package-4 city-1-loc-14)
  (at package-5 city-1-loc-13)
  (at package-6 city-1-loc-15)
  (at package-7 city-1-loc-3)
  (at package-8 city-1-loc-18)
  (at package-9 city-1-loc-8)
  (at package-10 city-1-loc-6)
  (at package-11 city-1-loc-4)
  (at truck-1 city-2-loc-11)
  (capacity truck-1 capacity-3)
  (at truck-2 city-2-loc-13)
  (capacity truck-2 capacity-3)
  (at truck-3 city-2-loc-15)
  (capacity truck-3 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-14)
  (at package-2 city-2-loc-7)
  (at package-3 city-2-loc-11)
  (at package-4 city-2-loc-8)
  (at package-5 city-2-loc-5)
  (at package-6 city-2-loc-12)
  (at package-7 city-2-loc-16)
  (at package-8 city-2-loc-2)
  (at package-9 city-2-loc-6)
  (at package-10 city-2-loc-18)
  (at package-11 city-2-loc-3)
 ))
 (:metric minimize (total-cost))
)
