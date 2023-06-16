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
/************/
/* rules.go */
/************/

/**
* This file contains functions to apply rules on a search
**/
package search

import (
	"fmt"
	"strings"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

/*************/
/* Functions */
/*************/

/**
* ApplyClosureRules
* Search closure rules (not true or false), and call search conflict if no obvious closure found
* Datas :
* 	f : the formula for which we are looking for the contradiction
* 	st : a state, containing all the formula of the current step
* Result :
*	a boolean, true if a contradiction was found, false otherwise
*	a substitution, the substitution which make the contradiction (possibly empty)
**/
func applyClosureRules(f basictypes.Form, st *complextypes.State) (bool, []treetypes.Substitutions) {
	global.PrintDebug("ACR", "Start ACR")
	var sl []treetypes.Substitutions
	res := false

	/* Search obvious closure rule */
	if searchObviousClosureRule(f) {
		return true, sl
	}

	// Search inequality
	subst_found, subst := searchInequalities(f)
	if subst_found {
		res = true
		sl = append(sl, subst)
	}

	/* Search contradiction */
	subst_found, msl := searchClosureRule(f, *st)

	if subst_found {
		global.PrintDebug("ACR", "Subst found")

		// Check if the substitution was not tried before
		for _, s := range msl { // Pour chaque ensemble de substitution
			global.PrintDebug("ACR", fmt.Sprintf("MSL : %v", s.ToString()))

			if s.GetSubst().Equals(treetypes.MakeEmptySubstitution()) {
				res = true
			} else {
				// Je regarde chaque élément de ma substitution
				found_forbidden := false
				for _, subst_forbidden := range st.GetForbiddenSubsts() { // Si j'en trouve un qui a une instance en commun avec un fobidden, on interdit
					if complextypes.AreEqualsModuloaLaphaConversion(s.GetSubst(), subst_forbidden) {
						found_forbidden = true
					}
				}

				if !found_forbidden {
					res = true
				}
			}

			if res {
				global.PrintDebug("ACR", fmt.Sprintf("Subst found between : %v and %v : %v", f.ToString(), s.GetForm().ToString(), s.GetSubst().ToString()))
				sl = treetypes.AppendIfNotContainsSubst(sl, s.GetSubst())
			}
		}
	}

	return res, sl
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
func searchInequalities(f basictypes.Form) (bool, treetypes.Substitutions) {
	subst := treetypes.MakeEmptySubstitution()
	if form_not, ok := f.(basictypes.Not); ok {
		if pred_neq, ok := form_not.GetForm().(basictypes.Pred); ok {
			if pred_neq.GetID().Equals(basictypes.Id_eq) {

				global.PrintDebug("SI", fmt.Sprintf("Search Inequality closure rule : %v", f.ToString()))

				// Search if the two terms are unfiable
				arg_1 := pred_neq.GetArgs()[0]
				arg_2 := pred_neq.GetArgs()[1]

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

/**
* ApplyAlphaRules
* Take a formula, return a list of formulae (conjunction)
* Datas :
* 	f : a formula to which a alpha rule will be applied
* Result :
*	a formula list (conjunction)
**/
func ApplyAlphaRules(f basictypes.FormAndTerms, st *complextypes.State) basictypes.FormAndTermsList {
	var res basictypes.FormAndTermsList
	form := f.GetForm()
	terms := f.GetTerms()
	switch nf := form.(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.Not:
			global.PrintDebug("AR", "Applying α¬¬...")
			st.SetCurrentProofRule("α¬¬")
			st.SetCurrentProofRuleName("ALPHA_NOT_NOT")
			res = res.AppendIfNotContains(basictypes.MakeFormAndTerm(nnf.GetForm(), terms))
		case basictypes.Or:
			global.PrintDebug("AR", "Applying α¬∨...")
			st.SetCurrentProofRule("α¬∨")
			st.SetCurrentProofRuleName("ALPHA_NOT_OR")
			for i := range nnf.GetLF() {
				res = res.AppendIfNotContains(basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetLF()[i]), terms))
			}
		case basictypes.Imp:
			global.PrintDebug("AR", "Applying α¬⇒...")
			st.SetCurrentProofRule("α¬⇒")
			st.SetCurrentProofRuleName("ALPHA_NOT_IMPLY")
			res = res.AppendIfNotContains(basictypes.MakeFormAndTerm(nnf.GetF1(), terms))
			res = res.AppendIfNotContains(basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetF2()), terms))
		}
	case basictypes.And:
		global.PrintDebug("AR", "Applying α∧...")
		st.SetCurrentProofRule("α∧")
		st.SetCurrentProofRuleName("ALPHA_AND")
		for i := range nf.GetLF() {
			res = res.AppendIfNotContains(basictypes.MakeFormAndTerm(nf.GetLF()[i], terms))
		}
	}
	return res
}

/**
* ApplyBetaRules
* Take a formula, return a list of formulae (disjunction)
* Datas :
* 	f : a formula to which a beta rule will be applied
* Result :
*	a formula list (disjunction)
**/
func ApplyBetaRules(f basictypes.FormAndTerms, st *complextypes.State) []basictypes.FormAndTermsList {
	var res []basictypes.FormAndTermsList
	form := f.GetForm()
	terms := f.GetTerms()
	switch nf := form.(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.And:
			global.PrintDebug("AR", "Applying β¬∧...")
			st.SetCurrentProofRule("β¬∧")
			st.SetCurrentProofRuleName("BETA_NOT_AND")
			for i := range nnf.GetLF() {
				res = append(res, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetLF()[i]), terms)))
			}
		case basictypes.Equ:
			global.PrintDebug("AR", "Applying β¬⇔...")
			st.SetCurrentProofRule("β¬⇔")
			st.SetCurrentProofRuleName("BETA_NOT_EQUIV")
			res = append(res,
				basictypes.FormAndTermsList{
					basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetF1()), terms),
					basictypes.MakeFormAndTerm(nnf.GetF2(), terms)})
			res = append(res,
				basictypes.FormAndTermsList{
					basictypes.MakeFormAndTerm(nnf.GetF1(), terms),
					basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetF2()), terms)})
		}
	case basictypes.Or:
		global.PrintDebug("AR", "Applying β∨...")
		st.SetCurrentProofRule("β∨")
		st.SetCurrentProofRuleName("BETA_OR")
		for i := range nf.GetLF() {
			res = append(res, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(nf.GetLF()[i], terms)))
		}
	case basictypes.Imp:
		global.PrintDebug("AR", "Applying β⇒...")
		st.SetCurrentProofRule("β⇒")
		st.SetCurrentProofRuleName("BETA_IMPLY")
		res = append(res, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(basictypes.RefuteForm(nf.GetF1()), terms)))
		res = append(res, basictypes.MakeSingleElementFormAndTermList(basictypes.MakeFormAndTerm(nf.GetF2(), terms)))
	case basictypes.Equ:
		global.PrintDebug("AR", "Applying β⇔...")
		st.SetCurrentProofRule("β⇔")
		st.SetCurrentProofRuleName("BETA_EQUIV")
		res = append(res,
			basictypes.FormAndTermsList{
				basictypes.MakeFormAndTerm(basictypes.RefuteForm(nf.GetF1()), terms),
				basictypes.MakeFormAndTerm(basictypes.RefuteForm(nf.GetF2()), terms)})
		res = append(res,
			basictypes.FormAndTermsList{
				basictypes.MakeFormAndTerm(nf.GetF1(), terms),
				basictypes.MakeFormAndTerm(nf.GetF2(), terms)})
	}
	return res
}

