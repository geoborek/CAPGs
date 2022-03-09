(define (problem patrol-18-p01)
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
  (= (cost-check-unvisited-location city-loc-1) 9523)
  (= (cost-check-unvisited-location city-loc-2) 2856)
  (= (cost-check-unvisited-location city-loc-3) 3809)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
