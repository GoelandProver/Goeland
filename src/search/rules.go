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
	"strconv"
	"strings"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
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
	var msl []treetypes.MatchingSubstitutions
	var sl []treetypes.Substitutions

	/* Search obvious closure rule */
	if searchObviousClosureRule(f) {
		return true, sl
	}

	/* Search contradiction */
	res, msl := searchClosureRule(f, *st)
	if len(msl) > 0 {
		for _, s := range msl {
			global.PrintDebug("ACR", fmt.Sprintf("Subst found between : %v and %v : %v", f.ToString(), s.GetForm().ToString(), s.GetSubst().ToString()))
			sl = treetypes.AppendIfNotContainsSubst(sl, s.GetSubst())
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
func applyAlphaRules(f basictypes.Form, st *complextypes.State) basictypes.FormList {
	var res basictypes.FormList
	switch nf := f.(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.Not:
			global.PrintDebug("AR", "Applying α¬¬...")
			st.SetCurrentProofRule("α¬¬")
			st.SetCurrentProofRuleName("ALPHA_NOT_NOT")
			res = append(res, nnf.GetForm())
		case basictypes.Or:
			global.PrintDebug("AR", "Applying α¬∨...")
			st.SetCurrentProofRule("α¬∨")
			st.SetCurrentProofRuleName("ALPHA_NOT_OR")
			for i := range nnf.GetLF() {
				res = append(res, basictypes.RefuteForm(nnf.GetLF()[i]))
			}
		case basictypes.Imp:
			global.PrintDebug("AR", "Applying α¬⇒...")
			st.SetCurrentProofRule("α¬⇒")
			st.SetCurrentProofRuleName("ALPHA_NOT_IMPLY")
			res = append(res, nnf.GetF1())
			res = append(res, basictypes.RefuteForm(nnf.GetF2()))
		}
	case basictypes.And:
		global.PrintDebug("AR", "Applying α∧...")
		st.SetCurrentProofRule("α∧")
		st.SetCurrentProofRuleName("ALPHA_AND")
		for i := range nf.GetLF() {
			res = append(res, nf.GetLF()[i])
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
func applyBetaRules(f basictypes.Form, st *complextypes.State) []basictypes.FormList {
	var res []basictypes.FormList
	switch nf := f.(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.And:
			global.PrintDebug("AR", "Applying β¬∧...")
			st.SetCurrentProofRule("β¬∧")
			st.SetCurrentProofRuleName("BETA_NOT_AND")
			for i := range nnf.GetLF() {
				res = append(res, basictypes.MakeSingleElementList(basictypes.RefuteForm(nnf.GetLF()[i])))
			}
		case basictypes.Equ:
			global.PrintDebug("AR", "Applying β¬⇔...")
			st.SetCurrentProofRule("β¬⇔")
			st.SetCurrentProofRuleName("BETA_NOT_EQUIV")
			res = append(res, basictypes.FormList{basictypes.RefuteForm(nnf.GetF1()), nnf.GetF2()})
			res = append(res, basictypes.FormList{nnf.GetF1(), basictypes.RefuteForm(nnf.GetF2())})
		}
	case basictypes.Or:
		global.PrintDebug("AR", "Applying β∨...")
		st.SetCurrentProofRule("β∨")
		st.SetCurrentProofRuleName("BETA_OR")
		for i := range nf.GetLF() {
			res = append(res, basictypes.MakeSingleElementList(nf.GetLF()[i]))
		}
	case basictypes.Imp:
		global.PrintDebug("AR", "Applying β⇒...")
		st.SetCurrentProofRule("β⇒")
		st.SetCurrentProofRuleName("BETA_IMPLY")
		res = append(res, basictypes.MakeSingleElementList(basictypes.RefuteForm(nf.GetF1())))
		res = append(res, basictypes.MakeSingleElementList(nf.GetF2()))
	case basictypes.Equ:
		global.PrintDebug("AR", "Applying β⇔...")
		st.SetCurrentProofRule("β⇔")
		st.SetCurrentProofRuleName("BETA_EQUIV")
		res = append(res, basictypes.FormList{basictypes.RefuteForm(nf.GetF1()), basictypes.RefuteForm(nf.GetF2())})
		res = append(res, basictypes.FormList{nf.GetF1(), nf.GetF2()})
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
func applyDeltaRules(f basictypes.Form, st *complextypes.State) basictypes.FormList {
	var result basictypes.FormList
	switch nf := f.(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.All:
			global.PrintDebug("AR", "Applying δ¬∀...")
			st.SetCurrentProofRule("δ¬∀")
			st.SetCurrentProofRuleName("DELTA_NOT_FORALL")
			fun_tmp := nnf.GetForm()
			for _, v := range nnf.GetVarList() {
				skolem_fun := basictypes.MakerFun(basictypes.MakerNewId("skolem_"+v.GetName()+strconv.Itoa(v.GetIndex())), f.GetMetas().ToTermList())
				fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, skolem_fun)
			}
			result = append(result, basictypes.RefuteForm(fun_tmp))
		}
	case basictypes.Ex:
		global.PrintDebug("AR", "Applying δ∃...")
		st.SetCurrentProofRule("δ∃")
		st.SetCurrentProofRuleName("DELTA_EXISTS")
		fun_tmp := nf.GetForm()
		for _, v := range nf.GetVarList() {
			skolem_fun := basictypes.MakerFun(basictypes.MakerNewId("skolem_"+v.GetName()+strconv.Itoa(v.GetIndex())), f.GetMetas().ToTermList())
			fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, skolem_fun)
		}
		result = append(result, fun_tmp)

	}
	return result
}

/**
* ApplyDeltaRules
* Take a formula, return a new formula without existential variables
* Datas :
* 	f : a formula to which a delta rule will be applied
* Result :
*	a formula
*	the new metavariables
**/
func applyGammaRules(f basictypes.Form, index int, st *complextypes.State) (basictypes.FormList, basictypes.MetaList) {
	var result basictypes.FormList
	var new_mm basictypes.MetaList
	switch nf := f.(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.Ex:
			global.PrintDebug("AR", "Applying γ¬∃...")
			st.SetCurrentProofRule("γ¬∃")
			st.SetCurrentProofRuleName("GAMMA_NOT_EXISTS")
			fun_tmp := nnf.GetForm()
			for _, v := range nnf.GetVarList() {
				meta := basictypes.MakerMeta(strings.ToUpper(v.GetName()), index)
				new_mm = append(new_mm, meta)
				fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, meta)
			}
			result = append(result, basictypes.RefuteForm(fun_tmp))
		}
	case basictypes.All:
		global.PrintDebug("AR", "Applying γ∀...")
		st.SetCurrentProofRule("γ∀")
		st.SetCurrentProofRuleName("GAMMA_FORALL")
		fun_tmp := nf.GetForm()
		for _, v := range nf.GetVarList() {
			meta := basictypes.MakerMeta(strings.ToUpper(v.GetName()), index)
			new_mm = append(new_mm, meta)
			fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, meta)
		}
		result = append(result, fun_tmp)

	}
	return result, new_mm
}