/**
* ApplyDeltaRules
* Take a formula, return a new formula without existential variables
* Datas :
* 	f : a formula to which a delta rule will be applied
* Result :
*	a formula
**/
func ApplyDeltaRules(f basictypes.FormAndTerms, st *complextypes.State) basictypes.FormAndTermsList {
	switch f.GetForm().(type) {
	case basictypes.Not:
		global.PrintDebug("AR", "Applying δ¬∀...")
		st.SetCurrentProofRule("δ¬∀")
		st.SetCurrentProofRuleName("DELTA_NOT_FORALL")
	case basictypes.Ex:
		global.PrintDebug("AR", "Applying δ∃...")
		st.SetCurrentProofRule("δ∃")
		st.SetCurrentProofRuleName("DELTA_EXISTS")
	}

	return basictypes.MakeSingleElementFormAndTermList(Skolemize(f))
}

/**
* ApplyGammaRules
* Take a formula, return a new formula without universal variables
* Datas :
* 	f : a formula to which a delta rule will be applied
* Result :
*	a formula
*	the new metavariables
**/
func ApplyGammaRules(f basictypes.FormAndTerms, index int, st *complextypes.State) (basictypes.FormAndTermsList, basictypes.MetaList) {
	switch f.GetForm().(type) {
	case basictypes.Not:
		global.PrintDebug("AR", "Applying γ¬∃...")
		st.SetCurrentProofRule("γ¬∃")
		st.SetCurrentProofRuleName("GAMMA_NOT_EXISTS")
	case basictypes.All:
		global.PrintDebug("AR", "Applying γ∀...")
		st.SetCurrentProofRule("γ∀")
		st.SetCurrentProofRuleName("GAMMA_FORALL")
	}

	form, mm := Instantiate(f, index)
	return basictypes.MakeSingleElementFormAndTermList(form), mm
}

