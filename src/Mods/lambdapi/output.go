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
package lambdapi

import (
	"fmt"
	"regexp"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/gs3"
	"github.com/GoelandProver/Goeland/Search"
)

var contextEnabled bool = false
var debug Glob.Debugger
var LambdapiOutputProofStruct = &Search.OutputProofStruct{ProofOutput: MakeLambdapiOutput, Name: "Lambdapi", Extension: ".lp"}

// ----------------------------------------------------------------------------
// Plugin initialisation and main function to call.

// Section: init
// Functions: MakeLambdapiOutput
// Main functions of the lambdapi module.
// TODO:
//	* Write the context for TFF problems

func InitDebugger() {
	debug = Glob.CreateDebugger("LambdaPi")
}

func MakeLambdapiOutput(prf []Search.ProofStruct, meta Lib.List[AST.Meta]) string {
	if len(prf) == 0 {
		Glob.Fatal("LambdaPi", "Nothing to output")
	}

	connectives := LambdapiPrinterConnectives()
	printer := AST.Printer{PrinterAction: LambdapiPrinterAction(), PrinterConnective: &connectives}
	AST.SetPrinter(printer)

	// Transform tableaux's proof in GS3 proof
	return MakeLambdaPiProof(gs3.MakeGS3Proof(prf), meta)
}

func LambdapiPrinterConnectives() AST.PrinterConnective {
	return AST.MkPrinterConnective(
		"LambdapiPrinterConnectives",
		map[AST.Connective]string{
			AST.ConnAll: "∀α λ",
			AST.ConnEx:  "∃α λ",
			AST.ConnAnd: " ∧ ",
			AST.ConnOr:  " ∨ ",
			AST.ConnImp: "⇒",
			AST.ConnEqu: "⇔",
			AST.ConnTop: "⊤",
			AST.ConnBot: "⊥",
			AST.ConnNot: "¬ ",

			AST.ConnPi:   "∀",
			AST.ConnMap:  "→",
			AST.ConnProd: "→",

			AST.SepArgs:       " ",
			AST.SepTyArgs:     " ",
			AST.SepArgsTyArgs: " ",
			AST.SepVarsForm:   ", ",
			AST.SepTyVars:     " ",
			AST.SepVarTy:      "",

			AST.SurQuantStart:      "",
			AST.SurQuantEnd:        "",
			AST.SurFunctionalStart: " ",
			AST.SurFunctionalEnd:   "",
		},
	)
}

func LambdapiPrinterAction() AST.PrinterAction {
	connectives := LambdapiPrinterConnectives()

	sanitize_type := func(ty_str string) string {
		replace := map[string]string{
			"$i":     "τ (ι)",
			"$o":     "Prop",
			"$tType": "Type",
			// FIXME: define a replacement for every defined stuff
		}
		for k, v := range replace {
			ty_str = strings.ReplaceAll(ty_str, k, v)
		}
		return ty_str
	}
	lambdapi_action := AST.MkPrinterAction(
		func(s string) string {
			reg := regexp.MustCompile("([^∀∃]*)(∀α|∃α) λ ([^,]+), ([^∀∃]*)")
			matches := reg.FindAllStringSubmatch(s, -1)

			if len(matches) == 0 {
				return s
			}

			// Properly format quantifiers: Q λ (X1 : t1), Q λ (X2 : t2), ... instead of
			// Q λ (X1 : t1) (X2 : t2) ..., ...
			result_string := ""
			for _, match := range matches {
				result_string += match[1]
				quantifier := match[2]
				variables := match[3]
				ed := match[4]
				variables_list := strings.Split(variables, ") (")
				for i, variable := range variables_list {
					prefix := "("
					suffix := ")"
					if i == 0 {
						prefix = ""
					}
					if i == len(variables_list)-1 {
						suffix = ""
					}
					result_string += quantifier + " λ " + prefix + variable + suffix + ", "
				}
				result_string += ed
			}
			return result_string
		},
		func(i AST.Id) string { return i.GetName() },
		AST.PrinterIdentity2[int],
		func(metaName string, index int) string { return fmt.Sprintf("%s_%d", metaName, index) },
		sanitize_type,
		func(typed_var Lib.Pair[string, AST.Ty]) string {
			return fmt.Sprintf("(%s : %s)", typed_var.Fst, sanitize_type(typed_var.Snd.ToString()))
		},
		func(id AST.Id, tys Lib.List[string], args Lib.List[string]) string {
			if strings.Contains(id.GetName(), "sko") {
				return id.ToString()
			} else {
				return connectives.DefaultOnFunctionalArgs(id, tys, args)
			}
		},
	)
	lambdapi_action = lambdapi_action.Compose(AST.SanitizerAction(connectives, []string{"@"}))
	return lambdapi_action.Compose(AST.RemoveSuperfluousParenthesesAction(connectives))
}

var MakeLambdaPiProof = func(proof *gs3.GS3Sequent, meta Lib.List[AST.Meta]) string {
	contextString := makeContextIfNeeded(proof.GetTargetForm(), meta)
	proofString := makeLambdaPiProofFromGS3(proof)
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
