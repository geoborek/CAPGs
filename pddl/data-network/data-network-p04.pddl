(define (problem p8-3-23-tiny-network-3)
(:domain data-network)
(:objects
    data-0-7 data-0-8 data-1-1 data-1-3 data-1-5 data-2-2 data-2-4 data-2-6 - data
    script1 script2 script3 script4 script5 script6 script7 script8 script9 script10 script11 script12 script13 script14 script15 script16 script17 script18 script19 script20 script21 script22 script23 - script
    server1 server2 server3 - server
    number0 number1 number2 number3 number4 number5 number6 number7 number8 number9 number10 number11 number12 number13 number14 number15 number16 - numbers
)
(:init

; START - base costs
  (= (base-process script1 server1) 21)
  (= (base-process script1 server2) 8)
  (= (base-process script1 server3) 8)
  (= (base-process script2 server1) 22)
  (= (base-process script2 server2) 9)
  (= (base-process script2 server3) 10)
  (= (base-process script3 server1) 22)
  (= (base-process script3 server2) 14)
  (= (base-process script3 server3) 8)
  (= (base-process script4 server1) 15)
  (= (base-process script4 server2) 10)
  (= (base-process script4 server3) 11)
  (= (base-process script5 server1) 23)
  (= (base-process script5 server2) 8)
  (= (base-process script5 server3) 10)
  (= (base-process script6 server1) 19)
  (= (base-process script6 server2) 9)
  (= (base-process script6 server3) 8)
  (= (base-process script7 server1) 27)
  (= (base-process script7 server2) 11)
  (= (base-process script7 server3) 12)
  (= (base-process script8 server1) 20)
  (= (base-process script8 server2) 11)
  (= (base-process script8 server3) 6)
  (= (base-process script9 server1) 14)
  (= (base-process script9 server2) 7)
  (= (base-process script9 server3) 10)
  (= (base-process script10 server1) 21)
  (= (base-process script10 server2) 8)
  (= (base-process script10 server3) 8)
  (= (base-process script11 server1) 27)
  (= (base-process script11 server2) 8)
  (= (base-process script11 server3) 10)
  (= (base-process script12 server1) 20)
  (= (base-process script12 server2) 8)
  (= (base-process script12 server3) 9)
  (= (base-process script13 server1) 15)
  (= (base-process script13 server2) 8)
  (= (base-process script13 server3) 11)
  (= (base-process script14 server1) 17)
  (= (base-process script14 server2) 8)
  (= (base-process script14 server3) 8)
  (= (base-process script15 server1) 20)
  (= (base-process script15 server2) 4)
  (= (base-process script15 server3) 9)
  (= (base-process script16 server1) 19)
  (= (base-process script16 server2) 12)
  (= (base-process script16 server3) 11)
  (= (base-process script17 server1) 27)
  (= (base-process script17 server2) 9)
  (= (base-process script17 server3) 10)
  (= (base-process script18 server1) 24)
  (= (base-process script18 server2) 8)
  (= (base-process script18 server3) 8)
  (= (base-process script19 server1) 25)
  (= (base-process script19 server2) 10)
  (= (base-process script19 server3) 8)
  (= (base-process script20 server1) 22)
  (= (base-process script20 server2) 10)
  (= (base-process script20 server3) 8)
  (= (base-process script21 server1) 20)
  (= (base-process script21 server2) 12)
  (= (base-process script21 server3) 10)
  (= (base-process script22 server1) 14)
  (= (base-process script22 server2) 11)
  (= (base-process script22 server3) 9)
  (= (base-process script23 server1) 25)
  (= (base-process script23 server2) 9)
  (= (base-process script23 server3) 10)
; END - base costs

; START - pure strategies
  (= (cost-process script1 server1) 6297)
  (= (cost-process script1 server2) 5291)
  (= (cost-process script1 server3) 6534)
  (= (cost-process script2 server1) 2388)
  (= (cost-process script2 server2) 2524)
  (= (cost-process script2 server3) 9911)
  (= (cost-process script3 server1) 1993)
  (= (cost-process script3 server2) 9322)
  (= (cost-process script3 server3) 2440)
  (= (cost-process script4 server1) 4175)
  (= (cost-process script4 server2) 2717)
  (= (cost-process script4 server3) 3863)
  (= (cost-process script5 server1) 4956)
  (= (cost-process script5 server2) 6043)
  (= (cost-process script5 server3) 2486)
  (= (cost-process script6 server1) 8924)
  (= (cost-process script6 server2) 5667)
  (= (cost-process script6 server3) 2754)
  (= (cost-process script7 server1) 3381)
  (= (cost-process script7 server2) 1647)
  (= (cost-process script7 server3) 7937)
  (= (cost-process script8 server1) 2779)
  (= (cost-process script8 server2) 1074)
  (= (cost-process script8 server3) 1877)
  (= (cost-process script9 server1) 8890)
  (= (cost-process script9 server2) 6214)
  (= (cost-process script9 server3) 2194)
  (= (cost-process script10 server1) 1013)
  (= (cost-process script10 server2) 9336)
  (= (cost-process script10 server3) 5703)
  (= (cost-process script11 server1) 8237)
  (= (cost-process script11 server2) 2269)
  (= (cost-process script11 server3) 3509)
  (= (cost-process script12 server1) 1711)
  (= (cost-process script12 server2) 4835)
  (= (cost-process script12 server3) 8933)
  (= (cost-process script13 server1) 5381)
  (= (cost-process script13 server2) 6428)
  (= (cost-process script13 server3) 6056)
  (= (cost-process script14 server1) 3761)
  (= (cost-process script14 server2) 9590)
  (= (cost-process script14 server3) 8893)
  (= (cost-process script15 server1) 5576)
  (= (cost-process script15 server2) 4169)
  (= (cost-process script15 server3) 1819)
  (= (cost-process script16 server1) 3093)
  (= (cost-process script16 server2) 1481)
  (= (cost-process script16 server3) 4443)
  (= (cost-process script17 server1) 7493)
  (= (cost-process script17 server2) 9993)
  (= (cost-process script17 server3) 3527)
  (= (cost-process script18 server1) 5808)
  (= (cost-process script18 server2) 2106)
  (= (cost-process script18 server3) 3737)
  (= (cost-process script19 server1) 9800)
  (= (cost-process script19 server2) 4299)
  (= (cost-process script19 server3) 9662)
  (= (cost-process script20 server1) 2102)
  (= (cost-process script20 server2) 5096)
  (= (cost-process script20 server3) 7668)
  (= (cost-process script21 server1) 6693)
  (= (cost-process script21 server2) 3809)
  (= (cost-process script21 server3) 7831)
  (= (cost-process script22 server1) 5588)
  (= (cost-process script22 server2) 1946)
  (= (cost-process script22 server3) 6380)
  (= (cost-process script23 server1) 5363)
  (= (cost-process script23 server2) 2640)
  (= (cost-process script23 server3) 9792)
; END - pure strategies

    (SCRIPT-IO script1 data-0-7 data-0-8 data-1-5)
    (SCRIPT-IO script2 data-0-8 data-0-7 data-1-1)
    (SCRIPT-IO script3 data-0-7 data-0-8 data-1-3)
    (SCRIPT-IO script4 data-1-5 data-0-7 data-2-4)
    (SCRIPT-IO script5 data-1-3 data-0-8 data-2-6)
    (SCRIPT-IO script6 data-1-3 data-1-5 data-2-2)
    (SCRIPT-IO script7 data-1-1 data-0-8 data-2-2)
    (SCRIPT-IO script8 data-1-3 data-0-7 data-2-6)
    (SCRIPT-IO script9 data-0-7 data-0-8 data-1-5)
    (SCRIPT-IO script10 data-1-3 data-1-1 data-2-4)
    (SCRIPT-IO script11 data-1-5 data-0-7 data-2-2)
    (SCRIPT-IO script12 data-0-8 data-0-7 data-1-5)
    (SCRIPT-IO script13 data-0-7 data-0-8 data-1-5)
    (SCRIPT-IO script14 data-0-7 data-0-8 data-1-1)
    (SCRIPT-IO script15 data-1-1 data-1-3 data-2-6)
    (SCRIPT-IO script16 data-1-5 data-0-8 data-2-4)
    (SCRIPT-IO script17 data-0-7 data-0-8 data-1-3)
    (SCRIPT-IO script18 data-1-1 data-0-8 data-2-6)
    (SCRIPT-IO script19 data-1-5 data-0-8 data-2-6)
    (SCRIPT-IO script20 data-0-8 data-0-7 data-1-5)
    (SCRIPT-IO script21 data-0-8 data-0-7 data-1-3)
    (SCRIPT-IO script22 data-1-1 data-0-8 data-2-6)
    (SCRIPT-IO script23 data-1-5 data-0-7 data-2-6)
    (CONNECTED server1 server2)
    (CONNECTED server2 server1)
    (CONNECTED server1 server3)
    (CONNECTED server3 server1)
    (DATA-SIZE data-0-7 number4)
    (DATA-SIZE data-0-8 number3)
    (DATA-SIZE data-1-1 number1)
    (DATA-SIZE data-1-3 number1)
    (DATA-SIZE data-1-5 number1)
    (DATA-SIZE data-2-2 number4)
    (DATA-SIZE data-2-4 number2)
    (DATA-SIZE data-2-6 number1)
    (CAPACITY server1 number16)
    (CAPACITY server2 number8)
    (CAPACITY server3 number8)
    (SUM number0 number1 number1)
    (SUM number0 number2 number2)
    (SUM number0 number3 number3)
    (SUM number0 number4 number4)
    (SUM number1 number1 number2)
    (SUM number1 number2 number3)
    (SUM number1 number3 number4)
    (SUM number1 number4 number5)
    (SUM number2 number1 number3)
    (SUM number2 number2 number4)
    (SUM number2 number3 number5)
    (SUM number2 number4 number6)
    (SUM number3 number1 number4)
    (SUM number3 number2 number5)
    (SUM number3 number3 number6)
    (SUM number3 number4 number7)
    (SUM number4 number1 number5)
    (SUM number4 number2 number6)
    (SUM number4 number3 number7)
    (SUM number4 number4 number8)
    (SUM number5 number1 number6)
    (SUM number5 number2 number7)
    (SUM number5 number3 number8)
    (SUM number5 number4 number9)
    (SUM number6 number1 number7)
    (SUM number6 number2 number8)
    (SUM number6 number3 number9)
    (SUM number6 number4 number10)
    (SUM number7 number1 number8)
    (SUM number7 number2 number9)
    (SUM number7 number3 number10)
    (SUM number7 number4 number11)
    (SUM number8 number1 number9)
    (SUM number8 number2 number10)
    (SUM number8 number3 number11)
    (SUM number8 number4 number12)
    (SUM number9 number1 number10)
    (SUM number9 number2 number11)
    (SUM number9 number3 number12)
    (SUM number9 number4 number13)
    (SUM number10 number1 number11)
    (SUM number10 number2 number12)
    (SUM number10 number3 number13)
    (SUM number10 number4 number14)
    (SUM number11 number1 number12)
    (SUM number11 number2 number13)
    (SUM number11 number3 number14)
    (SUM number11 number4 number15)
    (SUM number12 number1 number13)
    (SUM number12 number2 number14)
    (SUM number12 number3 number15)
    (SUM number12 number4 number16)
    (SUM number13 number1 number14)
    (SUM number13 number2 number15)
    (SUM number13 number3 number16)
    (SUM number14 number1 number15)
    (SUM number14 number2 number16)
    (SUM number15 number1 number16)
    (LESS-EQUAL number1 number8)
    (LESS-EQUAL number1 number16)
    (LESS-EQUAL number2 number8)
    (LESS-EQUAL number2 number16)
    (LESS-EQUAL number3 number8)
    (LESS-EQUAL number3 number16)
    (LESS-EQUAL number4 number8)
    (LESS-EQUAL number4 number16)
    (LESS-EQUAL number5 number8)
    (LESS-EQUAL number5 number16)
    (LESS-EQUAL number6 number8)
    (LESS-EQUAL number6 number16)
    (LESS-EQUAL number7 number8)
    (LESS-EQUAL number7 number16)
    (LESS-EQUAL number8 number8)
    (LESS-EQUAL number8 number16)
    (LESS-EQUAL number9 number16)
    (LESS-EQUAL number10 number16)
    (LESS-EQUAL number11 number16)
    (LESS-EQUAL number12 number16)
    (LESS-EQUAL number13 number16)
    (LESS-EQUAL number14 number16)
    (LESS-EQUAL number15 number16)
    (LESS-EQUAL number16 number16)
    (= (total-cost) 0)
    (= (send-cost server1 server2 number1) 4)
    (= (send-cost server2 server1 number1) 4)
    (= (send-cost server1 server2 number2) 8)
    (= (send-cost server2 server1 number2) 8)
    (= (send-cost server1 server2 number3) 12)
    (= (send-cost server2 server1 number3) 12)
    (= (send-cost server1 server2 number4) 16)
    (= (send-cost server2 server1 number4) 16)
    (= (send-cost server1 server3 number1) 6)
    (= (send-cost server3 server1 number1) 6)
    (= (send-cost server1 server3 number2) 12)
    (= (send-cost server3 server1 number2) 12)
    (= (send-cost server1 server3 number3) 18)
    (= (send-cost server3 server1 number3) 18)
    (= (send-cost server1 server3 number4) 24)
    (= (send-cost server3 server1 number4) 24)
    (= (io-cost server1 number1) 5)
    (= (io-cost server1 number2) 10)
    (= (io-cost server1 number3) 15)
    (= (io-cost server1 number4) 20)
    (= (io-cost server2 number1) 1)
    (= (io-cost server2 number2) 2)
    (= (io-cost server2 number3) 3)
    (= (io-cost server2 number4) 4)
    (= (io-cost server3 number1) 1)
    (= (io-cost server3 number2) 2)
    (= (io-cost server3 number3) 3)
    (= (io-cost server3 number4) 4)
    (saved data-0-7 server2)
    (saved data-0-8 server3)
    (usage server1 number0)
    (usage server2 number0)
    (usage server3 number0)
)
(:goal
(and
    (saved data-2-2 server3)
    (saved data-2-4 server1)
    (saved data-2-6 server1)
)
)
(:metric minimize (total-cost))
)