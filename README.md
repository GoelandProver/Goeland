# Goéland

Goéland is an automated theorem prover using the tableau method for first order logic.

It supports [TPTP](http://tptp.org/) FOF files (TFF/THF files will be supported in a future version).

## License

Goéland is licensed under the CeCILL 2.1 License. See [LICENSE](LICENSE).

## Installation

### Dependencies

Goéland needs Go (version >= 1.13, download directly from the [site](https://go.dev/)) and goyacc (`sudo apt-get install golang-golang-x-tools`) to compile.

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

By default, this will run Goéland, with all its extensions, on the problem. Beware that currently, `include`s statements in TPTP problem files aren't managed by the parser. It is scheduled to be added in the near future.

### Parameters

The parameters must be passed *before* the problem file. The available parameters are as follows:

| Parameter flag | Effect |
|--------------------------|-----------|
| -l | Re-entry limit of free variables in destructive mode (default: **-1**) |
| -nd | Use of non-destructive mode (default: **false**) |
| -proof | Generate a proof (default: **false**) |
| -loadPlugins | Use Goéland with plugins (default: **true**) |

### Result values

Since the tableau method only proves theorems, Goéland returns `Valid` when a proof is found, otherwise it loops to infinity, trying to increase the reintroduction limit.