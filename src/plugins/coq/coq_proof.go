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
	"strings"

	btps "github.com/GoelandProver/Goeland/types/basic-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

// ----------------------------------------------------------------------------
// Prints theorem.

// Section: print theorem
// Functions: printTheorem, coqMapConnectorsCreation
// Prints the theorem from the given formula with Coq format.
// TODO:
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

/* Prints preamble depending on the type of the form. */
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
			return fmt.Sprintf("  intros H%d. apply NNPP. intro H%d.\n", introduce(lf[0]), index), true
		}
		return fmt.Sprintf("  intros goeland_ax. %sapply NNPP. intro H%d.\n", constructHypotheses(imp.GetF1()), index), true
	}
}

/* Properly destruct hypotheses. */
func constructHypotheses(and btps.Form) string {
	str := ""
	lf := and.(btps.And).GetLF()
	for i := 0; i < len(lf)-1; i += 1 {
		if i == len(lf)-2 {
			str += fmt.Sprintf("destruct goeland_ax as [ H%d H%d ]. ", introduce(lf[i]), introduce(lf[i+1]))
		} else {
			str += fmt.Sprintf("destruct goeland_ax as [ H%d goeland_ax ]. ", introduce(lf[i]))
		}
	}
	return str
}

/* Applies oneStep repeatdly with beautiful prints */
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
			before := copyFormulas()
			resultingProof += coqProofFromGoeland(child, nested+1)
			formulasIntroduced = before
		}
	}

	return resultingProof
}

func copyFormulas() []btps.Form {
	cp := make([]btps.Form, len(formulasIntroduced))
	copy(cp, formulasIntroduced)
	return cp
}

/* Main conversion function. */
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
		result = fmt.Sprintf("apply H%d. goeland_intro H%d.", get(p.Formula), introduce(p.GetResultFormulas()[0].GetFL()[0]))
	case "ALPHA_AND":
		result = fmt.Sprintf("apply (goeland_and_s _ _ H%d). ", get(p.GetFormula()))
		result += strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), ". ") + "."
	case "ALPHA_NOT_OR":
		result = fmt.Sprintf("apply (goeland_notor_s _ _ H%d). ", get(p.GetFormula()))
		result += strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), ". ") + "."
	case "ALPHA_NOT_IMPLY":
		result = fmt.Sprintf("apply (goeland_notimply_s _ _ H%d). ", get(p.GetFormula()))
		result += strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), ". ") + "."
	case "BETA_NOT_AND":
		result = fmt.Sprintf("apply (goeland_notand_s _ _ H%d); ", get(p.GetFormula()))
		result += "[ " + strings.Join(nAryIntro(unfoldResultFormulas(p.GetResultFormulas())), " | ") + " ]."
	case "BETA_OR":
		result = fmt.Sprintf("apply (goeland_or_s _ _ H%d); ", get(p.GetFormula()))
		result += "[ " + strings.Join(nAryIntro(unfoldResultFormulas(p.GetResultFormulas())), " | ") + " ]."
	case "BETA_IMPLY":
		result = fmt.Sprintf("apply (goeland_imply_s _ _ H%d); ", get(p.GetFormula()))
		result += "[ " + strings.Join(nAryIntro(unfoldResultFormulas(p.GetResultFormulas())), " | ") + " ]."
	case "BETA_EQUIV":
		result = fmt.Sprintf("apply (goeland_equiv_s _ _ H%d); ", get(p.GetFormula()))
		result += "[ " + strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), "; ") + " | " + strings.Join(nAryIntro(p.GetResultFormulas()[1].GetFL()), "; ") + " ]."
	case "BETA_NOT_EQUIV":
		result = fmt.Sprintf("apply (goeland_notequiv_s _ _ H%d); ", get(p.GetFormula()))
		result += "[ " + strings.Join(nAryIntro(p.GetResultFormulas()[0].GetFL()), "; ") + " | " + strings.Join(nAryIntro(p.GetResultFormulas()[1].GetFL()), "; ") + " ]."
	case "DELTA_EXISTS":
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		result = applyNTimes("elim H%s. goeland_intro %s. goeland_intro H%s.", get(p.GetFormula()), introduce(resultForm), createConsts(p.GetFormula(), resultForm))
	case "DELTA_NOT_FORALL":
		// Apply + new const
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		result = applyNTimes("apply H%s. goeland_intro %s. apply NNPP. goeland_intro H%s.", get(p.GetFormula()), introduce(resultForm), createConsts(p.GetFormula(), resultForm))
	case "GAMMA_FORALL":
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		// Reintroduction problem
		// p.GetFormulaUse()
		result = applyNTimes("generalize (H%s %s). goeland_intro H%s.", get(p.GetFormula()), introduce(resultForm), instanciate(p.GetFormula(), resultForm))
	case "GAMMA_NOT_EXISTS":
		resultForm := p.GetResultFormulas()[0].GetFL()[0]
		// Reintroduction problem
		// p.GetFormulaUse()
		result = applyNTimes("apply H%s. exists %s. apply NNPP. goeland_intro H%s.", get(p.GetFormula()), introduce(resultForm), instanciate(p.GetFormula(), resultForm))
	}
	return result
}

/* Always use this function to apply a formula */
func get(form btps.Form) int {
	for i, f := range formulasIntroduced {
		if f.Equals(form) {
			return i
		}
	}
	fmt.Println(form.ToString())
	return -1
}

/* Always use this function to intro a formula */
func introduce(form btps.Form) int {
	result := len(formulasIntroduced)
	formulasIntroduced = append(formulasIntroduced, form)
	return result
}

/* Applies a command N times. Creates N-1 hypotheses with an index. */
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

/* Introduces n times. */
func nAryIntro(fl btps.FormList) []string {
	result := []string{}
	for _, form := range fl {
		result = append(result, fmt.Sprintf("goeland_intro H%d", introduce(form)))
	}
	return result
}

/* Creates skolemized terms for delta rules. */
func createConsts(form, resultForm btps.Form) []string {
	terms := inOneButNotInOther(form, resultForm)
	constants := []string{}
	for _, term := range terms {
		constants = append(constants, fmt.Sprintf("sko_%d", len(constantsCreated)))
		fmt.Printf("sko_%d : %s\n", len(constantsCreated), term.ToString())
		constantsCreated = append(constantsCreated, term)
	}
	return constants
}

/* Instanciates gamma rules with the actual terms. */
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

/* Gets the term corresponding to the variables in the right order. */
func inOneButNotInOther(form1, form2 btps.Form) []btps.Term {
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
