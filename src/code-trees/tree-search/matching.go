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
/***************/
/* Machine.go */
/***************/
/**
* This file provides the necessary methods for the unification algorithm.
**/

package treesearch

import (
	"fmt"
	"reflect"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/*** Unify ***/

/* Helper function to avoid using MakeMachine() outside of this file. */
func (n Node) Unify(formula basictypes.Form) (bool, []treetypes.MatchingSubstitutions) {
	machine := makeMachine()
	res := machine.unify(n, formula)
	global.PrintDebug("Unify", fmt.Sprintf("Res = %v", !reflect.DeepEqual(machine.failure, res)))
	return !reflect.DeepEqual(machine.failure, res), res // return found, res
}

/* Tries to find the substitutions needed to unify the formulae with the one described by the sequence of instructions. */
func (m *Machine) unify(node Node, formula basictypes.Form) []treetypes.MatchingSubstitutions {
	// The formula has to be a predicate.
	if reflect.TypeOf(formula) != reflect.TypeOf(basictypes.Pred{}) {
		return m.failure
	}

	// Transform the predicate to a function to make the tool work properly
	m.terms = []basictypes.Term{basictypes.MakeFun(formula.(basictypes.Pred).GetID(), formula.(basictypes.Pred).GetArgs())}

	return m.unifyAux(node)
}

/*** Unify aux ***/
func (m *Machine) unifyAux(node Node) []treetypes.MatchingSubstitutions {
	for _, instr := range node.value {

		// global.PrintDebug("UX", "------------------------")
		// global.PrintDebug("UX", fmt.Sprintf("Instr: %v", instr.ToString()))
		// global.PrintDebug("UX", fmt.Sprintf("Meta : %v", m.meta.ToString()))
		// global.PrintDebug("UX", fmt.Sprintf("Subst : %v", treetypes.SubstPairListToString(m.subst)))
		// global.PrintDebug("UX", fmt.Sprintf("Post : %v", treetypes.IntPairistToString(m.post)))
		// global.PrintDebug("UX", fmt.Sprintf("IsLocked : %v", m.isLocked()))
		// global.PrintDebug("UX", fmt.Sprintf("HasPushed : %v", m.hasPushed))
		// global.PrintDebug("UX", fmt.Sprintf("HasPoped : %v", m.hasPoped))
		// global.PrintDebug("UX", fmt.Sprintf("m.beginCount: %v - m.beginLock : %v", m.beginCount, m.beginLock))
		// global.PrintDebug("UX", fmt.Sprintf("m.TopLevelCount: %v - m.TopLevelTot : %v", m.topLevelCount, m.topLevelTot))
		// global.PrintDebug("UX", fmt.Sprintf("Cursor: %v/%v", m.q, len(m.terms)))
		// global.PrintDebug("UX", fmt.Sprintf("m.terms[cursor] : %v", m.terms[m.q].ToString()))
		// global.PrintDebug("UX", fmt.Sprintf("m.terms : %v", basictypes.TermListToString(m.terms)))

		switch instr := instr.(type) {
		case treetypes.Begin:
			m.begin()
		case treetypes.End:
			if errorOccured(m.end(instr.GetTerm())) {
				return m.failure
			}
		case treetypes.Right:
			if errorOccured(m.right()) {
				return m.failure
			}
		case treetypes.Down:
			m.down()
		case treetypes.Check:
			if errorOccured(m.check(instr.GetTerm())) {
				return m.failure
			}
		case treetypes.Push:
			m.push()
		case treetypes.Pop:
			if errorOccured(m.pop(instr.GetIndex())) {
				return m.failure
			}
		case treetypes.Put:
			m.put(instr)
		case treetypes.Compare:
			if errorOccured(m.compare(instr.GetIndexI(), instr.GetIndexJ())) {
				return m.failure
			}
		}
	}

	matching := []treetypes.MatchingSubstitutions{}

	if node.isLeaf() {
		global.PrintDebug("UX", fmt.Sprintf("Is leaf : %v", node.formulae.ToString()))
		for _, f := range node.formulae {
			if reflect.TypeOf(f) == reflect.TypeOf(basictypes.Pred{}) || reflect.TypeOf(f) == reflect.TypeOf(treetypes.TermForm{}) {
				// Rebuild final substitution between meta and subst
				final_subst := computeSubstitutions(treetypes.CopySubstPairList(m.subst), m.meta.Copy(), f.Copy())
				if !final_subst.Equals(treetypes.Failure()) {
					matching = append(matching, treetypes.MakeMatchingSubstitutions(f, final_subst))
				} else {
					global.PrintDebug("UX", "Error try substitute")
				}
			}
		}
	}
	matching = append(matching, m.launchChildrenSearch(node)...)
	return matching
}

/* Unify on goroutines - to manage die message */
/* TODO : remove when debug ok */
func (m *Machine) unifyAuxOnGoroutine(n Node, ch chan []treetypes.MatchingSubstitutions, father_id uint64) {
	global.PrintDebug("UA", fmt.Sprintf("Child of %v, Unify Aux", father_id))
	ch <- m.unifyAux(n)
	global.PrintDebug("UA", "Die")
}

/* Launches each child of the current node in a goroutine. */
func (m *Machine) launchChildrenSearch(node Node) []treetypes.MatchingSubstitutions {
	channels := []chan []treetypes.MatchingSubstitutions{}
	for range node.children {
		channels = append(channels, make(chan []treetypes.MatchingSubstitutions))
	}

	matching := []treetypes.MatchingSubstitutions{}
	for i, n := range node.children {
		ch := channels[i]
		st := basictypes.CopyTermList(m.terms)
		ip := treetypes.CopyIntPairList(m.post)
		sc := treetypes.CopySubstPairList(m.subst)

		copy := Machine{subst: sc, beginLock: m.beginLock, terms: st, meta: m.meta.Copy(), q: m.q, beginCount: m.beginCount, hasPushed: m.hasPushed, hasPoped: m.hasPoped, post: ip, topLevelTot: m.topLevelTot, topLevelCount: m.topLevelCount}

		go copy.unifyAuxOnGoroutine(*n, ch, global.GetGID())
		global.IncrGoRoutine(1)
	}

	cpt_remaining_children := len(channels)
	cases := make([]reflect.SelectCase, len(channels))
	for i, ch := range channels {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(ch)}
	}

	for cpt_remaining_children > 0 {
		_, value, _ := reflect.Select(cases)
		matching = append(matching, value.Interface().([]treetypes.MatchingSubstitutions)...)
		cpt_remaining_children--
	}

	return matching
}

