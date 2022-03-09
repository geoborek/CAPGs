; Transport three-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-5packages-2008seed

(define (problem transport-three-cities-sequential-4nodes-1000size-2degree-100mindistance-2trucks-5packages-2008seed)
 (:domain transport)
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
  city-1-loc-4 - location
  city-2-loc-4 - location
  city-3-loc-4 - location
  truck-1 - vehicle
  truck-2 - vehicle
  package-1 - package
  package-2 - package
  package-3 - package
  package-4 - package
  package-5 - package
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-1-loc-3 city-1-loc-1) 43)
 (= (base-drive city-1-loc-1 city-1-loc-3) 43)
 (= (base-drive city-1-loc-3 city-1-loc-2) 43)
 (= (base-drive city-1-loc-2 city-1-loc-3) 43)
 (= (base-drive city-1-loc-4 city-1-loc-1) 43)
 (= (base-drive city-1-loc-1 city-1-loc-4) 43)
 (= (base-drive city-1-loc-4 city-1-loc-3) 30)
 (= (base-drive city-1-loc-3 city-1-loc-4) 30)
 (= (base-drive city-2-loc-2 city-2-loc-1) 35)
 (= (base-drive city-2-loc-1 city-2-loc-2) 35)
 (= (base-drive city-2-loc-3 city-2-loc-2) 39)
 (= (base-drive city-2-loc-2 city-2-loc-3) 39)
 (= (base-drive city-2-loc-4 city-2-loc-1) 17)
 (= (base-drive city-2-loc-1 city-2-loc-4) 17)
 (= (base-drive city-2-loc-4 city-2-loc-2) 23)
 (= (base-drive city-2-loc-2 city-2-loc-4) 23)
 (= (base-drive city-2-loc-4 city-2-loc-3) 47)
 (= (base-drive city-2-loc-3 city-2-loc-4) 47)
 (= (base-drive city-3-loc-2 city-3-loc-1) 29)
 (= (base-drive city-3-loc-1 city-3-loc-2) 29)
 (= (base-drive city-3-loc-3 city-3-loc-1) 21)
 (= (base-drive city-3-loc-1 city-3-loc-3) 21)
 (= (base-drive city-3-loc-4 city-3-loc-3) 42)
 (= (base-drive city-3-loc-3 city-3-loc-4) 42)
 (= (base-drive city-1-loc-1 city-2-loc-2) 139)
 (= (base-drive city-2-loc-2 city-1-loc-1) 139)
 (= (base-drive city-1-loc-4 city-3-loc-4) 190)
 (= (base-drive city-3-loc-4 city-1-loc-4) 190)
 (= (base-drive city-2-loc-1 city-3-loc-1) 157)
 (= (base-drive city-3-loc-1 city-2-loc-1) 157)
; END - base costs

