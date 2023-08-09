package lambdapi

import (
	"fmt"
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/gs3"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

var dummiesCreated int

var deepness int

var varCounter int

func getIncreasedCounter() int {
	varCounter++
	return varCounter - 1
}

var context map[string]string = make(map[string]string)

func addToContext(key Stringable) string {
	strKey := key.ToString()
	if _, ok := context[strKey]; !ok {
		context[strKey] = fmt.Sprintf("v%v", getIncreasedCounter())
	}

	return context[strKey]
}

func getFromContext(key btps.Form) string {
	return context[key.ToString()]
}

func makeLambdaPiProofFromGS3(proof *gs3.GS3Sequent) string {
	axioms, conjecture := processMainFormula(proof.GetTargetForm())
	var resultingString string

	resultingString = makeTheorem(axioms, conjecture)

	hypotheses := make([]btps.Form, 0)
	if len(axioms) > 0 {
		indices := make([]int, len(axioms))
		for i, form := range axioms {
			indices[i], hypotheses = introduce(form, hypotheses)
		}
		resultingString += "intros " + strings.Join(Map(indices, func(_ int, index int) string { return introName(index) }), " ") + ". "
		proof = proof.Child(0)
	}
	formula := getDecoratedForm(proof.GetTargetForm())

	formulaStr := formula.ToMappedString(lambdaPiMapConnectors(), false)
	resultingString += fmt.Sprintf("λ (%s : ϵ %s),\n", addToContext(formula), formulaStr)
	proofStr := makeProofStep(proof)
	resultingString += proofStr

	return resultingString + ";"
}

func makeProofStep(proof *gs3.GS3Sequent) string {
	deepness++
	defer func() { deepness-- }()

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
	case gs3.NALL:
	case gs3.EX:

	// Gamma rules
	case gs3.ALL:
		resultingString = gammaAll(proof)
	case gs3.NEX:

	// Weakening rule
	case gs3.W:
	}

	return resultingString
}

func closureAxiom(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetTargetForm())
	formula2 := btps.RefuteForm(getDecoratedForm(proof.GetTargetForm()))
	if notForm, ok := formula1.(btps.Not); ok {
		formula2 = formula1
		formula1 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)

	result := fmt.Sprintf("GS3axiom (%s) (%s) (%s)\n", formula1Str, getFromContext(formula1), getFromContext(formula2))

	return result
}

func alphaNotNot(proof *gs3.GS3Sequent) string {
	formula := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formulaStr := formula.ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3nnot\n"
	result += "(" + formulaStr + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula), formulaStr)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func alphaAnd(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[1])
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3and\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula1), formula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula2), formula2Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func alphaNotOr(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	if notForm, ok := formula1.(btps.Not); ok {
		formula1 = getDecoratedForm(notForm.GetForm())
	}
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[1])
	if notForm, ok := formula2.(btps.Not); ok {
		formula2 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)
	notFormula1Str := btps.RefuteForm(formula1).ToMappedString(lambdaPiMapConnectors(), false)
	notFormula2Str := btps.RefuteForm(formula2).ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3nor\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula1)), notFormula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula2)), notFormula2Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func alphaNotImp(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[1])
	notFormula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)
	if notForm, ok := formula2.(btps.Not); ok {
		formula2 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3nimp\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula1), formula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula2)), notFormula2Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func betaOr(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(1)[0])
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3or\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula1), formula1Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula2), formula2Str)
	proofStr = makeProofStep(proof.Child(1))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func betaNotAnd(proof *gs3.GS3Sequent) string {
	notFormula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	notFormula2 := getDecoratedForm(proof.GetResultFormulasOfChild(1)[0])
	var formula1 btps.Form
	var formula2 btps.Form
	if notForm, ok := notFormula1.(btps.Not); ok {
		formula1 = getDecoratedForm(notForm.GetForm())
	}
	if notForm, ok := notFormula2.(btps.Not); ok {
		formula2 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3nand\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(notFormula1), formula1Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(notFormula2), formula2Str)
	proofStr = makeProofStep(proof.Child(1))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func betaImp(proof *gs3.GS3Sequent) string {
	notFormula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(1)[0])
	var formula1 btps.Form
	if notForm, ok := notFormula1.(btps.Not); ok {
		formula1 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3imp\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(notFormula1), formula1Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula2), formula2Str)
	proofStr = makeProofStep(proof.Child(1))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func betaEqu(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[1])
	if notForm, ok := formula1.(btps.Not); ok {
		formula1 = getDecoratedForm(notForm.GetForm())
	}
	if notForm, ok := formula2.(btps.Not); ok {
		formula2 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)
	notFormula1Str := btps.RefuteForm(formula1).ToMappedString(lambdaPiMapConnectors(), false)
	notFormula2Str := btps.RefuteForm(formula2).ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3equ\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula1)), notFormula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula2)), notFormula2Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula1), formula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula2), formula2Str)
	proofStr = makeProofStep(proof.Child(1))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func betaNotEqu(proof *gs3.GS3Sequent) string {
	formula1 := getDecoratedForm(proof.GetResultFormulasOfChild(0)[0])
	formula2 := getDecoratedForm(proof.GetResultFormulasOfChild(1)[0])
	if notForm, ok := formula1.(btps.Not); ok {
		formula1 = getDecoratedForm(notForm.GetForm())
	}
	if notForm, ok := formula2.(btps.Not); ok {
		formula2 = getDecoratedForm(notForm.GetForm())
	}
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	formula2Str := formula2.ToMappedString(lambdaPiMapConnectors(), false)
	notFormula1Str := btps.RefuteForm(formula1).ToMappedString(lambdaPiMapConnectors(), false)
	notFormula2Str := btps.RefuteForm(formula2).ToMappedString(lambdaPiMapConnectors(), false)

	result := "GS3nequ\n"
	result += "(" + formula1Str + ")\n"
	result += "(" + formula2Str + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula1)), notFormula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula2), formula2Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula1), formula1Str)
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(btps.RefuteForm(formula2)), notFormula2Str)
	proofStr = makeProofStep(proof.Child(1))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(getDecoratedForm(proof.GetTargetForm())))

	return result
}