/* Syntaxic manipulations below */

/**
 * Skolemizes once the formula f.
 */
func Skolemize(f basictypes.FormAndTerms) basictypes.FormAndTerms {
	form := f.GetForm()
	terms := f.GetTerms()
	switch nf := form.(type) {
	// 1 - not(forall F1)
	case basictypes.Not:
		if tmp, ok := nf.GetForm().(basictypes.All); ok {
			f = basictypes.MakeFormAndTerm(basictypes.RefuteForm(realSkolemize(tmp.GetForm(), tmp.GetVarList(), terms)), terms)
		}
	// 2 - exists F1
	case basictypes.Ex:
		f = basictypes.MakeFormAndTerm(realSkolemize(nf.GetForm(), nf.GetVarList(), terms), terms)
	}
	return f
}

/**
 * Applies skolemization to a formula (ie: replaces existential quantified variables
 * by fresh skolem symbols).
 * delta : all the meta under and new function name
 * delta+ : only relevant meta : getmeta + meta replaced
 * delta++ : same function name (need classical skolem for meta)
 **/
func realSkolemize(f basictypes.Form, vars []basictypes.Var, terms basictypes.TermList) basictypes.Form {
	// Replace each variable by the skolemized term.
	for _, v := range vars {
		// TypeScheme construction
		var t typing.TypeApp
		// Okay that's absolutely wrong, but it's the best way of doing things right now, I swear.
		for _, term := range terms {
			if meta, ok := term.(basictypes.Meta); ok {
				t = crossType(t, meta.GetTypeApp())
			}
		}

		var scheme typing.TypeScheme
		if t == nil {
			scheme = v.GetTypeHint()
		} else {
			scheme = typing.MkTypeArrow(t, global.To[typing.TypeApp](v.GetTypeHint()))
		}

		// A Skolem symbol has no quantified variables.
		skolem := basictypes.MakerFun(
			basictypes.MakerNewId(fmt.Sprintf("skolem_%s%v", v.GetName(), v.GetIndex())), // Or makerNewId
			terms,
			[]typing.TypeApp{},
			scheme,
		)
		f = f.ReplaceVarByTerm(v, skolem)
	}
	return f
}

/**
 * Instantiates once the formula f.
 */
func Instantiate(f basictypes.FormAndTerms, index int) (basictypes.FormAndTerms, basictypes.MetaList) {
	var newMm basictypes.MetaList
	terms := f.GetTerms()

	switch nf := f.GetForm().(type) {
	case basictypes.Not:
		if tmp, ok := nf.GetForm().(basictypes.Ex); ok {
			form, metas := realInstantiate(tmp.GetForm(), index, tmp.GetVarList())
			newMm = append(newMm, metas...)
			f = basictypes.MakeFormAndTerm(basictypes.RefuteForm(form), terms.MergeTermList(newMm.ToTermList()))
		}
	case basictypes.All:
		form, metas := realInstantiate(nf.GetForm(), index, nf.GetVarList())
		newMm = append(newMm, metas...)
		f = basictypes.MakeFormAndTerm(form, terms.MergeTermList(newMm.ToTermList()))
	case basictypes.AllType:
		f = basictypes.MakeFormAndTerm(nf.GetForm().ReplaceTypeByMeta(nf.GetVarList(), index), basictypes.MakeEmptyTermList())
		for _, v := range nf.GetVarList() {
			v.ShouldBeMeta(index)
		}
		f = basictypes.MakeFormAndTerm(basictypes.MakeAllType(nf.GetIndex(), nf.GetVarList(), f.GetForm()), basictypes.MakeEmptyTermList())
	}
	return f, newMm
}

func realInstantiate(form basictypes.Form, index int, vars []basictypes.Var) (basictypes.Form, basictypes.MetaList) {
	var newMm basictypes.MetaList
	for _, v := range vars {
		meta := basictypes.MakerMeta(strings.ToUpper(v.GetName()), index, v.GetTypeHint().(typing.TypeApp))
		newMm = append(newMm, meta)
		form = form.ReplaceVarByTerm(v, meta)
	}
	return form, newMm
}

func crossType(t typing.TypeApp, tf typing.TypeApp) typing.TypeApp {
	if t == nil {
		return tf
	}
	return typing.MkTypeCross(t, tf)
}
