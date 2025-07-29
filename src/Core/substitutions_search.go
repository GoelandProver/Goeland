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
func GetMetaFromSubst(subs Lib.List[Unif.MixedSubstitution]) Lib.Set[AST.Meta] {
	res := Lib.EmptySet[AST.Meta]()

	for _, singleSubs := range subs.GetSlice() {
		switch s := singleSubs.Substitution().(type) {
		case Lib.Some[Unif.Substitution]:
			meta, term := s.Val.Get()
			res = res.Add(meta)

			switch typedTerm := term.(type) {
			case AST.Meta:
				res = res.Add(typedTerm)
			case AST.Fun:
				res = res.Union(AST.GetMetasOfList(typedTerm.GetArgs()))
			}
		}
	}

	return res
}

/* Remove substitution without mm */
func RemoveElementWithoutMM(
	subs Lib.List[Unif.MixedSubstitution],
	mm Lib.Set[AST.Meta],
) Lib.List[Unif.MixedSubstitution] {
	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf(
			"MM : %v",
			Lib.ListToString(mm.Elements(), ",", "[]"),
		)
	}))

	res := Unif.Substitutions{}
	subst_to_reorganize := Unif.Substitutions{}

	relevantMetas := mm.Copy()
	hasChanged := true

	for hasChanged {
		hasChanged = false
		debug(Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Relevant meta : %v",
				Lib.ListToString(relevantMetas.Elements(), ",", "[]"),
			)
		}))
		for _, singleSubs := range subs.GetSlice() {
			switch single_subst := singleSubs.Substitution().(type) {
			case Lib.Some[Unif.Substitution]:
				meta, term := single_subst.Val.Get()

				switch typedTerm := term.(type) {
				case AST.Meta:
					switch {
					case relevantMetas.Contains(meta) &&
						relevantMetas.Contains(typedTerm):
						res.Set(meta, typedTerm)

					case relevantMetas.Contains(meta) &&
						relevantMetas.Contains(typedTerm):
						subst_to_reorganize.Set(meta, typedTerm)
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
	}

	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Intermediary subst res : %s",
				res.ToString(),
			)
		}),
	)
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Intermediary subst subst_to_reorganize : %s",
				subst_to_reorganize.ToString(),
			)
		}),
	)

	subst_to_reorganize = ReorganizeSubstitution(subst_to_reorganize)
	Unif.EliminateMeta(&subst_to_reorganize)
	Unif.Eliminate(&subst_to_reorganize)
	ms, _ := Unif.MergeSubstitutions(res, subst_to_reorganize)

	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Finale subst : %v", ms.ToString()) }),
	)

	if ms.Equals(Unif.Failure()) {
		Glob.PrintError("REWM", "MergeSubstitutions returns failure")
	}

	result := Lib.NewList[Unif.MixedSubstitution]()
	for _, unif := range ms {
		result.Append(Unif.MkMixedFromSubst(unif))
	}

	for _, s := range subs.GetSlice() {
		switch subst := s.TySubstitution().(type) {
		case Lib.Some[Unif.TySubstitution]:
			result.Append(Unif.MkMixedFromTy(subst.Val))
		}
	}
	return result

}

/**
 *	Take a substitution wich conatins elements like (meta_mother, meta_current), returning only
 *	relevant substitutions like (meta_mother, meta_mother)
 *  e.g., (X, X2) (Y, X2) -> (X, Y)
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
func ContainsMetaMother(s Lib.List[Unif.MixedSubstitution], mm Lib.Set[AST.Meta]) bool {
	for _, subst := range s.GetSlice() {
		switch s := subst.Substitution().(type) {
		case Lib.None[Unif.Substitution]:
			// In this case, [s] is a TySubstitution and hence it always contains a meta from the top level
			return true
		case Lib.Some[Unif.Substitution]:
			k, v := s.Val.Get()
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
			nf.GetTyArgs(),
			ApplySubstitutionOnTermList(old_symbol, new_symbol, nf.GetArgs()),
		)
	}
	return res
}

/* Apply substitutions on a list of terms */
func ApplySubstitutionsOnTermList(
	s Lib.List[Unif.MixedSubstitution],
	tl Lib.List[AST.Term],
) Lib.List[AST.Term] {
	res := Lib.MkList[AST.Term](tl.Len())

	for i, t := range tl.GetSlice() {
		newTerm := ApplySubstitutionsOnTerm(s, t)
		res.Upd(i, newTerm)
	}

	return res
}

