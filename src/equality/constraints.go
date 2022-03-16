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

package equality

import (
	"fmt"

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
func (c Constraint) ToSting() string {
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
func (c Constraint) Check(lpo LPO) (bool, treetypes.Substitutions) {
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

func (cl ConstraintList) Contains(c Constraint) bool {
	for _, cst := range cl {
		if c.Equals(cst) {
			return true
		}
	}
	return false
}

func (cl *ConstraintList) AppendIfConsistant(c Constraint, lpo LPO) bool {
	if !cl.Contains(c) {
		// TODO : vérifier mieux
		checked, _ := c.Check(lpo)
		if checked {
			(*cl) = append((*cl), c)
			return true
		} else {
			return false
		}
	} else {
		return true
	}
}