func gammaAll(proof *gs3.GS3Sequent) string {
	formula1 := proof.GetResultFormulasOfChild(0)[0]
	formula1Str := formula1.ToMappedString(lambdaPiMapConnectors(), false)
	termStr := proof.TermGenerated().ToString()

	formulaVar := proof.GetTargetForm()
	if form, ok := formulaVar.(btps.All); ok {
		formulaVar = form.GetForm()
	}
	varStr := formulaVar.ToString()

	result := "GS3all\n"
	result += "(ι)\n"
	result += "(" + varStr + ")\n"
	result += "(" + termStr + ")\n"
	result += "(\n"
	result += fmt.Sprintf("λ (%s : ϵ (%s)),\n", addToContext(formula1), formula1Str)
	proofStr := makeProofStep(proof.Child(0))
	result += proofStr
	result += ")\n"
	result += fmt.Sprintf("(%s)\n", getFromContext(proof.GetTargetForm()))

	return result
}

func alphaStep(proof *gs3.GS3Sequent, hypotheses []btps.Form, target int, format string) (string, [][]btps.Form) {
	var indices []int
	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	resultingString := fmt.Sprintf("apply "+format+". intros %s. ", introName(target), introNames(indices))
	return resultingString, [][]btps.Form{hypotheses}
}

func betaStep(proof *gs3.GS3Sequent, hypotheses []btps.Form, target int, format string) (string, [][]btps.Form) {
	resultHyps := [][]btps.Form{}
	var indices []int
	resultingString := fmt.Sprintf("apply "+format+"; ", introName(target))
	introducedNames := make([]string, 0)
	for i := range proof.Children() {
		hypoCopy := make([]btps.Form, len(hypotheses))
		copy(hypoCopy, hypotheses)
		indices, hypoCopy = introduceList(proof.GetResultFormulasOfChild(i), hypoCopy)
		introducedNames = append(introducedNames, "intros "+introNames(indices, " "))
		resultHyps = append(resultHyps, hypoCopy)
	}

	return resultingString + "[ " + strings.Join(introducedNames, " | ") + " ].", resultHyps
}

func deltaStep(proof *gs3.GS3Sequent, hypotheses []btps.Form, target int, format string, constantsCreated []btps.Term) (string, [][]btps.Form, []btps.Term) {
	var indices []int
	var name string
	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	constantsCreated, name = addTermGenerated(constantsCreated, proof.TermGenerated())
	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	return resultingString, [][]btps.Form{hypotheses}, constantsCreated
}

