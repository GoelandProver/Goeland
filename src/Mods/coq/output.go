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
* This file provides a coq output for Goeland's proofs.
**/

package coq

import (
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/gs3"
	"github.com/GoelandProver/Goeland/Search"
)

var contextEnabled bool = false

var CoqOutputProofStruct = &Search.OutputProofStruct{ProofOutput: MakeCoqOutput, Name: "Coq", Extension: ".v"}

// ----------------------------------------------------------------------------
// Plugin initialisation and main function to call.

// Section: init
// Functions: MakeCoqOutput
// Main functions of the coq module.
// TODO:
//	* Write the context for TFF problems

func MakeCoqOutput(prf []Search.ProofStruct, meta Lib.List[AST.Meta]) string {
	if len(prf) == 0 {
		Glob.PrintError("Coq", "Nothing to output")
		return ""
	}

	// Transform tableaux's proof in GS3 proof
	return MakeCoqProof(gs3.MakeGS3Proof(prf), meta)
}

var MakeCoqProof = func(proof *gs3.GS3Sequent, meta Lib.List[AST.Meta]) string {
	contextString := makeContextIfNeeded(proof.GetTargetForm(), meta)
	proofString := makeCoqProofFromGS3(proof)
	return contextString + "\n" + proofString
}

// Replace defined symbols by Coq's defined symbols.
func mapDefault(str string) string {
	return strings.ReplaceAll(strings.ReplaceAll(str, "$i", "goeland_U"), "$o", "Prop")
}
func coqMapConnectors() map[AST.FormulaType]string {
	return map[AST.FormulaType]string{
		AST.AndConn:        "/\\",
		AST.OrConn:         "\\/",
		AST.ImpConn:        "->",
		AST.EquConn:        "<->",
		AST.NotConn:        "~",
		AST.TopType:        "True",
		AST.BotType:        "False",
		AST.AllQuant:       "forall",
		AST.ExQuant:        "exists",
		AST.AllTypeQuant:   "forall",
		AST.QuantVarOpen:   "(",
		AST.QuantVarClose:  ")",
		AST.QuantVarSep:    ",",
		AST.PredEmpty:      "",
		AST.PredTypeVarSep: ",",
		AST.TypeVarType:    "Type",
	}
}

// Context flag utility function
func GetContextEnabled() bool {
	return contextEnabled
}

// Context flag utility function
func SetContextEnabled(ce bool) {
	contextEnabled = true
}
