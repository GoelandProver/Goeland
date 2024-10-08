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
* This file contains functions and types which describe the substitution management in a proofsearch.
**/

package complextypes

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/* Return the list of metavariable from a substitution */
func GetMetaFromSubst(subs treetypes.Substitutions) *basictypes.MetaList {
	res := basictypes.NewMetaList()

	for _, singleSubs := range subs {
		meta, term := singleSubs.Get()
		res.AppendIfNotContains(meta)

		switch typedTerm := term.(type) {
		case basictypes.Meta:
			res.AppendIfNotContains(typedTerm)
		case basictypes.Fun:
			res.AppendIfNotContains(typedTerm.GetArgs().GetMetas().Slice()...)
		}
	}

	return res
}

/* Remove substitution without mm */
func RemoveElementWithoutMM(subs treetypes.Substitutions, mm *basictypes.MetaList) treetypes.Substitutions {
	global.PrintDebug("REWM", fmt.Sprintf("MM : %v", mm.ToString()))

	res := treetypes.Substitutions{}

	subsToReorganize := treetypes.Substitutions{}
	relevantMetas := mm.Copy()
	hasChanged := true

	for hasChanged {
		hasChanged = false
		global.PrintDebug("REWM", fmt.Sprintf("Relevant meta : %v", relevantMetas.ToString()))
		for _, singleSubs := range subs {
			meta, term := singleSubs.Get()

			switch typedTerm := term.(type) {
			case basictypes.Meta:
				switch {
				case relevantMetas.Contains(meta) && relevantMetas.Contains(typedTerm):
					res.Set(meta, typedTerm)

				case relevantMetas.Contains(meta) && !relevantMetas.Contains(typedTerm):
					subsToReorganize.Set(meta, typedTerm)
				}

			default:
				if relevantMetas.Contains(meta) {
					res.Set(meta, term)
					for _, candidateMeta := range term.GetMetas().Slice() {
						if !relevantMetas.Contains(candidateMeta) {
							relevantMetas.Append(candidateMeta)
							hasChanged = true
						}
					}
				}
			}
		}
	}

	global.PrintDebug("REWM", fmt.Sprintf("Subst intermédiaire res : %v", res.ToString()))
	global.PrintDebug("REWM", fmt.Sprintf("Subst intermédiaire subst_to_reorganize  : %v", subsToReorganize.ToString()))

	subsToReorganize = ReorganizeSubstitution(subsToReorganize)
	treetypes.EliminateMeta(&subsToReorganize)
	treetypes.Eliminate(&subsToReorganize)
	ms, _ := treesearch.MergeSubstitutions(res, subsToReorganize)

	global.PrintDebug("REWM", fmt.Sprintf("Finale subst : %v", ms.ToString()))

	if ms.Equals(treetypes.Failure()) {
		global.PrintError("REWM", "MergeSubstitutions returns failure")
	}

	return ms

}

/* *
* Take a substitution wich conatins elements like (meta_mother, meta_current), returning only relevante substitution like (meta_mother, meta_mother)
* (X, X2) (Y, X2) -> (X, Y)
**/
func ReorganizeSubstitution(subs treetypes.Substitutions) treetypes.Substitutions {
	res := treetypes.Substitutions{}
	metaSeen := basictypes.NewMetaList()

	for _, firstSingleSubs := range subs {
		firstMetaMother, firstMetaCurrent := firstSingleSubs.Get()
		metaSeen.AppendIfNotContains(firstMetaMother)

		for _, secondSingleSubs := range subs {
			secondMetaMother, secondMetaCurrent := secondSingleSubs.Get()

			if firstMetaCurrent.Equals(secondMetaCurrent) && !firstMetaMother.Equals(secondMetaMother) && !metaSeen.Contains(secondMetaMother) {
				res.Set(secondMetaMother, firstMetaMother)
				metaSeen.AppendIfNotContains(secondMetaMother)
			}
		}
	}

	return res
}

/* Check if a substitution contains a metavirbale which is inside a given list of metavariable (check for the key, not the value) */
func ContainsMetaMother(s treetypes.Substitutions, mm *basictypes.MetaList) bool {
	for _, subst := range s {
		k, v := subst.Get()
		if mm.Contains(k) {
			return true
		} else {
			switch vtype := v.(type) {
			case basictypes.Meta:
				if mm.Contains(vtype) {
					return true
				}
			}
		}
	}
	return false
}

func FusionSubstAndFormListWithoutDouble(l1, l2 []SubstAndForm) []SubstAndForm {
	res := l1
	for _, s := range l2 {
		res = AppendIfNotContainsSubstAndForm(res, s)
	}
	return res
}

