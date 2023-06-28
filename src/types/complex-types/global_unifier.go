package complextypes

import (
	"fmt"
	"strings"

	tsch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	ttps "github.com/GoelandProver/Goeland/code-trees/tree-types"
	. "github.com/GoelandProver/Goeland/global"
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
	localUnifiers []substitutions
}

/** Public exposed maker function and object's methods **/

func MakeUnifier() Unifier {
	// Start with an empty unifier. Mandatory for the other functions to work properly.
	return Unifier{localUnifiers: []substitutions{{}}}
}

func MergeUnifierList(ls []Unifier) Unifier {
	unifier := ls[0]
	for i := 1; i < len(ls); i++ {
		unifier.Merge(ls[i])
	}
	return unifier
}

/** Adds the given substitutions to the unifiers if it matches */
func (u *Unifier) AddSubstitutions(substs []ttps.Substitutions) {
	for _, subst := range substs {
		u.mergeWithLocalUnifier(subst)
	}
}

func (u *Unifier) PruneSubstitutions(substs []ttps.Substitutions) {
	if len(substs) == 0 {
		return
	}
	// Every substitution that is not compatible with any of the given substs is forgotten.
	unifiersToForget := make([]bool, len(u.localUnifiers))
	for i := 0; i < len(unifiersToForget); i++ {
		unifiersToForget[i] = true
	}

	for _, subst := range substs {
		for i, localUnifier := range u.localUnifiers {
			substRes, ok := tsch.MergeSubstitutions(subst, localUnifier)
			if u.compatible(substRes) && ok {
				unifiersToForget[i] = false
			}
		}
	}

	for i := len(unifiersToForget) - 1; i >= 0; i-- {
		if unifiersToForget[i] {
			u.removeFromUnifiers(int64(i))
		}
	}

	// Add an empty substitutions if empty.
	if len(u.localUnifiers) == 0 {
		for _, subst := range substs {
			u.localUnifiers = append(u.localUnifiers, subst)
		}
	}
}

func (u Unifier) ToString() string {
	str := "object Unifier{\n"
	for _, unifier := range u.localUnifiers {
		str += "\t { " + strings.Join(Map(unifier, func(index int, element ttps.Substitution) string {
			return fmt.Sprintf("(%s -> %s)", element.Key().ToString(), element.Value().ToString())
		}), ", ") + " }\n"
	}
	str += "}"
	return str
}

/** Returns a global unifier: MGU of all the unifiers found */
func (u Unifier) GetUnifier() ttps.Substitutions {
	return u.localUnifiers[0]
}

func (u Unifier) Copy() Unifier {
	newLocalUnifier := make([]substitutions, len(u.localUnifiers))
	for i, unif := range u.localUnifiers {
		newLocalUnifier[i] = unif.Copy()
	}
	return Unifier{
		localUnifiers: newLocalUnifier,
	}
}

func (u *Unifier) Merge(other Unifier) {
	for _, unifier := range other.localUnifiers {
		u.mergeWithLocalUnifier(unifier)
	}
}

/** Private methods & utilitary functions **/

func (u *Unifier) removeFromUnifiers(unifierIndex int64) {
	ed := len(u.localUnifiers) - 1
	u.localUnifiers[unifierIndex] = u.localUnifiers[ed]
	u.localUnifiers = u.localUnifiers[:ed]
}

func (u Unifier) compatible(subst ttps.Substitutions) bool {
	return !subst.Equals(ttps.Failure())
}

/**
	1 - Get all compatibles substitutions l from the localUnifiers (i.e., forall x in dom(l), then s(x) should be equal to l(x))
 	2 - Add a substitution from a meta x in l if x is not in dom(l)
	3 - If there is a compatibility issue, make a new substitution where everything that is in the original substitution and
		is in conflict with the new substitution is removed, and add it to the local unifiers */
func (u *Unifier) mergeWithLocalUnifier(workingSubst substitutions) {
	newUnifiers := []substitutions{}
	for i, localUnifier := range u.localUnifiers {
		subst, _ := tsch.MergeSubstitutions(workingSubst, localUnifier)
		if u.compatible(subst) {
			u.localUnifiers[i] = subst
		} else {
			newUnifiers = appendIfNeeded(newUnifiers, workingSubst)
		}
	}
	u.localUnifiers = append(u.localUnifiers, newUnifiers...)
}

/** Appends the unifier if it's not found in the other unifiers to add. */
func appendIfNeeded(newUnifiers []substitutions, currentUnifier substitutions) []substitutions {
	found := false
	for _, unifier := range newUnifiers {
		if unifier.Equals(currentUnifier) {
			found = true
			break
		}
	}

	if !found {
		newUnifiers = append(newUnifiers, currentUnifier)
	}
	return newUnifiers
}
