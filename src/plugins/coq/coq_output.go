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

/*****************/
/* coq_output.go */
/*****************/

/**
* This file provides a coq output for Goeland's proofs.
**/

package coq

import (
	"flag"
	"fmt"
	"strings"
	"time"

	"github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

var outputCoq = flag.Bool("ocoq", false, "Outputs a proof in a coq format instead of a text.")
var context = flag.Bool("context", false, "Should be used together with the -ocoq parameter. Produces the context for a standalone execution.")

var constantsCreated []btps.Term
var axiomsRegistered []btps.Form
var formulasIntroduced []btps.Form
var usedAxioms []int

// ----------------------------------------------------------------------------
// Plugin initialisation and main function to call.

// Section: init
// Functions: InitFlag, MakeCoqOutput, makeCoqProof
// Main functions of the coq module.
// TODO:
//	* Write the context for TFF problems

func InitFlag() {
	if *outputCoq {
		global.OutputCoq()
		global.SetProof(true)
	}
}

func MakeCoqOutput(proof []proof.ProofStruct, meta btps.MetaList) string {
	if len(proof) == 0 {
		fmt.Printf("[%.6fs][%v][Coq] Nothing to output.\n", time.Since(global.GetStart()).Seconds(), global.GetGID())
		return ""
	}

	resultingString := ""
	// If output is standalone, then print context
	if *context {
		resultingString += "(* CONTEXT BEGIN *)\n"
		resultingString += makeContext(proof[0].Formula, meta)
		resultingString += "\n(* CONTEXT END *)\n"
	}
	resultingString += makeCoqProof(proof)
	resultingString += "(* PROOF END *)\n"
	return resultingString
}

func makeCoqProof(proofs []proof.ProofStruct) string {
	resultingString := ""
	// Modify first formula to prove validity
	axioms, firstFormula := processMainFormula(proofs[0].Formula)
	// Prints the theorem to prove
	resultingString += printTheorem(axioms, firstFormula)
	// Prints the proof
	resultingString += "Proof.\n"
	if isNNPP(firstFormula) {
		resultingString += "  apply NNPP.\n"
	} else {
		preambleString := proofPreamble(firstFormula)
		resultingString += preambleString
		if len(axioms) > 0 {
			proofs = proofs[1:]
		}
		resultingString += coqProofFromGoeland(proofs, 0, true)
	}
	resultingString += "Qed.\n"
	return removeUnusedAxioms(resultingString)
}

// ----------------------------------------------------------------------------
// Replace defined symbols by Coq's defined symbols.

func mapDefault(str string) string {
	return strings.ReplaceAll(strings.ReplaceAll(str, "$i", "goeland_U"), "$o", "Prop")
}
