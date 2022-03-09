(define (problem grid-3)
(:domain grid-visit-all)
(:objects 
	loc-x0-y0
	loc-x0-y1
	loc-x0-y2
	loc-x1-y0
	loc-x1-y1
	loc-x1-y2
	loc-x2-y0
	loc-x2-y1
	loc-x2-y2
- place 
        
)
(:init
	(= (total-cost) 0)

; START - base costs
	(= (base-move loc-x0-y0 loc-x1-y0) 10)
	(= (base-move loc-x0-y0 loc-x0-y1) 10)
	(= (base-move loc-x0-y1 loc-x1-y1) 10)
	(= (base-move loc-x0-y1 loc-x0-y0) 10)
	(= (base-move loc-x0-y1 loc-x0-y2) 10)
	(= (base-move loc-x0-y2 loc-x1-y2) 10)
	(= (base-move loc-x0-y2 loc-x0-y1) 10)
	(= (base-move loc-x1-y0 loc-x0-y0) 10)
	(= (base-move loc-x1-y0 loc-x2-y0) 10)
	(= (base-move loc-x1-y0 loc-x1-y1) 10)
	(= (base-move loc-x1-y1 loc-x0-y1) 10)
	(= (base-move loc-x1-y1 loc-x2-y1) 10)
	(= (base-move loc-x1-y1 loc-x1-y0) 10)
	(= (base-move loc-x1-y1 loc-x1-y2) 10)
	(= (base-move loc-x1-y2 loc-x0-y2) 10)
	(= (base-move loc-x1-y2 loc-x2-y2) 10)
	(= (base-move loc-x1-y2 loc-x1-y1) 10)
	(= (base-move loc-x2-y0 loc-x1-y0) 10)
	(= (base-move loc-x2-y0 loc-x2-y1) 10)
	(= (base-move loc-x2-y1 loc-x1-y1) 10)
	(= (base-move loc-x2-y1 loc-x2-y0) 10)
	(= (base-move loc-x2-y1 loc-x2-y2) 10)
	(= (base-move loc-x2-y2 loc-x1-y2) 10)
	(= (base-move loc-x2-y2 loc-x2-y1) 10)
; END - base costs

; START - pure strategies
	(= (cost-move loc-x0-y0 loc-x1-y0) 9031)
	(= (cost-move loc-x0-y0 loc-x0-y1) 4022)
	(= (cost-move loc-x0-y1 loc-x1-y1) 9256)
	(= (cost-move loc-x0-y1 loc-x0-y0) 5390)
	(= (cost-move loc-x0-y1 loc-x0-y2) 6057)
	(= (cost-move loc-x0-y2 loc-x1-y2) 4730)
	(= (cost-move loc-x0-y2 loc-x0-y1) 1584)
	(= (cost-move loc-x1-y0 loc-x0-y0) 5627)
	(= (cost-move loc-x1-y0 loc-x2-y0) 2583)
	(= (cost-move loc-x1-y0 loc-x1-y1) 1878)
	(= (cost-move loc-x1-y1 loc-x0-y1) 3287)
	(= (cost-move loc-x1-y1 loc-x2-y1) 3326)
	(= (cost-move loc-x1-y1 loc-x1-y0) 8858)
	(= (cost-move loc-x1-y1 loc-x1-y2) 1767)
	(= (cost-move loc-x1-y2 loc-x0-y2) 4588)
	(= (cost-move loc-x1-y2 loc-x2-y2) 5591)
	(= (cost-move loc-x1-y2 loc-x1-y1) 7385)
	(= (cost-move loc-x2-y0 loc-x1-y0) 4525)
	(= (cost-move loc-x2-y0 loc-x2-y1) 6682)
	(= (cost-move loc-x2-y1 loc-x1-y1) 9893)
	(= (cost-move loc-x2-y1 loc-x2-y0) 3591)
	(= (cost-move loc-x2-y1 loc-x2-y2) 9365)
	(= (cost-move loc-x2-y2 loc-x1-y2) 7581)
	(= (cost-move loc-x2-y2 loc-x2-y1) 9921)
; END - pure strategies

	(at-robot loc-x1-y1)
	(visited loc-x1-y1)
	(connected loc-x0-y0 loc-x1-y0)
 	(connected loc-x0-y0 loc-x0-y1)
 	(connected loc-x0-y1 loc-x1-y1)
 	(connected loc-x0-y1 loc-x0-y0)
 	(connected loc-x0-y1 loc-x0-y2)
 	(connected loc-x0-y2 loc-x1-y2)
 	(connected loc-x0-y2 loc-x0-y1)
 	(connected loc-x1-y0 loc-x0-y0)
 	(connected loc-x1-y0 loc-x2-y0)
 	(connected loc-x1-y0 loc-x1-y1)
 	(connected loc-x1-y1 loc-x0-y1)
 	(connected loc-x1-y1 loc-x2-y1)
 	(connected loc-x1-y1 loc-x1-y0)
 	(connected loc-x1-y1 loc-x1-y2)
 	(connected loc-x1-y2 loc-x0-y2)
 	(connected loc-x1-y2 loc-x2-y2)
 	(connected loc-x1-y2 loc-x1-y1)
 	(connected loc-x2-y0 loc-x1-y0)
 	(connected loc-x2-y0 loc-x2-y1)
 	(connected loc-x2-y1 loc-x1-y1)
 	(connected loc-x2-y1 loc-x2-y0)
 	(connected loc-x2-y1 loc-x2-y2)
 	(connected loc-x2-y2 loc-x1-y2)
 	(connected loc-x2-y2 loc-x2-y1)
 
)
(:goal
(and 
	(visited loc-x0-y0)
	(visited loc-x0-y2)
	(visited loc-x1-y1)
	(visited loc-x2-y0)
	(visited loc-x2-y1)
)
)
(:metric minimize (total-cost)))