(define (problem patrol-12-p23)
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
  (= (cost-check-unvisited-location city-1-loc-1) 2405)
  (= (cost-check-unvisited-location city-2-loc-1) 7936)
  (= (cost-check-unvisited-location city-3-loc-1) 8720)
  (= (cost-check-unvisited-location city-1-loc-2) 7381)
  (= (cost-check-unvisited-location city-2-loc-2) 2086)
  (= (cost-check-unvisited-location city-3-loc-2) 7820)
  (= (cost-check-unvisited-location city-1-loc-3) 4899)
  (= (cost-check-unvisited-location city-2-loc-3) 2628)
  (= (cost-check-unvisited-location city-3-loc-3) 7892)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
