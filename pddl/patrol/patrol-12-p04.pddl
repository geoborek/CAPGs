(define (problem patrol-12-p04)
 (:domain patrol2)
 (:objects
  city-loc-1 - location
  city-loc-2 - location
  city-loc-3 - location
  city-loc-4 - location
  city-loc-5 - location
  city-loc-6 - location
  city-loc-7 - location
  city-loc-8 - location
  city-loc-9 - location
  city-loc-10 - location
  city-loc-11 - location
  city-loc-12 - location
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
  (road city-loc-3 city-loc-1)
  (road city-loc-1 city-loc-3)
  (road city-loc-4 city-loc-1)
  (road city-loc-1 city-loc-4)
  (road city-loc-5 city-loc-4)
  (road city-loc-4 city-loc-5)
  (road city-loc-6 city-loc-2)
  (road city-loc-2 city-loc-6)
  (road city-loc-6 city-loc-3)
  (road city-loc-3 city-loc-6)
  (road city-loc-7 city-loc-1)
  (road city-loc-1 city-loc-7)
  (road city-loc-7 city-loc-3)
  (road city-loc-3 city-loc-7)
  (road city-loc-7 city-loc-4)
  (road city-loc-4 city-loc-7)
  (road city-loc-8 city-loc-7)
  (road city-loc-7 city-loc-8)
  (road city-loc-9 city-loc-6)
  (road city-loc-6 city-loc-9)
  (road city-loc-10 city-loc-1)
  (road city-loc-1 city-loc-10)
  (road city-loc-10 city-loc-3)
  (road city-loc-3 city-loc-10)
  (road city-loc-10 city-loc-7)
  (road city-loc-7 city-loc-10)
  (road city-loc-10 city-loc-8)
  (road city-loc-8 city-loc-10)
  (road city-loc-10 city-loc-9)
  (road city-loc-9 city-loc-10)
  (road city-loc-11 city-loc-9)
  (road city-loc-9 city-loc-11)
  (road city-loc-12 city-loc-1)
  (road city-loc-1 city-loc-12)
  (road city-loc-12 city-loc-3)
  (road city-loc-3 city-loc-12)
  (= (road-length city-loc-3 city-loc-1) 22)
  (= (road-length city-loc-1 city-loc-3) 22)
  (= (road-length city-loc-4 city-loc-1) 26)
  (= (road-length city-loc-1 city-loc-4) 26)
  (= (road-length city-loc-5 city-loc-4) 12)
  (= (road-length city-loc-4 city-loc-5) 12)
  (= (road-length city-loc-6 city-loc-2) 19)
  (= (road-length city-loc-2 city-loc-6) 19)
  (= (road-length city-loc-6 city-loc-3) 34)
  (= (road-length city-loc-3 city-loc-6) 34)
  (= (road-length city-loc-7 city-loc-1) 15)
  (= (road-length city-loc-1 city-loc-7) 15)
  (= (road-length city-loc-7 city-loc-3) 16)
  (= (road-length city-loc-3 city-loc-7) 16)
  (= (road-length city-loc-7 city-loc-4) 31)
  (= (road-length city-loc-4 city-loc-7) 31)
  (= (road-length city-loc-8 city-loc-7) 30)
  (= (road-length city-loc-7 city-loc-8) 30)
  (= (road-length city-loc-9 city-loc-6) 28)
  (= (road-length city-loc-6 city-loc-9) 28)
  (= (road-length city-loc-10 city-loc-1) 33)
  (= (road-length city-loc-1 city-loc-10) 33)
  (= (road-length city-loc-10 city-loc-3) 25)
  (= (road-length city-loc-3 city-loc-10) 25)
  (= (road-length city-loc-10 city-loc-7) 18)
  (= (road-length city-loc-7 city-loc-10) 18)
  (= (road-length city-loc-10 city-loc-8) 24)
  (= (road-length city-loc-8 city-loc-10) 24)
  (= (road-length city-loc-10 city-loc-9) 32)
  (= (road-length city-loc-9 city-loc-10) 32)
  (= (road-length city-loc-11 city-loc-9) 24)
  (= (road-length city-loc-9 city-loc-11) 24)
  (= (road-length city-loc-12 city-loc-1) 29)
  (= (road-length city-loc-1 city-loc-12) 29)
  (= (road-length city-loc-12 city-loc-3) 23)
  (= (road-length city-loc-3 city-loc-12) 23)
  (visited city-loc-1)
  (next city-loc-1 city-loc-2)
  (next city-loc-2 city-loc-3)
  (next city-loc-3 city-loc-4)
  (next city-loc-4 city-loc-5)
  (next city-loc-5 city-loc-6)
  (next city-loc-6 city-loc-7)
  (next city-loc-7 city-loc-8)
  (next city-loc-8 city-loc-9)
  (next city-loc-9 city-loc-10)
  (next city-loc-10 city-loc-11)
  (next city-loc-11 city-loc-12)
  (origin city-loc-1)
  (last city-loc-12)
  (at city-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-loc-1) 2864)
  (= (cost-check-unvisited-location city-loc-2) 2749)
  (= (cost-check-unvisited-location city-loc-3) 2858)
  (= (cost-check-unvisited-location city-loc-4) 2766)
  (= (cost-check-unvisited-location city-loc-5) 1348)
  (= (cost-check-unvisited-location city-loc-6) 5891)
  (= (cost-check-unvisited-location city-loc-7) 4281)
  (= (cost-check-unvisited-location city-loc-8) 9832)
  (= (cost-check-unvisited-location city-loc-9) 9472)
  (= (cost-check-unvisited-location city-loc-10) 1836)
  (= (cost-check-unvisited-location city-loc-11) 6149)
  (= (cost-check-unvisited-location city-loc-12) 8423)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)