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
/* subst.go */
/************/
/**
* This file contains functions and types which describe the substitution management in a proofsearch.
**/

package complextypes

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Stock the substitution and the corresponding formula */
type SubstAndForm struct {
	s treetypes.Substitutions
	f basictypes.FormAndTerm
}

func (s SubstAndForm) GetSubst() treetypes.Substitutions {
	return s.s.Copy()
}
func (s SubstAndForm) GetForm() basictypes.FormAndTerm {
	return s.f.Copy()
}
func (s *SubstAndForm) SetSubst(subst treetypes.Substitutions) {
	s.s = subst.Copy()
}
func (s *SubstAndForm) SetForm(form basictypes.FormAndTerm) {
	s.f = form.Copy()
}
func (saf SubstAndForm) IsEmpty() bool {
	return saf.s.IsEmpty()
}
func (s1 SubstAndForm) Equals(s2 SubstAndForm) bool {
	return s1.GetSubst().Equals(s2.GetSubst()) && s1.GetForm().Equals(s2.GetForm())
}
func (s SubstAndForm) Copy() SubstAndForm {
	return MakeSubstAndForm(s.GetSubst(), s.GetForm())
}

func MakeSubstAndForm(subst treetypes.Substitutions, form basictypes.FormAndTerm) SubstAndForm {
	return SubstAndForm{subst.Copy(), form.Copy()}
}
func MakeEmptySubstAndForm() SubstAndForm {
	return SubstAndForm{treetypes.MakeEmptySubstitution(), basictypes.MakeEmptyFormAndTerm()}
}

/*************/
/* Functions */
/*************/

/* Return the list of metavariable from a substitution */
func GetMetaFromSubst(s treetypes.Substitutions) basictypes.MetaList {
	res := basictypes.MetaList{}
	for m, t := range s {
		res = res.AppendIfNotContains(m)
		switch ttype := t.(type) {
		case basictypes.Meta:
			res = res.AppendIfNotContains(ttype)
		case basictypes.Fun:
			for _, meta_term_list := range basictypes.GetMetaInTermList(ttype.GetArgs()) {
				res = res.AppendIfNotContains(meta_term_list)
			}
		}
	}
	return res
}

/* Remove substitution without mm */
func RemoveElementWithoutMM(s treetypes.Substitutions, mm basictypes.MetaList) treetypes.Substitutions {

	// Substitution définitive
	res := treetypes.Substitutions{}
	// Substitution à réorganiser
	subst_to_reorganize := treetypes.Substitutions{}

	for k, v := range s {
		switch vt := v.(type) {

		case basictypes.Meta:
			switch {
			case mm.Contains(k) && mm.Contains(vt):
				res[k] = vt

			case mm.Contains(k) && !mm.Contains(vt):
				subst_to_reorganize[k] = vt
			}

		default:
			if mm.Contains(k) {
				res[k] = v
			}

		}
	}
	subst_to_reorganize = ReorganizeSubstitution(subst_to_reorganize, mm)
	treetypes.EliminateMeta(&subst_to_reorganize)
	treetypes.Eliminate(&subst_to_reorganize)
	ms, same_key := treesearch.MergeSubstitutions(res, subst_to_reorganize)

	if same_key {
		fmt.Printf("Same key in S2 and S1")
	}
	if ms.Equals(treetypes.Failure()) {
		println("[RemoveElementWithoutMM] Error : MergeSubstitutions return failure")
	}
	return ms

}

/* *
* Take a substitution wich conatins elements like (meta_mother, meta_current), returning only relevante substitution like (meta_mother, meta_mother)
* (X, X2) (Y, X2) -> (X, Y)
**/
func ReorganizeSubstitution(s treetypes.Substitutions, mm basictypes.MetaList) treetypes.Substitutions {
	res := treetypes.Substitutions{}
	meta_seen := basictypes.MetaList{}

	for meta_mother, meta_current := range s {
		meta_seen = meta_seen.AppendIfNotContains(meta_mother)

		for meta_mother_2, meta_current_2 := range s {
			if meta_current == meta_current_2 && meta_mother != meta_mother_2 && !meta_seen.Contains(meta_mother_2) {
				res[meta_mother_2] = meta_mother
				meta_seen = meta_seen.AppendIfNotContains(meta_mother_2)
			}
		}
	}

	return res
}

