(define (problem grid-2)
(:domain grid-visit-all)
(:objects 
	loc-x0-y0
	loc-x0-y1
	loc-x1-y0
	loc-x1-y1
- place 
        
)
(:init
	(= (total-cost) 0)

; START - base costs
	(= (base-move loc-x0-y0 loc-x1-y0) 10)
	(= (base-move loc-x0-y0 loc-x0-y1) 10)
	(= (base-move loc-x0-y1 loc-x1-y1) 10)
	(= (base-move loc-x0-y1 loc-x0-y0) 10)
	(= (base-move loc-x1-y0 loc-x0-y0) 10)
	(= (base-move loc-x1-y0 loc-x1-y1) 10)
	(= (base-move loc-x1-y1 loc-x0-y1) 10)
	(= (base-move loc-x1-y1 loc-x1-y0) 10)
; END - base costs

; START - pure strategies
	(= (cost-move loc-x0-y0 loc-x1-y0) 7629)
	(= (cost-move loc-x0-y0 loc-x0-y1) 3390)
	(= (cost-move loc-x0-y1 loc-x1-y1) 7344)
	(= (cost-move loc-x0-y1 loc-x0-y0) 6930)
	(= (cost-move loc-x1-y0 loc-x0-y0) 3170)
	(= (cost-move loc-x1-y0 loc-x1-y1) 4968)
	(= (cost-move loc-x1-y1 loc-x0-y1) 6236)
	(= (cost-move loc-x1-y1 loc-x1-y0) 5908)
; END - pure strategies

	(at-robot loc-x1-y1)
	(visited loc-x1-y1)
	(connected loc-x0-y0 loc-x1-y0)
 	(connected loc-x0-y0 loc-x0-y1)
 	(connected loc-x0-y1 loc-x1-y1)
 	(connected loc-x0-y1 loc-x0-y0)
 	(connected loc-x1-y0 loc-x0-y0)
 	(connected loc-x1-y0 loc-x1-y1)
 	(connected loc-x1-y1 loc-x0-y1)
 	(connected loc-x1-y1 loc-x1-y0)
 
	(= (total-cost) 0)
)
(:goal
(and 
	(visited loc-x0-y0)
	(visited loc-x0-y1)
	(visited loc-x1-y0)
	(visited loc-x1-y1)
)
)
(:metric minimize (total-cost)))