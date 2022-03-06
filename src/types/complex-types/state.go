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

	treetypes "github.com/delahayd/gotab/code-trees/tree-types"
	"github.com/delahayd/gotab/global"
	"github.com/delahayd/gotab/plugin"
	basictypes "github.com/delahayd/gotab/types/basic-types"
	datastruct "github.com/delahayd/gotab/types/data-struct"
	proof "github.com/delahayd/gotab/visualization_proof"
)

/****************/
/* Struct state */
/****************/

/* The state of the search in a step */
type State struct {
	n                                     int
	lf, atomic, alpha, beta, delta, gamma []basictypes.FormAndTerm
	meta_generator                        []basictypes.MetaGen
	mm, mc                                basictypes.MetaList
	applied_subst                         SubstAndForm
	last_applied_subst                    SubstAndForm   // For non destructive case only
	substs_found                          []SubstAndForm // Subst found with mm in d, subst for "bactrack" in nd
	tree_pos, tree_neg                    datastruct.DataStructure
	proof                                 []proof.ProofStruct
	current_proof                         proof.ProofStruct
}

/***********/
/* Methods */
/***********/

/* Getters */
func (s State) GetN() int {
	return s.n
}
func (s State) GetLF() []basictypes.FormAndTerm {
	return basictypes.CopyFormAndTermList(s.lf)
}
func (s State) GetAtomic() []basictypes.FormAndTerm {
	return basictypes.CopyFormAndTermList(s.atomic)
}
func (s State) GetAlpha() []basictypes.FormAndTerm {
	return basictypes.CopyFormAndTermList(s.alpha)
}
func (s State) GetBeta() []basictypes.FormAndTerm {
	return basictypes.CopyFormAndTermList(s.beta)
}
func (s State) GetDelta() []basictypes.FormAndTerm {
	return basictypes.CopyFormAndTermList(s.delta)
}
func (s State) GetGamma() []basictypes.FormAndTerm {
	return basictypes.CopyFormAndTermList(s.gamma)
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

/* Setters */

func (st *State) SetN(n int) {
	st.n = n
}
func (st *State) SetLF(fl []basictypes.FormAndTerm) {
	st.lf = basictypes.CopyFormAndTermList(fl)
}
func (st *State) SetAtomic(fl []basictypes.FormAndTerm) {
	st.atomic = basictypes.CopyFormAndTermList(fl)
}
func (st *State) SetAlpha(fl []basictypes.FormAndTerm) {
	st.alpha = basictypes.CopyFormAndTermList(fl)
}
func (st *State) SetBeta(fl []basictypes.FormAndTerm) {
	st.beta = basictypes.CopyFormAndTermList(fl)
}
func (st *State) SetDelta(fl []basictypes.FormAndTerm) {
	st.delta = basictypes.CopyFormAndTermList(fl)
}
func (st *State) SetGamma(fl []basictypes.FormAndTerm) {
	st.gamma = basictypes.CopyFormAndTermList(fl)
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
func (st *State) SetCurrentProofFormula(f []basictypes.FormAndTerm) {
	if global.GetProof() {
		st.current_proof.SetFormulaProof(basictypes.FormAndTermListToStringForProof(f))
	}
}
func (st *State) SetCurrentProofRule(s string) {
	if global.GetProof() {
		st.current_proof.SetRuleProof(s)
	}
}
func (st *State) SetCurrentProofChildren(c [][]proof.ProofStruct) {
	if global.GetProof() {
		st.current_proof.SetChildrenProof(c)
	}
}

/* Maker */
func MakeState(limit int, tp, tn datastruct.DataStructure) State {
	n := 0
	if global.IsDestructive() {
		n = limit
	}

	current_proof := proof.MakeEmptyProofStruct()
	current_proof.SetRuleProof("Initial formula")

	return State{n, []basictypes.FormAndTerm{}, []basictypes.FormAndTerm{}, []basictypes.FormAndTerm{}, []basictypes.FormAndTerm{}, []basictypes.FormAndTerm{}, []basictypes.FormAndTerm{}, []basictypes.MetaGen{}, basictypes.MetaList{}, basictypes.MetaList{}, SubstAndForm{}, SubstAndForm{}, []SubstAndForm{}, tp, tn, []proof.ProofStruct{}, current_proof}
}

/* Print a state */
func (st State) Print() {
	global.PrintDebug("PSt", "==== State ====")
	global.PrintDebug("PSt", fmt.Sprintf(" n = %v", st.GetN()))

	if len(st.GetLF()) > 0 {
		global.PrintDebug("Pst", "Formulae list: ")
		basictypes.PrintFormulaAndTermList(st.GetLF())
	}

	if len(st.GetAtomic()) > 0 {
		global.PrintDebug("PSt", "Atomic formulae: ")
		basictypes.PrintFormulaAndTermList(st.GetAtomic())
	}

	if len(st.GetAlpha()) > 0 {
		global.PrintDebug("PSt", "Alpha formulae: ")
		basictypes.PrintFormulaAndTermList(st.GetAlpha())
	}

	if len(st.GetBeta()) > 0 {
		global.PrintDebug("PSt", "Beta formulae: ")
		basictypes.PrintFormulaAndTermList(st.GetBeta())
	}

	if len(st.GetDelta()) > 0 {
		global.PrintDebug("PSt", "Delta formulae: ")
		basictypes.PrintFormulaAndTermList(st.GetDelta())
	}

	if len(st.GetGamma()) > 0 {
		global.PrintDebug("PSt", "Gamma formulae: ")
		basictypes.PrintFormulaAndTermList(st.GetGamma())
	}

	if len(st.GetMetaGen()) > 0 {
		global.PrintDebug("PSt", "Meta generator formulae: ")
		global.PrintDebug("PSt", basictypes.MetaGenListToString(st.GetMetaGen()))
	}

	if len(st.GetMM()) > 0 {
		global.PrintDebug("PSt", "Meta Mother: ")
		global.PrintDebug("Pst", st.GetMM().ToString())
	}

	if len(st.GetMC()) > 0 {
		global.PrintDebug("PSt", "Meta current: ")
		global.PrintDebug("Pst", st.GetMC().ToString())
	}

	if len(st.GetAppliedSubst().GetSubst()) > 0 {
		global.PrintDebug("PSt", "Applied subst: ")
		global.PrintDebug("PSt", st.GetAppliedSubst().GetSubst().ToString())
	}

	if len(st.GetSubstsFound()) > 0 {
		global.PrintDebug("PSt", "Subst_found: ")
		global.PrintDebug("PSt", treetypes.SubstListToString(GetSubstListFromSubstAndFormList(st.GetSubstsFound())))
	}

	if !st.GetLastAppliedSubst().GetSubst().IsEmpty() {
		global.PrintDebug("PSt", "Last applied subst:")
		global.PrintDebug("PSt", st.GetLastAppliedSubst().GetSubst().ToString())
	}
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
		new_state.SetAppliedSubst(SubstAndForm{})
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

	new_state.SetTreePos(st.GetTreePos())
	new_state.SetTreeNeg(st.GetTreeNeg())
	new_state.SetProof([]proof.ProofStruct{})
	new_state.SetCurrentProof(proof.MakeEmptyProofStruct())

	return new_state
}

/* Check if the sate is allowed to reintroduce */
func (st State) CanReintroduce() bool {
	return st.n > 0 && global.IsDestructive()
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
func (st *State) DispatchForm(f basictypes.FormAndTerm) basictypes.FormAndTerm {
	global.PrintDebug("DF", fmt.Sprintf("Dispatch the form : %v ", f.GetForm().ToString()))
	global.PrintDebug("DF", fmt.Sprintf("Kind of rule : %v ", basictypes.ShowKindOfRule(f.GetForm())))
	switch basictypes.ShowKindOfRule(f.GetForm()) {
	case basictypes.Atomic:
		if !basictypes.ContainsFormAndTerm(f, st.GetAtomic()) {
			if rewritten, err := plugin.GetPluginManager().ApplyRewriteHook(f); err == nil {
				rewritten := rewritten[0]
				if !rewritten.Equals(f) {
					// If it's atomic, we need to manage closure rule before dispatching the form.
					// So the rewritten formula is returned for the proofsearch process to reapply
					// a loop on all rewritten atoms.
					if basictypes.ShowKindOfRule(rewritten.GetForm()) == basictypes.Atomic {
						return rewritten
					}
					st.DispatchForm(rewritten)
					return basictypes.MakeEmptyFormAndTerm()
				}
			} else {
				global.PrintDebug("DMT", err.Error())
			}
			st.SetAtomic(append(st.GetAtomic(), f))
		}
	case basictypes.Alpha:
		if !basictypes.ContainsFormAndTerm(f, st.GetAlpha()) {
			st.SetAlpha(append(st.GetAlpha(), f))
		}
	case basictypes.Beta:
		if !basictypes.ContainsFormAndTerm(f, st.GetBeta()) {
			st.SetBeta(append(st.GetBeta(), f))
		}
	case basictypes.Delta:
		if !basictypes.ContainsFormAndTerm(f, st.GetDelta()) {
			st.SetDelta(append(st.GetDelta(), f))
		}
	case basictypes.Gamma:
		if !basictypes.ContainsFormAndTerm(f, st.GetGamma()) {
			st.SetGamma(append(st.GetGamma(), f))
		}
	default:
		fmt.Println("[ERROR] Formula not recognized")
	}
	return basictypes.MakeEmptyFormAndTerm()
}

func (st *State) GetAllForms() []basictypes.FormAndTerm {
	res := []basictypes.FormAndTerm{}
	res = basictypes.MergeFormAndTerm(res, st.GetLF())
	// res = basictypes.MergeFormAndTerm(res, st.GetAtomic())
	// res = basictypes.MergeFormAndTerm(res, st.GetAlpha())
	// res = basictypes.MergeFormAndTerm(res, st.GetDelta())
	// res = basictypes.MergeFormAndTerm(res, st.GetBeta())
	// res = basictypes.MergeFormAndTerm(res, st.GetGamma())
	return res
}
