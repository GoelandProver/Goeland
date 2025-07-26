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
* This file implements the rewrite part of the DMT plugin.
**/

package dmt

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

// ----------------------------------------------------------------------------
// Primary algorithms.

func Rewrite(atomic AST.Form) ([]Core.IntSubstAndForm, error) {
	form, polarity := getAtomAndPolarity(atomic)
	tree := selectFromPolarity(polarity, positiveTree, negativeTree)
	return rewriteGeneric(tree, atomic, form, polarity)
}

func rewriteGeneric(tree Unif.DataStructure, atomic AST.Form, form AST.Form, polarity bool) ([]Core.IntSubstAndForm, error) {
	rewritten := []Core.IntSubstAndForm{}

	var err error = nil
	if isUnified, unif := tree.Unify(form); isUnified {
		unif_substs := []Unif.MatchingSubstitutions{}
		for _, substs := range unif {
			unif_substs = append(unif_substs, substs.MatchingSubstitutions())
		}
		rewritten, err = getRewrittenFormulas(rewritten, unif_substs, atomic, polarity)
	} else {
		rewritten = rewriteFailure(atomic)
	}
	return rewritten, err
}

func getRewrittenFormulas(rewritten []Core.IntSubstAndForm, unif []Unif.MatchingSubstitutions, atomic AST.Form, polarity bool) ([]Core.IntSubstAndForm, error) {
	unifs := sortUnifications(unif, polarity, atomic)
	if len(unifs) == 0 {
		rewritten = rewriteFailure(atomic)
	}

	for _, unif := range unifs {
		equivalence, err := getUnifiedEquivalence(unif.GetForm(), unif.GetSubst(), polarity)
		if err != nil {
			return rewriteFailure(atomic), err
		}
		rewritten = addRewrittenFormulas(rewritten, unif, atomic, equivalence)
	}

	return rewritten, nil
}

func addRewrittenFormulas(rewritten []Core.IntSubstAndForm, unif Unif.MatchingSubstitutions, atomic AST.Form, equivalence Lib.List[AST.Form]) []Core.IntSubstAndForm {
	// Keep only useful substitutions
	useful_subst := Unif.ToSubstitutions(
		Core.RemoveElementWithoutMM(Unif.FromSubstitutions(unif.GetSubst()), atomic.GetMetas()),
	)
	meta_search := atomic.GetMetas()
	if !checkMetaAreFromSearch(meta_search, useful_subst) {
		Glob.PrintError("DMT", fmt.Sprintf("There is at least one meta in final subst which is not from search : %v - %v - %v", useful_subst.ToString(), atomic.ToString(), unif.GetForm().ToString()))
	}
	filteredUnif := Unif.MakeMatchingSubstitutions(
		unif.GetForm(),
		useful_subst,
	)

	// Add each candidate to the rewrite slice with precedence order (Top/Bot are prioritized).
	for _, rewrittenCandidate := range equivalence.GetSlice() {
		rewritten = addUnifToAtomics(rewritten, rewrittenCandidate, filteredUnif)
	}

	return rewritten
}

// End of primary algorithms.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Supportive functions.

func getAtomAndPolarity(atom AST.Form) (AST.Form, bool) {
	switch form := atom.Copy().(type) {
	case AST.Not:
		return form.GetForm(), false
	default:
		return form, true
	}
}

func rewriteFailure(atomic AST.Form) []Core.IntSubstAndForm {
	return []Core.IntSubstAndForm{
		Core.MakeIntSubstAndForm(
			-1,
			Core.MakeSubstAndForm(Lib.MkListV(Unif.MkMixedFromSubst(Unif.Failure()[0])), Lib.MkListV(atomic)),
		),
	}
}

func addUnifToAtomics(atomics []Core.IntSubstAndForm, candidate AST.Form, unif Unif.MatchingSubstitutions) []Core.IntSubstAndForm {
	mixed := Lib.NewList[Unif.MixedSubstitution]()
	for _, subst := range unif.GetSubst() {
		mixed.Append(Unif.MkMixedFromSubst(subst))
	}
	substAndForm := Core.MakeSubstAndForm(mixed, Lib.MkListV(candidate))
	if isBotOrTop(candidate) {
		atomics = Core.InsertFirstIntSubstAndFormList(atomics, Core.MakeIntSubstAndForm(unif.GetForm().GetIndex(), substAndForm))
	} else {
		atomics = append(atomics, Core.MakeIntSubstAndForm(unif.GetForm().GetIndex(), substAndForm))
	}
	return atomics
}

