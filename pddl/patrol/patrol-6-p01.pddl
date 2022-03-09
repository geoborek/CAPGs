(define (problem patrol-6-p01)
 (:domain patrol2)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
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
  (road city-loc-3 city-loc-1)
  (road city-loc-1 city-loc-3)
  (road city-loc-3 city-loc-2)
  (road city-loc-2 city-loc-3)
  (= (road-length city-loc-3 city-loc-1) 22)
  (= (road-length city-loc-1 city-loc-3) 22)
  (= (road-length city-loc-3 city-loc-2) 50)
  (= (road-length city-loc-2 city-loc-3) 50)
  (visited city-loc-1)
  (next city-loc-1 city-loc-2)
  (next city-loc-2 city-loc-3)
  (origin city-loc-1)
  (last city-loc-3)
  (at city-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-loc-1) 6182)
  (= (cost-check-unvisited-location city-loc-2) 3178)
  (= (cost-check-unvisited-location city-loc-3) 4740)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
