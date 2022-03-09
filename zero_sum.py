import cplex
from cplex.exceptions import CplexError
import sys
import math
import numpy as np

def populatebynonzero(prob, m):
    my_obj      = [0]*len(m[0]) + [1]
    my_ub       = [cplex.infinity]*(len(m[0]) + 1)
    my_lb       = [0]*len(m[0]) + [-cplex.infinity]
    my_rhs      = [0]*len(m) + [1]
    my_sense    = "L"*len(m) + "E"
    
    prob.objective.set_sense(prob.objective.sense.minimize)
    
    prob.linear_constraints.add(rhs = my_rhs, senses = my_sense)
    prob.variables.add(obj = my_obj, lb = my_lb, ub = my_ub)
    
    
    for i, row in enumerate(m):
        for j, v in enumerate(row):
            prob.linear_constraints.set_coefficients(i, j, v) 
        
        prob.linear_constraints.set_coefficients(i, len(m[0]), -1)

    for j in range(0, len(m[0])):
        prob.linear_constraints.set_coefficients(len(m), j, 1)

def solve_game(m):
    try:
        my_prob = cplex.Cplex()        

        # no output
        my_prob.set_log_stream(None)
        my_prob.set_error_stream(None)
        my_prob.set_warning_stream(None)
        my_prob.set_results_stream(None)

        handle = populatebynonzero(my_prob, m)
        my_prob.solve()
    except CplexError, exc:
        print exc
        return

    numrows = my_prob.linear_constraints.get_num()
    numcols = my_prob.variables.get_num()

    # print
    # solution.get_status() returns an integer code
    # print "Solution status = " , my_prob.solution.get_status(), ":",
    # the following line prints the corresponding string
    # print my_prob.solution.status[my_prob.solution.get_status()]
    val = my_prob.solution.get_objective_value()
    # print "Solution value  = ", val
    slack = my_prob.solution.get_linear_slacks()
    pi    = my_prob.solution.get_dual_values()
    x     = my_prob.solution.get_values()
    dj    = my_prob.solution.get_reduced_costs()
    # for i in range(numrows):
    #     print "Row %d:  Slack = %10f  Pi = %10f" % (i, slack[i], pi[i])
    # for j in range(numcols):
    #     print "Column %d:  Value = %10f Reduced cost = %10f" % (j, x[j], dj[j])

    row_strategy = [ -v for v in pi[:-1] ]
    col_strategy = x[:-1]
    return [-val, row_strategy, col_strategy]

if __name__ == "__main__":
    # Rock, Scissor, Paper
    #m = [[0, -1, 1], [1, 0, -1], [-1, 1, 0]]

    m = [[30, -10, 20], [-10, 20, -20]]

    #m = [[-1, 0, -1], [2, 1, 2], [-1, 0, -1]]
    # row player is maximizing
    # col player is minimizing
    print solve_game(m)