# Adversarial Planning Games
# Double Oracle Algorithm 
# version: 2.0

import os
import sys
import subprocess as subp
import time
import zero_sum as game
import pprint as pp

# Constants
EP = 2
START = "; START - pure strategies"
END = "; END - pure strategies"
START_BASE = "; START - base costs"
END_BASE = "; END - base costs"
MAX_COST = 2**20
MEM_LIMIT = "4G"
SEARCH = "astar(ipdb())"
# "astar(all_states_potential(max_potential=1e8, lpsolver=CPLEX, transform=no_transform(), cache_estimates=true))" 
# "astar(lmcut())" 
# "astar(ipdb())"


# Global variables
domain_file = ""
problem_file = ""
path_to_FD = ""
log_file = ""
logging = False
start_time = 0

plans = []
costs = {}
cost_pure_strags = {} # dictionary with adversary actions (pure strategies)
cost_pure_base = {} # dictionary with base costs of adversary actions
num_pars = 0  # number of important parameters in adversary actions
k = 0  # current iteration

def extract_action_cost(line):
    line = line.split(None, 1)[1] # remove "(= "
    parts = line.split(')')
    action = parts[0][1:]
    cost = int(parts[1].strip()) # remove the last parenthesis
    return action, cost

# parses cost pure strategies
def parse_input(filename):
    cost_pure_strags = {}
    cost_pure_base = {}
    base = {}
    with open(filename, 'r') as fp:
        
        parsing = False
        parsing_base = False

        for line in fp:
            line = line.strip()

            if line == END:
                parsing = False

            if parsing and line.startswith("(="):
                action, cost = extract_action_cost(line)
                action = action.split('-',1)[1] # remove 'cost-' suffix
                cost_pure_strags[action] = cost

            if line == START:
                parsing = True

            if line == END_BASE:
                parsing_base = False

            if parsing_base and line.startswith("(="):
                (action, cost) = extract_action_cost(line)
                action = action.split('-',1)[1]  # remove 'base-' prefix
                base[action] = cost

            if line == START_BASE:
                parsing_base = True

    cost_pure_base = { cost_action:0 for cost_action in cost_pure_strags.keys() }

    if bool(base):
        action_base = next(iter(base))
        num_base_pars = len(action_base.split())

        for cost_action in cost_pure_strags:
            parts = cost_action.split()
            action_base = ' '.join(parts[:num_base_pars])
            if action_base in base.keys():
                cost_pure_base[cost_action] = base[action_base]
            else:
                cost_pure_base[cost_action] = 0

    return cost_pure_strags, cost_pure_base

# creates a modified problem file based on cost mixed strategy
def create_problem_file(filename, ofilename, cost_mixed_strag):
    with open(filename, 'r') as fp, open(ofilename, 'w') as ofp:
        parsing = False

        for line in fp:
            if line.startswith(END):
                parsing = False

            if parsing and line.strip().startswith("(="):
                action, cost = extract_action_cost(line)
                action = action.split('-',1)[1] # remove 'cost-' suffix
                if action in cost_mixed_strag.keys():
                    new_cost = int(cost_pure_strags[action] * cost_mixed_strag[action] + cost_pure_base[action]) # cost * probability
                    line = "(= (cost-" + action + ") " + str(new_cost) + ")\n" 
                else:
                    line = "(= (cost-" + action + ") " + str(cost_pure_base[action]) + ")\n"

            if line.startswith(START):
                parsing = True
            
            ofp.write(line)
    return

def extract_plan(proc):
    plan = []
    parsing_plan = False
    exit_code = 0

    while True:
        line = proc.stdout.readline()
        if not line:
            break
        # print line
        if line.startswith('Plan length:'):
            parsing_plan = False
        if parsing_plan:
            parts = line.split("(")
            action = parts[0].strip() 
            plan.append( (action, int(parts[1][:-2])) )
        if line.startswith('Actual search time:'):
            parsing_plan = True
        # if line.startswith('Plan cost:'):
        #     print(line)
        #     cost = int(line.split()[2])
        if line.startswith('search exit code:') or line.startswith('translate exit code:'):
            exit_code = int(line.split()[3])
        
        if exit_code != 0:
            print("exit code: %d" % exit_code)
            if logging:
                log(None, k, None, None, [], {}, False, exit_code)
            sys.exit(exit_code)
    
    return plan

