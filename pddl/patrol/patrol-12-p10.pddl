(define (problem patrol-12-p10)
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
  city-loc-28 - location
  city-loc-29 - location
  city-loc-30 - location
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
  (road city-loc-4 city-loc-2)
  (road city-loc-2 city-loc-4)
  (road city-loc-5 city-loc-1)
  (road city-loc-1 city-loc-5)
  (road city-loc-6 city-loc-2)
  (road city-loc-2 city-loc-6)
  (road city-loc-7 city-loc-2)
  (road city-loc-2 city-loc-7)
  (road city-loc-7 city-loc-6)
  (road city-loc-6 city-loc-7)
  (road city-loc-8 city-loc-2)
  (road city-loc-2 city-loc-8)
  (road city-loc-8 city-loc-3)
  (road city-loc-3 city-loc-8)
  (road city-loc-8 city-loc-7)
  (road city-loc-7 city-loc-8)
  (road city-loc-11 city-loc-2)
  (road city-loc-2 city-loc-11)
  (road city-loc-11 city-loc-6)
  (road city-loc-6 city-loc-11)
  (road city-loc-11 city-loc-9)
  (road city-loc-9 city-loc-11)
  (road city-loc-12 city-loc-4)
  (road city-loc-4 city-loc-12)
  (road city-loc-14 city-loc-3)
  (road city-loc-3 city-loc-14)
  (road city-loc-14 city-loc-7)
  (road city-loc-7 city-loc-14)
  (road city-loc-14 city-loc-8)
  (road city-loc-8 city-loc-14)
  (road city-loc-15 city-loc-1)
  (road city-loc-1 city-loc-15)
  (road city-loc-15 city-loc-5)
  (road city-loc-5 city-loc-15)
  (road city-loc-15 city-loc-6)
  (road city-loc-6 city-loc-15)
  (road city-loc-15 city-loc-7)
  (road city-loc-7 city-loc-15)
  (road city-loc-15 city-loc-14)
  (road city-loc-14 city-loc-15)
  (road city-loc-16 city-loc-3)
  (road city-loc-3 city-loc-16)
  (road city-loc-16 city-loc-8)
  (road city-loc-8 city-loc-16)
  (road city-loc-17 city-loc-1)
  (road city-loc-1 city-loc-17)
  (road city-loc-17 city-loc-5)
  (road city-loc-5 city-loc-17)
  (road city-loc-18 city-loc-10)
  (road city-loc-10 city-loc-18)
  (road city-loc-19 city-loc-2)
  (road city-loc-2 city-loc-19)
  (road city-loc-19 city-loc-5)
  (road city-loc-5 city-loc-19)
  (road city-loc-19 city-loc-6)
  (road city-loc-6 city-loc-19)
  (road city-loc-19 city-loc-7)
  (road city-loc-7 city-loc-19)
  (road city-loc-19 city-loc-9)
  (road city-loc-9 city-loc-19)
  (road city-loc-19 city-loc-11)
  (road city-loc-11 city-loc-19)
  (road city-loc-19 city-loc-15)
  (road city-loc-15 city-loc-19)
  (road city-loc-20 city-loc-1)
  (road city-loc-1 city-loc-20)
  (road city-loc-20 city-loc-5)
  (road city-loc-5 city-loc-20)
  (road city-loc-20 city-loc-7)
  (road city-loc-7 city-loc-20)
  (road city-loc-20 city-loc-14)
  (road city-loc-14 city-loc-20)
  (road city-loc-20 city-loc-15)
  (road city-loc-15 city-loc-20)
  (road city-loc-20 city-loc-17)
  (road city-loc-17 city-loc-20)
  (road city-loc-21 city-loc-10)
  (road city-loc-10 city-loc-21)
  (road city-loc-21 city-loc-18)
  (road city-loc-18 city-loc-21)
  (road city-loc-22 city-loc-1)
  (road city-loc-1 city-loc-22)
  (road city-loc-22 city-loc-10)
  (road city-loc-10 city-loc-22)
  (road city-loc-22 city-loc-17)
  (road city-loc-17 city-loc-22)
  (road city-loc-23 city-loc-3)
  (road city-loc-3 city-loc-23)
  (road city-loc-23 city-loc-8)
  (road city-loc-8 city-loc-23)
  (road city-loc-23 city-loc-16)
  (road city-loc-16 city-loc-23)
  (road city-loc-24 city-loc-8)
  (road city-loc-8 city-loc-24)
  (road city-loc-24 city-loc-12)
  (road city-loc-12 city-loc-24)
  (road city-loc-24 city-loc-16)
  (road city-loc-16 city-loc-24)
  (road city-loc-24 city-loc-23)
  (road city-loc-23 city-loc-24)
  (road city-loc-25 city-loc-13)
  (road city-loc-13 city-loc-25)
  (road city-loc-26 city-loc-3)
  (road city-loc-3 city-loc-26)
  (road city-loc-26 city-loc-14)
  (road city-loc-14 city-loc-26)
  (road city-loc-26 city-loc-17)
  (road city-loc-17 city-loc-26)
  (road city-loc-26 city-loc-20)
  (road city-loc-20 city-loc-26)
  (road city-loc-27 city-loc-21)
  (road city-loc-21 city-loc-27)
  (road city-loc-27 city-loc-25)
  (road city-loc-25 city-loc-27)
  (road city-loc-27 city-loc-26)
  (road city-loc-26 city-loc-27)
  (road city-loc-28 city-loc-10)
  (road city-loc-10 city-loc-28)
  (road city-loc-28 city-loc-22)
  (road city-loc-22 city-loc-28)
  (road city-loc-29 city-loc-1)
  (road city-loc-1 city-loc-29)
  (road city-loc-29 city-loc-5)
  (road city-loc-5 city-loc-29)
  (road city-loc-29 city-loc-17)
  (road city-loc-17 city-loc-29)
  (road city-loc-29 city-loc-20)
  (road city-loc-20 city-loc-29)
  (road city-loc-29 city-loc-22)
  (road city-loc-22 city-loc-29)
  (road city-loc-30 city-loc-5)
  (road city-loc-5 city-loc-30)
  (road city-loc-30 city-loc-9)
  (road city-loc-9 city-loc-30)
  (road city-loc-30 city-loc-15)
  (road city-loc-15 city-loc-30)
  (road city-loc-30 city-loc-19)
  (road city-loc-19 city-loc-30)
  (= (road-length city-loc-4 city-loc-2) 21)
  (= (road-length city-loc-2 city-loc-4) 21)
  (= (road-length city-loc-5 city-loc-1) 12)
  (= (road-length city-loc-1 city-loc-5) 12)
  (= (road-length city-loc-6 city-loc-2) 13)
  (= (road-length city-loc-2 city-loc-6) 13)
  (= (road-length city-loc-7 city-loc-2) 16)
  (= (road-length city-loc-2 city-loc-7) 16)
  (= (road-length city-loc-7 city-loc-6) 19)
  (= (road-length city-loc-6 city-loc-7) 19)
  (= (road-length city-loc-8 city-loc-2) 21)
  (= (road-length city-loc-2 city-loc-8) 21)
  (= (road-length city-loc-8 city-loc-3) 24)
  (= (road-length city-loc-3 city-loc-8) 24)
  (= (road-length city-loc-8 city-loc-7) 15)
  (= (road-length city-loc-7 city-loc-8) 15)
  (= (road-length city-loc-11 city-loc-2) 21)
  (= (road-length city-loc-2 city-loc-11) 21)
  (= (road-length city-loc-11 city-loc-6) 11)
  (= (road-length city-loc-6 city-loc-11) 11)
  (= (road-length city-loc-11 city-loc-9) 24)
  (= (road-length city-loc-9 city-loc-11) 24)
  (= (road-length city-loc-12 city-loc-4) 16)
  (= (road-length city-loc-4 city-loc-12) 16)
  (= (road-length city-loc-14 city-loc-3) 15)
  (= (road-length city-loc-3 city-loc-14) 15)
  (= (road-length city-loc-14 city-loc-7) 21)
  (= (road-length city-loc-7 city-loc-14) 21)
  (= (road-length city-loc-14 city-loc-8) 21)
  (= (road-length city-loc-8 city-loc-14) 21)
  (= (road-length city-loc-15 city-loc-1) 22)
  (= (road-length city-loc-1 city-loc-15) 22)
  (= (road-length city-loc-15 city-loc-5) 18)
  (= (road-length city-loc-5 city-loc-15) 18)
  (= (road-length city-loc-15 city-loc-6) 22)
  (= (road-length city-loc-6 city-loc-15) 22)
  (= (road-length city-loc-15 city-loc-7) 16)
  (= (road-length city-loc-7 city-loc-15) 16)
  (= (road-length city-loc-15 city-loc-14) 24)
  (= (road-length city-loc-14 city-loc-15) 24)
  (= (road-length city-loc-16 city-loc-3) 22)
  (= (road-length city-loc-3 city-loc-16) 22)
  (= (road-length city-loc-16 city-loc-8) 13)
  (= (road-length city-loc-8 city-loc-16) 13)
  (= (road-length city-loc-17 city-loc-1) 14)
  (= (road-length city-loc-1 city-loc-17) 14)
  (= (road-length city-loc-17 city-loc-5) 25)
  (= (road-length city-loc-5 city-loc-17) 25)
  (= (road-length city-loc-18 city-loc-10) 11)
  (= (road-length city-loc-10 city-loc-18) 11)
  (= (road-length city-loc-19 city-loc-2) 25)
  (= (road-length city-loc-2 city-loc-19) 25)
  (= (road-length city-loc-19 city-loc-5) 24)
  (= (road-length city-loc-5 city-loc-19) 24)
  (= (road-length city-loc-19 city-loc-6) 13)
  (= (road-length city-loc-6 city-loc-19) 13)
  (= (road-length city-loc-19 city-loc-7) 24)
  (= (road-length city-loc-7 city-loc-19) 24)
  (= (road-length city-loc-19 city-loc-9) 20)
  (= (road-length city-loc-9 city-loc-19) 20)
  (= (road-length city-loc-19 city-loc-11) 15)
  (= (road-length city-loc-11 city-loc-19) 15)
  (= (road-length city-loc-19 city-loc-15) 18)
  (= (road-length city-loc-15 city-loc-19) 18)
  (= (road-length city-loc-20 city-loc-1) 15)
  (= (road-length city-loc-1 city-loc-20) 15)
  (= (road-length city-loc-20 city-loc-5) 19)
  (= (road-length city-loc-5 city-loc-20) 19)
  (= (road-length city-loc-20 city-loc-7) 22)
  (= (road-length city-loc-7 city-loc-20) 22)
  (= (road-length city-loc-20 city-loc-14) 19)
  (= (road-length city-loc-14 city-loc-20) 19)
  (= (road-length city-loc-20 city-loc-15) 12)
  (= (road-length city-loc-15 city-loc-20) 12)
  (= (road-length city-loc-20 city-loc-17) 17)
  (= (road-length city-loc-17 city-loc-20) 17)
  (= (road-length city-loc-21 city-loc-10) 22)
  (= (road-length city-loc-10 city-loc-21) 22)
  (= (road-length city-loc-21 city-loc-18) 14)
  (= (road-length city-loc-18 city-loc-21) 14)
  (= (road-length city-loc-22 city-loc-1) 17)
  (= (road-length city-loc-1 city-loc-22) 17)
  (= (road-length city-loc-22 city-loc-10) 23)
  (= (road-length city-loc-10 city-loc-22) 23)
  (= (road-length city-loc-22 city-loc-17) 12)
  (= (road-length city-loc-17 city-loc-22) 12)
  (= (road-length city-loc-23 city-loc-3) 20)
  (= (road-length city-loc-3 city-loc-23) 20)
  (= (road-length city-loc-23 city-loc-8) 23)
  (= (road-length city-loc-8 city-loc-23) 23)
  (= (road-length city-loc-23 city-loc-16) 12)
  (= (road-length city-loc-16 city-loc-23) 12)
  (= (road-length city-loc-24 city-loc-8) 21)
  (= (road-length city-loc-8 city-loc-24) 21)
  (= (road-length city-loc-24 city-loc-12) 17)
  (= (road-length city-loc-12 city-loc-24) 17)
  (= (road-length city-loc-24 city-loc-16) 13)
  (= (road-length city-loc-16 city-loc-24) 13)
  (= (road-length city-loc-24 city-loc-23) 21)
  (= (road-length city-loc-23 city-loc-24) 21)
  (= (road-length city-loc-25 city-loc-13) 14)
  (= (road-length city-loc-13 city-loc-25) 14)
  (= (road-length city-loc-26 city-loc-3) 22)
  (= (road-length city-loc-3 city-loc-26) 22)
  (= (road-length city-loc-26 city-loc-14) 14)
  (= (road-length city-loc-14 city-loc-26) 14)
  (= (road-length city-loc-26 city-loc-17) 17)
  (= (road-length city-loc-17 city-loc-26) 17)
  (= (road-length city-loc-26 city-loc-20) 19)
  (= (road-length city-loc-20 city-loc-26) 19)
  (= (road-length city-loc-27 city-loc-21) 24)
  (= (road-length city-loc-21 city-loc-27) 24)
  (= (road-length city-loc-27 city-loc-25) 22)
  (= (road-length city-loc-25 city-loc-27) 22)
  (= (road-length city-loc-27 city-loc-26) 18)
  (= (road-length city-loc-26 city-loc-27) 18)
  (= (road-length city-loc-28 city-loc-10) 18)
  (= (road-length city-loc-10 city-loc-28) 18)
  (= (road-length city-loc-28 city-loc-22) 23)
  (= (road-length city-loc-22 city-loc-28) 23)
  (= (road-length city-loc-29 city-loc-1) 10)
  (= (road-length city-loc-1 city-loc-29) 10)
  (= (road-length city-loc-29 city-loc-5) 12)
  (= (road-length city-loc-5 city-loc-29) 12)
  (= (road-length city-loc-29 city-loc-17) 23)
  (= (road-length city-loc-17 city-loc-29) 23)
  (= (road-length city-loc-29 city-loc-20) 25)
  (= (road-length city-loc-20 city-loc-29) 25)
  (= (road-length city-loc-29 city-loc-22) 21)
  (= (road-length city-loc-22 city-loc-29) 21)
  (= (road-length city-loc-30 city-loc-5) 18)
  (= (road-length city-loc-5 city-loc-30) 18)
  (= (road-length city-loc-30 city-loc-9) 14)
  (= (road-length city-loc-9 city-loc-30) 14)
  (= (road-length city-loc-30 city-loc-15) 25)
  (= (road-length city-loc-15 city-loc-30) 25)
  (= (road-length city-loc-30 city-loc-19) 15)
  (= (road-length city-loc-19 city-loc-30) 15)
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
  (next city-loc-27 city-loc-28)
  (next city-loc-28 city-loc-29)
  (next city-loc-29 city-loc-30)
  (origin city-loc-1)
  (last city-loc-30)
  (at city-loc-1)

; START - pure strategies
  (= (cost-check-unvisited-location city-loc-1) 4141)
  (= (cost-check-unvisited-location city-loc-2) 7359)
  (= (cost-check-unvisited-location city-loc-3) 5810)
  (= (cost-check-unvisited-location city-loc-4) 6888)
  (= (cost-check-unvisited-location city-loc-5) 7913)
  (= (cost-check-unvisited-location city-loc-6) 5028)
  (= (cost-check-unvisited-location city-loc-7) 7572)
  (= (cost-check-unvisited-location city-loc-8) 7126)
  (= (cost-check-unvisited-location city-loc-9) 8979)
  (= (cost-check-unvisited-location city-loc-10) 6359)
  (= (cost-check-unvisited-location city-loc-11) 4713)
  (= (cost-check-unvisited-location city-loc-12) 3249)
  (= (cost-check-unvisited-location city-loc-13) 1238)
  (= (cost-check-unvisited-location city-loc-14) 3994)
  (= (cost-check-unvisited-location city-loc-15) 8591)
  (= (cost-check-unvisited-location city-loc-16) 7234)
  (= (cost-check-unvisited-location city-loc-17) 8940)
  (= (cost-check-unvisited-location city-loc-18) 3933)
  (= (cost-check-unvisited-location city-loc-19) 1582)
  (= (cost-check-unvisited-location city-loc-20) 3715)
  (= (cost-check-unvisited-location city-loc-21) 1230)
  (= (cost-check-unvisited-location city-loc-22) 3949)
  (= (cost-check-unvisited-location city-loc-23) 5072)
  (= (cost-check-unvisited-location city-loc-24) 4918)
  (= (cost-check-unvisited-location city-loc-25) 7921)
  (= (cost-check-unvisited-location city-loc-26) 1631)
  (= (cost-check-unvisited-location city-loc-27) 1920)
  (= (cost-check-unvisited-location city-loc-28) 2435)
  (= (cost-check-unvisited-location city-loc-29) 1278)
  (= (cost-check-unvisited-location city-loc-30) 1101)
; END - pure strategies
 )
 (:goal (and
  (goal)
 ))
 (:metric minimize (total-cost))
)