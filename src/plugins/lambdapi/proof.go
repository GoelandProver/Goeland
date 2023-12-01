package lambdapi

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
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
	case btps.Pred:
		result = fmt.Sprintf("GS3axiom (%s) (%s) (%s)\n", toCorrectString(target), getFromContext(target), getFromContext(notTarget))
	case btps.Top:
		result = fmt.Sprintf("GS3ntop (%s)\n", getFromContext(notTarget))
	case btps.Bot:
		result = fmt.Sprintf("GS3bot (%s)\n", getFromContext(target))
	}

	return result
}

func getPosAndNeg(target btps.Form) (pos, neg btps.Form) {
	if neg, ok := target.(btps.Not); ok {
		return neg.GetForm(), neg
	}
	return target, btps.RefuteForm(target)
}

func allRules(rule string, target btps.Form, composingForms []btps.Form, nexts []*gs3.GS3Sequent, children []btps.FormList) string {
	result := rule + "\n"

	for _, composingForm := range composingForms {
		result += "(" + toCorrectString(composingForm) + ")\n"
	}

	result += getRecursionUnivStr(target, nexts, children)

	result += fmt.Sprintf("(%s)\n", getFromContext(target))

	return result
}

func allRulesQuantUniv(rule string, target btps.Form, composingForms []btps.Form, nexts []*gs3.GS3Sequent, children []btps.FormList, vars []btps.Var, termGen btps.Term) string {

	quant := ""
	typeStr := vars[0].GetTypeApp().ToString()
	switch typed := target.(type) {
	case btps.All:
		quant = lambdaPiMapConnectors[btps.AllQuant]
		typeStr = typed.GetVarList()[0].GetTypeHint().ToString()
	case btps.Not:
		quant = lambdaPiMapConnectors[btps.ExQuant]
	}

	typeStr = mapDefault(typeStr)

	result := rule + "\n"
	result += "(" + typeStr + ")\n"
	result += "(%s, " + toCorrectString(composingForms[0]) + ")\n"

	varStrs := []string{}
	for _, singleVar := range vars {
		varStrs = append(varStrs, toLambdaIntroString(singleVar, singleVar.GetTypeHint().ToString()))
	}
	result = fmt.Sprintf(result, strings.Join(varStrs, ", "+quant+" "))

	result += "(" + toCorrectString(termGen) + ")\n"

	result += getRecursionUnivStr(target, nexts, children)

	result += fmt.Sprintf("(%s)\n", getFromContext(target))

	return result
}

func getRecursionUnivStr(target btps.Form, nexts []*gs3.GS3Sequent, children []btps.FormList) (result string) {
	for i, next := range nexts {
		result += "(\n"
		for _, childForm := range children[i] {
			result += toLambdaString(childForm, toCorrectString(childForm)) + ",\n"
		}
		proofStr := makeProofStep(next)
		result += proofStr
		result += ")\n"
	}
	return result
}

func allRulesQuantExist(rule string, target btps.Form, composingForms []btps.Form, nexts []*gs3.GS3Sequent, children []btps.FormList, vars []btps.Var, termGen btps.Term) string {
	quant := ""
	typeStr := vars[0].GetTypeApp().ToString()
	switch typed := target.(type) {
	case btps.Ex:
		quant = lambdaPiMapConnectors[btps.ExQuant]
		typeStr = typed.GetVarList()[0].GetTypeHint().ToString()
	case btps.Not:
		quant = lambdaPiMapConnectors[btps.AllQuant]
	}

	typeStr = mapDefault(typeStr)

	result := rule + "\n"
	result += "(" + typeStr + ")\n"
	result += "(%s, " + toCorrectString(composingForms[0]) + ")\n"

	varStrs := []string{}
	for _, singleVar := range vars {
		varStrs = append(varStrs, toLambdaIntroString(singleVar, singleVar.GetTypeHint().ToString()))
	}
	result = fmt.Sprintf(result, strings.Join(varStrs, ", "+quant+" "))

	result += getRecursionExistStr(target, nexts, children, termGen)

	result += fmt.Sprintf("(%s)\n", getFromContext(target))

	return result
}