def get_best_response_plan(cost_mixed_strategy):
    prefix = os.path.splitext(problem_file)[0]
    mod_problem_file = prefix + "_" + str(k+1) + ".pddl"
    sas_file = prefix + ".sas"
    plan_file = prefix + "_" + str(k+1) + ".plan"
    create_problem_file(problem_file, mod_problem_file, cost_mixed_strategy)

    translate_cmd = [path_to_FD + 'fast-downward.py', '--search-memory-limit', MEM_LIMIT, 
                     '--sas-file', sas_file, '--plan-file', plan_file,
                     domain_file, mod_problem_file, '--search',  SEARCH]
    # print(translate_cmd)

    p1 = subp.Popen(translate_cmd, stdout=subp.PIPE, stderr=subp.PIPE)
    # out, err = p1.communicate()
    # print(out)
    # print(err)
    # sys.stderr.write(err)

    # if proc.returncode != 0:
    #     print(proc.returncode)    
    #     sys.exit(proc.returncode)

    plan = extract_plan(p1)
    cost = compute_plan_cost(plan, cost_mixed_strategy)

    os.remove(sas_file)
    if logging:
        path, task_name_ext = os.path.split(mod_problem_file)
        os.rename(mod_problem_file, log_dir + task_name_ext)
        path, task_name_ext = os.path.split(plan_file)
        os.rename(plan_file, log_dir + task_name_ext)
    else:
        os.remove(mod_problem_file)
        os.remove(plan_file)
    return plan, cost

# compute the cost of plan if cost player plays cost_action
def compute_plan_cost(plan, cost_mixed_strategy):
    c = 0
    for action in plan:
        action_relevant = ' '.join(action[0].split()[:num_pars])
        if action_relevant in cost_pure_strags.keys():   # is it an action of the cost player?
            if action_relevant in cost_mixed_strategy.keys():  # is it played by the cost player?
                # if yes, add its cost; otherwise the cost is the base one
                c += cost_mixed_strategy[ action_relevant ] * cost_pure_strags[ action_relevant ] + cost_pure_base[ action_relevant ]      
            else:
                c += cost_pure_base[ action_relevant ]            
        else:
            c += action[1]  # actions which can't be modified by the cost player
    return c

def get_best_response_cost(plan_mixed_strategy):
    best_cost_action = next(iter(cost_pure_strags))
    if len(plan_mixed_strategy) == 0:
        return best_cost_action, MAX_COST
    else:
        upper_bound = 0
        for cost_action in cost_pure_strags:
            c = 0
            for j, plan in enumerate(plans):
                c += plan_mixed_strategy[j] * compute_plan_cost(plan, {cost_action: 1})
            if c > upper_bound:
                upper_bound = c
                best_cost_action = cost_action       

        return best_cost_action, upper_bound

def is_plan_old(plan):
    out = False
    for p in plans:
        out = True
        for i, action in enumerate(plan):
            if action[0] != p[i][0]:
                out = False
                break
        if out:
            break
    return out

def log(val, iters, ub, lb, plan_mixed_strategy, cost_mixed_strategy, done, exit_code):
    with open(log_file, 'a') as fp:
        t = time.time()
        supp1 = len([p for p in plan_mixed_strategy if p >= 0.001])
        supp2 = len([p for p in cost_mixed_strategy.items() if p >= 0.001])
        domain = os.path.split(domain_file)[1]
        task = os.path.split(problem_file)[1]
        items = [domain, task, str(val), str(iters), str(ub), str(lb), str(supp1), str(supp2), str(t-start_time), str(done), str(exit_code)]
        fp.write('|'.join(items) + "\n")

