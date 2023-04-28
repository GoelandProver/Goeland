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
/***********************/
/* constraints_type.go */
/***********************/
/**
* This file contains the type definition of a contraint.
**/

package equality

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

const (
	PREC int = iota
	EQ
)

type Constraint struct {
	ctype int
	tp    TermPair
}

func (c Constraint) getCType() int {
	return c.ctype
}
func (c Constraint) getTP() TermPair {
	return c.tp.copy()
}
func (c *Constraint) setTP(tp TermPair) {
	c.tp = tp
}
func (c Constraint) copy() Constraint {
	return MakeConstraint(c.getCType(), c.getTP())
}
func (c Constraint) equals(c2 Constraint) bool {
	return ((c.getCType() == c2.getCType()) && c.getTP().equals(c2.getTP()))
}
func (c Constraint) toString() string {
	switch c.getCType() {
	case PREC:
		return c.getTP().getT1().ToString() + " ≺ " + c.getTP().getT2().ToString()
	case EQ:
		return c.getTP().getT1().ToString() + " ≃ " + c.getTP().getT2().ToString()
	default:
		global.PrintError("CT", "Constraint type unknown")
		return "Constraint type unknown"
	}
}

func MakeConstraint(i int, tp TermPair) Constraint {
	return Constraint{i, tp.copy()}
}

func (c *Constraint) applySubstitution(s treetypes.Substitutions) {
	for _, subst := range s {
		m, t := subst.Get()
		new_t1 := complextypes.ApplySubstitutionOnTerm(m, t, c.getTP().getT1())
		new_t2 := complextypes.ApplySubstitutionOnTerm(m, t, c.getTP().getT2())
		c.setTP(makeTermPair(new_t1, new_t2))
	}
}

/* return true if the constraint is not violated, false otherwise  + true is the contraint is comparable, false otherwise + update c into the useful part of the constraint */
func (c *Constraint) checkLPO() (bool, bool) {
	global.PrintDebug("CLPO", fmt.Sprintf("Type %v, cst : %v", c.getCType(), c.toString()))
	cs := lpo.compare(c.getTP().getT1(), c.getTP().getT2())
	global.PrintDebug("CLPO", fmt.Sprintf("res : %v, is_comparable : %v", cs.order, cs.is_comparable))
	if cs.is_comparable {
		switch c.getCType() {
		case PREC:
			return cs.order > 0, true
		case EQ:
			return cs.order == 0, true
		default:
			global.PrintError("CT", "Constraint type not valid")
			return false, true
		}
	}
	//global.PrintDebug("CLPO", fmt.Sprintf("new_t1 : %v, new_t2 : %v", cs.new_t1.ToString(), cs.new_t2.ToString()))
	// if (!c.getTP().getT1().Equals(cs.new_t1)) || (!c.getTP().getT2().Equals(cs.new_t2)) {
	//	global.PrintDebug("CLPO", fmt.Sprintf("Compare LPO changed terms : %v and %v became : %v and %v", c.getTP().getT1().ToString(), c.getTP().getT2().ToString(), cs.new_t1.ToString(), cs.new_t2.ToString()))
	// }
	//c.setTP(makeTermPair(cs.new_t1, cs.new_t2))
	return true, false
}

/* append to the map and check if the new element is not in the other list */
func appendToMapAndCheck(m string, t basictypes.Term, map_constraintes *map[string][]basictypes.TermList, index_append, index_max_other_lists int) bool {
	if _, ok := (*map_constraintes)[m]; !ok {
		(*map_constraintes)[m] = make([]basictypes.TermList, index_max_other_lists+1)
		for i := 0; i <= index_max_other_lists; i++ {
			(*map_constraintes)[m][i] = basictypes.MakeEmptyTermList()
		}
	}
	(*map_constraintes)[m][index_append] = append((*map_constraintes)[m][index_append], t)
	// global.PrintDebug("ATMAC", fmt.Sprintf("%v", *map_constraintes))

	for i := 0; i <= index_max_other_lists; i++ {

		// global.PrintDebug("ATMAC", fmt.Sprintf("Term : %v - in : %v", m, basictypes.TermListToString((*map_constraintes)[m][i])))
		if i != index_append && (*map_constraintes)[m][i].Contains(t) {
			// global.PrintDebug("ATMAC", "Term found in list")
			return false
		}
	}
	return true
}
