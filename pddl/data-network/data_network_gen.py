# Generator of patrol problem files from transport problem files

import os
import sys
import random

MIN = 1000      # min penalty
MAX = 10000     # max penalty

# Global variables
problem_file = ""

process_costs = []
lines = []

def parse_file(filename):
  
    with open(filename, 'r') as fp:
        for line in fp:
            lines.append(line)
            line = line.strip()

            if line.startswith("(= (process-cost"):
                process_costs.append(line[len("(= (process-cost"):])   
    return 

def create_cost_actions(fp):
    fp.write("\n; START - base costs\n")
    for base_cost in process_costs:
        fp.write("  (= (base-process" + base_cost + "\n")
    fp.write("; END - base costs\n")
    
    fp.write("\n; START - pure strategies\n")
    for base_cost in process_costs:
        r = random.randint(MIN, MAX)
        parts = base_cost.split()
        fp.write("  (= (cost-process " + parts[0] + " " + parts[1] + " " + str(r) + ")\n")
    fp.write("; END - pure strategies\n\n")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python patrol_gen.py problem.pddl")
        sys.exit(1)

problem_file = sys.argv[1]

no_ext = os.path.splitext(problem_file)[0]
problem_name = "data-network-" + no_ext.split('/')[-1]
output_file = ''.join(no_ext.split('/')[:-1]) + problem_name + ".pddl" 

parse_file(problem_file)
# print(trucks)
# print(road_lengths)

lines = [ line for line in lines if not line.strip().startswith("(= (process-cost") ]

with open(output_file, 'w') as ofp:
    for l in lines:
        ofp.write(l)
        if l.strip().startswith("(:init"):
            create_cost_actions(ofp)

