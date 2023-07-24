import os, sys, shutil

if len(sys.argv) != 3 :
    print(f"Usage: {sys.argv[0]} problemFolder targetFolder")
    exit(0)

problemFolder = sys.argv[1]
targetFolder = sys.argv[2]

os.mkdir(targetFolder)

with open("select.txt", "r") as f :
    lines = f.read().split("\n")
    for line in lines :
        if len(line) > 0 :
            shutil.copyfile(os.path.join(problemFolder, line + ".p"), os.path.join(targetFolder, line + ".p"))
            print(f"Copied file {line}.p")