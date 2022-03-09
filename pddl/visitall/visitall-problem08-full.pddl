(define (problem grid-8)
(:domain grid-visit-all)
(:objects 
	loc-x0-y0
	loc-x0-y1
	loc-x0-y2
	loc-x0-y3
	loc-x0-y4
	loc-x0-y5
	loc-x0-y6
	loc-x0-y7
	loc-x1-y0
	loc-x1-y1
	loc-x1-y2
	loc-x1-y3
	loc-x1-y4
	loc-x1-y5
	loc-x1-y6
	loc-x1-y7
	loc-x2-y0
	loc-x2-y1
	loc-x2-y2
	loc-x2-y3
	loc-x2-y4
	loc-x2-y5
	loc-x2-y6
	loc-x2-y7
	loc-x3-y0
	loc-x3-y1
	loc-x3-y2
	loc-x3-y3
	loc-x3-y4
	loc-x3-y5
	loc-x3-y6
	loc-x3-y7
	loc-x4-y0
	loc-x4-y1
	loc-x4-y2
	loc-x4-y3
	loc-x4-y4
	loc-x4-y5
	loc-x4-y6
	loc-x4-y7
	loc-x5-y0
	loc-x5-y1
	loc-x5-y2
	loc-x5-y3
	loc-x5-y4
	loc-x5-y5
	loc-x5-y6
	loc-x5-y7
	loc-x6-y0
	loc-x6-y1
	loc-x6-y2
	loc-x6-y3
	loc-x6-y4
	loc-x6-y5
	loc-x6-y6
	loc-x6-y7
	loc-x7-y0
	loc-x7-y1
	loc-x7-y2
	loc-x7-y3
	loc-x7-y4
	loc-x7-y5
	loc-x7-y6
	loc-x7-y7
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
	(= (base-move loc-x0-y2 loc-x0-y3) 10)
	(= (base-move loc-x0-y3 loc-x1-y3) 10)
	(= (base-move loc-x0-y3 loc-x0-y2) 10)
	(= (base-move loc-x0-y3 loc-x0-y4) 10)
	(= (base-move loc-x0-y4 loc-x1-y4) 10)
	(= (base-move loc-x0-y4 loc-x0-y3) 10)
	(= (base-move loc-x0-y4 loc-x0-y5) 10)
	(= (base-move loc-x0-y5 loc-x1-y5) 10)
	(= (base-move loc-x0-y5 loc-x0-y4) 10)
	(= (base-move loc-x0-y5 loc-x0-y6) 10)
	(= (base-move loc-x0-y6 loc-x1-y6) 10)
	(= (base-move loc-x0-y6 loc-x0-y5) 10)
	(= (base-move loc-x0-y6 loc-x0-y7) 10)
	(= (base-move loc-x0-y7 loc-x1-y7) 10)
	(= (base-move loc-x0-y7 loc-x0-y6) 10)
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
	(= (base-move loc-x1-y2 loc-x1-y3) 10)
	(= (base-move loc-x1-y3 loc-x0-y3) 10)
	(= (base-move loc-x1-y3 loc-x2-y3) 10)
	(= (base-move loc-x1-y3 loc-x1-y2) 10)
	(= (base-move loc-x1-y3 loc-x1-y4) 10)
	(= (base-move loc-x1-y4 loc-x0-y4) 10)
	(= (base-move loc-x1-y4 loc-x2-y4) 10)
	(= (base-move loc-x1-y4 loc-x1-y3) 10)
	(= (base-move loc-x1-y4 loc-x1-y5) 10)
	(= (base-move loc-x1-y5 loc-x0-y5) 10)
	(= (base-move loc-x1-y5 loc-x2-y5) 10)
	(= (base-move loc-x1-y5 loc-x1-y4) 10)
	(= (base-move loc-x1-y5 loc-x1-y6) 10)
	(= (base-move loc-x1-y6 loc-x0-y6) 10)
	(= (base-move loc-x1-y6 loc-x2-y6) 10)
	(= (base-move loc-x1-y6 loc-x1-y5) 10)
	(= (base-move loc-x1-y6 loc-x1-y7) 10)
	(= (base-move loc-x1-y7 loc-x0-y7) 10)
	(= (base-move loc-x1-y7 loc-x2-y7) 10)
	(= (base-move loc-x1-y7 loc-x1-y6) 10)
	(= (base-move loc-x2-y0 loc-x1-y0) 10)
	(= (base-move loc-x2-y0 loc-x3-y0) 10)
	(= (base-move loc-x2-y0 loc-x2-y1) 10)
	(= (base-move loc-x2-y1 loc-x1-y1) 10)
	(= (base-move loc-x2-y1 loc-x3-y1) 10)
	(= (base-move loc-x2-y1 loc-x2-y0) 10)
	(= (base-move loc-x2-y1 loc-x2-y2) 10)
	(= (base-move loc-x2-y2 loc-x1-y2) 10)
	(= (base-move loc-x2-y2 loc-x3-y2) 10)
	(= (base-move loc-x2-y2 loc-x2-y1) 10)
	(= (base-move loc-x2-y2 loc-x2-y3) 10)
	(= (base-move loc-x2-y3 loc-x1-y3) 10)
	(= (base-move loc-x2-y3 loc-x3-y3) 10)
	(= (base-move loc-x2-y3 loc-x2-y2) 10)
	(= (base-move loc-x2-y3 loc-x2-y4) 10)
	(= (base-move loc-x2-y4 loc-x1-y4) 10)
	(= (base-move loc-x2-y4 loc-x3-y4) 10)
	(= (base-move loc-x2-y4 loc-x2-y3) 10)
	(= (base-move loc-x2-y4 loc-x2-y5) 10)
	(= (base-move loc-x2-y5 loc-x1-y5) 10)
	(= (base-move loc-x2-y5 loc-x3-y5) 10)
	(= (base-move loc-x2-y5 loc-x2-y4) 10)
	(= (base-move loc-x2-y5 loc-x2-y6) 10)
	(= (base-move loc-x2-y6 loc-x1-y6) 10)
	(= (base-move loc-x2-y6 loc-x3-y6) 10)
	(= (base-move loc-x2-y6 loc-x2-y5) 10)
	(= (base-move loc-x2-y6 loc-x2-y7) 10)
	(= (base-move loc-x2-y7 loc-x1-y7) 10)
	(= (base-move loc-x2-y7 loc-x3-y7) 10)
	(= (base-move loc-x2-y7 loc-x2-y6) 10)
	(= (base-move loc-x3-y0 loc-x2-y0) 10)
	(= (base-move loc-x3-y0 loc-x4-y0) 10)
	(= (base-move loc-x3-y0 loc-x3-y1) 10)
	(= (base-move loc-x3-y1 loc-x2-y1) 10)
	(= (base-move loc-x3-y1 loc-x4-y1) 10)
	(= (base-move loc-x3-y1 loc-x3-y0) 10)
	(= (base-move loc-x3-y1 loc-x3-y2) 10)
	(= (base-move loc-x3-y2 loc-x2-y2) 10)
	(= (base-move loc-x3-y2 loc-x4-y2) 10)
	(= (base-move loc-x3-y2 loc-x3-y1) 10)
	(= (base-move loc-x3-y2 loc-x3-y3) 10)
	(= (base-move loc-x3-y3 loc-x2-y3) 10)
	(= (base-move loc-x3-y3 loc-x4-y3) 10)
	(= (base-move loc-x3-y3 loc-x3-y2) 10)
	(= (base-move loc-x3-y3 loc-x3-y4) 10)
	(= (base-move loc-x3-y4 loc-x2-y4) 10)
	(= (base-move loc-x3-y4 loc-x4-y4) 10)
	(= (base-move loc-x3-y4 loc-x3-y3) 10)
	(= (base-move loc-x3-y4 loc-x3-y5) 10)
	(= (base-move loc-x3-y5 loc-x2-y5) 10)
	(= (base-move loc-x3-y5 loc-x4-y5) 10)
	(= (base-move loc-x3-y5 loc-x3-y4) 10)
	(= (base-move loc-x3-y5 loc-x3-y6) 10)
	(= (base-move loc-x3-y6 loc-x2-y6) 10)
	(= (base-move loc-x3-y6 loc-x4-y6) 10)
	(= (base-move loc-x3-y6 loc-x3-y5) 10)
	(= (base-move loc-x3-y6 loc-x3-y7) 10)
	(= (base-move loc-x3-y7 loc-x2-y7) 10)
	(= (base-move loc-x3-y7 loc-x4-y7) 10)
	(= (base-move loc-x3-y7 loc-x3-y6) 10)
	(= (base-move loc-x4-y0 loc-x3-y0) 10)
	(= (base-move loc-x4-y0 loc-x5-y0) 10)
	(= (base-move loc-x4-y0 loc-x4-y1) 10)
	(= (base-move loc-x4-y1 loc-x3-y1) 10)
	(= (base-move loc-x4-y1 loc-x5-y1) 10)
	(= (base-move loc-x4-y1 loc-x4-y0) 10)
	(= (base-move loc-x4-y1 loc-x4-y2) 10)
	(= (base-move loc-x4-y2 loc-x3-y2) 10)
	(= (base-move loc-x4-y2 loc-x5-y2) 10)
	(= (base-move loc-x4-y2 loc-x4-y1) 10)
	(= (base-move loc-x4-y2 loc-x4-y3) 10)
	(= (base-move loc-x4-y3 loc-x3-y3) 10)
	(= (base-move loc-x4-y3 loc-x5-y3) 10)
	(= (base-move loc-x4-y3 loc-x4-y2) 10)
	(= (base-move loc-x4-y3 loc-x4-y4) 10)
	(= (base-move loc-x4-y4 loc-x3-y4) 10)
	(= (base-move loc-x4-y4 loc-x5-y4) 10)
	(= (base-move loc-x4-y4 loc-x4-y3) 10)
	(= (base-move loc-x4-y4 loc-x4-y5) 10)
	(= (base-move loc-x4-y5 loc-x3-y5) 10)
	(= (base-move loc-x4-y5 loc-x5-y5) 10)
	(= (base-move loc-x4-y5 loc-x4-y4) 10)
	(= (base-move loc-x4-y5 loc-x4-y6) 10)
	(= (base-move loc-x4-y6 loc-x3-y6) 10)
	(= (base-move loc-x4-y6 loc-x5-y6) 10)
	(= (base-move loc-x4-y6 loc-x4-y5) 10)
	(= (base-move loc-x4-y6 loc-x4-y7) 10)
	(= (base-move loc-x4-y7 loc-x3-y7) 10)
	(= (base-move loc-x4-y7 loc-x5-y7) 10)
	(= (base-move loc-x4-y7 loc-x4-y6) 10)
	(= (base-move loc-x5-y0 loc-x4-y0) 10)
	(= (base-move loc-x5-y0 loc-x6-y0) 10)
	(= (base-move loc-x5-y0 loc-x5-y1) 10)
	(= (base-move loc-x5-y1 loc-x4-y1) 10)
	(= (base-move loc-x5-y1 loc-x6-y1) 10)
	(= (base-move loc-x5-y1 loc-x5-y0) 10)
	(= (base-move loc-x5-y1 loc-x5-y2) 10)
	(= (base-move loc-x5-y2 loc-x4-y2) 10)
	(= (base-move loc-x5-y2 loc-x6-y2) 10)
	(= (base-move loc-x5-y2 loc-x5-y1) 10)
	(= (base-move loc-x5-y2 loc-x5-y3) 10)
	(= (base-move loc-x5-y3 loc-x4-y3) 10)
	(= (base-move loc-x5-y3 loc-x6-y3) 10)
	(= (base-move loc-x5-y3 loc-x5-y2) 10)
	(= (base-move loc-x5-y3 loc-x5-y4) 10)
	(= (base-move loc-x5-y4 loc-x4-y4) 10)
	(= (base-move loc-x5-y4 loc-x6-y4) 10)
	(= (base-move loc-x5-y4 loc-x5-y3) 10)
	(= (base-move loc-x5-y4 loc-x5-y5) 10)
	(= (base-move loc-x5-y5 loc-x4-y5) 10)
	(= (base-move loc-x5-y5 loc-x6-y5) 10)
	(= (base-move loc-x5-y5 loc-x5-y4) 10)
	(= (base-move loc-x5-y5 loc-x5-y6) 10)
	(= (base-move loc-x5-y6 loc-x4-y6) 10)
	(= (base-move loc-x5-y6 loc-x6-y6) 10)
	(= (base-move loc-x5-y6 loc-x5-y5) 10)
	(= (base-move loc-x5-y6 loc-x5-y7) 10)
	(= (base-move loc-x5-y7 loc-x4-y7) 10)
	(= (base-move loc-x5-y7 loc-x6-y7) 10)
	(= (base-move loc-x5-y7 loc-x5-y6) 10)
	(= (base-move loc-x6-y0 loc-x5-y0) 10)
	(= (base-move loc-x6-y0 loc-x7-y0) 10)
	(= (base-move loc-x6-y0 loc-x6-y1) 10)
	(= (base-move loc-x6-y1 loc-x5-y1) 10)
	(= (base-move loc-x6-y1 loc-x7-y1) 10)
	(= (base-move loc-x6-y1 loc-x6-y0) 10)
	(= (base-move loc-x6-y1 loc-x6-y2) 10)
	(= (base-move loc-x6-y2 loc-x5-y2) 10)
	(= (base-move loc-x6-y2 loc-x7-y2) 10)
	(= (base-move loc-x6-y2 loc-x6-y1) 10)
	(= (base-move loc-x6-y2 loc-x6-y3) 10)
	(= (base-move loc-x6-y3 loc-x5-y3) 10)
	(= (base-move loc-x6-y3 loc-x7-y3) 10)
	(= (base-move loc-x6-y3 loc-x6-y2) 10)
	(= (base-move loc-x6-y3 loc-x6-y4) 10)
	(= (base-move loc-x6-y4 loc-x5-y4) 10)
	(= (base-move loc-x6-y4 loc-x7-y4) 10)
	(= (base-move loc-x6-y4 loc-x6-y3) 10)
	(= (base-move loc-x6-y4 loc-x6-y5) 10)
	(= (base-move loc-x6-y5 loc-x5-y5) 10)
	(= (base-move loc-x6-y5 loc-x7-y5) 10)
	(= (base-move loc-x6-y5 loc-x6-y4) 10)
	(= (base-move loc-x6-y5 loc-x6-y6) 10)
	(= (base-move loc-x6-y6 loc-x5-y6) 10)
	(= (base-move loc-x6-y6 loc-x7-y6) 10)
	(= (base-move loc-x6-y6 loc-x6-y5) 10)
	(= (base-move loc-x6-y6 loc-x6-y7) 10)
	(= (base-move loc-x6-y7 loc-x5-y7) 10)
	(= (base-move loc-x6-y7 loc-x7-y7) 10)
	(= (base-move loc-x6-y7 loc-x6-y6) 10)
	(= (base-move loc-x7-y0 loc-x6-y0) 10)
	(= (base-move loc-x7-y0 loc-x7-y1) 10)
	(= (base-move loc-x7-y1 loc-x6-y1) 10)
	(= (base-move loc-x7-y1 loc-x7-y0) 10)
	(= (base-move loc-x7-y1 loc-x7-y2) 10)
	(= (base-move loc-x7-y2 loc-x6-y2) 10)
	(= (base-move loc-x7-y2 loc-x7-y1) 10)
	(= (base-move loc-x7-y2 loc-x7-y3) 10)
	(= (base-move loc-x7-y3 loc-x6-y3) 10)
	(= (base-move loc-x7-y3 loc-x7-y2) 10)
	(= (base-move loc-x7-y3 loc-x7-y4) 10)
	(= (base-move loc-x7-y4 loc-x6-y4) 10)
	(= (base-move loc-x7-y4 loc-x7-y3) 10)
	(= (base-move loc-x7-y4 loc-x7-y5) 10)
	(= (base-move loc-x7-y5 loc-x6-y5) 10)
	(= (base-move loc-x7-y5 loc-x7-y4) 10)
	(= (base-move loc-x7-y5 loc-x7-y6) 10)
	(= (base-move loc-x7-y6 loc-x6-y6) 10)
	(= (base-move loc-x7-y6 loc-x7-y5) 10)
	(= (base-move loc-x7-y6 loc-x7-y7) 10)
	(= (base-move loc-x7-y7 loc-x6-y7) 10)
	(= (base-move loc-x7-y7 loc-x7-y6) 10)
; END - base costs

; START - pure strategies
	(= (cost-move loc-x0-y0 loc-x1-y0) 8336)
	(= (cost-move loc-x0-y0 loc-x0-y1) 9728)
	(= (cost-move loc-x0-y1 loc-x1-y1) 8671)
	(= (cost-move loc-x0-y1 loc-x0-y0) 8573)
	(= (cost-move loc-x0-y1 loc-x0-y2) 6109)
	(= (cost-move loc-x0-y2 loc-x1-y2) 8369)
	(= (cost-move loc-x0-y2 loc-x0-y1) 9073)
	(= (cost-move loc-x0-y2 loc-x0-y3) 8828)
	(= (cost-move loc-x0-y3 loc-x1-y3) 3157)
	(= (cost-move loc-x0-y3 loc-x0-y2) 8982)
	(= (cost-move loc-x0-y3 loc-x0-y4) 2282)
	(= (cost-move loc-x0-y4 loc-x1-y4) 7625)
	(= (cost-move loc-x0-y4 loc-x0-y3) 8380)
	(= (cost-move loc-x0-y4 loc-x0-y5) 2198)
	(= (cost-move loc-x0-y5 loc-x1-y5) 5627)
	(= (cost-move loc-x0-y5 loc-x0-y4) 2771)
	(= (cost-move loc-x0-y5 loc-x0-y6) 6073)
	(= (cost-move loc-x0-y6 loc-x1-y6) 4950)
	(= (cost-move loc-x0-y6 loc-x0-y5) 3182)
	(= (cost-move loc-x0-y6 loc-x0-y7) 6770)
	(= (cost-move loc-x0-y7 loc-x1-y7) 3194)
	(= (cost-move loc-x0-y7 loc-x0-y6) 7575)
	(= (cost-move loc-x1-y0 loc-x0-y0) 1530)
	(= (cost-move loc-x1-y0 loc-x2-y0) 7424)
	(= (cost-move loc-x1-y0 loc-x1-y1) 7510)
	(= (cost-move loc-x1-y1 loc-x0-y1) 1955)
	(= (cost-move loc-x1-y1 loc-x2-y1) 1075)
	(= (cost-move loc-x1-y1 loc-x1-y0) 3537)
	(= (cost-move loc-x1-y1 loc-x1-y2) 4066)
	(= (cost-move loc-x1-y2 loc-x0-y2) 4877)
	(= (cost-move loc-x1-y2 loc-x2-y2) 5679)
	(= (cost-move loc-x1-y2 loc-x1-y1) 5396)
	(= (cost-move loc-x1-y2 loc-x1-y3) 4941)
	(= (cost-move loc-x1-y3 loc-x0-y3) 2264)
	(= (cost-move loc-x1-y3 loc-x2-y3) 2909)
	(= (cost-move loc-x1-y3 loc-x1-y2) 1308)
	(= (cost-move loc-x1-y3 loc-x1-y4) 4133)
	(= (cost-move loc-x1-y4 loc-x0-y4) 4097)
	(= (cost-move loc-x1-y4 loc-x2-y4) 8415)
	(= (cost-move loc-x1-y4 loc-x1-y3) 2029)
	(= (cost-move loc-x1-y4 loc-x1-y5) 6866)
	(= (cost-move loc-x1-y5 loc-x0-y5) 6091)
	(= (cost-move loc-x1-y5 loc-x2-y5) 4216)
	(= (cost-move loc-x1-y5 loc-x1-y4) 4115)
	(= (cost-move loc-x1-y5 loc-x1-y6) 1017)
	(= (cost-move loc-x1-y6 loc-x0-y6) 9517)
	(= (cost-move loc-x1-y6 loc-x2-y6) 3055)
	(= (cost-move loc-x1-y6 loc-x1-y5) 2059)
	(= (cost-move loc-x1-y6 loc-x1-y7) 8115)
	(= (cost-move loc-x1-y7 loc-x0-y7) 1866)
	(= (cost-move loc-x1-y7 loc-x2-y7) 1237)
	(= (cost-move loc-x1-y7 loc-x1-y6) 3566)
	(= (cost-move loc-x2-y0 loc-x1-y0) 6612)
	(= (cost-move loc-x2-y0 loc-x3-y0) 7683)
	(= (cost-move loc-x2-y0 loc-x2-y1) 5885)
	(= (cost-move loc-x2-y1 loc-x1-y1) 5065)
	(= (cost-move loc-x2-y1 loc-x3-y1) 4413)
	(= (cost-move loc-x2-y1 loc-x2-y0) 9825)
	(= (cost-move loc-x2-y1 loc-x2-y2) 9821)
	(= (cost-move loc-x2-y2 loc-x1-y2) 3576)
	(= (cost-move loc-x2-y2 loc-x3-y2) 1826)
	(= (cost-move loc-x2-y2 loc-x2-y1) 8961)
	(= (cost-move loc-x2-y2 loc-x2-y3) 1198)
	(= (cost-move loc-x2-y3 loc-x1-y3) 5016)
	(= (cost-move loc-x2-y3 loc-x3-y3) 2463)
	(= (cost-move loc-x2-y3 loc-x2-y2) 7144)
	(= (cost-move loc-x2-y3 loc-x2-y4) 9481)
	(= (cost-move loc-x2-y4 loc-x1-y4) 9905)
	(= (cost-move loc-x2-y4 loc-x3-y4) 2192)
	(= (cost-move loc-x2-y4 loc-x2-y3) 1478)
	(= (cost-move loc-x2-y4 loc-x2-y5) 9114)
	(= (cost-move loc-x2-y5 loc-x1-y5) 5996)
	(= (cost-move loc-x2-y5 loc-x3-y5) 1046)
	(= (cost-move loc-x2-y5 loc-x2-y4) 5264)
	(= (cost-move loc-x2-y5 loc-x2-y6) 3105)
	(= (cost-move loc-x2-y6 loc-x1-y6) 1408)
	(= (cost-move loc-x2-y6 loc-x3-y6) 9839)
	(= (cost-move loc-x2-y6 loc-x2-y5) 6120)
	(= (cost-move loc-x2-y6 loc-x2-y7) 2791)
	(= (cost-move loc-x2-y7 loc-x1-y7) 5970)
	(= (cost-move loc-x2-y7 loc-x3-y7) 7721)
	(= (cost-move loc-x2-y7 loc-x2-y6) 8992)
	(= (cost-move loc-x3-y0 loc-x2-y0) 7664)
	(= (cost-move loc-x3-y0 loc-x4-y0) 7307)
	(= (cost-move loc-x3-y0 loc-x3-y1) 8870)
	(= (cost-move loc-x3-y1 loc-x2-y1) 5184)
	(= (cost-move loc-x3-y1 loc-x4-y1) 6570)
	(= (cost-move loc-x3-y1 loc-x3-y0) 7898)
	(= (cost-move loc-x3-y1 loc-x3-y2) 3637)
	(= (cost-move loc-x3-y2 loc-x2-y2) 8525)
	(= (cost-move loc-x3-y2 loc-x4-y2) 2673)
	(= (cost-move loc-x3-y2 loc-x3-y1) 1584)
	(= (cost-move loc-x3-y2 loc-x3-y3) 2763)
	(= (cost-move loc-x3-y3 loc-x2-y3) 5749)
	(= (cost-move loc-x3-y3 loc-x4-y3) 8473)
	(= (cost-move loc-x3-y3 loc-x3-y2) 7997)
	(= (cost-move loc-x3-y3 loc-x3-y4) 3338)
	(= (cost-move loc-x3-y4 loc-x2-y4) 7800)
	(= (cost-move loc-x3-y4 loc-x4-y4) 2086)
	(= (cost-move loc-x3-y4 loc-x3-y3) 8989)
	(= (cost-move loc-x3-y4 loc-x3-y5) 2013)
	(= (cost-move loc-x3-y5 loc-x2-y5) 2169)
	(= (cost-move loc-x3-y5 loc-x4-y5) 6023)
	(= (cost-move loc-x3-y5 loc-x3-y4) 5126)
	(= (cost-move loc-x3-y5 loc-x3-y6) 9282)
	(= (cost-move loc-x3-y6 loc-x2-y6) 8327)
	(= (cost-move loc-x3-y6 loc-x4-y6) 1339)
	(= (cost-move loc-x3-y6 loc-x3-y5) 3162)
	(= (cost-move loc-x3-y6 loc-x3-y7) 9353)
	(= (cost-move loc-x3-y7 loc-x2-y7) 3238)
	(= (cost-move loc-x3-y7 loc-x4-y7) 4602)
	(= (cost-move loc-x3-y7 loc-x3-y6) 7292)
	(= (cost-move loc-x4-y0 loc-x3-y0) 7674)
	(= (cost-move loc-x4-y0 loc-x5-y0) 8876)
	(= (cost-move loc-x4-y0 loc-x4-y1) 6318)
	(= (cost-move loc-x4-y1 loc-x3-y1) 6143)
	(= (cost-move loc-x4-y1 loc-x5-y1) 9261)
	(= (cost-move loc-x4-y1 loc-x4-y0) 7895)
	(= (cost-move loc-x4-y1 loc-x4-y2) 3842)
	(= (cost-move loc-x4-y2 loc-x3-y2) 3373)
	(= (cost-move loc-x4-y2 loc-x5-y2) 6189)
	(= (cost-move loc-x4-y2 loc-x4-y1) 3901)
	(= (cost-move loc-x4-y2 loc-x4-y3) 4023)
	(= (cost-move loc-x4-y3 loc-x3-y3) 3748)
	(= (cost-move loc-x4-y3 loc-x5-y3) 8598)
	(= (cost-move loc-x4-y3 loc-x4-y2) 5339)
	(= (cost-move loc-x4-y3 loc-x4-y4) 6076)
	(= (cost-move loc-x4-y4 loc-x3-y4) 3919)
	(= (cost-move loc-x4-y4 loc-x5-y4) 7803)
	(= (cost-move loc-x4-y4 loc-x4-y3) 7214)
	(= (cost-move loc-x4-y4 loc-x4-y5) 2396)
	(= (cost-move loc-x4-y5 loc-x3-y5) 6633)
	(= (cost-move loc-x4-y5 loc-x5-y5) 6211)
	(= (cost-move loc-x4-y5 loc-x4-y4) 1557)
	(= (cost-move loc-x4-y5 loc-x4-y6) 3199)
	(= (cost-move loc-x4-y6 loc-x3-y6) 6432)
	(= (cost-move loc-x4-y6 loc-x5-y6) 7276)
	(= (cost-move loc-x4-y6 loc-x4-y5) 8764)
	(= (cost-move loc-x4-y6 loc-x4-y7) 3866)
	(= (cost-move loc-x4-y7 loc-x3-y7) 1090)
	(= (cost-move loc-x4-y7 loc-x5-y7) 9744)
	(= (cost-move loc-x4-y7 loc-x4-y6) 7557)
	(= (cost-move loc-x5-y0 loc-x4-y0) 6568)
	(= (cost-move loc-x5-y0 loc-x6-y0) 9018)
	(= (cost-move loc-x5-y0 loc-x5-y1) 6779)
	(= (cost-move loc-x5-y1 loc-x4-y1) 2102)
	(= (cost-move loc-x5-y1 loc-x6-y1) 9802)
	(= (cost-move loc-x5-y1 loc-x5-y0) 6573)
	(= (cost-move loc-x5-y1 loc-x5-y2) 7813)
	(= (cost-move loc-x5-y2 loc-x4-y2) 8546)
	(= (cost-move loc-x5-y2 loc-x6-y2) 7883)
	(= (cost-move loc-x5-y2 loc-x5-y1) 5830)
	(= (cost-move loc-x5-y2 loc-x5-y3) 3744)
	(= (cost-move loc-x5-y3 loc-x4-y3) 5280)
	(= (cost-move loc-x5-y3 loc-x6-y3) 2895)
	(= (cost-move loc-x5-y3 loc-x5-y2) 3463)
	(= (cost-move loc-x5-y3 loc-x5-y4) 4954)
	(= (cost-move loc-x5-y4 loc-x4-y4) 7333)
	(= (cost-move loc-x5-y4 loc-x6-y4) 4362)
	(= (cost-move loc-x5-y4 loc-x5-y3) 4298)
	(= (cost-move loc-x5-y4 loc-x5-y5) 8784)
	(= (cost-move loc-x5-y5 loc-x4-y5) 3225)
	(= (cost-move loc-x5-y5 loc-x6-y5) 2295)
	(= (cost-move loc-x5-y5 loc-x5-y4) 4705)
	(= (cost-move loc-x5-y5 loc-x5-y6) 9432)
	(= (cost-move loc-x5-y6 loc-x4-y6) 3753)
	(= (cost-move loc-x5-y6 loc-x6-y6) 1269)
	(= (cost-move loc-x5-y6 loc-x5-y5) 9936)
	(= (cost-move loc-x5-y6 loc-x5-y7) 6673)
	(= (cost-move loc-x5-y7 loc-x4-y7) 1515)
	(= (cost-move loc-x5-y7 loc-x6-y7) 8683)
	(= (cost-move loc-x5-y7 loc-x5-y6) 7292)
	(= (cost-move loc-x6-y0 loc-x5-y0) 8675)
	(= (cost-move loc-x6-y0 loc-x7-y0) 8583)
	(= (cost-move loc-x6-y0 loc-x6-y1) 6275)
	(= (cost-move loc-x6-y1 loc-x5-y1) 1745)
	(= (cost-move loc-x6-y1 loc-x7-y1) 2240)
	(= (cost-move loc-x6-y1 loc-x6-y0) 6529)
	(= (cost-move loc-x6-y1 loc-x6-y2) 6494)
	(= (cost-move loc-x6-y2 loc-x5-y2) 4989)
	(= (cost-move loc-x6-y2 loc-x7-y2) 5721)
	(= (cost-move loc-x6-y2 loc-x6-y1) 5616)
	(= (cost-move loc-x6-y2 loc-x6-y3) 6100)
	(= (cost-move loc-x6-y3 loc-x5-y3) 5925)
	(= (cost-move loc-x6-y3 loc-x7-y3) 4011)
	(= (cost-move loc-x6-y3 loc-x6-y2) 6241)
	(= (cost-move loc-x6-y3 loc-x6-y4) 1233)
	(= (cost-move loc-x6-y4 loc-x5-y4) 2365)
	(= (cost-move loc-x6-y4 loc-x7-y4) 9744)
	(= (cost-move loc-x6-y4 loc-x6-y3) 6407)
	(= (cost-move loc-x6-y4 loc-x6-y5) 1483)
	(= (cost-move loc-x6-y5 loc-x5-y5) 8574)
	(= (cost-move loc-x6-y5 loc-x7-y5) 6435)
	(= (cost-move loc-x6-y5 loc-x6-y4) 3733)
	(= (cost-move loc-x6-y5 loc-x6-y6) 9442)
	(= (cost-move loc-x6-y6 loc-x5-y6) 8860)
	(= (cost-move loc-x6-y6 loc-x7-y6) 4313)
	(= (cost-move loc-x6-y6 loc-x6-y5) 3032)
	(= (cost-move loc-x6-y6 loc-x6-y7) 9441)
	(= (cost-move loc-x6-y7 loc-x5-y7) 1965)
	(= (cost-move loc-x6-y7 loc-x7-y7) 2433)
	(= (cost-move loc-x6-y7 loc-x6-y6) 8406)
	(= (cost-move loc-x7-y0 loc-x6-y0) 9615)
	(= (cost-move loc-x7-y0 loc-x7-y1) 3579)
	(= (cost-move loc-x7-y1 loc-x6-y1) 8528)
	(= (cost-move loc-x7-y1 loc-x7-y0) 5362)
	(= (cost-move loc-x7-y1 loc-x7-y2) 3158)
	(= (cost-move loc-x7-y2 loc-x6-y2) 4250)
	(= (cost-move loc-x7-y2 loc-x7-y1) 5118)
	(= (cost-move loc-x7-y2 loc-x7-y3) 8215)
	(= (cost-move loc-x7-y3 loc-x6-y3) 9973)
	(= (cost-move loc-x7-y3 loc-x7-y2) 5879)
	(= (cost-move loc-x7-y3 loc-x7-y4) 1146)
	(= (cost-move loc-x7-y4 loc-x6-y4) 1168)
	(= (cost-move loc-x7-y4 loc-x7-y3) 9739)
	(= (cost-move loc-x7-y4 loc-x7-y5) 5530)
	(= (cost-move loc-x7-y5 loc-x6-y5) 4394)
	(= (cost-move loc-x7-y5 loc-x7-y4) 4050)
	(= (cost-move loc-x7-y5 loc-x7-y6) 7776)
	(= (cost-move loc-x7-y6 loc-x6-y6) 5530)
	(= (cost-move loc-x7-y6 loc-x7-y5) 7318)
	(= (cost-move loc-x7-y6 loc-x7-y7) 3037)
	(= (cost-move loc-x7-y7 loc-x6-y7) 3837)
	(= (cost-move loc-x7-y7 loc-x7-y6) 8918)
; END - pure strategies

	(at-robot loc-x4-y4)
	(visited loc-x4-y4)
	(connected loc-x0-y0 loc-x1-y0)
 	(connected loc-x0-y0 loc-x0-y1)
 	(connected loc-x0-y1 loc-x1-y1)
 	(connected loc-x0-y1 loc-x0-y0)
 	(connected loc-x0-y1 loc-x0-y2)
 	(connected loc-x0-y2 loc-x1-y2)
 	(connected loc-x0-y2 loc-x0-y1)
 	(connected loc-x0-y2 loc-x0-y3)
 	(connected loc-x0-y3 loc-x1-y3)
 	(connected loc-x0-y3 loc-x0-y2)
 	(connected loc-x0-y3 loc-x0-y4)
 	(connected loc-x0-y4 loc-x1-y4)
 	(connected loc-x0-y4 loc-x0-y3)
 	(connected loc-x0-y4 loc-x0-y5)
 	(connected loc-x0-y5 loc-x1-y5)
 	(connected loc-x0-y5 loc-x0-y4)
 	(connected loc-x0-y5 loc-x0-y6)
 	(connected loc-x0-y6 loc-x1-y6)
 	(connected loc-x0-y6 loc-x0-y5)
 	(connected loc-x0-y6 loc-x0-y7)
 	(connected loc-x0-y7 loc-x1-y7)
 	(connected loc-x0-y7 loc-x0-y6)
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
 	(connected loc-x1-y2 loc-x1-y3)
 	(connected loc-x1-y3 loc-x0-y3)
 	(connected loc-x1-y3 loc-x2-y3)
 	(connected loc-x1-y3 loc-x1-y2)
 	(connected loc-x1-y3 loc-x1-y4)
 	(connected loc-x1-y4 loc-x0-y4)
 	(connected loc-x1-y4 loc-x2-y4)
 	(connected loc-x1-y4 loc-x1-y3)
 	(connected loc-x1-y4 loc-x1-y5)
 	(connected loc-x1-y5 loc-x0-y5)
 	(connected loc-x1-y5 loc-x2-y5)
 	(connected loc-x1-y5 loc-x1-y4)
 	(connected loc-x1-y5 loc-x1-y6)
 	(connected loc-x1-y6 loc-x0-y6)
 	(connected loc-x1-y6 loc-x2-y6)
 	(connected loc-x1-y6 loc-x1-y5)
 	(connected loc-x1-y6 loc-x1-y7)
 	(connected loc-x1-y7 loc-x0-y7)
 	(connected loc-x1-y7 loc-x2-y7)
 	(connected loc-x1-y7 loc-x1-y6)
 	(connected loc-x2-y0 loc-x1-y0)
 	(connected loc-x2-y0 loc-x3-y0)
 	(connected loc-x2-y0 loc-x2-y1)
 	(connected loc-x2-y1 loc-x1-y1)
 	(connected loc-x2-y1 loc-x3-y1)
 	(connected loc-x2-y1 loc-x2-y0)
 	(connected loc-x2-y1 loc-x2-y2)
 	(connected loc-x2-y2 loc-x1-y2)
 	(connected loc-x2-y2 loc-x3-y2)
 	(connected loc-x2-y2 loc-x2-y1)
 	(connected loc-x2-y2 loc-x2-y3)
 	(connected loc-x2-y3 loc-x1-y3)
 	(connected loc-x2-y3 loc-x3-y3)
 	(connected loc-x2-y3 loc-x2-y2)
 	(connected loc-x2-y3 loc-x2-y4)
 	(connected loc-x2-y4 loc-x1-y4)
 	(connected loc-x2-y4 loc-x3-y4)
 	(connected loc-x2-y4 loc-x2-y3)
 	(connected loc-x2-y4 loc-x2-y5)
 	(connected loc-x2-y5 loc-x1-y5)
 	(connected loc-x2-y5 loc-x3-y5)
 	(connected loc-x2-y5 loc-x2-y4)
 	(connected loc-x2-y5 loc-x2-y6)
 	(connected loc-x2-y6 loc-x1-y6)
 	(connected loc-x2-y6 loc-x3-y6)
 	(connected loc-x2-y6 loc-x2-y5)
 	(connected loc-x2-y6 loc-x2-y7)
 	(connected loc-x2-y7 loc-x1-y7)
 	(connected loc-x2-y7 loc-x3-y7)
 	(connected loc-x2-y7 loc-x2-y6)
 	(connected loc-x3-y0 loc-x2-y0)
 	(connected loc-x3-y0 loc-x4-y0)
 	(connected loc-x3-y0 loc-x3-y1)
 	(connected loc-x3-y1 loc-x2-y1)
 	(connected loc-x3-y1 loc-x4-y1)
 	(connected loc-x3-y1 loc-x3-y0)
 	(connected loc-x3-y1 loc-x3-y2)
 	(connected loc-x3-y2 loc-x2-y2)
 	(connected loc-x3-y2 loc-x4-y2)
 	(connected loc-x3-y2 loc-x3-y1)
 	(connected loc-x3-y2 loc-x3-y3)
 	(connected loc-x3-y3 loc-x2-y3)
 	(connected loc-x3-y3 loc-x4-y3)
 	(connected loc-x3-y3 loc-x3-y2)
 	(connected loc-x3-y3 loc-x3-y4)
 	(connected loc-x3-y4 loc-x2-y4)
 	(connected loc-x3-y4 loc-x4-y4)
 	(connected loc-x3-y4 loc-x3-y3)
 	(connected loc-x3-y4 loc-x3-y5)
 	(connected loc-x3-y5 loc-x2-y5)
 	(connected loc-x3-y5 loc-x4-y5)
 	(connected loc-x3-y5 loc-x3-y4)
 	(connected loc-x3-y5 loc-x3-y6)
 	(connected loc-x3-y6 loc-x2-y6)
 	(connected loc-x3-y6 loc-x4-y6)
 	(connected loc-x3-y6 loc-x3-y5)
 	(connected loc-x3-y6 loc-x3-y7)
 	(connected loc-x3-y7 loc-x2-y7)
 	(connected loc-x3-y7 loc-x4-y7)
 	(connected loc-x3-y7 loc-x3-y6)
 	(connected loc-x4-y0 loc-x3-y0)
 	(connected loc-x4-y0 loc-x5-y0)
 	(connected loc-x4-y0 loc-x4-y1)
 	(connected loc-x4-y1 loc-x3-y1)
 	(connected loc-x4-y1 loc-x5-y1)
 	(connected loc-x4-y1 loc-x4-y0)
 	(connected loc-x4-y1 loc-x4-y2)
 	(connected loc-x4-y2 loc-x3-y2)
 	(connected loc-x4-y2 loc-x5-y2)
 	(connected loc-x4-y2 loc-x4-y1)
 	(connected loc-x4-y2 loc-x4-y3)
 	(connected loc-x4-y3 loc-x3-y3)
 	(connected loc-x4-y3 loc-x5-y3)
 	(connected loc-x4-y3 loc-x4-y2)
 	(connected loc-x4-y3 loc-x4-y4)
 	(connected loc-x4-y4 loc-x3-y4)
 	(connected loc-x4-y4 loc-x5-y4)
 	(connected loc-x4-y4 loc-x4-y3)
 	(connected loc-x4-y4 loc-x4-y5)
 	(connected loc-x4-y5 loc-x3-y5)
 	(connected loc-x4-y5 loc-x5-y5)
 	(connected loc-x4-y5 loc-x4-y4)
 	(connected loc-x4-y5 loc-x4-y6)
 	(connected loc-x4-y6 loc-x3-y6)
 	(connected loc-x4-y6 loc-x5-y6)
 	(connected loc-x4-y6 loc-x4-y5)
 	(connected loc-x4-y6 loc-x4-y7)
 	(connected loc-x4-y7 loc-x3-y7)
 	(connected loc-x4-y7 loc-x5-y7)
 	(connected loc-x4-y7 loc-x4-y6)
 	(connected loc-x5-y0 loc-x4-y0)
 	(connected loc-x5-y0 loc-x6-y0)
 	(connected loc-x5-y0 loc-x5-y1)
 	(connected loc-x5-y1 loc-x4-y1)
 	(connected loc-x5-y1 loc-x6-y1)
 	(connected loc-x5-y1 loc-x5-y0)
 	(connected loc-x5-y1 loc-x5-y2)
 	(connected loc-x5-y2 loc-x4-y2)
 	(connected loc-x5-y2 loc-x6-y2)
 	(connected loc-x5-y2 loc-x5-y1)
 	(connected loc-x5-y2 loc-x5-y3)
 	(connected loc-x5-y3 loc-x4-y3)
 	(connected loc-x5-y3 loc-x6-y3)
 	(connected loc-x5-y3 loc-x5-y2)
 	(connected loc-x5-y3 loc-x5-y4)
 	(connected loc-x5-y4 loc-x4-y4)
 	(connected loc-x5-y4 loc-x6-y4)
 	(connected loc-x5-y4 loc-x5-y3)
 	(connected loc-x5-y4 loc-x5-y5)
 	(connected loc-x5-y5 loc-x4-y5)
 	(connected loc-x5-y5 loc-x6-y5)
 	(connected loc-x5-y5 loc-x5-y4)
 	(connected loc-x5-y5 loc-x5-y6)
 	(connected loc-x5-y6 loc-x4-y6)
 	(connected loc-x5-y6 loc-x6-y6)
 	(connected loc-x5-y6 loc-x5-y5)
 	(connected loc-x5-y6 loc-x5-y7)
 	(connected loc-x5-y7 loc-x4-y7)
 	(connected loc-x5-y7 loc-x6-y7)
 	(connected loc-x5-y7 loc-x5-y6)
 	(connected loc-x6-y0 loc-x5-y0)
 	(connected loc-x6-y0 loc-x7-y0)
 	(connected loc-x6-y0 loc-x6-y1)
 	(connected loc-x6-y1 loc-x5-y1)
 	(connected loc-x6-y1 loc-x7-y1)
 	(connected loc-x6-y1 loc-x6-y0)
 	(connected loc-x6-y1 loc-x6-y2)
 	(connected loc-x6-y2 loc-x5-y2)
 	(connected loc-x6-y2 loc-x7-y2)
 	(connected loc-x6-y2 loc-x6-y1)
 	(connected loc-x6-y2 loc-x6-y3)
 	(connected loc-x6-y3 loc-x5-y3)
 	(connected loc-x6-y3 loc-x7-y3)
 	(connected loc-x6-y3 loc-x6-y2)
 	(connected loc-x6-y3 loc-x6-y4)
 	(connected loc-x6-y4 loc-x5-y4)
 	(connected loc-x6-y4 loc-x7-y4)
 	(connected loc-x6-y4 loc-x6-y3)
 	(connected loc-x6-y4 loc-x6-y5)
 	(connected loc-x6-y5 loc-x5-y5)
 	(connected loc-x6-y5 loc-x7-y5)
 	(connected loc-x6-y5 loc-x6-y4)
 	(connected loc-x6-y5 loc-x6-y6)
 	(connected loc-x6-y6 loc-x5-y6)
 	(connected loc-x6-y6 loc-x7-y6)
 	(connected loc-x6-y6 loc-x6-y5)
 	(connected loc-x6-y6 loc-x6-y7)
 	(connected loc-x6-y7 loc-x5-y7)
 	(connected loc-x6-y7 loc-x7-y7)
 	(connected loc-x6-y7 loc-x6-y6)
 	(connected loc-x7-y0 loc-x6-y0)
 	(connected loc-x7-y0 loc-x7-y1)
 	(connected loc-x7-y1 loc-x6-y1)
 	(connected loc-x7-y1 loc-x7-y0)
 	(connected loc-x7-y1 loc-x7-y2)
 	(connected loc-x7-y2 loc-x6-y2)
 	(connected loc-x7-y2 loc-x7-y1)
 	(connected loc-x7-y2 loc-x7-y3)
 	(connected loc-x7-y3 loc-x6-y3)
 	(connected loc-x7-y3 loc-x7-y2)
 	(connected loc-x7-y3 loc-x7-y4)
 	(connected loc-x7-y4 loc-x6-y4)
 	(connected loc-x7-y4 loc-x7-y3)
 	(connected loc-x7-y4 loc-x7-y5)
 	(connected loc-x7-y5 loc-x6-y5)
 	(connected loc-x7-y5 loc-x7-y4)
 	(connected loc-x7-y5 loc-x7-y6)
 	(connected loc-x7-y6 loc-x6-y6)
 	(connected loc-x7-y6 loc-x7-y5)
 	(connected loc-x7-y6 loc-x7-y7)
 	(connected loc-x7-y7 loc-x6-y7)
 	(connected loc-x7-y7 loc-x7-y6)
 
)
(:goal
(and 
	(visited loc-x0-y0)
	(visited loc-x0-y1)
	(visited loc-x0-y2)
	(visited loc-x0-y3)
	(visited loc-x0-y4)
	(visited loc-x0-y5)
	(visited loc-x0-y6)
	(visited loc-x0-y7)
	(visited loc-x1-y0)
	(visited loc-x1-y1)
	(visited loc-x1-y2)
	(visited loc-x1-y3)
	(visited loc-x1-y4)
	(visited loc-x1-y5)
	(visited loc-x1-y6)
	(visited loc-x1-y7)
	(visited loc-x2-y0)
	(visited loc-x2-y1)
	(visited loc-x2-y2)
	(visited loc-x2-y3)
	(visited loc-x2-y4)
	(visited loc-x2-y5)
	(visited loc-x2-y6)
	(visited loc-x2-y7)
	(visited loc-x3-y0)
	(visited loc-x3-y1)
	(visited loc-x3-y2)
	(visited loc-x3-y3)
	(visited loc-x3-y4)
	(visited loc-x3-y5)
	(visited loc-x3-y6)
	(visited loc-x3-y7)
	(visited loc-x4-y0)
	(visited loc-x4-y1)
	(visited loc-x4-y2)
	(visited loc-x4-y3)
	(visited loc-x4-y4)
	(visited loc-x4-y5)
	(visited loc-x4-y6)
	(visited loc-x4-y7)
	(visited loc-x5-y0)
	(visited loc-x5-y1)
	(visited loc-x5-y2)
	(visited loc-x5-y3)
	(visited loc-x5-y4)
	(visited loc-x5-y5)
	(visited loc-x5-y6)
	(visited loc-x5-y7)
	(visited loc-x6-y0)
	(visited loc-x6-y1)
	(visited loc-x6-y2)
	(visited loc-x6-y3)
	(visited loc-x6-y4)
	(visited loc-x6-y5)
	(visited loc-x6-y6)
	(visited loc-x6-y7)
	(visited loc-x7-y0)
	(visited loc-x7-y1)
	(visited loc-x7-y2)
	(visited loc-x7-y3)
	(visited loc-x7-y4)
	(visited loc-x7-y5)
	(visited loc-x7-y6)
	(visited loc-x7-y7)
)
)
(:metric minimize (total-cost)))