import sys
import os
import shutil

if not (5 <= len(sys.argv) <= 7):
    print(f"Usage: python3 {sys.argv[0]} [-thm | -cs] [-fof | -tff | -all] [-rating n] input_folder output_folder")
    exit(1)

status_filter = sys.argv[1]
mode = sys.argv[2]
rating = None

if len(sys.argv) == 5:
    input_folder = sys.argv[3]
    output_root = sys.argv[4]
else:
    rating = sys.argv[4]
    input_folder = sys.argv[5]
    output_root = sys.argv[6]

if mode not in ['-fof', '-tff', '-all']:
    print("Error: Mode must be one of -fof, -tff, or -all")
    exit(1)

if status_filter not in ['-thm', '-cs']:
    print("Error: Status filter must be either -thm (Theorem) or -cs (CounterSatisfiable)")
    exit(1)

def is_fof_file(filename):
    return '+1.' in filename and filename.endswith('.p')

def is_tff_file(filename):
    return '_1.' in filename and filename.endswith('.p')

def should_process(filename):
    if mode == '-fof':
        return is_fof_file(filename)
    elif mode == '-tff':
        return is_tff_file(filename)
    elif mode == '-all':
        return is_fof_file(filename) or is_tff_file(filename)
    return False

status_string = "% Status   : Theorem" if status_filter == '-thm' else "% Status   : CounterSatisfiable"
if rating:
    rating = f"% Rating   : {rating}"

total = 0

for parent, _, filenames in os.walk(input_folder):
    for fn in filenames:
        if should_process(fn):
            full_path = os.path.join(parent, fn)
            try:
                with open(full_path, 'r', encoding='utf-8') as f:
                    content = f.read()
                    if rating and rating not in content: continue
                    if status_string in content:
                        relative_path = os.path.relpath(full_path, input_folder)
                        relative_dir = os.path.dirname(relative_path)
                        output_dir = os.path.join(output_root, relative_dir)
                        os.makedirs(output_dir, exist_ok=True)
                        shutil.copy2(full_path, os.path.join(output_dir, fn))
                        total += 1
            except Exception as e:
                print(f"Failed to process {full_path}: {e}")

print(f"Total files with status '{status_string}' found and copied: {total}")
