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
* This file contains functions to apply rules on a search
**/
package Search

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
	"os"
)

var strToPrintMap map[string]string = map[string]string{
	"ALPHA":  "α",
	"BETA":   "β",
	"GAMMA":  "γ",
	"DELTA":  "δ",
	"NOT":    "¬",
	"AND":    "∧",
	"OR":     "∨",
	"IMPLY":  "⇒",
	"EQUIV":  "⇔",
	"FORALL": "∀",
	"EXISTS": "∃",
}

/**
* ApplyClosureRules
* Search closure rules (not true or false), and call search conflict if no obvious closure found
* Datas :
* 	form : the formula for which we are looking for the contradiction
* 	state : a state, containing all the formula of the current step
* Result :
*	a boolean, true if a contradiction was found, false otherwise
*	a substitution, the substitution which make the contradiction (possibly empty)
**/
func ApplyClosureRules(form AST.Form, state *State) (result bool, substitutions []Unif.Substitutions) {
	Glob.PrintDebug("ACR", Lib.MkLazy(func() string { return "Start ACR" }))

	if searchObviousClosureRule(form) {
		return true, substitutions
	}

	f := form.Copy()

	substFound, subst := searchInequalities(form)
	if substFound {
		result = true
		substitutions = append(substitutions, subst)
	}

	substFound, matchSubsts := searchClosureRule(f, *state)

	if substFound {
		Glob.PrintDebug("ACR", Lib.MkLazy(func() string { return "Subst found" }))

		for _, subst := range matchSubsts {
			Glob.PrintDebug("ACR", Lib.MkLazy(func() string { return fmt.Sprintf("MSL : %v", subst.ToString()) }))

			if subst.GetSubst().Equals(Unif.MakeEmptySubstitution()) {
				result = true
			} else {
				if !searchForbidden(state, subst) {
					result = true
				}
			}

			if result {
				Glob.PrintDebug(
					"ACR",
					Lib.MkLazy(func() string {
						return fmt.Sprintf(
							"Subst found between : %v and %v : %v",
							form.ToString(),
							subst.GetForm().ToString(),
							subst.GetSubst().ToString())
					}),
				)
				substitutions = Unif.AppendIfNotContainsSubst(substitutions, subst.GetSubst())
			}
		}
	}

	return result, substitutions
}

func searchForbidden(state *State, s Unif.MatchingSubstitutions) bool {
	foundForbidden := false

	for _, substForbidden := range state.GetForbiddenSubsts() {
		forbiddenShared := Core.AreEqualsModuloaLaphaConversion(s.GetSubst(), substForbidden)

		if forbiddenShared {
			foundForbidden = true
		}
	}

	return foundForbidden
}

/* Search obvious closure rule like ⊥ and ¬⊤ */
func searchObviousClosureRule(f AST.Form) bool {
	switch nf := f.(type) {
	case AST.Bot:
		Glob.PrintDebug("AR", Lib.MkLazy(func() string { return "⊥ found !" }))
		return true
	case AST.Not:
		switch nf.GetForm().(type) {
		case AST.Top:
			Glob.PrintDebug("AR", Lib.MkLazy(func() string { return "¬⊤ found !" }))
			return true
		default:
			return false
		}
	default:
		return false
	}
}

/* Search contradiction with inequalities (for example, !(x,a) -> subst(x, a)) */
func searchInequalities(form AST.Form) (bool, Unif.Substitutions) {
	subst := Unif.MakeEmptySubstitution()

	if formNot, isNot := form.(AST.Not); isNot {
		if predNeq, isPred := formNot.GetForm().(AST.Pred); isPred {
			if predNeq.GetID().Equals(AST.Id_eq) {

				Glob.PrintDebug(
					"SI",
					Lib.MkLazy(func() string {
						return fmt.Sprintf(
							"Search Inequality closure rule : %v",
							form.ToString())
					}),
				)

				// Search if the two terms are unfiable
				arg_1 := predNeq.GetArgs().At(0)
				arg_2 := predNeq.GetArgs().At(1)

				Glob.PrintDebug(
					"SI",
					Lib.MkLazy(func() string { return fmt.Sprintf("Arg 1 : %v", arg_1.ToString()) }),
				)
				Glob.PrintDebug(
					"SI",
					Lib.MkLazy(func() string { return fmt.Sprintf("Arg 2 : %v", arg_2.ToString()) }),
				)

				subst = Unif.AddUnification(arg_1, arg_2, subst)
				Glob.PrintDebug(
					"SI",
					Lib.MkLazy(func() string { return fmt.Sprintf("Subst : %v", subst.ToString()) }),
				)

				if !subst.Equals(Unif.Failure()) {
					return true, subst
				}
			}
		}
	}

	return false, nil
}