/* Apply a substElement on a term */
func ApplySubstitutionOnTerm(old_symbol basictypes.Meta, new_symbol, t basictypes.Term) basictypes.Term {
	res := t

	switch nf := t.(type) {
	case basictypes.Meta:
		if nf.Equals(old_symbol) {
			res = new_symbol.Copy()
		}
	case basictypes.Fun:
		res = basictypes.MakeFun(
			nf.GetP(),
			ApplySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()),
			nf.GetTypeVars(),
			nf.GetTypeHint(),
		)
	}
	return res
}

func applySubstitutionOnType(old_type, new_type, t typing.TypeApp) typing.TypeApp {
	if tv, isTv := t.(typing.TypeVar); isTv {
		if tv.Instantiated() && tv.Equals(old_type) {
			return new_type
		}
	}
	return t
}

/* Apply substitutions on a list of terms */
func ApplySubstitutionsOnTermList(s treetypes.Substitutions, tl *basictypes.TermList) *basictypes.TermList {
	res := basictypes.NewTermList()

	for _, t := range tl.Slice() {
		newTerm := ApplySubstitutionsOnTerm(s, t)
		res.AppendIfNotContains(newTerm)
	}

	return res
}

func ApplySubstitutionsOnTerm(s treetypes.Substitutions, t basictypes.Term) basictypes.Term {
	if t != nil {
		term_res := t.Copy()
		for _, subst := range s {
			old_symbol, new_symbol := subst.Get()
			term_res = ApplySubstitutionOnTerm(old_symbol, new_symbol, term_res)
		}
		return term_res
	} else {
		return nil
	}
}

/* Apply substElement on a term list */
func ApplySubstitutionOnTermList(old_symbol basictypes.Meta, new_symbol basictypes.Term, tl *basictypes.TermList) *basictypes.TermList {
	res := basictypes.NewTermList()

	for _, t := range tl.Slice() {
		res.Append(ApplySubstitutionOnTerm(old_symbol, new_symbol, t))
	}

	return res
}

func applySubstitutionOnTypeList(old_symbol basictypes.Meta, new_symbol basictypes.Term, tl []typing.TypeApp) []typing.TypeApp {
	res := make([]typing.TypeApp, len(tl))
	for i, t := range tl {
		res[i] = applySubstitutionOnType(old_symbol.GetTypeApp(), new_symbol.(basictypes.TypedTerm).GetTypeApp(), t)
	}
	return res
}

