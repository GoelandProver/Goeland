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

/****************/
/* coq_proof.go */
/****************/

/**
* This file provides a coq proof from Goéland's proof.
**/

package coq

import (
	"fmt"
	"strconv"
	"strings"

	global "github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/dmt"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
	ctps "github.com/GoelandProver/Goeland/types/complex-types"

	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

// ----------------------------------------------------------------------------
// Prints theorem.

// Section: print theorem
// Functions: printTheorem, coqMapConnectorsCreation
// Prints the theorem from the given formula with Coq format.
// TODO:
//	* print problem name in the theorem.

func printTheorem(axioms btps.FormList, formula btps.Form) string {
	result := ""

	process := func(str string) string {
		return strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(str, ".", "_"), "=", "_"), "+", "_")
	}

	// Deduction modulo theory
	if global.IsLoaded("dmt") {
		result += "\n(* REWRITE RULES BEGIN *)\n"
		// Prints each registered axiom in the proof
		for _, form := range dmt.GetRegisteredAxioms() {
			result += fmt.Sprintf(
				"Axiom goeland_axiom_%d : %s.\n",
				getAtomicIndex(form),
				mapDefault(form.ToMappedString(coqMapConnectorsCreation(), false)),
			)
		}
		result += "(* REWRITE RULES END *)\n\n"
	}

	if len(axioms) > 0 {
		result += "\n(* PROBLEM'S AXIOMS BEGIN *)\n"
		// Print problem's axioms as Coq's axioms.
		axiomsRegistered = axioms
		for _, axiom := range axioms {
			result += fmt.Sprintf("Axiom goeland_axiom_%d : %s.\n", axiom.GetIndex(), mapDefault(axiom.ToMappedString(coqMapConnectorsCreation(), false)))
		}
		result += "(* PROBLEM'S AXIOMS END *)\n\n"
	}

	result += "(* PROOF BEGIN *)\n"
	// Theorem
	result += "Theorem goeland_proof_of_" + process(global.GetProblemName()) + " : " + mapDefault(formula.ToMappedString(coqMapConnectorsCreation(), false)) + ".\n"
	return result
}

func removeNot(form btps.Form) btps.Form {
	if not, isNot := form.(btps.Not); isNot {
		return not.GetForm()
	}
	return form
}

