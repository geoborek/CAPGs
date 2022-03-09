(define (problem patrol-12-p21)
 (:domain patrol2)
 (:objects
  city-1-loc-1 - location
  city-2-loc-1 - location
  city-3-loc-1 - location
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
  (road city-1-loc-1 city-2-loc-1)
  (road city-2-loc-1 city-1-loc-1)
  (road city-1-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-1-loc-1)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
  (= (road-length city-1-loc-1 city-2-loc-1) 158)
  (= (road-length city-2-loc-1 city-1-loc-1) 158)
  (= (road-length city-1-loc-1 city-3-loc-1) 158)
  (= (road-length city-3-loc-1 city-1-loc-1) 158)
  (= (road-length city-2-loc-1 city-3-loc-1) 158)
  (= (road-length city-3-loc-1 city-2-loc-1) 158)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-3-loc-1)
  (origin city-1-loc-1)
  (last city-3-loc-1)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 7576)
  (= (cost-check-unvisited-location city-2-loc-1) 9227)
  (= (cost-check-unvisited-location city-3-loc-1) 6325)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
