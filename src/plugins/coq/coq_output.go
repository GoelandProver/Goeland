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

// ----------------------------------------------------------------------------
// Plugin initialisation.

// Section: init
// Functions: InitFlag, MakeCoqOutput, makeCoqProof, processMainFormula
// Main functions of the coq module.
// TODO:
//	* Write the context

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
		// TODO: context
		resultingString += "(* CONTEXT BEGIN *)\n"
		resultingString += makeContext(proof[0].Formula)
		resultingString += "\n(* CONTEXT END *)\n\n"
	}
	resultingString += "(* PROOF BEGIN *)\n"
	resultingString += makeCoqProof(proof)
	resultingString += "(* PROOF END *)\n"
	return resultingString
}

func makeCoqProof(proofs []proof.ProofStruct) string {
	resultingString := ""
	// Modify first formula to prove validity
	firstFormula, index := processMainFormula(proofs[0].Formula)
	// Prints the theorem to prove
	resultingString += printTheorem(firstFormula)
	// Prints the proof
	resultingString += "Proof.\n"
	if isNNPP(firstFormula) {
		resultingString += "  apply NNPP.\n"
	} else {
		preambleString, hasHyp := proofPreamble(firstFormula, index)
		resultingString += preambleString
		if hasHyp {
			proofs = proofs[1:]
		}
		resultingString += coqProofFromGoeland(proofs, 0)
	}
	resultingString += "Qed.\n"
	return resultingString
}

func isNNPP(form btps.Form) bool {
	// Special case : ~~p -> p : exactly NNPP.
	imp, isImp := form.(btps.Imp)
	if isImp {
		if not, isNot := imp.GetF1().(btps.Not); isNot {
			if not2, isNot2 := not.GetForm().(btps.Not); isNot2 {
				if pred, isPred := not2.GetForm().(btps.Pred); isPred {
					if pred.Equals(imp.GetF2()) {
						return true
					}
				}
			}
		}
	}
	return false
}

func processMainFormula(form btps.Form) (btps.Form, int) {
	switch nf := form.(type) {
	case btps.Not:
		return nf.GetForm(), nf.GetIndex()
	case btps.And:
		lastForm := nf.GetLF()[len(nf.GetLF())-1].(btps.Not).GetForm()
		fl := nf.GetLF()[:len(nf.GetLF())-1]
		return btps.MakerImp(btps.MakeAnd(nf.GetIndex(), fl), lastForm), nf.GetLF()[len(nf.GetLF())-1].GetIndex()
	}
	return form, form.GetIndex()
}

// ----------------------------------------------------------------------------
// Prints theorem.

// Section: print theorem
// Functions: printTheorem, coqMapConnectorsCreation
// Prints the theorem from the given formula with Coq format.
// TODO:
//	* replace $i by the defined set of the context and $o by Prop.
//	* print problem name in the theorem.

func printTheorem(formula btps.Form) string {
	return "Theorem goeland_proof_of_ : " + /* global.GetProblemName()  +" : " + */ mapDefault(formula.ToMappedString(coqMapConnectorsCreation(), false)) + ".\n"
}

// Creates a map of operators and quantifiers for coq to print formulas with.
func coqMapConnectorsCreation() map[btps.FormulaType]string {
	return map[btps.FormulaType]string{
		btps.AndConn:        "/\\",
		btps.OrConn:         "\\/",
		btps.ImpConn:        "->",
		btps.EquConn:        "<->",
		btps.NotConn:        "~",
		btps.TopType:        "True",
		btps.BotType:        "False",
		btps.AllQuant:       "forall",
		btps.ExQuant:        "exists",
		btps.AllTypeQuant:   "forall",
		btps.QuantVarOpen:   "(",
		btps.QuantVarClose:  ")",
		btps.QuantVarSep:    ",",
		btps.PredEmpty:      "",
		btps.PredTypeVarSep: ",",
		btps.TypeVarType:    "Type",
	}
}

// ----------------------------------------------------------------------------
// Prints proof.

// Section: print proof
// Functions: proofPreamble, coqProofFromGoeland, proofOneStep, nAryIntro
// For each step of the proof, prints it in a coq format.
// TODO:

