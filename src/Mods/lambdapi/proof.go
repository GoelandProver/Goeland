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

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/CertifUtils"
	"github.com/GoelandProver/Goeland/Mods/gs3"
)

func makeLambdaPiProofFromGS3(proof *gs3.GS3Sequent) string {
	formula := proof.GetTargetForm()
	axioms, conjecture := processMainFormula(formula)

	resulting_string, to_introduce := makeTheorem(axioms, conjecture)
	context := Lib.NewList[AST.Form]()
	resulting_string += "begin\n  "
	str, local_context := assume(to_introduce, context)
	if to_introduce.Len() != 1 {
		proof = proof.Child(0)
	}
	return resulting_string + str + makeProofStep(proof, local_context) + "end;\n"
}

func makeProofStep(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	var resultingString string
	switch proof.Rule() {
	case gs3.AX:
		resultingString = closureAxiom(proof, context)
	case gs3.NNOT:
		resultingString = alphaNotNot(proof, context)
	case gs3.AND:
		resultingString = alphaAnd(proof, context)
	case gs3.NOR:
		resultingString = alphaNotOr(proof, context)
	case gs3.NIMP:
		resultingString = alphaNotImp(proof, context)
	case gs3.OR:
		resultingString = betaOr(proof, context)
	case gs3.NAND:
		resultingString = betaNotAnd(proof, context)
	case gs3.IMP:
		resultingString = betaImp(proof, context)
	case gs3.EQU:
		resultingString = betaEqu(proof, context)
	case gs3.NEQU:
		resultingString = betaNotEqu(proof, context)
	case gs3.EX:
		resultingString = deltaEx(proof, context)
	case gs3.NALL:
		resultingString = deltaNotAll(proof, context)
	case gs3.ALL:
		resultingString = gammaAll(proof, context)
	case gs3.NEX:
		resultingString = gammaNotEx(proof, context)
	default:
		Glob.Fatal(
			"LambdaPi",
			fmt.Sprintf("Translation of rule %s not implemented yet", proof.Rule().ToString()),
		)
	}

	return resultingString
}

func assume(formulas Lib.List[AST.Form], context Lib.List[AST.Form]) (string, Lib.List[AST.Form]) {
	resulting_string := "  assume"
	for _, form := range formulas.GetSlice() {
		val, con := addToLocalContext(form, context)
		resulting_string += fmt.Sprintf(" %s", val)
		context = con
	}
	return resulting_string + ";\n", context
}

func refine(lemma string, arguments Lib.List[string], in_con string, goals int) string {
	arguments_string := strings.Join(arguments.GetSlice(), " ")
	goals_string := strings.Repeat("_ ", goals)
	return fmt.Sprintf("  refine %s %s %s %s\n", lemma, arguments_string, goals_string, in_con)
}

func closureAxiom(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	if CertifUtils.IsPredEqual(proof.GetTargetForm()) {
		Glob.Fatal("LambdaPi", "congruence closure is not implemented yet")
	}

	target, notTarget := getPosAndNeg(proof.GetTargetForm())
	result := ""
	switch target.(type) {
	case AST.Pred:
		result = refine("GS3axiom", Lib.MkListV(
			"("+target.ToString()+")",
			getFromLocalContext(target, context),
			getFromLocalContext(notTarget, context),
		), "", 0)
	case AST.Top:
		result = refine("GS3ntop", Lib.MkListV(getFromLocalContext(notTarget, context)), "", 0)
	case AST.Bot:
		result = refine("GS3bot", Lib.MkListV(getFromLocalContext(target, context)), "", 0)
	}

	return result + ";"
}

func getPosAndNeg(target AST.Form) (pos, neg AST.Form) {
	if neg, ok := target.(AST.Not); ok {
		return neg.GetForm(), neg
	}
	return target, AST.MakerNot(target)
}

