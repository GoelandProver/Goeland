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

func (c Constraint) getCType() int {
	return c.ctype
}
func (c Constraint) getTP() TermPair {
	return c.tp.Copy()
}
func (c *Constraint) setTP(tp TermPair) {
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
		return c.getTP().getT1().ToString() + " ≺ " + c.getTP().getT2().ToString()
	case EQ:
		return c.getTP().getT1().ToString() + " ≃ " + c.getTP().getT2().ToString()
	default:
		fmt.Printf("Constraint type unknown \n")
		return "Constraint type unknown"
	}
}

/* return true if the constraint is not violated, false otherwise  + true is the contraint is comparable, false otherwise + update c into the useful part of the constraint */
func (c *Constraint) checkLPO() (bool, bool) {
	global.PrintDebug("CLPO", fmt.Sprintf("Type PREC, cst : %v", c.toString()))
	res, is_comparable, new_t1, new_t2 := lpo.compare(c.getTP().getT1(), c.getTP().getT2())
	global.PrintDebug("CLPO", fmt.Sprintf("res : %v, is_comparable : %v", res, is_comparable))
	if is_comparable {
		switch c.getCType() {
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
	c.setTP(makeTermPair(new_t1, new_t2))
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
func (c *Constraint) applySubstitution(s treetypes.Substitutions) {
	for m, t := range s {
		new_t1 := complextypes.ApplySubstitutionOnTerm(m, t, c.getTP().getT1())
		new_t2 := complextypes.ApplySubstitutionOnTerm(m, t, c.getTP().getT2())
		c.setTP(makeTermPair(new_t1, new_t2))
	}
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

type ConstraintStruct struct {
	all_constraints ConstraintList
	subst           treetypes.Substitutions
	prec            ConstraintList
}

func (cs ConstraintStruct) getSubst() treetypes.Substitutions {
	return cs.subst.Copy()
}
func (cs ConstraintStruct) getPrec() ConstraintList {
	return cs.prec.Copy()
}
func (cs ConstraintStruct) getAllConstraints() ConstraintList {
	return cs.all_constraints
}
func (cs *ConstraintStruct) setSubst(s treetypes.Substitutions) {
	cs.subst = s.Copy()
}
func (cs *ConstraintStruct) setPrec(cl ConstraintList) {
	cs.prec = cl.Copy()
}
func (cs *ConstraintStruct) setAllConstraits(cl ConstraintList) {
	cs.all_constraints = cl.Copy()
}
func (cs *ConstraintStruct) addPrec(c Constraint) {
	cs.setPrec(append(cs.getPrec(), c))
}
func (cs *ConstraintStruct) addAllConstraints(c Constraint) {
	cs.setAllConstraits(append(cs.getAllConstraints(), c))
}
func (cs ConstraintStruct) isEmpty() bool {
	return cs.getSubst().IsEmpty() && cs.getPrec().isEmpty() && cs.getAllConstraints().isEmpty()
}
func (cs ConstraintStruct) copy() ConstraintStruct {
	return makeConstraintStruct(cs.getAllConstraints(), cs.getSubst(), cs.getPrec())
}
func (cs ConstraintStruct) toString() string {
	return "EQ subst : " + cs.getSubst().ToString() + " - PREC List : " + cs.getPrec().toString() + " - All cst : " + cs.getAllConstraints().toString()
}
func makeEmptyConstaintStruct() ConstraintStruct {
	return ConstraintStruct{makeEmptyConstaintsList(), treetypes.MakeEmptySubstitution(), makeEmptyConstaintsList()}
}
func makeConstraintStruct(ac ConstraintList, s treetypes.Substitutions, p ConstraintList) ConstraintStruct {
	res := makeEmptyConstaintStruct()
	res.setAllConstraits(ac)
	res.setSubst(s)
	res.setPrec(p)
	return res
}

/* Append relevant constraint if its consistant with cl and LPO */
func (cs *ConstraintStruct) appendIfConsistant(c Constraint) bool {
	// global.PrintDebug("AIC", fmt.Sprintf("CL : %v - c : %v", cl.ToString(), c.ToString()))
	if !cs.getAllConstraints().contains(c) {
		if is_consistant := cs.isConsistantWith(c); is_consistant {
			global.PrintDebug("AIC", fmt.Sprintf("%v is consistant", c.toString()))
			global.PrintDebug("AIC", fmt.Sprintf("CL at the end : %v", cs.toString()))
			return true
		} else {
			global.PrintDebug("AIC", fmt.Sprintf("%v is not consistant", c.toString()))
			global.PrintDebug("AIC", fmt.Sprintf("CL at the end : %v", cs.toString()))
			return false
		}
	}
	return true
}

/* Check if a constraint is consistant with LPO and constraint list + update cl */
func (cs *ConstraintStruct) isConsistantWith(c Constraint) bool {
	global.PrintDebug("ICW", fmt.Sprintf("Constraint : %v", c.toString()))
	switch c.getCType() {
	case PREC:
		// Apply subst and check LPO
		new_c := c.copy()
		new_c.applySubstitution(cs.getSubst())
		respect_lpo, is_comparable := new_c.checkLPO()
		global.PrintDebug("ICW", fmt.Sprintf("Is_comparable : %v, respec_lpo : %v", is_comparable, respect_lpo))
		if is_comparable {
			return respect_lpo
		}

		// If not comparale, check conflict with other constraints
		new_prec := append(cs.getPrec().Copy(), c)
		if new_prec.checkConstraintList() {
			cs.setPrec(new_prec)
			cs.addAllConstraints(c)
			return true
		} else {
			return false
		}

	case EQ:
		// Check if the EQ constraint is unifiable
		subst := treesearch.AddUnification(c.getTP().t1.Copy(), c.getTP().t2.Copy(), treetypes.MakeEmptySubstitution())
		global.PrintDebug("ICW", fmt.Sprintf("Candidate subst : %v", subst.ToString()))
		if subst.Equals(treetypes.Failure()) {
			return false
		}
		if subst.IsEmpty() {
			return true
		}

		// Simplify it
		respect_lpo, is_comparable := c.checkLPO()
		global.PrintDebug("ICW", fmt.Sprintf("Is_comparable : %v, respec_lpo : %v", is_comparable, respect_lpo))
		if is_comparable {
			return respect_lpo
		}

		// Add it to subst and check unification consistency
		subst_all := treesearch.AddUnification(c.getTP().t1.Copy(), c.getTP().t2.Copy(), cs.getSubst())
		global.PrintDebug("ICW", fmt.Sprintf("Subst all : %v", subst_all.ToString()))
		if subst_all.Equals(treetypes.Failure()) {
			return false
		}
		if subst_all.IsEmpty() {
			return true
		}

		// Apply nw global subst to prec
		global.PrintDebug("ICW", "Check if consistant with the whole cl")
		if !cs.getPrec().isConsistantWithSubst(subst_all) {
			global.PrintDebug("ICW", "Not consistant with the whole cl")
			return false
		}

		// If all is ok, append if
		cs.setSubst(subst_all)
		cs.addAllConstraints(c)
		return true

	default:
		global.PrintDebug("ICW", "Constraint type unknown")
		return false
	}
}

// TODO : append if not contains
