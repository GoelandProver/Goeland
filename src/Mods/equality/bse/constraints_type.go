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
* This file contains the type definition of a constraint.
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/equality/eqStruct"
	"github.com/GoelandProver/Goeland/Unif"
)

const (
	PREC int = iota
	EQ
)

type Constraint struct {
	ctype int
	tp    eqStruct.TermPair
}

func (c Constraint) getCType() int {
	return c.ctype
}
func (c Constraint) getTP() eqStruct.TermPair {
	return c.tp.Copy()
}
func (c *Constraint) setTP(tp eqStruct.TermPair) {
	c.tp = tp
}
func (c Constraint) copy() Constraint {
	return MakeConstraint(c.getCType(), c.getTP())
}
func (c Constraint) equals(c2 Constraint) bool {
	return ((c.getCType() == c2.getCType()) && c.getTP().Equals(c2.getTP()))
}
func (c Constraint) toString() string {
	switch c.getCType() {
	case PREC:
		return c.getTP().GetT1().ToString() + " ≺ " + c.getTP().GetT2().ToString()
	case EQ:
		return c.getTP().GetT1().ToString() + " ≃ " + c.getTP().GetT2().ToString()
	default:
		Glob.PrintError("CT", "Constraint type unknown")
		return "Constraint type unknown"
	}
}

func MakeConstraint(i int, tp eqStruct.TermPair) Constraint {
	return Constraint{i, tp.Copy()}
}

func (c *Constraint) applySubstitution(s Unif.Substitutions) {
	for _, subst := range s {
		m, t := subst.Get()
		new_t1 := Core.ApplySubstitutionOnTerm(m, t, c.getTP().GetT1())
		new_t2 := Core.ApplySubstitutionOnTerm(m, t, c.getTP().GetT2())
		c.setTP(eqStruct.MakeTermPair(new_t1, new_t2))
	}
}

/* return true if the constraint is not violated, false otherwise  + true is the contraint is comparable, false otherwise + update c into the useful part of the constraint */
func (c *Constraint) checkLPO() (bool, bool) {
	Glob.PrintDebug("CLPO", fmt.Sprintf("Type %v, cst : %v", c.getCType(), c.toString()))
	cs := compareLPO(c.getTP().GetT1(), c.getTP().GetT2())
	Glob.PrintDebug("CLPO", fmt.Sprintf("res : %v, is_comparable : %v", cs.order, cs.is_comparable))

	if cs.is_comparable {
		switch c.getCType() {
		case PREC:
			return cs.order > 0, true
		case EQ:
			return cs.order == 0, true
		default:
			Glob.PrintError("CT", "Constraint type not valid")
			return false, true
		}
	}

	if cs.new_t1 != nil && cs.new_t2 != nil {
		c.setTP(eqStruct.MakeTermPair(cs.new_t1, cs.new_t2))
	}

	return true, false
}

/* append to the map and check if the new element is not in the other list */
func appendToMapAndCheck(
	m string,
	t AST.Term,
	map_constraintes *map[string][]Lib.List[AST.Term],
	index_append,
	index_max_other_lists int,
) bool {
	if _, ok := (*map_constraintes)[m]; !ok {
		(*map_constraintes)[m] = make([]Lib.List[AST.Term], index_max_other_lists+1)
		for i := 0; i <= index_max_other_lists; i++ {
			(*map_constraintes)[m][i] = Lib.MkList[AST.Term](0)
		}
	}

	(*map_constraintes)[m][index_append].Append(t)

	for i := 0; i <= index_max_other_lists; i++ {
		if i != index_append &&
			(*map_constraintes)[m][i].Contains(t, AST.TermEquals) {
			return false
		}
	}
	return true
}
