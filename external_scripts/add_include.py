#! /usr/bin/env python3

from posixpath import dirname
import re, sys, os

def includeFile(match) :
    file = match.group(1)
    return ''.join(open(path+file).readlines())

def process_line(line) :
    # Include 
    if "include" in line :
        line = re.sub(r"include\('(.*)'\)\.", includeFile, line)
    return line

def process(src, dst) :
    lines = []
    for line in open(src):
        res_line= process_line(line)
        lines.append(res_line)
    f = open(dst,"w")
    f.write(''.join(lines))
    f.close()

if len(sys.argv) != 2:
    print("python3 add_include DIRECTORY")
else :
    dir = sys.argv[1]
    dir_include = dir[:-1]+"_INCLUDE/"
    path = os.path.dirname(dir[:-1])+"/"
    if not(os.path.isdir(dir_include)):
         print("Create /"+dir_include)
         os.mkdir(dir_include, 0o777)
    for file in os.listdir(dir) :
        process(f"{dir}/{file}", f"{dir_include}{file}")
        #print(f"{file} processed.")