func getAtomicIndex(form btps.Form) int {
	index := -1

	for {
		if all, isAll := form.(btps.All); isAll {
			form = all.GetForm()
		} else {
			break
		}
	}

	switch f := form.(type) {
	case btps.Imp:
		index = removeNot(f.GetF1()).GetIndex()
	case btps.Equ:
		switch nf := f.GetF1().(type) {
		case btps.Pred:
			index = nf.GetIndex()
		case btps.Not:
			if pred, isPred := nf.GetForm().(btps.Pred); isPred {
				index = pred.GetIndex()
			}
		default:
			index = removeNot(f.GetF2()).GetIndex()
		}
	}

	return index
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

/* Prints preamble depending on the type of the form. */
func proofPreamble(root btps.Form, formulaIntroduced *ctps.IntAndFormList) string {
	return fmt.Sprintf("  apply NNPP. intro H%d.\n", introduce(btps.RefuteForm(root), formulaIntroduced))
}

/* Applies oneStep repeatdly with beautiful prints */
func coqProofFromGoeland(proofs []proof.ProofStruct, nested int, printStar bool, formulasIntroduced ctps.IntAndFormList, constantsCreated btps.TermList) string {
	var resulting_formulas []ctps.IntAndFormList
	var proofOS string

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

	resultingProof := strings.Repeat(" ", nested*2)
	if printStar {
		resultingProof += strings.Repeat("*", nested) + " "
	} else {
		resultingProof += strings.Repeat(" ", nested+1)
	}

	if nested == 0 {
		resultingProof += " "
	}

	failed := 0
	for i, proof := range proofs {
		proofOS, resulting_formulas = proofOneStep(proof, &formulasIntroduced, &constantsCreated)
		if proofOS != "" {
			resultingProof += preamble(nested, i-failed) + proofOS + "\n"
		} else {
			failed += 1
		}
	}

	lastProof := proofs[len(proofs)-1]
	if len(lastProof.GetChildren()) > 0 {
		if len(lastProof.GetChildren()) == 1 {
			resultingProof += coqProofFromGoeland(lastProof.GetChildren()[0], nested, false, resulting_formulas[0], constantsCreated)
		} else {
			for i, child := range lastProof.GetChildren() {
				resultingProof += coqProofFromGoeland(child, nested+1, true, resulting_formulas[i].Copy(), constantsCreated.Copy())
			}
		}
	}

	return resultingProof
}

func removeUnusedAxioms(proof string) string {
	lines := strings.Split(proof, "\n")
	resultingLines := []string{}

	for _, line := range lines {
		if strings.Contains(line, "Axiom goeland_axiom") {
			found := false
			for _, usedAx := range usedAxioms {
				if strings.Contains(line, fmt.Sprintf("Axiom goeland_axiom_%d", usedAx)) {
					found = true
				}
			}
			if found {
				resultingLines = append(resultingLines, line)
			}
		} else {
			resultingLines = append(resultingLines, line)
		}
	}

	return strings.Join(resultingLines, "\n")
}

/* Main conversion function. */
func proofOneStep(p proof.ProofStruct, formulasIntroduced *ctps.IntAndFormList, constantsCreated *btps.TermList) (string, []ctps.IntAndFormList) {
	resulting_formulas := make([]ctps.IntAndFormList, 2)
	var resulting_string []string

	unfoldResultFormulas := func(ifl []proof.IntFormAndTermsList) btps.FormList {
		fl := btps.MakeEmptyFormList()
		for _, iform := range ifl {
			fl = append(fl, iform.GetFL().ExtractForms()[0])
		}
		return fl
	}

	result := ""
	switch p.Rule_name {
	case "CLOSURE":
		if pred, isPred := p.GetFormula().GetForm().(btps.Pred); isPred && pred.GetID().Equals(btps.Id_eq) {
			result = "congruence."
		} else {
			result = "auto."
		}
		//result = fmt.Sprintf("apply H%d. assumption.", proof.GetFormula().GetIndex())
	case "ALPHA_NOT_NOT":
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply %s. goeland_intro H%d.", get_res, introduce(p.GetResultFormulas()[0].GetFL().ExtractForms()[0], formulasIntroduced))
	case "ALPHA_AND":
		resulting_string, _ = nAryIntro(p.GetResultFormulas()[0].GetFL().ExtractForms(), formulasIntroduced, false)
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply (goeland_and_s _ _ %s). ", get_res)
		result += strings.Join(resulting_string, ". ") + "."
	case "ALPHA_NOT_OR":
		resulting_string, _ = nAryIntro(p.GetResultFormulas()[0].GetFL().ExtractForms(), formulasIntroduced, false)
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply (goeland_notor_s _ _ %s). ", get_res)
		result += strings.Join(resulting_string, ". ") + "."
	case "ALPHA_NOT_IMPLY":
		resulting_string, _ = nAryIntro(p.GetResultFormulas()[0].GetFL().ExtractForms(), formulasIntroduced, false)
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply (goeland_notimply_s _ _ %s). ", get_res)
		result += strings.Join(resulting_string, ". ") + "."
	case "BETA_NOT_AND":
		resulting_string, resulting_formulas = nAryIntro(unfoldResultFormulas(p.GetResultFormulas()), formulasIntroduced, true)
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply (goeland_notand_s _ _ %s); ", get_res)
		result += "[ " + strings.Join(resulting_string, " | ") + " ]."
	case "BETA_OR":
		resulting_string, resulting_formulas = nAryIntro(unfoldResultFormulas(p.GetResultFormulas()), formulasIntroduced, true)
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply (goeland_or_s _ _ %s); ", get_res)
		result += "[ " + strings.Join(resulting_string, " | ") + " ]."
	case "BETA_IMPLY":
		resulting_string, resulting_formulas = nAryIntro(unfoldResultFormulas(p.GetResultFormulas()), formulasIntroduced, true)
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("apply (goeland_imply_s _ _ %s); ", get_res)
		result += "[ " + strings.Join(resulting_string, " | ") + " ]."
	case "BETA_EQUIV":
		resulting_formulas[0] = formulasIntroduced.Copy()
		resulting_formulas[1] = formulasIntroduced.Copy()

		resulting_string_1, _ := nAryIntro(p.GetResultFormulas()[0].GetFL().ExtractForms(), &resulting_formulas[0], false)
		resulting_string_2, _ := nAryIntro(p.GetResultFormulas()[1].GetFL().ExtractForms(), &resulting_formulas[1], false)

		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)

		result = fmt.Sprintf("apply (goeland_equiv_s _ _ %s); ", get_res)
		result += "[ " + strings.Join(resulting_string_1, "; ") + " | " + strings.Join(resulting_string_2, "; ") + " ]."
	case "BETA_NOT_EQUIV":
		resulting_formulas[0] = formulasIntroduced.Copy()
		resulting_formulas[1] = formulasIntroduced.Copy()

		resulting_string_1, _ := nAryIntro(p.GetResultFormulas()[0].GetFL().ExtractForms(), &resulting_formulas[0], false)
		resulting_string_2, _ := nAryIntro(p.GetResultFormulas()[1].GetFL().ExtractForms(), &resulting_formulas[1], false)

		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)

		result = fmt.Sprintf("apply (goeland_notequiv_s _ _ %s); ", get_res)
		result += "[ " + strings.Join(resulting_string_1, "; ") + " | " + strings.Join(resulting_string_2, "; ") + " ]."
	case "DELTA_EXISTS":
		resultForm := p.GetResultFormulas()[0].GetFL().ExtractForms()[0]
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = applyNTimes("elim %s. goeland_intro %s. goeland_intro H%s.", get_res, introduce(resultForm, formulasIntroduced), createConsts(p.GetFormula().GetForm(), resultForm, constantsCreated))
	case "DELTA_NOT_FORALL":
		// Apply + new const
		resultForm := p.GetResultFormulas()[0].GetFL().ExtractForms()[0]
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = applyNTimes("apply %s. goeland_intro %s. apply NNPP. goeland_intro H%s.", get_res, introduce(resultForm, formulasIntroduced), createConsts(p.GetFormula().GetForm(), resultForm, constantsCreated))
	case "GAMMA_FORALL":
		resultForm := p.GetResultFormulas()[0].GetFL().ExtractForms()[0]
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = applyNTimes("generalize (%s %s). goeland_intro H%s.", get_res, introduce(resultForm, formulasIntroduced), instanciate(p.GetFormula().GetForm(), resultForm, constantsCreated))
	case "GAMMA_NOT_EXISTS":
		resultForm := p.GetResultFormulas()[0].GetFL().ExtractForms()[0]
		get_res, _ := get(p.GetFormula().GetForm(), *formulasIntroduced)
		result = applyNTimes("apply %s. exists %s. apply NNPP. goeland_intro H%s.", get_res, introduce(resultForm, formulasIntroduced), instanciate(p.GetFormula().GetForm(), resultForm, constantsCreated))
	case "Rewrite":
		hypo, index_in_fi := get(p.Formula.GetForm(), *formulasIntroduced)
		result = fmt.Sprintf("rewrite goeland_axiom_%d in %s.", p.Id_dmt, hypo)
		addUsedAxiom(p.Id_dmt)
		hypoIndex, _ := strconv.Atoi(hypo[1:])
		// Update hypotheses introduced
		(*formulasIntroduced)[index_in_fi] = ctps.MakeIntAndForm(hypoIndex, p.GetResultFormulas()[0].GetFL().ExtractForms()[0])
	}
	return result, resulting_formulas
}

