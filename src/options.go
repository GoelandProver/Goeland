package main

import (
	"flag"
	"math"
	"time"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Core/Sko"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/assisted"
	"github.com/GoelandProver/Goeland/Mods/coq"
	"github.com/GoelandProver/Goeland/Mods/dmt"
	equality "github.com/GoelandProver/Goeland/Mods/equality/bse"
	"github.com/GoelandProver/Goeland/Mods/equality/sateq"
	"github.com/GoelandProver/Goeland/Mods/gs3"
	"github.com/GoelandProver/Goeland/Mods/lambdapi"
	"github.com/GoelandProver/Goeland/Mods/tptp"
	"github.com/GoelandProver/Goeland/Search"
	"github.com/GoelandProver/Goeland/Search/incremental"
)

type optionable interface {
	isValueDefault() bool
	doFunctions()
}

var options []optionable

type option[T comparable] struct {
	value          *T
	defaultValue   T
	funcNotDefault func(T)
	funcAlways     func(T)
}

func (op *option[T]) initOption(defaultValue T, funcNotDefault func(T), funcAlways func(T)) {
	op.defaultValue = defaultValue
	op.funcNotDefault = funcNotDefault
	op.funcAlways = funcAlways

	addOption(op)
}

func (op *option[T]) isValueDefault() bool {
	return *op.value != op.defaultValue
}

func (op *option[T]) doFunctions() {
	op.funcAlways(*op.value)

	if op.isValueDefault() {
		op.funcNotDefault(*op.value)
	}
}

/*
Using this function, you can initialize an option of type T.

- name : the name of the option. The option will be called with -'name'

- defaultValue : the value of the option if its not used

- usage : the string of text to explain the option

- funcNotDefault : a function that will be called if the option is used. The parameter is the value of the option

- funcAlways : a function that will be called regardless if the option was used or not (if it wasn't, the parameter will be 'defaultValue')
*/
func (op *option[T]) init(name string, defaultValue T, usage string, funcNotDefault func(T), funcAlways func(T)) {
	op.initOption(defaultValue, funcNotDefault, funcAlways)

	switch any(defaultValue).(type) {
	case bool:
		op.value = any(flag.Bool(name, any(defaultValue).(bool), usage)).(*T)
	case int:
		op.value = any(flag.Int(name, any(defaultValue).(int), usage)).(*T)
	case string:
		op.value = any(flag.String(name, any(defaultValue).(string), usage)).(*T)
	}
}

func addOption(op optionable) {
	options = append(options, op)
}

// Build the options, parses the flags, calls the 'funcAlways' functions on every option and if an option has been changed, calls the 'funcNotDefault' option on it.
func initOpts() {
	buildOptions()
	flag.Parse()

	for _, op := range options {
		op.doFunctions()
	}
}

