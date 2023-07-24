import sys, os

if len(sys.argv) != 4 :
    print(f"Usage: {sys.argv[0]} file1 file2 outfile")

res = {}
with open(sys.argv[1], "r") as f :
    for line in f.readlines() :
        [name, count] = line.strip().split(';')
        res[name] = [count]

with open(sys.argv[2], "r") as f :
    for line in f.readlines() :
        [name, count] = line.strip().split(';')
        if name in res :
            res[name].append(count)
        else :
            res[name] = ["0", count]

with open(sys.argv[3], "w") as f :
    for key, value in res.items() :
        f.write(key + ";" + ";".join(value) + "\n")