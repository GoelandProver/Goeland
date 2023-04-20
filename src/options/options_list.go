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

/*******************/
/* options_list.go */
/*******************/

/**
* This file is used to instanciate options
**/

package options

import (
	"flag"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/coq"
	"github.com/GoelandProver/Goeland/plugins/dmt"
	"github.com/GoelandProver/Goeland/plugins/equality"
	exchanges "github.com/GoelandProver/Goeland/visualization_exchanges"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

func RunOptions() {
	initOptions()
	flag.Parse()

	for _, op := range options {
		op.doFunctions()
	}
}

func initOptions() {

	(&option[bool]{}).init(
		"debug",
		false,
		"Enables printing debug information",
		func(val bool) { global.SetDebug(val) },
		func(bool) {})
	(&option[bool]{}).init(
		"nd",
		false,
		"Enables the non-destructive version",
		func(bool) {
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
		func(bool) {},
		func(bool) { global.SetOneStep(true) })
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
		"Enables the display of a proof of the problem (in TPTP format)",
		func(bool) {
			global.SetProof(true)
			proof.ResetProofFile()
		},
		func(bool) {})
	(&option[bool]{}).init(
		"pretty",
		false,
		"Enables UTF-8 characters in prints (use in combination with -proof for a pretty proof)",
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
			global.SetPlugin("equality", !noeq)
			if !noeq {
				equality.InitPlugin()
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
		"Enables arithmetic module",
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
		},
		func(bool) {})
	(&option[bool]{}).init(
		"context",
		false,
		"Should only be used with the -ocoq parameter. Enables the context for a standalone execution.",
		func(bool) { coq.SetContextEnabled(true) },
		func(bool) {})
}
