(define (problem patrol-18-p14)
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
  n13 - num
  n14 - num
  n15 - num
  n16 - num
  n17 - num
  n18 - num
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
  (succesor n12 n13)
  (succesor n13 n14)
  (succesor n14 n15)
  (succesor n15 n16)
  (succesor n16 n17)
  (succesor n17 n18)
  (max-steps n18)
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
  (road city-1-loc-8 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-8)
  (road city-1-loc-8 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-8)
  (road city-1-loc-8 city-1-loc-7)
  (road city-1-loc-7 city-1-loc-8)
  (road city-2-loc-2 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-2)
  (road city-2-loc-4 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-4)
  (road city-2-loc-5 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-5)
  (road city-2-loc-6 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-6)
  (road city-2-loc-6 city-2-loc-5)
  (road city-2-loc-5 city-2-loc-6)
  (road city-2-loc-7 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-7)
  (road city-2-loc-7 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-7)
  (road city-2-loc-7 city-2-loc-4)
  (road city-2-loc-4 city-2-loc-7)
  (road city-2-loc-7 city-2-loc-6)
  (road city-2-loc-6 city-2-loc-7)
  (road city-2-loc-8 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-8)
  (road city-2-loc-8 city-2-loc-5)
  (road city-2-loc-5 city-2-loc-8)
  (road city-2-loc-8 city-2-loc-6)
  (road city-2-loc-6 city-2-loc-8)
  (road city-1-loc-1 city-2-loc-3)
  (road city-2-loc-3 city-1-loc-1)
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
  (= (road-length city-1-loc-8 city-1-loc-1) 41)
  (= (road-length city-1-loc-1 city-1-loc-8) 41)
  (= (road-length city-1-loc-8 city-1-loc-4) 35)
  (= (road-length city-1-loc-4 city-1-loc-8) 35)
  (= (road-length city-1-loc-8 city-1-loc-7) 30)
  (= (road-length city-1-loc-7 city-1-loc-8) 30)
  (= (road-length city-2-loc-2 city-2-loc-1) 39)
  (= (road-length city-2-loc-1 city-2-loc-2) 39)
  (= (road-length city-2-loc-4 city-2-loc-2) 38)
  (= (road-length city-2-loc-2 city-2-loc-4) 38)
  (= (road-length city-2-loc-5 city-2-loc-3) 26)
  (= (road-length city-2-loc-3 city-2-loc-5) 26)
  (= (road-length city-2-loc-6 city-2-loc-3) 38)
  (= (road-length city-2-loc-3 city-2-loc-6) 38)
  (= (road-length city-2-loc-6 city-2-loc-5) 35)
  (= (road-length city-2-loc-5 city-2-loc-6) 35)
  (= (road-length city-2-loc-7 city-2-loc-1) 36)
  (= (road-length city-2-loc-1 city-2-loc-7) 36)
  (= (road-length city-2-loc-7 city-2-loc-2) 36)
  (= (road-length city-2-loc-2 city-2-loc-7) 36)
  (= (road-length city-2-loc-7 city-2-loc-4) 13)
  (= (road-length city-2-loc-4 city-2-loc-7) 13)
  (= (road-length city-2-loc-7 city-2-loc-6) 39)
  (= (road-length city-2-loc-6 city-2-loc-7) 39)
  (= (road-length city-2-loc-8 city-2-loc-3) 36)
  (= (road-length city-2-loc-3 city-2-loc-8) 36)
  (= (road-length city-2-loc-8 city-2-loc-5) 17)
  (= (road-length city-2-loc-5 city-2-loc-8) 17)
  (= (road-length city-2-loc-8 city-2-loc-6) 23)
  (= (road-length city-2-loc-6 city-2-loc-8) 23)
  (= (road-length city-1-loc-1 city-2-loc-3) 122)
  (= (road-length city-2-loc-3 city-1-loc-1) 122)
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
  (origin city-1-loc-1)
  (last city-2-loc-8)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 1335)
  (= (cost-check-unvisited-location city-2-loc-1) 4989)
  (= (cost-check-unvisited-location city-1-loc-2) 3654)
  (= (cost-check-unvisited-location city-2-loc-2) 4928)
  (= (cost-check-unvisited-location city-1-loc-3) 2263)
  (= (cost-check-unvisited-location city-2-loc-3) 5347)
  (= (cost-check-unvisited-location city-1-loc-4) 1122)
  (= (cost-check-unvisited-location city-2-loc-4) 2094)
  (= (cost-check-unvisited-location city-1-loc-5) 5853)
  (= (cost-check-unvisited-location city-2-loc-5) 4512)
  (= (cost-check-unvisited-location city-1-loc-6) 3410)
  (= (cost-check-unvisited-location city-2-loc-6) 1970)
  (= (cost-check-unvisited-location city-1-loc-7) 3979)
  (= (cost-check-unvisited-location city-2-loc-7) 7724)
  (= (cost-check-unvisited-location city-1-loc-8) 1945)
  (= (cost-check-unvisited-location city-2-loc-8) 1307)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
