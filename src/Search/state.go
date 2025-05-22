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
* This file contains functions and types which describe the state's data structure
**/

package Search

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Mods/equality/eqStruct"
	"github.com/GoelandProver/Goeland/Unif"
)

/****************/
/* Struct state */
/****************/

/* The state of the search in a step */
type State struct {
	n                                     int
	lf, atomic, alpha, beta, delta, gamma Core.FormAndTermsList
	meta_generator                        []Core.MetaGen
	mm, mc                                *AST.MetaList
	applied_subst                         Core.SubstAndForm
	last_applied_subst                    Core.SubstAndForm   // For non destructive case only
	substs_found                          []Core.SubstAndForm // Subst found with mm in d, subst for "bactrack" in nd
	tree_pos, tree_neg                    Unif.DataStructure
	proof                                 []ProofStruct
	current_proof                         ProofStruct
	bt_on_formulas                        bool
	forbidden                             []Unif.Substitutions
	unifier                               Core.Unifier
	eqStruct                              eqStruct.EqualityStruct
}

/***********/
/* Methods */
/***********/

/* Getters */
func (s State) GetN() int {
	return s.n
}
func (s State) GetLF() Core.FormAndTermsList {
	return s.lf.Copy()
}
func (s State) GetAtomic() Core.FormAndTermsList {
	return s.atomic.Copy()
}
func (s State) GetAlpha() Core.FormAndTermsList {
	return s.alpha.Copy()
}
func (s State) GetBeta() Core.FormAndTermsList {
	return s.beta.Copy()
}
func (s State) GetDelta() Core.FormAndTermsList {
	return s.delta.Copy()
}
func (s State) GetGamma() Core.FormAndTermsList {
	return s.gamma.Copy()
}
func (s State) GetMetaGen() []Core.MetaGen {
	return Core.CopyMetaGenList(s.meta_generator)
}
func (s State) GetMM() *AST.MetaList {
	return s.mm.Copy()
}
func (s State) GetMC() *AST.MetaList {
	return s.mc.Copy()
}
func (s State) GetAppliedSubst() Core.SubstAndForm {
	return s.applied_subst.Copy()
}
func (s State) GetLastAppliedSubst() Core.SubstAndForm {
	return s.last_applied_subst.Copy()
}
func (st State) GetSubstsFound() []Core.SubstAndForm {
	return Core.CopySubstAndFormList(st.substs_found)
}
func (s State) GetTreePos() Unif.DataStructure {
	return s.tree_pos
}
func (s *State) AddToTreePos(fl *AST.FormList) {
	s.tree_pos = s.tree_pos.InsertFormulaListToDataStructure(fl)
}
func (s State) GetTreeNeg() Unif.DataStructure {
	return s.tree_neg
}
func (s *State) AddToTreeNeg(fl *AST.FormList) {
	s.tree_neg = s.tree_neg.InsertFormulaListToDataStructure(fl)
}
func (s State) GetProof() []ProofStruct {
	return CopyProofStructList(s.proof)
}
func (s State) GetCurrentProof() ProofStruct {
	return s.current_proof.Copy()
}
func (s State) GetBTOnFormulas() bool {
	return s.bt_on_formulas
}
func (s State) GetForbiddenSubsts() []Unif.Substitutions {
	return s.forbidden
}
func (s State) GetGlobUnifier() Core.Unifier {
	return s.unifier.Copy()
}

func (s State) GetEqStruct() eqStruct.EqualityStruct {
	return s.eqStruct.Copy()
}

/* Setters */

