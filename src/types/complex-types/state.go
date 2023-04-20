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
/************/
/* state.go */
/************/
/**
* This file contains functions and types which describe the state's data structure
**/

package complextypes

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/****************/
/* Struct state */
/****************/

/* The state of the search in a step */
type State struct {
	n                                     int
	lf, atomic, alpha, beta, delta, gamma basictypes.FormAndTermsList
	meta_generator                        []basictypes.MetaGen
	mm, mc                                basictypes.MetaList
	applied_subst                         SubstAndForm
	last_applied_subst                    SubstAndForm   // For non destructive case only
	substs_found                          []SubstAndForm // Subst found with mm in d, subst for "bactrack" in nd
	tree_pos, tree_neg                    datastruct.DataStructure
	proof                                 []proof.ProofStruct
	current_proof                         proof.ProofStruct
	bt_on_formulas                        bool
	forbidden                             []treetypes.Substitutions
}

/***********/
/* Methods */
/***********/

/* Getters */
func (s State) GetN() int {
	return s.n
}
func (s State) GetLF() basictypes.FormAndTermsList {
	return s.lf.Copy()
}
func (s State) GetAtomic() basictypes.FormAndTermsList {
	return s.atomic.Copy()
}
func (s State) GetAlpha() basictypes.FormAndTermsList {
	return s.alpha.Copy()
}
func (s State) GetBeta() basictypes.FormAndTermsList {
	return s.beta.Copy()
}
func (s State) GetDelta() basictypes.FormAndTermsList {
	return s.delta.Copy()
}
func (s State) GetGamma() basictypes.FormAndTermsList {
	return s.gamma.Copy()
}
func (s State) GetMetaGen() []basictypes.MetaGen {
	return basictypes.CopyMetaGenList(s.meta_generator)
}
func (s State) GetMM() basictypes.MetaList {
	return s.mm.Copy()
}
func (s State) GetMC() basictypes.MetaList {
	return s.mc.Copy()
}
func (s State) GetAppliedSubst() SubstAndForm {
	return s.applied_subst.Copy()
}
func (s State) GetLastAppliedSubst() SubstAndForm {
	return s.last_applied_subst.Copy()
}
func (st State) GetSubstsFound() []SubstAndForm {
	return CopySubstAndFormList(st.substs_found)
}
func (s State) GetTreePos() datastruct.DataStructure {
	return s.tree_pos.Copy()
}
func (s State) GetTreeNeg() datastruct.DataStructure {
	return s.tree_neg.Copy()
}
func (s State) GetProof() []proof.ProofStruct {
	return proof.CopyProofStructList(s.proof)
}
func (s State) GetCurrentProof() proof.ProofStruct {
	return s.current_proof.Copy()
}
func (s State) GetBTOnFormulas() bool {
	return s.bt_on_formulas
}
func (s State) GetForbiddenSubsts() []treetypes.Substitutions {
	return s.forbidden
}

/* Setters */

