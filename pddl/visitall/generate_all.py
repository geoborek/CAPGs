import glob
import subprocess as subp

tasks = glob.glob("problem[0-9][0-9]-*.pddl")

for t in tasks:
    print(t)
    cmd = ['python', 'visitall_gen.py', t]
    p1 = subp.Popen(cmd, stdout=subp.PIPE, stderr=subp.PIPE)
    out, err = p1.communicate()    
    print(out)
    print(err)
