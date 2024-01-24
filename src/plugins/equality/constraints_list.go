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
* This file contains the type definition of the contraint list.
**/

package equality

import (
	"fmt"
	"sort"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type ConstraintList []Constraint

/*Sort */
func (cl ConstraintList) Len() int      { return len(cl) }
func (cl ConstraintList) Swap(i, j int) { cl[i], cl[j] = cl[j], cl[i] }
func (cl ConstraintList) Less(i, j int) bool {
	return (cl[i].toString() < cl[j].toString())
}
func (l1 ConstraintList) equals(l2 ConstraintList) bool {
	if len(l1) != len(l2) {
		return false
	} else {
		l1_sorted := l1.Copy()
		sort.Sort(l1_sorted)

		l2_sorted := l2.Copy()
		sort.Sort(l2_sorted)

		for i := range l1_sorted {
			if !l1_sorted[i].equals(l2_sorted[i]) {
				return false
			}
		}
	}
	return true
}
func (cl ConstraintList) toString() string {
	res := "{"
	for i, c := range cl {
		res += c.toString()
		if i < len(cl)-1 {
			res += (", ")
		}
	}
	res += "}"
	return res
}
func (cl ConstraintList) Copy() ConstraintList {
	res := makeEmptyConstaintsList()
	for _, c := range cl {
		res = append(res, c.copy())
	}
	return res
}
func (cl ConstraintList) contains(c Constraint) bool {
	for _, cst := range cl {
		if c.equals(cst) {
			return true
		}
	}
	return false
}
func (cl ConstraintList) isEmpty() bool {
	return len(cl) == 0
}
func makeEmptyConstaintsList() ConstraintList {
	return ConstraintList{}
}

/* Check if a constraint is consistant with LPO and constraint list */
func (cl ConstraintList) isConsistantWithSubst(s treetypes.Substitutions) bool {
	global.PrintDebug("ICWS", fmt.Sprintf("Is consistant with the subst : %v", s.ToString()))
	for _, c_element := range cl {
		c := c_element.copy()
		global.PrintDebug("ICWS", fmt.Sprintf("Constraint : %v", c.toString()))
		c.applySubstitution(s)
		global.PrintDebug("ICWS", fmt.Sprintf("Constraint after apply subst : %v", c.toString()))
		respect_lpo, is_comparable := c.checkLPO()
		global.PrintDebug("ICWS", fmt.Sprintf("Is comparable : %v - respect lpo : %v: ", is_comparable, respect_lpo))
		if is_comparable && !respect_lpo {
			return false
		}
	}
	return true
}

/** checkConstraintList
* Take a constraint list metavariable < fun or fun < metavariable
* create a map metavariable : list_eq, list_inf, list_sup
* check intersection is empty
**/
func (cl ConstraintList) checkConstraintList() bool {
	map_constraintes := make(map[string][]basictypes.TermList)
	for _, c := range cl {
		global.PrintDebug("CCL", fmt.Sprintf("Constraint : %v", c.toString()))
		switch c.getCType() {
		case PREC:
			if !appendToMapAndCheck(c.getTP().getT1().ToString(), c.getTP().getT2(), &map_constraintes, 1, 2) {
				return false
			}
			if !appendToMapAndCheck(c.getTP().getT2().ToString(), c.getTP().getT1(), &map_constraintes, 2, 2) {
				return false
			}
		case EQ:
			if !appendToMapAndCheck(c.getTP().getT1().ToString(), c.getTP().getT2(), &map_constraintes, 0, 2) {
				return false
			}
			if !appendToMapAndCheck(c.getTP().getT2().ToString(), c.getTP().getT1(), &map_constraintes, 0, 2) {
				return false
			}
		}

	}
	return true
}
