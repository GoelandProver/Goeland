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
* This file contains the functions needed to subtitute all the meta-variables of a subtitution map.
**/

package treesearch

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Takes each meta of the formula, matches the index to the metas, and add everything to subst */
/*
* Subs : (int, term) : (index in tree, term in formula)
* MetaToSubs : (meta, term) : meta in formula, term in tree
* Merge both of them
**/
func computeSubstitutions(subs []treetypes.SubstPair, metasToSubs treetypes.Substitutions, form basictypes.Form) treetypes.Substitutions {
	global.PrintDebug("CS", fmt.Sprintf("Compute substitution : %v and %v", treetypes.SubstPairListToString(subs), metasToSubs.ToString()))
	metasFromTreeForm := basictypes.NewMetaList()
	treeSubs := treetypes.Substitutions{}

	// Retrieve all the meta of from the tree formula
	switch typedForm := form.(type) {
	case basictypes.Pred:
		for _, term := range typedForm.GetArgs() {
			metasFromTreeForm.Append(term.GetMetas().Slice()...)
		}
	case treetypes.TermForm:
		metasFromTreeForm.Append(typedForm.GetTerm().GetMetas().Slice()...)
	default:
		return treetypes.Failure()
	}

	//  Transform subst tree into a real substitution
	for _, value := range subs {
		currentMeta := metasFromTreeForm.Get(value.GetIndex())
		currentValue := value.GetTerm()
		global.PrintDebug("CS", fmt.Sprintf("Iterate on subst : %v and  %v", currentMeta.ToString(), currentValue.ToString()))

		if !currentMeta.Equals(currentValue) {
			// Si current_meta a déjà une association dans metas
			metaGet, index := metasToSubs.Get(currentMeta)
			if treetypes.HasSubst(metasToSubs, currentMeta) && (index != -1) && !currentValue.Equals(metaGet) {
				// On cherche a unifier les deux valeurs
				treeSubs.Set(currentMeta, currentValue)
				new_unif := AddUnification(currentValue.Copy(), metaGet.Copy(), treeSubs.Copy())
				if new_unif.Equals(treetypes.Failure()) {
					return treetypes.Failure()
				} else {
					treeSubs = new_unif
					metasToSubs.Remove(index) // Remove from meta
				}
			} else { // Ne pas ajouter la susbtitution égalité
				treeSubs.Set(currentMeta, currentValue)
			}
		}
	}

	global.PrintDebug("CS", fmt.Sprintf("before meta : %v", metasToSubs.ToString()))
	// Metas_subst eliminate
	treetypes.EliminateMeta(&metasToSubs)
	treetypes.Eliminate(&metasToSubs)
	if metasToSubs.Equals(treetypes.Failure()) {
		return treetypes.Failure()
	}
	global.PrintDebug("CS", fmt.Sprintf("After meta : %v", metasToSubs.ToString()))

	global.PrintDebug("CS", fmt.Sprintf("before tree_subst : %v", treeSubs.ToString()))
	// Tree subst elminate
	treetypes.EliminateMeta(&treeSubs)
	treetypes.Eliminate(&treeSubs)
	if treeSubs.Equals(treetypes.Failure()) {
		return treetypes.Failure()
	}
	global.PrintDebug("CS", fmt.Sprintf("after tree_subst : %v", treeSubs.ToString()))

	// Fusion
	res, _ := MergeSubstitutions(metasToSubs, treeSubs)
	if res.Equals(treetypes.Failure()) {
		return res
	}
	global.PrintDebug("CS", fmt.Sprintf("after merge : %v", res.ToString()))

	treetypes.EliminateMeta(&res)
	treetypes.Eliminate(&res)
	global.PrintDebug("CS", fmt.Sprintf("after eliminate : %v", res.ToString()))

	return res
}

/* Call addUnification and returns a status - modify m.meta */
func (m *Machine) trySubstituteMeta(i basictypes.Term, j basictypes.Term) Status {
	global.PrintDebug("TS", fmt.Sprintf("Try substitute : %v and %v", i.ToString(), j.ToString()))
	new_meta := AddUnification(i, j, m.meta.Copy())
	if new_meta.Equals(treetypes.Failure()) {
		return Status(ERROR)
	}
	m.meta = new_meta
	return Status(SUCCESS)
}

