# Goéland

Goéland is a concurrent automated theorem prover using the tableau method for first order logic.

It supports [TPTP](http://tptp.org/) FOF and TFF files.

## License

Goéland is licensed under the CeCILL 2.1 License. See [LICENSE](LICENSE).

## Installation

### Dependencies

Goéland needs Go (version >= 1.18, download directly from the [site](https://go.dev/)) and goyacc (`sudo apt-get install golang-golang-x-tools`) to compile.

Python3 (any version, download directly from the [site](https://www.python.org/downloads/)) is also needed to perform tests on the given benchmark (see  [Tests](#tests)).

### Compilation

Proceed as follows to build Goéland from source (assuming that you currently are in the root folder of the repository):
```console
$ cd src
$ make
```
This should produce an executable in the `_build` folder, and `.so` libraries for each module in the `plugins` folder.

You can now run Goéland:
```console
$ ./_build/goeland -h
Usage of ./_build/goeland:
[...]
```

## Usage

This is still a preliminary version of the implementation. Goéland must be called from the command line. To solve a `problem.p` problem, just give this problem as an argument:
```console
$ ./_build/goeland problem.p
```

### Parameters

The parameters must be passed *before* the problem file. The available parameters are as follows:

| Parameter flag | Effect |
|--------------------------|-----------|
| -ari | Enables the use of (TPTP) arithmetic functions (default: **false**). |
| -assisted | Enables the step-by-step mode debugger (default: **false**). |
| -completeness | Enables completeness mode (default: **false**). |
| -compare | Should only be used with the `-ocoq` parameter. Outputs both the Coq proof and the tableaux proof (default: **false**). |
| -context | Should only be used with the `-ocoq` parameter. Enables the context for a standalone execution (default: **false**). |
| -core_limit *int* | Sets the limit in number of cores (default: all) (default: **-1**). |
| -cpuprofile *file* | Writes the cpu profile to *file*. |
| -debug | Enables printing debug information in the terminal (default: **false**). |
| -dif | Short for 'Debug In File'. Enables printing debug information in the log file. Won't work when used with the option `-nwlogs` (default: **false**). |
| -dmt | Enables deduction modulo theory (default: **false**). |
| -dmt_before_eq | Enables dmt before equality (default: **false**). |
| -exchanges | Enables the node exchanges to be written in a file (default: **false**). |
| -inner | Enables on-the-fly inner Skolemisation during the proof-search (default: **false**). |
| -l *int* | Sets the limit in destructive mode (default: **-1**). |
| -log *file* | Changes the file output for loggers. Won't work when used with the option `-nwlogs` (default: **logs**). |
| -memprofile *file* | Writes the memory profile to file (default: **false**). |
| -nd | Enables the non-destructive version (default: **false**). |
| -noeq | Disables equality (default: **false**). |
| -ocoq | Enables the Coq format for proofs instead of text (default: **false**). |
| -one_step | Enables only one step of search (default: **false**). |
| -polarized | Should only be used with the `-dmt` parameter. Activate polarized dmt (default: **false**). |
| -preinner | Activates preinner Skolemisation, a Skolemisation strategy even more optimised than `-inner` (default: **false**). |
| -pretty | Should only be used with the `-proof` parameter. Enables UTF-8 characters in prints for a pretty proof (default: **false**). |
| -proof | Enables the display of a proof of the problem (in TPTP format) (default: **false**). |
| -show_trace | Enables the location of the loggers call to be shown in the logs (default: **false**). |
| -type_proof | Enables type proof visualisation (default: **false**). |
| -completeness | Enables completeness mode (default: **false**). |
| -wlogs | Enables the writing of the logs in files (default: **false**). |

### Result values

Since the tableau method only proves theorems, Goéland returns `Valid` when a proof is found, otherwise it loops to infinity, trying to increase the reintroduction limit.

### Tests <a id="tests"></a>

The benchmark is available in the [Benchmarks](https://github.com/GoelandProver/GoelandBenchmarks/) submodule, with the [Makefile](https://github.com/GoelandProver/GoelandBenchmarks/blob/main/Makefile) needed to run them. The folder on which to run the tests is specified in the [Makefile](https://github.com/GoelandProver/GoelandBenchmarks/blob/main/Makefile).

For example, the command line:
```console
$ make
```
with the following architecture: 
```console
├── SET
│   ├── problem_set_1.p
│   ├── problem_set_2.p
│   └── problem_set_3.p
├── SYN
│   ├── problem_syn_1.p
│   ├── problem_syn_2.p
│   └── problem_syn_3.p
├── RESULTS
└── Makefile
```
and the corresponding lines added to the [Makefile](https://github.com/GoelandProver/GoelandBenchmarks/blob/main/Makefile) will run Goéland and Goéland+DMT on the SYN and SET folder. Output results are placed into the [RESULTS](https://github.com/GoelandProver/GoelandBenchmarks/tree/main/RESULTS) repository. 
