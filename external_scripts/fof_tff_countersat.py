import sys, os, shutil

if len(sys.argv) != 3: 
    print("python3 fof_tff_countersat.py folder out_folder")
    exit(0)

folder = sys.argv[1]
total = 0
out_folder = f"{sys.argv[2]}_{total // 170}"
os.makedirs(out_folder)
print(f"Create folder : {out_folder}")

for parent, dirnames, filenames in sorted(os.walk(folder)): 
    for fn in filenames:
            if fn.split(".")[-1].lower() == "p" and ("+" in fn or "_" in fn):
                with open(os.path.join(parent, fn), 'r+') as f:
                    content = f.read()
                    if ("% Status   : CounterSatisfiable" in content or \
                        "% Status   : Satisfiable" in content) and \
                        len(content.split('\n')) <= 1000 :
                        if f"{sys.argv[2]}_{total // 170}" != out_folder :
                            out_folder = f"{sys.argv[2]}_{total // 170}"
                            os.makedirs(out_folder)
                        shutil.copy2(os.path.join(parent, fn), os.path.join(out_folder, fn))
                        total += 1