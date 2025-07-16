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

package Core

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

/* Return the list of metavariable from a substitution */
func GetMetaFromSubst(subs Unif.Substitutions) Lib.Set[AST.Meta] {
	res := Lib.EmptySet[AST.Meta]()

	for _, singleSubs := range subs {
		meta, term := singleSubs.Get()
		res = res.Add(meta)

		switch typedTerm := term.(type) {
		case AST.Meta:
			res = res.Add(typedTerm)
		case AST.Fun:
			res = res.Union(AST.GetMetasOfList(typedTerm.GetArgs()))
		}
	}

	return res
}

/* Remove substitution without mm */
func RemoveElementWithoutMM(subs Unif.Substitutions, mm Lib.Set[AST.Meta]) Unif.Substitutions {
	Glob.PrintDebug("REWM", fmt.Sprintf(
		"MM : %v",
		Lib.ListToString(mm.Elements(), ",", "[]"),
	))

	res := Unif.Substitutions{}

	subsToReorganize := Unif.Substitutions{}
	relevantMetas := mm.Copy()
	hasChanged := true

	for hasChanged {
		hasChanged = false
		Glob.PrintDebug("REWM", fmt.Sprintf(
			"Relevant meta : %v",
			Lib.ListToString(relevantMetas.Elements(), ",", "[]"),
		))
		for _, singleSubs := range subs {
			meta, term := singleSubs.Get()

			switch typedTerm := term.(type) {
			case AST.Meta:
				switch {
				case relevantMetas.Contains(meta) &&
					relevantMetas.Contains(typedTerm):
					res.Set(meta, typedTerm)

				case relevantMetas.Contains(meta) &&
					relevantMetas.Contains(typedTerm):
					subsToReorganize.Set(meta, typedTerm)
				}

			default:
				if relevantMetas.Contains(meta) {
					res.Set(meta, term)
					for _, candidateMeta := range term.GetMetas().Elements().GetSlice() {
						if !relevantMetas.Contains(candidateMeta) {
							hasChanged = true
						}
					}
					relevantMetas = relevantMetas.Union(term.GetMetas())
				}
			}
		}
	}

	Glob.PrintDebug("REWM", fmt.Sprintf("Subst intermédiaire res : %v", res.ToString()))
	Glob.PrintDebug("REWM", fmt.Sprintf("Subst intermédiaire subst_to_reorganize  : %v", subsToReorganize.ToString()))

	subsToReorganize = ReorganizeSubstitution(subsToReorganize)
	Unif.EliminateMeta(&subsToReorganize)
	Unif.Eliminate(&subsToReorganize)
	ms, _ := Unif.MergeSubstitutions(res, subsToReorganize)

	Glob.PrintDebug("REWM", fmt.Sprintf("Finale subst : %v", ms.ToString()))

	if ms.Equals(Unif.Failure()) {
		Glob.PrintError("REWM", "MergeSubstitutions returns failure")
	}

	return ms

}

/* *
* Take a substitution wich conatins elements like (meta_mother, meta_current), returning only relevante substitution like (meta_mother, meta_mother)
* (X, X2) (Y, X2) -> (X, Y)
**/
func ReorganizeSubstitution(subs Unif.Substitutions) Unif.Substitutions {
	res := Unif.Substitutions{}
	metaSeen := Lib.NewList[AST.Meta]()

	for _, firstSingleSubs := range subs {
		firstMetaMother, firstMetaCurrent := firstSingleSubs.Get()
		metaSeen = Lib.ListAdd(metaSeen, firstMetaMother)

		for _, secondSingleSubs := range subs {
			secondMetaMother, secondMetaCurrent := secondSingleSubs.Get()

			if firstMetaCurrent.Equals(secondMetaCurrent) &&
				!firstMetaMother.Equals(secondMetaMother) &&
				!Lib.ListMem(secondMetaMother, metaSeen) {
				res.Set(secondMetaMother, firstMetaMother)
				metaSeen = Lib.ListAdd(metaSeen, firstMetaMother)
			}
		}
	}

	return res
}

