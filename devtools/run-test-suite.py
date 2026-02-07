#!/bin/bash python3

import glob
import os
import sys
import re
import difflib
import shutil
from subprocess import PIPE, run

class Parser:
    ARGS = "% args: "
    RES = "% result: "
    ENV = "% env: "
    EXIT_CODE = "% exit: "
    no_check = False

    def __init__(self, filename):
        self.filename = filename
        self.parseArguments()
        self.parseResult()
        self.parseEnv()
        self.parseExitCode()

        args_avoid_chk = ["-proof", "-otptp", "-osctptp"]
        if "no_chk" in filename or self.expectedExitCode != "" or any(arg in self.arguments for arg in args_avoid_chk) or self.expectedResult == "NOT VALID":
            self.no_check = True

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

    def getCommandLine(self, checker_args):
        arguments = self.arguments + checker_args
        return self.env + " ../src/_build/goeland " + arguments + " " + self.filename

    def getArgsForPrinting(self):
        chk_str = ""
        if self.no_check:
            chk_str = " (no check)"
        return self.arguments + chk_str

def sanitize(s):
    return s.encode('utf-8', errors='ignore').decode(errors='ignore')

def runProver(f, command):
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

def isExecutable(prog) :
    return shutil.which(prog) is not None

def makeGenericCheck(command, extension, cleanup_always, cleanup_compile_success, f, output):
    check_lines = getRelevantOutput(output)
    check_success = False
    filename = os.getcwd() + "/" + os.path.basename(f)[:-2].replace("-", "_")

    with open(f"{filename}.{extension}", "w") as chk_file:
        chk_file.write("\n".join(check_lines))

    result = run(f"{command} {filename}.{extension}", stdout=PIPE, stderr=PIPE, universal_newlines=True, shell=True, encoding='utf-8')
    check_success = result.returncode == 0

    for ext in cleanup_always:
        os.remove(f"{filename}.{ext}")

    if not check_success:
        return False, result.stderr
    else:
        for ext in cleanup_compile_success:
            os.remove(f"{filename}.{ext}")

    return True, None

def getRocqCompiler() :
    if isExecutable("rocq"):
        return "rocq compile"
    elif isExecutable("coqc"):
        return "coqc"
    else:
        raise Exception("No Rocq executable found on the system")

def makeRocqCheck(f, output):
    check_status, err = makeGenericCheck(getRocqCompiler(), "v", ["glob"], ["v", "vo", "vok", "vos"], f, output)

    if not check_status:
        print(f"ROCQ check has failed.")
        print(f"Reason: {err}")
        exit(1)

def makeLambdapiCheck(f, output):
    lp_command = "lambdapi check --lib-root .. --map-dir Logic.Goeland:../proof-certification/LambdaPi"
    check_status, err = makeGenericCheck(lp_command, "lp", [], ["lp"], f, output)

    # As the lambdapi output does not manage equality, we tolerate fails for the problems
    # of the test suite that have equality.
    lp_tolerated_fails = ["TEST_EQ.p", "TEST_EQ2.p", "sankalp.p"]

    if not check_status:
        if os.path.basename(f) in lp_tolerated_fails:
            print(f"LAMBDAPI check has failed, but it was expected.")
        else:
            print(f"LAMBDAPI check has failed")
            exit(1)

def runWithExpected(f, parser, checker_args, check_fun):
    """
    Runs Goéland on [f] using the parsed command line, then checks if the output corresponds to the expected one.
    This function manages:
    - error codes (e.g., it can detect whether Goéland exits with error code i
    - results (e.g., VALID, NOT VALID).

    If Goéland runs into an unexpected error, we report it. Moreover, if the kind of expected return is a VALID
    result, we run a checker (specified by checker_args and check_fun) to check that the proof is indeed valid
    (except for files in the no-chk folder).
    """
    output, err, exit_code = runProver(f, parser.getCommandLine(""))

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
                if parser.no_check: return
                output, _, _ = runProver(f, parser.getCommandLine(checker_args))
                check_fun(f, output)
                return

    print(f"Unknown error: got\n{output}")
    exit(1)

def runWithRocqChk(f, parser):
    runWithExpected(f, parser, " -context -orocq", makeRocqCheck)

def runWithLpChk(f, parser):
    runWithExpected(f, parser, " -olp", makeLambdapiCheck)

def compareOutputs(f, parser):
    output, err, exit_code = runProver(f, parser.getCommandLine(""))

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
            print(f"{f}\t{parser.getArgsForPrinting()}")
            runWithRocqChk(f, parser)
            runWithLpChk(f, parser)
