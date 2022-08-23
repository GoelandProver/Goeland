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
/********************/
/* equality_step.go */
/********************/
/**
* This file contains the type definition for equality reasonning.
**/

package equality

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/* step tmp between two term -> change it to connect between two pred -> vers eq*/
type EUnifStep struct {
	intial_term basictypes.Term
	final_term  basictypes.Term
	equality    basictypes.Pred
}

func (eunifstep *EUnifStep) GetIntialTerm() basictypes.Term {
	return eunifstep.intial_term.Copy()
}

func (eunifstep *EUnifStep) GetFinalTerm() basictypes.Term {
	return eunifstep.final_term.Copy()
}

func (eunifstep *EUnifStep) GetEquality() basictypes.Pred {
	return eunifstep.equality.Copy().(basictypes.Pred)
}

func (eunifstep *EUnifStep) SetIntialTerm(intial_term basictypes.Term) {
	eunifstep.intial_term = intial_term
}

func (eunifstep *EUnifStep) SetFinalTerm(final_term basictypes.Term) {
	eunifstep.final_term = final_term
}

func (eunifstep *EUnifStep) SetEquality(equality basictypes.Pred) {
	eunifstep.equality = equality
}

type SubstEUStepPair struct {
	subst treetypes.Substitution
	steps []EUnifStep
}

func (substeusteppair *SubstEUStepPair) GetSubst() treetypes.Substitution {
	return substeusteppair.subst
}

func (substeusteppair *SubstEUStepPair) GetSteps() []EUnifStep {
	return substeusteppair.steps
}

func (substeusteppair *SubstEUStepPair) SetSubst(subst treetypes.Substitution) {
	substeusteppair.subst = subst
}

func (substeusteppair *SubstEUStepPair) SetSteps(steps []EUnifStep) {
	substeusteppair.steps = steps
}

type EqualityStep struct {
	inital_form basictypes.Form
	final_form  basictypes.Form
	equality    basictypes.Pred
}

func (equalitystep *EqualityStep) GetInitalForm() basictypes.Form {
	return equalitystep.inital_form
}

func (equalitystep *EqualityStep) GetFinaForm() basictypes.Form {
	return equalitystep.final_form
}

func (equalitystep *EqualityStep) GetEquality() basictypes.Pred {
	return equalitystep.equality
}

func (equalitystep *EqualityStep) SetInitalForm(inital_form basictypes.Form) {
	equalitystep.inital_form = inital_form
}

func (equalitystep *EqualityStep) SetFinalForm(final_form basictypes.Form) {
	equalitystep.final_form = final_form
}

func (equalitystep *EqualityStep) SetEquality(equality basictypes.Pred) {
	equalitystep.equality = equality
}

type SubstEqStepPair struct {
	subst treetypes.Substitution
	steps []EUnifStep
}

func (substeqsteppair *SubstEqStepPair) GetSubst() treetypes.Substitution {
	return substeqsteppair.subst
}

func (substeqsteppair *SubstEqStepPair) GetSteps() []EUnifStep {
	return substeqsteppair.steps
}

func (substeqsteppair *SubstEqStepPair) SetSubst(subst treetypes.Substitution) {
	substeqsteppair.subst = subst
}

func (substeqsteppair *SubstEqStepPair) SetSteps(steps []EUnifStep) {
	substeqsteppair.steps = steps
}