func gammaStep(proof *gs3.GS3Sequent, hypotheses []btps.Form, target int, format string, constantsCreated []btps.Term) (string, [][]btps.Form) {
	var indices []int
	indices, hypotheses = introduceList(proof.GetResultFormulasOfChild(0), hypotheses)
	name := "(" + getRealConstantName(constantsCreated, proof.TermGenerated()) + ")"
	resultingString := fmt.Sprintf(format, introName(target), name, introNames(indices))
	return resultingString, [][]btps.Form{hypotheses}
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

func getRewriteRules() string {
	// TODO
	return ""
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms btps.FormList, conjecture btps.Form) string {
	problemName := strings.ReplaceAll(strings.ReplaceAll(strings.ReplaceAll(GetProblemName(), ".", "_"), "=", "_"), "+", "_")
	formattedProblem := makeImpChain(append(axioms, btps.MakerNot(conjecture)))
	return "symbol goeland_" + problemName + " : \nϵ " + getDecoratedForm(formattedProblem).ToMappedString(lambdaPiMapConnectors(), false) + " → ϵ ⊥ ≔ \n"
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

// Introduces a new formula in coq's hypotheses.
func introduce(f btps.Form, hypotheses []btps.Form) (int, []btps.Form) {
	//PrintInfo("INTRODUCING", f.ToString())
	index := len(hypotheses)
	hypotheses = append(hypotheses, f)
	return index, hypotheses
}

func introduceList(fl btps.FormList, hypotheses []btps.Form) ([]int, []btps.Form) {
	indices := make([]int, len(fl))
	for i, f := range fl {
		indices[i], hypotheses = introduce(f, hypotheses)
	}
	return indices, hypotheses
}

func get(f btps.Form, hypotheses []btps.Form) int {
	for i, h := range hypotheses {
		if h.Equals(f) {
			return i
		}
	}
	/*PrintInfo("GET", f.ToString())
	for _, h := range hypotheses {
		PrintInfo("H", h.ToString())
	}*/
	return -1
}

// Makes a Coq's name for a new hypothesis.
func introName(i int) string {
	return fmt.Sprintf("H%d", i)
}

func introNames(il []int, sep ...string) string {
	var s string
	if len(sep) == 0 {
		s = " "
	} else {
		s = sep[0]
	}
	return strings.Join(Map(il, func(_ int, f int) string { return introName(f) }), s)
}

func isPredEqual(f btps.Form) bool {
	if not, isNot := f.(btps.Not); isNot {
		f = not.GetForm()
	}
	if p, isPred := f.(btps.Pred); isPred {
		return p.GetID().Equals(btps.Id_eq)
	}
	return false
}

func addTermGenerated(constantsCreated []btps.Term, term btps.Term) ([]btps.Term, string) {
	if term == nil {
		dummiesCreated++
		return constantsCreated, fmt.Sprintf("x%d", dummiesCreated-1)
	}
	constantsCreated = append(constantsCreated, term)
	return constantsCreated, getConstantName(term.(btps.Fun).GetID())
}

func getRealConstantName(constantsCreated []btps.Term, term btps.Term) string {
	if term == nil {
		return "goeland_I"
	}
	if fun, isFun := term.(btps.Fun); isFun {
		res := ""
		if isGroundTerm(fun.GetID()) {
			res = fun.GetID().ToMappedString(lambdaPiMapConnectors(), false)
			subterms := make([]string, 0)
			for _, t := range fun.GetArgs() {
				subterms = append(subterms, getRealConstantName(constantsCreated, t))
			}
			if len(subterms) > 0 {
				res += "(" + strings.Join(subterms, ", ") + ")"
			}
		} else {
			res = findInConstants(constantsCreated, term)
		}
		return res
	}
	return findInConstants(constantsCreated, term)
}

func findInConstants(constantsCreated []btps.Term, term btps.Term) string {
	if term == nil {
		return "goeland_I"
	}
	if hasBeenCreated(constantsCreated, term) {
		return getConstantName(term.(btps.Fun).GetID())
	}
	if isGroundTerm(term) {
		return "(" + term.ToMappedString(lambdaPiMapConnectors(), false) + ")"
	}
	return "goeland_I"
}

func cp[T any](source []T) []T {
	arr := make([]T, len(source))
	copy(arr, source)
	return arr
}

func cleanHypotheses(hypotheses []btps.Form, form btps.Form) (string, [][]btps.Form) {
	result := ""
	index := get(form, hypotheses)
	if index != -1 {
		hypotheses[index] = btps.MakerTop()
		result = fmt.Sprintf("clear %s. ", introName(index))
	}
	return result, [][]btps.Form{hypotheses}
}

func getConstantName(id btps.Id) string {
	return id.ToString()
}

func hasBeenCreated(constantsCreated []btps.Term, term btps.Term) bool {
	for _, t := range constantsCreated {
		if t.Equals(term) {
			return true
		}
	}
	return false
}

func isGroundTerm(term btps.Term) bool {
	return !strings.Contains(term.ToString(), "sko")
}