func (st *State) SetN(n int) {
	st.n = n
}
func (st *State) SetLF(fl Core.FormAndTermsList) {
	st.lf = fl.Copy()
}
func (st *State) SetAtomic(fl Core.FormAndTermsList) {
	st.atomic = fl.Copy()
}
func (st *State) SetAlpha(fl Core.FormAndTermsList) {
	st.alpha = fl.Copy()
}
func (st *State) SetBeta(fl Core.FormAndTermsList) {
	st.beta = fl.Copy()
}
func (st *State) SetDelta(fl Core.FormAndTermsList) {
	st.delta = fl.Copy()
}
func (st *State) SetGamma(fl Core.FormAndTermsList) {
	st.gamma = fl.Copy()
}
func (st *State) SetMetaGen(fl []Core.MetaGen) {
	st.meta_generator = Core.CopyMetaGenList(fl)
}
func (st *State) SetMM(mm *AST.MetaList) {
	st.mm = mm.Copy()
}
func (st *State) SetMC(mc *AST.MetaList) {
	st.mc = mc.Copy()
}
func (st *State) SetAppliedSubst(s Core.SubstAndForm) {
	st.applied_subst = s.Copy()
}
func (st *State) SetLastAppliedSubst(s Core.SubstAndForm) {
	st.last_applied_subst = s.Copy()
}
func (st *State) SetSubstsFound(s []Core.SubstAndForm) {
	st.substs_found = Core.CopySubstAndFormList(s)
}
func (st *State) SetTreePos(d Unif.DataStructure) {
	st.tree_pos = d
}
func (st *State) SetTreeNeg(d Unif.DataStructure) {
	st.tree_neg = d
}
func (st *State) SetProof(p []ProofStruct) {
	if Glob.GetProof() {
		st.proof = make([]ProofStruct, len(p))
		copy(st.proof, p)
	}
}
func (st *State) SetCurrentProof(p ProofStruct) {
	if Glob.GetProof() {
		st.current_proof = p
	}
}
func (st *State) SetCurrentProofFormula(f Core.FormAndTerms) {
	if Glob.GetProof() {
		st.current_proof.SetFormulaProof(f)
	}
}
func (st *State) SetCurrentProofIdDMT(i int) {
	if Glob.GetProof() {
		st.current_proof.SetIdDMT(i)
	}
}
func (st *State) SetCurrentProofResultFormulas(fll []IntFormAndTermsList) {
	if Glob.GetProof() {
		new_fll := []IntFormAndTermsList{}
		for _, fl := range fll {
			new_fll = append(new_fll, MakeIntFormAndTermsList(fl.GetI(), fl.GetFL()))
		}
		st.current_proof.SetResultFormulasProof(new_fll)
	}
}
func (st *State) SetCurrentProofRule(s string) {
	if Glob.GetProof() {
		st.current_proof.SetRuleProof(s)
	}
}
func (st *State) SetCurrentProofRuleName(s string) {
	if Glob.GetProof() {
		st.current_proof.SetRuleNameProof(s)
	}
}
func (st *State) SetCurrentProofChildren(c [][]ProofStruct) {
	if Glob.GetProof() {
		st.current_proof.SetChildrenProof(c)
	}
}
func (st *State) SetCurrentProofNodeId(i int) {
	if Glob.GetProof() {
		st.current_proof.SetNodeIdProof(i)
	}
}
func (st *State) SetBTOnFormulas(b bool) {
	st.bt_on_formulas = b
}
func (st *State) SetForbiddenSubsts(s []Unif.Substitutions) {
	st.forbidden = Unif.CopySubstList(s)
}
func (s *State) SetGlobUnifier(u Core.Unifier) {
	s.unifier = u.Copy()
}

/* Maker */
func MakeState(limit int, tp, tn Unif.DataStructure, f AST.Form) State {
	n := 0
	if Glob.IsDestructive() {
		n = limit
	}

	current_proof := MakeEmptyProofStruct()
	current_proof.SetRuleProof("Initial formula")
	current_proof.SetFormulaProof(Core.MakeFormAndTerm(f.Copy(), AST.NewTermList()))

	return State{
		n,
		Core.MakeEmptyFormAndTermsList(),
		Core.MakeEmptyFormAndTermsList(),
		Core.MakeEmptyFormAndTermsList(),
		Core.MakeEmptyFormAndTermsList(),
		Core.MakeEmptyFormAndTermsList(),
		Core.MakeEmptyFormAndTermsList(),
		[]Core.MetaGen{},
		AST.NewMetaList(),
		AST.NewMetaList(),
		Core.MakeEmptySubstAndForm(),
		Core.MakeEmptySubstAndForm(),
		[]Core.SubstAndForm{},
		tp,
		tn,
		[]ProofStruct{},
		current_proof,
		false,
		[]Unif.Substitutions{},
		Core.MakeUnifier(),
		eqStruct.NewEqStruct()}
}

