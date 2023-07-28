import os
import sys
import re
from subprocess import PIPE, run

def Out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return result.stdout

def LaunchTest(prover_name, command_line, iscoq, success, file, outdir, memory_limit=None, failure=None):
    output = Out(command_line).encode('utf-8', errors='ignore').decode(errors='ignore')
    res = 0

    if re.search(success, output):
        print(f"Found proof. Good job, {prover_name} !")
        res = 1
        file = file[:-2]
        file = file.replace("+", "_").replace(".", "_")
        lines = []
        with open(outdir + "/" + file + ".proof", "w") as f:
            write = False
            for i, line in enumerate(output.split("\n")) :
                if "% Start Coq proof." in line :
                    write = False
                    lines = output.split("\n")[i+1:]
                if write :
                    f.write(line + "\n")
                if "% SZS output start Proof" in line :
                    write = True
        write = True
        with open(outdir + "/" + file + ".v", "w") as f :
            for line in lines :
                if "% SZS output" in line :
                    write = False
                if write :
                    f.write(line + "\n")
        if iscoq:
            coq_output = run(f"coqc -vok {outdir}/{file}.v", stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8').stderr
            if "Error" in coq_output:
                print("A proof has been output but it's not a valid coq proof.")
                res = 2
    else:
        print("Proof not found")
    
    return res

if len(sys.argv) < 4: 
    print(f"python3 {sys.argv[0]} exec problem_folder timeout outdir coq goeland_options")

else:
    exe = sys.argv[1]
    folder = sys.argv[2]
    folder_split = folder.split("/")
    folder += "/"
   
    entries = os.listdir(folder)
    timeout = sys.argv[3]
    outdir  = sys.argv[4]

    opt = int(sys.argv[5])
    iscoq = False
    compare = False
    proofOptions = ""
    if opt > 0 :
        iscoq = True
        proofOptions = "-ocoq -context"
        if opt == 2:
            proofOptions += " -compare"
    else :
        proofOptions = "-proof -pretty"

    args = ""
    if len(sys.argv) > 6:
        args = " ".join(sys.argv[6:])

    cpt = 0
    total = len(entries)

    errors = []
    unproved = []

    for index, file in enumerate(entries):
        print(f"Problem {index+1}/{len(entries)} : {folder+file}")
        res = LaunchTest(
            "Goéland", 
            f"timeout {timeout} {exe} {proofOptions} {args} {folder+file}", 
            iscoq, 
            "% RES : VALID", 
            file, 
            outdir, 
            None, 
            "% RES : NOT VALID",
        )
        if res == 0:
            errors.append(file)
        if res == 2 :
            unproved.append(file)
        cpt+=int(res>0)

    print(f"Number of problems solved: {cpt}/{total}")
    print(f"Errors: {sorted(errors)}")
    print(f"Not properly proved: {sorted(unproved)} ({len(unproved)}/{cpt})")