package complextypes

import (
	"fmt"
	"strings"

	tsch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	ttps "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

type substitutions = ttps.Substitutions

/** The unifier type is a type that keeps the substitutions that close the whole subtree.
    It is stored in localUnifiers.
	The goal of this object is to simply export two functions:
	* a function to add the local substitutions that close a subtree
	* a function to prune the substitutions when a constraint is given
	The management of everything else falls inside the object's reach.
	As such, the current implementation does the following:
	* it stores the metavariables that exist in at least one substitution.
	* it stores the terms that exist in at least one substitution.
	* the local unifiers is a list of substitutions, where each substitution
	  is a list of pairs of integers, representing the index of the (meta, term)
	  in the local meta list and term list.
 **/
type Unifier struct {
	localUnifiers []Pair[substitutions, []substitutions]
}

/** Public exposed maker function and object's methods **/

func MakeUnifier() Unifier {
	return Unifier{localUnifiers: []Pair[substitutions, []substitutions]{}}
}

func MergeUnifierList(ls []Unifier) Unifier {
	if !global.GetProof() {
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
	if !global.GetProof() {
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
		u.localUnifiers = append(u.localUnifiers, MakePair(cleanedSubst, []substitutions{actualSubst}))
	}
}

func (u *Unifier) PruneUncompatibleSubstitutions(subst substitutions) {
	if !global.GetProof() {
		return
	}
	res := make([]Pair[substitutions, []substitutions], 0)
	for _, p := range u.localUnifiers {
		compat, _ := tsch.MergeSubstitutions(subst, p.Fst)
		if !compat.Equals(ttps.Failure()) {
			res = append(res, p)
		}
	}
	u.localUnifiers = res
}

func (u Unifier) ToString() string {
	substsToString := func(index int, element ttps.Substitution) string {
		return fmt.Sprintf("(%s -> %s)", element.Key().ToString(), element.Value().ToString())
	}
	str := "object Unifier{"
	for _, unifier := range u.localUnifiers {
		str += "[ " + strings.Join(Map(unifier.Fst, substsToString), ", ") + " ] --> { " + strings.Join(Map(unifier.Snd, func(_ int, el substitutions) string {
			return strings.Join(Map(el, substsToString), " ; ")
		}), "") + " }, "
	}
	str += "}"
	return str
}

/** Returns a global unifier: MGU of all the unifiers found */
func (u Unifier) GetUnifier() ttps.Substitutions {
	if !GetProof() || len(u.localUnifiers) == 0 {
		return ttps.MakeEmptySubstitution()
	}
	PrintInfo("UNIFS", u.ToString())
	return u.localUnifiers[0].Snd[0]
}

func (u Unifier) Copy() Unifier {
	if !global.GetProof() {
		return MakeUnifier()
	}
	newLocalUnifier := make([]Pair[substitutions, []substitutions], len(u.localUnifiers))
	for i, unif := range u.localUnifiers {
		copy := []substitutions{}
		for _, subst := range unif.Snd {
			copy = append(copy, subst.Copy())
		}
		newLocalUnifier[i] = MakePair(unif.Fst.Copy(), copy)
	}
	return Unifier{
		localUnifiers: newLocalUnifier,
	}
}

func (u *Unifier) Merge(other Unifier) {
	if !global.GetProof() {
		return
	}

	newUnifiers := []Pair[substitutions, []substitutions]{}
	for i, locUnif := range u.localUnifiers {
		unif := make([]substitutions, len(locUnif.Snd))
		for j, subst := range locUnif.Snd {
			unif[j] = subst.Copy()
		}
		newUnifs := []substitutions{}
		for _, unifier := range other.localUnifiers {
			res, _ := tsch.MergeSubstitutions(unifier.Fst, locUnif.Fst)
			if !res.Equals(ttps.Failure()) {
				u.localUnifiers[i].Fst = res
				for _, subst := range unif {
					for _, s := range unifier.Snd {
						merge, _ := tsch.MergeSubstitutions(subst, s)
						newUnifs = append(newUnifs, merge)
					}
				}
			}
		}
		newUnifiers = append(newUnifiers, MakePair(u.localUnifiers[i].Fst, newUnifs))
	}
	u.localUnifiers = newUnifiers
}

func (u *Unifier) PruneMetasInSubsts(metas btps.MetaList) {
	for i, unif := range u.localUnifiers {
		for _, meta := range metas {
			_, index := unif.Fst.Get(meta)
			if index != -1 {
				u.localUnifiers[i].Fst.Remove(index)
			}
		}
	}
}
