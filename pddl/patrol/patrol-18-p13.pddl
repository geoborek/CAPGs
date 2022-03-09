(define (problem patrol-18-p13)
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
  city-1-loc-5 - location
  city-2-loc-5 - location
  city-1-loc-6 - location
  city-2-loc-6 - location
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
  (road city-1-loc-4 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-3)
  (road city-1-loc-3 city-1-loc-4)
  (road city-1-loc-5 city-1-loc-1)
  (road city-1-loc-1 city-1-loc-5)
  (road city-1-loc-5 city-1-loc-4)
  (road city-1-loc-4 city-1-loc-5)
  (road city-1-loc-6 city-1-loc-2)
  (road city-1-loc-2 city-1-loc-6)
  (road city-1-loc-6 city-1-loc-3)
  (road city-1-loc-3 city-1-loc-6)
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
  (road city-2-loc-5 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-5)
  (road city-2-loc-5 city-2-loc-3)
  (road city-2-loc-3 city-2-loc-5)
  (road city-2-loc-5 city-2-loc-4)
  (road city-2-loc-4 city-2-loc-5)
  (road city-2-loc-6 city-2-loc-1)
  (road city-2-loc-1 city-2-loc-6)
  (road city-2-loc-6 city-2-loc-2)
  (road city-2-loc-2 city-2-loc-6)
  (road city-1-loc-5 city-2-loc-5)
  (road city-2-loc-5 city-1-loc-5)
  (= (road-length city-1-loc-3 city-1-loc-1) 22)
  (= (road-length city-1-loc-1 city-1-loc-3) 22)
  (= (road-length city-1-loc-4 city-1-loc-1) 26)
  (= (road-length city-1-loc-1 city-1-loc-4) 26)
  (= (road-length city-1-loc-4 city-1-loc-3) 45)
  (= (road-length city-1-loc-3 city-1-loc-4) 45)
  (= (road-length city-1-loc-5 city-1-loc-1) 37)
  (= (road-length city-1-loc-1 city-1-loc-5) 37)
  (= (road-length city-1-loc-5 city-1-loc-4) 12)
  (= (road-length city-1-loc-4 city-1-loc-5) 12)
  (= (road-length city-1-loc-6 city-1-loc-2) 19)
  (= (road-length city-1-loc-2 city-1-loc-6) 19)
  (= (road-length city-1-loc-6 city-1-loc-3) 34)
  (= (road-length city-1-loc-3 city-1-loc-6) 34)
  (= (road-length city-2-loc-2 city-2-loc-1) 30)
  (= (road-length city-2-loc-1 city-2-loc-2) 30)
  (= (road-length city-2-loc-3 city-2-loc-2) 47)
  (= (road-length city-2-loc-2 city-2-loc-3) 47)
  (= (road-length city-2-loc-4 city-2-loc-1) 18)
  (= (road-length city-2-loc-1 city-2-loc-4) 18)
  (= (road-length city-2-loc-4 city-2-loc-2) 24)
  (= (road-length city-2-loc-2 city-2-loc-4) 24)
  (= (road-length city-2-loc-4 city-2-loc-3) 32)
  (= (road-length city-2-loc-3 city-2-loc-4) 32)
  (= (road-length city-2-loc-5 city-2-loc-2) 42)
  (= (road-length city-2-loc-2 city-2-loc-5) 42)
  (= (road-length city-2-loc-5 city-2-loc-3) 24)
  (= (road-length city-2-loc-3 city-2-loc-5) 24)
  (= (road-length city-2-loc-5 city-2-loc-4) 41)
  (= (road-length city-2-loc-4 city-2-loc-5) 41)
  (= (road-length city-2-loc-6 city-2-loc-1) 43)
  (= (road-length city-2-loc-1 city-2-loc-6) 43)
  (= (road-length city-2-loc-6 city-2-loc-2) 41)
  (= (road-length city-2-loc-2 city-2-loc-6) 41)
  (= (road-length city-1-loc-5 city-2-loc-5) 123)
  (= (road-length city-2-loc-5 city-1-loc-5) 123)
  (visited city-1-loc-1)
  (next city-1-loc-1 city-2-loc-1)
  (next city-2-loc-1 city-1-loc-2)
  (next city-1-loc-2 city-2-loc-2)
  (next city-2-loc-2 city-1-loc-3)
  (next city-1-loc-3 city-2-loc-3)
  (next city-2-loc-3 city-1-loc-4)
  (next city-1-loc-4 city-2-loc-4)
  (next city-2-loc-4 city-1-loc-5)
  (next city-1-loc-5 city-2-loc-5)
  (next city-2-loc-5 city-1-loc-6)
  (next city-1-loc-6 city-2-loc-6)
  (origin city-1-loc-1)
  (last city-2-loc-6)
  (at city-1-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-1-loc-1) 5741)
  (= (cost-check-unvisited-location city-2-loc-1) 1500)
  (= (cost-check-unvisited-location city-1-loc-2) 9298)
  (= (cost-check-unvisited-location city-2-loc-2) 5453)
  (= (cost-check-unvisited-location city-1-loc-3) 9848)
  (= (cost-check-unvisited-location city-2-loc-3) 7755)
  (= (cost-check-unvisited-location city-1-loc-4) 6014)
  (= (cost-check-unvisited-location city-2-loc-4) 7739)
  (= (cost-check-unvisited-location city-1-loc-5) 9365)
  (= (cost-check-unvisited-location city-2-loc-5) 4414)
  (= (cost-check-unvisited-location city-1-loc-6) 2964)
  (= (cost-check-unvisited-location city-2-loc-6) 5028)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