func ApplySubstitutionsOnTerm(substs Lib.List[Unif.MixedSubstitution], t AST.Term) AST.Term {
	if t == nil {
		return t
	}

	for _, subst := range substs.GetSlice() {
		switch s := subst.GetMixed().(type) {
		case Lib.Left[Unif.TySubstitution, Unif.Substitution]:
			meta, ty := s.Val.Get()
			t = t.SubstTy(meta, ty)
		case Lib.Right[Unif.TySubstitution, Unif.Substitution]:
			meta, term := s.Val.Get()
			t = t.ReplaceSubTermBy(meta, term)
		}
	}

	return t
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

/* Apply substitutions on Formula */
func ApplySubstitutionsOnFormula(s Lib.List[Unif.MixedSubstitution], f AST.Form) AST.Form {
	// FIXME: check that line, it shouldn't happen
	if f == nil {
		return f
	}

	for _, subst := range s.GetSlice() {
		switch s := subst.GetMixed().(type) {
		case Lib.Left[Unif.TySubstitution, Unif.Substitution]:
			meta, ty := s.Val.Get()
			f = f.SubstTy(meta, ty)
		case Lib.Right[Unif.TySubstitution, Unif.Substitution]:
			meta, term := s.Val.Get()
			f = f.ReplaceMetaByTerm(meta, term)
		}
	}

	return f
}

/* For each element of the substitution, apply it on the entire formula list */
func ApplySubstitutionsOnFormulaList(s Lib.List[Unif.MixedSubstitution], lf Lib.List[AST.Form]) Lib.List[AST.Form] {
	lf_res := Lib.NewList[AST.Form]()
	for _, f := range lf.GetSlice() {
		new_form := ApplySubstitutionsOnFormula(s, f)
		lf_res = Lib.ListAdd(lf_res, new_form)

	}
	return lf_res
}

/* Apply substitutions on FormAndTerm */
func ApplySubstitutionsOnFormAndTerms(s Lib.List[Unif.MixedSubstitution], fat FormAndTerms) FormAndTerms {
	return MakeFormAndTerm(ApplySubstitutionsOnFormula(s, fat.GetForm()), fat.GetTerms())
}

/* For each element of the substitution, apply it on the entire formAndTerms list */
func ApplySubstitutionsOnFormAndTermsList(s Lib.List[Unif.MixedSubstitution], lf FormAndTermsList) FormAndTermsList {
	lf_res := MakeEmptyFormAndTermsList()
	for _, f := range lf {
		new_form := ApplySubstitutionsOnFormAndTerms(s, f)
		lf_res = lf_res.AppendIfNotContains(new_form)

	}
	return lf_res
}

/* Apply a substitution on a metaGenerator list */
func ApplySubstitutionOnMetaGenList(s Lib.List[Unif.MixedSubstitution], lf []MetaGen) []MetaGen {
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
func ApplySubstitutionOnMetaGen(s Lib.List[Unif.MixedSubstitution], mg MetaGen) MetaGen {
	return MakeMetaGen(MakeFormAndTerm(
		ApplySubstitutionsOnFormula(s, mg.GetForm().GetForm()),
		ApplySubstitutionsOnTermList(s, mg.f.GetTerms())), mg.GetCounter())
}

/* Dispatch a list of substitution : containing mm or not */
func DispatchSubst(
	subsList Lib.List[Lib.List[Unif.MixedSubstitution]],
	mm Lib.Set[AST.Meta],
) (Lib.List[Lib.List[Unif.MixedSubstitution]],
	Lib.List[Lib.List[Unif.MixedSubstitution]],
	Lib.List[Lib.List[Unif.MixedSubstitution]]) {
	subsWithMM := Lib.NewList[Lib.List[Unif.MixedSubstitution]]()
	subsWithMMUncleared := Lib.NewList[Lib.List[Unif.MixedSubstitution]]()
	subsWithoutMM := Lib.NewList[Lib.List[Unif.MixedSubstitution]]()

	for _, subs := range subsList.GetSlice() {
		removedSubs := subs

		if Glob.IsDestructive() {
			removedSubs = RemoveElementWithoutMM(subs, mm)
		}

		if !removedSubs.Empty() {
			subsWithMM.Add(Lib.ListEquals, removedSubs)
			subsWithMMUncleared.Add(Lib.ListEquals, subs)
		} else {
			subsWithoutMM.Add(Lib.ListEquals, subs)
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
