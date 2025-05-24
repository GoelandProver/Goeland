import os
import sys
import re
from subprocess import PIPE, run

def Out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return (result.stdout, result.stderr)

def sanitize(s):
    return s.encode('utf-8', errors='ignore').decode(errors='ignore')

def LaunchTest(command_line, filename, success):
    print(f"Launching: {command_line}")
    output, err = Out(command_line)

    if re.search(success, sanitize(output)):
        print(f"Error: found proof for file {filename}. Goéland is unsound.")
        exit(1)
    elif re.search ("panic", sanitize(err)):
        print(f"Error: panic encountered during proof-search of {filename}.")
        exit(1)

if len(sys.argv) < 3:
    print(f"python3 {sys.argv[0]} problem_folder timeout [additional arguments]")
else:
    folder = sys.argv[1]
    folder_split = folder.split("/")
    folder += "/"

    entries = os.listdir(folder)
    timeout = sys.argv[2]
    additionalArgs = " ".join(sys.argv[3:])
    for index, file in enumerate(entries):
        print(f"Problem {index+1}/{len(entries)} : {folder+file}")
        LaunchTest("timeout "+timeout+" ../src/_build/goeland " + additionalArgs + " " +folder+file, file, "% RES : VALID")
