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
		return c.GetTP().GetT1().ToString() + " ≻ " + c.GetTP().GetT2().ToString()
	case EQ:
		return c.GetTP().GetT1().ToString() + " ≃ " + c.GetTP().GetT2().ToString()
	default:
		fmt.Printf("Constraint type unknown \n")
		return "Constraint type unknown"
	}
}

/* return true if the constraint is not violated, false totherwise  + the useful part of the constraint */
func (c *Constraint) checkLPO(lpo LPO) (bool, bool) {
	if c.GetCType() == PREC {
		res, is_comparable, new_t1, new_t2 := lpo.Compare(c.GetTP().GetT1(), c.GetTP().GetT2())
		if !is_comparable {
			c.SetTP(MakeTermPair(new_t1, new_t2))
			return true, true
		} else {
			return res > 0, false
		}
	} else {
		fmt.Printf("Constraint type not valid \n")
		return false, false
	}
}

/** checkConstraintList
* Take a constraint list metavariable < fun or fun < metavariable
* create a map metavariable : list_inf, list_sup
* check intersection is empty
**/
func (c Constraint) checkConstraintList(cl ConstraintList) bool {
	map_constraintes := make(map[basictypes.Meta][][]basictypes.Term)
	for _, c := range cl {
		if c.GetCType() != PREC {
			fmt.Printf("Bad constraint type in checkConstraintList")
			return false
		}

		if c_t1_type, ok := c.GetTP().GetT1().(basictypes.Meta); ok {
			// Case meta < fun : add to fisrt list
			if !appendToMapAndCheck(c_t1_type, c.GetTP().GetT2(), &map_constraintes, 0, 1) {
				return false
			}
		} else if c_t2_type, ok := c.GetTP().GetT2().(basictypes.Meta); ok {
			// Case fun < meta : add to second list
			if !appendToMapAndCheck(c_t2_type, c.GetTP().GetT1(), &map_constraintes, 1, 0) {
				return false
			}
		} else {
			fmt.Printf("None of the term is a metavariable")
		}
	}
	return true
}

/* append to the map and check if the new element is not in the other list */
func appendToMapAndCheck(m basictypes.Meta, t basictypes.Term, map_constraintes *map[basictypes.Meta][][]basictypes.Term, index_append, index_check int) bool {
	if _, ok := (*map_constraintes)[m]; !ok {
		(*map_constraintes)[m] = make([][]basictypes.Term, 0)
	}
	(*map_constraintes)[m][index_append] = append((*map_constraintes)[m][index_append], t)

	return !basictypes.ContainsTermList(t, (*map_constraintes)[m][index_check])
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
func (cl *ConstraintList) AppendIfConsistant(c Constraint, lpo LPO) bool {
	if !cl.Contains(c) {
		new_cl := cl.Copy()
		if is_consistant := cl.isConsistantWith(c, lpo); is_consistant {
			new_cl = append(new_cl, c)
			cl = &new_cl
			return true
		} else {
			return false
		}
	}
	return true
}

/* Check if a constraint is consistant with LPO and constraint list + update cl */
func (cl *ConstraintList) isConsistantWith(c Constraint, lpo LPO) bool {
	switch c.GetCType() {
	case PREC:
		respect_lpo, is_comparable := c.checkLPO(lpo)
		if is_comparable {
			return respect_lpo
		} else {
			if c.checkConstraintList(*cl) {
				*cl = append(*cl, c)
				return true
			} else {
				return false
			}
		}
	case EQ:
		subst := treesearch.AddUnification(c.GetTP().t1.Copy(), c.GetTP().t2.Copy(), treetypes.MakeEmptySubstitution())
		if subst.Equals(treetypes.Failure()) {
			return false
		} else {
			if !subst.IsEmpty() {
				*cl = append(*cl, c)
			}
			return true
		}
	}

	return true
}

/* Check if a constraint is consistant with LPO and constraint list */
func (cl ConstraintList) isConsistant(lpo LPO, s treetypes.Substitutions) (bool, treetypes.Substitutions) {
	for _, c_element := range cl {
		c := c_element.Copy()
		c.applySubstitution(s)
		switch c.GetCType() {
		case PREC:
			respect_lpo, is_comparable := c.checkLPO(lpo)
			if is_comparable && !respect_lpo {
				return false, nil
			}
		case EQ:
			s = treesearch.AddUnification(c.GetTP().t1.Copy(), c.GetTP().t2.Copy(), s.Copy())
			if s.Equals(treetypes.Failure()) {
				return false, nil
			}
		}
	}
	return true, s.Copy()
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