# Goéland's Usage

<u>Warning</u>: Note that the parameters must be passed *before* the problem file.

## Table of Contents

* [Goéland's Usage](#goeland-s-usage)
  * [Table of Contents](#table-of-contents)
  * [Commonly-Used Options](#commonly-used-options)
  * [Proof Outputs](#proof-outputs)
  * [Developer Options](#developer-options)

## Commonly-Used Options

The most commonly used options of Goéland are the following ones.

| Parameter flag | Effect |
|--------------------------|-----------|
| -ari | Enables the use of (TPTP) arithmetic functions. |
| -completeness | Enables completeness mode. |
| -core_limit *int* | Sets the limit in number of cores (default: **-1**, i.e., all the cores will be used). |
| -dmt | Enables deduction modulo theory. |
| -dmt_before_eq | Enables dmt rewriting-steps before equality. |
| -eagereq | Run equality reasoning every time a new (in)equality is added to the branch. |
| -h | Displays the help text with all the options. |
| -incr | Enables the incremental search algorithm. |
| -increq | Run equality reasoning incrementally. |
| -inner | Enables on-the-fly inner Skolemisation during the proof-search. |
| -preinner | Activates preinner Skolemisation, a Skolemisation strategy even more optimized than `-inner`. |
| -pretty | Enables UTF-8 characters in the printing. |
| -noeq | Disables equality reasoning. |
| -no_id | Avoid printing the identifier of the symbols (function, predicate, variables). |
| -quiet | Remove Goeland output in terminal. |
| -sateq | Enables the equality unification using a SAT reduction. Will override the use of `-noeq`. |
| -vec | Enables the very-eager-closure. Cannot be used with the -l and the -completeness parameters. |

## Proof Outputs

Goéland has multiple proof outputs:

| Parameter flag | Effect |
|--------------------------|-----------|
| -chrono | Should only be used with the `-ocoq` or the `-olp` parameters. Enables the chronometer for deskolemization and proof translation. |
| -context | Get the current proof system prelude. Only outputs something if paired with the `-ocoq` or the `-olp` parameters. |
| -ocoq | Enables the Coq format for proofs instead of text. |
| -olp | Enables the Lambdapi format for proofs instead of text. |
| -otptp | Enables the TPTP format for proofs instead of text. |
| -proof | Enables the display of a proof of the problem (in custom format). |
| -proof_file | Should only be used with the proof output parameters. Only works with the `-wlogs` parameter. Enables the writing of the proof in a specific file. The extension of the file will depend on the type of proof. |
| -quoted_pred | Print predicates between quotes if they start by a capital letter (TPTP compliance). |
| -type_proof | Outputs the typing tree of the formula (for TFF files). |

## Developer Options

We provide a bunch of flags to make debugging easier:

| Parameter flag | Effect |
|--------------------------|-----------|
| -assisted | Enables the step-by-step mode debugger. |
| -cpuprofile *file* | Writes the cpu profile to *file*. |
| -debug | Enables printing debug information in the terminal. |
| -exchanges | Enables the node exchanges to be written in a file. |
| -memprofile *file* | Writes the memory profile to *file*. |
| -l *int* | Sets the limit in destructive mode (default: **-1**, i.e., no limit). |
| -log *file* | Changes the file output for loggers. Won't work without the option `-wlogs` (default: **logs**). |
| -one_step | Enables only one step of search. |
| -show_trace | Enables the location of the loggers call to be shown in the logs. |
| -wlogs | Enables the writing of the logs in files. |
