(define (problem patrol-6-p02)
 (:domain patrol2)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
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
  (road city-loc-4 city-loc-1)
  (road city-loc-1 city-loc-4)
  (road city-loc-5 city-loc-1)
  (road city-loc-1 city-loc-5)
  (road city-loc-5 city-loc-4)
  (road city-loc-4 city-loc-5)
  (road city-loc-6 city-loc-2)
  (road city-loc-2 city-loc-6)
  (road city-loc-6 city-loc-3)
  (road city-loc-3 city-loc-6)
  (= (road-length city-loc-3 city-loc-1) 22)
  (= (road-length city-loc-1 city-loc-3) 22)
  (= (road-length city-loc-4 city-loc-1) 26)
  (= (road-length city-loc-1 city-loc-4) 26)
  (= (road-length city-loc-5 city-loc-1) 37)
  (= (road-length city-loc-1 city-loc-5) 37)
  (= (road-length city-loc-5 city-loc-4) 12)
  (= (road-length city-loc-4 city-loc-5) 12)
  (= (road-length city-loc-6 city-loc-2) 19)
  (= (road-length city-loc-2 city-loc-6) 19)
  (= (road-length city-loc-6 city-loc-3) 34)
  (= (road-length city-loc-3 city-loc-6) 34)
  (visited city-loc-1)
  (next city-loc-1 city-loc-2)
  (next city-loc-2 city-loc-3)
  (next city-loc-3 city-loc-4)
  (next city-loc-4 city-loc-5)
  (next city-loc-5 city-loc-6)
  (origin city-loc-1)
  (last city-loc-6)
  (at city-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-loc-1) 3469)
  (= (cost-check-unvisited-location city-loc-2) 8265)
  (= (cost-check-unvisited-location city-loc-3) 7232)
  (= (cost-check-unvisited-location city-loc-4) 8092)
  (= (cost-check-unvisited-location city-loc-5) 6944)
  (= (cost-check-unvisited-location city-loc-6) 3810)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