func isBotOrTop(form AST.Form) bool {
	return Glob.Is[AST.Bot](form) || Glob.Is[AST.Top](form)
}

func sortUnifications(unifs []Unif.MatchingSubstitutions, polarity bool, atomic AST.Form) []Unif.MatchingSubstitutions {
	rewriteMap := selectFromPolarity(polarity, positiveRewrite, negativeRewrite)

	sortedUnifs := []Unif.MatchingSubstitutions{}
	for _, unif := range unifs {
		// Check if th esubstitution is a filter
		if isFiltering(unif) {
			str := unif.GetForm().ToString()
			sortedUnifs = insert(sortedUnifs, rewriteMap[str], unif)
		}
	}

	return sortedUnifs
}

// Priority of substitutions: Top/Bottom > others
func insert(sortedUnifs []Unif.MatchingSubstitutions, list Lib.List[AST.Form], unif Unif.MatchingSubstitutions) []Unif.MatchingSubstitutions {
	if Lib.ListMem(AST.MakerTop().Copy(), list) || Lib.ListMem(AST.MakerBot().Copy(), list) {
		sortedUnifs = insertFirst(sortedUnifs, unif)
	} else {
		sortedUnifs = append(sortedUnifs, unif)
	}
	return sortedUnifs
}

func insertFirst(sortedUnifs []Unif.MatchingSubstitutions, unif Unif.MatchingSubstitutions) []Unif.MatchingSubstitutions {
	if len(sortedUnifs) > 0 {
		// Moves everything to the right once.
		sortedUnifs = append(sortedUnifs[:1], sortedUnifs[0:]...)
		sortedUnifs[0] = unif
	} else {
		sortedUnifs = append(sortedUnifs, unif)
	}
	return sortedUnifs
}

// Check wether or not a MatchingSubstitution is a filtering, ie : all the meta in the formula are instanciated
func isFiltering(ms Unif.MatchingSubstitutions) bool {
	subst := ms.GetSubst()
	metas := ms.GetForm().GetMetas()
	return checkAllMetaAreInstanciated(metas, subst)
}

func checkAllMetaAreInstanciated(metas Lib.Set[AST.Meta], subst Unif.Substitutions) bool {
	for _, m := range metas.Elements().GetSlice() {
		m_found := false
		for _, s := range subst {
			k, v := s.Get()
			if m.Equals(k) || m.Equals(v) {
				m_found = true
			}
		}
		if !m_found {
			return false
		}
	}
	return true
}

func checkMetaAreFromSearch(metas Lib.Set[AST.Meta], subst Unif.Substitutions) bool {
	for _, s := range subst {
		k, v := s.Get()
		if !metas.Contains(k) {
			return false
		} else {
			if meta_v, ok := v.(AST.Meta); ok &&
				!metas.Contains(meta_v) {
				return false
			}
		}
	}
	return true
}

func getUnifiedEquivalence(atom AST.Form, subst Unif.Substitutions, polarity bool) (Lib.List[AST.Form], error) {
	equivalence := findEquivalence(atom, polarity)
	if equivalence.Empty() {
		return Lib.NewList[AST.Form](),
			fmt.Errorf(
				"[DMT] Fatal error : no rewrite rule found when an unification has been found : %v",
				atom.ToString(),
			)
	}

	res := Lib.NewList[AST.Form]()
	for _, f := range equivalence.GetSlice() {
		res = Lib.ListAdd(res, substitute(f, subst))
	}

	return res, nil
}

func findEquivalence(atom AST.Form, polarity bool) Lib.List[AST.Form] {
	return selectFromPolarity(polarity, positiveRewrite, negativeRewrite)[atom.ToString()]
}

// End of supportive functions.
// ----------------------------------------------------------------------------
