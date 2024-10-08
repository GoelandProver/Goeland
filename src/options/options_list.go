/**
* Copyright 2022 by the authors (see AUTHORS).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use,
* modify and/ or redistribute the software under the terms of the CeCILL
* license as circulated by CEA, CNRS and INRIA at the following URL
* "http://www.cecill.info".
*
* As a counterpart to the access to the source code and  rights to copy,
* modify and redistribute granted by the license, users are provided only
* with a limited warranty  and the software's author,  the holder of the
* economic rights,  and the successive licensors  have only  limited
* liability.
*
* In this respect, the user's attention is drawn to the risks associated
* with loading,  using,  modifying and/or developing or reproducing the
* software by the user in light of its specific status of free software,
* that may mean  that it is complicated to manipulate,  and  that  also
* therefore means  that it is reserved for developers  and  experienced
* professionals having in-depth computer knowledge. Users are therefore
* encouraged to load and test the software's suitability as regards their
* requirements in conditions enabling the security of their systems and/or
* data to be ensured and,  more generally, to use and operate it in the
* same conditions as regards security.
*
* The fact that you are presently reading this means that you have had
* knowledge of the CeCILL license and that you accept its terms.
**/

/**
* This file is used to instantiate options
**/

package options

import (
	"flag"
	"fmt"
	"math"
	"time"

	equality "github.com/GoelandProver/Goeland/equality/bse"
	"github.com/GoelandProver/Goeland/equality/sateq"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/modules/assisted"
	"github.com/GoelandProver/Goeland/modules/dmt"
	"github.com/GoelandProver/Goeland/proof_output/coq"
	"github.com/GoelandProver/Goeland/proof_output/gs3"
	"github.com/GoelandProver/Goeland/proof_output/lambdapi"
	"github.com/GoelandProver/Goeland/proof_output/tptp"
	"github.com/GoelandProver/Goeland/search"
	"github.com/GoelandProver/Goeland/search/incremental"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	exchanges "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

// Build the options, parses the flags, calls the 'funcAlways' functions on every option and if an option has been changed, calls the 'funcNotDefault' option on it.
func init() {
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
			global.SetDebug(true)
			global.EnableDebug()
		},
		func(bool) {})
	(&option[string]{}).init(
		"log",
		"logs",
		"Changes the `file` output for loggers. Won't work without the option -wlogs",
		func(string) {},
		func(val string) { global.EnableLogFile(val) })
	(&option[bool]{}).init(
		"show_trace",
		false,
		"Enables the location of the loggers call to be shown in the logs",
		func(bool) { global.EnableShowTrace() },
		func(bool) {})
	(&option[bool]{}).init(
		"wlogs",
		false,
		"Enables the writing of the logs in files",
		func(bool) {
			global.SetWriteLogs(true)
			global.EnableWriteLogs()
		},
		func(bool) {})

	(&option[string]{}).init(
		"cpuprofile",
		"",
		"Writes the cpu profile to `file`",
		func(s string) { global.SetCpuProfile(s) },
		func(string) {})
	(&option[string]{}).init(
		"memprofile",
		"",
		"Writes the memory profile to `file`",
		func(s string) { global.SetMemProfile(s) },
		func(string) {})

	(&option[bool]{}).init(
		"nd",
		false,
		"Enables the non-destructive version",
		func(bool) {
			search.SetSearchAlgorithm(search.NewNonDestructiveSearch())
			global.SetDestructive(false)
			global.SetOneStep(true)
		},
		func(bool) {})
	(&option[int]{}).init(
		"l",
		-1,
		"Sets the limit in destructive mode",
		func(limit int) { global.SetLimit(limit) },
		func(int) {})
	(&option[bool]{}).init(
		"one_step",
		false,
		"Enables only one step of search",
		func(bool) { global.SetOneStep(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"exchanges",
		false,
		"Enables the node exchanges to be written in a file",
		func(bool) {
			global.SetExchanges(true)
			exchanges.ResetExchangesFile()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"proof",
		false,
		"Enables the display of a proof of the problem (in custom format)",
		func(bool) {
			global.SetProof(true)
			proof.ResetProofFile()
			search.AddPrintProofAlgorithm(search.BasicOutputProofStruct)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"pretty",
		false,
		"Should only be used with the -proof parameter. Enables UTF-8 characters in prints for a pretty proof",
		func(bool) { global.DisplayPretty() },
		func(bool) {})
	(&option[bool]{}).init(
		"dmt",
		false,
		"Enables deduction modulo theory",
		func(bool) { dmt.InitPlugin() },
		func(dmt bool) { global.SetPlugin("dmt", dmt) })
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
		func(bool) { global.SetTypeProof(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"dmt_before_eq",
		false,
		"Enables dmt before equality",
		func(bool) { global.SetDMTBeforeEQ(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"ari",
		false,
		"Enables the use of (TPTP) arithmetic functions",
		func(bool) { global.SetArithModule(true) },
		func(bool) {})
	(&option[int]{}).init(
		"core_limit",
		-1,
		"Sets the limit in number of cores (default: all)",
		func(nb int) { global.SetCoreLimit(nb) },
		func(int) {})
	(&option[bool]{}).init(
		"completeness",
		false,
		"Enables completeness mode",
		func(bool) { global.SetCompleteness(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"ocoq",
		false,
		"Enables the Coq format for proofs instead of text",
		func(bool) {
			global.OutputCoq()
			global.SetProof(true)
			search.AddPrintProofAlgorithm(coq.CoqOutputProofStruct)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"otptp",
		false,
		"Enables the TPTP format for proofs instead of text",
		func(bool) {
			global.OutputTPTP()
			global.SetProof(true)
			search.AddPrintProofAlgorithm(tptp.TptpOutputProofStruct)

		},
		func(bool) {})
	(&option[bool]{}).init(
		"olp",
		false,
		"Enables the Lambdapi format for proofs instead of text",
		func(bool) {
			global.OutputLambdapi()
			global.SetProof(true)
			search.AddPrintProofAlgorithm(lambdapi.LambdapiOutputProofStruct)
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
		"Enables on-the-fly inner Skolemisation during the proof-search",
		func(bool) { global.SetInnerSko(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"preinner",
		false,
		"Activates preinner Skolemisation, a Skolemisation strategy even more optimized than -inner",
		func(bool) { global.SetPreInnerSko(true) },
		func(bool) {})
	(&option[bool]{}).init(
		"assisted",
		false,
		"Enables the step-by-step mode debugger",
		func(bool) {
			search.SetApplyRules(assisted.ApplyRulesAssisted)
			global.SetAssisted(true)
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
			search.EagerEq = true
		},
		func(bool) {})
	(&option[bool]{}).init(
		"increq",
		false,
		"Run equality reasoning incrementally",
		func(bool) {
			global.IncrEq = true
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
			search.SetSearchAlgorithm(incremental.NewIncrementalSearch())
		},
		func(bool) {})
	(&option[string]{}).init(
		"proof_file",
		"problem_proof",
		"Should only be used with the proof output parameters, only works with the -wlogs parameter. Enables the writing of the proof in a specific file. The extension of the file will depend on the type of proof",
		func(string) {},
		func(val string) {
			global.ProofFile = val
		})
	(&option[bool]{}).init(
		"vec",
		false,
		"Cannot be used with the -l and the -completeness parameters. Enables the very-eager-closure",
		func(bool) {
			global.SetCompleteness(false)

			maxInt := math.MaxInt
			global.SetLimit(maxInt)
		},
		func(bool) {})
	(&option[bool]{}).init(
		"no_id",
		false,
		"Disables the id in the ToString",
		func(bool) { basictypes.ToStringId = basictypes.NoIdToString },
		func(bool) {})
	(&option[bool]{}).init(
		"quoted_pred",
		false,
		"Print predicates between quotes if they start by a capital letter (TPTP compliance)",
		func(bool) { basictypes.ToStringId = basictypes.QuotedToString },
		func(bool) {})
	(&option[bool]{}).init(
		"quiet",
		false,
		"Remove Goeland output in terminal",
		func(bool) { global.DisableLoggers() },
		func(bool) {})
}

func chronoInit() {
	oldCoq := coq.MakeCoqProof
	coq.MakeCoqProof = func(proof *gs3.GS3Sequent, meta *basictypes.MetaList) string {
		start := time.Now()
		result := oldCoq(proof, meta)
		printChrono("Coq", start)
		return result
	}

	oldLP := lambdapi.MakeLambdaPiProof
	lambdapi.MakeLambdaPiProof = func(proof *gs3.GS3Sequent, meta *basictypes.MetaList) string {
		start := time.Now()
		result := oldLP(proof, meta)
		printChrono("LP", start)
		return result
	}

	oldGS3 := gs3.MakeGS3Proof
	gs3.MakeGS3Proof = func(proof []proof.ProofStruct) *gs3.GS3Sequent {
		start := time.Now()
		result := oldGS3(proof)
		printChrono("GS3", start)
		return result
	}
}

func printChrono(id string, start time.Time) {
	fmt.Printf("%s Chrono - %s - %d\n", "%", id, time.Since(start).Milliseconds())
}