func addUsedAxiom(axiom int) {
	for _, usedAx := range usedAxioms {
		if usedAx == axiom {
			return
		}
	}
	usedAxioms = append(usedAxioms, axiom)
}

/* Always use this function to apply a formula */
func get(form btps.Form, formulasIntroduced ctps.IntAndFormList) (string, int) {
	for i, f := range formulasIntroduced {
		if f.GetForm().Equals(form) {
			return fmt.Sprintf("H%d", f.GetIndex()), i
		}
	}
	for _, ax := range axiomsRegistered {
		if ax.Equals(form) {
			addUsedAxiom(ax.GetIndex())
			return fmt.Sprintf("goeland_axiom_%d", ax.GetIndex()), -1
		}
	}
	global.PrintError("COQ", fmt.Sprintf("RETURN ERROR : %v", form.ToString()))
	return "error", -1
}

/* Always use this function to intro a formula */
func introduce(form btps.Form, formulasIntroduced *ctps.IntAndFormList) int {
	mutex_hypothesis.Lock()
	result := cpt_hypothesis
	cpt_hypothesis++
	mutex_hypothesis.Unlock()
	hypos[fmt.Sprintf("H%v", result)] = 0
	*formulasIntroduced = append(*formulasIntroduced, ctps.MakeIntAndForm(result, form))
	return result
}