/* Search a contradiction between a formula and another in the datastructure */
func searchClosureRule(f AST.Form, st State) (bool, []Unif.MatchingSubstitutions) {
	switch nf := f.(type) {
	case AST.Pred:
		return st.GetTreeNeg().Unify(f)
	case AST.Not:
		switch nf.GetForm().(type) {
		case AST.Pred:
			return st.GetTreePos().Unify(nf.GetForm())
		default:
			return false, nil
		}
	default:
		return false, nil
	}
}

func setStateRules(state *State, name string, forms ...string) {
	strChars := strToPrintMap[name]
	strWords := name

	for _, val := range forms {
		strChars += strToPrintMap[val]
		strWords += "_" + val
	}

	Glob.PrintDebug("AR", Lib.MkLazy(func() string { return "Applying " + strChars + "..." }))

	state.SetCurrentProofRule(strChars)
	state.SetCurrentProofRuleName(strWords)
}

/**
* ApplyAlphaRules
* Take a formula, return a list of formulae (conjunction)
* Datas :
* 	fnt : a formula to which a alpha rule will be applied
* Result :
*	a formula list (conjunction)
**/
func ApplyAlphaRules(fnt Core.FormAndTerms, state *State) Core.FormAndTermsList {
	var result Core.FormAndTermsList

	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch formTyped := form.(type) {
	case AST.Not:
		result = applyAlphaNotRule(formTyped, state, terms, result)
	case AST.And:
		result = applyAlphaAndRule(formTyped, state, terms, result)
	}

	return result
}

func applyAlphaNotRule(
	formTyped AST.Not,
	state *State,
	terms Lib.List[AST.Term],
	result Core.FormAndTermsList,
) Core.FormAndTermsList {
	switch formWithoutNot := formTyped.GetForm().(type) {
	case AST.Not:
		result = applyAlphaNotNotRule(formWithoutNot, state, terms, result)
	case AST.Or:
		result = applyAlphaNotOrRule(formWithoutNot, state, terms, result)
	case AST.Imp:
		result = applyAlphaNotImpRule(formWithoutNot, state, terms, result)
	}

	return result
}

func applyAlphaNotNotRule(
	formWithoutNot AST.Not,
	state *State,
	terms Lib.List[AST.Term],
	result Core.FormAndTermsList,
) Core.FormAndTermsList {
	setStateRules(state, "ALPHA", "NOT", "NOT")

	result = result.AppendIfNotContains(Core.MakeFormAndTerm(formWithoutNot.GetForm(), terms))

	return result
}

func applyAlphaNotOrRule(
	formWithoutNot AST.Or,
	state *State,
	terms Lib.List[AST.Term],
	result Core.FormAndTermsList,
) Core.FormAndTermsList {
	setStateRules(state, "ALPHA", "NOT", "OR")

	for i := range formWithoutNot.FormList.Slice() {
		result = result.AppendIfNotContains(Core.MakeFormAndTerm(AST.MakerNot(formWithoutNot.FormList.Get(i)), terms))
	}

	return result
}

func applyAlphaNotImpRule(
	formWithoutNot AST.Imp,
	state *State,
	terms Lib.List[AST.Term],
	result Core.FormAndTermsList,
) Core.FormAndTermsList {
	setStateRules(state, "ALPHA", "NOT", "IMPLY")

	result = result.AppendIfNotContains(Core.MakeFormAndTerm(formWithoutNot.GetF1(), terms))
	result = result.AppendIfNotContains(Core.MakeFormAndTerm(AST.MakerNot(formWithoutNot.GetF2()), terms))

	return result
}

func applyAlphaAndRule(
	formTyped AST.And,
	state *State,
	terms Lib.List[AST.Term],
	result Core.FormAndTermsList,
) Core.FormAndTermsList {
	setStateRules(state, "ALPHA", "AND")

	for i := range formTyped.FormList.Slice() {
		result = result.AppendIfNotContains(Core.MakeFormAndTerm(formTyped.FormList.Get(i), terms))
	}

	return result
}

/**
* ApplyBetaRules
* Take a formula, return a list of formulae (disjunction)
* Datas :
* 	fnt : a formula to which a beta rule will be applied
* Result :
*	a formula list (disjunction)
**/
func ApplyBetaRules(fnt Core.FormAndTerms, state *State) []Core.FormAndTermsList {
	var result []Core.FormAndTermsList

	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch formTyped := form.(type) {
	case AST.Not:
		result = applyBetaNotRule(formTyped, state, terms, result)
	case AST.Or:
		result = applyBetaOrRule(formTyped, state, terms, result)
	case AST.Imp:
		result = applyBetaImpRule(formTyped, state, terms, result)
	case AST.Equ:
		result = applyBetaEquRule(formTyped, state, terms, result)
	}

	return result
}

func applyBetaNotRule(
	formTyped AST.Not,
	state *State,
	terms Lib.List[AST.Term],
	result []Core.FormAndTermsList,
) []Core.FormAndTermsList {
	switch formWithoutNot := formTyped.GetForm().(type) {
	case AST.And:
		result = applyBetaNotAndRule(formWithoutNot, state, terms, result)
	case AST.Equ:
		result = applyBetaNotEquRule(formWithoutNot, state, terms, result)
	}

	return result
}

