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
package search

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	syntax "github.com/GoelandProver/Goeland/syntaxic-manipulations"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
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
func ApplyClosureRules(form basictypes.Form, state *complextypes.State) (result bool, substitutions []treetypes.Substitutions) {
	global.PrintDebug("ACR", "Start ACR")

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
		global.PrintDebug("ACR", "Subst found")

		for _, subst := range matchSubsts {
			global.PrintDebug("ACR", fmt.Sprintf("MSL : %v", subst.ToString()))

			if subst.GetSubst().Equals(treetypes.MakeEmptySubstitution()) {
				result = true
			} else {
				if !searchForbidden(state, subst) {
					result = true
				}
			}

			if result {
				global.PrintDebug("ACR", fmt.Sprintf("Subst found between : %v and %v : %v", form.ToString(), subst.GetForm().ToString(), subst.GetSubst().ToString()))
				substitutions = treetypes.AppendIfNotContainsSubst(substitutions, subst.GetSubst())
			}
		}
	}

	return result, substitutions
}

func searchForbidden(state *complextypes.State, s treetypes.MatchingSubstitutions) bool {
	foundForbidden := false

	for _, substForbidden := range state.GetForbiddenSubsts() {
		forbiddenShared := complextypes.AreEqualsModuloaLaphaConversion(s.GetSubst(), substForbidden)

		if forbiddenShared {
			foundForbidden = true
		}
	}

	return foundForbidden
}

/* Search obvious closure rule like ⊥ and ¬⊤ */
func searchObviousClosureRule(f basictypes.Form) bool {
	switch nf := f.(type) {
	case basictypes.Bot:
		global.PrintDebug("AR", "⊥ found !")
		return true
	case basictypes.Not:
		switch nf.GetForm().(type) {
		case basictypes.Top:
			global.PrintDebug("AR", "¬⊤ found !")
			return true
		default:
			return false
		}
	default:
		return false
	}
}

/* Search contradiction with inequalities (for example, !(x,a) -> subst(x, a)) */
func searchInequalities(form basictypes.Form) (bool, treetypes.Substitutions) {
	subst := treetypes.MakeEmptySubstitution()

	if formNot, isNot := form.(basictypes.Not); isNot {
		if predNeq, isPred := formNot.GetForm().(basictypes.Pred); isPred {
			if predNeq.GetID().Equals(basictypes.Id_eq) {

				global.PrintDebug("SI", fmt.Sprintf("Search Inequality closure rule : %v", form.ToString()))

				// Search if the two terms are unfiable
				arg_1 := predNeq.GetArgs().Get(0)
				arg_2 := predNeq.GetArgs().Get(1)

				global.PrintDebug("SI", fmt.Sprintf("Arg 1 : %v", arg_1.ToString()))
				global.PrintDebug("SI", fmt.Sprintf("Arg 2 : %v", arg_2.ToString()))

				subst = treesearch.AddUnification(arg_1, arg_2, subst)
				global.PrintDebug("SI", fmt.Sprintf("Subst : %v", subst.ToString()))

				if !subst.Equals(treetypes.Failure()) {
					return true, subst
				}
			}
		}
	}

	return false, nil
}

/* Search a contradiction between a formula and another in the datastructure */
func searchClosureRule(f basictypes.Form, st complextypes.State) (bool, []treetypes.MatchingSubstitutions) {
	switch nf := f.(type) {
	case basictypes.Pred:
		return st.GetTreeNeg().Unify(f)
	case basictypes.Not:
		switch nf.GetForm().(type) {
		case basictypes.Pred:
			return st.GetTreePos().Unify(nf.GetForm())
		default:
			return false, nil
		}
	default:
		return false, nil
	}
}

