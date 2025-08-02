# Goéland

Goéland is a concurrent automated theorem prover using the tableau method for first order logic.

It supports [TPTP](http://tptp.org/) FOF and TFF files.

## Table of Contents

- [Goéland](#goeland)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Running Benchmarks](#running-benchmarks)
  - [Bug Reports](#bug-reports)
  - [Contributing](#contributing)
  - [License](#license)
  - [How To Cite](#how-to-cite)
  - [Papers](#papers)

## Installation

### Nix

If you are a nix user, we provide a nix shell file that has all the necessary packages for
compilation and development. In this case, simply run:
```console
$ nix-shell
```
and skip to the [Compilation](#compilation) header.

### Dependencies

In order to compile, Goéland needs:
* Go (version >= 1.22, download directly from the [site](https://go.dev/)), and
* `goyacc`, which can be installed (recommended) from `go`'s package manager tool using:
  ```
  go install golang.org/x/tools/cmd/goyacc
  ```
  or can be found in distribution-based packages:
  - in the package `golang-golang-x-tools` on `apt`-based distributions,
  - in the package `goyacc` with homebrew.

### Compilation

Run the command
```console
$ cd src && make
```
to compile Goéland from source. This should produce an executable in the `_build` folder.

You can now run Goéland:
```console
$ ./_build/goeland -h
Usage of ./_build/goeland:
[...]
```

## Usage

Goéland must be called on a TPTP file. Running vanilla Goéland on `problem.p` can be done via the following command:
```console
$ ./_build/goeland problem.p
```

See [USAGE](USAGE.md) for an overview of the useful options.

## Running Benchmarks

We have developed scripts (in python and bash) to make running benchmarks for
Goéland easy. You can find the tools in [this repository](https://github.com/GoelandProver/GoelandBenchmarks/).

## Bug Reports

If you find a bug or if something does not work as you expect it to, please
report it by [opening an
issue](https://github.com/GoelandProver/Goeland/issues).

To be effective, your report should include (i) the options passed to Goéland
and (ii) the problem file for which the issue appears. Beware that, as Goéland's
proof-search algorithm is non-deterministic, tracking bugs can sometimes be
difficult and *log files* are appreciated (see [USAGE](USAGE.md) for enabling
logs and outputing them to a file).

## Contributing

See the dedicated [CONTRIBUTING](CONTRIBUTING.md) file.

## License

Goéland is licensed under the CeCILL 2.1 License. See [LICENSE](LICENSE).

## How To Cite

Please use the following paper to cite Goéland:

[CRDRB22] Julie Cailler, Johann Rosain, David Delahaye, Simon Robillard and Hinde
L. Bouziane, [Goéland: A Concurrent Tableau-Based Theorem Prover (System
Description)](https://doi.org/10.1007/978-3-031-10769-6_22).
In IJCAR22, 11th International Joint Conference on Automated Reasoning (Jasmin
Blanchette, Laura Kovács, Dirk Pattinson eds.), Springer, LNCS, volume 13385,
pp. 359-368, 2022.

## Papers

* The following paper presents an algorithm for deskolemizing proofs, which
  introduces a compatibility layer between tableaux and sequent calculus and
  then allows us to certify the proofs in various proof assistants. Goéland
  currently outputs proofs for Rocq (`-ocoq`) and LambdaPi (`-olp`). Note that
  the implementation is currently outdated w.r.t. the paper's version.

  [RBCH24] Johann Rosain, Richard Bonichon, Julie Cailler and Olivier Hermant,
  [A Generic Deskolemization Strategy](https://doi.org/10.29007/g1tm).
  In LPAR-25, 25th Conference on Logic for Programming, Artificial Intelligence
  and Reasoning (Nikolaj Bjørner, Marijn Heule, Andrei Voronkov eds.),
  EasyChair, EPiC Series in Computing, volume 100, pp. 246-263, 2024.
