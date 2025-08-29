#!/bin/bash python3

import glob
import os
import sys
import re
import difflib
import tempfile
from subprocess import PIPE, run

class Parser:
    ARGS = "% args: "
    RES = "% result: "
    ENV = "% env: "
    EXIT_CODE = "% exit: "
    no_rocq_check = False

    def __init__(self, filename):
        self.filename = filename
        self.parseArguments()
        self.parseResult()
        self.parseEnv()
        self.parseExitCode()

        args_avoid_chk = ["-proof", "-otptp", "-osctptp"]
        if "no_chk" in filename or self.expectedExitCode != "" or any(arg in self.arguments for arg in args_avoid_chk) or self.expectedResult == "NOT VALID":
            self.no_rocq_check = True

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

    def parseExitCode(self):
        self.expectedExitCode = self.parseGen(self.EXIT_CODE).strip()

    def getCommandLine(self):
        arguments = self.arguments
        if not self.no_rocq_check:
            arguments += " -context -orocq"
        return self.env + " ../src/_build/goeland " + arguments + " " + self.filename

    def getArgsForPrinting(self):
        rocq_chk_str = ""
        if self.no_rocq_check:
            rocq_chk_str = " (no Rocq check)"
        return self.arguments + rocq_chk_str

def sanitize(s):
    return s.encode('utf-8', errors='ignore').decode(errors='ignore')

def runProver(f, command):
    print(f"{f}\t{parser.getArgsForPrinting()}")
    result = run(command, stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    return (sanitize(result.stdout), sanitize(result.stderr), result.returncode)

def getRelevantOutput(output):
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

    return relevantLines

def makeRocqCheck(output):
    rocq_lines = getRelevantOutput(output)
    compile_success = False
    with tempfile.NamedTemporaryFile(suffix=".v") as tmp:
        result = run(f"rocq compile {tmp.name}", stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
        compile_success = result.returncode == 0
    if not compile_success:
        print("ROCQ compile has failed.")
        exit(1)

def runWithExpected(f, parser):
    """
    Runs Goéland on [f] using the parsed command line, then checks if the output corresponds to the expected one.
    This function manages:
    - error codes (e.g., it can detect whether Goéland exits with error code i
    - results (e.g., VALID, NOT VALID).

    If Goéland runs into an unexpected error, we report it. Moreover, if the kind of expected return is a VALID
    result, we run Rocq to check that the proof is indeed valid (except for files in the no-chk folder).
    """
    output, err, exit_code = runProver(f, parser.getCommandLine())

    if err != "":
        print(f"Runtime error: {err}")
        exit(1)

    if parser.expectedExitCode != '':
        if int(parser.expectedExitCode) != exit_code:
            print(f"Error: expected exit code '{parser.expectedExitCode}', got: '{exit_code}'")
            exit(1)
        else: return

    search = re.compile(".*% RES : (.*)$")
    for line in output.split("\n"):
        res = search.match(line)
        if res != None:
            actual = res.group(1)
            if actual != parser.expectedResult:
                print(f"Error: expected '{parser.expectedResult}', got: '{actual}'")
                exit(1)
            else:
                if parser.no_rocq_check: return
                makeRocqCheck(output)
                return

    print(f"Unknown error: got\n{output}")
    exit(1)

def compareOutputs(f, parser):
    output, err, exit_code = runProver(f, parser.getCommandLine())

    if err != "" or exit_code != 0:
        print(f"Runtime error: {err}")
        exit(1)

    relevantLines = getRelevantOutput(output)
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
    for f in sorted(glob.glob("test-suite/**/*.p")):
        parser = Parser(f)

        if any(out in parser.arguments for out in outputTest) :
            compareOutputs(f, parser)
        else :
            runWithExpected(f, parser)