func (st *State) SetN(n int) {
	st.n = n
}
func (st *State) SetLF(fl basictypes.FormAndTermsList) {
	st.lf = fl.Copy()
}
func (st *State) SetAtomic(fl basictypes.FormAndTermsList) {
	st.atomic = fl.Copy()
}
func (st *State) SetAlpha(fl basictypes.FormAndTermsList) {
	st.alpha = fl.Copy()
}
func (st *State) SetBeta(fl basictypes.FormAndTermsList) {
	st.beta = fl.Copy()
}
func (st *State) SetDelta(fl basictypes.FormAndTermsList) {
	st.delta = fl.Copy()
}
func (st *State) SetGamma(fl basictypes.FormAndTermsList) {
	st.gamma = fl.Copy()
}
func (st *State) SetMetaGen(fl []basictypes.MetaGen) {
	st.meta_generator = basictypes.CopyMetaGenList(fl)
}
func (st *State) SetMM(mm basictypes.MetaList) {
	st.mm = mm.Copy()
}
func (st *State) SetMC(mc basictypes.MetaList) {
	st.mc = mc.Copy()
}
func (st *State) SetAppliedSubst(s SubstAndForm) {
	st.applied_subst = s.Copy()
}
func (st *State) SetLastAppliedSubst(s SubstAndForm) {
	st.last_applied_subst = s.Copy()
}
func (st *State) SetSubstsFound(s []SubstAndForm) {
	st.substs_found = CopySubstAndFormList(s)
}
func (st *State) SetTreePos(d datastruct.DataStructure) {
	st.tree_pos = d
}
func (st *State) SetTreeNeg(d datastruct.DataStructure) {
	st.tree_neg = d
}
func (st *State) SetProof(p []proof.ProofStruct) {
	if global.GetProof() {
		st.proof = make([]proof.ProofStruct, len(p))
		copy(st.proof, p)
	}
}
func (st *State) SetCurrentProof(p proof.ProofStruct) {
	if global.GetProof() {
		st.current_proof = p
	}
}
func (st *State) SetCurrentProofFormula(f basictypes.FormAndTerms) {
	if global.GetProof() {
		st.current_proof.SetFormulaProof(f.Copy())
	}
}
func (st *State) SetCurrentProofIdDMT(i int) {
	if global.GetProof() {
		st.current_proof.SetIdDMT(i)
	}
}
func (st *State) SetCurrentProofResultFormulas(fll []proof.IntFormAndTermsList) {
	if global.GetProof() {
		new_fll := []proof.IntFormAndTermsList{}
		for _, fl := range fll {
			new_fll = append(new_fll, fl.Copy())
		}
		st.current_proof.SetResultFormulasProof(new_fll)
	}
}
func (st *State) SetCurrentProofRule(s string) {
	if global.GetProof() {
		st.current_proof.SetRuleProof(s)
	}
}
func (st *State) SetCurrentProofRuleName(s string) {
	if global.GetProof() {
		st.current_proof.SetRuleNameProof(s)
	}
}
func (st *State) SetCurrentProofChildren(c [][]proof.ProofStruct) {
	if global.GetProof() {
		st.current_proof.SetChildrenProof(c)
	}
}
func (st *State) SetCurrentProofNodeId(i int) {
	if global.GetProof() {
		st.current_proof.SetNodeIdProof(i)
	}
}
func (st *State) SetBTOnFormulas(b bool) {
	st.bt_on_formulas = b
}
func (st *State) SetForbiddenSubsts(s []treetypes.Substitutions) {
	st.forbidden = treetypes.CopySubstList(s)
}

/* Maker */
func MakeState(limit int, tp, tn datastruct.DataStructure, f basictypes.Form) State {
	n := 0
	if global.IsDestructive() {
		n = limit
	}

	current_proof := proof.MakeEmptyProofStruct()
	current_proof.SetRuleProof("Initial formula")
	current_proof.SetFormulaProof(basictypes.MakeFormAndTerm(f.Copy(), basictypes.MakeEmptyTermList()))

	return State{n, basictypes.MakeEmptyFormAndTermsList(), basictypes.MakeEmptyFormAndTermsList(), basictypes.MakeEmptyFormAndTermsList(), basictypes.MakeEmptyFormAndTermsList(), basictypes.MakeEmptyFormAndTermsList(), basictypes.MakeEmptyFormAndTermsList(), []basictypes.MetaGen{}, basictypes.MetaList{}, basictypes.MetaList{}, MakeEmptySubstAndForm(), MakeEmptySubstAndForm(), []SubstAndForm{}, tp, tn, []proof.ProofStruct{}, current_proof, false, []treetypes.Substitutions{}}
}

