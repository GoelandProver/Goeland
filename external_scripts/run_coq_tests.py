import os
import sys
import re
from subprocess import PIPE, run

def Out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return result.stdout

def LaunchTest(prover_name, command_line, success, file, outdir, memory_limit=None, failure=None):
    output = Out(command_line).encode('utf-8', errors='ignore').decode(errors='ignore')
    res = False

    if re.search(success, output):
        print(f"Found proof. Good job, {prover_name} !")
        res = True
        file = file[:-1] + "v"
        file = file.replace("+", "_")
        # TODO: get the output in a proof file + outdir
        with open(outdir + "/" + file, "w") as f:
            write = False
            for line in output.split("\n") :
                if "% SZS output end Proof" in line :
                    write = False
                if write :
                    f.write(line + "\n")
                if "% SZS output start Proof" in line :
                    write = True
        # TODO: automatically check coq file and output if there is a proof or not.
    else:
        print("Proof not found")
    
    return res

if len(sys.argv) < 4: 
    print(f"python3 {sys.argv[0]} problem_folder timeout outdir goeland_options")

else:
    folder = sys.argv[1]
    folder_split = folder.split("/")
    folder += "/"
   
    entries = os.listdir(folder)
    timeout = sys.argv[2]
    outdir  = sys.argv[3]

    cpt = 0
    total = len(entries)

    errors = []

    for index, file in enumerate(entries):
        print(f"Problem {index+1}/{len(entries)} : {folder+file}")
        if LaunchTest("Goéland", "timeout "+timeout+" src/_build/goeland -ocoq -context " + " ".join(sys.argv[4:]) + " " +folder+file, "% RES : VALID", file, outdir, None, "% RES : NOT VALID"):
            cpt+=1
        else :
            errors.append(file)

    print(f"Number of problems solved : {cpt}/{total}")
    print(f"Errors : {sorted(errors)}")