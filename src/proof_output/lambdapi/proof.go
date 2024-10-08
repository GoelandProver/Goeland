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
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/proof_output/gs3"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func makeLambdaPiProofFromGS3(proof *gs3.GS3Sequent) string {
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	var resultingString string

	resultingString = makeTheorem(axioms, conjecture)

	formula := proof.GetTargetForm()

	formulaStr := toCorrectString(formula)
	resultingString += fmt.Sprintf("λ (%s : ϵ %s),\n", addToContext(formula), formulaStr)
	proofStr := makeProofStep(proof)
	resultingString += proofStr

	return resultingString + ";\n"
}

func makeProofStep(proof *gs3.GS3Sequent) string {
	var resultingString string
	switch proof.Rule() {
	// Closure.
	case gs3.AX:
		resultingString = closureAxiom(proof)

	// Alpha rules
	case gs3.NNOT:
		resultingString = alphaNotNot(proof)
	case gs3.AND:
		resultingString = alphaAnd(proof)
	case gs3.NOR:
		resultingString = alphaNotOr(proof)
	case gs3.NIMP:
		resultingString = alphaNotImp(proof)

	// Beta rules
	case gs3.OR:
		resultingString = betaOr(proof)
	case gs3.NAND:
		resultingString = betaNotAnd(proof)
	case gs3.IMP:
		resultingString = betaImp(proof)
	case gs3.EQU:
		resultingString = betaEqu(proof)
	case gs3.NEQU:
		resultingString = betaNotEqu(proof)

		// Delta rules
	case gs3.EX:
		resultingString = deltaEx(proof)
	case gs3.NALL:
		resultingString = deltaNotAll(proof)

	// Gamma rules
	case gs3.ALL:
		resultingString = gammaAll(proof)
	case gs3.NEX:
		resultingString = gammaNotEx(proof)

	// Weakening rule
	case gs3.W:
		global.PrintError("LP", "Trying to do a weakening rule but it's not implemented yet")
	}

	return "//" + toCorrectString(proof.GetTargetForm()) + "\n" + resultingString
}

func closureAxiom(proof *gs3.GS3Sequent) string {
	target, notTarget := getPosAndNeg(proof.GetTargetForm())

	result := ""

	switch target.(type) {
	case basictypes.Pred:
		result = fmt.Sprintf("GS3axiom (%s) (%s) (%s)\n", toCorrectString(target), getFromContext(target), getFromContext(notTarget))
	case basictypes.Top:
		result = fmt.Sprintf("GS3ntop (%s)\n", getFromContext(notTarget))
	case basictypes.Bot:
		result = fmt.Sprintf("GS3bot (%s)\n", getFromContext(target))
	}

	return result
}

func getPosAndNeg(target basictypes.Form) (pos, neg basictypes.Form) {
	if neg, ok := target.(basictypes.Not); ok {
		return neg.GetForm(), neg
	}
	return target, basictypes.RefuteForm(target)
}

func allRules(rule string, target basictypes.Form, composingForms *basictypes.FormList, nexts []*gs3.GS3Sequent, children []*basictypes.FormList) string {
	result := rule + "\n"

	for _, composingForm := range composingForms.Slice() {
		result += "(" + toCorrectString(composingForm) + ")\n"
	}

	result += getRecursionUnivStr(nexts, children)

	result += fmt.Sprintf("(%s)\n", getFromContext(target))

	return result
}

func allRulesQuantUniv(rule string, target basictypes.Form, composingForms *basictypes.FormList, nexts []*gs3.GS3Sequent, children []*basictypes.FormList, vars []basictypes.Var, termGen basictypes.Term) string {

	quant := ""
	typeStr := vars[0].GetTypeApp().ToString()
	switch typed := target.(type) {
	case basictypes.All:
		quant = lambdaPiMapConnectors[basictypes.AllQuant]
		typeStr = typed.GetVarList()[0].GetTypeHint().ToString()
	case basictypes.Not:
		quant = lambdaPiMapConnectors[basictypes.ExQuant]
	}

	typeStr = mapDefault(typeStr)

	result := rule + "\n"
	result += "(" + typeStr + ")\n"
	result += "(%s, " + toCorrectString(composingForms.Get(0)) + ")\n"

	varStrs := []string{}
	for _, singleVar := range vars {
		varStrs = append(varStrs, toLambdaIntroString(singleVar, singleVar.GetTypeHint().ToString()))
	}
	result = fmt.Sprintf(result, strings.Join(varStrs, ", "+quant+" "))

	result += "(" + toCorrectString(termGen) + ")\n"

	result += getRecursionUnivStr(nexts, children)

	result += fmt.Sprintf("(%s)\n", getFromContext(target))

	return result
}

func getRecursionUnivStr(nexts []*gs3.GS3Sequent, children []*basictypes.FormList) (result string) {
	for i, next := range nexts {
		result += "(\n"
		for _, childForm := range children[i].Slice() {
			result += toLambdaString(childForm, toCorrectString(childForm)) + ",\n"
		}
		proofStr := makeProofStep(next)
		result += proofStr
		result += ")\n"
	}
	return result
}