/**
*  An option has a type T and is initialized with five parameters:
*  name string: the name of the option that will be used in the command line.
*  defaultValue T: the default value that will be used if the option is not used.
*  usage string: the description on how to use and what the option does.
*  funcNotDefault func(T): a function that will be run if the option has changed from its default value. The parameter will be the value of the option.
*  funcAlways func(T): a function that will always be run. The parameter will be the value of the option.
**/
func buildOptions() {
	(&option[bool]{}).init(
		"debug",
		false,
		"Enables printing debug information in the terminal",
		func(bool) {
			Glob.SetDebug(true)
			Glob.EnableDebug()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"silent",
		false,
		"Remove logs (except prover's name and result)",
		func(bool) {
			Glob.SetSilent(true)
		},
		func(bool) {})
	(&option[string]{}).init(
		"log",
		"logs",
		"Changes the `file` output for loggers. Won't work without the option -wlogs",
		func(string) {},
		func(val string) { Glob.EnableLogFile(val) })
	(&option[bool]{}).init(
		"show_trace",
		false,
		"Enables the location of the loggers call to be shown in the logs",
		func(bool) { Glob.EnableShowTrace() },
		func(bool) {})
	(&option[bool]{}).init(
		"wlogs",
		false,
		"Enables the writing of the logs in files",
		func(bool) {
			Glob.SetWriteLogs(true)
			Glob.EnableWriteLogs()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"version",
		false,
		"Print the version of Goeland",
		func(bool) {
			Glob.SetPrintVersion(true)
		},
		func(bool) {})
	(&option[string]{}).init(
		"cpuprofile",
		"",
		"Writes the cpu profile to `file`",
		func(s string) { Glob.SetCpuProfile(s) },
		func(string) {})
	(&option[string]{}).init(
		"memprofile",
		"",
		"Writes the memory profile to `file`",
		func(s string) { Glob.SetMemProfile(s) },
		func(string) {})

	(&option[bool]{}).init(
		"nd",
		false,
		"Enables the non-destructive version",
		func(bool) {
			Search.SetSearchAlgorithm(Search.NewNonDestructiveSearch())
			Glob.SetDestructive(false)
			Glob.SetOneStep(true)
		},
		func(bool) {})
	(&option[int]{}).init(
		"l",
		-1,
		"Sets the limit in destructive mode",
		func(limit int) { Glob.SetLimit(limit) },
		func(int) {})
	(&option[bool]{}).init(
		"one_step",
		false,
		"Enables only one step of search",
		func(bool) { Glob.SetOneStep(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"exchanges",
		false,
		"Enables the node exchanges to be written in a file",
		func(bool) {
			Glob.SetExchanges(true)
			Search.ResetExchangesFile()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"proof",
		false,
		"Enables the display of a proof of the problem (in custom format)",
		func(bool) {
			Glob.SetProof(true)
			Search.ResetProofFile()
			Search.AddPrintProofAlgorithm(Search.BasicOutputProofStruct)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"pretty",
		false,
		"Should only be used with the -proof parameter. Enables UTF-8 characters in prints for a pretty proof",
		func(bool) { Glob.DisplayPretty() },
		func(bool) {})
	(&option[bool]{}).init(
		"dmt",
		false,
		"Enables deduction modulo theory",
		func(bool) { dmt.InitPlugin() },
		func(dmt bool) { Glob.SetPlugin("dmt", dmt) })
	(&option[bool]{}).init(
		"noeq",
		false,
		"Disables equality",
		func(bool) {},
		func(noeq bool) {
			if !noeq {
				equality.Enable()
			}
		})
	(&option[bool]{}).init(
		"type_proof",
		false,
		"Enables type proof visualisation",
		func(bool) { Glob.SetTypeProof(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"dmt_before_eq",
		false,
		"Enables dmt before equality",
		func(bool) { Glob.SetDMTBeforeEQ(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"ari",
		false,
		"Enables the use of (TPTP) arithmetic functions",
		func(bool) { Glob.SetArithModule(true) },
		func(bool) {})
	(&option[int]{}).init(
		"core_limit",
		-1,
		"Sets the limit in number of cores (default: all)",
		func(nb int) { Glob.SetCoreLimit(nb) },
		func(int) {})
	(&option[bool]{}).init(
		"completeness",
		false,
		"Enables completeness mode",
		func(bool) { Glob.SetCompleteness(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"ocoq",
		false,
		"Enables the Coq format for proofs instead of text",
		func(bool) {
			Glob.OutputCoq()
			Glob.SetProof(true)
			Search.AddPrintProofAlgorithm(coq.CoqOutputProofStruct)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"otptp",
		false,
		"Enables the TPTP format for proofs instead of text",
		func(bool) {
			Glob.OutputTPTP()
			Glob.SetProof(true)
			Search.AddPrintProofAlgorithm(tptp.TptpOutputProofStruct)

		},
		func(bool) {})
	(&option[bool]{}).init(
		"osctptp",
		false,
		"Enables the SC-TPTP format for proofs instead of text",
		func(bool) {
			Glob.OutputSCTPTP()
			Glob.SetProof(true)
			Search.AddPrintProofAlgorithm(tptp.TptpOutputProofStruct)

		},
		func(bool) {})
	(&option[bool]{}).init(
		"olp",
		false,
		"Enables the Lambdapi format for proofs instead of text",
		func(bool) {
			Glob.OutputLambdapi()
			Glob.SetProof(true)
			Search.AddPrintProofAlgorithm(lambdapi.LambdapiOutputProofStruct)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"context",
		false,
		"Should only be used with the -ocoq or the -olp parameters. Enables the context for a standalone execution",
		func(bool) { coq.SetContextEnabled(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"inner",
		false,
		"Enables inner Skolemisation during the proof-search",
		func(bool) {
			Core.SetSelectedSkolemization(Sko.MkInnerSkolemization())
			Glob.SetInnerSko(true)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"preinner",
		false,
		"Activates preinner Skolemisation, a Skolemisation strategy even more optimized than -inner",
		func(bool) {
			Core.SetSelectedSkolemization(Sko.MkPreInnerSkolemization())
			Glob.SetPreInnerSko(true)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"assisted",
		false,
		"Enables the step-by-step mode debugger",
		func(bool) {
			Search.SetApplyRules(assisted.ApplyRulesAssisted)
			Glob.SetAssisted(true)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"sateq",
		false,
		"Enables the equality unification using a SAT reduction. Will override the use of -noeq",
		func(bool) {
			equality.SetTryEquality()
			sateq.Enable()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"eagereq",
		false,
		"Run equality reasoning every time a new (in)equality is added to the branch",
		func(bool) {
			Search.EagerEq = true
		},
		func(bool) {})
	(&option[bool]{}).init(
		"increq",
		false,
		"Run equality reasoning incrementally",
		func(bool) {
			Glob.IncrEq = true
		},
		func(bool) {})
	(&option[bool]{}).init(
		"chrono",
		false,
		"Should only be used with the -ocoq, the -olp or the otptp parameters. Enables the chronometer for deskolemization and proof translation",
		func(bool) {
			chronoInit()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"incr",
		false,
		"Enables the Incremental search algorithm",
		func(bool) {
			Search.SetSearchAlgorithm(incremental.NewIncrementalSearch())
		},
		func(bool) {})
	(&option[string]{}).init(
		"proof_file",
		"problem_proof",
		"Should only be used with the proof output parameters, only works with the -wlogs parameter. Enables the writing of the proof in a specific file. The extension of the file will depend on the type of proof",
		func(string) {},
		func(val string) {
			Glob.ProofFile = val
		})
	(&option[bool]{}).init(
		"vec",
		false,
		"Cannot be used with the -l and the -completeness parameters. Enables the very-eager-closure",
		func(bool) {
			Glob.SetCompleteness(false)

			maxInt := math.MaxInt
			Glob.SetLimit(maxInt)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"no_id",
		false,
		"Disables the id in the ToString",
		func(bool) { AST.ToStringId = AST.NoIdToString },
		func(bool) {})
	(&option[bool]{}).init(
		"quoted_pred",
		false,
		"Print predicates between quotes if they start by a capital letter (TPTP compliance)",
		func(bool) { AST.ToStringId = AST.QuotedToString },
		func(bool) {})
	(&option[bool]{}).init(
		"quiet",
		false,
		"Remove Goeland output in terminal",
		func(bool) { Glob.DisableLoggers() },
		func(bool) {})
	(&option[bool]{}).init(
		"flatten",
		false,
		"Flatten the or & and formulas at parsing",
		func(bool) { Glob.SetFlatteningAllowed() },
		func(bool) {})
}

func chronoInit() {
	oldCoq := coq.MakeCoqProof
	coq.MakeCoqProof = func(proof *gs3.GS3Sequent, meta Lib.List[AST.Meta]) string {
		start := time.Now()
		result := oldCoq(proof, meta)
		printChrono("Coq", start)
		return result
	}

	oldLP := lambdapi.MakeLambdaPiProof
	lambdapi.MakeLambdaPiProof = func(proof *gs3.GS3Sequent, meta Lib.List[AST.Meta]) string {
		start := time.Now()
		result := oldLP(proof, meta)
		printChrono("LP", start)
		return result
	}

	oldGS3 := gs3.MakeGS3Proof
	gs3.MakeGS3Proof = func(proof []Search.ProofStruct) *gs3.GS3Sequent {
		start := time.Now()
		result := oldGS3(proof)
		printChrono("GS3", start)
		return result
	}
}
