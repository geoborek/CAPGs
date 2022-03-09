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
	(= (cost-move loc-x0-y0 loc-x1-y0) 8361)
	(= (cost-move loc-x0-y0 loc-x0-y1) 1683)
	(= (cost-move loc-x0-y1 loc-x1-y1) 7488)
	(= (cost-move loc-x0-y1 loc-x0-y0) 1833)
	(= (cost-move loc-x0-y1 loc-x0-y2) 4417)
	(= (cost-move loc-x0-y2 loc-x1-y2) 6369)
	(= (cost-move loc-x0-y2 loc-x0-y1) 1642)
	(= (cost-move loc-x1-y0 loc-x0-y0) 6530)
	(= (cost-move loc-x1-y0 loc-x2-y0) 5395)
	(= (cost-move loc-x1-y0 loc-x1-y1) 3256)
	(= (cost-move loc-x1-y1 loc-x0-y1) 7674)
	(= (cost-move loc-x1-y1 loc-x2-y1) 8807)
	(= (cost-move loc-x1-y1 loc-x1-y0) 6083)
	(= (cost-move loc-x1-y1 loc-x1-y2) 8502)
	(= (cost-move loc-x1-y2 loc-x0-y2) 9362)
	(= (cost-move loc-x1-y2 loc-x2-y2) 8532)
	(= (cost-move loc-x1-y2 loc-x1-y1) 4467)
	(= (cost-move loc-x2-y0 loc-x1-y0) 6671)
	(= (cost-move loc-x2-y0 loc-x2-y1) 6944)
	(= (cost-move loc-x2-y1 loc-x1-y1) 3297)
	(= (cost-move loc-x2-y1 loc-x2-y0) 2534)
	(= (cost-move loc-x2-y1 loc-x2-y2) 5923)
	(= (cost-move loc-x2-y2 loc-x1-y2) 8048)
	(= (cost-move loc-x2-y2 loc-x2-y1) 6447)
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
	(visited loc-x0-y1)
	(visited loc-x0-y2)
	(visited loc-x1-y0)
	(visited loc-x1-y1)
	(visited loc-x1-y2)
	(visited loc-x2-y0)
	(visited loc-x2-y1)
	(visited loc-x2-y2)
)
)
(:metric minimize (total-cost)))