import os, sys
from prettytable import PrettyTable

errors = []
timings = []
problems_solved = 0
total_problems = 0
total_new_time = 0
total_old_time = 0
diff = 0

for folder in sys.argv[1:]:
    error_file = f"{folder}/errors.txt"
    timings_file = f"{folder}/timings.txt"

    if os.path.isfile(error_file):
        errors += [line.strip() for line in open(error_file).readlines()]

    if os.path.isfile(timings_file):
        with open(timings_file) as f:
            for line in f.readlines():
                split_line = line.strip().split(",")
                if len(split_line) == 5:
                    total_problems += 1
                    try:
                        new_time = float(split_line[2])
                        old_time = float(split_line[3])
                        diff += int(split_line[1])
                        if new_time != old_time:
                            total_new_time += new_time
                            total_old_time += old_time
                            problems_solved += 1
                        timings.append({"problem": split_line[0], "new_time": new_time, "old_time": old_time, "diff": split_line[4]})
                    except ValueError:
                        timings.append({"problem": split_line[0], "new_time": "error", "old_time": "error", "diff": split_line[4]})

t = PrettyTable(["Problem", "New time", "Old time", "Difference (in %)"])
for timing in timings:
    t.add_row([timing["problem"], f"{timing['new_time']}s", f"{timing['old_time']}s", timing["diff"]])

print("Benchs are finished.")
print("Result:")
print(f"* Problems solved: {problems_solved}/{total_problems} ({diff})")
print(f"* Average time: {total_new_time}s ({total_new_time/total_old_time - 1}%)")
print("""<details>
  <summary>Detailed result table</summary>""")
print("```")
print(t)
print("```")
print("</details>")

print("""<details>
  <summary>Errors encountered</summary>""")
for error in errors:
    print(f"* {error}")
print("</details>")
