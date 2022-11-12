import os
import sys
import re
import time
import math
from datetime import datetime
from subprocess import PIPE, run

def Out(command):
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return result.stdout

def truncate(number, decimals=0):
    """
    Returns a value truncated to a specific number of decimal places.
    """
    if not isinstance(decimals, int):
        raise TypeError("decimal places must be an integer.")
    elif decimals < 0:
        raise ValueError("decimal places has to be 0 or more.")
    elif decimals == 0:
        return math.trunc(number)

    factor = 10.0 ** decimals
    return math.trunc(number * factor) / factor

def TimeToString(start, end):
    return str(truncate(end-start, 5))

def LaunchTest(prover_name, command_line, succes, memory_limit=None, failure=None):
        print(prover_name)
        start = time.time()

        try:
            output = Out(command_line).encode('utf-8', errors='ignore').decode(errors='ignore')
            end = time.time()
            f.write(TimeToString(start,end))
            f.write(";")
            print(output)

            if (end-start)>(float(timeout)-1):
                f.write("Timeout")
            elif (memory_limit != None) and re.search(memory_limit, output):
                f.write("Memory limit")
            elif (failure != None) and re.search(failure, output):
                f.write("No proof") 
            elif re.search(succes, output):
                f.write("Proof")
            else:
                f.write("Unknown")
        except:
            end = time.time()
            f.write(TimeToString(start,end))
            f.write(";")
            f.write("Error")

        f.write(";")

        rating = re.search("\[Res\] ([0-9]+) goroutines created", output)
        print(rating)
        if rating != None:
            f.write(str(rating.group(1)))
        f.write(";")


        print("--------------------------------------------------")

if len(sys.argv) != 5: 
    print("python3 run_tests problem_folder output_foler timeout nb_core_max")
else:
    nb_core_max = sys.argv[4]
    folder = sys.argv[1]
    folder_split = folder.split("/")
    today = datetime.today()
    now = datetime.now()
    current_day = today.strftime("%b-%d-%Y")
    current_time = now.strftime("%H:%M:%S")
    filename = sys.argv[2]+("stats_%s_%s_%s.csv" % (folder_split[len(folder_split)-2], current_day, current_time))
    f = open(filename, "w", buffering=1)
    entries = os.listdir(folder)
    timeout = sys.argv[3]

    f.write("File_name; nb_core; nb_exec; Rating; Goéland - Time; Goéland - Result; Nb_go\n")
    for core_limit in range(int(nb_core_max)+1):
        

        for index, file in enumerate(entries):
            for i in range(10):
                print("Problem %s/%s : %s" %(index+1, len(entries), file))
                print("--------------------------------------------------")
                f.write(file[:-2])
                f.write(";")
                f.write(str(core_limit))
                f.write(";")
                f.write(str(i))
                f.write(";")

                file_open = open(folder+file)
                for line in file_open:

                    rating_line = "Rating"
                    if rating_line in line:
                        rating = re.search("[0-9]\.[0-9]+", line)
                        f.write(str(rating.group()))
                
                f.write(";")

                # Goéland
                LaunchTest("Goéland", "timeout "+timeout+" ./_build/goeland_linux_release -core_limit="+ str(core_limit)+" "+folder+file, "VALID", None, "NOT VALID")

                f.write("\n")

    f.close()
