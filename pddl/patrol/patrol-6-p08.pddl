(define (problem patrol-6-p08)
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
  city-loc-13 - location
  city-loc-14 - location
  city-loc-15 - location
  city-loc-16 - location
  city-loc-17 - location
  city-loc-18 - location
  city-loc-19 - location
  city-loc-20 - location
  city-loc-21 - location
  city-loc-22 - location
  city-loc-23 - location
  city-loc-24 - location
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
  (road city-loc-5 city-loc-4)
  (road city-loc-4 city-loc-5)
  (road city-loc-6 city-loc-2)
  (road city-loc-2 city-loc-6)
  (road city-loc-7 city-loc-1)
  (road city-loc-1 city-loc-7)
  (road city-loc-7 city-loc-3)
  (road city-loc-3 city-loc-7)
  (road city-loc-9 city-loc-6)
  (road city-loc-6 city-loc-9)
  (road city-loc-10 city-loc-3)
  (road city-loc-3 city-loc-10)
  (road city-loc-10 city-loc-7)
  (road city-loc-7 city-loc-10)
  (road city-loc-10 city-loc-8)
  (road city-loc-8 city-loc-10)
  (road city-loc-11 city-loc-9)
  (road city-loc-9 city-loc-11)
  (road city-loc-12 city-loc-3)
  (road city-loc-3 city-loc-12)
  (road city-loc-13 city-loc-11)
  (road city-loc-11 city-loc-13)
  (road city-loc-14 city-loc-4)
  (road city-loc-4 city-loc-14)
  (road city-loc-14 city-loc-5)
  (road city-loc-5 city-loc-14)
  (road city-loc-14 city-loc-8)
  (road city-loc-8 city-loc-14)
  (road city-loc-15 city-loc-9)
  (road city-loc-9 city-loc-15)
  (road city-loc-15 city-loc-11)
  (road city-loc-11 city-loc-15)
  (road city-loc-15 city-loc-13)
  (road city-loc-13 city-loc-15)
  (road city-loc-16 city-loc-11)
  (road city-loc-11 city-loc-16)
  (road city-loc-16 city-loc-13)
  (road city-loc-13 city-loc-16)
  (road city-loc-16 city-loc-15)
  (road city-loc-15 city-loc-16)
  (road city-loc-17 city-loc-8)
  (road city-loc-8 city-loc-17)
  (road city-loc-17 city-loc-10)
  (road city-loc-10 city-loc-17)
  (road city-loc-17 city-loc-11)
  (road city-loc-11 city-loc-17)
  (road city-loc-17 city-loc-15)
  (road city-loc-15 city-loc-17)
  (road city-loc-18 city-loc-9)
  (road city-loc-9 city-loc-18)
  (road city-loc-18 city-loc-13)
  (road city-loc-13 city-loc-18)
  (road city-loc-19 city-loc-12)
  (road city-loc-12 city-loc-19)
  (road city-loc-20 city-loc-2)
  (road city-loc-2 city-loc-20)
  (road city-loc-21 city-loc-6)
  (road city-loc-6 city-loc-21)
  (road city-loc-21 city-loc-9)
  (road city-loc-9 city-loc-21)
  (road city-loc-21 city-loc-10)
  (road city-loc-10 city-loc-21)
  (road city-loc-21 city-loc-15)
  (road city-loc-15 city-loc-21)
  (road city-loc-21 city-loc-17)
  (road city-loc-17 city-loc-21)
  (road city-loc-22 city-loc-11)
  (road city-loc-11 city-loc-22)
  (road city-loc-22 city-loc-16)
  (road city-loc-16 city-loc-22)
  (road city-loc-22 city-loc-17)
  (road city-loc-17 city-loc-22)
  (road city-loc-23 city-loc-19)
  (road city-loc-19 city-loc-23)
  (road city-loc-24 city-loc-1)
  (road city-loc-1 city-loc-24)
  (road city-loc-24 city-loc-3)
  (road city-loc-3 city-loc-24)
  (road city-loc-24 city-loc-7)
  (road city-loc-7 city-loc-24)
  (road city-loc-24 city-loc-12)
  (road city-loc-12 city-loc-24)
  (= (road-length city-loc-3 city-loc-1) 22)
  (= (road-length city-loc-1 city-loc-3) 22)
  (= (road-length city-loc-4 city-loc-1) 26)
  (= (road-length city-loc-1 city-loc-4) 26)
  (= (road-length city-loc-5 city-loc-4) 12)
  (= (road-length city-loc-4 city-loc-5) 12)
  (= (road-length city-loc-6 city-loc-2) 19)
  (= (road-length city-loc-2 city-loc-6) 19)
  (= (road-length city-loc-7 city-loc-1) 15)
  (= (road-length city-loc-1 city-loc-7) 15)
  (= (road-length city-loc-7 city-loc-3) 16)
  (= (road-length city-loc-3 city-loc-7) 16)
  (= (road-length city-loc-9 city-loc-6) 28)
  (= (road-length city-loc-6 city-loc-9) 28)
  (= (road-length city-loc-10 city-loc-3) 25)
  (= (road-length city-loc-3 city-loc-10) 25)
  (= (road-length city-loc-10 city-loc-7) 18)
  (= (road-length city-loc-7 city-loc-10) 18)
  (= (road-length city-loc-10 city-loc-8) 24)
  (= (road-length city-loc-8 city-loc-10) 24)
  (= (road-length city-loc-11 city-loc-9) 24)
  (= (road-length city-loc-9 city-loc-11) 24)
  (= (road-length city-loc-12 city-loc-3) 23)
  (= (road-length city-loc-3 city-loc-12) 23)
  (= (road-length city-loc-13 city-loc-11) 13)
  (= (road-length city-loc-11 city-loc-13) 13)
  (= (road-length city-loc-14 city-loc-4) 13)
  (= (road-length city-loc-4 city-loc-14) 13)
  (= (road-length city-loc-14 city-loc-5) 18)
  (= (road-length city-loc-5 city-loc-14) 18)
  (= (road-length city-loc-14 city-loc-8) 25)
  (= (road-length city-loc-8 city-loc-14) 25)
  (= (road-length city-loc-15 city-loc-9) 15)
  (= (road-length city-loc-9 city-loc-15) 15)
  (= (road-length city-loc-15 city-loc-11) 12)
  (= (road-length city-loc-11 city-loc-15) 12)
  (= (road-length city-loc-15 city-loc-13) 22)
  (= (road-length city-loc-13 city-loc-15) 22)
  (= (road-length city-loc-16 city-loc-11) 16)
  (= (road-length city-loc-11 city-loc-16) 16)
  (= (road-length city-loc-16 city-loc-13) 20)
  (= (road-length city-loc-13 city-loc-16) 20)
  (= (road-length city-loc-16 city-loc-15) 27)
  (= (road-length city-loc-15 city-loc-16) 27)
  (= (road-length city-loc-17 city-loc-8) 16)
  (= (road-length city-loc-8 city-loc-17) 16)
  (= (road-length city-loc-17 city-loc-10) 21)
  (= (road-length city-loc-10 city-loc-17) 21)
  (= (road-length city-loc-17 city-loc-11) 26)
  (= (road-length city-loc-11 city-loc-17) 26)
  (= (road-length city-loc-17 city-loc-15) 22)
  (= (road-length city-loc-15 city-loc-17) 22)
  (= (road-length city-loc-18 city-loc-9) 25)
  (= (road-length city-loc-9 city-loc-18) 25)
  (= (road-length city-loc-18 city-loc-13) 24)
  (= (road-length city-loc-13 city-loc-18) 24)
  (= (road-length city-loc-19 city-loc-12) 28)
  (= (road-length city-loc-12 city-loc-19) 28)
  (= (road-length city-loc-20 city-loc-2) 26)
  (= (road-length city-loc-2 city-loc-20) 26)
  (= (road-length city-loc-21 city-loc-6) 23)
  (= (road-length city-loc-6 city-loc-21) 23)
  (= (road-length city-loc-21 city-loc-9) 12)
  (= (road-length city-loc-9 city-loc-21) 12)
  (= (road-length city-loc-21 city-loc-10) 22)
  (= (road-length city-loc-10 city-loc-21) 22)
  (= (road-length city-loc-21 city-loc-15) 19)
  (= (road-length city-loc-15 city-loc-21) 19)
  (= (road-length city-loc-21 city-loc-17) 28)
  (= (road-length city-loc-17 city-loc-21) 28)
  (= (road-length city-loc-22 city-loc-11) 25)
  (= (road-length city-loc-11 city-loc-22) 25)
  (= (road-length city-loc-22 city-loc-16) 14)
  (= (road-length city-loc-16 city-loc-22) 14)
  (= (road-length city-loc-22 city-loc-17) 27)
  (= (road-length city-loc-17 city-loc-22) 27)
  (= (road-length city-loc-23 city-loc-19) 13)
  (= (road-length city-loc-19 city-loc-23) 13)
  (= (road-length city-loc-24 city-loc-1) 14)
  (= (road-length city-loc-1 city-loc-24) 14)
  (= (road-length city-loc-24 city-loc-3) 26)
  (= (road-length city-loc-3 city-loc-24) 26)
  (= (road-length city-loc-24 city-loc-7) 27)
  (= (road-length city-loc-7 city-loc-24) 27)
  (= (road-length city-loc-24 city-loc-12) 21)
  (= (road-length city-loc-12 city-loc-24) 21)
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
  (next city-loc-12 city-loc-13)
  (next city-loc-13 city-loc-14)
  (next city-loc-14 city-loc-15)
  (next city-loc-15 city-loc-16)
  (next city-loc-16 city-loc-17)
  (next city-loc-17 city-loc-18)
  (next city-loc-18 city-loc-19)
  (next city-loc-19 city-loc-20)
  (next city-loc-20 city-loc-21)
  (next city-loc-21 city-loc-22)
  (next city-loc-22 city-loc-23)
  (next city-loc-23 city-loc-24)
  (origin city-loc-1)
  (last city-loc-24)
  (at city-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-loc-1) 9958)
  (= (cost-check-unvisited-location city-loc-2) 6195)
  (= (cost-check-unvisited-location city-loc-3) 9451)
  (= (cost-check-unvisited-location city-loc-4) 5781)
  (= (cost-check-unvisited-location city-loc-5) 9808)
  (= (cost-check-unvisited-location city-loc-6) 5458)
  (= (cost-check-unvisited-location city-loc-7) 2080)
  (= (cost-check-unvisited-location city-loc-8) 8970)
  (= (cost-check-unvisited-location city-loc-9) 1614)
  (= (cost-check-unvisited-location city-loc-10) 1060)
  (= (cost-check-unvisited-location city-loc-11) 2028)
  (= (cost-check-unvisited-location city-loc-12) 7168)
  (= (cost-check-unvisited-location city-loc-13) 3749)
  (= (cost-check-unvisited-location city-loc-14) 7154)
  (= (cost-check-unvisited-location city-loc-15) 4258)
  (= (cost-check-unvisited-location city-loc-16) 9569)
  (= (cost-check-unvisited-location city-loc-17) 8799)
  (= (cost-check-unvisited-location city-loc-18) 1720)
  (= (cost-check-unvisited-location city-loc-19) 8221)
  (= (cost-check-unvisited-location city-loc-20) 2688)
  (= (cost-check-unvisited-location city-loc-21) 2136)
  (= (cost-check-unvisited-location city-loc-22) 5737)
  (= (cost-check-unvisited-location city-loc-23) 1483)
  (= (cost-check-unvisited-location city-loc-24) 1455)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)
