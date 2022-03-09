; Transport city-sequential-30nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed

(define (problem transport-city-sequential-30nodes-1000size-4degree-100mindistance-3trucks-11packages-2008seed)
 (:domain transport)
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
  truck-1 - vehicle
  truck-2 - vehicle
  truck-3 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  package-6 - package
  package-7 - package
  package-8 - package
  package-9 - package
  package-10 - package
  package-11 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-loc-4 city-loc-2) 21)
 (= (base-drive city-loc-2 city-loc-4) 21)
 (= (base-drive city-loc-5 city-loc-1) 12)
 (= (base-drive city-loc-1 city-loc-5) 12)
 (= (base-drive city-loc-6 city-loc-2) 13)
 (= (base-drive city-loc-2 city-loc-6) 13)
 (= (base-drive city-loc-7 city-loc-2) 16)
 (= (base-drive city-loc-2 city-loc-7) 16)
 (= (base-drive city-loc-7 city-loc-6) 19)
 (= (base-drive city-loc-6 city-loc-7) 19)
 (= (base-drive city-loc-8 city-loc-2) 21)
 (= (base-drive city-loc-2 city-loc-8) 21)
 (= (base-drive city-loc-8 city-loc-3) 24)
 (= (base-drive city-loc-3 city-loc-8) 24)
 (= (base-drive city-loc-8 city-loc-7) 15)
 (= (base-drive city-loc-7 city-loc-8) 15)
 (= (base-drive city-loc-11 city-loc-2) 21)
 (= (base-drive city-loc-2 city-loc-11) 21)
 (= (base-drive city-loc-11 city-loc-6) 11)
 (= (base-drive city-loc-6 city-loc-11) 11)
 (= (base-drive city-loc-11 city-loc-9) 24)
 (= (base-drive city-loc-9 city-loc-11) 24)
 (= (base-drive city-loc-12 city-loc-4) 16)
 (= (base-drive city-loc-4 city-loc-12) 16)
 (= (base-drive city-loc-14 city-loc-3) 15)
 (= (base-drive city-loc-3 city-loc-14) 15)
 (= (base-drive city-loc-14 city-loc-7) 21)
 (= (base-drive city-loc-7 city-loc-14) 21)
 (= (base-drive city-loc-14 city-loc-8) 21)
 (= (base-drive city-loc-8 city-loc-14) 21)
 (= (base-drive city-loc-15 city-loc-1) 22)
 (= (base-drive city-loc-1 city-loc-15) 22)
 (= (base-drive city-loc-15 city-loc-5) 18)
 (= (base-drive city-loc-5 city-loc-15) 18)
 (= (base-drive city-loc-15 city-loc-6) 22)
 (= (base-drive city-loc-6 city-loc-15) 22)
 (= (base-drive city-loc-15 city-loc-7) 16)
 (= (base-drive city-loc-7 city-loc-15) 16)
 (= (base-drive city-loc-15 city-loc-14) 24)
 (= (base-drive city-loc-14 city-loc-15) 24)
 (= (base-drive city-loc-16 city-loc-3) 22)
 (= (base-drive city-loc-3 city-loc-16) 22)
 (= (base-drive city-loc-16 city-loc-8) 13)
 (= (base-drive city-loc-8 city-loc-16) 13)
 (= (base-drive city-loc-17 city-loc-1) 14)
 (= (base-drive city-loc-1 city-loc-17) 14)
 (= (base-drive city-loc-17 city-loc-5) 25)
 (= (base-drive city-loc-5 city-loc-17) 25)
 (= (base-drive city-loc-18 city-loc-10) 11)
 (= (base-drive city-loc-10 city-loc-18) 11)
 (= (base-drive city-loc-19 city-loc-2) 25)
 (= (base-drive city-loc-2 city-loc-19) 25)
 (= (base-drive city-loc-19 city-loc-5) 24)
 (= (base-drive city-loc-5 city-loc-19) 24)
 (= (base-drive city-loc-19 city-loc-6) 13)
 (= (base-drive city-loc-6 city-loc-19) 13)
 (= (base-drive city-loc-19 city-loc-7) 24)
 (= (base-drive city-loc-7 city-loc-19) 24)
 (= (base-drive city-loc-19 city-loc-9) 20)
 (= (base-drive city-loc-9 city-loc-19) 20)
 (= (base-drive city-loc-19 city-loc-11) 15)
 (= (base-drive city-loc-11 city-loc-19) 15)
 (= (base-drive city-loc-19 city-loc-15) 18)
 (= (base-drive city-loc-15 city-loc-19) 18)
 (= (base-drive city-loc-20 city-loc-1) 15)
 (= (base-drive city-loc-1 city-loc-20) 15)
 (= (base-drive city-loc-20 city-loc-5) 19)
 (= (base-drive city-loc-5 city-loc-20) 19)
 (= (base-drive city-loc-20 city-loc-7) 22)
 (= (base-drive city-loc-7 city-loc-20) 22)
 (= (base-drive city-loc-20 city-loc-14) 19)
 (= (base-drive city-loc-14 city-loc-20) 19)
 (= (base-drive city-loc-20 city-loc-15) 12)
 (= (base-drive city-loc-15 city-loc-20) 12)
 (= (base-drive city-loc-20 city-loc-17) 17)
 (= (base-drive city-loc-17 city-loc-20) 17)
 (= (base-drive city-loc-21 city-loc-10) 22)
 (= (base-drive city-loc-10 city-loc-21) 22)
 (= (base-drive city-loc-21 city-loc-18) 14)
 (= (base-drive city-loc-18 city-loc-21) 14)
 (= (base-drive city-loc-22 city-loc-1) 17)
 (= (base-drive city-loc-1 city-loc-22) 17)
 (= (base-drive city-loc-22 city-loc-10) 23)
 (= (base-drive city-loc-10 city-loc-22) 23)
 (= (base-drive city-loc-22 city-loc-17) 12)
 (= (base-drive city-loc-17 city-loc-22) 12)
 (= (base-drive city-loc-23 city-loc-3) 20)
 (= (base-drive city-loc-3 city-loc-23) 20)
 (= (base-drive city-loc-23 city-loc-8) 23)
 (= (base-drive city-loc-8 city-loc-23) 23)
 (= (base-drive city-loc-23 city-loc-16) 12)
 (= (base-drive city-loc-16 city-loc-23) 12)
 (= (base-drive city-loc-24 city-loc-8) 21)
 (= (base-drive city-loc-8 city-loc-24) 21)
 (= (base-drive city-loc-24 city-loc-12) 17)
 (= (base-drive city-loc-12 city-loc-24) 17)
 (= (base-drive city-loc-24 city-loc-16) 13)
 (= (base-drive city-loc-16 city-loc-24) 13)
 (= (base-drive city-loc-24 city-loc-23) 21)
 (= (base-drive city-loc-23 city-loc-24) 21)
 (= (base-drive city-loc-25 city-loc-13) 14)
 (= (base-drive city-loc-13 city-loc-25) 14)
 (= (base-drive city-loc-26 city-loc-3) 22)
 (= (base-drive city-loc-3 city-loc-26) 22)
 (= (base-drive city-loc-26 city-loc-14) 14)
 (= (base-drive city-loc-14 city-loc-26) 14)
 (= (base-drive city-loc-26 city-loc-17) 17)
 (= (base-drive city-loc-17 city-loc-26) 17)
 (= (base-drive city-loc-26 city-loc-20) 19)
 (= (base-drive city-loc-20 city-loc-26) 19)
 (= (base-drive city-loc-27 city-loc-21) 24)
 (= (base-drive city-loc-21 city-loc-27) 24)
 (= (base-drive city-loc-27 city-loc-25) 22)
 (= (base-drive city-loc-25 city-loc-27) 22)
 (= (base-drive city-loc-27 city-loc-26) 18)
 (= (base-drive city-loc-26 city-loc-27) 18)
 (= (base-drive city-loc-28 city-loc-10) 18)
 (= (base-drive city-loc-10 city-loc-28) 18)
 (= (base-drive city-loc-28 city-loc-22) 23)
 (= (base-drive city-loc-22 city-loc-28) 23)
 (= (base-drive city-loc-29 city-loc-1) 10)
 (= (base-drive city-loc-1 city-loc-29) 10)
 (= (base-drive city-loc-29 city-loc-5) 12)
 (= (base-drive city-loc-5 city-loc-29) 12)
 (= (base-drive city-loc-29 city-loc-17) 23)
 (= (base-drive city-loc-17 city-loc-29) 23)
 (= (base-drive city-loc-29 city-loc-20) 25)
 (= (base-drive city-loc-20 city-loc-29) 25)
 (= (base-drive city-loc-29 city-loc-22) 21)
 (= (base-drive city-loc-22 city-loc-29) 21)
 (= (base-drive city-loc-30 city-loc-5) 18)
 (= (base-drive city-loc-5 city-loc-30) 18)
 (= (base-drive city-loc-30 city-loc-9) 14)
 (= (base-drive city-loc-9 city-loc-30) 14)
 (= (base-drive city-loc-30 city-loc-15) 25)
 (= (base-drive city-loc-15 city-loc-30) 25)
 (= (base-drive city-loc-30 city-loc-19) 15)
 (= (base-drive city-loc-19 city-loc-30) 15)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-4 city-loc-2 truck-1) 7921)
  (= (cost-drive city-loc-2 city-loc-4 truck-1) 6197)
  (= (cost-drive city-loc-5 city-loc-1 truck-1) 4117)
  (= (cost-drive city-loc-1 city-loc-5 truck-1) 1150)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 7755)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 3144)
  (= (cost-drive city-loc-7 city-loc-2 truck-1) 5580)
  (= (cost-drive city-loc-2 city-loc-7 truck-1) 2358)
  (= (cost-drive city-loc-7 city-loc-6 truck-1) 8825)
  (= (cost-drive city-loc-6 city-loc-7 truck-1) 8638)
  (= (cost-drive city-loc-8 city-loc-2 truck-1) 8518)
  (= (cost-drive city-loc-2 city-loc-8 truck-1) 8069)
  (= (cost-drive city-loc-8 city-loc-3 truck-1) 7403)
  (= (cost-drive city-loc-3 city-loc-8 truck-1) 3995)
  (= (cost-drive city-loc-8 city-loc-7 truck-1) 7206)
  (= (cost-drive city-loc-7 city-loc-8 truck-1) 2967)
  (= (cost-drive city-loc-11 city-loc-2 truck-1) 5389)
  (= (cost-drive city-loc-2 city-loc-11 truck-1) 2304)
  (= (cost-drive city-loc-11 city-loc-6 truck-1) 1089)
  (= (cost-drive city-loc-6 city-loc-11 truck-1) 9795)
  (= (cost-drive city-loc-11 city-loc-9 truck-1) 2953)
  (= (cost-drive city-loc-9 city-loc-11 truck-1) 2376)
  (= (cost-drive city-loc-12 city-loc-4 truck-1) 2170)
  (= (cost-drive city-loc-4 city-loc-12 truck-1) 8260)
  (= (cost-drive city-loc-14 city-loc-3 truck-1) 8233)
  (= (cost-drive city-loc-3 city-loc-14 truck-1) 7304)
  (= (cost-drive city-loc-14 city-loc-7 truck-1) 8302)
  (= (cost-drive city-loc-7 city-loc-14 truck-1) 3046)
  (= (cost-drive city-loc-14 city-loc-8 truck-1) 5798)
  (= (cost-drive city-loc-8 city-loc-14 truck-1) 2198)
  (= (cost-drive city-loc-15 city-loc-1 truck-1) 3683)
  (= (cost-drive city-loc-1 city-loc-15 truck-1) 1252)
  (= (cost-drive city-loc-15 city-loc-5 truck-1) 1942)
  (= (cost-drive city-loc-5 city-loc-15 truck-1) 8827)
  (= (cost-drive city-loc-15 city-loc-6 truck-1) 8737)
  (= (cost-drive city-loc-6 city-loc-15 truck-1) 9095)
  (= (cost-drive city-loc-15 city-loc-7 truck-1) 9075)
  (= (cost-drive city-loc-7 city-loc-15 truck-1) 8013)
  (= (cost-drive city-loc-15 city-loc-14 truck-1) 8684)
  (= (cost-drive city-loc-14 city-loc-15 truck-1) 1490)
  (= (cost-drive city-loc-16 city-loc-3 truck-1) 8513)
  (= (cost-drive city-loc-3 city-loc-16 truck-1) 1424)
  (= (cost-drive city-loc-16 city-loc-8 truck-1) 2647)
  (= (cost-drive city-loc-8 city-loc-16 truck-1) 8675)
  (= (cost-drive city-loc-17 city-loc-1 truck-1) 4439)
  (= (cost-drive city-loc-1 city-loc-17 truck-1) 3978)
  (= (cost-drive city-loc-17 city-loc-5 truck-1) 9391)
  (= (cost-drive city-loc-5 city-loc-17 truck-1) 4094)
  (= (cost-drive city-loc-18 city-loc-10 truck-1) 7503)
  (= (cost-drive city-loc-10 city-loc-18 truck-1) 7504)
  (= (cost-drive city-loc-19 city-loc-2 truck-1) 9563)
  (= (cost-drive city-loc-2 city-loc-19 truck-1) 6553)
  (= (cost-drive city-loc-19 city-loc-5 truck-1) 4862)
  (= (cost-drive city-loc-5 city-loc-19 truck-1) 3664)
  (= (cost-drive city-loc-19 city-loc-6 truck-1) 9704)
  (= (cost-drive city-loc-6 city-loc-19 truck-1) 4364)
  (= (cost-drive city-loc-19 city-loc-7 truck-1) 4159)
  (= (cost-drive city-loc-7 city-loc-19 truck-1) 5818)
  (= (cost-drive city-loc-19 city-loc-9 truck-1) 7127)
  (= (cost-drive city-loc-9 city-loc-19 truck-1) 9424)
  (= (cost-drive city-loc-19 city-loc-11 truck-1) 6297)
  (= (cost-drive city-loc-11 city-loc-19 truck-1) 3608)
  (= (cost-drive city-loc-19 city-loc-15 truck-1) 6813)
  (= (cost-drive city-loc-15 city-loc-19 truck-1) 7769)
  (= (cost-drive city-loc-20 city-loc-1 truck-1) 9407)
  (= (cost-drive city-loc-1 city-loc-20 truck-1) 5829)
  (= (cost-drive city-loc-20 city-loc-5 truck-1) 1742)
  (= (cost-drive city-loc-5 city-loc-20 truck-1) 8864)
  (= (cost-drive city-loc-20 city-loc-7 truck-1) 8122)
  (= (cost-drive city-loc-7 city-loc-20 truck-1) 3525)
  (= (cost-drive city-loc-20 city-loc-14 truck-1) 9042)
  (= (cost-drive city-loc-14 city-loc-20 truck-1) 7072)
  (= (cost-drive city-loc-20 city-loc-15 truck-1) 7824)
  (= (cost-drive city-loc-15 city-loc-20 truck-1) 2159)
  (= (cost-drive city-loc-20 city-loc-17 truck-1) 7067)
  (= (cost-drive city-loc-17 city-loc-20 truck-1) 6777)
  (= (cost-drive city-loc-21 city-loc-10 truck-1) 8910)
  (= (cost-drive city-loc-10 city-loc-21 truck-1) 7690)
  (= (cost-drive city-loc-21 city-loc-18 truck-1) 5075)
  (= (cost-drive city-loc-18 city-loc-21 truck-1) 4798)
  (= (cost-drive city-loc-22 city-loc-1 truck-1) 7337)
  (= (cost-drive city-loc-1 city-loc-22 truck-1) 6427)
  (= (cost-drive city-loc-22 city-loc-10 truck-1) 1169)
  (= (cost-drive city-loc-10 city-loc-22 truck-1) 1775)
  (= (cost-drive city-loc-22 city-loc-17 truck-1) 5885)
  (= (cost-drive city-loc-17 city-loc-22 truck-1) 2804)
  (= (cost-drive city-loc-23 city-loc-3 truck-1) 5188)
  (= (cost-drive city-loc-3 city-loc-23 truck-1) 8179)
  (= (cost-drive city-loc-23 city-loc-8 truck-1) 6550)
  (= (cost-drive city-loc-8 city-loc-23 truck-1) 5710)
  (= (cost-drive city-loc-23 city-loc-16 truck-1) 4465)
  (= (cost-drive city-loc-16 city-loc-23 truck-1) 6964)
  (= (cost-drive city-loc-24 city-loc-8 truck-1) 7320)
  (= (cost-drive city-loc-8 city-loc-24 truck-1) 7981)
  (= (cost-drive city-loc-24 city-loc-12 truck-1) 3925)
  (= (cost-drive city-loc-12 city-loc-24 truck-1) 9229)
  (= (cost-drive city-loc-24 city-loc-16 truck-1) 5597)
  (= (cost-drive city-loc-16 city-loc-24 truck-1) 4937)
  (= (cost-drive city-loc-24 city-loc-23 truck-1) 2984)
  (= (cost-drive city-loc-23 city-loc-24 truck-1) 4632)
  (= (cost-drive city-loc-25 city-loc-13 truck-1) 3497)
  (= (cost-drive city-loc-13 city-loc-25 truck-1) 4508)
  (= (cost-drive city-loc-26 city-loc-3 truck-1) 7588)
  (= (cost-drive city-loc-3 city-loc-26 truck-1) 9189)
  (= (cost-drive city-loc-26 city-loc-14 truck-1) 7968)
  (= (cost-drive city-loc-14 city-loc-26 truck-1) 2105)
  (= (cost-drive city-loc-26 city-loc-17 truck-1) 7155)
  (= (cost-drive city-loc-17 city-loc-26 truck-1) 6599)
  (= (cost-drive city-loc-26 city-loc-20 truck-1) 6515)
  (= (cost-drive city-loc-20 city-loc-26 truck-1) 8426)
  (= (cost-drive city-loc-27 city-loc-21 truck-1) 3839)
  (= (cost-drive city-loc-21 city-loc-27 truck-1) 1090)
  (= (cost-drive city-loc-27 city-loc-25 truck-1) 6140)
  (= (cost-drive city-loc-25 city-loc-27 truck-1) 8082)
  (= (cost-drive city-loc-27 city-loc-26 truck-1) 9600)
  (= (cost-drive city-loc-26 city-loc-27 truck-1) 1583)
  (= (cost-drive city-loc-28 city-loc-10 truck-1) 6953)
  (= (cost-drive city-loc-10 city-loc-28 truck-1) 4073)
  (= (cost-drive city-loc-28 city-loc-22 truck-1) 1423)
  (= (cost-drive city-loc-22 city-loc-28 truck-1) 6426)
  (= (cost-drive city-loc-29 city-loc-1 truck-1) 6894)
  (= (cost-drive city-loc-1 city-loc-29 truck-1) 8339)
  (= (cost-drive city-loc-29 city-loc-5 truck-1) 5858)
  (= (cost-drive city-loc-5 city-loc-29 truck-1) 5915)
  (= (cost-drive city-loc-29 city-loc-17 truck-1) 6624)
  (= (cost-drive city-loc-17 city-loc-29 truck-1) 2948)
  (= (cost-drive city-loc-29 city-loc-20 truck-1) 2118)
  (= (cost-drive city-loc-20 city-loc-29 truck-1) 8128)
  (= (cost-drive city-loc-29 city-loc-22 truck-1) 4518)
  (= (cost-drive city-loc-22 city-loc-29 truck-1) 6126)
  (= (cost-drive city-loc-30 city-loc-5 truck-1) 6089)
  (= (cost-drive city-loc-5 city-loc-30 truck-1) 6374)
  (= (cost-drive city-loc-30 city-loc-9 truck-1) 9839)
  (= (cost-drive city-loc-9 city-loc-30 truck-1) 9484)
  (= (cost-drive city-loc-30 city-loc-15 truck-1) 9236)
  (= (cost-drive city-loc-15 city-loc-30 truck-1) 5679)
  (= (cost-drive city-loc-30 city-loc-19 truck-1) 3278)
  (= (cost-drive city-loc-19 city-loc-30 truck-1) 1917)
  (= (cost-drive city-loc-4 city-loc-2 truck-2) 6285)
  (= (cost-drive city-loc-2 city-loc-4 truck-2) 8370)
  (= (cost-drive city-loc-5 city-loc-1 truck-2) 9664)
  (= (cost-drive city-loc-1 city-loc-5 truck-2) 5290)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 5105)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 6269)
  (= (cost-drive city-loc-7 city-loc-2 truck-2) 1574)
  (= (cost-drive city-loc-2 city-loc-7 truck-2) 5039)
  (= (cost-drive city-loc-7 city-loc-6 truck-2) 5392)
  (= (cost-drive city-loc-6 city-loc-7 truck-2) 5548)
  (= (cost-drive city-loc-8 city-loc-2 truck-2) 9342)
  (= (cost-drive city-loc-2 city-loc-8 truck-2) 6272)
  (= (cost-drive city-loc-8 city-loc-3 truck-2) 2222)
  (= (cost-drive city-loc-3 city-loc-8 truck-2) 5561)
  (= (cost-drive city-loc-8 city-loc-7 truck-2) 2984)
  (= (cost-drive city-loc-7 city-loc-8 truck-2) 4408)
  (= (cost-drive city-loc-11 city-loc-2 truck-2) 3223)
  (= (cost-drive city-loc-2 city-loc-11 truck-2) 4449)
  (= (cost-drive city-loc-11 city-loc-6 truck-2) 3611)
  (= (cost-drive city-loc-6 city-loc-11 truck-2) 6752)
  (= (cost-drive city-loc-11 city-loc-9 truck-2) 8037)
  (= (cost-drive city-loc-9 city-loc-11 truck-2) 6430)
  (= (cost-drive city-loc-12 city-loc-4 truck-2) 1773)
  (= (cost-drive city-loc-4 city-loc-12 truck-2) 3009)
  (= (cost-drive city-loc-14 city-loc-3 truck-2) 2274)
  (= (cost-drive city-loc-3 city-loc-14 truck-2) 9728)
  (= (cost-drive city-loc-14 city-loc-7 truck-2) 8072)
  (= (cost-drive city-loc-7 city-loc-14 truck-2) 6393)
  (= (cost-drive city-loc-14 city-loc-8 truck-2) 3982)
  (= (cost-drive city-loc-8 city-loc-14 truck-2) 3819)
  (= (cost-drive city-loc-15 city-loc-1 truck-2) 4806)
  (= (cost-drive city-loc-1 city-loc-15 truck-2) 5771)
  (= (cost-drive city-loc-15 city-loc-5 truck-2) 8819)
  (= (cost-drive city-loc-5 city-loc-15 truck-2) 8692)
  (= (cost-drive city-loc-15 city-loc-6 truck-2) 3422)
  (= (cost-drive city-loc-6 city-loc-15 truck-2) 5716)
  (= (cost-drive city-loc-15 city-loc-7 truck-2) 1357)
  (= (cost-drive city-loc-7 city-loc-15 truck-2) 9991)
  (= (cost-drive city-loc-15 city-loc-14 truck-2) 2730)
  (= (cost-drive city-loc-14 city-loc-15 truck-2) 3610)
  (= (cost-drive city-loc-16 city-loc-3 truck-2) 4610)
  (= (cost-drive city-loc-3 city-loc-16 truck-2) 1740)
  (= (cost-drive city-loc-16 city-loc-8 truck-2) 8026)
  (= (cost-drive city-loc-8 city-loc-16 truck-2) 7194)
  (= (cost-drive city-loc-17 city-loc-1 truck-2) 7351)
  (= (cost-drive city-loc-1 city-loc-17 truck-2) 3523)
  (= (cost-drive city-loc-17 city-loc-5 truck-2) 9013)
  (= (cost-drive city-loc-5 city-loc-17 truck-2) 2500)
  (= (cost-drive city-loc-18 city-loc-10 truck-2) 5522)
  (= (cost-drive city-loc-10 city-loc-18 truck-2) 2969)
  (= (cost-drive city-loc-19 city-loc-2 truck-2) 4024)
  (= (cost-drive city-loc-2 city-loc-19 truck-2) 9173)
  (= (cost-drive city-loc-19 city-loc-5 truck-2) 9126)
  (= (cost-drive city-loc-5 city-loc-19 truck-2) 7977)
  (= (cost-drive city-loc-19 city-loc-6 truck-2) 6224)
  (= (cost-drive city-loc-6 city-loc-19 truck-2) 1710)
  (= (cost-drive city-loc-19 city-loc-7 truck-2) 3003)
  (= (cost-drive city-loc-7 city-loc-19 truck-2) 7630)
  (= (cost-drive city-loc-19 city-loc-9 truck-2) 6152)
  (= (cost-drive city-loc-9 city-loc-19 truck-2) 7189)
  (= (cost-drive city-loc-19 city-loc-11 truck-2) 1844)
  (= (cost-drive city-loc-11 city-loc-19 truck-2) 9006)
  (= (cost-drive city-loc-19 city-loc-15 truck-2) 7117)
  (= (cost-drive city-loc-15 city-loc-19 truck-2) 1015)
  (= (cost-drive city-loc-20 city-loc-1 truck-2) 3617)
  (= (cost-drive city-loc-1 city-loc-20 truck-2) 6475)
  (= (cost-drive city-loc-20 city-loc-5 truck-2) 4808)
  (= (cost-drive city-loc-5 city-loc-20 truck-2) 6753)
  (= (cost-drive city-loc-20 city-loc-7 truck-2) 5355)
  (= (cost-drive city-loc-7 city-loc-20 truck-2) 1556)
  (= (cost-drive city-loc-20 city-loc-14 truck-2) 9770)
  (= (cost-drive city-loc-14 city-loc-20 truck-2) 3079)
  (= (cost-drive city-loc-20 city-loc-15 truck-2) 3249)
  (= (cost-drive city-loc-15 city-loc-20 truck-2) 6189)
  (= (cost-drive city-loc-20 city-loc-17 truck-2) 3495)
  (= (cost-drive city-loc-17 city-loc-20 truck-2) 6932)
  (= (cost-drive city-loc-21 city-loc-10 truck-2) 8827)
  (= (cost-drive city-loc-10 city-loc-21 truck-2) 3617)
  (= (cost-drive city-loc-21 city-loc-18 truck-2) 9534)
  (= (cost-drive city-loc-18 city-loc-21 truck-2) 5570)
  (= (cost-drive city-loc-22 city-loc-1 truck-2) 5408)
  (= (cost-drive city-loc-1 city-loc-22 truck-2) 8641)
  (= (cost-drive city-loc-22 city-loc-10 truck-2) 2729)
  (= (cost-drive city-loc-10 city-loc-22 truck-2) 4941)
  (= (cost-drive city-loc-22 city-loc-17 truck-2) 6292)
  (= (cost-drive city-loc-17 city-loc-22 truck-2) 8168)
  (= (cost-drive city-loc-23 city-loc-3 truck-2) 2292)
  (= (cost-drive city-loc-3 city-loc-23 truck-2) 5194)
  (= (cost-drive city-loc-23 city-loc-8 truck-2) 7273)
  (= (cost-drive city-loc-8 city-loc-23 truck-2) 4578)
  (= (cost-drive city-loc-23 city-loc-16 truck-2) 1572)
  (= (cost-drive city-loc-16 city-loc-23 truck-2) 9143)
  (= (cost-drive city-loc-24 city-loc-8 truck-2) 9469)
  (= (cost-drive city-loc-8 city-loc-24 truck-2) 8716)
  (= (cost-drive city-loc-24 city-loc-12 truck-2) 3096)
  (= (cost-drive city-loc-12 city-loc-24 truck-2) 2932)
  (= (cost-drive city-loc-24 city-loc-16 truck-2) 7645)
  (= (cost-drive city-loc-16 city-loc-24 truck-2) 7645)
  (= (cost-drive city-loc-24 city-loc-23 truck-2) 4919)
  (= (cost-drive city-loc-23 city-loc-24 truck-2) 4219)
  (= (cost-drive city-loc-25 city-loc-13 truck-2) 4794)
  (= (cost-drive city-loc-13 city-loc-25 truck-2) 2840)
  (= (cost-drive city-loc-26 city-loc-3 truck-2) 7114)
  (= (cost-drive city-loc-3 city-loc-26 truck-2) 7133)
  (= (cost-drive city-loc-26 city-loc-14 truck-2) 9918)
  (= (cost-drive city-loc-14 city-loc-26 truck-2) 4283)
  (= (cost-drive city-loc-26 city-loc-17 truck-2) 5467)
  (= (cost-drive city-loc-17 city-loc-26 truck-2) 8000)
  (= (cost-drive city-loc-26 city-loc-20 truck-2) 4732)
  (= (cost-drive city-loc-20 city-loc-26 truck-2) 9840)
  (= (cost-drive city-loc-27 city-loc-21 truck-2) 5541)
  (= (cost-drive city-loc-21 city-loc-27 truck-2) 9364)
  (= (cost-drive city-loc-27 city-loc-25 truck-2) 9773)
  (= (cost-drive city-loc-25 city-loc-27 truck-2) 6077)
  (= (cost-drive city-loc-27 city-loc-26 truck-2) 8299)
  (= (cost-drive city-loc-26 city-loc-27 truck-2) 8246)
  (= (cost-drive city-loc-28 city-loc-10 truck-2) 9150)
  (= (cost-drive city-loc-10 city-loc-28 truck-2) 5917)
  (= (cost-drive city-loc-28 city-loc-22 truck-2) 9615)
  (= (cost-drive city-loc-22 city-loc-28 truck-2) 3228)
  (= (cost-drive city-loc-29 city-loc-1 truck-2) 2557)
  (= (cost-drive city-loc-1 city-loc-29 truck-2) 2126)
  (= (cost-drive city-loc-29 city-loc-5 truck-2) 7505)
  (= (cost-drive city-loc-5 city-loc-29 truck-2) 9499)
  (= (cost-drive city-loc-29 city-loc-17 truck-2) 9474)
  (= (cost-drive city-loc-17 city-loc-29 truck-2) 8918)
  (= (cost-drive city-loc-29 city-loc-20 truck-2) 6485)
  (= (cost-drive city-loc-20 city-loc-29 truck-2) 4888)
  (= (cost-drive city-loc-29 city-loc-22 truck-2) 1079)
  (= (cost-drive city-loc-22 city-loc-29 truck-2) 3300)
  (= (cost-drive city-loc-30 city-loc-5 truck-2) 6223)
  (= (cost-drive city-loc-5 city-loc-30 truck-2) 4231)
  (= (cost-drive city-loc-30 city-loc-9 truck-2) 9260)
  (= (cost-drive city-loc-9 city-loc-30 truck-2) 2153)
  (= (cost-drive city-loc-30 city-loc-15 truck-2) 3249)
  (= (cost-drive city-loc-15 city-loc-30 truck-2) 6138)
  (= (cost-drive city-loc-30 city-loc-19 truck-2) 3206)
  (= (cost-drive city-loc-19 city-loc-30 truck-2) 3290)
  (= (cost-drive city-loc-4 city-loc-2 truck-3) 9353)
  (= (cost-drive city-loc-2 city-loc-4 truck-3) 8712)
  (= (cost-drive city-loc-5 city-loc-1 truck-3) 5896)
  (= (cost-drive city-loc-1 city-loc-5 truck-3) 9429)
  (= (cost-drive city-loc-6 city-loc-2 truck-3) 8415)
  (= (cost-drive city-loc-2 city-loc-6 truck-3) 5932)
  (= (cost-drive city-loc-7 city-loc-2 truck-3) 5243)
  (= (cost-drive city-loc-2 city-loc-7 truck-3) 4635)
  (= (cost-drive city-loc-7 city-loc-6 truck-3) 8791)
  (= (cost-drive city-loc-6 city-loc-7 truck-3) 5330)
  (= (cost-drive city-loc-8 city-loc-2 truck-3) 6108)
  (= (cost-drive city-loc-2 city-loc-8 truck-3) 2300)
  (= (cost-drive city-loc-8 city-loc-3 truck-3) 5850)
  (= (cost-drive city-loc-3 city-loc-8 truck-3) 7224)
  (= (cost-drive city-loc-8 city-loc-7 truck-3) 5744)
  (= (cost-drive city-loc-7 city-loc-8 truck-3) 5057)
  (= (cost-drive city-loc-11 city-loc-2 truck-3) 4935)
  (= (cost-drive city-loc-2 city-loc-11 truck-3) 4141)
  (= (cost-drive city-loc-11 city-loc-6 truck-3) 7836)
  (= (cost-drive city-loc-6 city-loc-11 truck-3) 7130)
  (= (cost-drive city-loc-11 city-loc-9 truck-3) 6674)
  (= (cost-drive city-loc-9 city-loc-11 truck-3) 3165)
  (= (cost-drive city-loc-12 city-loc-4 truck-3) 1125)
  (= (cost-drive city-loc-4 city-loc-12 truck-3) 4017)
  (= (cost-drive city-loc-14 city-loc-3 truck-3) 4643)
  (= (cost-drive city-loc-3 city-loc-14 truck-3) 1366)
  (= (cost-drive city-loc-14 city-loc-7 truck-3) 7383)
  (= (cost-drive city-loc-7 city-loc-14 truck-3) 2812)
  (= (cost-drive city-loc-14 city-loc-8 truck-3) 6253)
  (= (cost-drive city-loc-8 city-loc-14 truck-3) 9872)
  (= (cost-drive city-loc-15 city-loc-1 truck-3) 9351)
  (= (cost-drive city-loc-1 city-loc-15 truck-3) 6082)
  (= (cost-drive city-loc-15 city-loc-5 truck-3) 4237)
  (= (cost-drive city-loc-5 city-loc-15 truck-3) 9499)
  (= (cost-drive city-loc-15 city-loc-6 truck-3) 7066)
  (= (cost-drive city-loc-6 city-loc-15 truck-3) 7869)
  (= (cost-drive city-loc-15 city-loc-7 truck-3) 4710)
  (= (cost-drive city-loc-7 city-loc-15 truck-3) 2109)
  (= (cost-drive city-loc-15 city-loc-14 truck-3) 8088)
  (= (cost-drive city-loc-14 city-loc-15 truck-3) 9162)
  (= (cost-drive city-loc-16 city-loc-3 truck-3) 2599)
  (= (cost-drive city-loc-3 city-loc-16 truck-3) 6163)
  (= (cost-drive city-loc-16 city-loc-8 truck-3) 5160)
  (= (cost-drive city-loc-8 city-loc-16 truck-3) 8057)
  (= (cost-drive city-loc-17 city-loc-1 truck-3) 5358)
  (= (cost-drive city-loc-1 city-loc-17 truck-3) 8936)
  (= (cost-drive city-loc-17 city-loc-5 truck-3) 3166)
  (= (cost-drive city-loc-5 city-loc-17 truck-3) 7998)
  (= (cost-drive city-loc-18 city-loc-10 truck-3) 7455)
  (= (cost-drive city-loc-10 city-loc-18 truck-3) 3599)
  (= (cost-drive city-loc-19 city-loc-2 truck-3) 3645)
  (= (cost-drive city-loc-2 city-loc-19 truck-3) 6754)
  (= (cost-drive city-loc-19 city-loc-5 truck-3) 9668)
  (= (cost-drive city-loc-5 city-loc-19 truck-3) 9235)
  (= (cost-drive city-loc-19 city-loc-6 truck-3) 2274)
  (= (cost-drive city-loc-6 city-loc-19 truck-3) 7472)
  (= (cost-drive city-loc-19 city-loc-7 truck-3) 5765)
  (= (cost-drive city-loc-7 city-loc-19 truck-3) 7847)
  (= (cost-drive city-loc-19 city-loc-9 truck-3) 3536)
  (= (cost-drive city-loc-9 city-loc-19 truck-3) 6425)
  (= (cost-drive city-loc-19 city-loc-11 truck-3) 9041)
  (= (cost-drive city-loc-11 city-loc-19 truck-3) 5316)
  (= (cost-drive city-loc-19 city-loc-15 truck-3) 5035)
  (= (cost-drive city-loc-15 city-loc-19 truck-3) 6642)
  (= (cost-drive city-loc-20 city-loc-1 truck-3) 7786)
  (= (cost-drive city-loc-1 city-loc-20 truck-3) 9071)
  (= (cost-drive city-loc-20 city-loc-5 truck-3) 5234)
  (= (cost-drive city-loc-5 city-loc-20 truck-3) 4304)
  (= (cost-drive city-loc-20 city-loc-7 truck-3) 7352)
  (= (cost-drive city-loc-7 city-loc-20 truck-3) 1074)
  (= (cost-drive city-loc-20 city-loc-14 truck-3) 9043)
  (= (cost-drive city-loc-14 city-loc-20 truck-3) 3449)
  (= (cost-drive city-loc-20 city-loc-15 truck-3) 3144)
  (= (cost-drive city-loc-15 city-loc-20 truck-3) 4603)
  (= (cost-drive city-loc-20 city-loc-17 truck-3) 1929)
  (= (cost-drive city-loc-17 city-loc-20 truck-3) 7774)
  (= (cost-drive city-loc-21 city-loc-10 truck-3) 8781)
  (= (cost-drive city-loc-10 city-loc-21 truck-3) 3245)
  (= (cost-drive city-loc-21 city-loc-18 truck-3) 6554)
  (= (cost-drive city-loc-18 city-loc-21 truck-3) 6552)
  (= (cost-drive city-loc-22 city-loc-1 truck-3) 8401)
  (= (cost-drive city-loc-1 city-loc-22 truck-3) 1123)
  (= (cost-drive city-loc-22 city-loc-10 truck-3) 5279)
  (= (cost-drive city-loc-10 city-loc-22 truck-3) 7975)
  (= (cost-drive city-loc-22 city-loc-17 truck-3) 6780)
  (= (cost-drive city-loc-17 city-loc-22 truck-3) 3703)
  (= (cost-drive city-loc-23 city-loc-3 truck-3) 6123)
  (= (cost-drive city-loc-3 city-loc-23 truck-3) 7992)
  (= (cost-drive city-loc-23 city-loc-8 truck-3) 4453)
  (= (cost-drive city-loc-8 city-loc-23 truck-3) 4131)
  (= (cost-drive city-loc-23 city-loc-16 truck-3) 6886)
  (= (cost-drive city-loc-16 city-loc-23 truck-3) 1787)
  (= (cost-drive city-loc-24 city-loc-8 truck-3) 6872)
  (= (cost-drive city-loc-8 city-loc-24 truck-3) 3850)
  (= (cost-drive city-loc-24 city-loc-12 truck-3) 5537)
  (= (cost-drive city-loc-12 city-loc-24 truck-3) 8821)
  (= (cost-drive city-loc-24 city-loc-16 truck-3) 5149)
  (= (cost-drive city-loc-16 city-loc-24 truck-3) 9225)
  (= (cost-drive city-loc-24 city-loc-23 truck-3) 8276)
  (= (cost-drive city-loc-23 city-loc-24 truck-3) 1151)
  (= (cost-drive city-loc-25 city-loc-13 truck-3) 4045)
  (= (cost-drive city-loc-13 city-loc-25 truck-3) 5643)
  (= (cost-drive city-loc-26 city-loc-3 truck-3) 6582)
  (= (cost-drive city-loc-3 city-loc-26 truck-3) 5685)
  (= (cost-drive city-loc-26 city-loc-14 truck-3) 3961)
  (= (cost-drive city-loc-14 city-loc-26 truck-3) 8939)
  (= (cost-drive city-loc-26 city-loc-17 truck-3) 6634)
  (= (cost-drive city-loc-17 city-loc-26 truck-3) 7276)
  (= (cost-drive city-loc-26 city-loc-20 truck-3) 7278)
  (= (cost-drive city-loc-20 city-loc-26 truck-3) 7266)
  (= (cost-drive city-loc-27 city-loc-21 truck-3) 9395)
  (= (cost-drive city-loc-21 city-loc-27 truck-3) 5454)
  (= (cost-drive city-loc-27 city-loc-25 truck-3) 4587)
  (= (cost-drive city-loc-25 city-loc-27 truck-3) 1763)
  (= (cost-drive city-loc-27 city-loc-26 truck-3) 1819)
  (= (cost-drive city-loc-26 city-loc-27 truck-3) 1209)
  (= (cost-drive city-loc-28 city-loc-10 truck-3) 4168)
  (= (cost-drive city-loc-10 city-loc-28 truck-3) 4038)
  (= (cost-drive city-loc-28 city-loc-22 truck-3) 6088)
  (= (cost-drive city-loc-22 city-loc-28 truck-3) 4733)
  (= (cost-drive city-loc-29 city-loc-1 truck-3) 3631)
  (= (cost-drive city-loc-1 city-loc-29 truck-3) 5647)
  (= (cost-drive city-loc-29 city-loc-5 truck-3) 8002)
  (= (cost-drive city-loc-5 city-loc-29 truck-3) 2030)
  (= (cost-drive city-loc-29 city-loc-17 truck-3) 6970)
  (= (cost-drive city-loc-17 city-loc-29 truck-3) 2958)
  (= (cost-drive city-loc-29 city-loc-20 truck-3) 1352)
  (= (cost-drive city-loc-20 city-loc-29 truck-3) 4110)
  (= (cost-drive city-loc-29 city-loc-22 truck-3) 4567)
  (= (cost-drive city-loc-22 city-loc-29 truck-3) 4191)
  (= (cost-drive city-loc-30 city-loc-5 truck-3) 4700)
  (= (cost-drive city-loc-5 city-loc-30 truck-3) 3674)
  (= (cost-drive city-loc-30 city-loc-9 truck-3) 7034)
  (= (cost-drive city-loc-9 city-loc-30 truck-3) 8185)
  (= (cost-drive city-loc-30 city-loc-15 truck-3) 5774)
  (= (cost-drive city-loc-15 city-loc-30 truck-3) 5410)
  (= (cost-drive city-loc-30 city-loc-19 truck-3) 1078)
  (= (cost-drive city-loc-19 city-loc-30 truck-3) 3003)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 120,854 -> 200,669
  (road city-loc-4 city-loc-2)
  ; 200,669 -> 120,854
  (road city-loc-2 city-loc-4)
  ; 377,283 -> 490,285
  (road city-loc-5 city-loc-1)
  ; 490,285 -> 377,283
  (road city-loc-1 city-loc-5)
  ; 171,545 -> 200,669
  (road city-loc-6 city-loc-2)
  ; 200,669 -> 171,545
  (road city-loc-2 city-loc-6)
  ; 348,607 -> 200,669
  (road city-loc-7 city-loc-2)
  ; 200,669 -> 348,607
  (road city-loc-2 city-loc-7)
  ; 348,607 -> 171,545
  (road city-loc-7 city-loc-6)
  ; 171,545 -> 348,607
  (road city-loc-6 city-loc-7)
  ; 395,741 -> 200,669
  (road city-loc-8 city-loc-2)
  ; 200,669 -> 395,741
  (road city-loc-2 city-loc-8)
  ; 395,741 -> 630,722
  (road city-loc-8 city-loc-3)
  ; 630,722 -> 395,741
  (road city-loc-3 city-loc-8)
  ; 395,741 -> 348,607
  (road city-loc-8 city-loc-7)
  ; 348,607 -> 395,741
  (road city-loc-7 city-loc-8)
  ; 69,508 -> 200,669
  (road city-loc-11 city-loc-2)
  ; 200,669 -> 69,508
  (road city-loc-2 city-loc-11)
  ; 69,508 -> 171,545
  (road city-loc-11 city-loc-6)
  ; 171,545 -> 69,508
  (road city-loc-6 city-loc-11)
  ; 69,508 -> 71,275
  (road city-loc-11 city-loc-9)
  ; 71,275 -> 69,508
  (road city-loc-9 city-loc-11)
  ; 203,987 -> 120,854
  (road city-loc-12 city-loc-4)
  ; 120,854 -> 203,987
  (road city-loc-4 city-loc-12)
  ; 551,602 -> 630,722
  (road city-loc-14 city-loc-3)
  ; 630,722 -> 551,602
  (road city-loc-3 city-loc-14)
  ; 551,602 -> 348,607
  (road city-loc-14 city-loc-7)
  ; 348,607 -> 551,602
  (road city-loc-7 city-loc-14)
  ; 551,602 -> 395,741
  (road city-loc-14 city-loc-8)
  ; 395,741 -> 551,602
  (road city-loc-8 city-loc-14)
  ; 366,457 -> 490,285
  (road city-loc-15 city-loc-1)
  ; 490,285 -> 366,457
  (road city-loc-1 city-loc-15)
  ; 366,457 -> 377,283
  (road city-loc-15 city-loc-5)
  ; 377,283 -> 366,457
  (road city-loc-5 city-loc-15)
  ; 366,457 -> 171,545
  (road city-loc-15 city-loc-6)
  ; 171,545 -> 366,457
  (road city-loc-6 city-loc-15)
  ; 366,457 -> 348,607
  (road city-loc-15 city-loc-7)
  ; 348,607 -> 366,457
  (road city-loc-7 city-loc-15)
  ; 366,457 -> 551,602
  (road city-loc-15 city-loc-14)
  ; 551,602 -> 366,457
  (road city-loc-14 city-loc-15)
  ; 453,848 -> 630,722
  (road city-loc-16 city-loc-3)
  ; 630,722 -> 453,848
  (road city-loc-3 city-loc-16)
  ; 453,848 -> 395,741
  (road city-loc-16 city-loc-8)
  ; 395,741 -> 453,848
  (road city-loc-8 city-loc-16)
  ; 614,343 -> 490,285
  (road city-loc-17 city-loc-1)
  ; 490,285 -> 614,343
  (road city-loc-1 city-loc-17)
  ; 614,343 -> 377,283
  (road city-loc-17 city-loc-5)
  ; 377,283 -> 614,343
  (road city-loc-5 city-loc-17)
  ; 936,210 -> 858,139
  (road city-loc-18 city-loc-10)
  ; 858,139 -> 936,210
  (road city-loc-10 city-loc-18)
  ; 193,424 -> 200,669
  (road city-loc-19 city-loc-2)
  ; 200,669 -> 193,424
  (road city-loc-2 city-loc-19)
  ; 193,424 -> 377,283
  (road city-loc-19 city-loc-5)
  ; 377,283 -> 193,424
  (road city-loc-5 city-loc-19)
  ; 193,424 -> 171,545
  (road city-loc-19 city-loc-6)
  ; 171,545 -> 193,424
  (road city-loc-6 city-loc-19)
  ; 193,424 -> 348,607
  (road city-loc-19 city-loc-7)
  ; 348,607 -> 193,424
  (road city-loc-7 city-loc-19)
  ; 193,424 -> 71,275
  (road city-loc-19 city-loc-9)
  ; 71,275 -> 193,424
  (road city-loc-9 city-loc-19)
  ; 193,424 -> 69,508
  (road city-loc-19 city-loc-11)
  ; 69,508 -> 193,424
  (road city-loc-11 city-loc-19)
  ; 193,424 -> 366,457
  (road city-loc-19 city-loc-15)
  ; 366,457 -> 193,424
  (road city-loc-15 city-loc-19)
  ; 480,435 -> 490,285
  (road city-loc-20 city-loc-1)
  ; 490,285 -> 480,435
  (road city-loc-1 city-loc-20)
  ; 480,435 -> 377,283
  (road city-loc-20 city-loc-5)
  ; 377,283 -> 480,435
  (road city-loc-5 city-loc-20)
  ; 480,435 -> 348,607
  (road city-loc-20 city-loc-7)
  ; 348,607 -> 480,435
  (road city-loc-7 city-loc-20)
  ; 480,435 -> 551,602
  (road city-loc-20 city-loc-14)
  ; 551,602 -> 480,435
  (road city-loc-14 city-loc-20)
  ; 480,435 -> 366,457
  (road city-loc-20 city-loc-15)
  ; 366,457 -> 480,435
  (road city-loc-15 city-loc-20)
  ; 480,435 -> 614,343
  (road city-loc-20 city-loc-17)
  ; 614,343 -> 480,435
  (road city-loc-17 city-loc-20)
  ; 918,341 -> 858,139
  (road city-loc-21 city-loc-10)
  ; 858,139 -> 918,341
  (road city-loc-10 city-loc-21)
  ; 918,341 -> 936,210
  (road city-loc-21 city-loc-18)
  ; 936,210 -> 918,341
  (road city-loc-18 city-loc-21)
  ; 651,235 -> 490,285
  (road city-loc-22 city-loc-1)
  ; 490,285 -> 651,235
  (road city-loc-1 city-loc-22)
  ; 651,235 -> 858,139
  (road city-loc-22 city-loc-10)
  ; 858,139 -> 651,235
  (road city-loc-10 city-loc-22)
  ; 651,235 -> 614,343
  (road city-loc-22 city-loc-17)
  ; 614,343 -> 651,235
  (road city-loc-17 city-loc-22)
  ; 560,901 -> 630,722
  (road city-loc-23 city-loc-3)
  ; 630,722 -> 560,901
  (road city-loc-3 city-loc-23)
  ; 560,901 -> 395,741
  (road city-loc-23 city-loc-8)
  ; 395,741 -> 560,901
  (road city-loc-8 city-loc-23)
  ; 560,901 -> 453,848
  (road city-loc-23 city-loc-16)
  ; 453,848 -> 560,901
  (road city-loc-16 city-loc-23)
  ; 362,940 -> 395,741
  (road city-loc-24 city-loc-8)
  ; 395,741 -> 362,940
  (road city-loc-8 city-loc-24)
  ; 362,940 -> 203,987
  (road city-loc-24 city-loc-12)
  ; 203,987 -> 362,940
  (road city-loc-12 city-loc-24)
  ; 362,940 -> 453,848
  (road city-loc-24 city-loc-16)
  ; 453,848 -> 362,940
  (road city-loc-16 city-loc-24)
  ; 362,940 -> 560,901
  (road city-loc-24 city-loc-23)
  ; 560,901 -> 362,940
  (road city-loc-23 city-loc-24)
  ; 941,734 -> 968,863
  (road city-loc-25 city-loc-13)
  ; 968,863 -> 941,734
  (road city-loc-13 city-loc-25)
  ; 653,507 -> 630,722
  (road city-loc-26 city-loc-3)
  ; 630,722 -> 653,507
  (road city-loc-3 city-loc-26)
  ; 653,507 -> 551,602
  (road city-loc-26 city-loc-14)
  ; 551,602 -> 653,507
  (road city-loc-14 city-loc-26)
  ; 653,507 -> 614,343
  (road city-loc-26 city-loc-17)
  ; 614,343 -> 653,507
  (road city-loc-17 city-loc-26)
  ; 653,507 -> 480,435
  (road city-loc-26 city-loc-20)
  ; 480,435 -> 653,507
  (road city-loc-20 city-loc-26)
  ; 820,551 -> 918,341
  (road city-loc-27 city-loc-21)
  ; 918,341 -> 820,551
  (road city-loc-21 city-loc-27)
  ; 820,551 -> 941,734
  (road city-loc-27 city-loc-25)
  ; 941,734 -> 820,551
  (road city-loc-25 city-loc-27)
  ; 820,551 -> 653,507
  (road city-loc-27 city-loc-26)
  ; 653,507 -> 820,551
  (road city-loc-26 city-loc-27)
  ; 731,24 -> 858,139
  (road city-loc-28 city-loc-10)
  ; 858,139 -> 731,24
  (road city-loc-10 city-loc-28)
  ; 731,24 -> 651,235
  (road city-loc-28 city-loc-22)
  ; 651,235 -> 731,24
  (road city-loc-22 city-loc-28)
  ; 452,192 -> 490,285
  (road city-loc-29 city-loc-1)
  ; 490,285 -> 452,192
  (road city-loc-1 city-loc-29)
  ; 452,192 -> 377,283
  (road city-loc-29 city-loc-5)
  ; 377,283 -> 452,192
  (road city-loc-5 city-loc-29)
  ; 452,192 -> 614,343
  (road city-loc-29 city-loc-17)
  ; 614,343 -> 452,192
  (road city-loc-17 city-loc-29)
  ; 452,192 -> 480,435
  (road city-loc-29 city-loc-20)
  ; 480,435 -> 452,192
  (road city-loc-20 city-loc-29)
  ; 452,192 -> 651,235
  (road city-loc-29 city-loc-22)
  ; 651,235 -> 452,192
  (road city-loc-22 city-loc-29)
  ; 205,275 -> 377,283
  (road city-loc-30 city-loc-5)
  ; 377,283 -> 205,275
  (road city-loc-5 city-loc-30)
  ; 205,275 -> 71,275
  (road city-loc-30 city-loc-9)
  ; 71,275 -> 205,275
  (road city-loc-9 city-loc-30)
  ; 205,275 -> 366,457
  (road city-loc-30 city-loc-15)
  ; 366,457 -> 205,275
  (road city-loc-15 city-loc-30)
  ; 205,275 -> 193,424
  (road city-loc-30 city-loc-19)
  ; 193,424 -> 205,275
  (road city-loc-19 city-loc-30)
  (at package-1 city-loc-4)
  (at package-2 city-loc-23)
  (at package-3 city-loc-9)
  (at package-4 city-loc-7)
  (at package-5 city-loc-6)
  (at package-6 city-loc-13)
  (at package-7 city-loc-1)
  (at package-8 city-loc-16)
  (at package-9 city-loc-11)
  (at package-10 city-loc-12)
  (at package-11 city-loc-19)
  (at truck-1 city-loc-8)
  (capacity truck-1 capacity-2)
  (at truck-2 city-loc-6)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-24)
  (capacity truck-3 capacity-4)
 )
 (:goal (and
  (at package-1 city-loc-29)
  (at package-2 city-loc-20)
  (at package-3 city-loc-28)
  (at package-4 city-loc-28)
  (at package-5 city-loc-5)
  (at package-6 city-loc-5)
  (at package-7 city-loc-30)
  (at package-8 city-loc-29)
  (at package-9 city-loc-4)
  (at package-10 city-loc-28)
  (at package-11 city-loc-27)
 ))
 (:metric minimize (total-cost))
)
