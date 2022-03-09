(define (problem patrol-18-p09)
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
  city-loc-25 - location
  city-loc-26 - location
  city-loc-27 - location
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
  (road city-loc-4 city-loc-2)
  (road city-loc-2 city-loc-4)
  (road city-loc-7 city-loc-5)
  (road city-loc-5 city-loc-7)
  (road city-loc-8 city-loc-2)
  (road city-loc-2 city-loc-8)
  (road city-loc-8 city-loc-5)
  (road city-loc-5 city-loc-8)
  (road city-loc-8 city-loc-7)
  (road city-loc-7 city-loc-8)
  (road city-loc-9 city-loc-2)
  (road city-loc-2 city-loc-9)
  (road city-loc-9 city-loc-4)
  (road city-loc-4 city-loc-9)
  (road city-loc-9 city-loc-5)
  (road city-loc-5 city-loc-9)
  (road city-loc-9 city-loc-8)
  (road city-loc-8 city-loc-9)
  (road city-loc-10 city-loc-4)
  (road city-loc-4 city-loc-10)
  (road city-loc-11 city-loc-9)
  (road city-loc-9 city-loc-11)
  (road city-loc-12 city-loc-4)
  (road city-loc-4 city-loc-12)
  (road city-loc-12 city-loc-10)
  (road city-loc-10 city-loc-12)
  (road city-loc-13 city-loc-11)
  (road city-loc-11 city-loc-13)
  (road city-loc-13 city-loc-12)
  (road city-loc-12 city-loc-13)
  (road city-loc-14 city-loc-2)
  (road city-loc-2 city-loc-14)
  (road city-loc-14 city-loc-3)
  (road city-loc-3 city-loc-14)
  (road city-loc-14 city-loc-4)
  (road city-loc-4 city-loc-14)
  (road city-loc-14 city-loc-10)
  (road city-loc-10 city-loc-14)
  (road city-loc-14 city-loc-12)
  (road city-loc-12 city-loc-14)
  (road city-loc-15 city-loc-3)
  (road city-loc-3 city-loc-15)
  (road city-loc-16 city-loc-5)
  (road city-loc-5 city-loc-16)
  (road city-loc-16 city-loc-9)
  (road city-loc-9 city-loc-16)
  (road city-loc-16 city-loc-11)
  (road city-loc-11 city-loc-16)
  (road city-loc-18 city-loc-7)
  (road city-loc-7 city-loc-18)
  (road city-loc-18 city-loc-8)
  (road city-loc-8 city-loc-18)
  (road city-loc-18 city-loc-17)
  (road city-loc-17 city-loc-18)
  (road city-loc-19 city-loc-6)
  (road city-loc-6 city-loc-19)
  (road city-loc-20 city-loc-17)
  (road city-loc-17 city-loc-20)
  (road city-loc-20 city-loc-18)
  (road city-loc-18 city-loc-20)
  (road city-loc-21 city-loc-3)
  (road city-loc-3 city-loc-21)
  (road city-loc-21 city-loc-10)
  (road city-loc-10 city-loc-21)
  (road city-loc-21 city-loc-12)
  (road city-loc-12 city-loc-21)
  (road city-loc-21 city-loc-14)
  (road city-loc-14 city-loc-21)
  (road city-loc-22 city-loc-3)
  (road city-loc-3 city-loc-22)
  (road city-loc-22 city-loc-6)
  (road city-loc-6 city-loc-22)
  (road city-loc-22 city-loc-15)
  (road city-loc-15 city-loc-22)
  (road city-loc-23 city-loc-2)
  (road city-loc-2 city-loc-23)
  (road city-loc-23 city-loc-3)
  (road city-loc-3 city-loc-23)
  (road city-loc-23 city-loc-4)
  (road city-loc-4 city-loc-23)
  (road city-loc-23 city-loc-14)
  (road city-loc-14 city-loc-23)
  (road city-loc-23 city-loc-15)
  (road city-loc-15 city-loc-23)
  (road city-loc-24 city-loc-6)
  (road city-loc-6 city-loc-24)
  (road city-loc-24 city-loc-19)
  (road city-loc-19 city-loc-24)
  (road city-loc-25 city-loc-11)
  (road city-loc-11 city-loc-25)
  (road city-loc-25 city-loc-16)
  (road city-loc-16 city-loc-25)
  (road city-loc-26 city-loc-3)
  (road city-loc-3 city-loc-26)
  (road city-loc-26 city-loc-6)
  (road city-loc-6 city-loc-26)
  (road city-loc-26 city-loc-15)
  (road city-loc-15 city-loc-26)
  (road city-loc-26 city-loc-19)
  (road city-loc-19 city-loc-26)
  (road city-loc-26 city-loc-22)
  (road city-loc-22 city-loc-26)
  (road city-loc-26 city-loc-24)
  (road city-loc-24 city-loc-26)
  (road city-loc-27 city-loc-1)
  (road city-loc-1 city-loc-27)
  (road city-loc-27 city-loc-15)
  (road city-loc-15 city-loc-27)
  (road city-loc-27 city-loc-23)
  (road city-loc-23 city-loc-27)
  (= (road-length city-loc-4 city-loc-2) 17)
  (= (road-length city-loc-2 city-loc-4) 17)
  (= (road-length city-loc-7 city-loc-5) 13)
  (= (road-length city-loc-5 city-loc-7) 13)
  (= (road-length city-loc-8 city-loc-2) 16)
  (= (road-length city-loc-2 city-loc-8) 16)
  (= (road-length city-loc-8 city-loc-5) 26)
  (= (road-length city-loc-5 city-loc-8) 26)
  (= (road-length city-loc-8 city-loc-7) 18)
  (= (road-length city-loc-7 city-loc-8) 18)
  (= (road-length city-loc-9 city-loc-2) 19)
  (= (road-length city-loc-2 city-loc-9) 19)
  (= (road-length city-loc-9 city-loc-4) 21)
  (= (road-length city-loc-4 city-loc-9) 21)
  (= (road-length city-loc-9 city-loc-5) 26)
  (= (road-length city-loc-5 city-loc-9) 26)
  (= (road-length city-loc-9 city-loc-8) 21)
  (= (road-length city-loc-8 city-loc-9) 21)
  (= (road-length city-loc-10 city-loc-4) 26)
  (= (road-length city-loc-4 city-loc-10) 26)
  (= (road-length city-loc-11 city-loc-9) 17)
  (= (road-length city-loc-9 city-loc-11) 17)
  (= (road-length city-loc-12 city-loc-4) 17)
  (= (road-length city-loc-4 city-loc-12) 17)
  (= (road-length city-loc-12 city-loc-10) 13)
  (= (road-length city-loc-10 city-loc-12) 13)
  (= (road-length city-loc-13 city-loc-11) 26)
  (= (road-length city-loc-11 city-loc-13) 26)
  (= (road-length city-loc-13 city-loc-12) 21)
  (= (road-length city-loc-12 city-loc-13) 21)
  (= (road-length city-loc-14 city-loc-2) 24)
  (= (road-length city-loc-2 city-loc-14) 24)
  (= (road-length city-loc-14 city-loc-3) 22)
  (= (road-length city-loc-3 city-loc-14) 22)
  (= (road-length city-loc-14 city-loc-4) 13)
  (= (road-length city-loc-4 city-loc-14) 13)
  (= (road-length city-loc-14 city-loc-10) 19)
  (= (road-length city-loc-10 city-loc-14) 19)
  (= (road-length city-loc-14 city-loc-12) 17)
  (= (road-length city-loc-12 city-loc-14) 17)
  (= (road-length city-loc-15 city-loc-3) 13)
  (= (road-length city-loc-3 city-loc-15) 13)
  (= (road-length city-loc-16 city-loc-5) 16)
  (= (road-length city-loc-5 city-loc-16) 16)
  (= (road-length city-loc-16 city-loc-9) 25)
  (= (road-length city-loc-9 city-loc-16) 25)
  (= (road-length city-loc-16 city-loc-11) 19)
  (= (road-length city-loc-11 city-loc-16) 19)
  (= (road-length city-loc-18 city-loc-7) 20)
  (= (road-length city-loc-7 city-loc-18) 20)
  (= (road-length city-loc-18 city-loc-8) 24)
  (= (road-length city-loc-8 city-loc-18) 24)
  (= (road-length city-loc-18 city-loc-17) 13)
  (= (road-length city-loc-17 city-loc-18) 13)
  (= (road-length city-loc-19 city-loc-6) 24)
  (= (road-length city-loc-6 city-loc-19) 24)
  (= (road-length city-loc-20 city-loc-17) 16)
  (= (road-length city-loc-17 city-loc-20) 16)
  (= (road-length city-loc-20 city-loc-18) 26)
  (= (road-length city-loc-18 city-loc-20) 26)
  (= (road-length city-loc-21 city-loc-3) 18)
  (= (road-length city-loc-3 city-loc-21) 18)
  (= (road-length city-loc-21 city-loc-10) 15)
  (= (road-length city-loc-10 city-loc-21) 15)
  (= (road-length city-loc-21 city-loc-12) 26)
  (= (road-length city-loc-12 city-loc-21) 26)
  (= (road-length city-loc-21 city-loc-14) 20)
  (= (road-length city-loc-14 city-loc-21) 20)
  (= (road-length city-loc-22 city-loc-3) 16)
  (= (road-length city-loc-3 city-loc-22) 16)
  (= (road-length city-loc-22 city-loc-6) 18)
  (= (road-length city-loc-6 city-loc-22) 18)
  (= (road-length city-loc-22 city-loc-15) 18)
  (= (road-length city-loc-15 city-loc-22) 18)
  (= (road-length city-loc-23 city-loc-2) 21)
  (= (road-length city-loc-2 city-loc-23) 21)
  (= (road-length city-loc-23 city-loc-3) 20)
  (= (road-length city-loc-3 city-loc-23) 20)
  (= (road-length city-loc-23 city-loc-4) 26)
  (= (road-length city-loc-4 city-loc-23) 26)
  (= (road-length city-loc-23 city-loc-14) 22)
  (= (road-length city-loc-14 city-loc-23) 22)
  (= (road-length city-loc-23 city-loc-15) 15)
  (= (road-length city-loc-15 city-loc-23) 15)
  (= (road-length city-loc-24 city-loc-6) 14)
  (= (road-length city-loc-6 city-loc-24) 14)
  (= (road-length city-loc-24 city-loc-19) 16)
  (= (road-length city-loc-19 city-loc-24) 16)
  (= (road-length city-loc-25 city-loc-11) 12)
  (= (road-length city-loc-11 city-loc-25) 12)
  (= (road-length city-loc-25 city-loc-16) 15)
  (= (road-length city-loc-16 city-loc-25) 15)
  (= (road-length city-loc-26 city-loc-3) 26)
  (= (road-length city-loc-3 city-loc-26) 26)
  (= (road-length city-loc-26 city-loc-6) 11)
  (= (road-length city-loc-6 city-loc-26) 11)
  (= (road-length city-loc-26 city-loc-15) 21)
  (= (road-length city-loc-15 city-loc-26) 21)
  (= (road-length city-loc-26 city-loc-19) 20)
  (= (road-length city-loc-19 city-loc-26) 20)
  (= (road-length city-loc-26 city-loc-22) 13)
  (= (road-length city-loc-22 city-loc-26) 13)
  (= (road-length city-loc-26 city-loc-24) 19)
  (= (road-length city-loc-24 city-loc-26) 19)
  (= (road-length city-loc-27 city-loc-1) 15)
  (= (road-length city-loc-1 city-loc-27) 15)
  (= (road-length city-loc-27 city-loc-15) 22)
  (= (road-length city-loc-15 city-loc-27) 22)
  (= (road-length city-loc-27 city-loc-23) 15)
  (= (road-length city-loc-23 city-loc-27) 15)
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
  (next city-loc-24 city-loc-25)
  (next city-loc-25 city-loc-26)
  (next city-loc-26 city-loc-27)
  (origin city-loc-1)
  (last city-loc-27)
  (at city-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-loc-1) 1989)
  (= (cost-check-unvisited-location city-loc-2) 6474)
  (= (cost-check-unvisited-location city-loc-3) 5412)
  (= (cost-check-unvisited-location city-loc-4) 7740)
  (= (cost-check-unvisited-location city-loc-5) 8070)
  (= (cost-check-unvisited-location city-loc-6) 7642)
  (= (cost-check-unvisited-location city-loc-7) 8011)
  (= (cost-check-unvisited-location city-loc-8) 2503)
  (= (cost-check-unvisited-location city-loc-9) 2063)
  (= (cost-check-unvisited-location city-loc-10) 1874)
  (= (cost-check-unvisited-location city-loc-11) 3653)
  (= (cost-check-unvisited-location city-loc-12) 3933)
  (= (cost-check-unvisited-location city-loc-13) 7171)
  (= (cost-check-unvisited-location city-loc-14) 7126)
  (= (cost-check-unvisited-location city-loc-15) 7421)
  (= (cost-check-unvisited-location city-loc-16) 5128)
  (= (cost-check-unvisited-location city-loc-17) 4489)
  (= (cost-check-unvisited-location city-loc-18) 1511)
  (= (cost-check-unvisited-location city-loc-19) 6630)
  (= (cost-check-unvisited-location city-loc-20) 4850)
  (= (cost-check-unvisited-location city-loc-21) 3207)
  (= (cost-check-unvisited-location city-loc-22) 1289)
  (= (cost-check-unvisited-location city-loc-23) 7017)
  (= (cost-check-unvisited-location city-loc-24) 6622)
  (= (cost-check-unvisited-location city-loc-25) 6171)
  (= (cost-check-unvisited-location city-loc-26) 8375)
  (= (cost-check-unvisited-location city-loc-27) 4458)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)