/* Print a state */
func (st State) Print() {
	Glob.PrintDebug("PSt", "==== State ====")
	Glob.PrintDebug("PSt", fmt.Sprintf(" n = %v", st.GetN()))

	if !st.GetLF().IsEmpty() {
		Glob.PrintDebug("Pst", "Formulae list: ")
		st.GetLF().Print()
	}

	if !st.GetAtomic().IsEmpty() {
		Glob.PrintDebug("PSt", "Atomic formulae: ")
		st.GetAtomic().Print()
	}

	if !st.GetAlpha().IsEmpty() {
		Glob.PrintDebug("PSt", "Alpha formulae: ")
		st.GetAlpha().Print()
	}

	if !st.GetBeta().IsEmpty() {
		Glob.PrintDebug("PSt", "Beta formulae: ")
		st.GetBeta().Print()
	}

	if !st.GetDelta().IsEmpty() {
		Glob.PrintDebug("PSt", "Delta formulae: ")
		st.GetDelta().Print()
	}

	if !st.GetGamma().IsEmpty() {
		Glob.PrintDebug("PSt", "Gamma formulae: ")
		st.GetGamma().Print()
	}

	if len(st.GetMetaGen()) > 0 {
		Glob.PrintDebug("PSt", "Meta generator formulae: ")
		Glob.PrintDebug("PSt", Core.MetaGenListToString(st.GetMetaGen()))
	}

	if !st.GetMM().IsEmpty() {
		Glob.PrintDebug("PSt", "Meta Mother: ")
		Glob.PrintDebug("Pst", st.GetMM().ToString())
	}

	if st.GetMC().Len() > 0 {
		Glob.PrintDebug("PSt", "Meta current: ")
		Glob.PrintDebug("Pst", st.GetMC().ToString())
	}

	if !st.GetAppliedSubst().IsEmpty() {
		Glob.PrintDebug("PSt", "Applied subst: ")
		Glob.PrintDebug("PSt", st.GetAppliedSubst().ToString())
	}

	if len(st.GetSubstsFound()) > 0 {
		Glob.PrintDebug("PSt", "Subst_found: ")
		Glob.PrintDebug("PSt", Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(st.GetSubstsFound())))
	}

	if !st.GetLastAppliedSubst().IsEmpty() {
		Glob.PrintDebug("PSt", "Last applied subst:")
		Glob.PrintDebug("PSt", st.GetLastAppliedSubst().ToString())
	}

	if len(st.forbidden) > 0 {
		Glob.PrintDebug("PSt", "Forbidden:")
		Glob.PrintDebug("PSt", Unif.SubstListToString(st.forbidden))
	}

	Glob.PrintDebug("PSt", fmt.Sprintf("BT on formulas : %v", st.GetBTOnFormulas()))

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

	newMetaMM := AST.NewMetaList()
	newMetaMM.Append(st.GetMM().Slice()...)
	newMetaMM.Append(st.GetMC().Slice()...)
	new_state.SetMM(newMetaMM)

	new_state.SetMC(AST.NewMetaList())

	if Glob.IncrEq {
		new_state.eqStruct = st.GetEqStruct()
	} else {
		new_state.eqStruct = eqStruct.NewEqStruct()
	}

	if Glob.IsDestructive() {
		// Don't need to copy because launched with the subst applied - no need to tell father I found something
		new_state.SetAppliedSubst(Core.MakeEmptySubstAndForm())
	} else {
		new_state.SetAppliedSubst(st.GetAppliedSubst())
	}

	new_state.SetLastAppliedSubst(st.GetLastAppliedSubst()) // ND only, destructive dosen't care

	if Glob.IsDestructive() {
		// Don't copy in destructive mode beacause we need to discard the subst found when we recieved a wait father order
		new_state.SetSubstsFound([]Core.SubstAndForm{})
	} else {
		new_state.SetSubstsFound(st.GetSubstsFound())
	}

	new_state.SetGlobUnifier(st.GetGlobUnifier().Copy())

	// Recréer arbre
	if Glob.IsLoaded("dmt") {
		new_state.SetTreePos(st.tree_pos.MakeDataStruct(st.GetAtomic().ExtractForms(), true))
		new_state.SetTreeNeg(st.tree_pos.MakeDataStruct(st.GetAtomic().ExtractForms(), false))
	} else {
		new_state.SetTreePos(st.GetTreePos())
		new_state.SetTreeNeg(st.GetTreeNeg())
	}

	new_state.SetProof([]ProofStruct{})
	new_state.SetCurrentProof(MakeEmptyProofStruct())
	new_state.SetBTOnFormulas(st.GetBTOnFormulas())
	new_state.SetForbiddenSubsts(st.GetForbiddenSubsts())
	return new_state
}