/* Check if a substitution contains a metavirbale which is inside a given list of metavariable (check for the key, not the value) */
func ContainsMetaMother(s Unif.Substitutions, mm Lib.Set[AST.Meta]) bool {
	for _, subst := range s {
		k, v := subst.Get()
		if mm.Contains(k) {
			return true
		} else {
			switch vtype := v.(type) {
			case AST.Meta:
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
func ApplySubstitutionOnTerm(old_symbol AST.Meta, new_symbol, t AST.Term) AST.Term {
	res := t

	switch nf := t.(type) {
	case AST.Meta:
		if nf.Equals(old_symbol) {
			res = new_symbol.Copy()
		}
	case AST.Fun:
		res = AST.MakerFun(
			nf.GetP(),
			ApplySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()),
			nf.GetTypeVars(),
			nf.GetTypeHint(),
		)
	}
	return res
}

func applySubstitutionOnType(old_type, new_type, t AST.TypeApp) AST.TypeApp {
	if tv, isTv := t.(AST.TypeVar); isTv {
		if tv.Instantiated() && tv.Equals(old_type) {
			return new_type
		}
	}
	return t
}

/* Apply substitutions on a list of terms */
func ApplySubstitutionsOnTermList(
	s Unif.Substitutions,
	tl Lib.List[AST.Term],
) Lib.List[AST.Term] {
	res := Lib.MkList[AST.Term](tl.Len())

	for i, t := range tl.GetSlice() {
		newTerm := ApplySubstitutionsOnTerm(s, t)
		res.Upd(i, newTerm)
	}

	return res
}

func ApplySubstitutionsOnTerm(s Unif.Substitutions, t AST.Term) AST.Term {
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
func ApplySubstitutionOnTermList(
	old_symbol AST.Meta,
	new_symbol AST.Term,
	tl Lib.List[AST.Term],
) Lib.List[AST.Term] {
	res := Lib.MkList[AST.Term](tl.Len())

	for i, t := range tl.GetSlice() {
		res.Upd(i, ApplySubstitutionOnTerm(old_symbol, new_symbol, t))
	}

	return res
}

func applySubstitutionOnTypeList(old_symbol AST.Meta, new_symbol AST.Term, tl []AST.TypeApp) []AST.TypeApp {
	res := make([]AST.TypeApp, len(tl))
	for i, t := range tl {
		res[i] = applySubstitutionOnType(old_symbol.GetTypeApp(), new_symbol.(AST.TypedTerm).GetTypeApp(), t)
	}
	return res
}

/* Apply a substitution on a formula */
func ApplySubstitutionOnFormula(old_symbol AST.Meta, new_symbol AST.Term, f AST.Form) AST.Form {
	var res AST.Form

	switch nf := f.(type) {
	case AST.Pred:
		res = AST.MakePred(
			nf.GetIndex(),
			nf.GetID(),
			ApplySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()),
			applySubstitutionOnTypeList(old_symbol, new_symbol, nf.GetTypeVars()),
			nf.GetType(),
		)
	case AST.Not:
		res = AST.MakeNot(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case AST.And:
		res_tmp := AST.NewFormList()
		for _, val := range nf.FormList.Slice() {
			res_tmp.Append(ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = AST.MakeAnd(f.GetIndex(), res_tmp)
	case AST.Or:
		res_tmp := AST.NewFormList()
		for _, val := range nf.FormList.Slice() {
			res_tmp.Append(ApplySubstitutionOnFormula(old_symbol, new_symbol, val))
		}
		res = AST.MakeOr(f.GetIndex(), res_tmp)
	case AST.Imp:
		res = AST.MakeImp(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF1()), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF2()))
	case AST.Equ:
		res = AST.MakeEqu(f.GetIndex(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF1()), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetF2()))
	case AST.Ex:
		res = AST.MakeEx(f.GetIndex(), nf.GetVarList(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	case AST.All:
		res = AST.MakeAll(f.GetIndex(), nf.GetVarList(), ApplySubstitutionOnFormula(old_symbol, new_symbol, nf.GetForm()))
	default:
		res = f
	}

	return res
}

/* Apply substitutions on Formula */
func ApplySubstitutionsOnFormula(s Unif.Substitutions, f AST.Form) AST.Form {
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
func ApplySubstitutionsOnFormulaList(s Unif.Substitutions, lf *AST.FormList) *AST.FormList {
	lf_res := AST.NewFormList()
	for _, f := range lf.Slice() {
		new_form := ApplySubstitutionsOnFormula(s, f)
		lf_res.AppendIfNotContains(new_form)

	}
	return lf_res
}

/* Apply substitutions on FormAndTerm */
func ApplySubstitutionsOnFormAndTerms(s Unif.Substitutions, fat FormAndTerms) FormAndTerms {
	// if fat != FormAndTerms{} {
	form_res := fat.GetForm()
	tl_res := fat.GetTerms()
	for _, subst := range s {
		old_symbol, new_symbol := subst.Get()
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		//tl_res = ApplySubstitutionOnTermList(old_symbol, new_symbol, tl_res)
	}
	return MakeFormAndTerm(form_res, tl_res)
}

/* For each element of the substitution, apply it on the entire formAndTerms list */
func ApplySubstitutionsOnFormAndTermsList(s Unif.Substitutions, lf FormAndTermsList) FormAndTermsList {
	lf_res := MakeEmptyFormAndTermsList()
	for _, f := range lf {
		new_form := ApplySubstitutionsOnFormAndTerms(s, f)
		lf_res = lf_res.AppendIfNotContains(new_form)

	}
	return lf_res
}

/* Apply a substitution on a metaGenerator list */
func ApplySubstitutionOnMetaGenList(s Unif.Substitutions, lf []MetaGen) []MetaGen {
	lf_res := []MetaGen{}
	for _, f := range lf {
		new_form := ApplySubstitutionOnMetaGen(s, f)
		if !ContainsMetaGenList(new_form.GetForm(), lf_res) {
			lf_res = append(lf_res, new_form)
		}
	}
	return lf_res
}

/* Apply a substitution on a metaGen form */
func ApplySubstitutionOnMetaGen(s Unif.Substitutions, mg MetaGen) MetaGen {
	form_res := mg.GetForm().GetForm()
	terms_res := mg.GetForm().Terms
	for _, subst := range s {
		old_symbol, new_symbol := subst.Get()
		form_res = ApplySubstitutionOnFormula(old_symbol, new_symbol, form_res)
		terms_res = ApplySubstitutionOnTermList(old_symbol, new_symbol, terms_res)
	}
	return MakeMetaGen(MakeFormAndTerm(form_res, terms_res), mg.GetCounter())
}

/* Dispatch a list of substitution : containing mm or not */
func DispatchSubst(subsList []Unif.Substitutions, mm Lib.Set[AST.Meta]) ([]Unif.Substitutions, []Unif.Substitutions, []Unif.Substitutions) {
	var subsWithMM []Unif.Substitutions
	var subsWithMMUncleared []Unif.Substitutions
	var subsWithoutMM []Unif.Substitutions

	for _, subs := range subsList {
		removedSubs := subs

		if Glob.IsDestructive() {
			removedSubs = RemoveElementWithoutMM(subs, mm)
		}

		if !removedSubs.IsEmpty() {
			subsWithMM = Unif.AppendIfNotContainsSubst(subsWithMM, removedSubs)
			subsWithMMUncleared = Unif.AppendIfNotContainsSubst(subsWithMMUncleared, subs)
		} else {
			subsWithoutMM = Unif.AppendIfNotContainsSubst(subsWithoutMM, subs)
		}
	}

	return subsWithMM, subsWithMMUncleared, subsWithoutMM
}

/* remove identity in substitution (non destructive case), can happen renaming variables */
func RemoveIdentitySubst(s *Unif.Substitutions) {
	res := Unif.Substitutions{}
	for _, subst := range *s {
		meta, term := subst.Get()
		if !meta.Equals(term) {
			res.Set(meta, term)
		}
	}
	*s = res
}

// true if s1 included or equals to s2 modlulo aplha conversion (or vice versa)
func AreEqualsModuloaLaphaConversion(s1, s2 Unif.Substitutions) bool {
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
