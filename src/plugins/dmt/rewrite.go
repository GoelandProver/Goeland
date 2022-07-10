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

/**************/
/* rewrite.go */
/**************/

/**
* This file implements the rewrite part of the DMT plugin.
**/

package dmt

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	btypes "github.com/GoelandProver/Goeland/types/basic-types"
	ctypes "github.com/GoelandProver/Goeland/types/complex-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

// ----------------------------------------------------------------------------
// Primary algorithms.

func Rewrite(atomic btypes.Form) ([]ctypes.SubstAndForm, error) {
	form, polarity := getAtomAndPolarity(atomic)
	tree := selectFromPolarity(polarity, positiveTree, negativeTree)
	return rewriteGeneric(tree, atomic, form, polarity)
}

func rewriteGeneric(tree datastruct.DataStructure, atomic btypes.Form, form btypes.Form, polarity bool) ([]ctypes.SubstAndForm, error) {
	rewritten := []ctypes.SubstAndForm{}

	var err error = nil
	if isUnified, unif := tree.Unify(form); isUnified {
		rewritten, err = getRewrittenFormulas(rewritten, unif, atomic, polarity)
	} else {
		rewritten = rewriteFailure(atomic)
	}
	return rewritten, err
}

func getRewrittenFormulas(rewritten []ctypes.SubstAndForm, unif []treetypes.MatchingSubstitutions, atomic btypes.Form, polarity bool) ([]ctypes.SubstAndForm, error) {
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

func addRewrittenFormulas(rewritten []ctypes.SubstAndForm, unif treetypes.MatchingSubstitutions, atomic btypes.Form, equivalence btypes.FormList) []ctypes.SubstAndForm {
	// Keep only useful substitutions
	useful_subst := ctypes.RemoveElementWithoutMM(unif.GetSubst(), atomic.GetMetas())
	meta_search := atomic.GetMetas()
	if !checkMetaAreFromSearch(meta_search, useful_subst) {
		fmt.Printf("[DMT] Error : There is at least one meta in final subst which is not from search : %v - %v - %v\n", useful_subst.ToString(), atomic.ToString(), unif.GetForm().ToString())
	}
	filteredUnif := treetypes.MakeMatchingSubstitutions(
		unif.GetForm(),
		useful_subst,
	)

	// Add each candidate to the rewrite slice with precedence order (Top/Bot are prioritized).
	for _, rewrittenCandidate := range equivalence {
		rewritten = addUnifToAtomics(rewritten, rewrittenCandidate, filteredUnif)
	}

	return rewritten
}

// End of primary algorithms.
// ----------------------------------------------------------------------------

// ----------------------------------------------------------------------------
// Supportive functions.

func getAtomAndPolarity(atom btypes.Form) (btypes.Form, bool) {
	switch form := atom.Copy().(type) {
	case btypes.Not:
		return form.GetForm(), false
	default:
		return form, true
	}
}

func rewriteFailure(atomic btypes.Form) []ctypes.SubstAndForm {
	return []ctypes.SubstAndForm{
		ctypes.MakeSubstAndForm(treetypes.Failure(), btypes.MakeSingleElementList(atomic)),
	}
}

func addUnifToAtomics(atomics []ctypes.SubstAndForm, candidate btypes.Form, unif treetypes.MatchingSubstitutions) []ctypes.SubstAndForm {
	substAndForm := ctypes.MakeSubstAndForm(unif.GetSubst().Copy(), btypes.MakeSingleElementList(candidate))
	if isBotOrTop(candidate) {
		atomics = ctypes.InsertFirstSubstAndFormList(atomics, substAndForm)
	} else {
		atomics = append(atomics, substAndForm)
	}
	return atomics
}

func isBotOrTop(form btypes.Form) bool {
	return is[btypes.Bot](form) || is[btypes.Top](form)
}

func sortUnifications(unifs []treetypes.MatchingSubstitutions, polarity bool, atomic btypes.Form) []treetypes.MatchingSubstitutions {
	rewriteMap := selectFromPolarity(polarity, positiveRewrite, negativeRewrite)

	sortedUnifs := []treetypes.MatchingSubstitutions{}
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
func insert(sortedUnifs []treetypes.MatchingSubstitutions, list btypes.FormList, unif treetypes.MatchingSubstitutions) []treetypes.MatchingSubstitutions {
	if list.Contains(btypes.MakerTop()) || list.Contains(btypes.MakerBot()) {
		sortedUnifs = insertFirst(sortedUnifs, unif)
	} else {
		sortedUnifs = append(sortedUnifs, unif)
	}
	return sortedUnifs
}

func insertFirst(sortedUnifs []treetypes.MatchingSubstitutions, unif treetypes.MatchingSubstitutions) []treetypes.MatchingSubstitutions {
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
func isFiltering(ms treetypes.MatchingSubstitutions) bool {
	subst := ms.GetSubst()
	metas := ms.GetForm().GetMetas()
	return checkAllMetaAreInstanciated(metas, subst)
}

func checkAllMetaAreInstanciated(metas btypes.MetaList, subst treetypes.Substitutions) bool {
	for _, m := range metas {
		m_found := false
		for k, v := range subst {
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

func checkMetaAreFromSearch(metas btypes.MetaList, subst treetypes.Substitutions) bool {
	for k, v := range subst {
		if !metas.Contains(k) {
			return false
		} else {
			if meta_v, ok := v.(btypes.Meta); ok && !metas.Contains(meta_v) {
				return false
			}
		}
	}
	return true
}

func getUnifiedEquivalence(atom btypes.Form, subst treetypes.Substitutions, polarity bool) (btypes.FormList, error) {
	equivalence := findEquivalence(atom, polarity)
	if equivalence == nil {
		return nil, fmt.Errorf("[DMT] Fatal error : no rewrite rule found when an unification has been found : %v", atom.ToString())
	}

	res := btypes.MakeEmptyFormList()
	for _, f := range equivalence {
		res = res.AppendIfNotContains(substitute(f, subst))
	}

	return res, nil
}

func findEquivalence(atom btypes.Form, polarity bool) btypes.FormList {
	return selectFromPolarity(polarity, positiveRewrite, negativeRewrite)[atom.ToString()]
}

// End of supportive functions.
// ----------------------------------------------------------------------------
