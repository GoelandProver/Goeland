package complextypes

import (
	"fmt"
	"strings"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	ttps "github.com/GoelandProver/Goeland/code-trees/tree-types"
	. "github.com/GoelandProver/Goeland/global"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

const (
	UNMAPPED int64 = -1
)

type substitutions = []int64

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
	availableMetaList btps.MetaList
	availableTermList btps.TermList
	localUnifiers     []substitutions
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
		workingSubst := u.mapList(subst)
		u.mergeWithLocalUnifier(workingSubst)
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
		workingSubst := u.mapList(subst)
		for i, localUnifier := range u.localUnifiers {
			if u.compatible(workingSubst, localUnifier) {
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
			u.localUnifiers = append(u.localUnifiers, u.mapList(subst))
		}
	}
}

func (u Unifier) ToString() string {
	str := "object Unifier{\n"
	for _, unifier := range u.localUnifiers {
		str += "\t { " + strings.Join(Map(unifier, func(index int, element int64) string {
			meta, term := u.unmaps(int64(index), element)
			return fmt.Sprintf("(%s -> %s)", meta.ToString(), term.ToString())
		}), ", ") + " }\n"
	}
	str += "}"
	return str
}

/** Returns a global unifier: MGU of all the unifiers found */
func (u Unifier) GetUnifier() ttps.Substitutions {
	finalUnifier := u.makeUnifier(0)
	for i := 1; i < len(u.localUnifiers); i++ {
		finalUnifier, _ = treesearch.MergeSubstitutions(finalUnifier, u.makeUnifier(i))
	}
	return finalUnifier
}

func (u Unifier) Copy() Unifier {
	newLocalUnifier := make([]substitutions, len(u.localUnifiers))
	copy(newLocalUnifier, u.localUnifiers)
	return Unifier{
		availableMetaList: u.availableMetaList.Copy(),
		availableTermList: u.availableTermList.Copy(),
		localUnifiers:     newLocalUnifier,
	}
}

func (u *Unifier) Merge(other Unifier) {
	// Maps other meta/term index to new index
	metaMap := make([]int64, other.availableMetaList.Len())
	termMap := make([]int64, other.availableTermList.Len())

	// Update the lists of meta & terms available.
	for i, m := range other.availableMetaList {
		if !u.availableMetaList.Contains(m) {
			metaMap[i] = int64(u.availableMetaList.Len())
			u.availableMetaList = append(u.availableMetaList, m)
		} else {
			metaMap[i] = int64(u.availableMetaList.Find(m))
		}
	}
	for i, t := range other.availableTermList {
		if !u.availableTermList.Contains(t) {
			termMap[i] = int64(u.availableTermList.Len())
			u.availableTermList = append(u.availableTermList, t)
		} else {
			termMap[i] = int64(u.availableTermList.Find(t))
		}
	}

	// Let's merge it!
	for _, unifier := range other.localUnifiers {
		// Not forgetting to map the old values to the new
		mappedUnifier := u.makeMappedUnifier(unifier, metaMap, termMap)
		u.mergeWithLocalUnifier(mappedUnifier)
	}
}

/** Private methods & utilitary functions **/

/** Unmaps the mapped pair of the object to the actual value. */
func (u Unifier) unmaps(fst int64, snd int64) (btps.Meta, btps.Term) {
	return u.availableMetaList[fst], u.availableTermList[snd]
}

/** Maps the substitution to a pair that will be manipulated by the object. */
func (u *Unifier) maps(m btps.Meta, t btps.Term) (int64, int64) {
	mindex := u.availableMetaList.Find(m)
	tindex := u.availableTermList.Find(t)

	if mindex == -1 {
		mindex = len(u.availableMetaList)
		u.availableMetaList = append(u.availableMetaList, m)
	}
	if tindex == -1 {
		tindex = len(u.availableTermList)
		u.availableTermList = append(u.availableTermList, t)
	}

	return int64(mindex), int64(tindex)
}

