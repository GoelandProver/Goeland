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
/* Machine.go */
/**************/
/**
* This file provides the necessary structures to operate the unification algorithm.
**/

package treesearch

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* Describes the success or failure of the execution of a machine instruction. */
type Status int

const (
	BAD_INDEX = -1
	ERROR     = iota
	SUCCESS   = iota
)

/* Keeps all the necessary elements to operate the algorithm. */
/**
* meta : tue current substitution (meta, term)
* subst : (an int, a term)
**/
type Machine struct {
	q             int
	beginCount    int
	beginLock     int
	hasPushed     bool
	hasPoped      bool
	post          []treetypes.IntPair
	subst         []treetypes.SubstPair
	terms         []basictypes.Term
	meta          treetypes.Substitutions
	failure       []treetypes.MatchingSubstitutions
	topLevelTot   int
	topLevelCount int
}

/* Makes a Machine object with the default needed values. */
func makeMachine() Machine {
	m := Machine{
		q:             0,
		beginCount:    0,
		beginLock:     BAD_INDEX,
		hasPushed:     false,
		hasPoped:      false,
		post:          []treetypes.IntPair{},
		subst:         []treetypes.SubstPair{},
		terms:         []basictypes.Term{},
		meta:          treetypes.Substitutions{},
		failure:       []treetypes.MatchingSubstitutions{},
		topLevelTot:   0,
		topLevelCount: 0,
	}

	return m
}

/* Checks if the status is an error. */
func errorOccured(s Status) bool {
	return s == ERROR
}

/*** CURSOR ***/
/* Get the Meta object of the current formulae term. */
func (m *Machine) getCurrentMeta() basictypes.Meta {
	return m.terms[m.q].Copy().ToMeta()
}

/* While term is a metavariable, replace it by its substitution in the map of substitutions (meta). */
func (m *Machine) unwrapMeta(term basictypes.Term) basictypes.Term {
	deja_vu := map[basictypes.Term]bool{}
	for term.IsMeta() {
		val, ok := m.meta[term.ToMeta()]
		if !ok || deja_vu[term] {
			break
		}

		deja_vu[term] = true
		term = val.Copy()
	}
	return term
}

/*** BEGIN ***/
/* Adds one to the counter of the nested instructions block. */
func (m *Machine) addBegin() {
	m.beginCount += 1
}

/* Removes one to the counter of the nested instructions block. */
func (m *Machine) removeBegin() {
	m.beginCount -= 1
}

/*** LOCK and UNLOCK ***/
/* Checks if the current Machine instructions have to be locked (should be true when it tries to match a metavariable with a function). */
func (m *Machine) isLocked() bool {
	return m.beginLock != BAD_INDEX
}

/* Utility method. Only applies not() to IsLocked(). */
func (m *Machine) isUnlocked() bool {
	return !m.isLocked()
}

/* Indicates to the machine that the last block which substitutes to a metavariable has been reached. */
func (m *Machine) unlockMachine() {
	m.beginLock = BAD_INDEX
}

/* Locks the machine to the given count of nested instructions block if the current term is a metavariable. */
func (m *Machine) lockIfMeta(count int) {
	if m.terms[m.q].IsMeta() && !m.isLocked() {
		m.beginLock = count
	}
}

/* Resets hasPoped and hasPushed of the machine, and makes the cursor move to the right of the current position. */
func (m *Machine) lockedRight() Status {
	if m.hasPushed && m.hasPoped {
		m.hasPoped, m.hasPushed = false, false
		if m.q < len(m.terms)-1 {
			if errorOccured(m.right()) {
				return Status(ERROR)
			}
		}
	}
	return Status(SUCCESS)
}

/* If the machine is in locked mode, and the beginCount corresponds to the beginLock, unlocks the machine and adds the substitution found for the instructions block to the meta. */
func (m *Machine) tryUnlock(instrTerm basictypes.Term) Status {
	if m.isLocked() && m.beginCount == m.beginLock {
		m.unlockMachine()
		if errorOccured(m.trySubstituteMeta(m.getCurrentMeta(), instrTerm.Copy())) {
			global.PrintDebug("TU", "ERROR in ATTM")
			return Status(ERROR)
		}
		if errorOccured(m.lockedRight()) {
			global.PrintDebug("TU", "ERROR in LR")
			return Status(ERROR)
		}
	}
	return Status(SUCCESS)
}

/*** END ***/
/* Checks if the last End instruction corresponds to the end of the formulae entered at the start of the unification. */
func (m *Machine) checkEnd() Status {
	if m.beginCount == 0 && m.topLevelCount != m.topLevelTot {
		return Status(ERROR)
	}
	return Status(SUCCESS)
}

/*** POST ***/
/* Remove element from post */
func removePost(slice []treetypes.IntPair, s int) []treetypes.IntPair {
	res := []treetypes.IntPair{}
	if len(slice) > 1 {
		res = append(slice[:s], slice[s+1:]...)
	}
	return res
}

/*** Indexes Match ***/
/* Checks if the indexes of term1 and term2 match. */
func (m *Machine) doIndexMatch(term1, term2 basictypes.Term) bool {
	return (term1.GetIndex() == term2.GetIndex())
}

/* Checks if the indexes of t and instrTerm match. If t is a meta, it will try to unwrap t to the end, and check if the indexes of the unwrapped t and instrTerm match. */
func (m *Machine) matchIndexes(t basictypes.Term, instrTerm basictypes.Term) Status {
	if t.IsMeta() {
		if errorOccured(m.checkMeta(t.ToMeta(), instrTerm.Copy())) {
			return Status(ERROR)
		}
	} else if !m.doIndexMatch(t, instrTerm) {
		return Status(ERROR)
	}

	return Status(SUCCESS)
}

/* Checks if the substitution of the metavariable t matches the index of instrTerm. */
func (m *Machine) checkMeta(t basictypes.Meta, instrTerm basictypes.Term) Status {
	if treetypes.HasSubst(m.meta, t) {
		unwrapped := m.unwrapMeta(m.meta[t])
		if !unwrapped.IsMeta() && !m.doIndexMatch(unwrapped, instrTerm) {
			return Status(ERROR)
		}
	}

	return Status(SUCCESS)
}
