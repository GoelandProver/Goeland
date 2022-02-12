/**
* Copyright by Julie CAILLER and Johann ROSAIN (2022)
*
* julie.cailler@lirmm.fr
* johann.rosain@lirmm.fr
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL-B license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL-B license and that you accept its terms.
**/
/*************************/
/* substitutions_tree.go */
/*************************/
/**
* This file contains the functions needed to subtitute all the meta-variables of a subtitution map.
**/

package treesearch

import (
	"fmt"
	"reflect"

	treetypes "github.com/delahayd/gotab/code-trees/tree-types"
	"github.com/delahayd/gotab/global"
	basictypes "github.com/delahayd/gotab/types/basic-types"
)

/* Takes each meta of the formula, matches the index to the metas, and add everything to subst */
/*
* Subst : (int, term) : (index in tree, term in formula)
* Meta : (meta, term) : meta in formula, term in tree
* Mege both of them
**/
func computeSubstitutions(subst []treetypes.SubstPair, metas treetypes.Substitutions, form basictypes.Form) treetypes.Substitutions {
	metas_from_tree_form := basictypes.MetaList{}
	tree_subst := treetypes.Substitutions{}

	// Retrieve all the meta of from the tree formula
	if reflect.TypeOf(form) == reflect.TypeOf(basictypes.Pred{}) {
		for _, arg := range form.(basictypes.Pred).GetArgs() {
			metas_from_tree_form = append(metas_from_tree_form, arg.GetMetas()...)
		}
	} else if reflect.TypeOf(form) == reflect.TypeOf(treetypes.TermForm{}) {
		metas_from_tree_form = append(metas_from_tree_form, form.(treetypes.TermForm).GetTerm().GetMetas()...)
	} else {
		return treetypes.Failure()
	}

	global.PrintDebug("TS", fmt.Sprintf("subst : %v ", treetypes.SubstPairListToString(subst)))
	global.PrintDebug("TS", fmt.Sprintf("meta_from_tree_form : %v ", metas_from_tree_form.ToString()))
	global.PrintDebug("TS", fmt.Sprintf("subst_to_subst : %v ", tree_subst.ToString()))

	//  Transform subst tree into a real substitution
	for _, value := range subst {
		current_meta := metas_from_tree_form[value.GetIndex()]
		current_value := value.GetTerm()
		global.PrintDebug("TS", "___________________________")
		global.PrintDebug("TS", fmt.Sprintf("index : %v - Meta : %v - Value : %v ", value.GetIndex(), current_meta.ToString(), current_value.ToString()))
		global.PrintDebug("TS", fmt.Sprintf("tree_subst (begin) : %v ", tree_subst.ToString()))

		if !current_meta.Equals(current_value) {
			// Si current_meta a déjà une association dans metas
			if treetypes.HasSubst(metas, current_meta) && !current_value.Equals(metas[current_meta]) {
				global.PrintDebug("TS", fmt.Sprintf("current_meta already has an association ! : %v ", metas[current_meta].ToString()))
				// On cherche a unifier les deux valeurs
				tree_subst[current_meta] = current_value
				new_unif := AddUnification(current_value.Copy(), metas[current_meta].Copy(), tree_subst.Copy())
				if new_unif.Equals(treetypes.Failure()) {
					return treetypes.Failure()
				} else {
					tree_subst = new_unif
				}
			} else { // Ne pas ajouter la susbtitution égalité
				tree_subst[current_meta] = current_value
			}
			global.PrintDebug("TS", fmt.Sprintf("tree_subst (end) : %v ", tree_subst.ToString()))
		}
	}
	global.PrintDebug("TS", fmt.Sprintf("tree_subst : %v ", tree_subst.ToString()))

	// Copy metas
	global.PrintDebug("TS", fmt.Sprintf("metas_subst : %v ", metas.ToString()))

	// Metas_subst eliminate
	treetypes.EliminateMeta(&metas)
	global.PrintDebug("TS", fmt.Sprintf("metas_subst (after eliminate meta) : %v ", metas.ToString()))
	treetypes.Eliminate(&metas)
	global.PrintDebug("TS", fmt.Sprintf("metas_subst (after eliminate) : %v ", metas.ToString()))
	if metas.Equals(treetypes.Failure()) {
		return treetypes.Failure()
	}

	// Tree subst elminate
	treetypes.EliminateMeta(&tree_subst)
	global.PrintDebug("TS", fmt.Sprintf("tree_subst (after eliminate meta) : %v ", tree_subst.ToString()))
	treetypes.Eliminate(&tree_subst)
	global.PrintDebug("TS", fmt.Sprintf("tree_subst (after eliminate) : %v ", tree_subst.ToString()))
	if tree_subst.Equals(treetypes.Failure()) {
		return treetypes.Failure()
	}

	// Fusion
	res, _ := MergeSubstitutions(metas, tree_subst)
	if res.Equals(treetypes.Failure()) {
		return res
	}

	treetypes.EliminateMeta(&res)
	return treetypes.Eliminate(&res)
}

