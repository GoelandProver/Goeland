import sys, os, shutil

if len(sys.argv) != 4: 
    print("python3 fof_tff_theorem.py category folder out_folder")
    exit(0)

category = sys.argv[1]
folder = sys.argv[2]
total = 0
out_folder = f"{sys.argv[3]}_{total // 170}"
os.makedirs(out_folder)

for parent, dirnames, filenames in os.walk(folder): 
    if dirnames == category:
        for fn in filenames:
                if fn.split(".")[-1].lower() == "p" and ("+" in fn or "_" in fn):
                    with open(os.path.join(parent, fn), 'r+') as f:
                        content = f.read()
                        if "% Status   : Theorem" in content:
                            if f"{sys.argv[2]}_{total // 170}" != out_folder :
                                out_folder = f"{sys.argv[2]}_{total // 170}"
                                os.makedirs(out_folder)
                            shutil.copy2(os.path.join(parent, fn), os.path.join(out_folder, fn))
                            total += 1