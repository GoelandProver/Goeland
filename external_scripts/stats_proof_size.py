import sys, os

if len(sys.argv) != 3:
    print(f"Usage: {sys.argv[0]} folder outfile")

folder = sys.argv[1]
outfile = sys.argv[2]

entries = os.listdir(folder)

res = []
for _, file in enumerate(entries) :
    if file.endswith(".v") :
        with open(os.path.join(folder, file), "r") as f :
            count = 0
            for line in f.readlines() :
                if "auto." in line or "congruence." in line or "CLOSURE" in line :
                    count += 1
            res.append((file, count))

with open(outfile, "w") as f :
    for file, count in sorted(res) :
        f.write(f"{file};{count}\n")