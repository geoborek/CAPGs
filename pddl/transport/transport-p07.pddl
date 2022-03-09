; Transport city-sequential-21nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed

(define (problem transport-city-sequential-21nodes-1000size-4degree-100mindistance-3trucks-8packages-2008seed)
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
  capacity-0 - capacity-number
  capacity-1 - capacity-number
  capacity-2 - capacity-number
  capacity-3 - capacity-number
  capacity-4 - capacity-number
 )
 (:init

; START - base costs
 (= (base-drive city-loc-3 city-loc-1) 22)
 (= (base-drive city-loc-1 city-loc-3) 22)
 (= (base-drive city-loc-4 city-loc-1) 26)
 (= (base-drive city-loc-1 city-loc-4) 26)
 (= (base-drive city-loc-5 city-loc-4) 12)
 (= (base-drive city-loc-4 city-loc-5) 12)
 (= (base-drive city-loc-6 city-loc-2) 19)
 (= (base-drive city-loc-2 city-loc-6) 19)
 (= (base-drive city-loc-7 city-loc-1) 15)
 (= (base-drive city-loc-1 city-loc-7) 15)
 (= (base-drive city-loc-7 city-loc-3) 16)
 (= (base-drive city-loc-3 city-loc-7) 16)
 (= (base-drive city-loc-9 city-loc-6) 28)
 (= (base-drive city-loc-6 city-loc-9) 28)
 (= (base-drive city-loc-10 city-loc-3) 25)
 (= (base-drive city-loc-3 city-loc-10) 25)
 (= (base-drive city-loc-10 city-loc-7) 18)
 (= (base-drive city-loc-7 city-loc-10) 18)
 (= (base-drive city-loc-10 city-loc-8) 24)
 (= (base-drive city-loc-8 city-loc-10) 24)
 (= (base-drive city-loc-11 city-loc-9) 24)
 (= (base-drive city-loc-9 city-loc-11) 24)
 (= (base-drive city-loc-12 city-loc-1) 29)
 (= (base-drive city-loc-1 city-loc-12) 29)
 (= (base-drive city-loc-12 city-loc-3) 23)
 (= (base-drive city-loc-3 city-loc-12) 23)
 (= (base-drive city-loc-13 city-loc-9) 29)
 (= (base-drive city-loc-9 city-loc-13) 29)
 (= (base-drive city-loc-13 city-loc-11) 13)
 (= (base-drive city-loc-11 city-loc-13) 13)
 (= (base-drive city-loc-14 city-loc-4) 13)
 (= (base-drive city-loc-4 city-loc-14) 13)
 (= (base-drive city-loc-14 city-loc-5) 18)
 (= (base-drive city-loc-5 city-loc-14) 18)
 (= (base-drive city-loc-14 city-loc-8) 25)
 (= (base-drive city-loc-8 city-loc-14) 25)
 (= (base-drive city-loc-15 city-loc-9) 15)
 (= (base-drive city-loc-9 city-loc-15) 15)
 (= (base-drive city-loc-15 city-loc-11) 12)
 (= (base-drive city-loc-11 city-loc-15) 12)
 (= (base-drive city-loc-15 city-loc-13) 22)
 (= (base-drive city-loc-13 city-loc-15) 22)
 (= (base-drive city-loc-16 city-loc-11) 16)
 (= (base-drive city-loc-11 city-loc-16) 16)
 (= (base-drive city-loc-16 city-loc-13) 20)
 (= (base-drive city-loc-13 city-loc-16) 20)
 (= (base-drive city-loc-16 city-loc-15) 27)
 (= (base-drive city-loc-15 city-loc-16) 27)
 (= (base-drive city-loc-17 city-loc-8) 16)
 (= (base-drive city-loc-8 city-loc-17) 16)
 (= (base-drive city-loc-17 city-loc-10) 21)
 (= (base-drive city-loc-10 city-loc-17) 21)
 (= (base-drive city-loc-17 city-loc-11) 26)
 (= (base-drive city-loc-11 city-loc-17) 26)
 (= (base-drive city-loc-17 city-loc-15) 22)
 (= (base-drive city-loc-15 city-loc-17) 22)
 (= (base-drive city-loc-18 city-loc-9) 25)
 (= (base-drive city-loc-9 city-loc-18) 25)
 (= (base-drive city-loc-18 city-loc-13) 24)
 (= (base-drive city-loc-13 city-loc-18) 24)
 (= (base-drive city-loc-19 city-loc-12) 28)
 (= (base-drive city-loc-12 city-loc-19) 28)
 (= (base-drive city-loc-20 city-loc-2) 26)
 (= (base-drive city-loc-2 city-loc-20) 26)
 (= (base-drive city-loc-20 city-loc-18) 28)
 (= (base-drive city-loc-18 city-loc-20) 28)
 (= (base-drive city-loc-21 city-loc-6) 23)
 (= (base-drive city-loc-6 city-loc-21) 23)
 (= (base-drive city-loc-21 city-loc-9) 12)
 (= (base-drive city-loc-9 city-loc-21) 12)
 (= (base-drive city-loc-21 city-loc-10) 22)
 (= (base-drive city-loc-10 city-loc-21) 22)
 (= (base-drive city-loc-21 city-loc-15) 19)
 (= (base-drive city-loc-15 city-loc-21) 19)
 (= (base-drive city-loc-21 city-loc-17) 28)
 (= (base-drive city-loc-17 city-loc-21) 28)
; END - base costs

; START - pure strategies
  (= (cost-drive city-loc-3 city-loc-1 truck-1) 6966)
  (= (cost-drive city-loc-1 city-loc-3 truck-1) 4950)
  (= (cost-drive city-loc-4 city-loc-1 truck-1) 4398)
  (= (cost-drive city-loc-1 city-loc-4 truck-1) 5478)
  (= (cost-drive city-loc-5 city-loc-4 truck-1) 1043)
  (= (cost-drive city-loc-4 city-loc-5 truck-1) 9309)
  (= (cost-drive city-loc-6 city-loc-2 truck-1) 3806)
  (= (cost-drive city-loc-2 city-loc-6 truck-1) 7176)
  (= (cost-drive city-loc-7 city-loc-1 truck-1) 6203)
  (= (cost-drive city-loc-1 city-loc-7 truck-1) 6003)
  (= (cost-drive city-loc-7 city-loc-3 truck-1) 6019)
  (= (cost-drive city-loc-3 city-loc-7 truck-1) 9467)
  (= (cost-drive city-loc-9 city-loc-6 truck-1) 2993)
  (= (cost-drive city-loc-6 city-loc-9 truck-1) 2324)
  (= (cost-drive city-loc-10 city-loc-3 truck-1) 4601)
  (= (cost-drive city-loc-3 city-loc-10 truck-1) 8903)
  (= (cost-drive city-loc-10 city-loc-7 truck-1) 9230)
  (= (cost-drive city-loc-7 city-loc-10 truck-1) 8028)
  (= (cost-drive city-loc-10 city-loc-8 truck-1) 1547)
  (= (cost-drive city-loc-8 city-loc-10 truck-1) 5602)
  (= (cost-drive city-loc-11 city-loc-9 truck-1) 9526)
  (= (cost-drive city-loc-9 city-loc-11 truck-1) 3177)
  (= (cost-drive city-loc-12 city-loc-1 truck-1) 7715)
  (= (cost-drive city-loc-1 city-loc-12 truck-1) 8431)
  (= (cost-drive city-loc-12 city-loc-3 truck-1) 9525)
  (= (cost-drive city-loc-3 city-loc-12 truck-1) 8384)
  (= (cost-drive city-loc-13 city-loc-9 truck-1) 1612)
  (= (cost-drive city-loc-9 city-loc-13 truck-1) 4017)
  (= (cost-drive city-loc-13 city-loc-11 truck-1) 7900)
  (= (cost-drive city-loc-11 city-loc-13 truck-1) 9714)
  (= (cost-drive city-loc-14 city-loc-4 truck-1) 9999)
  (= (cost-drive city-loc-4 city-loc-14 truck-1) 8652)
  (= (cost-drive city-loc-14 city-loc-5 truck-1) 9620)
  (= (cost-drive city-loc-5 city-loc-14 truck-1) 2112)
  (= (cost-drive city-loc-14 city-loc-8 truck-1) 2755)
  (= (cost-drive city-loc-8 city-loc-14 truck-1) 6160)
  (= (cost-drive city-loc-15 city-loc-9 truck-1) 9395)
  (= (cost-drive city-loc-9 city-loc-15 truck-1) 4651)
  (= (cost-drive city-loc-15 city-loc-11 truck-1) 8877)
  (= (cost-drive city-loc-11 city-loc-15 truck-1) 4849)
  (= (cost-drive city-loc-15 city-loc-13 truck-1) 8739)
  (= (cost-drive city-loc-13 city-loc-15 truck-1) 3714)
  (= (cost-drive city-loc-16 city-loc-11 truck-1) 4260)
  (= (cost-drive city-loc-11 city-loc-16 truck-1) 1695)
  (= (cost-drive city-loc-16 city-loc-13 truck-1) 9475)
  (= (cost-drive city-loc-13 city-loc-16 truck-1) 4693)
  (= (cost-drive city-loc-16 city-loc-15 truck-1) 6781)
  (= (cost-drive city-loc-15 city-loc-16 truck-1) 4071)
  (= (cost-drive city-loc-17 city-loc-8 truck-1) 2640)
  (= (cost-drive city-loc-8 city-loc-17 truck-1) 1143)
  (= (cost-drive city-loc-17 city-loc-10 truck-1) 1198)
  (= (cost-drive city-loc-10 city-loc-17 truck-1) 9377)
  (= (cost-drive city-loc-17 city-loc-11 truck-1) 6059)
  (= (cost-drive city-loc-11 city-loc-17 truck-1) 2316)
  (= (cost-drive city-loc-17 city-loc-15 truck-1) 1315)
  (= (cost-drive city-loc-15 city-loc-17 truck-1) 9654)
  (= (cost-drive city-loc-18 city-loc-9 truck-1) 9930)
  (= (cost-drive city-loc-9 city-loc-18 truck-1) 7081)
  (= (cost-drive city-loc-18 city-loc-13 truck-1) 4660)
  (= (cost-drive city-loc-13 city-loc-18 truck-1) 2005)
  (= (cost-drive city-loc-19 city-loc-12 truck-1) 1231)
  (= (cost-drive city-loc-12 city-loc-19 truck-1) 2386)
  (= (cost-drive city-loc-20 city-loc-2 truck-1) 5392)
  (= (cost-drive city-loc-2 city-loc-20 truck-1) 7945)
  (= (cost-drive city-loc-20 city-loc-18 truck-1) 8125)
  (= (cost-drive city-loc-18 city-loc-20 truck-1) 3836)
  (= (cost-drive city-loc-21 city-loc-6 truck-1) 9788)
  (= (cost-drive city-loc-6 city-loc-21 truck-1) 2604)
  (= (cost-drive city-loc-21 city-loc-9 truck-1) 5674)
  (= (cost-drive city-loc-9 city-loc-21 truck-1) 4054)
  (= (cost-drive city-loc-21 city-loc-10 truck-1) 4379)
  (= (cost-drive city-loc-10 city-loc-21 truck-1) 4919)
  (= (cost-drive city-loc-21 city-loc-15 truck-1) 8323)
  (= (cost-drive city-loc-15 city-loc-21 truck-1) 7026)
  (= (cost-drive city-loc-21 city-loc-17 truck-1) 1186)
  (= (cost-drive city-loc-17 city-loc-21 truck-1) 1344)
  (= (cost-drive city-loc-3 city-loc-1 truck-2) 3486)
  (= (cost-drive city-loc-1 city-loc-3 truck-2) 1384)
  (= (cost-drive city-loc-4 city-loc-1 truck-2) 1037)
  (= (cost-drive city-loc-1 city-loc-4 truck-2) 1186)
  (= (cost-drive city-loc-5 city-loc-4 truck-2) 4812)
  (= (cost-drive city-loc-4 city-loc-5 truck-2) 3944)
  (= (cost-drive city-loc-6 city-loc-2 truck-2) 5786)
  (= (cost-drive city-loc-2 city-loc-6 truck-2) 6282)
  (= (cost-drive city-loc-7 city-loc-1 truck-2) 5682)
  (= (cost-drive city-loc-1 city-loc-7 truck-2) 9649)
  (= (cost-drive city-loc-7 city-loc-3 truck-2) 9043)
  (= (cost-drive city-loc-3 city-loc-7 truck-2) 4281)
  (= (cost-drive city-loc-9 city-loc-6 truck-2) 2143)
  (= (cost-drive city-loc-6 city-loc-9 truck-2) 4317)
  (= (cost-drive city-loc-10 city-loc-3 truck-2) 4752)
  (= (cost-drive city-loc-3 city-loc-10 truck-2) 3868)
  (= (cost-drive city-loc-10 city-loc-7 truck-2) 2045)
  (= (cost-drive city-loc-7 city-loc-10 truck-2) 8059)
  (= (cost-drive city-loc-10 city-loc-8 truck-2) 9865)
  (= (cost-drive city-loc-8 city-loc-10 truck-2) 5137)
  (= (cost-drive city-loc-11 city-loc-9 truck-2) 5654)
  (= (cost-drive city-loc-9 city-loc-11 truck-2) 8400)
  (= (cost-drive city-loc-12 city-loc-1 truck-2) 8672)
  (= (cost-drive city-loc-1 city-loc-12 truck-2) 8346)
  (= (cost-drive city-loc-12 city-loc-3 truck-2) 1011)
  (= (cost-drive city-loc-3 city-loc-12 truck-2) 3873)
  (= (cost-drive city-loc-13 city-loc-9 truck-2) 7172)
  (= (cost-drive city-loc-9 city-loc-13 truck-2) 6412)
  (= (cost-drive city-loc-13 city-loc-11 truck-2) 1232)
  (= (cost-drive city-loc-11 city-loc-13 truck-2) 3429)
  (= (cost-drive city-loc-14 city-loc-4 truck-2) 7815)
  (= (cost-drive city-loc-4 city-loc-14 truck-2) 7271)
  (= (cost-drive city-loc-14 city-loc-5 truck-2) 5314)
  (= (cost-drive city-loc-5 city-loc-14 truck-2) 5921)
  (= (cost-drive city-loc-14 city-loc-8 truck-2) 9168)
  (= (cost-drive city-loc-8 city-loc-14 truck-2) 1564)
  (= (cost-drive city-loc-15 city-loc-9 truck-2) 6761)
  (= (cost-drive city-loc-9 city-loc-15 truck-2) 2408)
  (= (cost-drive city-loc-15 city-loc-11 truck-2) 8495)
  (= (cost-drive city-loc-11 city-loc-15 truck-2) 9096)
  (= (cost-drive city-loc-15 city-loc-13 truck-2) 3944)
  (= (cost-drive city-loc-13 city-loc-15 truck-2) 7058)
  (= (cost-drive city-loc-16 city-loc-11 truck-2) 2029)
  (= (cost-drive city-loc-11 city-loc-16 truck-2) 1734)
  (= (cost-drive city-loc-16 city-loc-13 truck-2) 1962)
  (= (cost-drive city-loc-13 city-loc-16 truck-2) 7840)
  (= (cost-drive city-loc-16 city-loc-15 truck-2) 9116)
  (= (cost-drive city-loc-15 city-loc-16 truck-2) 5046)
  (= (cost-drive city-loc-17 city-loc-8 truck-2) 6830)
  (= (cost-drive city-loc-8 city-loc-17 truck-2) 9065)
  (= (cost-drive city-loc-17 city-loc-10 truck-2) 8482)
  (= (cost-drive city-loc-10 city-loc-17 truck-2) 6645)
  (= (cost-drive city-loc-17 city-loc-11 truck-2) 7852)
  (= (cost-drive city-loc-11 city-loc-17 truck-2) 2631)
  (= (cost-drive city-loc-17 city-loc-15 truck-2) 4644)
  (= (cost-drive city-loc-15 city-loc-17 truck-2) 9392)
  (= (cost-drive city-loc-18 city-loc-9 truck-2) 5575)
  (= (cost-drive city-loc-9 city-loc-18 truck-2) 7842)
  (= (cost-drive city-loc-18 city-loc-13 truck-2) 7924)
  (= (cost-drive city-loc-13 city-loc-18 truck-2) 9193)
  (= (cost-drive city-loc-19 city-loc-12 truck-2) 2485)
  (= (cost-drive city-loc-12 city-loc-19 truck-2) 4611)
  (= (cost-drive city-loc-20 city-loc-2 truck-2) 8003)
  (= (cost-drive city-loc-2 city-loc-20 truck-2) 2288)
  (= (cost-drive city-loc-20 city-loc-18 truck-2) 7740)
  (= (cost-drive city-loc-18 city-loc-20 truck-2) 8110)
  (= (cost-drive city-loc-21 city-loc-6 truck-2) 1779)
  (= (cost-drive city-loc-6 city-loc-21 truck-2) 5889)
  (= (cost-drive city-loc-21 city-loc-9 truck-2) 3917)
  (= (cost-drive city-loc-9 city-loc-21 truck-2) 7573)
  (= (cost-drive city-loc-21 city-loc-10 truck-2) 7197)
  (= (cost-drive city-loc-10 city-loc-21 truck-2) 9720)
  (= (cost-drive city-loc-21 city-loc-15 truck-2) 7123)
  (= (cost-drive city-loc-15 city-loc-21 truck-2) 3438)
  (= (cost-drive city-loc-21 city-loc-17 truck-2) 7335)
  (= (cost-drive city-loc-17 city-loc-21 truck-2) 8094)
  (= (cost-drive city-loc-3 city-loc-1 truck-3) 5786)
  (= (cost-drive city-loc-1 city-loc-3 truck-3) 8341)
  (= (cost-drive city-loc-4 city-loc-1 truck-3) 6829)
  (= (cost-drive city-loc-1 city-loc-4 truck-3) 9736)
  (= (cost-drive city-loc-5 city-loc-4 truck-3) 8693)
  (= (cost-drive city-loc-4 city-loc-5 truck-3) 7807)
  (= (cost-drive city-loc-6 city-loc-2 truck-3) 1741)
  (= (cost-drive city-loc-2 city-loc-6 truck-3) 2627)
  (= (cost-drive city-loc-7 city-loc-1 truck-3) 7785)
  (= (cost-drive city-loc-1 city-loc-7 truck-3) 4041)
  (= (cost-drive city-loc-7 city-loc-3 truck-3) 8443)
  (= (cost-drive city-loc-3 city-loc-7 truck-3) 9100)
  (= (cost-drive city-loc-9 city-loc-6 truck-3) 7600)
  (= (cost-drive city-loc-6 city-loc-9 truck-3) 1075)
  (= (cost-drive city-loc-10 city-loc-3 truck-3) 5719)
  (= (cost-drive city-loc-3 city-loc-10 truck-3) 1100)
  (= (cost-drive city-loc-10 city-loc-7 truck-3) 3374)
  (= (cost-drive city-loc-7 city-loc-10 truck-3) 5628)
  (= (cost-drive city-loc-10 city-loc-8 truck-3) 5432)
  (= (cost-drive city-loc-8 city-loc-10 truck-3) 9394)
  (= (cost-drive city-loc-11 city-loc-9 truck-3) 5597)
  (= (cost-drive city-loc-9 city-loc-11 truck-3) 9979)
  (= (cost-drive city-loc-12 city-loc-1 truck-3) 9690)
  (= (cost-drive city-loc-1 city-loc-12 truck-3) 4641)
  (= (cost-drive city-loc-12 city-loc-3 truck-3) 8300)
  (= (cost-drive city-loc-3 city-loc-12 truck-3) 7582)
  (= (cost-drive city-loc-13 city-loc-9 truck-3) 4938)
  (= (cost-drive city-loc-9 city-loc-13 truck-3) 1557)
  (= (cost-drive city-loc-13 city-loc-11 truck-3) 8865)
  (= (cost-drive city-loc-11 city-loc-13 truck-3) 7124)
  (= (cost-drive city-loc-14 city-loc-4 truck-3) 7868)
  (= (cost-drive city-loc-4 city-loc-14 truck-3) 4422)
  (= (cost-drive city-loc-14 city-loc-5 truck-3) 9142)
  (= (cost-drive city-loc-5 city-loc-14 truck-3) 1965)
  (= (cost-drive city-loc-14 city-loc-8 truck-3) 1443)
  (= (cost-drive city-loc-8 city-loc-14 truck-3) 8277)
  (= (cost-drive city-loc-15 city-loc-9 truck-3) 8911)
  (= (cost-drive city-loc-9 city-loc-15 truck-3) 5528)
  (= (cost-drive city-loc-15 city-loc-11 truck-3) 4530)
  (= (cost-drive city-loc-11 city-loc-15 truck-3) 8933)
  (= (cost-drive city-loc-15 city-loc-13 truck-3) 4874)
  (= (cost-drive city-loc-13 city-loc-15 truck-3) 2007)
  (= (cost-drive city-loc-16 city-loc-11 truck-3) 9399)
  (= (cost-drive city-loc-11 city-loc-16 truck-3) 2187)
  (= (cost-drive city-loc-16 city-loc-13 truck-3) 6356)
  (= (cost-drive city-loc-13 city-loc-16 truck-3) 9284)
  (= (cost-drive city-loc-16 city-loc-15 truck-3) 9139)
  (= (cost-drive city-loc-15 city-loc-16 truck-3) 6394)
  (= (cost-drive city-loc-17 city-loc-8 truck-3) 4238)
  (= (cost-drive city-loc-8 city-loc-17 truck-3) 2970)
  (= (cost-drive city-loc-17 city-loc-10 truck-3) 1061)
  (= (cost-drive city-loc-10 city-loc-17 truck-3) 8973)
  (= (cost-drive city-loc-17 city-loc-11 truck-3) 8099)
  (= (cost-drive city-loc-11 city-loc-17 truck-3) 4566)
  (= (cost-drive city-loc-17 city-loc-15 truck-3) 9628)
  (= (cost-drive city-loc-15 city-loc-17 truck-3) 6403)
  (= (cost-drive city-loc-18 city-loc-9 truck-3) 3516)
  (= (cost-drive city-loc-9 city-loc-18 truck-3) 7209)
  (= (cost-drive city-loc-18 city-loc-13 truck-3) 9042)
  (= (cost-drive city-loc-13 city-loc-18 truck-3) 1727)
  (= (cost-drive city-loc-19 city-loc-12 truck-3) 9117)
  (= (cost-drive city-loc-12 city-loc-19 truck-3) 4246)
  (= (cost-drive city-loc-20 city-loc-2 truck-3) 3300)
  (= (cost-drive city-loc-2 city-loc-20 truck-3) 1750)
  (= (cost-drive city-loc-20 city-loc-18 truck-3) 4701)
  (= (cost-drive city-loc-18 city-loc-20 truck-3) 7586)
  (= (cost-drive city-loc-21 city-loc-6 truck-3) 4957)
  (= (cost-drive city-loc-6 city-loc-21 truck-3) 8446)
  (= (cost-drive city-loc-21 city-loc-9 truck-3) 4324)
  (= (cost-drive city-loc-9 city-loc-21 truck-3) 9626)
  (= (cost-drive city-loc-21 city-loc-10 truck-3) 5654)
  (= (cost-drive city-loc-10 city-loc-21 truck-3) 5036)
  (= (cost-drive city-loc-21 city-loc-15 truck-3) 2988)
  (= (cost-drive city-loc-15 city-loc-21 truck-3) 7830)
  (= (cost-drive city-loc-21 city-loc-17 truck-3) 8551)
  (= (cost-drive city-loc-17 city-loc-21 truck-3) 8095)
; END - pure strategies

  (= (total-cost) 0)
  (capacity-predecessor capacity-0 capacity-1)
  (capacity-predecessor capacity-1 capacity-2)
  (capacity-predecessor capacity-2 capacity-3)
  (capacity-predecessor capacity-3 capacity-4)
  ; 748,385 -> 890,543
  (road city-loc-3 city-loc-1)
  ; 890,543 -> 748,385
  (road city-loc-1 city-loc-3)
  ; 912,799 -> 890,543
  (road city-loc-4 city-loc-1)
  ; 890,543 -> 912,799
  (road city-loc-1 city-loc-4)
  ; 977,899 -> 912,799
  (road city-loc-5 city-loc-4)
  ; 912,799 -> 977,899
  (road city-loc-4 city-loc-5)
  ; 456,221 -> 384,50
  (road city-loc-6 city-loc-2)
  ; 384,50 -> 456,221
  (road city-loc-2 city-loc-6)
  ; 742,542 -> 890,543
  (road city-loc-7 city-loc-1)
  ; 890,543 -> 742,542
  (road city-loc-1 city-loc-7)
  ; 742,542 -> 748,385
  (road city-loc-7 city-loc-3)
  ; 748,385 -> 742,542
  (road city-loc-3 city-loc-7)
  ; 273,425 -> 456,221
  (road city-loc-9 city-loc-6)
  ; 456,221 -> 273,425
  (road city-loc-6 city-loc-9)
  ; 566,552 -> 748,385
  (road city-loc-10 city-loc-3)
  ; 748,385 -> 566,552
  (road city-loc-3 city-loc-10)
  ; 566,552 -> 742,542
  (road city-loc-10 city-loc-7)
  ; 742,542 -> 566,552
  (road city-loc-7 city-loc-10)
  ; 566,552 -> 564,783
  (road city-loc-10 city-loc-8)
  ; 564,783 -> 566,552
  (road city-loc-8 city-loc-10)
  ; 174,643 -> 273,425
  (road city-loc-11 city-loc-9)
  ; 273,425 -> 174,643
  (road city-loc-9 city-loc-11)
  ; 930,259 -> 890,543
  (road city-loc-12 city-loc-1)
  ; 890,543 -> 930,259
  (road city-loc-1 city-loc-12)
  ; 930,259 -> 748,385
  (road city-loc-12 city-loc-3)
  ; 748,385 -> 930,259
  (road city-loc-3 city-loc-12)
  ; 55,605 -> 273,425
  (road city-loc-13 city-loc-9)
  ; 273,425 -> 55,605
  (road city-loc-9 city-loc-13)
  ; 55,605 -> 174,643
  (road city-loc-13 city-loc-11)
  ; 174,643 -> 55,605
  (road city-loc-11 city-loc-13)
  ; 803,858 -> 912,799
  (road city-loc-14 city-loc-4)
  ; 912,799 -> 803,858
  (road city-loc-4 city-loc-14)
  ; 803,858 -> 977,899
  (road city-loc-14 city-loc-5)
  ; 977,899 -> 803,858
  (road city-loc-5 city-loc-14)
  ; 803,858 -> 564,783
  (road city-loc-14 city-loc-8)
  ; 564,783 -> 803,858
  (road city-loc-8 city-loc-14)
  ; 263,567 -> 273,425
  (road city-loc-15 city-loc-9)
  ; 273,425 -> 263,567
  (road city-loc-9 city-loc-15)
  ; 263,567 -> 174,643
  (road city-loc-15 city-loc-11)
  ; 174,643 -> 263,567
  (road city-loc-11 city-loc-15)
  ; 263,567 -> 55,605
  (road city-loc-15 city-loc-13)
  ; 55,605 -> 263,567
  (road city-loc-13 city-loc-15)
  ; 128,791 -> 174,643
  (road city-loc-16 city-loc-11)
  ; 174,643 -> 128,791
  (road city-loc-11 city-loc-16)
  ; 128,791 -> 55,605
  (road city-loc-16 city-loc-13)
  ; 55,605 -> 128,791
  (road city-loc-13 city-loc-16)
  ; 128,791 -> 263,567
  (road city-loc-16 city-loc-15)
  ; 263,567 -> 128,791
  (road city-loc-15 city-loc-16)
  ; 426,706 -> 564,783
  (road city-loc-17 city-loc-8)
  ; 564,783 -> 426,706
  (road city-loc-8 city-loc-17)
  ; 426,706 -> 566,552
  (road city-loc-17 city-loc-10)
  ; 566,552 -> 426,706
  (road city-loc-10 city-loc-17)
  ; 426,706 -> 174,643
  (road city-loc-17 city-loc-11)
  ; 174,643 -> 426,706
  (road city-loc-11 city-loc-17)
  ; 426,706 -> 263,567
  (road city-loc-17 city-loc-15)
  ; 263,567 -> 426,706
  (road city-loc-15 city-loc-17)
  ; 36,368 -> 273,425
  (road city-loc-18 city-loc-9)
  ; 273,425 -> 36,368
  (road city-loc-9 city-loc-18)
  ; 36,368 -> 55,605
  (road city-loc-18 city-loc-13)
  ; 55,605 -> 36,368
  (road city-loc-13 city-loc-18)
  ; 806,18 -> 930,259
  (road city-loc-19 city-loc-12)
  ; 930,259 -> 806,18
  (road city-loc-12 city-loc-19)
  ; 138,109 -> 384,50
  (road city-loc-20 city-loc-2)
  ; 384,50 -> 138,109
  (road city-loc-2 city-loc-20)
  ; 138,109 -> 36,368
  (road city-loc-20 city-loc-18)
  ; 36,368 -> 138,109
  (road city-loc-18 city-loc-20)
  ; 392,433 -> 456,221
  (road city-loc-21 city-loc-6)
  ; 456,221 -> 392,433
  (road city-loc-6 city-loc-21)
  ; 392,433 -> 273,425
  (road city-loc-21 city-loc-9)
  ; 273,425 -> 392,433
  (road city-loc-9 city-loc-21)
  ; 392,433 -> 566,552
  (road city-loc-21 city-loc-10)
  ; 566,552 -> 392,433
  (road city-loc-10 city-loc-21)
  ; 392,433 -> 263,567
  (road city-loc-21 city-loc-15)
  ; 263,567 -> 392,433
  (road city-loc-15 city-loc-21)
  ; 392,433 -> 426,706
  (road city-loc-21 city-loc-17)
  ; 426,706 -> 392,433
  (road city-loc-17 city-loc-21)
  (at package-1 city-loc-18)
  (at package-2 city-loc-19)
  (at package-3 city-loc-5)
  (at package-4 city-loc-19)
  (at package-5 city-loc-6)
  (at package-6 city-loc-19)
  (at package-7 city-loc-1)
  (at package-8 city-loc-7)
  (at truck-1 city-loc-1)
  (capacity truck-1 capacity-4)
  (at truck-2 city-loc-10)
  (capacity truck-2 capacity-4)
  (at truck-3 city-loc-17)
  (capacity truck-3 capacity-2)
 )
 (:goal (and
  (at package-1 city-loc-21)
  (at package-2 city-loc-5)
  (at package-3 city-loc-13)
  (at package-4 city-loc-16)
  (at package-5 city-loc-2)
  (at package-6 city-loc-4)
  (at package-7 city-loc-8)
  (at package-8 city-loc-19)
 ))
 (:metric minimize (total-cost))
)
