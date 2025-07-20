# Goéland

## Post-release notice

**Warning**: Goéland v1.1 has many bugs and is unsound with the flags `-inner` or
`-preinner` (see [#19](https://github.com/GoelandProver/Goeland/issues/19)). Other bugs
and performances issues were introduced in this version, e.g.,
[#16](https://github.com/GoelandProver/Goeland/issues/16),
[#38](https://github.com/GoelandProver/Goeland/issues/38) or
[#41](https://github.com/GoelandProver/Goeland/issues/41). You may want to use
[v1.0](https://github.com/GoelandProver/Goeland/tree/v1.0) or the [development
version](https://github.com/GoelandProver/Goeland/tree/master) instead. We will not be
patching this version, so avoid using it if possible.

See also: [updated release post](https://github.com/GoelandProver/Goeland/releases/tag/v1.1)

----

Goéland is a concurrent automated theorem prover using the tableau method for first order logic.

It supports [TPTP](http://tptp.org/) FOF and TFF files.

## License

Goéland is licensed under the CeCILL 2.1 License. See [LICENSE](LICENSE).

## Installation

### Dependencies

Goéland needs Go (version >= 1.22, download directly from the [site](https://go.dev/)) and goyacc (`sudo apt-get install golang-golang-x-tools`) to compile.

### Compilation

Proceed as follows to build Goéland from source (assuming that you currently are in the root folder of the repository):
```console
$ cd src
$ make
```
This should produce an executable in the `_build` folder.

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
| -core_limit *int* | Sets the limit in number of cores (default: all) (default: **-1**). |
| -cpuprofile *file* | Writes the cpu profile to *file*. |
| -memprofile *file* | Writes the memory profile to *file*. |
| -debug | Enables printing debug information in the terminal (default: **false**). |
| -dmt | Enables deduction modulo theory (default: **false**). |
| -dmt_before_eq | Enables dmt before equality (default: **false**). |
| -exchanges | Enables the node exchanges to be written in a file (default: **false**). |
| -inner | Enables on-the-fly inner Skolemisation during the proof-search (default: **false**). |
| -preinner | Activates preinner Skolemisation, a Skolemisation strategy even more optimized than `-inner` (default: **false**). |
| -l *int* | Sets the limit in destructive mode (default: **-1**). |
| -log *file* | Changes the file output for loggers. Won't work without the option `-wlogs` (default: **logs**). |
| -nd | Enables the non-destructive version (default: **false**). |
| -noeq | Disables equality (default: **false**). |
| -ocoq | Enables the Coq format for proofs instead of text (default: **false**). |
| -olp | Enables the Lambdapi format for proofs instead of text (default: **false**). |
| -otptp | Enables the TPTP format for proofs instead of text (default: **false**). |
| -context | Should only be used with the `-ocoq` or the `-olp` parameters.  Enables the context for a standalone execution (default: **false**). |
| -pretty | Should only be used with the `-proof` parameter. Enables UTF-8 characters in prints for a pretty proof (default: **false**). |
| -proof | Enables the display of a proof of the problem (in custom format) (default: **false**). |
| -proof_file | Should only be used with the proof output parameters, only works with the `-wlogs` parameter. Enables the writing of the proof in a specific file. The extension of the file will depend on the type of proof (default: **problem_proof**). |
| -one_step | Enables only one step of search (default: **false**). |
| -show_trace | Enables the location of the loggers call to be shown in the logs (default: **false**). |
| -type_proof | Enables type proof visualisation (default: **false**). |
| -completeness | Enables completeness mode (default: **false**). |
| -wlogs | Enables the writing of the logs in files (default: **false**). |
| -chrono | Should only be used with the `-ocoq` or the `-olp` parameters. Enables the chronometer for deskolemization and proof translation (default: **false**). |
| -incr | Enables the Incremental search algorithm (default: **false**). |
| -sateq | Enables the equality unification using a SAT reduction. Will override the use of `-noeq` (default: **false**). |
| -eagereq | Run equality reasoning every time a new (in)equality is added to the branch (default: **false**). |
| -increq | Run equality reasoning incrementally (default: **false**). |
| -vec | Cannot be used with the -l and the -completeness parameters. Enables the very-eager-closure (default: **false**). |
| -no_id | Disables the id in the ToString (default: **false**). |
| -quoted_pred | Print predicates between quotes if they start by a capital letter (TPTP compliance) (default: **false**). |
| -quiet | Remove Goeland output in terminal (default: **false**). |

### Result values

Since the tableau method only proves theorems, Goéland returns `Valid` when a proof is found, otherwise it loops to infinity, trying to increase the reintroduction limit (unless the reintroduction limit is fixed).

### Tests <a id="tests"></a>

To run tests, you can use the benchmarking tool available at [this repository](https://github.com/GoelandProver/GoelandBenchmarks/).
