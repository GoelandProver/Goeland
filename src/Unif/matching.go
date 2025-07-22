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
* This file provides the necessary methods for the unification algorithm.
**/

package Unif

import (
	"fmt"
	"reflect"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("unif")
}

/*** Unify ***/

/* Helper function to avoid using MakeMachine() outside of this file. */
func (n Node) Unify(formula AST.Form) (bool, []MatchingSubstitutions) {
	machine := makeMachine()
	res := machine.unify(n, formula)
	return !reflect.DeepEqual(machine.failure, res), res // return found, res
}

/* Tries to find the substitutions needed to unify the formulae with the one described by the sequence of instructions. */
func (m *Machine) unify(node Node, formula AST.Form) []MatchingSubstitutions {
	var result []MatchingSubstitutions
	// The formula has to be a predicate.
	switch formula_type := formula.(type) {
	case AST.Pred:
		// Transform the predicate to a function to make the tool work properly
		// FIXME: transform type arguments into terms to unify them
		m.terms = Lib.MkListV[AST.Term](AST.MakerFun(
			formula_type.GetID(),
			formula_type.GetTyArgs(),
			formula_type.GetArgs(),
		))
		result = m.unifyAux(node)

		if !reflect.DeepEqual(m.failure, result) {
			filteredResult := []MatchingSubstitutions{}
			for _, matchingSubst := range result {
				filteredResult = append(filteredResult,
					MakeMatchingSubstitutions(matchingSubst.GetForm(), matchingSubst.GetSubst()))
			}
			result = filteredResult
		}
	case TermForm:
		m.terms = Lib.MkListV(formula_type.GetTerm())
		result = m.unifyAux(node)
	default:
		result = m.failure
	}

	return result
}

/*** Unify aux ***/
func (m *Machine) unifyAux(node Node) []MatchingSubstitutions {
	for _, instr := range node.value {

		debug(Lib.MkLazy(func() string { return "------------------------" }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("Instr: %v", instr.ToString()) }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("Meta : %v", m.meta.ToString()) }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("Subst : %v", SubstPairListToString(m.subst)) }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("Post : %v", IntPairistToString(m.post)) }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("IsLocked : %v", m.isLocked()) }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("HasPushed : %v", m.hasPushed) }))
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("HasPoped : %v", m.hasPoped) }))
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"m.beginCount: %v - m.beginLock : %v",
					m.beginCount,
					m.beginLock)
			}),
		)
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"m.TopLevelCount: %v - m.TopLevelTot : %v",
					m.topLevelCount,
					m.topLevelTot)
			}),
		)
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("Cursor: %v/%v", m.q, m.terms.Len()) }),
		)
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("m.terms[cursor] : %v", m.terms.At(m.q).ToString()) }),
		)
		debug(
			Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"m.terms : %v",
					m.terms.ToString(AST.Term.ToString, ",", "{}"))
			}),
		)

		switch instr := instr.(type) {
		case Begin:
			m.begin()
		case End:
			if errorOccured(m.end(instr.GetTerm())) {
				return m.failure
			}
		case Right:
			if errorOccured(m.right()) {
				return m.failure
			}
		case Down:
			m.down()
		case Check:
			if errorOccured(m.check(instr.GetTerm())) {
				return m.failure
			}
		case Push:
			m.push()
		case Pop:
			if errorOccured(m.pop(instr.GetIndex())) {
				return m.failure
			}
		case Put:
			m.put(instr)
		case Compare:
			if errorOccured(m.compare(instr.GetIndexI(), instr.GetIndexJ())) {
				return m.failure
			}
		}
	}

	matching := []MatchingSubstitutions{}

	if node.isLeaf() {
		for _, f := range node.formulas.GetSlice() {
			if reflect.TypeOf(f) == reflect.TypeOf(AST.Pred{}) || reflect.TypeOf(f) == reflect.TypeOf(TermForm{}) {
				// Rebuild final substitution between meta and subst
				final_subst := computeSubstitutions(CopySubstPairList(m.subst), m.meta.Copy(), f.Copy())
				if !final_subst.Equals(Failure()) {
					matching = append(matching, MakeMatchingSubstitutions(f, final_subst))
				}
			}
		}
	}
	matching = append(matching, m.launchChildrenSearch(node)...)
	return matching
}

