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
)

/* type of the constraint :
* 0 for >
* 1 for =
**/
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
func (c Constraint) Copy() Constraint {
	return MakeConstraint(c.GetCType(), c.GetTP())
}
func (c Constraint) Equals(c2 Constraint) bool {
	return ((c.GetCType() == c2.GetCType()) && c.GetTP().Equals(c2.GetTP()))
}
func (c Constraint) ToString() string {
	switch c.GetCType() {
	case 0:
		return c.GetTP().GetT1().ToString() + " ≻ " + c.GetTP().GetT2().ToString()
	case 1:
		return c.GetTP().GetT1().ToString() + " ≃ " + c.GetTP().GetT2().ToString()
	default:
		fmt.Printf("Constraint type unknown \n")
		return "Constraint type unknown"
	}
}

/* return true if the constraint is not violated, false totherwise */
func (c Constraint) Check(lpo LPO, subst treetypes.Substitutions) (bool, treetypes.Substitutions) {
	switch c.GetCType() {
	case 0:
		return lpo.Compare(c.GetTP().t1, c.GetTP().t2) > 0, treetypes.Failure()
	case 1:
		subst := treesearch.AddUnification(c.GetTP().t1.Copy(), c.GetTP().t2.Copy(), treetypes.MakeEmptySubstitution())
		if subst.Equals(treetypes.Failure()) {
			return false, treetypes.Failure()
		} else {
			return true, treetypes.Failure()
		}

	default:
		fmt.Printf("Constraint type unknown \n")
		return false, treetypes.Failure()
	}
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

func (cl *ConstraintList) AppendIfConsistantWithLPO(c Constraint, lpo LPO) bool {
	if !cl.Contains(c) {
		new_cl := cl.Copy()
		new_cl = append(new_cl, c)
		is_consistant, _ := new_cl.IsConsistant(lpo)
		if is_consistant {
			cl = &new_cl
			return true
		} else {
			return false
		}
	}
	return true
}

func MakeEmptyConstaintsList() ConstraintList {
	return ConstraintList{}
}

/* CHeck if a list of constraintes is consistant */
func (cl *ConstraintList) IsConsistant(lpo LPO) (bool, treetypes.Substitutions) {
	consistant_subst := treetypes.MakeEmptySubstitution()
	for _, c := range *cl {
		is_checked, subst := c.Check(lpo, consistant_subst)
		if is_checked {
			subst_res, _ := treesearch.MergeSubstitutions(consistant_subst, subst)
			if subst_res.Equals(treetypes.Failure()) {
				return false, treetypes.Failure()
			} else {
				consistant_subst = subst_res
			}
		} else {
			return false, treetypes.Failure()
		}
	}
	return true, consistant_subst
}
