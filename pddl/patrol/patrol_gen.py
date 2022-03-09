# Generator of patrol problem files from transport problem files

import os
import sys
import random

MIN = 1000      # min penalty
MAX = 10000     # max penalty

# Global variables
problem_file = ""

locations = []
roads = []
road_lengths = []

max_steps = 10 # default value

def parse_file(filename):
  
    with open(filename, 'r') as fp:
        parsing_objects = False

        for line in fp:
            line = line.strip()
            if line.startswith("(:objects"):
                parsing_objects = True
            if parsing_objects and line.startswith(")"):
                parsing_objects = False
            
            if parsing_objects:
                parts = line.strip().split()
                if parts[-1] == "location":
                    locations.append(parts[0])

            if line.startswith("(road"):
                roads.append(line)    

            if line.startswith("(= (road-length"):
                road_lengths.append(line)   
    return 

def create_head(fp, problem_name):
    fp.write("(define (problem " + problem_name + ")\n")
    fp.write(" (:domain patrol2)\n")
    return

def create_objects(fp):
    fp.write(" (:objects\n")

    for l in locations:
        fp.write("  " + l + " - location\n")

    for i in range(0, max_steps+1):
        fp.write("  n" + str(i) + " - num\n")

    fp.write(" )\n")

def create_init(fp):
    fp.write(" (:init\n")
    fp.write(" (= (total-cost) 0)\n")
    
    for i in range(0,max_steps):
        fp.write("  (succesor n" + str(i) + " n" + str(i+1) + ")\n")

    # fp.write("  (count n0)\n")
    fp.write("  (max-steps n" + str(max_steps) + ")\n")

    for r in roads:
        fp.write("  " + r + "\n")

    for l in road_lengths:
        fp.write("  " + l + "\n")

    fp.write("  (visited " + locations[0] + ")\n")
    # for l in locations[1:]:
    #     fp.write("  (unvisited " + l + ")\n")

    for i in range(0,len(locations)-1):
        fp.write("  (next " + locations[i] + " " + locations[i+1] + ")\n")

    fp.write("  (origin " + locations[0] + ")\n")
    fp.write("  (last " + locations[-1] + ")\n")
    fp.write("  (at " + locations[0] + ")\n")
    # fp.write("  (patrolling)\n")
    # fp.write("  (planning)\n")

    fp.write("\n; START - pure strategies\n")
    for l in locations:
        r = random.randint(MIN, MAX)
        fp.write("  (= (cost-check-unvisited-location " + l + ") " + str(r) + ")\n")
    fp.write("; END - pure strategies\n")

    fp.write(" )\n")

def create_goal(fp):
    fp.write(" (:goal (and\n")
    fp.write("  (goal)\n ))\n")
    fp.write(" (:metric minimize (total-cost))\n")
    fp.write(")\n")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python patrol_gen.py problem.pddl")
        print("Usage: python patrol_gen.py problem.pddl max-steps")
        sys.exit(1)

problem_file = sys.argv[1]
if len(sys.argv) > 2:
    max_steps = int(sys.argv[2])

no_ext = os.path.splitext(problem_file)[0]
problem_name = "patrol-" + str(max_steps) + "-" + no_ext.split('/')[-1]
output_file = ''.join(no_ext.split('/')[:-1]) + problem_name + ".pddl" 

parse_file(problem_file)
# print(locations)
# print(roads)
# print(road_lengths)

with open(output_file, 'w') as ofp:

    create_head(ofp, problem_name)
    create_objects(ofp)
    create_init(ofp)
    create_goal(ofp)