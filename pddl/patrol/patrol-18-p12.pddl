(define (problem patrol-18-p12)
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
  (road city-1-loc-3 city-1-loc-2)
  (road city-1-loc-2 city-1-loc-3)
  (road city-1-loc-4 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-3)
  (road city-1-loc-3 city-1-loc-4)
  (road city-2-loc-2 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-2)
  (road city-2-loc-3 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-3)
  (road city-2-loc-4 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-4)
  (road city-2-loc-4 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-4)
  (road city-2-loc-4 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-4)
  (road city-1-loc-1 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-1)
  (= (road-length city-1-loc-3 city-1-loc-1) 43)
  (= (road-length city-1-loc-1 city-1-loc-3) 43)
  (= (road-length city-1-loc-3 city-1-loc-2) 43)
  (= (road-length city-1-loc-2 city-1-loc-3) 43)
  (= (road-length city-1-loc-4 city-1-loc-1) 43)
  (= (road-length city-1-loc-1 city-1-loc-4) 43)
  (= (road-length city-1-loc-4 city-1-loc-3) 30)
  (= (road-length city-1-loc-3 city-1-loc-4) 30)
  (= (road-length city-2-loc-2 city-2-loc-1) 35)
  (= (road-length city-2-loc-1 city-2-loc-2) 35)
  (= (road-length city-2-loc-3 city-2-loc-2) 39)
  (= (road-length city-2-loc-2 city-2-loc-3) 39)
  (= (road-length city-2-loc-4 city-2-loc-1) 17)
  (= (road-length city-2-loc-1 city-2-loc-4) 17)
  (= (road-length city-2-loc-4 city-2-loc-2) 23)
  (= (road-length city-2-loc-2 city-2-loc-4) 23)
  (= (road-length city-2-loc-4 city-2-loc-3) 47)
  (= (road-length city-2-loc-3 city-2-loc-4) 47)
  (= (road-length city-1-loc-1 city-2-loc-2) 139)
  (= (road-length city-2-loc-2 city-1-loc-1) 139)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-1-loc-2)
  (next city-1-loc-2 city-2-loc-2)
  (next city-2-loc-2 city-1-loc-3)
  (next city-1-loc-3 city-2-loc-3)
  (next city-2-loc-3 city-1-loc-4)
  (next city-1-loc-4 city-2-loc-4)
  (origin city-1-loc-1)
  (last city-2-loc-4)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 4473)
  (= (cost-check-unvisited-location city-2-loc-1) 3866)
  (= (cost-check-unvisited-location city-1-loc-2) 4202)
  (= (cost-check-unvisited-location city-2-loc-2) 1945)
  (= (cost-check-unvisited-location city-1-loc-3) 2528)
  (= (cost-check-unvisited-location city-2-loc-3) 5838)
  (= (cost-check-unvisited-location city-1-loc-4) 8369)
  (= (cost-check-unvisited-location city-2-loc-4) 7994)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