; START - pure strategies
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-1) 3821)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-1) 4999)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-1) 7208)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-1) 2878)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-1) 1961)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-1) 7830)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-1) 1052)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-1) 6352)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-1) 1991)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-1) 3648)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-1) 2481)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-1) 3956)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-1) 5249)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-1) 5974)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-1) 1440)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-1) 6691)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-1) 7396)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-1) 8596)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-1) 9173)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-1) 8734)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-1) 3929)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-1) 8023)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-1) 8998)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-1) 8166)
  (= (cost-drive city-1-loc-1 city-2-loc-2 truck-1) 9389)
  (= (cost-drive city-2-loc-2 city-1-loc-1 truck-1) 7027)
  (= (cost-drive city-1-loc-4 city-3-loc-4 truck-1) 6284)
  (= (cost-drive city-3-loc-4 city-1-loc-4 truck-1) 6512)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-1) 7570)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-1) 1744)
  (= (cost-drive city-1-loc-3 city-1-loc-1 truck-2) 3258)
  (= (cost-drive city-1-loc-1 city-1-loc-3 truck-2) 4161)
  (= (cost-drive city-1-loc-3 city-1-loc-2 truck-2) 4440)
  (= (cost-drive city-1-loc-2 city-1-loc-3 truck-2) 8950)
  (= (cost-drive city-1-loc-4 city-1-loc-1 truck-2) 4239)
  (= (cost-drive city-1-loc-1 city-1-loc-4 truck-2) 1630)
  (= (cost-drive city-1-loc-4 city-1-loc-3 truck-2) 5667)
  (= (cost-drive city-1-loc-3 city-1-loc-4 truck-2) 4108)
  (= (cost-drive city-2-loc-2 city-2-loc-1 truck-2) 8000)
  (= (cost-drive city-2-loc-1 city-2-loc-2 truck-2) 3302)
  (= (cost-drive city-2-loc-3 city-2-loc-2 truck-2) 8612)
  (= (cost-drive city-2-loc-2 city-2-loc-3 truck-2) 5376)
  (= (cost-drive city-2-loc-4 city-2-loc-1 truck-2) 9295)
  (= (cost-drive city-2-loc-1 city-2-loc-4 truck-2) 9400)
  (= (cost-drive city-2-loc-4 city-2-loc-2 truck-2) 7111)
  (= (cost-drive city-2-loc-2 city-2-loc-4 truck-2) 2702)
  (= (cost-drive city-2-loc-4 city-2-loc-3 truck-2) 1015)
  (= (cost-drive city-2-loc-3 city-2-loc-4 truck-2) 6066)
  (= (cost-drive city-3-loc-2 city-3-loc-1 truck-2) 5058)
  (= (cost-drive city-3-loc-1 city-3-loc-2 truck-2) 3183)
  (= (cost-drive city-3-loc-3 city-3-loc-1 truck-2) 2092)
  (= (cost-drive city-3-loc-1 city-3-loc-3 truck-2) 9325)
  (= (cost-drive city-3-loc-4 city-3-loc-3 truck-2) 4193)
  (= (cost-drive city-3-loc-3 city-3-loc-4 truck-2) 7750)
  (= (cost-drive city-1-loc-1 city-2-loc-2 truck-2) 4486)
  (= (cost-drive city-2-loc-2 city-1-loc-1 truck-2) 9112)
  (= (cost-drive city-1-loc-4 city-3-loc-4 truck-2) 1024)
  (= (cost-drive city-3-loc-4 city-1-loc-4 truck-2) 1244)
  (= (cost-drive city-2-loc-1 city-3-loc-1 truck-2) 2651)
  (= (cost-drive city-3-loc-1 city-2-loc-1 truck-2) 2986)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 742,542 -> 977,899
  (road city-1-loc-3 city-1-loc-1)
  ; 977,899 -> 742,542
  (road city-1-loc-1 city-1-loc-3)
  ; 742,542 -> 456,221
  (road city-1-loc-3 city-1-loc-2)
  ; 456,221 -> 742,542
  (road city-1-loc-2 city-1-loc-3)
  ; 564,783 -> 977,899
  (road city-1-loc-4 city-1-loc-1)
  ; 977,899 -> 564,783
  (road city-1-loc-1 city-1-loc-4)
  ; 564,783 -> 742,542
  (road city-1-loc-4 city-1-loc-3)
  ; 742,542 -> 564,783
  (road city-1-loc-3 city-1-loc-4)
  ; 2245,346 -> 2257,5
  (road city-2-loc-2 city-2-loc-1)
  ; 2257,5 -> 2245,346
  (road city-2-loc-1 city-2-loc-2)
  ; 2559,565 -> 2245,346
  (road city-2-loc-3 city-2-loc-2)
  ; 2245,346 -> 2559,565
  (road city-2-loc-2 city-2-loc-3)
  ; 2347,149 -> 2257,5
  (road city-2-loc-4 city-2-loc-1)
  ; 2257,5 -> 2347,149
  (road city-2-loc-1 city-2-loc-4)
  ; 2347,149 -> 2245,346
  (road city-2-loc-4 city-2-loc-2)
  ; 2245,346 -> 2347,149
  (road city-2-loc-2 city-2-loc-4)
  ; 2347,149 -> 2559,565
  (road city-2-loc-4 city-2-loc-3)
  ; 2559,565 -> 2347,149
  (road city-2-loc-3 city-2-loc-4)
  ; 1170,2709 -> 1336,2475
  (road city-3-loc-2 city-3-loc-1)
  ; 1336,2475 -> 1170,2709
  (road city-3-loc-1 city-3-loc-2)
  ; 1521,2375 -> 1336,2475
  (road city-3-loc-3 city-3-loc-1)
  ; 1336,2475 -> 1521,2375
  (road city-3-loc-1 city-3-loc-3)
  ; 1701,2000 -> 1521,2375
  (road city-3-loc-4 city-3-loc-3)
  ; 1521,2375 -> 1701,2000
  (road city-3-loc-3 city-3-loc-4)
  ; 977,899 <-> 2245,346
  (road city-1-loc-1 city-2-loc-2)
  (road city-2-loc-2 city-1-loc-1)
  (road city-1-loc-4 city-3-loc-4)
  (road city-3-loc-4 city-1-loc-4)
  (road city-2-loc-1 city-3-loc-1)
  (road city-3-loc-1 city-2-loc-1)
  (at package-1 city-1-loc-1)
  (at package-2 city-3-loc-1)
  (at package-3 city-2-loc-2)
  (at package-4 city-1-loc-3)
  (at package-5 city-2-loc-3)
  (at truck-1 city-1-loc-4)
  (capacity truck-1 capacity-3)
  (at truck-2 city-1-loc-1)
  (capacity truck-2 capacity-3)
 )
 (:goal (and
  (at package-1 city-2-loc-3)
  (at package-2 city-2-loc-3)
  (at package-3 city-2-loc-3)
  (at package-4 city-2-loc-1)
  (at package-5 city-2-loc-4)
 ))
 (:metric minimize (total-cost))
)
