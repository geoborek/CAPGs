import glob
import subprocess as subp

tasks = glob.glob("p[0-9][0-9].pddl")

for t in tasks:
    for i in range(6,24,6):
        print(t, i)
        cmd = ['python', 'patrol_gen.py', t, str(i)]
        p1 = subp.Popen(cmd, stdout=subp.PIPE, stderr=subp.PIPE)
        out, err = p1.communicate()    
        print(out)
        print(err)

