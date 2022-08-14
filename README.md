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
| -ari | Enable the use of (TPTP) arithmetic functions (default: **false**). |
| -dmt | Allow the use of deduction modulo theory during the proofsearch (default: **false**). |
| -exchanges | Generate an exchange tree in json (default: **false**). Visualisation of this exchange tree can be done with the [visualisation module](visualization/). |
| -l | Re-entry limit of free variables in destructive mode (default: **-1**) |
| -nd | Use of non-destructive mode (default: **false**) |
| -noeq | Disable the use of rigid E-Unification (default: **false**). |
| -proof | Display a proof of the theorem (default: **false**). |
| -polarized | Only useful if -dmt is activated. Polarises deduction modulo to also transform axioms with implications as the root connective |
| -presko | Only useful if -dmt is activated. Preskolemises rewrited formulas if possible. |
| -pretty | Use pretty connectives and quantifiers when printing formulas (default: **false**). Can be used in combination with `-proof` to have a pretty proof. | 
| -type_proof | Generate a sequent-style proof of the well-typedness of the problem in a json (default: **false**). Visualisation of the proof can be done with the [visualisation module](visualization/). |

### Result values

Since the tableau method only proves theorems, Goéland returns `Valid` when a proof is found, otherwise it loops to infinity, trying to increase the reintroduction limit.

### Tests <a id="tests"></a>

The benchmark is available in [tests](tests/) folder, with the [Makefile](tests/Makefile) needed to run them. The folder on which to run the tests are specified in the [Makefile](tests/Makefile).

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
and the corresponding lines added to the [Makefile](tests/Makefile) will run Goéland and Goéland+DMT on the SYN and SET folder. Output results are placed into the [RESULTS](tests/RESULTS/) repository. 
