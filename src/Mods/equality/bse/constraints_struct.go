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
* This file contains the type definition of a constraint struct for equality reasoning.
**/

package equality

import (
	"fmt"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Unif"
)

type ConstraintStruct struct {
	all_constraints ConstraintList
	subst           Unif.Substitutions
	prec            ConstraintList
}

func (cs ConstraintStruct) getSubst() Unif.Substitutions {
	return cs.subst.Copy()
}
func (cs ConstraintStruct) getPrec() ConstraintList {
	return cs.prec.Copy()
}
func (cs ConstraintStruct) getAllConstraints() ConstraintList {
	return cs.all_constraints
}
func (cs *ConstraintStruct) setSubst(s Unif.Substitutions) {
	cs.subst = s.Copy()
}
func (cs *ConstraintStruct) setPrec(cl ConstraintList) {
	cs.prec = cl.Copy()
}
func (cs *ConstraintStruct) setAllConstraits(cl ConstraintList) {
	cs.all_constraints = cl.Copy()
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
func makeEmptyConstraintStruct() ConstraintStruct {
	return ConstraintStruct{makeEmptyConstaintsList(), Unif.MakeEmptySubstitution(), makeEmptyConstaintsList()}
}
func makeConstraintStruct(ac ConstraintList, s Unif.Substitutions, p ConstraintList) ConstraintStruct {
	res := makeEmptyConstraintStruct()
	res.setAllConstraits(ac)
	res.setSubst(s)
	res.setPrec(p)
	return res
}

/* Append relevant constraint if its consistant with cl and LPO */
func (cs *ConstraintStruct) appendIfConsistant(c Constraint) bool {
	// Glob.PrintDebug("AIC", fmt.Sprintf("CL : %v - c : %v", cl.ToString(), c.ToString()))
	if !cs.getAllConstraints().contains(c) {
		if is_consistant := cs.isConsistantWith(c); is_consistant {
			Glob.PrintDebug("AIC", fmt.Sprintf("%v is consistant", c.toString()))
			Glob.PrintDebug("AIC", fmt.Sprintf("CL at the end : %v", cs.toString()))
			return true
		} else {
			Glob.PrintDebug("AIC", fmt.Sprintf("%v is not consistant", c.toString()))
			Glob.PrintDebug("AIC", fmt.Sprintf("CL at the end : %v", cs.toString()))
			return false
		}
	}
	return true
}

/* Check if a constraint is consistant with LPO and constraint list + update cl */
func (cs *ConstraintStruct) isConsistantWith(c Constraint) bool {
	Glob.PrintDebug("ICW", fmt.Sprintf("Constraint : %v", c.toString()))
	switch c.getCType() {
	case PREC:
		// Apply subst and check LPO
		new_c := c.copy()
		new_c.applySubstitution(cs.getSubst())
		respect_lpo, is_comparable := new_c.checkLPO()
		Glob.PrintDebug("ICW", fmt.Sprintf("Is_comparable : %v, respec_lpo : %v", is_comparable, respect_lpo))
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
		subst := Unif.AddUnification(c.getTP().GetT1().Copy(), c.getTP().GetT2().Copy(), Unif.MakeEmptySubstitution())
		Glob.PrintDebug("ICW", fmt.Sprintf("Candidate subst : %v", subst.ToString()))
		if subst.Equals(Unif.Failure()) {
			return false
		}
		if subst.IsEmpty() {
			return true
		}

		// Simplify it
		// respect_lpo, is_comparable := c.checkLPO()
		// Glob.PrintDebug("ICW", fmt.Sprintf("Is_comparable : %v, respec_lpo : %v", is_comparable, respect_lpo))
		// if is_comparable {
		//	return respect_lpo
		// }

		Glob.PrintDebug("ICW", fmt.Sprintf("Try to check compatibility : %v (%v and %v) and %v", subst.ToString(), c.getTP().GetT1().ToString(), c.getTP().GetT2().ToString(), cs.getSubst().ToString()))
		// Add it to subst and check unification consistency
		subst_all := Unif.AddUnification(c.getTP().GetT1(), c.getTP().GetT2(), cs.getSubst())
		Glob.PrintDebug("ICW", fmt.Sprintf("Subst all : %v", subst_all.ToString()))
		if subst_all.Equals(Unif.Failure()) {
			return false
		}
		if subst_all.IsEmpty() {
			return true
		}

		// Apply new global subst to prec
		Glob.PrintDebug("ICW", "Check if consistant with the whole cl")
		if !cs.getPrec().isConsistantWithSubst(subst_all) {
			Glob.PrintDebug("ICW", "Not consistant with the whole cl")
			return false
		}

		// If all is ok, append if
		cs.setSubst(subst_all)
		cs.addAllConstraints(c)
		return true

	default:
		Glob.PrintDebug("ICW", "Constraint type unknown")
		return false
	}
}

// TODO : append if not contains