/*** Machine's instructions ***/

/* Algorithm for the instruction Begin. */
func (m *Machine) begin() {
	m.lockIfMeta(m.beginCount)
	m.addBegin()
}

/* Algorithm for the instruction End. */
func (m *Machine) end(instrTerm basictypes.Term) Status {
	m.removeBegin()
	if errorOccured(m.tryUnlock(instrTerm)) || errorOccured(m.checkEnd()) {
		return Status(ERROR)
	}
	return Status(SUCCESS)
}

/* Algorithm for the instruction Right. */
func (m *Machine) right() Status {
	//global.PrintDebug("RIGHT", "RIGHT")
	if m.isUnlocked() {
		// global.PrintDebug("RIGHT", "IS UNLOCKED")
		m.q += 1
		if m.q > len(m.terms) {
			return Status(ERROR)
		}
		m.topLevelCount += 1
	}
	return Status(SUCCESS)
}

/* Algorithm for the instruction Down. */
func (m *Machine) down() {
	if m.isUnlocked() {
		m.terms = m.terms[m.q].(basictypes.Fun).GetArgs()
		m.q = 0

		// When down, add the number of args to topLevelCount and add 1 to topLevelCount because we go straigth forward inside without rigth
		m.topLevelTot += len(m.terms)
		m.topLevelCount += 1
	}
}

/* Algorithm for the instruction Check. */
func (m *Machine) check(instrTerm basictypes.Term) Status {
	if m.isUnlocked() && errorOccured(m.matchIndexes(m.terms[m.q], instrTerm)) {
		return Status(ERROR)
	}
	return Status(SUCCESS)
}

/* Algorithm for the instruction Push. */
func (m *Machine) push() {
	if m.isUnlocked() {
		m.post = append(m.post, treetypes.MakeIntPair(m.q+1, m.terms))
	} else {
		m.hasPushed = true
	}
}

/* Algorithm for the instruction Pop. */
func (m *Machine) pop(index int) Status {
	if m.isUnlocked() {
		m.q = m.post[index].GetQ()
		m.terms = m.post[index].GetTerms()
		if len(m.terms) <= m.q {
			return Status(ERROR)
		}
		m.post = removePost(treetypes.CopyIntPairList(m.post), index)

		m.topLevelCount += 1
	} else {
		m.hasPoped = true
	}

	return Status(SUCCESS)
}

/* Algorithm for the instruction Put. */
func (m *Machine) put(instr treetypes.Put) {
	if m.isUnlocked() {
		m.subst = append(m.subst, treetypes.MakeSubstPair(instr.GetIndex(), m.terms[m.q]))
	}
}

/* Algorithm for the instruction Compare. */
func (m *Machine) compare(i int, j int) Status {
	if m.isUnlocked() {
		i := treetypes.GetSubstAt(m.subst, i)
		j := treetypes.GetSubstAt(m.subst, j)

		if i != nil && j != nil {
			i = m.unwrapMeta(i)
			j = m.unwrapMeta(j)
			if !i.Equals(j) {
				return m.trySubstituteMeta(i, j)
			}
		}
		// else {
		//  Si la méta n'est pas dans subst ça veut dire que pendant le put la machine était lock, donc elle est à subst dans la partie droite d'une substitution
		// Ce genre de cas va se régler avec un eliminate
		// return Status(SUCCESS)
		// }
	}
	return Status(SUCCESS)
}