func setStateRules(state *complextypes.State, name string, forms ...string) {
	strChars := strToPrintMap[name]
	strWords := name

	for _, val := range forms {
		strChars += strToPrintMap[val]
		strWords += "_" + val
	}

	global.PrintDebug("AR", "Applying "+strChars+"...")

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
func ApplyAlphaRules(fnt basictypes.FormAndTerms, state *complextypes.State) basictypes.FormAndTermsList {
	var result basictypes.FormAndTermsList

	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch formTyped := form.(type) {
	case basictypes.Not:
		result = applyAlphaNotRule(formTyped, state, terms, result)
	case basictypes.And:
		result = applyAlphaAndRule(formTyped, state, terms, result)
	}

	return result
}

func applyAlphaNotRule(formTyped basictypes.Not, state *complextypes.State, terms *basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	switch formWithoutNot := formTyped.GetForm().(type) {
	case basictypes.Not:
		result = applyAlphaNotNotRule(formWithoutNot, state, terms, result)
	case basictypes.Or:
		result = applyAlphaNotOrRule(formWithoutNot, state, terms, result)
	case basictypes.Imp:
		result = applyAlphaNotImpRule(formWithoutNot, state, terms, result)
	}

	return result
}

func applyAlphaNotNotRule(formWithoutNot basictypes.Not, state *complextypes.State, terms *basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	setStateRules(state, "ALPHA", "NOT", "NOT")

	result = result.AppendIfNotContains(basictypes.MakeFormAndTerm(formWithoutNot.GetForm(), terms))

	return result
}

func applyAlphaNotOrRule(formWithoutNot basictypes.Or, state *complextypes.State, terms *basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	setStateRules(state, "ALPHA", "NOT", "OR")

	for i := range formWithoutNot.FormList {
		result = result.AppendIfNotContains(basictypes.MakeFormAndTerm(basictypes.RefuteForm(formWithoutNot.FormList[i]), terms))
	}

	return result
}

func applyAlphaNotImpRule(formWithoutNot basictypes.Imp, state *complextypes.State, terms *basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	setStateRules(state, "ALPHA", "NOT", "IMPLY")

	result = result.AppendIfNotContains(basictypes.MakeFormAndTerm(formWithoutNot.GetF1(), terms))
	result = result.AppendIfNotContains(basictypes.MakeFormAndTerm(basictypes.RefuteForm(formWithoutNot.GetF2()), terms))

	return result
}

func applyAlphaAndRule(formTyped basictypes.And, state *complextypes.State, terms *basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	setStateRules(state, "ALPHA", "AND")

	for i := range formTyped.FormList {
		result = result.AppendIfNotContains(basictypes.MakeFormAndTerm(formTyped.FormList[i], terms))
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
func ApplyBetaRules(fnt basictypes.FormAndTerms, state *complextypes.State) []basictypes.FormAndTermsList {
	var result []basictypes.FormAndTermsList

	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch formTyped := form.(type) {
	case basictypes.Not:
		result = applyBetaNotRule(formTyped, state, terms, result)
	case basictypes.Or:
		result = applyBetaOrRule(formTyped, state, terms, result)
	case basictypes.Imp:
		result = applyBetaImpRule(formTyped, state, terms, result)
	case basictypes.Equ:
		result = applyBetaEquRule(formTyped, state, terms, result)
	}

	return result
}

func applyBetaNotRule(formTyped basictypes.Not, state *complextypes.State, terms *basictypes.TermList, result []basictypes.FormAndTermsList) []basictypes.FormAndTermsList {
	switch formWithoutNot := formTyped.GetForm().(type) {
	case basictypes.And:
		result = applyBetaNotAndRule(formWithoutNot, state, terms, result)
	case basictypes.Equ:
		result = applyBetaNotEquRule(formWithoutNot, state, terms, result)
	}

	return result
}

func applyBetaNotAndRule(formWithoutNot basictypes.And, state *complextypes.State, terms *basictypes.TermList, result []basictypes.FormAndTermsList) []basictypes.FormAndTermsList {
	setStateRules(state, "BETA", "NOT", "AND")

	for i := range formWithoutNot.FormList {
		result = append(result, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(basictypes.RefuteForm(formWithoutNot.FormList[i]), terms)))
	}

	return result
}

func applyBetaNotEquRule(formWithoutNot basictypes.Equ, state *complextypes.State, terms *basictypes.TermList, result []basictypes.FormAndTermsList) []basictypes.FormAndTermsList {
	setStateRules(state, "BETA", "NOT", "EQUIV")

	result = append(result,
		basictypes.FormAndTermsList{
			basictypes.MakeFormAndTerm(basictypes.RefuteForm(formWithoutNot.GetF1()), terms),
			basictypes.MakeFormAndTerm(formWithoutNot.GetF2(), terms)})
	result = append(result,
		basictypes.FormAndTermsList{
			basictypes.MakeFormAndTerm(formWithoutNot.GetF1(), terms),
			basictypes.MakeFormAndTerm(basictypes.RefuteForm(formWithoutNot.GetF2()), terms)})

	return result
}

func applyBetaOrRule(formTyped basictypes.Or, state *complextypes.State, terms *basictypes.TermList, result []basictypes.FormAndTermsList) []basictypes.FormAndTermsList {
	setStateRules(state, "BETA", "OR")

	for i := range formTyped.FormList {
		result = append(result, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(formTyped.FormList[i], terms)))
	}

	return result
}

func applyBetaImpRule(formTyped basictypes.Imp, state *complextypes.State, terms *basictypes.TermList, result []basictypes.FormAndTermsList) []basictypes.FormAndTermsList {
	setStateRules(state, "BETA", "IMPLY")

	result = append(result, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(basictypes.RefuteForm(formTyped.GetF1()), terms)))
	result = append(result, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(formTyped.GetF2(), terms)))

	return result
}

func applyBetaEquRule(formTyped basictypes.Equ, state *complextypes.State, terms *basictypes.TermList, result []basictypes.FormAndTermsList) []basictypes.FormAndTermsList {
	setStateRules(state, "BETA", "EQUIV")

	result = append(result,
		basictypes.FormAndTermsList{
			basictypes.MakeFormAndTerm(basictypes.RefuteForm(formTyped.GetF1()), terms),
			basictypes.MakeFormAndTerm(basictypes.RefuteForm(formTyped.GetF2()), terms)})
	result = append(result,
		basictypes.FormAndTermsList{
			basictypes.MakeFormAndTerm(formTyped.GetF1(), terms),
			basictypes.MakeFormAndTerm(formTyped.GetF2(), terms)})

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
func ApplyDeltaRules(fnt basictypes.FormAndTerms, state *complextypes.State) basictypes.FormAndTermsList {
	switch fnt.GetForm().(type) {
	case basictypes.Not:
		setStateRules(state, "DELTA", "NOT", "FORALL")
	case basictypes.Ex:
		setStateRules(state, "DELTA", "EXISTS")
	}

	newMetas := state.GetMM().Copy()
	newMetas.AppendIfNotContains(state.GetMC().Slice()...)

	return basictypes.MakeSingleElementFormAndTermList(syntax.Skolemize(fnt, newMetas))
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
func ApplyGammaRules(fnt basictypes.FormAndTerms, index int, state *complextypes.State) (basictypes.FormAndTermsList, *basictypes.MetaList) {
	switch fnt.GetForm().(type) {
	case basictypes.Not:
		setStateRules(state, "GAMMA", "NOT", "EXISTS")

	case basictypes.All:
		setStateRules(state, "GAMMA", "FORALL")
	}

	fnt, mm := syntax.Instantiate(fnt, index)
	return basictypes.MakeSingleElementFormAndTermList(fnt), mm
}