func proofPreamble(root btps.Form, index int) (string, bool) {
	imp, isImp := root.(btps.Imp)
	if !isImp {
		return fmt.Sprintf("  apply NNPP. intro H%d.\n", index), false
	} else {
		and, isAnd := imp.GetF1().(btps.And)
		if !isAnd {
			return fmt.Sprintf("  apply NNPP. intro H%d.\n", index), false
		}
		lf := and.GetLF()
		if len(lf) == 1 {
			return fmt.Sprintf("  intros H%d. apply NNPP. intro H%d.\n", lf[0].GetIndex(), index), true
		}
		return fmt.Sprintf("  intros goeland_ax. %sapply NNPP. intro H%d.\n", constructHypotheses(imp.GetF1()), index), true
	}
}

func constructHypotheses(and btps.Form) string {
	str := ""
	lf := and.(btps.And).GetLF()
	for i := 0; i < len(lf)-1; i += 1 {
		if i == len(lf)-2 {
			str += fmt.Sprintf("destruct goeland_ax as [ H%d H%d ]. ", lf[i].GetIndex(), lf[i+1].GetIndex())
		} else {
			str += fmt.Sprintf("destruct goeland_ax as [ H%d goeland_ax ]. ", lf[i].GetIndex())
		}
	}
	return str
}

func coqProofFromGoeland(proofs []proof.ProofStruct, nested int) string {
	// Beautiful print
	preamble := func(nested, i int) string {
		if i == 0 {
			return ""
		}
		if nested == 0 {
			return "  "
		}
		return strings.Repeat(" ", nested*3+1)
	}

	resultingProof := strings.Repeat(" ", nested*2) + strings.Repeat("*", nested) + " "

	if nested == 0 {
		resultingProof += " "
	}

	failed := 0
	for i, proof := range proofs {
		proofOS := proofOneStep(proof)
		if proofOS != "" {
			resultingProof += preamble(nested, i-failed) + proofOS + "\n"
		} else {
			failed += 1
		}
	}

	lastProof := proofs[len(proofs)-1]
	if len(lastProof.Children) > 0 {
		for _, child := range lastProof.GetChildren() {
			resultingProof += coqProofFromGoeland(child, nested+1)
		}
	}

	return resultingProof
}

func proofOneStep(p proof.ProofStruct) string {
	unfoldResultFormulas := func(ifl []proof.IntFormList) btps.FormList {
		fl := btps.FormList{}
		for _, iform := range ifl {
			fl = append(fl, iform.GetFL()[0])
		}
		return fl
	}

	result := ""
	switch p.Rule_name {
	case "CLOSURE":
		result = "auto."
		//result = fmt.Sprintf("apply H%d. assumption.", proof.GetFormula().GetIndex())
	case "ALPHA_NOT_NOT":
		result = fmt.Sprintf("apply H%d. goeland_intro H%d.", p.Formula.GetIndex(), p.GetResultFormulas()[0].GetFL()[0].GetIndex())
	case "ALPHA_AND":
		result = fmt.Sprintf("apply (goeland_and_s _ _ H%d). ", p.GetFormula().GetIndex())
		result += strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), ". ") + "."
	case "ALPHA_NOT_OR":
		result = fmt.Sprintf("apply (goeland_notor_s _ _ H%d). ", p.GetFormula().GetIndex())
		result += strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), ". ") + "."
	case "ALPHA_NOT_IMPLY":
		result = fmt.Sprintf("apply (goeland_notimply_s _ _ H%d). ", p.GetFormula().GetIndex())
		result += strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), ". ") + "."
	case "BETA_NOT_AND":
		result = fmt.Sprintf("apply (goeland_notand_s _ _ H%d); ", p.GetFormula().GetIndex())
		result += "[ " + strings.Join(nAryIntro(unfoldResultFormulas(p.GetResultFormulas())), " | ") + " ]."
	case "BETA_OR":
		result = fmt.Sprintf("apply (goeland_or_s _ _ H%d); ", p.GetFormula().GetIndex())
		result += "[ " + strings.Join(nAryIntro(unfoldResultFormulas(p.GetResultFormulas())), " | ") + " ]."
	case "BETA_IMPLY":
		result = fmt.Sprintf("apply (goeland_imply_s _ _ H%d); ", p.GetFormula().GetIndex())
		result += "[ " + strings.Join(nAryIntro(unfoldResultFormulas(p.GetResultFormulas())), " | ") + " ]."
	case "BETA_EQUIV":
		result = fmt.Sprintf("apply (goeland_equiv_s _ _ H%d); ", p.GetFormula().GetIndex())
		result += "[ " + strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), "; ") + " | " + strings.Join(nAryIntro(p.GetResultFormulas()[1].GetFL()), "; ") + " ]."
	case "BETA_NOT_EQUIV":
		result = fmt.Sprintf("apply (goeland_notequiv_s _ _ H%d); ", p.GetFormula().GetIndex())
		result += "[ " + strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), "; ") + " | " + strings.Join(nAryIntro(p.GetResultFormulas()[1].GetFL()), "; ") + " ]."
	case "DELTA_EXISTS":
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		result = applyNTimes("elim H%s. goeland_intro %s. goeland_intro H%s.", p.GetFormula().GetIndex(), resultForm.GetIndex(), createConsts(p.GetFormula(), resultForm))
	case "DELTA_NOT_FORALL":
		// Apply + new const
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		result = applyNTimes("apply H%s. goeland_intro %s. apply NNPP. goeland_intro H%s.", p.GetFormula().GetIndex(), resultForm.GetIndex(), createConsts(p.GetFormula(), resultForm))
	case "GAMMA_FORALL":
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		result = applyNTimes("generalize (H%s %s). goeland_intro H%s.", p.GetFormula().GetIndex(), resultForm.GetIndex(), instanciate(p.GetFormula(), resultForm))
	case "GAMMA_NOT_EXISTS":
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		result = applyNTimes("apply H%s. exists %s. apply NNPP. goeland_intro H%s.", p.GetFormula().GetIndex(), resultForm.GetIndex(), instanciate(p.GetFormula(), resultForm))
	}
	return result
}

