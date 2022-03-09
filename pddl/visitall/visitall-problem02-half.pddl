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
	(= (cost-move loc-x0-y0 loc-x1-y0) 6950)
	(= (cost-move loc-x0-y0 loc-x0-y1) 2124)
	(= (cost-move loc-x0-y1 loc-x1-y1) 5054)
	(= (cost-move loc-x0-y1 loc-x0-y0) 7576)
	(= (cost-move loc-x1-y0 loc-x0-y0) 9735)
	(= (cost-move loc-x1-y0 loc-x1-y1) 5786)
	(= (cost-move loc-x1-y1 loc-x0-y1) 8395)
	(= (cost-move loc-x1-y1 loc-x1-y0) 4907)
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
 
)
(:goal
(and 
	(visited loc-x1-y0)
	(visited loc-x1-y1)
)
)
(:metric minimize (total-cost)))