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
/*************************/
/* constraints_struct.go */
/*************************/
/**
* This file contains the type definition of a constraint struct for equality reasoning.
**/

package main

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
)

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

		// Apply new global subst to prec
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
