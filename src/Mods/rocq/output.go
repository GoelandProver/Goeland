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
* This file provides a rocq output for Goeland's proofs.
**/

package rocq

import (
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/gs3"
	"github.com/GoelandProver/Goeland/Search"
)

var contextEnabled bool = false

var RocqOutputProofStruct = &Search.OutputProofStruct{ProofOutput: MakeRocqOutput, Name: "Rocq", Extension: ".v"}

// ----------------------------------------------------------------------------
// Plugin initialisation and main function to call.

func MakeRocqOutput(prf []Search.ProofStruct, meta Lib.List[AST.Meta]) string {
	if len(prf) == 0 {
		Glob.PrintError("Rocq", "Nothing to output")
		return ""
	}

	// Setup Rocq printer
	connectives := RocqPrinterConnectives()
	printer := AST.Printer{PrinterAction: RocqPrinterAction(), PrinterConnective: &connectives}
	AST.SetPrinter(printer)

	// Transform tableaux's proof in GS3 proof
	return MakeRocqProof(gs3.MakeGS3Proof(prf), meta)
}

func RocqPrinterConnectives() AST.PrinterConnective {
	return AST.MkPrinterConnective(
		"RocqPrinterConnective",
		map[AST.Connective]string{
			AST.ConnAll: "forall",
			AST.ConnEx:  "exists",
			AST.ConnAnd: " /\\ ",
			AST.ConnOr:  " \\/ ",
			AST.ConnImp: "->",
			AST.ConnEqu: "<->",
			AST.ConnTop: "True",
			AST.ConnBot: "False",

			AST.ConnPi:  "forall",
			AST.ConnMap: "->",

			AST.SepVarsForm:   ", ",
			AST.SepTyArgs:     ", ",
			AST.SepArgsTyArgs: ", ",
			AST.SepTyVars:     ", ",
			AST.SepVarTy:      "",

			AST.SurQuantStart: "",
			AST.SurQuantEnd:   "",
		},
	)
}

func RocqPrinterAction() AST.PrinterAction {
	connectives := RocqPrinterConnectives()
	coq_action := AST.MkPrinterAction(
		AST.PrinterIdentity,
		func(i AST.Id) string {
			// FIXME: if we introduce any other forbidden char, add it in this list
			forbidden_chars := []string{"@"}
			name := i.GetName()
			for _, char := range forbidden_chars {
				name = strings.ReplaceAll(name, char, "_")
			}
			return name
		},
		AST.PrinterIdentity2[int],
		AST.PrinterIdentity2[int],
		func(ty_str string) string {
			replace := map[string]string{
				"$i":     "goeland_U",
				"$o":     "Prop",
				"$tType": "Type",
				// FIXME: define a replacement for every defined stuff
			}
			for k, v := range replace {
				ty_str = strings.ReplaceAll(ty_str, k, v)
			}
			return ty_str
		},
		func(p Lib.Pair[string, AST.Ty]) string { return p.Fst },
	)
	return AST.RemoveSuperfluousParenthesesAction(connectives).Compose(coq_action)
}

var MakeRocqProof = func(proof *gs3.GS3Sequent, meta Lib.List[AST.Meta]) string {
	contextString := makeContextIfNeeded(proof.GetTargetForm(), meta)
	proofString := makeRocqProofFromGS3(proof)
	return contextString + "\n" + proofString
}

// Context flag utility function
func GetContextEnabled() bool {
	return contextEnabled
}

// Context flag utility function
func SetContextEnabled(ce bool) {
	contextEnabled = true
}