/* Print a state */
func (st State) Print() {
	global.PrintDebug("PSt", "==== State ====")
	global.PrintDebug("PSt", fmt.Sprintf(" n = %v", st.GetN()))

	if !st.GetLF().IsEmpty() {
		global.PrintDebug("Pst", "Formulae list: ")
		st.GetLF().Print()
	}

	if !st.GetAtomic().IsEmpty() {
		global.PrintDebug("PSt", "Atomic formulae: ")
		st.GetAtomic().Print()
	}

	if !st.GetAlpha().IsEmpty() {
		global.PrintDebug("PSt", "Alpha formulae: ")
		st.GetAlpha().Print()
	}

	if !st.GetBeta().IsEmpty() {
		global.PrintDebug("PSt", "Beta formulae: ")
		st.GetBeta().Print()
	}

	if !st.GetDelta().IsEmpty() {
		global.PrintDebug("PSt", "Delta formulae: ")
		st.GetDelta().Print()
	}

	if !st.GetGamma().IsEmpty() {
		global.PrintDebug("PSt", "Gamma formulae: ")
		st.GetGamma().Print()
	}

	if len(st.GetMetaGen()) > 0 {
		global.PrintDebug("PSt", "Meta generator formulae: ")
		global.PrintDebug("PSt", basictypes.MetaGenListToString(st.GetMetaGen()))
	}

	if !st.GetMM().IsEmpty() {
		global.PrintDebug("PSt", "Meta Mother: ")
		global.PrintDebug("Pst", st.GetMM().ToString())
	}

	if len(st.GetMC()) > 0 {
		global.PrintDebug("PSt", "Meta current: ")
		global.PrintDebug("Pst", st.GetMC().ToString())
	}

	if !st.GetAppliedSubst().IsEmpty() {
		global.PrintDebug("PSt", "Applied subst: ")
		global.PrintDebug("PSt", st.GetAppliedSubst().ToString())
	}

	if len(st.GetSubstsFound()) > 0 {
		global.PrintDebug("PSt", "Subst_found: ")
		global.PrintDebug("PSt", treetypes.SubstListToString(GetSubstListFromSubstAndFormList(st.GetSubstsFound())))
	}

	if !st.GetLastAppliedSubst().IsEmpty() {
		global.PrintDebug("PSt", "Last applied subst:")
		global.PrintDebug("PSt", st.GetLastAppliedSubst().ToString())
	}

	if len(st.forbidden) > 0 {
		global.PrintDebug("PSt", "Forbidden:")
		global.PrintDebug("PSt", treetypes.SubstListToString(st.forbidden))
	}

	global.PrintDebug("PSt", fmt.Sprintf("BT on formulas : %v", st.GetBTOnFormulas()))

}

/* Copy a state, merge mm and mc*/
func (st State) Copy() State {
	new_state := State{}

	new_state.n = st.n
	new_state.SetLF(st.GetLF())
	new_state.SetAtomic(st.GetAtomic())
	new_state.SetAlpha(st.GetAlpha())
	new_state.SetBeta(st.GetBeta())
	new_state.SetDelta(st.GetDelta())
	new_state.SetGamma(st.GetGamma())

	new_state.SetMetaGen(st.GetMetaGen())
	new_state.SetMM(append(new_state.GetMM(), append(st.GetMM(), st.GetMC()...)...))
	new_state.SetMC(basictypes.MetaList{})

	if global.IsDestructive() {
		// Don't need to copy because launched with the subst applied - no need to tell father I found something
		new_state.SetAppliedSubst(MakeEmptySubstAndForm())
	} else {
		new_state.SetAppliedSubst(st.GetAppliedSubst())
	}

	new_state.SetLastAppliedSubst(st.GetLastAppliedSubst()) // ND only, destructive dosen't care

	if global.IsDestructive() {
		// Don't copy in destructive mode beacause we need to discard the subst found when we recieved a wait father order
		new_state.SetSubstsFound([]SubstAndForm{})
	} else {
		new_state.SetSubstsFound(st.GetSubstsFound())
	}

	// Recréer arbre
	if global.IsLoaded("dmt") {
		new_state.SetTreePos(st.tree_pos.MakeDataStruct(st.GetAtomic().ExtractForms(), true))
		new_state.SetTreeNeg(st.tree_pos.MakeDataStruct(st.GetAtomic().ExtractForms(), false))
	} else {
		new_state.SetTreePos(st.GetTreePos())
		new_state.SetTreeNeg(st.GetTreeNeg())
	}

	new_state.SetProof([]proof.ProofStruct{})
	new_state.SetCurrentProof(proof.MakeEmptyProofStruct())
	new_state.SetBTOnFormulas(st.GetBTOnFormulas())
	new_state.SetForbiddenSubsts(st.GetForbiddenSubsts())
	return new_state
}