/** Returns an array of int64 with the index of the mapped term at the index of the meta. */
func (u *Unifier) mapList(subst ttps.Substitutions) substitutions {
	paired := []Pair[int64, int64]{}
	length := int64(0)
	for _, s := range subst {
		i, v := u.maps(s.Key(), s.Value())
		paired = append(paired, MakePair(i, v))
		if i > length {
			length = i
		}
	}

	mappedSubstitution := make(substitutions, length+1)
	for i := 0; i <= int(length); i++ {
		mappedSubstitution[i] = UNMAPPED
	}

	for _, v := range paired {
		mappedSubstitution[v.Fst] = v.Snd
	}

	return mappedSubstitution
}

/** For every meta in the given substitution, if the meta is mapped, verify if it has the same mapping as the reference. */
func (u Unifier) compatible(subst substitutions, reference substitutions) bool {
	for i, v := range subst {
		if i < len(reference) && reference[i] != UNMAPPED && v != UNMAPPED && v != reference[i] {
			return false
		}
	}
	return true
}

/** Adds everything in needAdded that is not in unifier. Should be called only if unifier and needAdded are compatible. */
func (u *Unifier) addSymetricDifference(unifierIndex int64, needAdded substitutions) {
	for len(u.localUnifiers[unifierIndex]) < len(needAdded) {
		u.localUnifiers[unifierIndex] = append(u.localUnifiers[unifierIndex], UNMAPPED)
	}

	for j, v := range needAdded {
		if v != UNMAPPED {
			u.localUnifiers[unifierIndex][j] = v
		}
	}
}

/** Adds a local unifier from an uncompatible substitution sent. */
func (u Unifier) shouldAddNewLocalUnifier(reference substitutions, old substitutions) substitutions {
	cp := make(substitutions, len(reference))
	copy(cp, reference)

	for i, v := range old {
		if v != UNMAPPED && cp[i] == UNMAPPED {
			cp[i] = v
		}
	}

	return cp
}

func (u *Unifier) removeFromUnifiers(unifierIndex int64) {
	ed := len(u.localUnifiers) - 1
	u.localUnifiers[unifierIndex] = u.localUnifiers[ed]
	u.localUnifiers = u.localUnifiers[:ed]
}

/**
	1 - Get all compatibles substitutions l from the localUnifiers (i.e., forall x in dom(l), then s(x) should be equal to l(x))
 	2 - Add a substitution from a meta x in l if x is not in dom(l)
	3 - If there is a compatibility issue, make a new substitution where everything that is in the original substitution and
		is in conflict with the new substitution is removed, and add it to the local unifiers */
func (u *Unifier) mergeWithLocalUnifier(workingSubst substitutions) {
	newUnifiers := []substitutions{}
	for i, localUnifier := range u.localUnifiers {
		if u.compatible(workingSubst, localUnifier) {
			u.addSymetricDifference(int64(i), workingSubst)
		} else {
			newUnifiers = appendIfNeeded(newUnifiers, u.shouldAddNewLocalUnifier(workingSubst, localUnifier))
		}
	}
	u.localUnifiers = append(u.localUnifiers, newUnifiers...)
}

/** Maps an old unifier to be merged to a new one */
func (u Unifier) makeMappedUnifier(unifier substitutions, metaMap, termMap []int64) substitutions {
	newUnifier := make(substitutions, len(u.availableMetaList))
	for i, t := range unifier {
		newUnifier[metaMap[i]] = termMap[t]
	}
	return newUnifier
}

/** Appends the unifier if it's not found in the other unifiers to add. */
func appendIfNeeded(newUnifiers []substitutions, currentUnifier substitutions) []substitutions {
	found := false
	for _, unifier := range newUnifiers {
		if len(unifier) == len(currentUnifier) {
			i := 0
			for i < len(unifier) {
				if unifier[i] != currentUnifier[i] {
					break
				}
				i++
			}
			if i == len(unifier) {
				found = true
				break
			}
		}
	}

	if !found {
		newUnifiers = append(newUnifiers, currentUnifier)
	}
	return newUnifiers
}

func (u Unifier) makeUnifier(index int) ttps.Substitutions {
	unifier := ttps.Substitutions{}
	for i, v := range u.localUnifiers[index] {
		meta, term := u.unmaps(int64(i), int64(v))
		unifier = append(unifier, ttps.MakeSubstitution(meta, term))
	}
	return unifier
}
