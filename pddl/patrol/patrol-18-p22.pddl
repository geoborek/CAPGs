(define (problem patrol-18-p22)
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
  (= (cost-check-unvisited-location city-1-loc-1) 6558)
  (= (cost-check-unvisited-location city-2-loc-1) 4065)
  (= (cost-check-unvisited-location city-3-loc-1) 3611)
  (= (cost-check-unvisited-location city-1-loc-2) 2278)
  (= (cost-check-unvisited-location city-2-loc-2) 9395)
  (= (cost-check-unvisited-location city-3-loc-2) 7626)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
