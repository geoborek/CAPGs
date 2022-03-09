(define (problem patrol-6-p22)
 (:domain patrol2)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
  city-1-loc-2 - location
  city-2-loc-2 - location
  city-3-loc-2 - location
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
  (road city-1-loc-2 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-2)
  (road city-2-loc-2 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-2)
  (road city-3-loc-2 city-3-loc-1)
  (road city-3-loc-1 city-3-loc-2)
  (road city-1-loc-2 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-2)
  (road city-1-loc-2 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-2)
  (road city-2-loc-1 city-3-loc-2)
  (road city-3-loc-2 city-2-loc-1)
  (= (road-length city-1-loc-2 city-1-loc-1) 45)
  (= (road-length city-1-loc-1 city-1-loc-2) 45)
  (= (road-length city-2-loc-2 city-2-loc-1) 30)
  (= (road-length city-2-loc-1 city-2-loc-2) 30)
  (= (road-length city-3-loc-2 city-3-loc-1) 32)
  (= (road-length city-3-loc-1 city-3-loc-2) 32)
  (= (road-length city-1-loc-2 city-2-loc-2) 166)
  (= (road-length city-2-loc-2 city-1-loc-2) 166)
  (= (road-length city-1-loc-2 city-3-loc-1) 185)
  (= (road-length city-3-loc-1 city-1-loc-2) 185)
  (= (road-length city-2-loc-1 city-3-loc-2) 186)
  (= (road-length city-3-loc-2 city-2-loc-1) 186)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-3-loc-1)
  (next city-3-loc-1 city-1-loc-2)
  (next city-1-loc-2 city-2-loc-2)
  (next city-2-loc-2 city-3-loc-2)
  (origin city-1-loc-1)
  (last city-3-loc-2)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 2603)
  (= (cost-check-unvisited-location city-2-loc-1) 2859)
  (= (cost-check-unvisited-location city-3-loc-1) 3128)
  (= (cost-check-unvisited-location city-1-loc-2) 7227)
  (= (cost-check-unvisited-location city-2-loc-2) 6018)
  (= (cost-check-unvisited-location city-3-loc-2) 3723)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
