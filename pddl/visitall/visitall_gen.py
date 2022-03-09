# Generator of patrol problem files from transport problem files

import os
import sys
import random

MIN = 1000      # min penalty
MAX = 10000     # max penalty
BASE_COST = "10"

# Global variables
problem_file = ""

connections = []
lines = []

def parse_file(filename):
  
    with open(filename, 'r') as fp:
        for line in fp:
            lines.append(line)
            line = line.strip()

            if line.startswith("(connected"):
                connections.append(line[len("(connected"):])   
    return 

def create_cost_actions(fp):
    fp.write("\t(= (total-cost) 0)\n")

    fp.write("\n; START - base costs\n")
    for connection in connections:
        fp.write("\t(= (base-move" + connection + " " + BASE_COST + ")\n")
    fp.write("; END - base costs\n")
    
    fp.write("\n; START - pure strategies\n")
    for connection in connections:
            r = random.randint(MIN, MAX)
            fp.write("\t(= (cost-move" + connection + " " + str(r) + ")\n")
    fp.write("; END - pure strategies\n\n")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python visitall_gen.py problem.pddl")
        sys.exit(1)

problem_file = sys.argv[1]

no_ext = os.path.splitext(problem_file)[0]
problem_name = "visitall-" + no_ext.split('/')[-1]
output_file = ''.join(no_ext.split('/')[:-1]) + problem_name + ".pddl" 

parse_file(problem_file)
# print(connections)

last_line = "(:metric minimize (total-cost)))"
lines[-1] = last_line

with open(output_file, 'w') as ofp:
    for l in lines:
        ofp.write(l)
        if l.strip().startswith("(:init"):
            create_cost_actions(ofp)

