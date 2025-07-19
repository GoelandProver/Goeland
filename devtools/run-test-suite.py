#!/bin/bash python3

import glob
import os
import sys
import re
import difflib
from subprocess import PIPE, run

class Parser:
    ARGS = "% args: "
    RES = "% result: "
    ENV = "% env: "

    def __init__(self, filename):
        self.filename = filename
        self.parseArguments()
        self.parseResult()
        self.parseEnv()

    def parseGen(self, pat):
        with open(self.filename) as f:
            for line in f.readlines():
                if pat in line:
                    return line[len(pat):]
        return ""


    def parseArguments(self):
        self.arguments = self.parseGen(self.ARGS).strip()

    def parseResult(self):
        self.expectedResult = self.parseGen(self.RES).strip()

    def parseEnv(self):
        self.env = self.parseGen(self.ENV).strip()
        # Special string: $(PWD) which replaces it by the directory of the script
        self.env = self.env.replace("$(PWD)", os.path.dirname(os.path.abspath(__file__)))

    def getCommandLine(self):
        return self.env + " ../src/_build/goeland " + self.arguments + " " + self.filename

def sanitize(s):
    return s.encode('utf-8', errors='ignore').decode(errors='ignore')

def runProver(command):
    print(f"Launching: {command}")
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return (sanitize(result.stdout), sanitize(result.stderr))

def runWithExpected(f, parser):
    output, err = runProver(parser.getCommandLine())

    if err != "":
        print(f"Runtime error: {err}")
        exit(1)

    search = re.compile(".*% RES : (.*)$")
    for line in output.split("\n"):
        res = search.match(line)
        if res != None:
            actual = res.group(1)
            if actual != parser.expectedResult:
                print(f"Error: expected {parser.expectedResult}, got: {actual}")
                exit(1)
            else:
                return

    print(f"Unknown error: {output}")
    exit(1)

def compareOutputs(f, parser):
    output, err = runProver(parser.getCommandLine())

    if err != "":
        print(f"Runtime error: {err}")
        exit(1)

    relevantLines = []
    ok = -1
    for line in output.split("\n"):
        if re.search("% SZS output start", line):
            ok = 1
        elif re.search("% SZS output end", line):
            ok = -1
        elif ok == 0:
            if len(line.strip()) > 0:
                relevantLines.append(line.strip())
        else:
            ok -= 1

    relevantExpectedLines = []

    with open(os.path.splitext(f)[0] + ".out") as f:
        for line in f.readlines():
            if len(line.strip()) > 0:
                relevantExpectedLines.append(line.strip())

    # TODO: better system to compare outputs: proof nodes may not always be the
    #       same..
    # Also: add a diffing result to make it easier to understand when it fails
    if relevantLines != relevantExpectedLines:
        print("Error: actual output doesn't match the expected one.")
        d = difflib.Differ()
        sys.stderr.writelines(list(d.compare(relevantExpectedLines, relevantLines)))
        sys.stderr.write("\n")
        exit(1)

if __name__ == "__main__":
    outputTest = ["-proof", "-otptp", "-osctptp"]
    for f in glob.glob("test-suite/**/*.p"):
        parser = Parser(f)

        if any(out in parser.arguments for out in outputTest) :
            compareOutputs(f, parser)
        else :
            runWithExpected(f, parser)