func applyNTimes(command string, start, end int, vars []string) string {
	result := ""
	hypo := fmt.Sprintf("%d", start)
	for i, var_ := range vars {
		if i == len(vars)-1 {
			result += fmt.Sprintf(command, hypo, var_, fmt.Sprintf("%d", end))
		} else {
			nextHypo := fmt.Sprintf("%d_%d", start, i)
			result += fmt.Sprintf(command, hypo, var_, nextHypo) + " "
			hypo = nextHypo
		}
	}
	return result
}

func nAryIntro(fl btps.FormList) []string {
	result := []string{}
	for _, form := range fl {
		result = append(result, fmt.Sprintf("goeland_intro H%d", form.GetIndex()))
	}
	return result
}

func createConsts(form, resultForm btps.Form) []string {
	terms := inOneButNotInOther(form, resultForm)
	constants := []string{}
	for _, term := range terms {
		constants = append(constants, fmt.Sprintf("sko_%d", len(constantsCreated)))
		constantsCreated = append(constantsCreated, term)
	}
	return constants
}

func instanciate(form, resultForm btps.Form) []string {
	toInstanciate := inOneButNotInOther(form, resultForm)
	result := []string{}
	for _, toInst := range toInstanciate {
		found := false
		for i, term := range constantsCreated {
			if !found && term.Equals(toInst) {
				result = append(result, fmt.Sprintf("sko_%d", i))
				found = true
			}
		}
		if !found {
			result = append(result, toInst.ToMappedString(coqMapConnectorsCreation(), false))
		}
	}
	return result
}

func inOneButNotInOther(form1, form2 btps.Form) []btps.Term {
	// Normalize
	if not, isNot := form1.(btps.Not); isNot {
		form1 = not.GetForm()
	}
	if not, isNot := form2.(btps.Not); isNot {
		form2 = not.GetForm()
	}

	// Get var list
	var varList []btps.Var
	var realForm btps.Form
	switch f := form1.(type) {
	case btps.All:
		varList = f.GetVarList()
		realForm = f.GetForm()
	case btps.Ex:
		varList = f.GetVarList()
		realForm = f.GetForm()
		// TODO: AllType for typed problems
	}

	// Get subterms
	subterms := findSubterms(realForm, varList)

	// Get corresponding terms in the other form
	mapping := getSubtermsOf(form2, subterms)

	// Returns a list of terms ordered properly
	result := make([]btps.Term, len(varList))
	for _, map_ := range mapping {
		for i, var_ := range varList {
			if var_.Equals(map_.var_) {
				result[i] = map_.term
			}
		}
	}

	return result
}

// ----------------------------------------------------------------------------
// Search symbols and their type.

func mapDefault(str string) string {
	return strings.ReplaceAll(strings.ReplaceAll(str, "$i", "goeland_U"), "$o", "Prop")
}