func refineGenericRule(
	lemma string,
	proof *gs3.GS3Sequent,
	remaining_goals int,
	context Lib.List[AST.Form],
) string {
	formulas_list := Lib.NewList[string]()

	// If a term was generated, get its type and place the stuff in the right order: the type of
	// the generated term, the formula and then the term.
	if gs3.IsGammaRule(proof.Rule()) || gs3.IsDeltaRule(proof.Rule()) {
		ty := getTypeOfFirstBoundVar(proof.GetTargetForm())
		formated_child := getFormattedChild(proof.GetTargetForm())
		formulas_list = Lib.MkListV(
			"("+strings.ReplaceAll(ty.ToString(), "τ", "")+")",
			"("+formated_child+")",
		)
		if gs3.IsGammaRule(proof.Rule()) {
			// FIXME: use an option type instead of nil
			if proof.TermGenerated() != nil {
				formulas_list.Append(getFormattedTerm(proof.TermGenerated()))
			} else {
				// Try to find something in the global env, otherwise: fail
				// FIXME: we should also try to find something in the local (term) environment
				//       (this does not exist yet)
				switch term := searchGlobalEnv(ty).(type) {
				case Lib.Some[string]:
					formulas_list.Append(term.Val)
				default:
					Glob.Fatal("LambdaPi", fmt.Sprintf(
						"no term of type %s available to instantiate the universal formula %s.",
						ty.ToString(),
						proof.GetTargetForm().ToString(),
					))
				}
			}
		}
	} else {
		child_formulas := proof.GetTargetForm().GetChildFormulas()
		switch f := proof.GetTargetForm().(type) {
		case AST.Not:
			child_formulas = f.GetForm().GetChildFormulas()
		}
		for _, form := range child_formulas.GetSlice() {
			formulas_list.Append("(" + form.ToString() + ")")
		}
	}

	result_string := refine(
		lemma,
		formulas_list,
		getFromLocalContext(proof.GetTargetForm(), context),
		remaining_goals,
	)

	if remaining_goals <= 1 {
		result_string = result_string[:len(result_string)-1] + ";\n"
		assumptions, con := assume(proof.GetResultFormulasOfChild(0), Lib.ListCpy(context))
		if gs3.IsDeltaRule(proof.Rule()) {
			assumptions = fmt.Sprintf(
				"assume %s;",
				getFormattedTerm(proof.TermGenerated()),
			) + assumptions
		}
		result_string += assumptions
		result_string += makeProofStep(proof.Child(0), con)
	} else {
		for i := 0; i < remaining_goals; i++ {
			result_string += "{\n"
			assumptions, con := assume(proof.GetResultFormulasOfChild(i), Lib.ListCpy(context))
			result_string += assumptions
			result_string += makeProofStep(proof.Child(i), con)
			result_string += "}\n"
		}
		result_string = result_string[:len(result_string)-1] + ";\n"
	}
	return result_string
}

func getFormattedTerm(term AST.Term) string {
	switch t := term.(type) {
	case AST.Fun:
		if strings.Contains(t.GetName(), "sko") {
			return t.GetID().ToString()
		}
	}
	return term.ToString()
}

func getTypeOfFirstBoundVar(form AST.Form) AST.Ty {
	getTySafe := func(var_list Lib.List[AST.TypedVar]) AST.Ty {
		if var_list.Empty() {
			debug(Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"Formula %s has no bound variable, cannot get its type",
					form.ToString(),
				)
			}))
			Glob.Anomaly("LambdaPi", "No bound variable.")
		}
		return var_list.At(0).GetTy()
	}

	switch f := form.(type) {
	case AST.Not:
		switch nf := f.GetForm().(type) {
		case AST.All:
			return getTySafe(nf.GetVarList())
		case AST.Ex:
			return getTySafe(nf.GetVarList())
		}
	case AST.All:
		return getTySafe(f.GetVarList())
	case AST.Ex:
		return getTySafe(f.GetVarList())
	}

	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf(
			"Called getTypeOfFirstBoundVar of %s which should have been a quantified formula (or a negation of such a formula)",
			form.ToString(),
		)
	}))
	Glob.Anomaly("LambdaPi", "Not a quantifier formula")
	return nil
}

