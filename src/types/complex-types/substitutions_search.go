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
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

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

	global.PrintDebug("REWM", fmt.Sprintf("MM : %v", mm.ToString()))
	global.PrintDebug("REWM", fmt.Sprintf("Initial subst : %v", s.ToString()))

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
	ms, _ := treesearch.MergeSubstitutions(res, subst_to_reorganize)

	global.PrintDebug("REWM", fmt.Sprintf("Finale subst : %v", ms.ToString()))

	if ms.Equals(treetypes.Failure()) {
		println("[REWM] Error : MergeSubstitutions returns failure")
		// os.Exit(0)
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
		res = basictypes.MakePred(f.GetIndex(), nf.GetID(), applySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()))
	case basictypes.Not:
		res = basictypes.MakeNot(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case basictypes.And:
		res_tmp := basictypes.MakeEmptyFormList()
		for _, val := range nf.GetLF() {
			res_tmp = append(res_tmp, ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = basictypes.MakeAnd(f.GetIndex(), res_tmp)
	case basictypes.Or:
		res_tmp := basictypes.MakeEmptyFormList()
		for _, val := range nf.GetLF() {
			res_tmp = append(res_tmp, ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
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

/* For each element of the substitution, apply it on the entire formula list */
func ApplySubstitutionsOnFormulaList(s treetypes.Substitutions, lf basictypes.FormList) basictypes.FormList {
	lf_res := basictypes.MakeEmptyFormList()
	for _, f := range lf {
		new_form := ApplySubstitutionsOnFormula(s, f)
		lf_res = lf_res.AppendIfNotContains(new_form)

	}
	return lf_res
}

/* Apply substitution on FormAndTerm */
func ApplySubstitutionsOnFormula(s treetypes.Substitutions, f basictypes.Form) basictypes.Form {
	if f != nil {
		form_res := f.Copy()
		for old_symbol, new_symbol := range s {
			form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		}
		return form_res
	} else {
		return nil
	}
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
	form_res := mg.GetForm()
	for old_symbol, new_symbol := range s {
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
	}
	return basictypes.MakeMetaGen(form_res, mg.GetCounter())
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

/* Print a list of substAndForm */
func SubstAndFormListToString(sl []SubstAndForm) string {
	var s_res string
	s_res = "{"
	for i, v := range sl {
		s_res += v.ToString()
		if i < len(sl)-1 {
			s_res += (", ")
		}
	}
	s_res += "}"
	return s_res
}

/* Merge two SubstAndForm (supposed to fit) */
func MergeSubstAndForm(s1, s2 SubstAndForm) SubstAndForm {
	if s1.IsEmpty() {
		return s2
	}

	if s2.IsEmpty() {
		return s1
	}

	new_subst, _ := treesearch.MergeSubstitutions(s1.GetSubst().Copy(), s2.GetSubst().Copy())

	if new_subst.Equals(treetypes.Failure()) {
		global.PrintDebug("MSAF", fmt.Sprintf("Error : MergeSubstitutions returns failure between : %v and %v \n", s1.ToString(), s2.ToString()))
		fmt.Printf("[MSAF] Error : MergeSubstitutions returns failure between : %v and %v \n", s1.ToString(), s2.ToString())
		// os.Exit(0)
	}

	new_form := s1.GetForm().Copy().Merge(s2.GetForm().Copy())

	return MakeSubstAndForm(new_subst, new_form)
}

/* Merge a list of subst with one subst */
func MergeSubstListWithSubst(sl []SubstAndForm, subst SubstAndForm) []SubstAndForm {
	sl_res := []SubstAndForm{}

	for _, s := range sl {
		sl_res = append(sl_res, MergeSubstAndForm(s, subst))
	}

	return sl_res
}

/* Apply subst on a proof tree */
func ApplySubstitutionOnProofList(s treetypes.Substitutions, proof_list []proof.ProofStruct) []proof.ProofStruct {
	new_proof_list := []proof.ProofStruct{}

	for _, p := range proof_list {
		new_proof := p.Copy()
		new_proof.SetFormulaProof(ApplySubstitutionsOnFormula(s, p.GetFormula()))

		new_result_formulas := []proof.IntFormList{}
		for _, f := range p.GetResultFormulas() {
			new_result_formulas = append(new_result_formulas, proof.MakeIntFormList(f.GetI(), ApplySubstitutionsOnFormulaList(s, f.GetFL())))
		}
		new_proof.SetResultFormulasProof(new_result_formulas)

		new_children := [][]proof.ProofStruct{}
		for _, c := range p.GetChildren() {
			new_children = append(new_children, ApplySubstitutionOnProofList(s, c))
		}
		new_proof.SetChildrenProof(new_children)

		new_proof_list = append(new_proof_list, new_proof)
	}
	return new_proof_list
}