/* Applies a command N times. Creates N-1 hypotheses with an index. */
func applyNTimes(command, start string, end int, vars []string) string {
	result := ""
	hypo := start
	for i, var_ := range vars {
		if i == len(vars)-1 {
			result += fmt.Sprintf(command, hypo, var_, fmt.Sprintf("%d", end))
		} else {
			baseHypo := start
			if baseHypo[0] != 'H' {
				baseHypo = "H" + baseHypo
			}

			nextHypo := fmt.Sprintf("%s_%d", baseHypo, hypos[baseHypo])
			hypos[baseHypo] = hypos[baseHypo] + 1

			result += fmt.Sprintf(command, hypo, var_, nextHypo[1:]) + " "

			hypo = nextHypo
		}
	}
	return result
}

/* Introduces n times. */
func nAryIntro(fl btps.FormList, formulasIntroduced *ctps.IntAndFormList, return_new bool) ([]string, []ctps.IntAndFormList) {
	result := []string{}
	resulting_formulas := make([]ctps.IntAndFormList, len(fl))
	if return_new {
		for i, form := range fl {
			resulting_formulas[i] = formulasIntroduced.Copy()
			result = append(result, fmt.Sprintf("goeland_intro H%d", introduce(form, &resulting_formulas[i])))
		}
	} else {
		for _, form := range fl {
			result = append(result, fmt.Sprintf("goeland_intro H%d", introduce(form, formulasIntroduced)))
		}
	}
	return result, resulting_formulas
}

/* Creates skolemized terms for delta rules. */
func createConsts(form, resultForm btps.Form, constantsCreated *btps.TermList) []string {
	terms := inOneButNotInOther(form, resultForm)
	constants := []string{}
	for _, term := range terms {
		constants = append(constants, fmt.Sprintf("sko_%d", len(*constantsCreated)))
		*constantsCreated = append(*constantsCreated, term)
	}
	return constants
}

/* Instanciates gamma rules with the actual terms. */
func instanciate(form, resultForm btps.Form, constantsCreated *btps.TermList) []string {
	toInstanciate := inOneButNotInOther(form, resultForm)
	result := []string{}
	for _, toInst := range toInstanciate {
		found := false
		for i, term := range *constantsCreated {
			if !found && term.Equals(toInst) {
				result = append(result, fmt.Sprintf("sko_%d", i))
				found = true
			}
		}
		if !found && toInst != nil {
			result = append(result, toInst.ToMappedString(coqMapConnectorsCreation(), false))
		}
	}
	return result
}

/* Gets the term corresponding to the variables. */
func inOneButNotInOther(form1, form2 btps.Form) btps.TermList {
	// Normalize
	if not, isNot := form1.(btps.Not); isNot {
		form1 = not.GetForm()
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

	// Same polarity between the 2 forms
	form2 = normalize(realForm, form2)

	// Get subterms
	subterms := findSubterms(realForm, varList)

	// Get corresponding terms in the other form
	mapping := getSubtermsOf(form2, subterms)

	// Returns a list of terms ordered properly
	result := []btps.Term{}

	for _, map_ := range mapping {
		for _, var_ := range varList {
			if var_.Equals(map_.var_) {
				result = append(result, map_.term)
			}
		}
	}

	return result
}

func normalize(form1, form2 btps.Form) btps.Form {
	countNot := 0
	formTest := form1
	for {
		if not, isNot := formTest.(btps.Not); isNot {
			formTest = not.GetForm()
			countNot += 1
		} else {
			break
		}
	}
	for {
		if not, isNot := form2.(btps.Not); isNot {
			form2 = not.GetForm()
		} else {
			break
		}
	}
	for countNot != 0 {
		form2 = btps.MakerNot(form2)
		countNot -= 1
	}
	return form2
}
