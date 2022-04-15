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
/******************/
/* constraints.go */
/******************/
/**
* This file contains the type definition of the contraints struct.
**/

package main

import (
	"fmt"
	"sort"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
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

func (c Constraint) GetCType() int {
	return c.ctype
}
func (c Constraint) GetTP() TermPair {
	return c.tp.Copy()
}
func (c *Constraint) SetTP(tp TermPair) {
	c.tp = tp
}
func (c Constraint) Copy() Constraint {
	return MakeConstraint(c.GetCType(), c.GetTP())
}
func (c Constraint) Equals(c2 Constraint) bool {
	return ((c.GetCType() == c2.GetCType()) && c.GetTP().Equals(c2.GetTP()))
}
func (c Constraint) ToString() string {
	switch c.GetCType() {
	case PREC:
		return c.GetTP().GetT1().ToString() + " ≺ " + c.GetTP().GetT2().ToString()
	case EQ:
		return c.GetTP().GetT1().ToString() + " ≃ " + c.GetTP().GetT2().ToString()
	default:
		fmt.Printf("Constraint type unknown \n")
		return "Constraint type unknown"
	}
}

/* return true if the constraint is not violated, false otherwise  + true is the contraint is comparable, false otherwise + update c into the useful part of the constraint */
func (c *Constraint) checkLPO() (bool, bool) {
	global.PrintDebug("CLPO", fmt.Sprintf("Type PREC, cst : %v", c.ToString()))
	res, is_comparable, new_t1, new_t2 := lpo.compare(c.GetTP().GetT1(), c.GetTP().GetT2())
	global.PrintDebug("CLPO", fmt.Sprintf("res : %v, is_comparable : %v", res, is_comparable))
	if is_comparable {
		switch c.GetCType() {
		case PREC:
			return res > 0, true
		case EQ:
			return res == 0, true
		default:
			fmt.Printf("Constraint type not valid \n")
			return false, true
		}
	}
	global.PrintDebug("CLPO", fmt.Sprintf("new_t1 : %v, new_t2 : %v", new_t1.ToString(), new_t2.ToString()))
	c.SetTP(MakeTermPair(new_t1, new_t2))
	return true, false
}

/** checkConstraintList
* Take a constraint list metavariable < fun or fun < metavariable
* create a map metavariable : list_eq, list_inf, list_sup
* check intersection is empty
**/
func (cl ConstraintList) checkConstraintList() bool {
	map_constraintes := make(map[string][][]basictypes.Term)
	for _, c := range cl {
		global.PrintDebug("CCL", fmt.Sprintf("Constraint : %v", c.ToString()))
		switch c.GetCType() {
		case PREC:
			if !appendToMapAndCheck(c.GetTP().GetT1().ToString(), c.GetTP().GetT2(), &map_constraintes, 1, 2) {
				return false
			}
			if !appendToMapAndCheck(c.GetTP().GetT2().ToString(), c.GetTP().GetT1(), &map_constraintes, 2, 2) {
				return false
			}
		case EQ:
			if !appendToMapAndCheck(c.GetTP().GetT1().ToString(), c.GetTP().GetT2(), &map_constraintes, 0, 2) {
				return false
			}
			if !appendToMapAndCheck(c.GetTP().GetT2().ToString(), c.GetTP().GetT1(), &map_constraintes, 0, 2) {
				return false
			}
		}

	}
	return true
}

/* append to the map and check if the new element is not in the other list */
func appendToMapAndCheck(m string, t basictypes.Term, map_constraintes *map[string][][]basictypes.Term, index_append, index_max_other_lists int) bool {
	if _, ok := (*map_constraintes)[m]; !ok {
		(*map_constraintes)[m] = make([][]basictypes.Term, index_max_other_lists+1)
		for i := 0; i <= index_max_other_lists; i++ {
			(*map_constraintes)[m][i] = []basictypes.Term{}
		}
	}
	(*map_constraintes)[m][index_append] = append((*map_constraintes)[m][index_append], t)
	// global.PrintDebug("ATMAC", fmt.Sprintf("%v", *map_constraintes))

	for i := 0; i <= index_max_other_lists; i++ {

		// global.PrintDebug("ATMAC", fmt.Sprintf("Term : %v - in : %v", m, basictypes.TermListToString((*map_constraintes)[m][i])))
		if i != index_append && basictypes.ContainsTermList(t, (*map_constraintes)[m][i]) {
			// global.PrintDebug("ATMAC", "Term found in list")
			return false
		}
	}
	return true
}

func MakeConstraint(i int, tp TermPair) Constraint {
	return Constraint{i, tp.Copy()}
}

type ConstraintList []Constraint

/*Sort */
func (cl ConstraintList) Len() int      { return len(cl) }
func (cl ConstraintList) Swap(i, j int) { cl[i], cl[j] = cl[j], cl[i] }
func (cl ConstraintList) Less(i, j int) bool {
	return (cl[i].ToString() < cl[j].ToString())
}

func (l1 ConstraintList) Equals(l2 ConstraintList) bool {
	if len(l1) != len(l2) {
		return false
	} else {
		l1_sorted := l1.Copy()
		sort.Sort(l1_sorted)

		l2_sorted := l2.Copy()
		sort.Sort(l2_sorted)

		for i := range l1_sorted {
			if !l1_sorted[i].Equals(l2_sorted[i]) {
				return false
			}
		}
	}
	return true
}

func (cl ConstraintList) ToString() string {
	res := "{"
	for i, c := range cl {
		res += c.ToString()
		if i < len(cl)-1 {
			res += (", ")
		}
	}
	res += "}"
	return res
}

func (cl ConstraintList) Copy() ConstraintList {
	res := MakeEmptyConstaintsList()
	for _, c := range cl {
		res = append(res, c.Copy())
	}
	return res
}

func (cl ConstraintList) Contains(c Constraint) bool {
	for _, cst := range cl {
		if c.Equals(cst) {
			return true
		}
	}
	return false
}

/* Append relevant constraint if its consistant with cl and LPO */
func (cl *ConstraintList) AppendIfConsistant(c Constraint) bool {
	// global.PrintDebug("AIC", fmt.Sprintf("CL : %v - c : %v", cl.ToString(), c.ToString()))
	if !cl.Contains(c) {
		if is_consistant := cl.isConsistantWith(c); is_consistant {
			global.PrintDebug("AIC", fmt.Sprintf("%v is consistant", c.ToString()))
			global.PrintDebug("AIC", fmt.Sprintf("CL at the end : %v", cl.ToString()))
			return true
		} else {
			global.PrintDebug("AIC", fmt.Sprintf("%v is not consistant", c.ToString()))
			global.PrintDebug("AIC", fmt.Sprintf("CL at the end : %v", cl.ToString()))
			return false
		}
	}

	return true
}

/* Check if a constraint is consistant with LPO and constraint list + update cl */
func (cl *ConstraintList) isConsistantWith(c Constraint) bool {
	global.PrintDebug("ICW", fmt.Sprintf("Constraint : %v", c.ToString()))
	switch c.GetCType() {
	case PREC:
		respect_lpo, is_comparable := c.checkLPO()
		global.PrintDebug("ICW", fmt.Sprintf("Is_comparable : %v, respec_lpo : %v", is_comparable, respect_lpo))
		if is_comparable {
			return respect_lpo
		} else {
			new_cl := append((*cl).Copy(), c)
			if new_cl.checkConstraintList() {
				*cl = new_cl
				return true
			} else {
				return false
			}
		}
	case EQ:
		// Check if the EQ constraint is unifiable
		subst := treesearch.AddUnification(c.GetTP().t1.Copy(), c.GetTP().t2.Copy(), treetypes.MakeEmptySubstitution())
		if subst.Equals(treetypes.Failure()) {
			return false
		}
		if !subst.IsEmpty() {
			// Simplify it
			respect_lpo, is_comparable := c.checkLPO()
			global.PrintDebug("ICW", fmt.Sprintf("Is_comparable : %v, respec_lpo : %v", is_comparable, respect_lpo))
			if !is_comparable {
				// Generate a new subst with all the other eq constraints
				new_subst := cl.computeGlobalSubst(subst)
				global.PrintDebug("ICW", fmt.Sprintf("Compute global subst : %v", new_subst.ToString()))
				if new_subst.Equals(treetypes.Failure()) {
					global.PrintDebug("ICW", "Global subst return failure")
					return false
				}
				// Apply the subst to the all the constraint and check
				global.PrintDebug("ICW", "Check if consistant with the whole cl")
				if !cl.isConsistantWithSubst(new_subst) {
					global.PrintDebug("ICW", "Not consistant with the whole cl")
					return false
				}

				// Append the constraint to cl if there is no x = a and x < a
				new_cl := append((*cl).Copy(), c)
				global.PrintDebug("ICW", "Check intersection with other constraints")
				if new_cl.checkConstraintList() {
					global.PrintDebug("ICW", "Ok, add it to cl")
					*cl = new_cl
					return true
				} else {
					global.PrintDebug("ICW", "Intersection not null")
					return false
				}
			} else {
				return respect_lpo
			}
		}
		return true
	}
	return true
}

/* Compute a global substitution from a list of constraints and a new constraint */
func (cl ConstraintList) computeGlobalSubst(s treetypes.Substitutions) treetypes.Substitutions {
	subst_res := s.Copy()
	for _, c := range cl {
		if c.GetCType() == EQ {
			subst_res = treesearch.AddUnification(c.GetTP().GetT1(), c.GetTP().GetT2(), subst_res)
		}
	}
	return subst_res
}

/* Check if a constraint is consistant with LPO and constraint list */
func (cl ConstraintList) isConsistantWithSubst(s treetypes.Substitutions) bool {
	global.PrintDebug("ICWS", fmt.Sprintf("Is consistant with the subst : %v", s.ToString()))
	for _, c_element := range cl {
		c := c_element.Copy()
		global.PrintDebug("ICWS", fmt.Sprintf("Constraint : %v", c.ToString()))
		c.applySubstitution(s)
		global.PrintDebug("ICWS", fmt.Sprintf("Constraint after apply subst : %v", c.ToString()))
		respect_lpo, is_comparable := c.checkLPO()
		global.PrintDebug("ICWS", fmt.Sprintf("Is comparable : %v - respect lpo : %v: ", is_comparable, respect_lpo))
		if is_comparable && !respect_lpo {
			return false
		}
	}
	return true
}

func (c *Constraint) applySubstitution(s treetypes.Substitutions) {
	for m, t := range s {
		new_t1 := complextypes.ApplySubstitutionOnTerm(m, t, c.GetTP().GetT1())
		new_t2 := complextypes.ApplySubstitutionOnTerm(m, t, c.GetTP().GetT2())
		c.SetTP(MakeTermPair(new_t1, new_t2))
	}
}

func MakeEmptyConstaintsList() ConstraintList {
	return ConstraintList{}
}