def find_equilibrium():
    cost_support = []
    cost_mixed_strategy = {}

    # cost_support = cost_pure_strags.keys()
    # cost_mixed_strategy = { cost_action:0 for (cost_action, val) in cost_pure_strags.items() }

    plan_mixed_strategy = []         # contains probability distribution over plans
    matrix = []
    upper_bound = MAX_COST
    lower_bound = 0
    val = MAX_COST

    while upper_bound-lower_bound > EP:

        global k
        if logging:
            log(val,k,upper_bound,lower_bound,plan_mixed_strategy,cost_mixed_strategy, False, 0)

        best_cost_action, upper_bound = get_best_response_cost(plan_mixed_strategy)
        print("Best cost response: " + best_cost_action)    

        plan, lower_bound = get_best_response_plan(cost_mixed_strategy)
        pp.pprint(plan)

        print("Upper bound - lower bound = " + str(upper_bound) + " - " + str(lower_bound))

        old_plan = is_plan_old(plan)
        if old_plan and best_cost_action in cost_support:
            print("Old plan and cost found")
            k += 1
            break

        if not old_plan:
            plans.append(plan)
            new_row = []
            for cost_action in cost_support:
                new_row.append(-compute_plan_cost(plan, {cost_action: 1}))
            matrix.append(new_row)
        
        if best_cost_action not in cost_support:
            cost_mixed_strategy[best_cost_action] = 0
            cost_support.append(best_cost_action)
            for i in range(0, len(plans)):
                matrix[i].append(-compute_plan_cost(plans[i], {best_cost_action: 1}))

        # print(cost_mixed_strategy)
        # print(matrix)
        # print(cost_support)
        [val, plan_mixed_strategy, column_strategy] = game.solve_game(matrix)
        for i, probability in enumerate(column_strategy):
            cost_mixed_strategy[cost_support[i]] = probability #+ 0.01
        # s = sum(cost_mixed_strategy.values())
        # for cost_action in cost_mixed_strategy:
        #     cost_mixed_strategy[cost_action] /= s
        print("Value: " + str(val))
        print(plan_mixed_strategy)
        print("Current mixed cost strategy:")
        print(cost_mixed_strategy)
    
        k += 1
        print("End of iteration: " + str(k) + "\n")

    if logging:
        log(val,k,upper_bound,lower_bound,plan_mixed_strategy,cost_mixed_strategy, True, 0)

    return plan_mixed_strategy, cost_mixed_strategy

def report(plan_mixed_strategy, cost_mixed_strategy):
    for cost_action in cost_mixed_strategy:
        if cost_mixed_strategy[cost_action] > 0:
            print(cost_action + ": " + str(cost_mixed_strategy[cost_action]))

    for i, plan in enumerate(plans):
        if plan_mixed_strategy[i] > 0:
            print("Plan's probability: " + str(plan_mixed_strategy[i]))
            pp.pprint(plan)
    
if __name__ == "__main__":
    if len(sys.argv) < 4:
        print("Usage: python double_oracle_2.0.py domain.pddl problem.pddl path_to_fast_downward")
        print("Usage: python double_oracle_2.0.py domain.pddl problem.pddl path_to_fast_downward log_dir")
        sys.exit(1)

    domain_file = sys.argv[1]
    problem_file = sys.argv[2]
    path_to_FD = sys.argv[3]

    if len(sys.argv) > 4:
        logging = True
        log_dir = sys.argv[4]
        path, task_name_ext = os.path.split(problem_file)
        task_name, ext = os.path.splitext(task_name_ext)
        log_file = log_dir + "log-" + task_name + ".log"

    if logging:
        with open(log_file, 'a') as fp:
            items = ["domain", "task", "value", "iteration", "upper_bound", "lower_bound", "size_support1", "size_support2", "time", "done", "exit_code"]
            fp.write('|'.join(items) + "\n")

    cost_pure_strags, cost_pure_base = parse_input(problem_file)
    cost_action = next(iter(cost_pure_strags))
    num_pars = len(cost_action.split())

    # print(cost_pure_strags)
    # print(num_pars)
    # print(cost_pure_base)

    start_time = time.time()

    plan_mixed_strategy, cost_mixed_strategy = find_equilibrium()
    
    end_time = time.time()

    report(plan_mixed_strategy, cost_mixed_strategy)
    print("Elapsed time: " + str(end_time-start_time) + " sec")

