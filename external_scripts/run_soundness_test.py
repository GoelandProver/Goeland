import os
import sys
import re
from subprocess import PIPE, run

def Out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return result.stdout

def LaunchTest(prover_name, command_line, succes, memory_limit=None, failure=None):
        output = Out(command_line).encode('utf-8', errors='ignore').decode(errors='ignore')

        if re.search(succes, output):
            print(f"Found proof. {prover_name} is unsound.")
            exit(1)
        
        print("OK")

if len(sys.argv) != 3: 
    print("python3 run_tests.py problem_folder timeout")
else:
    folder = sys.argv[1]
    folder_split = folder.split("/")
   
    entries = os.listdir(folder)
    timeout = sys.argv[2]
    for index, file in enumerate(entries):
        print("Problem %s/%s : %s" %(index+1, len(entries), file))
        LaunchTest("Goéland", "timeout "+timeout+" ../src/_build/goeland "+folder+file, "VALID", None, "NOT VALID")