/* Check if the sate is allowed to reintroduce */
func (st State) CanReintroduce() bool {
	return Glob.IsDestructive() && st.GetN() > 0
	// formula_available := false
	// i := 0
	// for !formula_available && i < len(st.GetMetaGen()) {
	// 	if st.GetMetaGen()[i].GetCounter() <= st.GetN() {
	// 		formula_available = true
	// 	}
	// 	i++
	// }
	// Glob.PrintDebug("CR", fmt.Sprintf("%v", st.n > 0 && Glob.IsDestructive() && (formula_available || (len(st.GetGamma()) > 0))))
	// return Glob.IsDestructive() && (formula_available || (len(st.GetGamma()) > 0)) // st.n > 0
}

/* Check if the sate is allowed to reintroduce */
func (st State) CanApplyGammaRule() bool {
	return st.n > 0 || !Glob.IsDestructive()
}

/* Check if rules are appliable */
func (st State) AreRulesApplicable() bool {
	return len(st.GetAlpha()) > 0 || len(st.GetDelta()) > 0 || len(st.GetBeta()) > 0 || (len(st.GetGamma()) > 0 && st.CanApplyGammaRule()) || (Glob.IsDestructive() && len(st.GetMetaGen()) > 0)
}

/* Put the given formula in the right rule box in the given state */
func (st *State) DispatchForm(f Core.FormAndTerms) {
	Glob.PrintDebug("DF", fmt.Sprintf("Dispatch the form : %v ", f.ToString()))
	Glob.PrintDebug("DF", fmt.Sprintf("Kind of rule : %v ", Core.ShowKindOfRule(f.GetForm())))
	switch Core.ShowKindOfRule(f.GetForm()) {
	case Core.Atomic:
		if !st.GetAtomic().Contains(f) {
			st.SetAtomic(st.GetAtomic().Append(f))
			if _, ok := f.GetForm().(AST.Not); ok {
				st.SetTreePos(st.GetTreePos().MakeDataStruct(st.GetAtomic().ExtractForms(), true))
			} else {
				st.SetTreeNeg(st.GetTreeNeg().MakeDataStruct(st.GetAtomic().ExtractForms(), false))
			}
		}
	case Core.Alpha:
		st.SetAlpha(st.GetAlpha().AppendIfNotContains(f))
	case Core.Beta:
		st.SetBeta(st.GetBeta().AppendIfNotContains(f))
	case Core.Delta:
		st.SetDelta(st.GetDelta().AppendIfNotContains(f))
	case Core.Gamma:
		st.SetGamma(st.GetGamma().AppendIfNotContains(f))
	default:
		Glob.Anomaly("State", "Formula not recognized")
	}
}

/** Apply a sbstitution on a state
* TODO : remove old MM/MC
**/
func ApplySubstitution(st *State, saf Core.SubstAndForm) error {
	s := saf.GetSubst()
	err, ms := Core.MergeSubstAndForm(st.GetAppliedSubst(), saf.Copy())
	if err != nil {
		return err
	}

	st.SetAppliedSubst(ms)
	st.SetLastAppliedSubst(saf)
	st.SetLF(Core.ApplySubstitutionsOnFormAndTermsList(s, st.GetLF()))
	st.SetAtomic(Core.ApplySubstitutionsOnFormAndTermsList(s, st.GetAtomic()))
	st.SetAlpha(Core.ApplySubstitutionsOnFormAndTermsList(s, st.GetAlpha()))
	st.SetBeta(Core.ApplySubstitutionsOnFormAndTermsList(s, st.GetBeta()))
	st.SetDelta(Core.ApplySubstitutionsOnFormAndTermsList(s, st.GetDelta()))
	st.SetGamma(Core.ApplySubstitutionsOnFormAndTermsList(s, st.GetGamma()))
	st.SetMetaGen(Core.ApplySubstitutionOnMetaGenList(s, st.GetMetaGen()))

	st.SetTreePos(st.GetTreePos().MakeDataStruct(st.GetAtomic().ExtractForms(), true))
	st.SetTreeNeg(st.GetTreeNeg().MakeDataStruct(st.GetAtomic().ExtractForms(), false))

	return nil
}

/* TODO : remove and change - for write proof */
func (st *State) GetAllForms() Core.FormAndTermsList {
	res := Core.MakeEmptyFormAndTermsList()
	res = res.Merge(st.GetLF())
	res = res.Merge(st.GetAtomic())
	res = res.Merge(st.GetAlpha())
	res = res.Merge(st.GetBeta())
	res = res.Merge(st.GetDelta())
	res = res.Merge(st.GetGamma())
	return res
}
