import sys, os, shutil

if len(sys.argv) != 4: 
    print("python3 fof_tff_theorem.py category folder out_folder")
    exit(0)

category = sys.argv[1]
folder = sys.argv[2]
result_folder = sys.argv[3]
total = 0
out_folder = f"{result_folder}_{total // 170}"
os.makedirs(out_folder)
print(f"Create folder : {out_folder}")

for parent, dirnames, filenames in sorted(os.walk(folder)):
    print(parent)
    print(category)
    print(parent == category)
    print("============")
    if parent == category:
        for fn in filenames:
                print("Check file : "+fn)
                if fn.split(".")[-1].lower() == "p" and ("+" in fn or "_" in fn):
                    print("Right extension : "+fn)
                    with open(os.path.join(parent, fn), 'r+') as f:
                        content = f.read()
                        if "% Status   : Theorem" in content:
                            print("File is a theorem : "+fn)
                            if f"{result_folder}_{total // 170}" != out_folder :
                                out_folder = f"{result_folder}_{total // 170}"
                                os.makedirs(out_folder)
                            shutil.copy2(os.path.join(parent, fn), os.path.join(out_folder, fn))
                            total += 1