/* Apply a substitution on a formula */
func ApplySubstitutionOnFormula(old_symbol basictypes.Meta, new_symbol basictypes.Term, f basictypes.Form) basictypes.Form {
	var res basictypes.Form

	switch nf := f.(type) {
	case basictypes.Pred:
		res = basictypes.MakePred(
			nf.GetIndex(),
			nf.GetID(),
			ApplySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()),
			applySubstitutionOnTypeList(old_symbol, new_symbol, nf.GetTypeVars()),
			nf.GetType(),
		)
	case basictypes.Not:
		res = basictypes.MakeNot(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case basictypes.And:
		res_tmp := basictypes.NewFormList()
		for _, val := range nf.FormList.Slice() {
			res_tmp.Append(ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = basictypes.MakeAnd(f.GetIndex(), res_tmp)
	case basictypes.Or:
		res_tmp := basictypes.NewFormList()
		for _, val := range nf.FormList.Slice() {
			res_tmp.Append(ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = basictypes.MakeOr(f.GetIndex(), res_tmp)
	case basictypes.Imp:
		res = basictypes.MakeImp(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF1()), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF2()))
	case basictypes.Equ:
		res = basictypes.MakeEqu(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF1()), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF2()))
	case basictypes.Ex:
		res = basictypes.MakeEx(f.GetIndex(), nf.GetVarList(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case basictypes.All:
		res = basictypes.MakeAll(f.GetIndex(), nf.GetVarList(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	default:
		res = f
	}

	return res
}

/* Apply substitutions on Formula */
func ApplySubstitutionsOnFormula(s treetypes.Substitutions, f basictypes.Form) basictypes.Form {
	if f != nil {
		form_res := f.Copy()
		for _, subst := range s {
			old_symbol, new_symbol := subst.Get()
			form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		}
		return form_res
	} else {
		return nil
	}
}

/* For each element of the substitution, apply it on the entire formula list */
func ApplySubstitutionsOnFormulaList(s treetypes.Substitutions, lf *basictypes.FormList) *basictypes.FormList {
	lf_res := basictypes.NewFormList()
	for _, f := range lf.Slice() {
		new_form := ApplySubstitutionsOnFormula(s, f)
		lf_res.AppendIfNotContains(new_form)

	}
	return lf_res
}

/* Apply substitutions on FormAndTerm */
func ApplySubstitutionsOnFormAndTerms(s treetypes.Substitutions, fat basictypes.FormAndTerms) basictypes.FormAndTerms {
	// if fat != basictypes.FormAndTerms{} {
	form_res := fat.GetForm()
	tl_res := fat.GetTerms()
	for _, subst := range s {
		old_symbol, new_symbol := subst.Get()
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		//tl_res = ApplySubstitutionOnTermList(old_symbol, new_symbol, tl_res)
	}
	return basictypes.MakeFormAndTerm(form_res, tl_res)
}

/* For each element of the substitution, apply it on the entire formAndTerms list */
func ApplySubstitutionsOnFormAndTermsList(s treetypes.Substitutions, lf basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	lf_res := basictypes.MakeEmptyFormAndTermsList()
	for _, f := range lf {
		new_form := ApplySubstitutionsOnFormAndTerms(s, f)
		lf_res = lf_res.AppendIfNotContains(new_form)

	}
	return lf_res
}

/* Apply a substitution on a metaGenerator list */
func ApplySubstitutionOnMetaGenList(s treetypes.Substitutions, lf []basictypes.MetaGen) []basictypes.MetaGen {
	lf_res := []basictypes.MetaGen{}
	for _, f := range lf {
		new_form := ApplySubstitutionOnMetaGen(s, f)
		if !basictypes.ContainsMetaGenList(new_form.GetForm(), lf_res) {
			lf_res = append(lf_res, new_form)
		}
	}
	return lf_res
}

/* Apply a substitution on a metaGen form */
func ApplySubstitutionOnMetaGen(s treetypes.Substitutions, mg basictypes.MetaGen) basictypes.MetaGen {
	form_res := mg.GetForm().GetForm()
	terms_res := mg.GetForm().Terms
	for _, subst := range s {
		old_symbol, new_symbol := subst.Get()
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		terms_res = ApplySubstitutionOnTermList(old_symbol, new_symbol, terms_res)
	}
	return basictypes.MakeMetaGen(basictypes.MakeFormAndTerm(form_res, terms_res), mg.GetCounter())
}

/* Dispatch a list of substitution : containing mm or not */
func DispatchSubst(subsList []treetypes.Substitutions, mm *basictypes.MetaList) ([]treetypes.Substitutions, []treetypes.Substitutions, []treetypes.Substitutions) {
	var subsWithMM []treetypes.Substitutions
	var subsWithMMUncleared []treetypes.Substitutions
	var subsWithoutMM []treetypes.Substitutions

	for _, subs := range subsList {
		removedSubs := subs

		if global.IsDestructive() {
			removedSubs = RemoveElementWithoutMM(subs, mm)
		}

		if !removedSubs.IsEmpty() {
			subsWithMM = treetypes.AppendIfNotContainsSubst(subsWithMM, removedSubs)
			subsWithMMUncleared = treetypes.AppendIfNotContainsSubst(subsWithMMUncleared, subs)
		} else {
			subsWithoutMM = treetypes.AppendIfNotContainsSubst(subsWithoutMM, subs)
		}
	}

	return subsWithMM, subsWithMMUncleared, subsWithoutMM
}

/* remove identity in substitution (non destructive case), can happen renaming variables */
func RemoveIdentitySubst(s *treetypes.Substitutions) {
	res := treetypes.Substitutions{}
	for _, subst := range *s {
		meta, term := subst.Get()
		if !meta.Equals(term) {
			res.Set(meta, term)
		}
	}
	*s = res
}

/* Apply subst on a proof tree */
func ApplySubstitutionOnProofList(s treetypes.Substitutions, proof_list []proof.ProofStruct) []proof.ProofStruct {
	new_proof_list := []proof.ProofStruct{}

	for _, p := range proof_list {
		p.SetFormulaProof(ApplySubstitutionsOnFormAndTerms(s, p.GetFormula()))

		new_result_formulas := []proof.IntFormAndTermsList{}
		for _, f := range p.GetResultFormulas() {
			new_result_formulas = append(new_result_formulas, proof.MakeIntFormAndTermsList(f.GetI(), ApplySubstitutionsOnFormAndTermsList(s, f.GetFL())))
		}
		p.SetResultFormulasProof(new_result_formulas)

		new_children := [][]proof.ProofStruct{}
		for _, c := range p.GetChildren() {
			new_children = append(new_children, ApplySubstitutionOnProofList(s, c))
		}
		p.SetChildrenProof(new_children)

		new_proof_list = append(new_proof_list, p)
	}

	return new_proof_list
}

// true if s1 included or equals to s2 modlulo aplha conversion (or vice versa)
func AreEqualsModuloaLaphaConversion(s1, s2 treetypes.Substitutions) bool {
	cpt := 0
	i := 0
	for i < len(s1) && cpt == i {
		for _, s2_element := range s2 {
			if (s1[i].Key().GetName() == s2_element.Key().GetName()) && (s1[i].Value().Equals(s2_element.Value())) {
				cpt++
			}
		}
		i++
	}
	return cpt == i
}