func applyBetaNotAndRule(
	formWithoutNot AST.And,
	state *State,
	terms Lib.List[AST.Term],
	result []Core.FormAndTermsList,
) []Core.FormAndTermsList {
	setStateRules(state, "BETA", "NOT", "AND")

	for i := range formWithoutNot.FormList.Slice() {
		result = append(result, Core.MakeSingleElementFormAndTermList(Core.MakeFormAndTerm(AST.MakerNot(formWithoutNot.FormList.Get(i)), terms)))
	}

	return result
}

func applyBetaNotEquRule(
	formWithoutNot AST.Equ,
	state *State,
	terms Lib.List[AST.Term],
	result []Core.FormAndTermsList,
) []Core.FormAndTermsList {
	setStateRules(state, "BETA", "NOT", "EQUIV")

	result = append(result,
		Core.FormAndTermsList{
			Core.MakeFormAndTerm(AST.MakerNot(formWithoutNot.GetF1()), terms),
			Core.MakeFormAndTerm(formWithoutNot.GetF2(), terms)})
	result = append(result,
		Core.FormAndTermsList{
			Core.MakeFormAndTerm(formWithoutNot.GetF1(), terms),
			Core.MakeFormAndTerm(AST.MakerNot(formWithoutNot.GetF2()), terms)})

	return result
}

func applyBetaOrRule(
	formTyped AST.Or,
	state *State,
	terms Lib.List[AST.Term],
	result []Core.FormAndTermsList,
) []Core.FormAndTermsList {
	setStateRules(state, "BETA", "OR")

	for i := range formTyped.FormList.Slice() {
		result = append(result, Core.MakeSingleElementFormAndTermList(Core.MakeFormAndTerm(formTyped.FormList.Get(i), terms)))
	}

	return result
}

func applyBetaImpRule(
	formTyped AST.Imp,
	state *State,
	terms Lib.List[AST.Term],
	result []Core.FormAndTermsList,
) []Core.FormAndTermsList {
	setStateRules(state, "BETA", "IMPLY")

	result = append(result, Core.MakeSingleElementFormAndTermList(Core.MakeFormAndTerm(AST.MakerNot(formTyped.GetF1()), terms)))
	result = append(result, Core.MakeSingleElementFormAndTermList(Core.MakeFormAndTerm(formTyped.GetF2(), terms)))

	return result
}

func applyBetaEquRule(
	formTyped AST.Equ,
	state *State,
	terms Lib.List[AST.Term],
	result []Core.FormAndTermsList,
) []Core.FormAndTermsList {
	setStateRules(state, "BETA", "EQUIV")

	result = append(result,
		Core.FormAndTermsList{
			Core.MakeFormAndTerm(AST.MakerNot(formTyped.GetF1()), terms),
			Core.MakeFormAndTerm(AST.MakerNot(formTyped.GetF2()), terms)})
	result = append(result,
		Core.FormAndTermsList{
			Core.MakeFormAndTerm(formTyped.GetF1(), terms),
			Core.MakeFormAndTerm(formTyped.GetF2(), terms)})

	return result
}

/**
* ApplyDeltaRules
* Take a formula, return a new formula without existential variables
* Datas :
* 	fnt : a formula to which a delta rule will be applied
* Result :
*	a formula
**/
func ApplyDeltaRules(fnt Core.FormAndTerms, state *State) Core.FormAndTermsList {
	switch fnt.GetForm().(type) {
	case AST.Not:
		setStateRules(state, "DELTA", "NOT", "FORALL")
	case AST.Ex:
		setStateRules(state, "DELTA", "EXISTS")
	}

	newMetas := state.GetMM().Copy()
	newMetas = newMetas.Union(state.GetMC())
	metasAsTerms := Lib.ListMap(newMetas.Elements(), Glob.To[AST.Term])

	f := Core.Skolemize(fnt.GetForm(), newMetas)
	return Core.MakeSingleElementFormAndTermList(
		Core.MakeFormAndTerm(f, metasAsTerms),
	)
}

/**
* ApplyGammaRules
* Take a formula, return a new formula without universal variables
* Datas :
* 	fnt : a formula to which a delta rule will be applied
* Result :
*	a formula
*	the new metavariables
**/
func ApplyGammaRules(fnt Core.FormAndTerms, index int, state *State) (Core.FormAndTermsList, Lib.Set[AST.Meta]) {
	switch fnt.GetForm().(type) {
	case AST.Not:
		setStateRules(state, "GAMMA", "NOT", "EXISTS")

	case AST.All:
		setStateRules(state, "GAMMA", "FORALL")

	case AST.AllType:
		Glob.PrintError("search", "Typed search not handled yet")
		os.Exit(3)
	}

	fnt, mm := Core.Instantiate(fnt, index)
	return Core.MakeSingleElementFormAndTermList(fnt), mm
}
