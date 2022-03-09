(define (problem patrol-6-p23)
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
  (road city-2-loc-2 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-2)
  (road city-2-loc-3 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-3)
  (road city-3-loc-2 city-3-loc-1)
  (road city-3-loc-1 city-3-loc-2)
  (road city-3-loc-3 city-3-loc-1)
  (road city-3-loc-1 city-3-loc-3)
  (road city-1-loc-1 city-2-loc-3)
  (road city-2-loc-3 city-1-loc-1)
  (road city-1-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-1)
  (road city-2-loc-3 city-3-loc-2)
  (road city-3-loc-2 city-2-loc-3)
  (= (road-length city-1-loc-3 city-1-loc-1) 22)
  (= (road-length city-1-loc-1 city-1-loc-3) 22)
  (= (road-length city-1-loc-3 city-1-loc-2) 50)
  (= (road-length city-1-loc-2 city-1-loc-3) 50)
  (= (road-length city-2-loc-2 city-2-loc-1) 30)
  (= (road-length city-2-loc-1 city-2-loc-2) 30)
  (= (road-length city-2-loc-3 city-2-loc-1) 49)
  (= (road-length city-2-loc-1 city-2-loc-3) 49)
  (= (road-length city-2-loc-3 city-2-loc-2) 47)
  (= (road-length city-2-loc-2 city-2-loc-3) 47)
  (= (road-length city-3-loc-2 city-3-loc-1) 41)
  (= (road-length city-3-loc-1 city-3-loc-2) 41)
  (= (road-length city-3-loc-3 city-3-loc-1) 53)
  (= (road-length city-3-loc-1 city-3-loc-3) 53)
  (= (road-length city-1-loc-1 city-2-loc-3) 139)
  (= (road-length city-2-loc-3 city-1-loc-1) 139)
  (= (road-length city-1-loc-1 city-3-loc-1) 186)
  (= (road-length city-3-loc-1 city-1-loc-1) 186)
  (= (road-length city-2-loc-3 city-3-loc-2) 186)
  (= (road-length city-3-loc-2 city-2-loc-3) 186)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-3-loc-1)
  (next city-3-loc-1 city-1-loc-2)
  (next city-1-loc-2 city-2-loc-2)
  (next city-2-loc-2 city-3-loc-2)
  (next city-3-loc-2 city-1-loc-3)
  (next city-1-loc-3 city-2-loc-3)
  (next city-2-loc-3 city-3-loc-3)
  (origin city-1-loc-1)
  (last city-3-loc-3)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 7499)
  (= (cost-check-unvisited-location city-2-loc-1) 7144)
  (= (cost-check-unvisited-location city-3-loc-1) 9201)
  (= (cost-check-unvisited-location city-1-loc-2) 5589)
  (= (cost-check-unvisited-location city-2-loc-2) 4189)
  (= (cost-check-unvisited-location city-3-loc-2) 5911)
  (= (cost-check-unvisited-location city-1-loc-3) 3340)
  (= (cost-check-unvisited-location city-2-loc-3) 4215)
  (= (cost-check-unvisited-location city-3-loc-3) 2661)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
