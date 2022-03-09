(define (problem patrol-12-p15)
 (:domain patrol2)
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
  n0 - num
  n1 - num
  n2 - num
  n3 - num
  n4 - num
  n5 - num
  n6 - num
  n7 - num
  n8 - num
  n9 - num
  n10 - num
  n11 - num
  n12 - num
 )
 (:init
 (= (total-cost) 0)
  (succesor n0 n1)
  (succesor n1 n2)
  (succesor n2 n3)
  (succesor n3 n4)
  (succesor n4 n5)
  (succesor n5 n6)
  (succesor n6 n7)
  (succesor n7 n8)
  (succesor n8 n9)
  (succesor n9 n10)
  (succesor n10 n11)
  (succesor n11 n12)
  (max-steps n12)
  (road city-1-loc-3 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-3)
  (road city-1-loc-4 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-4)
  (road city-1-loc-5 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-5)
  (road city-1-loc-5 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-5)
  (road city-1-loc-6 city-1-loc-2)
  (road city-1-loc-2 city-1-loc-6)
  (road city-1-loc-6 city-1-loc-3)
  (road city-1-loc-3 city-1-loc-6)
  (road city-1-loc-7 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-7)
  (road city-1-loc-7 city-1-loc-3)
  (road city-1-loc-3 city-1-loc-7)
  (road city-1-loc-7 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-7)
  (road city-1-loc-8 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-8)
  (road city-1-loc-8 city-1-loc-7)
  (road city-1-loc-7 city-1-loc-8)
  (road city-1-loc-9 city-1-loc-6)
  (road city-1-loc-6 city-1-loc-9)
  (road city-1-loc-10 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-10)
  (road city-1-loc-10 city-1-loc-3)
  (road city-1-loc-3 city-1-loc-10)
  (road city-1-loc-10 city-1-loc-6)
  (road city-1-loc-6 city-1-loc-10)
  (road city-1-loc-10 city-1-loc-7)
  (road city-1-loc-7 city-1-loc-10)
  (road city-1-loc-10 city-1-loc-8)
  (road city-1-loc-8 city-1-loc-10)
  (road city-1-loc-10 city-1-loc-9)
  (road city-1-loc-9 city-1-loc-10)
  (road city-2-loc-2 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-2)
  (road city-2-loc-3 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-3)
  (road city-2-loc-5 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-5)
  (road city-2-loc-5 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-5)
  (road city-2-loc-6 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-6)
  (road city-2-loc-6 city-2-loc-4)
  (road city-2-loc-4 city-2-loc-6)
  (road city-2-loc-7 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-7)
  (road city-2-loc-8 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-8)
  (road city-2-loc-9 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-9)
  (road city-2-loc-9 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-9)
  (road city-2-loc-9 city-2-loc-5)
  (road city-2-loc-5 city-2-loc-9)
  (road city-2-loc-9 city-2-loc-8)
  (road city-2-loc-8 city-2-loc-9)
  (road city-2-loc-10 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-10)
  (road city-2-loc-10 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-10)
  (road city-2-loc-10 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-10)
  (road city-2-loc-10 city-2-loc-7)
  (road city-2-loc-7 city-2-loc-10)
  (road city-2-loc-10 city-2-loc-8)
  (road city-2-loc-8 city-2-loc-10)
  (road city-2-loc-10 city-2-loc-9)
  (road city-2-loc-9 city-2-loc-10)
  (road city-1-loc-5 city-2-loc-8)
  (road city-2-loc-8 city-1-loc-5)
  (= (road-length city-1-loc-3 city-1-loc-1) 22)
  (= (road-length city-1-loc-1 city-1-loc-3) 22)
  (= (road-length city-1-loc-4 city-1-loc-1) 26)
  (= (road-length city-1-loc-1 city-1-loc-4) 26)
  (= (road-length city-1-loc-5 city-1-loc-1) 37)
  (= (road-length city-1-loc-1 city-1-loc-5) 37)
  (= (road-length city-1-loc-5 city-1-loc-4) 12)
  (= (road-length city-1-loc-4 city-1-loc-5) 12)
  (= (road-length city-1-loc-6 city-1-loc-2) 19)
  (= (road-length city-1-loc-2 city-1-loc-6) 19)
  (= (road-length city-1-loc-6 city-1-loc-3) 34)
  (= (road-length city-1-loc-3 city-1-loc-6) 34)
  (= (road-length city-1-loc-7 city-1-loc-1) 15)
  (= (road-length city-1-loc-1 city-1-loc-7) 15)
  (= (road-length city-1-loc-7 city-1-loc-3) 16)
  (= (road-length city-1-loc-3 city-1-loc-7) 16)
  (= (road-length city-1-loc-7 city-1-loc-4) 31)
  (= (road-length city-1-loc-4 city-1-loc-7) 31)
  (= (road-length city-1-loc-8 city-1-loc-4) 35)
  (= (road-length city-1-loc-4 city-1-loc-8) 35)
  (= (road-length city-1-loc-8 city-1-loc-7) 30)
  (= (road-length city-1-loc-7 city-1-loc-8) 30)
  (= (road-length city-1-loc-9 city-1-loc-6) 28)
  (= (road-length city-1-loc-6 city-1-loc-9) 28)
  (= (road-length city-1-loc-10 city-1-loc-1) 33)
  (= (road-length city-1-loc-1 city-1-loc-10) 33)
  (= (road-length city-1-loc-10 city-1-loc-3) 25)
  (= (road-length city-1-loc-3 city-1-loc-10) 25)
  (= (road-length city-1-loc-10 city-1-loc-6) 35)
  (= (road-length city-1-loc-6 city-1-loc-10) 35)
  (= (road-length city-1-loc-10 city-1-loc-7) 18)
  (= (road-length city-1-loc-7 city-1-loc-10) 18)
  (= (road-length city-1-loc-10 city-1-loc-8) 24)
  (= (road-length city-1-loc-8 city-1-loc-10) 24)
  (= (road-length city-1-loc-10 city-1-loc-9) 32)
  (= (road-length city-1-loc-9 city-1-loc-10) 32)
  (= (road-length city-2-loc-2 city-2-loc-1) 29)
  (= (road-length city-2-loc-1 city-2-loc-2) 29)
  (= (road-length city-2-loc-3 city-2-loc-1) 21)
  (= (road-length city-2-loc-1 city-2-loc-3) 21)
  (= (road-length city-2-loc-5 city-2-loc-1) 24)
  (= (road-length city-2-loc-1 city-2-loc-5) 24)
  (= (road-length city-2-loc-5 city-2-loc-3) 25)
  (= (road-length city-2-loc-3 city-2-loc-5) 25)
  (= (road-length city-2-loc-6 city-2-loc-3) 24)
  (= (road-length city-2-loc-3 city-2-loc-6) 24)
  (= (road-length city-2-loc-6 city-2-loc-4) 25)
  (= (road-length city-2-loc-4 city-2-loc-6) 25)
  (= (road-length city-2-loc-7 city-2-loc-3) 37)
  (= (road-length city-2-loc-3 city-2-loc-7) 37)
  (= (road-length city-2-loc-8 city-2-loc-2) 16)
  (= (road-length city-2-loc-2 city-2-loc-8) 16)
  (= (road-length city-2-loc-9 city-2-loc-1) 18)
  (= (road-length city-2-loc-1 city-2-loc-9) 18)
  (= (road-length city-2-loc-9 city-2-loc-2) 17)
  (= (road-length city-2-loc-2 city-2-loc-9) 17)
  (= (road-length city-2-loc-9 city-2-loc-5) 34)
  (= (road-length city-2-loc-5 city-2-loc-9) 34)
  (= (road-length city-2-loc-9 city-2-loc-8) 32)
  (= (road-length city-2-loc-8 city-2-loc-9) 32)
  (= (road-length city-2-loc-10 city-2-loc-1) 14)
  (= (road-length city-2-loc-1 city-2-loc-10) 14)
  (= (road-length city-2-loc-10 city-2-loc-2) 21)
  (= (road-length city-2-loc-2 city-2-loc-10) 21)
  (= (road-length city-2-loc-10 city-2-loc-3) 29)
  (= (road-length city-2-loc-3 city-2-loc-10) 29)
  (= (road-length city-2-loc-10 city-2-loc-7) 31)
  (= (road-length city-2-loc-7 city-2-loc-10) 31)
  (= (road-length city-2-loc-10 city-2-loc-8) 34)
  (= (road-length city-2-loc-8 city-2-loc-10) 34)
  (= (road-length city-2-loc-10 city-2-loc-9) 19)
  (= (road-length city-2-loc-9 city-2-loc-10) 19)
  (= (road-length city-1-loc-5 city-2-loc-8) 115)
  (= (road-length city-2-loc-8 city-1-loc-5) 115)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-1-loc-2)
  (next city-1-loc-2 city-2-loc-2)
  (next city-2-loc-2 city-1-loc-3)
  (next city-1-loc-3 city-2-loc-3)
  (next city-2-loc-3 city-1-loc-4)
  (next city-1-loc-4 city-2-loc-4)
  (next city-2-loc-4 city-1-loc-5)
  (next city-1-loc-5 city-2-loc-5)
  (next city-2-loc-5 city-1-loc-6)
  (next city-1-loc-6 city-2-loc-6)
  (next city-2-loc-6 city-1-loc-7)
  (next city-1-loc-7 city-2-loc-7)
  (next city-2-loc-7 city-1-loc-8)
  (next city-1-loc-8 city-2-loc-8)
  (next city-2-loc-8 city-1-loc-9)
  (next city-1-loc-9 city-2-loc-9)
  (next city-2-loc-9 city-1-loc-10)
  (next city-1-loc-10 city-2-loc-10)
  (origin city-1-loc-1)
  (last city-2-loc-10)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 4362)
  (= (cost-check-unvisited-location city-2-loc-1) 6138)
  (= (cost-check-unvisited-location city-1-loc-2) 4830)
  (= (cost-check-unvisited-location city-2-loc-2) 6311)
  (= (cost-check-unvisited-location city-1-loc-3) 3069)
  (= (cost-check-unvisited-location city-2-loc-3) 9733)
  (= (cost-check-unvisited-location city-1-loc-4) 9342)
  (= (cost-check-unvisited-location city-2-loc-4) 3663)
  (= (cost-check-unvisited-location city-1-loc-5) 4783)
  (= (cost-check-unvisited-location city-2-loc-5) 7020)
  (= (cost-check-unvisited-location city-1-loc-6) 8853)
  (= (cost-check-unvisited-location city-2-loc-6) 8697)
  (= (cost-check-unvisited-location city-1-loc-7) 3967)
  (= (cost-check-unvisited-location city-2-loc-7) 1907)
  (= (cost-check-unvisited-location city-1-loc-8) 8030)
  (= (cost-check-unvisited-location city-2-loc-8) 6266)
  (= (cost-check-unvisited-location city-1-loc-9) 3379)
  (= (cost-check-unvisited-location city-2-loc-9) 1471)
  (= (cost-check-unvisited-location city-1-loc-10) 3481)
  (= (cost-check-unvisited-location city-2-loc-10) 1366)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