func getRecursionExistStr(target btps.Form, nexts []*gs3.GS3Sequent, children []btps.FormList, termGen btps.Term) (result string) {
	for i, next := range nexts {
		result += "(\n"
		typesStr := ""
		if typed, ok := termGen.(btps.Fun); ok {
			typesStr = mapDefault(typed.GetTypeHint().ToString())
		}
		result += toLambdaIntroString(termGen, typesStr) + ",\n"
		for _, childForm := range children[i] {
			result += toLambdaString(childForm, toCorrectString(childForm)) + ",\n"
		}
		proofStr := makeProofStep(next)
		result += proofStr
		result += ")\n"
	}
	return result
}

func alphaNotNot(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()
	return allRules("GS3nnot", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func alphaAnd(proof *gs3.GS3Sequent) string {
	return allRules("GS3and", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func alphaNotOr(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()
	return allRules("GS3nor", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func alphaNotImp(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()
	return allRules("GS3nimp", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaOr(proof *gs3.GS3Sequent) string {
	return allRules("GS3or", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaNotAnd(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()
	return allRules("GS3nand", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaImp(proof *gs3.GS3Sequent) string {
	return allRules("GS3imp", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaEqu(proof *gs3.GS3Sequent) string {
	return allRules("GS3equ", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren())
}

func betaNotEqu(proof *gs3.GS3Sequent) string {
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()
	return allRules("GS3nequ", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren())
}

func deltaEx(proof *gs3.GS3Sequent) string {
	var formulaEx btps.Ex
	if form, ok := proof.GetTargetForm().(btps.Ex); ok {
		formulaEx = form
	}

	return allRulesQuantExist("GS3ex", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren(), formulaEx.GetVarList(), proof.TermGenerated())
}

func deltaNotAll(proof *gs3.GS3Sequent) string {
	var formulaAll btps.All
	if notForm, ok := proof.GetTargetForm().(btps.Not); ok {
		if form, ok := notForm.GetForm().(btps.All); ok {
			formulaAll = form
		}
	}
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()

	return allRulesQuantExist("GS3nall", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren(), formulaAll.GetVarList(), proof.TermGenerated())
}

func gammaAll(proof *gs3.GS3Sequent) string {
	var formulaAll btps.All
	if form, ok := proof.GetTargetForm().(btps.All); ok {
		formulaAll = form
	}

	return allRulesQuantUniv("GS3all", proof.GetTargetForm(), proof.GetTargetForm().GetChildFormulas(), proof.Children(), proof.GetResultFormulasOfChildren(), formulaAll.GetVarList(), proof.TermGenerated())
}

func gammaNotEx(proof *gs3.GS3Sequent) string {
	var formulaEx btps.Ex
	if notForm, ok := proof.GetTargetForm().(btps.Not); ok {
		if form, ok := notForm.GetForm().(btps.Ex); ok {
			formulaEx = form
		}
	}
	composingForms := proof.GetTargetForm().GetChildFormulas()[0].GetChildFormulas()

	return allRulesQuantUniv("GS3nex", proof.GetTargetForm(), composingForms, proof.Children(), proof.GetResultFormulasOfChildren(), formulaEx.GetVarList(), proof.TermGenerated())
}

// Processes the formula that was proven by Goéland.
func processMainFormula(form btps.Form) (btps.FormList, btps.Form) {
	formList := make(btps.FormList, 0)
	switch nf := form.(type) {
	case btps.Not:
		form = nf.GetForm()
	case btps.And:
		last := len(nf.FormList) - 1
		formList = nf.FormList[:last]
		form = nf.FormList[last].(btps.Not).GetForm()
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms btps.FormList, conjecture btps.Form) string {
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(global.GetProblemName(), ".", "_"), "=", "_"), "+", "_")
	formattedProblem := makeImpChain(append(axioms, btps.MakerNot(conjecture)))
	return "symbol goeland_" + problemName + " : \nϵ " + toCorrectString(formattedProblem) + " → ϵ ⊥ ≔ \n"
}

// If [F1, F2, F3] is a formlist, then this function returns F1 -> (F2 -> F3).
func makeImpChain(forms btps.FormList) btps.Form {
	last := len(forms) - 1
	form := forms[last]
	for i := last - 1; i >= 0; i-- {
		form = btps.MakerImp(forms[i], form)
	}
	return form
}