// Gets the child formula as a λ (bound_var : ty), P
func getFormattedChild(form AST.Form) string {
	format := func(var_list Lib.List[AST.TypedVar], f AST.Form, maker func(Lib.List[AST.TypedVar], AST.Form) AST.Form) string {
		f = maker(var_list.Slice(1, var_list.Len()), f)
		return fmt.Sprintf(
			"λ (%s : %s), %s",
			var_list.At(0).GetName(),
			var_list.At(0).GetTy().ToString(),
			f.ToString(),
		)
	}

	switch f := form.(type) {
	case AST.Not:
		switch nf := f.GetForm().(type) {
		case AST.All:
			return format(nf.GetVarList(), nf.GetForm(), func(vl Lib.List[AST.TypedVar], f AST.Form) AST.Form {
				if !vl.Empty() {
					f = AST.MakerAll(vl, f)
				}
				return f
			})
		case AST.Ex:
			return format(nf.GetVarList(), nf.GetForm(), func(vl Lib.List[AST.TypedVar], f AST.Form) AST.Form {
				if !vl.Empty() {
					f = AST.MakerEx(vl, f)
				}
				return f
			})
		}
	case AST.All:
		return format(f.GetVarList(), f.GetForm(), func(vl Lib.List[AST.TypedVar], f AST.Form) AST.Form {
			if !vl.Empty() {
				f = AST.MakerAll(vl, f)
			}
			return f
		})
	case AST.Ex:
		return format(f.GetVarList(), f.GetForm(), func(vl Lib.List[AST.TypedVar], f AST.Form) AST.Form {
			if !vl.Empty() {
				f = AST.MakerEx(vl, f)
			}
			return f
		})
	}

	Glob.Anomaly("LambdaPi", "Not a quantifier formula")
	return ""
}

func refineUnaryRule(lemma string, proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineGenericRule(lemma, proof, 1, context)
}

func refineBinaryRule(lemma string, proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineGenericRule(lemma, proof, 2, context)
}

func alphaNotNot(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3nnot", proof, context)
}

func alphaAnd(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3and", proof, context)
}

func alphaNotOr(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3nor", proof, context)
}

func alphaNotImp(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3nimp", proof, context)
}

func betaOr(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineBinaryRule("GS3or", proof, context)
}

func betaNotAnd(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineBinaryRule("GS3nand", proof, context)
}

func betaImp(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineBinaryRule("GS3imp", proof, context)
}

func betaEqu(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineBinaryRule("GS3equ", proof, context)
}

func betaNotEqu(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineBinaryRule("GS3nequ", proof, context)
}

func deltaEx(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3ex", proof, context)
}

func deltaNotAll(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3nall", proof, context)
}

func gammaAll(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3all", proof, context)
}

func gammaNotEx(proof *gs3.GS3Sequent, context Lib.List[AST.Form]) string {
	return refineUnaryRule("GS3nex", proof, context)
}

// Split the axiom & conjecture formula from the root formula.
func processMainFormula(form AST.Form) (Lib.List[AST.Form], AST.Form) {
	formList := Lib.NewList[AST.Form]()
	switch nf := form.(type) {
	case AST.Not:
		form = nf.GetForm()
	case AST.And:
		last := nf.GetChildFormulas().Len() - 1
		formList = Lib.MkListV(nf.GetChildFormulas().Get(0, last)...)
		form = nf.GetChildFormulas().At(last).(AST.Not).GetForm()
	}
	return formList, form
}

// Prints the theorem's name & properly formats the first formula.
func makeTheorem(axioms Lib.List[AST.Form], conjecture AST.Form) (string, Lib.List[AST.Form]) {
	problemName := CertifUtils.SanitizedTheoremName()
	axioms = Lib.ListCpy(axioms)
	axioms.Append(AST.MakerNot(conjecture))
	formattedProblem := makeImpChain(axioms)
	return "symbol goeland_" + problemName + " : \n" + formattedProblem + " → ϵ ⊥ ≔ \n", axioms
}

// If [F1, F2, F3] is a formlist, then this function returns F1 -> (F2 -> F3).
func makeImpChain(forms Lib.List[AST.Form]) string {
	imp_chain := []string{}
	for _, form := range forms.GetSlice() {
		imp_chain = append(imp_chain, fmt.Sprintf("ϵ (%s)", form.ToString()))
	}
	return strings.Join(imp_chain, " → ")
}