/* Check if the sate is allowed to reintroduce */
func (st State) CanReintroduce() bool {
	return global.IsDestructive() && st.GetN() > 0
	// formula_available := false
	// i := 0
	// for !formula_available && i < len(st.GetMetaGen()) {
	// 	if st.GetMetaGen()[i].GetCounter() <= st.GetN() {
	// 		formula_available = true
	// 	}
	// 	i++
	// }
	// global.PrintDebug("CR", fmt.Sprintf("%v", st.n > 0 && global.IsDestructive() && (formula_available || (len(st.GetGamma()) > 0))))
	// return global.IsDestructive() && (formula_available || (len(st.GetGamma()) > 0)) // st.n > 0
}

/* Check if the sate is allowed to reintroduce */
func (st State) CanApplyGammaRule() bool {
	return st.n > 0 || !global.IsDestructive()
}

/* Check if rules are appliable */
func (st State) AreRulesApplicable() bool {
	return len(st.GetAlpha()) > 0 || len(st.GetDelta()) > 0 || len(st.GetBeta()) > 0 || (len(st.GetGamma()) > 0 && st.CanApplyGammaRule()) || (global.IsDestructive() && len(st.GetMetaGen()) > 0)
}

/* Put the given formula in the right rule box in the given state */
func (st *State) DispatchForm(f basictypes.FormAndTerms) {
	global.PrintDebug("DF", fmt.Sprintf("Dispatch the form : %v ", f.ToString()))
	global.PrintDebug("DF", fmt.Sprintf("Kind of rule : %v ", basictypes.ShowKindOfRule(f.GetForm())))
	switch basictypes.ShowKindOfRule(f.GetForm()) {
	case basictypes.Atomic:
		st.SetAtomic(st.GetAtomic().AppendIfNotContains(f))
	case basictypes.Alpha:
		st.SetAlpha(st.GetAlpha().AppendIfNotContains(f))
	case basictypes.Beta:
		st.SetBeta(st.GetBeta().AppendIfNotContains(f))
	case basictypes.Delta:
		st.SetDelta(st.GetDelta().AppendIfNotContains(f))
	case basictypes.Gamma:
		st.SetGamma(st.GetGamma().AppendIfNotContains(f))
	default:
		global.PrintError("STATE", "Formula not recognized")
	}
}

/** Apply a sbstitution on a state
* TODO : remove old MM/MC
**/
func ApplySubstitution(st *State, saf SubstAndForm) {
	s := saf.GetSubst()
	ms := MergeSubstAndForm(st.GetAppliedSubst(), saf.Copy())
	st.SetAppliedSubst(ms)
	st.SetLastAppliedSubst(saf)
	st.SetLF(ApplySubstitutionsOnFormAndTermsList(s, st.GetLF()))
	st.SetAtomic(ApplySubstitutionsOnFormAndTermsList(s, st.GetAtomic()))
	st.SetAlpha(ApplySubstitutionsOnFormAndTermsList(s, st.GetAlpha()))
	st.SetBeta(ApplySubstitutionsOnFormAndTermsList(s, st.GetBeta()))
	st.SetDelta(ApplySubstitutionsOnFormAndTermsList(s, st.GetDelta()))
	st.SetGamma(ApplySubstitutionsOnFormAndTermsList(s, st.GetGamma()))
	st.SetMetaGen(ApplySubstitutionOnMetaGenList(s, st.GetMetaGen()))

	st.SetTreePos(st.GetTreePos().MakeDataStruct(st.GetAtomic().ExtractForms(), true))
	st.SetTreeNeg(st.GetTreeNeg().MakeDataStruct(st.GetAtomic().ExtractForms(), false))
}

/* TODO : remove and change - for write proof */
func (st *State) GetAllForms() basictypes.FormAndTermsList {
	res := basictypes.MakeEmptyFormAndTermsList()
	res = res.Merge(st.GetLF())
	res = res.Merge(st.GetAtomic())
	res = res.Merge(st.GetAlpha())
	res = res.Merge(st.GetBeta())
	res = res.Merge(st.GetDelta())
	res = res.Merge(st.GetGamma())
	return res
}
