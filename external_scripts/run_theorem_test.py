import os
import sys
import re
from subprocess import PIPE, run

def Out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return result.stdout

def LaunchTest(prover_name, command_line, succes, memory_limit=None, failure=None):
        output = Out(command_line).encode('utf-8', errors='ignore').decode(errors='ignore')
        res = False

        if re.search(succes, output):
            print(f"Found proof. Good job, {prover_name} !")
            res = True
        else:
            print("Proof not found")
        
        return res

if len(sys.argv) != 3: 
    print(f"python3 {sys.argv[0]} problem_folder timeout")
else:
    folder = sys.argv[1]
    folder_split = folder.split("/")
    folder += "/"
   
    entries = os.listdir(folder)
    timeout = sys.argv[2]

    cpt = 0
    total = len(entries) # TODO

    for index, file in enumerate(entries):
        print(f"Problem {index+1}/{len(entries)} : {folder+file}")
        if LaunchTest("Goéland", "timeout "+timeout+" src/_build/goeland "+folder+file, "% RES : VALID", None, "% RES : NOT VALID"):
            cpt+=1

    print(f"Number of problems solved : {cpt}/{total}")