/* Call addUnification and returns a status - modify m.meta */
func (m *Machine) trySubstituteMeta(i basictypes.Term, j basictypes.Term) Status {
	new_meta := AddUnification(i, j, m.meta.Copy())
	if new_meta.Equals(treetypes.Failure()) {
		return Status(ERROR)
	}
	m.meta = new_meta
	return Status(SUCCESS)
}

func AddUnification(term1, term2 basictypes.Term, subst treetypes.Substitutions) treetypes.Substitutions {
	global.PrintDebug("AU", fmt.Sprintf("Add (%v, %v) to %v", term1.ToString(), term2.ToString(), subst.ToString()))

	// unify with ct only if the term already has an unification or if there is 2 fun. Just add it and eliminate otherwise.
	if (term1.IsMeta() && treetypes.HasSubst(subst, term1.ToMeta()) && !subst[term1.ToMeta()].Equals(term2)) ||
		(term2.IsMeta() && treetypes.HasSubst(subst, term2.ToMeta()) && !subst[term2.ToMeta()].Equals(term1)) ||
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
			subst[term1.ToMeta()] = term2
			treetypes.EliminateMeta(&subst)
			return treetypes.Eliminate(&subst)
		case term2.IsMeta():
			subst[term2.ToMeta()] = term1
			treetypes.EliminateMeta(&subst)
			return treetypes.Eliminate(&subst)
		default:
			return treetypes.Failure()
		}
	}
}

/* Adds the unifications found to the meta substitutions from running the algorithm on term1 and term2. */
func (m *Machine) addUnifications(term1, term2 basictypes.Term) Status {
	global.PrintDebug("AU", fmt.Sprintf("m.meta : %v", m.meta.ToString()))
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
	aux := makeMachine()
	aux.terms = []basictypes.Term{term2}
	aux.meta = meta

	// add begin at the start and end at the end !
	tree := makeBranch(treetypes.ParseTerm(term1.Copy()))
	global.PrintDebug("TU", "--------------- NEW MACHINE ---------------")
	res := aux.unifyAux(*tree)
	global.PrintDebug("TU", "--------------- END MACHINE ---------------")
	return res
}

/* Merge two valid substitutions */
func MergeSubstitutions(s1, s2 treetypes.Substitutions) (treetypes.Substitutions, bool) {
	global.PrintDebug("MS", fmt.Sprintf("Begin MS - S1 : %v - S2 : %v", s1.ToString(), s2.ToString()))
	res := treetypes.Substitutions{}
	same_key := false

	if s1.IsEmpty() {
		global.PrintDebug("MS", "S1 empty")
		return s2, false
	}

	if s2.IsEmpty() {
		global.PrintDebug("MS", "S2 empty")
		return s1, false
	}

	for s1_k, s1_v := range s1 {
		res[s1_k] = s1_v
	}

	for s2_k, s2_v := range s2 {
		if treetypes.HasSubst(res, s2_k) {
			same_key = true
			global.PrintDebug("MS", fmt.Sprintf("Subst before add unif : %v", res.ToString()))
			res = AddUnification(s2_k.Copy(), s2_v.Copy(), res.Copy())
			global.PrintDebug("MS", fmt.Sprintf("Subst after add unif : %v", res.ToString()))
		} else {
			res[s2_k.ToMeta()] = s2_v
			treetypes.EliminateMeta(&res)
			treetypes.Eliminate(&res)
		}

	}
	global.PrintDebug("MS", "End MS")
	return res, same_key
}