/* Check if a substitution contains a metavirbale which is inside a given list of metavariable (check for the key, not the value) */
func ContainsMetaMother(s treetypes.Substitutions, mm basictypes.MetaList) bool {
	for k, v := range s {
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

/* Check if a substitution is inside a list of substitution */
func ContainsSubst(s treetypes.Substitutions, sl []treetypes.Substitutions) bool {
	for _, v := range sl {
		if v.Equals(s) {
			return true
		}
	}
	return false
}

/* Append a substitution s to a list of substitution sl if s is not in sl */
func AppendIfNotContainsSubst(sl []treetypes.Substitutions, s treetypes.Substitutions) []treetypes.Substitutions {
	if !ContainsSubst(s, sl) {
		return append(sl, s)
	} else {
		return sl
	}
}

func FusionSubstAndFormListWithoutDouble(l1, l2 []SubstAndForm) []SubstAndForm {
	res := l1
	for _, s := range l2 {
		res = AppendIfNotContainsSubstAndForm(res, s)
	}
	return res
}

/* Apply a substElement on a term */
func applySubstitutionOnTerm(old_symbol basictypes.Meta, new_symbol, t basictypes.Term) basictypes.Term {
	res := t

	switch nf := t.(type) {
	case basictypes.Meta:
		if nf == old_symbol {
			res = new_symbol
		}
	case basictypes.Fun:
		res = basictypes.MakeFun(nf.GetP(), applySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()))
	}
	return res
}

/* Apply substElement on a term list */
func applySubstitutionOnTermList(old_symbol basictypes.Meta, new_symbol basictypes.Term, tl []basictypes.Term) []basictypes.Term {
	res := make([]basictypes.Term, len(tl))
	for i, t := range tl {
		res[i] = applySubstitutionOnTerm(old_symbol, new_symbol, t)
	}
	return res
}

/* Apply a substitution on a formula */
func ApplySubstitutionOnFormula(old_symbol basictypes.Meta, new_symbol basictypes.Term, f basictypes.Form) basictypes.Form {
	var res basictypes.Form

	switch nf := f.(type) {
	case basictypes.Pred:
		res = basictypes.MakePred(nf.GetID(), applySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()))
	case basictypes.Not:
		res = basictypes.MakeNot(ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case basictypes.And:
		res_tmp := []basictypes.Form{}
		for _, val := range nf.GetLF() {
			res_tmp = append(res_tmp, ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = basictypes.MakeAnd(res_tmp)
	case basictypes.Or:
		res_tmp := []basictypes.Form{}
		for _, val := range nf.GetLF() {
			res_tmp = append(res_tmp, ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = basictypes.MakeOr(res_tmp)
	case basictypes.Imp:
		res = basictypes.MakeImp(ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF1()), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF2()))
	case basictypes.Equ:
		res = basictypes.MakeEqu(ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF1()), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF2()))
	case basictypes.Ex:
		res = basictypes.MakeEx(nf.GetVarList(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case basictypes.All:
		res = basictypes.MakeAll(nf.GetVarList(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	default:
		res = f
	}

	return res
}

/* For each element of the substitution, apply it on the entire formula list */
func ApplySubstitutionOnFormulaList(s treetypes.Substitutions, lf []basictypes.FormAndTerm) []basictypes.FormAndTerm {
	lf_res := []basictypes.FormAndTerm{}
	for _, f := range lf {
		new_form := applySubstitutionOnFormAndTerm(s, f)
		lf_res = basictypes.AppendIfNotContainsFormAndTerm(lf_res, new_form)

	}
	return lf_res
}

/* Apply substitution on FormAndTerm */
func applySubstitutionOnFormAndTerm(s treetypes.Substitutions, f basictypes.FormAndTerm) basictypes.FormAndTerm {
	form_res := f.GetForm()
	tl_res := f.GetTerms()

	for old_symbol, new_symbol := range s {
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		tl_res = applySubstitutionOnTermList(old_symbol, new_symbol, tl_res)
	}
	return basictypes.MakeFormAndTerm(form_res, tl_res)
}

/* Apply a substitution on a metaGenerator list */
func applySubstitutionOnMetaGenList(s treetypes.Substitutions, lf []basictypes.MetaGen) []basictypes.MetaGen {
	lf_res := []basictypes.MetaGen{}
	for _, f := range lf {
		new_form := applySubstitutionOnMetaGen(s, f)
		if !basictypes.ContainsMetaGenList(new_form.GetForm(), lf_res) {
			lf_res = append(lf_res, new_form)
		}
	}
	return lf_res
}

/* Apply a substitution on a metaGen form */
func applySubstitutionOnMetaGen(s treetypes.Substitutions, mg basictypes.MetaGen) basictypes.MetaGen {
	form_res := mg.GetForm().GetForm()
	tl_res := mg.GetForm().GetTerms()

	for old_symbol, new_symbol := range s {
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		tl_res = applySubstitutionOnTermList(old_symbol, new_symbol, tl_res)
	}
	return basictypes.MakeMetaGen(basictypes.MakeFormAndTerm(form_res, tl_res), mg.GetCounter())
}

/** Apply a sbstitution on a state
* TODO : remove old MM/MC
**/
func ApplySubstitution(st *State, saf SubstAndForm) {
	s := saf.GetSubst()
	ms, same_key := treesearch.MergeSubstitutions(st.GetAppliedSubst().GetSubst(), s.Copy())
	if same_key {
		fmt.Printf("Same key in S2 and S1")
	}
	if ms.Equals(treetypes.Failure()) {
		println("[AS] Error : MergeSubstitutions return failure")
	}
	st.SetAppliedSubst(MakeSubstAndForm(ms, saf.GetForm()))
	st.SetLastAppliedSubst(saf)
	st.SetLF(ApplySubstitutionOnFormulaList(s, st.GetLF()))
	st.SetAtomic(ApplySubstitutionOnFormulaList(s, st.GetAtomic()))
	st.SetAlpha(ApplySubstitutionOnFormulaList(s, st.GetAlpha()))
	st.SetBeta(ApplySubstitutionOnFormulaList(s, st.GetBeta()))
	st.SetDelta(ApplySubstitutionOnFormulaList(s, st.GetDelta()))
	st.SetGamma(ApplySubstitutionOnFormulaList(s, st.GetGamma()))
	st.SetMetaGen(applySubstitutionOnMetaGenList(s, st.GetMetaGen()))

	st.SetTreePos(st.GetTreePos().MakeDataStruct(st.GetAtomic(), true))
	st.SetTreeNeg(st.GetTreeNeg().MakeDataStruct(st.GetAtomic(), false))
}

/* Dispatch a list of substitution : containing mm or not */
func DispatchSubst(sl []treetypes.Substitutions, mm basictypes.MetaList) ([]treetypes.Substitutions, []treetypes.Substitutions) {
	var subst_with_mm []treetypes.Substitutions
	var subst_without_mm []treetypes.Substitutions

	for _, s := range sl {
		s_removed := s
		if global.IsDestructive() {
			s_removed = RemoveElementWithoutMM(s, mm)
		}
		if ContainsMetaMother(s_removed, mm) {
			subst_with_mm = append(subst_with_mm, s_removed)
		} else {
			subst_without_mm = append(subst_without_mm, s)
		}
	}

	return subst_with_mm, subst_without_mm
}

/* Remove empty substitution from a substitution list */
func RemoveEmptySubstFromSubstList(sl []treetypes.Substitutions) []treetypes.Substitutions {
	res := []treetypes.Substitutions{}
	for _, s := range sl {
		if !(s.IsEmpty()) {
			res = append(res, s)
		}
	}
	return res
}

/* Remove empty substitution from a substitution list */
func RemoveEmptySubstFromSubstAndFormList(sl []SubstAndForm) []SubstAndForm {
	res := []SubstAndForm{}
	for _, s := range sl {
		if !(s.GetSubst().IsEmpty()) {
			res = append(res, s)
		}
	}
	return res
}

/* remove identity in substitution (non destructive case), can happen renaming variables */
func RemoveIdentitySubst(s *treetypes.Substitutions) {
	res := treetypes.Substitutions{}
	for meta, term := range *s {
		if !meta.Equals(term) {
			res[meta] = term
		}
	}
	*s = res
}

/* Get a subst list from SubstAndForm lsit */
func GetSubstListFromSubstAndFormList(l []SubstAndForm) []treetypes.Substitutions {
	res := []treetypes.Substitutions{}
	for _, saf := range l {
		res = append(res, saf.GetSubst())
	}
	return res
}

/* Check if a substitution is inside a list of SubstAndForm */
func ContainsSubstAndForm(s SubstAndForm, sl []SubstAndForm) bool {
	for _, v := range sl {
		if v.Equals(s) {
			return true
		}
	}
	return false
}

/* Append a substitution s to a list of substitution sl if s is not in sl */
func AppendIfNotContainsSubstAndForm(sl []SubstAndForm, s SubstAndForm) []SubstAndForm {
	if !ContainsSubstAndForm(s, sl) {
		return append(sl, s)
	} else {
		return sl
	}
}

/* Remove a substitution from a list of substitutions */
func RemoveSubstFromSubstAndFormList(i int, sl []SubstAndForm) []SubstAndForm {
	if len(sl) > 1 {
		sl[i] = sl[len(sl)-1].Copy()
		return sl[:len(sl)-1]
	} else {
		return []SubstAndForm{}
	}
}

/* Copy a list of subst and form */
func CopySubstAndFormList(sl []SubstAndForm) []SubstAndForm {
	res := make([]SubstAndForm, len(sl))
	for i := range sl {
		res[i] = sl[i].Copy()
	}
	return res
}
