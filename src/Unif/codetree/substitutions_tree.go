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

package codetree

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif/substitution"
)

/* Takes each meta of the formula, matches the index to the metas, and add everything to subst */
/*
* Subs : (int, term) : (index in tree, term in formula)
* MetaToSubs : (meta, term) : meta in formula, term in tree
* Merge both of them
**/
func computeSubstitutions(
	subs []subst.SubstPair,
	metasToSubs subst.Substitutions,
	metaList Lib.List[AST.Meta],
) subst.Substitutions {
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Compute substitution : %v and %v",
				subst.SubstPairListToString(subs), metasToSubs.ToString())
		}),
	)
	treeSubs := subst.Substitutions{}

	//  Transform subst tree into a real substitution
	for _, value := range subs {
		if value.GetIndex() < metaList.Len() {
			currentMeta := metaList.At(value.GetIndex())
			currentValue := value.GetTerm()
			debug(
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"Iterate on subst : %v and  %v",
						currentMeta.ToString(),
						currentValue.ToString())
				}),
			)

			if !currentMeta.Equals(currentValue) {
				// Si current_meta a déjà une association dans metas
				metaGet, index := metasToSubs.Get(currentMeta)
				if subst.HasSubst(metasToSubs, currentMeta) && (index != -1) &&
					!currentValue.Equals(metaGet) {
					// On cherche a unifier les deux valeurs
					treeSubs.Set(currentMeta, currentValue)
					new_unif := subst.AddUnification(currentValue.Copy(), metaGet.Copy(), treeSubs.Copy())
					if new_unif.Equals(subst.Failure()) {
						return subst.Failure()
					} else {
						treeSubs = new_unif
						metasToSubs.Remove(index) // Remove from meta
					}
				} else { // Ne pas ajouter la susbtitution égalité
					treeSubs.Set(currentMeta, currentValue)
				}
			}
		}
	}

	debug(
		Lib.MkLazy(
			func() string { return fmt.Sprintf("before meta : %v", metasToSubs.ToString()) },
		),
	)
	// Metas_subst eliminate
	subst.EliminateMeta(&metasToSubs)
	subst.Eliminate(&metasToSubs)
	if metasToSubs.Equals(subst.Failure()) {
		return subst.Failure()
	}
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("After meta : %v", metasToSubs.ToString()) }),
	)

	debug(
		Lib.MkLazy(
			func() string { return fmt.Sprintf("before tree_subst : %v", treeSubs.ToString()) },
		),
	)
	// Tree subst elminate
	subst.EliminateMeta(&treeSubs)
	subst.Eliminate(&treeSubs)
	if treeSubs.Equals(subst.Failure()) {
		return subst.Failure()
	}
	debug(
		Lib.MkLazy(
			func() string { return fmt.Sprintf("after tree_subst : %v", treeSubs.ToString()) },
		),
	)

	// Fusion
	res, _ := subst.MergeSubstitutions(metasToSubs, treeSubs)
	if res.Equals(subst.Failure()) {
		return res
	}

	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("after merge : %v", res.ToString()) }),
	)

	subst.EliminateMeta(&res)
	subst.Eliminate(&res)

	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("after eliminate : %v", res.ToString()) }),
	)

	return res
}

func addUnification(term1, term2 AST.Term, s subst.Substitutions) subst.Substitutions {
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Add unification : %v and %v to %v",
				term1.ToString(),
				term2.ToString(),
				s.ToString())
		}),
	)
	term1 = subst.TransformTerm(term1)
	term2 = subst.TransformTerm(term2)

	// unify with ct only if the term already has an unification or if there is 2 fun. Just add it and eliminate otherwise.
	t1v, _ := s.Get(term1.ToMeta())
	t2v, _ := s.Get(term2.ToMeta())
	if (term1.IsMeta() && subst.HasSubst(s, term1.ToMeta()) && !t1v.Equals(term2)) ||
		(term2.IsMeta() && subst.HasSubst(s, term2.ToMeta()) && !t2v.Equals(term1)) ||
		(term1.IsFun() && term2.IsFun()) {
		m := makeMachine()
		m.meta = s.Copy()
		if m.addUnifications(term1, term2) == SUCCESS {
			return m.meta
		} else {
			return subst.Failure()
		}
	} else {
		switch {
		case term1.IsMeta():
			s.Set(term1.ToMeta(), term2)
			subst.EliminateMeta(&s)
			subst.Eliminate(&s)
			return s
		case term2.IsMeta():
			s.Set(term2.ToMeta(), term1)
			subst.EliminateMeta(&s)
			subst.Eliminate(&s)
			return s
		default:
			return subst.Failure()
		}
	}
}




