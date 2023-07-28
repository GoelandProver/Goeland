import sys, os, collections

if len(sys.argv) != 3:
    print(f"Usage: {sys.argv[0]} folder outfile")

class Branches:
    def __init__(self):
        self.coq = -1
        self.prf = -1

    def __str__(self):
        s = ""
        if self.prf != -1:
            s += str(self.prf)
        s += ";"
        if self.coq != -1:
            s += str(self.coq)
        return s + "\n"

folder = sys.argv[1]
outfile = sys.argv[2]

entries = os.listdir(folder)

res = collections.defaultdict(lambda: Branches())
for _, file in enumerate(entries) :
    if file.endswith(".v") or file.endswith(".proof") :
        k = file[:file.find(".")]
        with open(os.path.join(folder, file), "r") as f :
            count = 0
            for line in f.readlines() :
                if "auto." in line or "congruence." in line or "CLOSURE" in line :
                    count += 1
            if file.endswith(".v") :
                res[k].coq = count
            else :
                res[k].prf = count

with open(outfile, "w") as f :
    f.write(";Proof;Coq\n")
    for file, c in res.items() :
        f.write(f"{file};{str(c)}")