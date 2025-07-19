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
package Core

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

type substitutions = Unif.Substitutions

/*
  - The unifier type is a type that keeps the substitutions that close the whole subtree.
    It is stored in localUnifiers.
    The goal of this object is to simply export two functions:
  - a function to add the local substitutions that close a subtree
  - a function to prune the substitutions when a constraint is given
    The management of everything else falls inside the object's reach.
    As such, the current implementation does the following:
  - it stores the metavariables that exist in at least one substitution.
  - it stores the terms that exist in at least one substitution.
  - the local unifiers is a list of substitutions, where each substitution
    is a list of pairs of integers, representing the index of the (meta, term)
    in the local meta list and term list.
    *
*/
type Unifier struct {
	localUnifiers []Glob.Pair[substitutions, []substitutions]
}

/** Public exposed maker function and object's methods **/

func MakeUnifier() Unifier {
	return Unifier{localUnifiers: []Glob.Pair[substitutions, []substitutions]{}}
}

func MergeUnifierList(ls []Unifier) Unifier {
	if !Glob.GetProof() {
		return MakeUnifier()
	}
	unifier := ls[0]
	for i := 1; i < len(ls); i++ {
		unifier.Merge(ls[i])
	}
	return unifier
}

/** Adds the given substitutions to the unifiers if it matches */
func (u *Unifier) AddSubstitutions(cleanedSubst, actualSubst substitutions) {
	if !Glob.GetProof() {
		return
	}
	found := false
	for i, p := range u.localUnifiers {
		if p.Fst.Equals(cleanedSubst) {
			u.localUnifiers[i].Snd = append(u.localUnifiers[i].Snd, actualSubst)
			found = true
		}
	}
	if !found {
		u.localUnifiers = append(u.localUnifiers, Glob.MakePair(cleanedSubst, []substitutions{actualSubst}))
	}
}

func (u *Unifier) PruneUncompatibleSubstitutions(subst substitutions) {
	if !Glob.GetProof() {
		return
	}
	res := make([]Glob.Pair[substitutions, []substitutions], 0)
	for _, p := range u.localUnifiers {
		compat, _ := Unif.MergeSubstitutions(subst, p.Fst)
		if !compat.Equals(Unif.Failure()) {
			res = append(res, p)
		}
	}
	u.localUnifiers = res
}

func (u Unifier) IsEmpty() bool {
	return len(u.localUnifiers) == 0
}

func (u Unifier) ToString() string {
	substsToString := func(index int, element Unif.Substitution) string {
		return fmt.Sprintf("(%s -> %s)", element.Key().ToString(), element.Value().ToString())
	}
	str := "object Unifier{"
	for _, unifier := range u.localUnifiers {
		str += "[ " + strings.Join(Glob.MapTo(unifier.Fst, substsToString), ", ") + " ] --> [ " + strings.Join(Glob.MapTo(unifier.Snd, func(_ int, el substitutions) string {
			return strings.Join(Glob.MapTo(el, substsToString), " ; ")
		}), " ---- ") + " ], "
	}
	str += "}"
	return str
}

/** Returns a global unifier: MGU of all the unifiers found */
func (u Unifier) GetUnifier() Unif.Substitutions {
	if !Glob.GetProof() || len(u.localUnifiers) == 0 {
		return Unif.MakeEmptySubstitution()
	}
	Glob.PrintDebug("UNIFS", Lib.MkLazy(func() string { return u.ToString() }))
	if len(u.localUnifiers) > 0 && len(u.localUnifiers[0].Snd) > 0 {
		return u.localUnifiers[0].Snd[0]
	}
	return Unif.MakeEmptySubstitution()
}

func (u Unifier) Copy() Unifier {
	if !Glob.GetProof() {
		return MakeUnifier()
	}
	newLocalUnifier := make([]Glob.Pair[substitutions, []substitutions], len(u.localUnifiers))
	for i, unif := range u.localUnifiers {
		copy := []substitutions{}
		for _, subst := range unif.Snd {
			copy = append(copy, subst.Copy())
		}
		newLocalUnifier[i] = Glob.MakePair(unif.Fst.Copy(), copy)
	}
	return Unifier{
		localUnifiers: newLocalUnifier,
	}
}

func (u *Unifier) Merge(other Unifier) {
	if !Glob.GetProof() {
		return
	}

	Glob.PrintDebug(
		"GLOBAL UNIFIER",
		Lib.MkLazy(func() string { return fmt.Sprintf("Current: %s, to merge: %s", u.ToString(), other.ToString()) }),
	)

	newUnifiers := []Glob.Pair[substitutions, []substitutions]{}

	if len(u.localUnifiers) == 0 || len(other.localUnifiers) == 0 {
		if len(u.localUnifiers) == 0 {
			u.localUnifiers = other.localUnifiers
		}
		return
	}

	for _, locUnif := range u.localUnifiers {
		for _, unifier := range other.localUnifiers {
			newUnifs := []substitutions{}
			res, _ := Unif.MergeSubstitutions(unifier.Fst.Copy(), locUnif.Fst.Copy())
			if !res.Equals(Unif.Failure()) {
				for _, subst := range locUnif.Snd {
					for _, s := range unifier.Snd {
						merge, _ := Unif.MergeSubstitutions(subst.Copy(), s.Copy())
						if !merge.Equals(Unif.Failure()) {
							newUnifs = append(newUnifs, merge)
						}
					}
				}
				newUnifiers = appendNewUnifiersIfNeeded(newUnifiers, res, newUnifs)
			}
		}
	}
	u.localUnifiers = newUnifiers
	Glob.PrintDebug("GLOBAL UNIFIER", Lib.MkLazy(func() string { return fmt.Sprintf("After: %s", u.ToString()) }))
}

func (u *Unifier) PruneMetasInSubsts(metas Lib.Set[AST.Meta]) {
	for i, unif := range u.localUnifiers {
		for _, meta := range metas.Elements().GetSlice() {
			_, index := unif.Fst.Get(meta)
			if index != -1 {
				u.localUnifiers[i].Fst.Remove(index)
			}
		}
	}
	newUnifiers := []Glob.Pair[substitutions, []substitutions]{}
	for _, unif := range u.localUnifiers {
		newUnifiers = appendNewUnifiersIfNeeded(newUnifiers, unif.Fst, unif.Snd)
	}
	u.localUnifiers = newUnifiers
}

func appendNewUnifiersIfNeeded(unifiers []Glob.Pair[substitutions, []substitutions], res substitutions, newUnifs []substitutions) []Glob.Pair[substitutions, []substitutions] {
	for i, unif := range unifiers {
		if unif.Fst.Equals(res) {
			unifiers[i].Snd = append(unifiers[i].Snd, newUnifs...)
			return unifiers
		}
	}
	unifiers = append(unifiers, Glob.MakePair(res, newUnifs))
	return unifiers
}
