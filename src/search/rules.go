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

	treetypes "github.com/delahayd/gotab/code-trees/tree-types"
	"github.com/delahayd/gotab/global"
	basictypes "github.com/delahayd/gotab/types/basic-types"
	complextypes "github.com/delahayd/gotab/types/complex-types"
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
			sl = complextypes.AppendIfNotContainsSubst(sl, s.GetSubst())
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
func applyAlphaRules(f basictypes.FormAndTerm) []basictypes.FormAndTerm {
	var res []basictypes.FormAndTerm
	switch nf := f.GetForm().(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.Not:
			global.PrintDebug("AR", "Applying α¬¬...")
			res = append(res, basictypes.MakeFormAndTerm(nnf.GetForm(), f.GetTerms()))
		case basictypes.Or:
			global.PrintDebug("AR", "Applying α¬∨...")
			for i := range nnf.GetLF() {
				res = append(res, basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetLF()[i]), f.GetTerms()))
			}
		case basictypes.Imp:
			global.PrintDebug("AR", "Applying α¬⇒...")
			res = append(res, basictypes.MakeFormAndTerm(nnf.GetF1(), f.GetTerms()))
			res = append(res, basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetF2()), f.GetTerms()))
		}
	case basictypes.And:
		global.PrintDebug("AR", "Applying α∧...")
		for i := range nf.GetLF() {
			res = append(res, basictypes.MakeFormAndTerm(nf.GetLF()[i], f.GetTerms()))
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
func applyBetaRules(f basictypes.FormAndTerm) [][]basictypes.FormAndTerm {
	var res [][]basictypes.FormAndTerm
	switch nf := f.GetForm().(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.And:
			global.PrintDebug("AR", "Applying β¬∧...")
			for i := range nnf.GetLF() {
				res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetLF()[i]), f.GetTerms())})
			}
		case basictypes.Equ:
			global.PrintDebug("AR", "Applying β¬⇔...")
			res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetF1()), f.GetTerms()), basictypes.MakeFormAndTerm(nnf.GetF2(), f.GetTerms())})
			res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(nnf.GetF1(), f.GetTerms()), basictypes.MakeFormAndTerm(basictypes.RefuteForm(nnf.GetF2()), f.GetTerms())})
		}
	case basictypes.Or:
		global.PrintDebug("AR", "Applying β∨...")
		for i := range nf.GetLF() {
			res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(nf.GetLF()[i], f.GetTerms())})
		}
	case basictypes.Imp:
		global.PrintDebug("AR", "Applying β⇒...")
		res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(basictypes.RefuteForm(nf.GetF1()), f.GetTerms())})
		res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(nf.GetF2(), f.GetTerms())})
	case basictypes.Equ:
		global.PrintDebug("AR", "Applying β⇔...")
		res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(basictypes.RefuteForm(nf.GetF1()), f.GetTerms()), basictypes.MakeFormAndTerm(basictypes.RefuteForm(nf.GetF2()), f.GetTerms())})
		res = append(res, []basictypes.FormAndTerm{basictypes.MakeFormAndTerm(nf.GetF1(), f.GetTerms()), basictypes.MakeFormAndTerm(nf.GetF2(), f.GetTerms())})
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
func applyDeltaRules(f basictypes.FormAndTerm) []basictypes.FormAndTerm {
	var result []basictypes.FormAndTerm
	switch nf := f.GetForm().(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.All:
			global.PrintDebug("AR", "Applying δ¬∀...")
			fun_tmp := nnf.GetForm()
			for _, v := range nnf.GetVarList() {
				skolem_fun := basictypes.MakerFun(basictypes.MakerNewId("skolem_"+v.GetName()+strconv.Itoa(v.GetIndex())), f.GetTerms())
				fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, skolem_fun)
			}
			result = append(result, basictypes.MakeFormAndTerm(basictypes.MakeNot(fun_tmp), f.GetTerms()))
		}
	case basictypes.Ex:
		global.PrintDebug("AR", "Applying δ∃...")
		fun_tmp := nf.GetForm()
		for _, v := range nf.GetVarList() {
			skolem_fun := basictypes.MakerFun(basictypes.MakerNewId("skolem_"+v.GetName()+strconv.Itoa(v.GetIndex())), f.GetTerms())
			fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, skolem_fun)
		}
		result = append(result, basictypes.MakeFormAndTerm(fun_tmp, f.GetTerms()))

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
func applyGammaRules(f basictypes.FormAndTerm, index int) ([]basictypes.FormAndTerm, basictypes.MetaList) {
	var result []basictypes.FormAndTerm
	var new_terms []basictypes.Term
	var new_mm basictypes.MetaList
	switch nf := f.GetForm().(type) {
	case basictypes.Not:
		switch nnf := nf.GetForm().(type) {
		case basictypes.Ex:
			global.PrintDebug("AR", "Applying γ¬∃...")
			fun_tmp := nnf.GetForm()
			for _, v := range nnf.GetVarList() {
				meta := basictypes.MakerMeta(strings.ToUpper(v.GetName()), index)
				new_terms = append(new_terms, meta)
				new_mm = append(new_mm, meta)
				fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, meta)
			}
			result = append(result, basictypes.MakeFormAndTerm(basictypes.MakeNot(fun_tmp), append(f.GetTerms(), new_terms...)))
		}
	case basictypes.All:
		global.PrintDebug("AR", "Applying γ∀...")
		fun_tmp := nf.GetForm()
		for _, v := range nf.GetVarList() {
			meta := basictypes.MakerMeta(strings.ToUpper(v.GetName()), index)
			new_terms = append(new_terms, meta)
			new_mm = append(new_mm, meta)
			fun_tmp = basictypes.ReplaceVarByTerm(fun_tmp, v, meta)
		}
		result = append(result, basictypes.MakeFormAndTerm(fun_tmp, append(f.GetTerms(), new_terms...)))

	}
	return result, new_mm
}