func allRulesQuantExist(rule string, target basictypes.Form, composingForms *basictypes.FormList, nexts []*gs3.GS3Sequent, children []*basictypes.FormList, vars []basictypes.Var, termGen basictypes.Term) string {
	quant := ""
	typeStr := vars[0].GetTypeApp().ToString()
	switch typed := target.(type) {
	case basictypes.Ex:
		quant = lambdaPiMapConnectors[basictypes.ExQuant]
		typeStr = typed.GetVarList()[0].GetTypeHint().ToString()
	case basictypes.Not:
		quant = lambdaPiMapConnectors[basictypes.AllQuant]
	}

	typeStr = mapDefault(typeStr)

	result := rule + "\n"
	result += "(" + typeStr + ")\n"
	result += "(%s, " + toCorrectString(composingForms.Get(0)) + ")\n"

	varStrs := []string{}
	for _, singleVar := range vars {
		varStrs = append(varStrs, toLambdaIntroString(singleVar, singleVar.GetTypeHint().ToString()))
	}
	result = fmt.Sprintf(result, strings.Join(varStrs, ", "+quant+" "))

	result += getRecursionExistStr(nexts, children, termGen)

	result += fmt.Sprintf("(%s)\n", getFromContext(target))

	return result
}

func getRecursionExistStr(nexts []*gs3.GS3Sequent, children []*basictypes.FormList, termGen basictypes.Term) (result string) {
	for i, next := range nexts {
		result += "(\n"
		typesStr := ""
		if typed, ok := termGen.(basictypes.Fun); ok {
			typesStr = mapDefault(typed.GetTypeHint().ToString())
		}
		result += toLambdaIntroString(termGen, typesStr) + ",\n"
		for _, childForm := range children[i].Slice() {
			result += toLambdaString(childForm, toCorrectString(childForm)) + ",\n"
		}
		proofStr := makeProofStep(next)
		result += proofStr
		result += ")\n"
	}
	return result
}

func alphaNotNot(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()
	return allRules("GS3nnot", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func alphaAnd(proof *gs3.GS3Sequent) string {
	return allRules("GS3and", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func alphaNotOr(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()
	return allRules("GS3nor", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func alphaNotImp(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()
	return allRules("GS3nimp", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaOr(proof *gs3.GS3Sequent) string {
	return allRules("GS3or", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaNotAnd(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()
	return allRules("GS3nand", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaImp(proof *gs3.GS3Sequent) string {
	return allRules("GS3imp", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaEqu(proof *gs3.GS3Sequent) string {
	return allRules("GS3equ", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaNotEqu(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()
	return allRules("GS3nequ", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func deltaEx(proof *gs3.GS3Sequent) string {
	var formulaEx basictypes.Ex
	if form, ok := proof.GetTargetForm().(basictypes.Ex); ok {
		formulaEx = form
	}

	return allRulesQuantExist("GS3ex", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren(), formulaEx.GetVarList(), proof.TermGenerated())
}

func deltaNotAll(proof *gs3.GS3Sequent) string {
	var formulaAll basictypes.All
	if notForm, ok := proof.GetTargetForm().(basictypes.Not); ok {
		if form, ok := notForm.GetForm().(basictypes.All); ok {
			formulaAll = form
		}
	}
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()

	return allRulesQuantExist("GS3nall", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren(), formulaAll.GetVarList(), proof.TermGenerated())
}

func gammaAll(proof *gs3.GS3Sequent) string {
	var formulaAll basictypes.All
	if form, ok := proof.GetTargetForm().(basictypes.All); ok {
		formulaAll = form
	}

	return allRulesQuantUniv("GS3all", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren(), formulaAll.GetVarList(), proof.TermGenerated())
}

func gammaNotEx(proof *gs3.GS3Sequent) string {
	var formulaEx basictypes.Ex
	if notForm, ok := proof.GetTargetForm().(basictypes.Not); ok {
		if form, ok := notForm.GetForm().(basictypes.Ex); ok {
			formulaEx = form
		}
	}
	composingForms := proof.GetTargetForm().GetChildFormulas().Get(0).GetChildFormulas()

	return allRulesQuantUniv("GS3nex", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren(), formulaEx.GetVarList(), proof.TermGenerated())
}

// Processes the formula that was proven by Goéland.
func processMainFormula(form basictypes.Form) (*basictypes.FormList, basictypes.Form) {
	formList := basictypes.NewFormList()
	switch nf := form.(type) {
	case basictypes.Not:
		form = nf.GetForm()
	case basictypes.And:
		last := nf.FormList.Len() - 1
		formList = basictypes.NewFormList(nf.FormList.GetElements(0, last)...)
		form = nf.FormList.Get(last).(basictypes.Not).GetForm()
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms *basictypes.FormList, conjecture basictypes.Form) string {
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(global.GetProblemName(), ".", "_"), "=", "_"), "+", "_")
	axioms = axioms.Copy()
	axioms.Append(basictypes.MakerNot(conjecture))
	formattedProblem := makeImpChain(axioms)
	return "symbol goeland_" + problemName + " : \nϵ " + toCorrectString(formattedProblem) + " → ϵ ⊥ ≔ \n"
}

// If [F1, F2, F3] is a formlist, then this function returns F1 -> (F2 -> F3).
func makeImpChain(forms *basictypes.FormList) basictypes.Form {
	last := forms.Len() - 1
	form := forms.Get(last)
	for i := last - 1; i >= 0; i-- {
		form = basictypes.MakerImp(forms.Get(i), form)
	}
	return form
}