/* Unify on goroutines - to manage die message */
/* TODO : remove when debug ok */
func (m *Machine) unifyAuxOnGoroutine(n Node, ch chan []MatchingSubstitutions, father_id uint64) {
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Child of %v, Unify Aux", father_id) }),
	)
	subs := m.unifyAux(n)
	ch <- subs
	debug(Lib.MkLazy(func() string { return "Die" }))
}

/* Launches each child of the current node in a goroutine. */
func (m *Machine) launchChildrenSearch(node Node) []MatchingSubstitutions {
	channels := []chan []MatchingSubstitutions{}
	for _, c := range node.children {
		debug(
			Lib.MkLazy(func() string { return fmt.Sprintf("Next symbol = %v", c.getValue()[0].ToString()) }),
		)
		channels = append(channels, make(chan []MatchingSubstitutions))
	}

	matching := []MatchingSubstitutions{}
	for i, n := range node.children {
		ch := channels[i]
		st := m.terms.Copy(AST.Term.Copy)
		ip := CopyIntPairList(m.post)
		sc := CopySubstPairList(m.subst)

		copy := Machine{subst: sc, beginLock: m.beginLock, terms: st, meta: m.meta.Copy(), q: m.q, beginCount: m.beginCount, hasPushed: m.hasPushed, hasPoped: m.hasPoped, post: ip, topLevelTot: m.topLevelTot, topLevelCount: m.topLevelCount}

		go copy.unifyAuxOnGoroutine(*n, ch, Glob.GetGID())
		Glob.IncrGoRoutine(1)
	}

	cpt_remaining_children := len(channels)
	cases := make([]reflect.SelectCase, len(channels))
	for i, ch := range channels {
		cases[i] = reflect.SelectCase{Dir: reflect.SelectRecv, Chan: reflect.ValueOf(ch)}
	}

	for cpt_remaining_children > 0 {
		_, value, _ := reflect.Select(cases)
		matching = append(matching, value.Interface().([]MatchingSubstitutions)...)
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
func (m *Machine) end(instrTerm AST.Term) Status {
	m.removeBegin()
	if errorOccured(m.tryUnlock(instrTerm)) || errorOccured(m.checkEnd()) {
		return Status(ERROR)
	}
	return Status(SUCCESS)
}

/* Algorithm for the instruction Right. */
func (m *Machine) right() Status {
	if m.isUnlocked() {
		m.q += 1
		if m.q > m.terms.Len() {
			return Status(ERROR)
		}
		m.topLevelCount += 1
	}
	return Status(SUCCESS)
}

/* Algorithm for the instruction Down. */
func (m *Machine) down() {
	if m.isUnlocked() {
		m.terms = m.terms.At(m.q).(AST.Fun).GetArgs()
		m.q = 0

		// When down, add the number of args to topLevelCount and add 1 to topLevelCount because we go straigth forward inside without rigth
		m.topLevelTot += m.terms.Len()
		m.topLevelCount += 1
	}
}

/* Algorithm for the instruction Check. */
func (m *Machine) check(instrTerm AST.Term) Status {
	if m.isUnlocked() && errorOccured(m.matchIndexes(m.terms.At(m.q), instrTerm)) {
		return Status(ERROR)
	}
	return Status(SUCCESS)
}

/* Algorithm for the instruction Push. */
func (m *Machine) push() {
	if m.isUnlocked() {
		m.post = append(m.post, MakeIntPair(m.q+1, m.terms))
	} else {
		m.hasPushed = true
	}
}

/* Algorithm for the instruction Pop. */
func (m *Machine) pop(index int) Status {
	if m.isUnlocked() {
		m.q = m.post[index].GetQ()
		m.terms = m.post[index].GetTerms()
		if m.terms.Len() <= m.q {
			return Status(ERROR)
		}
		m.post = removePost(CopyIntPairList(m.post), index)

		m.topLevelCount += 1
	} else {
		m.hasPoped = true
	}

	return Status(SUCCESS)
}

/* Algorithm for the instruction Put. */
func (m *Machine) put(instr Put) {
	if m.isUnlocked() {
		m.subst = append(
			m.subst,
			MakeSubstPair(instr.GetIndex(), m.terms.At(m.q)),
		)
	}
}

/* Algorithm for the instruction Compare. */
func (m *Machine) compare(i int, j int) Status {
	if m.isUnlocked() {
		i := GetSubstAt(m.subst, i)
		j := GetSubstAt(m.subst, j)

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