func AddUnification(term1, term2 basictypes.Term, subst treetypes.Substitutions) treetypes.Substitutions {
	global.PrintDebug("AU", fmt.Sprintf("Add unification : %v and %v to %v", term1.ToString(), term2.ToString(), subst.ToString()))
	// unify with ct only if the term already has an unification or if there is 2 fun. Just add it and eliminate otherwise.
	t1v, _ := subst.Get(term1.ToMeta())
	t2v, _ := subst.Get(term2.ToMeta())
	if (term1.IsMeta() && treetypes.HasSubst(subst, term1.ToMeta()) && !t1v.Equals(term2)) ||
		(term2.IsMeta() && treetypes.HasSubst(subst, term2.ToMeta()) && !t2v.Equals(term1)) ||
		(term1.IsFun() && term2.IsFun()) {
		m := makeMachine()
		m.meta = subst.Copy()
		if m.addUnifications(term1, term2) == SUCCESS {
			return m.meta
		} else {
			return treetypes.Failure()
		}
	} else {
		switch {
		case term1.IsMeta():
			subst.Set(term1.ToMeta(), term2)
			treetypes.EliminateMeta(&subst)
			treetypes.Eliminate(&subst)
			return subst
		case term2.IsMeta():
			subst.Set(term2.ToMeta(), term1)
			treetypes.EliminateMeta(&subst)
			treetypes.Eliminate(&subst)
			return subst
		default:
			return treetypes.Failure()
		}
	}
}

/* Adds the unifications found to the meta substitutions from running the algorithm on term1 and term2. */
func (m *Machine) addUnifications(term1, term2 basictypes.Term) Status {
	global.PrintDebug("au", fmt.Sprintf("add unification : %v and %v", term1.ToString(), term2.ToString()))
	meta := tryUnification(term1.Copy(), term2.Copy(), m.meta.Copy()) // Return empty or an array of 1 matching substitution, which is m.meta improved wit (term1, term2)

	if len(meta) == 0 {
		return Status(ERROR)
	} else {
		m.meta = meta[0].GetSubst()
		treetypes.EliminateMeta(&m.meta)
		treetypes.Eliminate(&m.meta)
	}

	return Status(SUCCESS)
}

/* Tries to unify term1 with term2, depending on the substitutions already found by the parent unification process. */
func tryUnification(term1, term2 basictypes.Term, meta treetypes.Substitutions) []treetypes.MatchingSubstitutions {
	global.PrintDebug("TU", fmt.Sprintf("Try unification : %v and %v", term1.ToString(), term2.ToString()))
	aux := makeMachine()
	aux.terms = basictypes.TermList{term2}
	aux.meta = meta

	// add begin at the start and end at the end !
	tree := makeBranch(treetypes.ParseTerm(term1.Copy()))
	res := aux.unifyAux(*tree)
	return res
}

/* Merge two valid substitutions */
func MergeSubstitutions(s1, s2 treetypes.Substitutions) (treetypes.Substitutions, bool) {
	global.PrintDebug("MS", fmt.Sprintf("Merge substitution : %v and %v", s1.ToString(), s2.ToString()))
	res := treetypes.Substitutions{}
	same_key := false

	if s1.IsEmpty() {
		return s2, false
	}

	if s2.IsEmpty() {
		return s1, false
	}

	for _, subst := range s1 {
		res.Set(subst.Get())
	}

	for _, subst := range s2 {
		s2_k, s2_v := subst.Get()
		if treetypes.HasSubst(res, s2_k) {
			same_key = true
			res = AddUnification(s2_k.Copy(), s2_v.Copy(), res.Copy())
		} else {
			res.Set(s2_k.ToMeta(), s2_v)
			treetypes.EliminateMeta(&res)
			treetypes.Eliminate(&res)
		}

	}
	return res, same_key
}
