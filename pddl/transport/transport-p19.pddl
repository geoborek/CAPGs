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
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 9946)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 3568)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 8809)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 8501)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-1) 5718)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-1) 8368)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-1) 2048)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-1) 2453)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-1) 1233)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-1) 6207)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-1) 5116)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-1) 4704)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-1) 3069)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-1) 7180)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-1) 4407)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-1) 5503)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-1) 5855)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-1) 3872)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-1) 7835)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-1) 2743)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-1) 8257)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-1) 9271)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-1) 3816)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-1) 7780)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-1) 8608)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-1) 1606)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-1) 5683)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-1) 9738)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-1) 8874)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-1) 2478)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-1) 5912)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-1) 3508)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-1) 7020)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-1) 1840)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-1) 1207)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-1) 5633)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-1) 4419)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-1) 5260)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-1) 3805)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-1) 9739)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-1) 7544)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-1) 1705)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-1) 1426)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-1) 4049)
  (= (cost-drive city-1-loc-15 city-1-loc-10 truck-1) 2986)
  (= (cost-drive city-1-loc-10 city-1-loc-15 truck-1) 9649)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-1) 6459)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-1) 4868)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-1) 3828)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-1) 5666)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-1) 8625)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-1) 3241)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-1) 4948)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-1) 8475)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-1) 4048)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-1) 9405)
  (= (cost-drive city-1-loc-17 city-1-loc-8 truck-1) 3849)
  (= (cost-drive city-1-loc-8 city-1-loc-17 truck-1) 5475)
  (= (cost-drive city-1-loc-17 city-1-loc-10 truck-1) 8700)
  (= (cost-drive city-1-loc-10 city-1-loc-17 truck-1) 3693)
  (= (cost-drive city-1-loc-17 city-1-loc-11 truck-1) 6933)
  (= (cost-drive city-1-loc-11 city-1-loc-17 truck-1) 2897)
  (= (cost-drive city-1-loc-17 city-1-loc-15 truck-1) 1208)
  (= (cost-drive city-1-loc-15 city-1-loc-17 truck-1) 2490)
  (= (cost-drive city-1-loc-17 city-1-loc-16 truck-1) 5816)
  (= (cost-drive city-1-loc-16 city-1-loc-17 truck-1) 4834)
  (= (cost-drive city-1-loc-18 city-1-loc-9 truck-1) 1406)
  (= (cost-drive city-1-loc-9 city-1-loc-18 truck-1) 2838)
  (= (cost-drive city-1-loc-18 city-1-loc-11 truck-1) 7358)
  (= (cost-drive city-1-loc-11 city-1-loc-18 truck-1) 4237)
  (= (cost-drive city-1-loc-18 city-1-loc-13 truck-1) 1917)
  (= (cost-drive city-1-loc-13 city-1-loc-18 truck-1) 2829)
  (= (cost-drive city-1-loc-18 city-1-loc-15 truck-1) 2204)
  (= (cost-drive city-1-loc-15 city-1-loc-18 truck-1) 8999)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 6506)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 1523)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-1) 7997)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-1) 6265)
  (= (cost-drive city-2-loc-6 city-2-loc-5 truck-1) 1340)
  (= (cost-drive city-2-loc-5 city-2-loc-6 truck-1) 2515)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-1) 5903)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-1) 4678)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-1) 3874)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-1) 4872)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-1) 1088)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-1) 2491)
  (= (cost-drive city-2-loc-8 city-2-loc-1 truck-1) 2822)
  (= (cost-drive city-2-loc-1 city-2-loc-8 truck-1) 7477)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-1) 9800)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-1) 3668)
  (= (cost-drive city-2-loc-8 city-2-loc-4 truck-1) 2836)
  (= (cost-drive city-2-loc-4 city-2-loc-8 truck-1) 4310)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-1) 8689)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-1) 2781)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-1) 3655)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-1) 5354)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-1) 1272)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-1) 4867)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-1) 7878)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-1) 2879)
  (= (cost-drive city-2-loc-10 city-2-loc-6 truck-1) 4373)
  (= (cost-drive city-2-loc-6 city-2-loc-10 truck-1) 2651)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-1) 4385)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-1) 4648)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-1) 9953)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-1) 8416)
  (= (cost-drive city-2-loc-11 city-2-loc-10 truck-1) 1963)
  (= (cost-drive city-2-loc-10 city-2-loc-11 truck-1) 1812)
  (= (cost-drive city-2-loc-12 city-2-loc-2 truck-1) 8934)
  (= (cost-drive city-2-loc-2 city-2-loc-12 truck-1) 7185)
  (= (cost-drive city-2-loc-13 city-2-loc-2 truck-1) 9900)
  (= (cost-drive city-2-loc-2 city-2-loc-13 truck-1) 6778)
  (= (cost-drive city-2-loc-13 city-2-loc-3 truck-1) 6585)
  (= (cost-drive city-2-loc-3 city-2-loc-13 truck-1) 5538)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-1) 3510)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-1) 9512)
  (= (cost-drive city-2-loc-13 city-2-loc-7 truck-1) 8294)
  (= (cost-drive city-2-loc-7 city-2-loc-13 truck-1) 2531)
  (= (cost-drive city-2-loc-13 city-2-loc-8 truck-1) 7949)
  (= (cost-drive city-2-loc-8 city-2-loc-13 truck-1) 6824)
  (= (cost-drive city-2-loc-13 city-2-loc-10 truck-1) 6617)
  (= (cost-drive city-2-loc-10 city-2-loc-13 truck-1) 7403)
  (= (cost-drive city-2-loc-14 city-2-loc-2 truck-1) 2866)
  (= (cost-drive city-2-loc-2 city-2-loc-14 truck-1) 5119)
  (= (cost-drive city-2-loc-14 city-2-loc-3 truck-1) 7462)
  (= (cost-drive city-2-loc-3 city-2-loc-14 truck-1) 5064)
  (= (cost-drive city-2-loc-14 city-2-loc-7 truck-1) 3638)
  (= (cost-drive city-2-loc-7 city-2-loc-14 truck-1) 8768)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-1) 8128)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-1) 4528)
  (= (cost-drive city-2-loc-14 city-2-loc-13 truck-1) 5736)
  (= (cost-drive city-2-loc-13 city-2-loc-14 truck-1) 3774)
  (= (cost-drive city-2-loc-15 city-2-loc-2 truck-1) 7556)
  (= (cost-drive city-2-loc-2 city-2-loc-15 truck-1) 1644)
  (= (cost-drive city-2-loc-15 city-2-loc-3 truck-1) 2409)
  (= (cost-drive city-2-loc-3 city-2-loc-15 truck-1) 5384)
  (= (cost-drive city-2-loc-15 city-2-loc-5 truck-1) 2557)
  (= (cost-drive city-2-loc-5 city-2-loc-15 truck-1) 3840)
  (= (cost-drive city-2-loc-15 city-2-loc-6 truck-1) 3931)
  (= (cost-drive city-2-loc-6 city-2-loc-15 truck-1) 2657)
  (= (cost-drive city-2-loc-15 city-2-loc-10 truck-1) 6726)
  (= (cost-drive city-2-loc-10 city-2-loc-15 truck-1) 2566)
  (= (cost-drive city-2-loc-15 city-2-loc-13 truck-1) 9716)
  (= (cost-drive city-2-loc-13 city-2-loc-15 truck-1) 5757)
  (= (cost-drive city-2-loc-16 city-2-loc-3 truck-1) 1044)
  (= (cost-drive city-2-loc-3 city-2-loc-16 truck-1) 7468)
  (= (cost-drive city-2-loc-16 city-2-loc-6 truck-1) 6868)
  (= (cost-drive city-2-loc-6 city-2-loc-16 truck-1) 3594)
  (= (cost-drive city-2-loc-16 city-2-loc-8 truck-1) 2708)
  (= (cost-drive city-2-loc-8 city-2-loc-16 truck-1) 8957)
  (= (cost-drive city-2-loc-16 city-2-loc-13 truck-1) 4168)
  (= (cost-drive city-2-loc-13 city-2-loc-16 truck-1) 1227)
  (= (cost-drive city-2-loc-17 city-2-loc-5 truck-1) 5823)
  (= (cost-drive city-2-loc-5 city-2-loc-17 truck-1) 6186)
  (= (cost-drive city-2-loc-17 city-2-loc-6 truck-1) 3611)
  (= (cost-drive city-2-loc-6 city-2-loc-17 truck-1) 3933)
  (= (cost-drive city-2-loc-17 city-2-loc-10 truck-1) 4216)
  (= (cost-drive city-2-loc-10 city-2-loc-17 truck-1) 1396)
  (= (cost-drive city-2-loc-17 city-2-loc-15 truck-1) 3190)
  (= (cost-drive city-2-loc-15 city-2-loc-17 truck-1) 2497)
  (= (cost-drive city-2-loc-18 city-2-loc-1 truck-1) 4749)
  (= (cost-drive city-2-loc-1 city-2-loc-18 truck-1) 3252)
  (= (cost-drive city-2-loc-18 city-2-loc-4 truck-1) 5652)
  (= (cost-drive city-2-loc-4 city-2-loc-18 truck-1) 4590)
  (= (cost-drive city-2-loc-18 city-2-loc-8 truck-1) 9786)
  (= (cost-drive city-2-loc-8 city-2-loc-18 truck-1) 1874)
  (= (cost-drive city-1-loc-12 city-2-loc-5 truck-1) 6591)
  (= (cost-drive city-2-loc-5 city-1-loc-12 truck-1) 5492)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 4242)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 8404)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 1074)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 2063)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-2) 1408)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-2) 2145)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-2) 8374)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-2) 5345)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-2) 8527)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-2) 2488)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-2) 4204)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-2) 3951)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-2) 1969)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-2) 2702)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-2) 2598)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-2) 9861)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-2) 2482)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-2) 9679)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-2) 3035)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-2) 7158)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-2) 8227)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-2) 2297)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-2) 7837)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-2) 5732)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-2) 6087)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-2) 1653)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-2) 2013)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-2) 5657)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-2) 6962)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-2) 8103)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-2) 8508)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-2) 5674)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-2) 6157)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-2) 8619)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-2) 9130)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-2) 6866)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-2) 1326)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-2) 6898)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-2) 3264)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-2) 6312)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-2) 6388)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-2) 9922)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-2) 1555)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-2) 8320)
  (= (cost-drive city-1-loc-15 city-1-loc-10 truck-2) 1286)
  (= (cost-drive city-1-loc-10 city-1-loc-15 truck-2) 6791)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-2) 5324)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-2) 9042)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-2) 2287)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-2) 8903)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-2) 5443)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-2) 2321)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-2) 4169)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-2) 3241)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-2) 5319)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-2) 2639)
  (= (cost-drive city-1-loc-17 city-1-loc-8 truck-2) 8990)
  (= (cost-drive city-1-loc-8 city-1-loc-17 truck-2) 4982)
  (= (cost-drive city-1-loc-17 city-1-loc-10 truck-2) 3126)
  (= (cost-drive city-1-loc-10 city-1-loc-17 truck-2) 2167)
  (= (cost-drive city-1-loc-17 city-1-loc-11 truck-2) 3912)
  (= (cost-drive city-1-loc-11 city-1-loc-17 truck-2) 1814)
  (= (cost-drive city-1-loc-17 city-1-loc-15 truck-2) 3693)
  (= (cost-drive city-1-loc-15 city-1-loc-17 truck-2) 4992)
  (= (cost-drive city-1-loc-17 city-1-loc-16 truck-2) 2411)
  (= (cost-drive city-1-loc-16 city-1-loc-17 truck-2) 9602)
  (= (cost-drive city-1-loc-18 city-1-loc-9 truck-2) 9958)
  (= (cost-drive city-1-loc-9 city-1-loc-18 truck-2) 3682)
  (= (cost-drive city-1-loc-18 city-1-loc-11 truck-2) 4559)
  (= (cost-drive city-1-loc-11 city-1-loc-18 truck-2) 9344)
  (= (cost-drive city-1-loc-18 city-1-loc-13 truck-2) 2962)
  (= (cost-drive city-1-loc-13 city-1-loc-18 truck-2) 6388)
  (= (cost-drive city-1-loc-18 city-1-loc-15 truck-2) 2434)
  (= (cost-drive city-1-loc-15 city-1-loc-18 truck-2) 8678)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 5746)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 5758)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-2) 3011)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-2) 3784)
  (= (cost-drive city-2-loc-6 city-2-loc-5 truck-2) 7929)
  (= (cost-drive city-2-loc-5 city-2-loc-6 truck-2) 7738)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-2) 2949)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-2) 9174)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-2) 4963)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-2) 1592)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-2) 3172)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-2) 5270)
  (= (cost-drive city-2-loc-8 city-2-loc-1 truck-2) 6986)
  (= (cost-drive city-2-loc-1 city-2-loc-8 truck-2) 6897)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-2) 5390)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-2) 2302)
  (= (cost-drive city-2-loc-8 city-2-loc-4 truck-2) 9740)
  (= (cost-drive city-2-loc-4 city-2-loc-8 truck-2) 2747)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-2) 7044)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-2) 4654)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-2) 5641)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-2) 7712)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-2) 4000)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-2) 7387)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-2) 7394)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-2) 2224)
  (= (cost-drive city-2-loc-10 city-2-loc-6 truck-2) 1823)
  (= (cost-drive city-2-loc-6 city-2-loc-10 truck-2) 8009)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-2) 2435)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-2) 3856)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-2) 4928)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-2) 8551)
  (= (cost-drive city-2-loc-11 city-2-loc-10 truck-2) 3552)
  (= (cost-drive city-2-loc-10 city-2-loc-11 truck-2) 5485)
  (= (cost-drive city-2-loc-12 city-2-loc-2 truck-2) 3677)
  (= (cost-drive city-2-loc-2 city-2-loc-12 truck-2) 1101)
  (= (cost-drive city-2-loc-13 city-2-loc-2 truck-2) 2557)
  (= (cost-drive city-2-loc-2 city-2-loc-13 truck-2) 9023)
  (= (cost-drive city-2-loc-13 city-2-loc-3 truck-2) 8453)
  (= (cost-drive city-2-loc-3 city-2-loc-13 truck-2) 1225)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-2) 8781)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-2) 4806)
  (= (cost-drive city-2-loc-13 city-2-loc-7 truck-2) 1696)
  (= (cost-drive city-2-loc-7 city-2-loc-13 truck-2) 3902)
  (= (cost-drive city-2-loc-13 city-2-loc-8 truck-2) 5522)
  (= (cost-drive city-2-loc-8 city-2-loc-13 truck-2) 2228)
  (= (cost-drive city-2-loc-13 city-2-loc-10 truck-2) 3160)
  (= (cost-drive city-2-loc-10 city-2-loc-13 truck-2) 2897)
  (= (cost-drive city-2-loc-14 city-2-loc-2 truck-2) 8801)
  (= (cost-drive city-2-loc-2 city-2-loc-14 truck-2) 2778)
  (= (cost-drive city-2-loc-14 city-2-loc-3 truck-2) 8878)
  (= (cost-drive city-2-loc-3 city-2-loc-14 truck-2) 7205)
  (= (cost-drive city-2-loc-14 city-2-loc-7 truck-2) 5401)
  (= (cost-drive city-2-loc-7 city-2-loc-14 truck-2) 9142)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-2) 7338)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-2) 4339)
  (= (cost-drive city-2-loc-14 city-2-loc-13 truck-2) 6901)
  (= (cost-drive city-2-loc-13 city-2-loc-14 truck-2) 9129)
  (= (cost-drive city-2-loc-15 city-2-loc-2 truck-2) 3888)
  (= (cost-drive city-2-loc-2 city-2-loc-15 truck-2) 2844)
  (= (cost-drive city-2-loc-15 city-2-loc-3 truck-2) 1548)
  (= (cost-drive city-2-loc-3 city-2-loc-15 truck-2) 5488)
  (= (cost-drive city-2-loc-15 city-2-loc-5 truck-2) 9447)
  (= (cost-drive city-2-loc-5 city-2-loc-15 truck-2) 2090)
  (= (cost-drive city-2-loc-15 city-2-loc-6 truck-2) 8373)
  (= (cost-drive city-2-loc-6 city-2-loc-15 truck-2) 2568)
  (= (cost-drive city-2-loc-15 city-2-loc-10 truck-2) 4397)
  (= (cost-drive city-2-loc-10 city-2-loc-15 truck-2) 9059)
  (= (cost-drive city-2-loc-15 city-2-loc-13 truck-2) 2288)
  (= (cost-drive city-2-loc-13 city-2-loc-15 truck-2) 3564)
  (= (cost-drive city-2-loc-16 city-2-loc-3 truck-2) 4867)
  (= (cost-drive city-2-loc-3 city-2-loc-16 truck-2) 9889)
  (= (cost-drive city-2-loc-16 city-2-loc-6 truck-2) 5731)
  (= (cost-drive city-2-loc-6 city-2-loc-16 truck-2) 2344)
  (= (cost-drive city-2-loc-16 city-2-loc-8 truck-2) 5671)
  (= (cost-drive city-2-loc-8 city-2-loc-16 truck-2) 6878)
  (= (cost-drive city-2-loc-16 city-2-loc-13 truck-2) 3483)
  (= (cost-drive city-2-loc-13 city-2-loc-16 truck-2) 1905)
  (= (cost-drive city-2-loc-17 city-2-loc-5 truck-2) 4877)
  (= (cost-drive city-2-loc-5 city-2-loc-17 truck-2) 9213)
  (= (cost-drive city-2-loc-17 city-2-loc-6 truck-2) 8404)
  (= (cost-drive city-2-loc-6 city-2-loc-17 truck-2) 3730)
  (= (cost-drive city-2-loc-17 city-2-loc-10 truck-2) 4503)
  (= (cost-drive city-2-loc-10 city-2-loc-17 truck-2) 2721)
  (= (cost-drive city-2-loc-17 city-2-loc-15 truck-2) 9137)
  (= (cost-drive city-2-loc-15 city-2-loc-17 truck-2) 8755)
  (= (cost-drive city-2-loc-18 city-2-loc-1 truck-2) 4133)
  (= (cost-drive city-2-loc-1 city-2-loc-18 truck-2) 8398)
  (= (cost-drive city-2-loc-18 city-2-loc-4 truck-2) 3020)
  (= (cost-drive city-2-loc-4 city-2-loc-18 truck-2) 4303)
  (= (cost-drive city-2-loc-18 city-2-loc-8 truck-2) 9299)
  (= (cost-drive city-2-loc-8 city-2-loc-18 truck-2) 6488)
  (= (cost-drive city-1-loc-12 city-2-loc-5 truck-2) 2969)
  (= (cost-drive city-2-loc-5 city-1-loc-12 truck-2) 6944)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-3) 6067)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-3) 9887)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-3) 9892)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-3) 7025)
  (= (cost-drive city-1-loc-5 city-1-loc-4 truck-3) 2491)
  (= (cost-drive city-1-loc-4 city-1-loc-5 truck-3) 2632)
  (= (cost-drive city-1-loc-6 city-1-loc-2 truck-3) 2898)
  (= (cost-drive city-1-loc-2 city-1-loc-6 truck-3) 8568)
  (= (cost-drive city-1-loc-7 city-1-loc-1 truck-3) 6356)
  (= (cost-drive city-1-loc-1 city-1-loc-7 truck-3) 3393)
  (= (cost-drive city-1-loc-7 city-1-loc-3 truck-3) 2048)
  (= (cost-drive city-1-loc-3 city-1-loc-7 truck-3) 4899)
  (= (cost-drive city-1-loc-7 city-1-loc-4 truck-3) 2916)
  (= (cost-drive city-1-loc-4 city-1-loc-7 truck-3) 3662)
  (= (cost-drive city-1-loc-8 city-1-loc-7 truck-3) 3438)
  (= (cost-drive city-1-loc-7 city-1-loc-8 truck-3) 1635)
  (= (cost-drive city-1-loc-9 city-1-loc-6 truck-3) 3155)
  (= (cost-drive city-1-loc-6 city-1-loc-9 truck-3) 8336)
  (= (cost-drive city-1-loc-10 city-1-loc-3 truck-3) 6451)
  (= (cost-drive city-1-loc-3 city-1-loc-10 truck-3) 4621)
  (= (cost-drive city-1-loc-10 city-1-loc-7 truck-3) 1887)
  (= (cost-drive city-1-loc-7 city-1-loc-10 truck-3) 1448)
  (= (cost-drive city-1-loc-10 city-1-loc-8 truck-3) 9848)
  (= (cost-drive city-1-loc-8 city-1-loc-10 truck-3) 8692)
  (= (cost-drive city-1-loc-10 city-1-loc-9 truck-3) 8081)
  (= (cost-drive city-1-loc-9 city-1-loc-10 truck-3) 1031)
  (= (cost-drive city-1-loc-11 city-1-loc-9 truck-3) 1141)
  (= (cost-drive city-1-loc-9 city-1-loc-11 truck-3) 5915)
  (= (cost-drive city-1-loc-12 city-1-loc-1 truck-3) 3032)
  (= (cost-drive city-1-loc-1 city-1-loc-12 truck-3) 4700)
  (= (cost-drive city-1-loc-12 city-1-loc-3 truck-3) 1936)
  (= (cost-drive city-1-loc-3 city-1-loc-12 truck-3) 2757)
  (= (cost-drive city-1-loc-13 city-1-loc-9 truck-3) 1056)
  (= (cost-drive city-1-loc-9 city-1-loc-13 truck-3) 2249)
  (= (cost-drive city-1-loc-13 city-1-loc-11 truck-3) 6300)
  (= (cost-drive city-1-loc-11 city-1-loc-13 truck-3) 8944)
  (= (cost-drive city-1-loc-14 city-1-loc-4 truck-3) 4598)
  (= (cost-drive city-1-loc-4 city-1-loc-14 truck-3) 8354)
  (= (cost-drive city-1-loc-14 city-1-loc-5 truck-3) 4371)
  (= (cost-drive city-1-loc-5 city-1-loc-14 truck-3) 4766)
  (= (cost-drive city-1-loc-14 city-1-loc-8 truck-3) 1695)
  (= (cost-drive city-1-loc-8 city-1-loc-14 truck-3) 5655)
  (= (cost-drive city-1-loc-15 city-1-loc-9 truck-3) 4224)
  (= (cost-drive city-1-loc-9 city-1-loc-15 truck-3) 1741)
  (= (cost-drive city-1-loc-15 city-1-loc-10 truck-3) 2380)
  (= (cost-drive city-1-loc-10 city-1-loc-15 truck-3) 4246)
  (= (cost-drive city-1-loc-15 city-1-loc-11 truck-3) 9539)
  (= (cost-drive city-1-loc-11 city-1-loc-15 truck-3) 6261)
  (= (cost-drive city-1-loc-15 city-1-loc-13 truck-3) 8447)
  (= (cost-drive city-1-loc-13 city-1-loc-15 truck-3) 5519)
  (= (cost-drive city-1-loc-16 city-1-loc-11 truck-3) 7528)
  (= (cost-drive city-1-loc-11 city-1-loc-16 truck-3) 3206)
  (= (cost-drive city-1-loc-16 city-1-loc-13 truck-3) 4082)
  (= (cost-drive city-1-loc-13 city-1-loc-16 truck-3) 2326)
  (= (cost-drive city-1-loc-16 city-1-loc-15 truck-3) 5477)
  (= (cost-drive city-1-loc-15 city-1-loc-16 truck-3) 8183)
  (= (cost-drive city-1-loc-17 city-1-loc-8 truck-3) 5686)
  (= (cost-drive city-1-loc-8 city-1-loc-17 truck-3) 3428)
  (= (cost-drive city-1-loc-17 city-1-loc-10 truck-3) 3948)
  (= (cost-drive city-1-loc-10 city-1-loc-17 truck-3) 3310)
  (= (cost-drive city-1-loc-17 city-1-loc-11 truck-3) 2488)
  (= (cost-drive city-1-loc-11 city-1-loc-17 truck-3) 9835)
  (= (cost-drive city-1-loc-17 city-1-loc-15 truck-3) 4444)
  (= (cost-drive city-1-loc-15 city-1-loc-17 truck-3) 2011)
  (= (cost-drive city-1-loc-17 city-1-loc-16 truck-3) 6458)
  (= (cost-drive city-1-loc-16 city-1-loc-17 truck-3) 5301)
  (= (cost-drive city-1-loc-18 city-1-loc-9 truck-3) 7005)
  (= (cost-drive city-1-loc-9 city-1-loc-18 truck-3) 4154)
  (= (cost-drive city-1-loc-18 city-1-loc-11 truck-3) 5917)
  (= (cost-drive city-1-loc-11 city-1-loc-18 truck-3) 5936)
  (= (cost-drive city-1-loc-18 city-1-loc-13 truck-3) 5612)
  (= (cost-drive city-1-loc-13 city-1-loc-18 truck-3) 3114)
  (= (cost-drive city-1-loc-18 city-1-loc-15 truck-3) 8711)
  (= (cost-drive city-1-loc-15 city-1-loc-18 truck-3) 9760)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-3) 4478)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-3) 7472)
  (= (cost-drive city-2-loc-6 city-2-loc-3 truck-3) 1660)
  (= (cost-drive city-2-loc-3 city-2-loc-6 truck-3) 6971)
  (= (cost-drive city-2-loc-6 city-2-loc-5 truck-3) 6616)
  (= (cost-drive city-2-loc-5 city-2-loc-6 truck-3) 3750)
  (= (cost-drive city-2-loc-7 city-2-loc-1 truck-3) 8530)
  (= (cost-drive city-2-loc-1 city-2-loc-7 truck-3) 2956)
  (= (cost-drive city-2-loc-7 city-2-loc-3 truck-3) 4793)
  (= (cost-drive city-2-loc-3 city-2-loc-7 truck-3) 2614)
  (= (cost-drive city-2-loc-7 city-2-loc-4 truck-3) 6101)
  (= (cost-drive city-2-loc-4 city-2-loc-7 truck-3) 8674)
  (= (cost-drive city-2-loc-8 city-2-loc-1 truck-3) 3777)
  (= (cost-drive city-2-loc-1 city-2-loc-8 truck-3) 6328)
  (= (cost-drive city-2-loc-8 city-2-loc-3 truck-3) 9500)
  (= (cost-drive city-2-loc-3 city-2-loc-8 truck-3) 6491)
  (= (cost-drive city-2-loc-8 city-2-loc-4 truck-3) 3690)
  (= (cost-drive city-2-loc-4 city-2-loc-8 truck-3) 4857)
  (= (cost-drive city-2-loc-8 city-2-loc-6 truck-3) 5685)
  (= (cost-drive city-2-loc-6 city-2-loc-8 truck-3) 6566)
  (= (cost-drive city-2-loc-8 city-2-loc-7 truck-3) 6461)
  (= (cost-drive city-2-loc-7 city-2-loc-8 truck-3) 8762)
  (= (cost-drive city-2-loc-9 city-2-loc-2 truck-3) 5849)
  (= (cost-drive city-2-loc-2 city-2-loc-9 truck-3) 5028)
  (= (cost-drive city-2-loc-10 city-2-loc-2 truck-3) 5034)
  (= (cost-drive city-2-loc-2 city-2-loc-10 truck-3) 2936)
  (= (cost-drive city-2-loc-10 city-2-loc-6 truck-3) 2408)
  (= (cost-drive city-2-loc-6 city-2-loc-10 truck-3) 6246)
  (= (cost-drive city-2-loc-10 city-2-loc-9 truck-3) 6144)
  (= (cost-drive city-2-loc-9 city-2-loc-10 truck-3) 3594)
  (= (cost-drive city-2-loc-11 city-2-loc-9 truck-3) 6052)
  (= (cost-drive city-2-loc-9 city-2-loc-11 truck-3) 9139)
  (= (cost-drive city-2-loc-11 city-2-loc-10 truck-3) 2901)
  (= (cost-drive city-2-loc-10 city-2-loc-11 truck-3) 7698)
  (= (cost-drive city-2-loc-12 city-2-loc-2 truck-3) 4535)
  (= (cost-drive city-2-loc-2 city-2-loc-12 truck-3) 7114)
  (= (cost-drive city-2-loc-13 city-2-loc-2 truck-3) 5011)
  (= (cost-drive city-2-loc-2 city-2-loc-13 truck-3) 3475)
  (= (cost-drive city-2-loc-13 city-2-loc-3 truck-3) 7211)
  (= (cost-drive city-2-loc-3 city-2-loc-13 truck-3) 8365)
  (= (cost-drive city-2-loc-13 city-2-loc-6 truck-3) 5331)
  (= (cost-drive city-2-loc-6 city-2-loc-13 truck-3) 5875)
  (= (cost-drive city-2-loc-13 city-2-loc-7 truck-3) 5188)
  (= (cost-drive city-2-loc-7 city-2-loc-13 truck-3) 3251)
  (= (cost-drive city-2-loc-13 city-2-loc-8 truck-3) 6536)
  (= (cost-drive city-2-loc-8 city-2-loc-13 truck-3) 5399)
  (= (cost-drive city-2-loc-13 city-2-loc-10 truck-3) 9218)
  (= (cost-drive city-2-loc-10 city-2-loc-13 truck-3) 5651)
  (= (cost-drive city-2-loc-14 city-2-loc-2 truck-3) 1992)
  (= (cost-drive city-2-loc-2 city-2-loc-14 truck-3) 3438)
  (= (cost-drive city-2-loc-14 city-2-loc-3 truck-3) 1704)
  (= (cost-drive city-2-loc-3 city-2-loc-14 truck-3) 2827)
  (= (cost-drive city-2-loc-14 city-2-loc-7 truck-3) 4429)
  (= (cost-drive city-2-loc-7 city-2-loc-14 truck-3) 7739)
  (= (cost-drive city-2-loc-14 city-2-loc-12 truck-3) 2750)
  (= (cost-drive city-2-loc-12 city-2-loc-14 truck-3) 3079)
  (= (cost-drive city-2-loc-14 city-2-loc-13 truck-3) 5454)
  (= (cost-drive city-2-loc-13 city-2-loc-14 truck-3) 7898)
  (= (cost-drive city-2-loc-15 city-2-loc-2 truck-3) 5084)
  (= (cost-drive city-2-loc-2 city-2-loc-15 truck-3) 7642)
  (= (cost-drive city-2-loc-15 city-2-loc-3 truck-3) 9614)
  (= (cost-drive city-2-loc-3 city-2-loc-15 truck-3) 6450)
  (= (cost-drive city-2-loc-15 city-2-loc-5 truck-3) 4376)
  (= (cost-drive city-2-loc-5 city-2-loc-15 truck-3) 1755)
  (= (cost-drive city-2-loc-15 city-2-loc-6 truck-3) 5563)
  (= (cost-drive city-2-loc-6 city-2-loc-15 truck-3) 2987)
  (= (cost-drive city-2-loc-15 city-2-loc-10 truck-3) 2068)
  (= (cost-drive city-2-loc-10 city-2-loc-15 truck-3) 2622)
  (= (cost-drive city-2-loc-15 city-2-loc-13 truck-3) 1941)
  (= (cost-drive city-2-loc-13 city-2-loc-15 truck-3) 2239)
  (= (cost-drive city-2-loc-16 city-2-loc-3 truck-3) 3899)
  (= (cost-drive city-2-loc-3 city-2-loc-16 truck-3) 4106)
  (= (cost-drive city-2-loc-16 city-2-loc-6 truck-3) 2913)
  (= (cost-drive city-2-loc-6 city-2-loc-16 truck-3) 3430)
  (= (cost-drive city-2-loc-16 city-2-loc-8 truck-3) 2237)
  (= (cost-drive city-2-loc-8 city-2-loc-16 truck-3) 5420)
  (= (cost-drive city-2-loc-16 city-2-loc-13 truck-3) 6569)
  (= (cost-drive city-2-loc-13 city-2-loc-16 truck-3) 5824)
  (= (cost-drive city-2-loc-17 city-2-loc-5 truck-3) 7542)
  (= (cost-drive city-2-loc-5 city-2-loc-17 truck-3) 1498)
  (= (cost-drive city-2-loc-17 city-2-loc-6 truck-3) 3786)
  (= (cost-drive city-2-loc-6 city-2-loc-17 truck-3) 7349)
  (= (cost-drive city-2-loc-17 city-2-loc-10 truck-3) 6390)
  (= (cost-drive city-2-loc-10 city-2-loc-17 truck-3) 2784)
  (= (cost-drive city-2-loc-17 city-2-loc-15 truck-3) 1917)
  (= (cost-drive city-2-loc-15 city-2-loc-17 truck-3) 6293)
  (= (cost-drive city-2-loc-18 city-2-loc-1 truck-3) 4556)
  (= (cost-drive city-2-loc-1 city-2-loc-18 truck-3) 6858)
  (= (cost-drive city-2-loc-18 city-2-loc-4 truck-3) 6163)
  (= (cost-drive city-2-loc-4 city-2-loc-18 truck-3) 5152)
  (= (cost-drive city-2-loc-18 city-2-loc-8 truck-3) 4129)
  (= (cost-drive city-2-loc-8 city-2-loc-18 truck-3) 8085)
  (= (cost-drive city-1-loc-12 city-2-loc-5 truck-3) 2553)
  (= (cost-drive city-2-loc-5 city-1-loc-12 truck-3) 4754)
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
