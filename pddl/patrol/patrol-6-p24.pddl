(define (problem patrol-6-p24)
 (:domain patrol2)
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
  n0 - num
  n1 - num
  n2 - num
  n3 - num
  n4 - num
  n5 - num
  n6 - num
 )
 (:init
 (= (total-cost) 0)
  (succesor n0 n1)
  (succesor n1 n2)
  (succesor n2 n3)
  (succesor n3 n4)
  (succesor n4 n5)
  (succesor n5 n6)
  (max-steps n6)
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
  (road city-3-loc-2 city-3-loc-1)
  (road city-3-loc-1 city-3-loc-2)
  (road city-3-loc-3 city-3-loc-1)
  (road city-3-loc-1 city-3-loc-3)
  (road city-3-loc-4 city-3-loc-3)
  (road city-3-loc-3 city-3-loc-4)
  (road city-1-loc-1 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-1)
  (road city-1-loc-4 city-3-loc-4)
  (road city-3-loc-4 city-1-loc-4)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
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
  (= (road-length city-3-loc-2 city-3-loc-1) 29)
  (= (road-length city-3-loc-1 city-3-loc-2) 29)
  (= (road-length city-3-loc-3 city-3-loc-1) 21)
  (= (road-length city-3-loc-1 city-3-loc-3) 21)
  (= (road-length city-3-loc-4 city-3-loc-3) 42)
  (= (road-length city-3-loc-3 city-3-loc-4) 42)
  (= (road-length city-1-loc-1 city-2-loc-2) 139)
  (= (road-length city-2-loc-2 city-1-loc-1) 139)
  (= (road-length city-1-loc-4 city-3-loc-4) 190)
  (= (road-length city-3-loc-4 city-1-loc-4) 190)
  (= (road-length city-2-loc-1 city-3-loc-1) 157)
  (= (road-length city-3-loc-1 city-2-loc-1) 157)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-3-loc-1)
  (next city-3-loc-1 city-1-loc-2)
  (next city-1-loc-2 city-2-loc-2)
  (next city-2-loc-2 city-3-loc-2)
  (next city-3-loc-2 city-1-loc-3)
  (next city-1-loc-3 city-2-loc-3)
  (next city-2-loc-3 city-3-loc-3)
  (next city-3-loc-3 city-1-loc-4)
  (next city-1-loc-4 city-2-loc-4)
  (next city-2-loc-4 city-3-loc-4)
  (origin city-1-loc-1)
  (last city-3-loc-4)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 4180)
  (= (cost-check-unvisited-location city-2-loc-1) 1381)
  (= (cost-check-unvisited-location city-3-loc-1) 6888)
  (= (cost-check-unvisited-location city-1-loc-2) 4860)
  (= (cost-check-unvisited-location city-2-loc-2) 5864)
  (= (cost-check-unvisited-location city-3-loc-2) 3407)
  (= (cost-check-unvisited-location city-1-loc-3) 7938)
  (= (cost-check-unvisited-location city-2-loc-3) 2700)
  (= (cost-check-unvisited-location city-3-loc-3) 3554)
  (= (cost-check-unvisited-location city-1-loc-4) 8799)
  (= (cost-check-unvisited-location city-2-loc-4) 2559)
  (= (cost-check-unvisited-location city-3-loc-4) 5318)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
