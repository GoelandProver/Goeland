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
package assisted

import (
	"fmt"

	"github.com/GoelandProver/Goeland/search"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

func ApplyRulesAssisted(fatherId uint64, state complextypes.State, c search.Communication, newAtomics basictypes.FormAndTermsList, nodeID int, originalNodeId int, metaToReintroduce []int) {

	ch := make(chan Choice)

	thisStatus := makeStatusElement(ch, &state)
	addStatusElement(thisStatus)
	Counter.decrease()

	choice := thisStatus.receiveChoice()
	chosenRule, chosenFormIndex, chosenSubstitute, chosenReintro := choice.getRule(), choice.getForm(), choice.getSubst(), choice.getReintro()
	removeStatusElement(thisStatus.getId())

	switch chosenRule {
	case "X":
		applyAtomicRule(state, fatherId, c, nodeID, originalNodeId, chosenSubstitute, metaToReintroduce)
	case "A":
		applyAlphaRule(state, chosenFormIndex, fatherId, c, chosenSubstitute, originalNodeId)
	case "B":
		applyBetaRule(state, chosenSubstitute, c, fatherId, nodeID, originalNodeId, metaToReintroduce)
	case "D":
		applyDeltaRule(state, chosenFormIndex, fatherId, c, chosenSubstitute, originalNodeId)
	case "G":
		applyGammaRule(state, chosenFormIndex, fatherId, c, chosenSubstitute, originalNodeId)
	case "R":
		applyReintroductionRule(state, fatherId, c, originalNodeId, metaToReintroduce, chosenReintro)
	}
}

func applyAtomicRule(state complextypes.State, fatherId uint64, c search.Communication, nodeId int, originalNodeId int, substitut complextypes.SubstAndForm, metaToReintroduce []int) {
	foundOne := false
	listSubsts := [][]complextypes.SubstAndForm{}
	finalBool := true
	for _, f := range state.GetAtomic() {
		global.PrintDebug("Assisted", fmt.Sprintf("##### Formula %v #####", f.ToString()))

		clos_res_after_apply_subst, subst_after_apply_subst := search.ApplyClosureRules(f.GetForm(), &state)
		if clos_res_after_apply_subst {
			boolSubsts, resSubsts := search.UsedSearch.ManageClosureRule(fatherId, &state, c, treetypes.CopySubstList(subst_after_apply_subst), f.Copy(), nodeId, originalNodeId)
			if !boolSubsts {
				finalBool = false
			}
			listSubsts = append(listSubsts, resSubsts)
			foundOne = true
		}
	}

	if !foundOne {
		fmt.Println("No valid substitution found. This state will be copied and put back in the list.")
		Counter.Increase()
		go search.UsedSearch.ProofSearch(fatherId, state, c, substitut, nodeId, originalNodeId, metaToReintroduce)
	} else {
		listSubsts2 := []complextypes.SubstAndForm{}
		for _, elem := range listSubsts {
			listSubsts2 = append(listSubsts2, elem...)
		}

		if len(listSubsts2) > 0 && finalBool {
			subChoice := selectSubstitution(listSubsts2)
			applySubstsAssisted(listSubsts2[subChoice])
		}

		if len(status) > 0 {
			nextStep <- true
		} else {
			nextStep <- false
		}
	}
}

func applyAlphaRule(state complextypes.State, indiceForm int, fatherId uint64, c search.Communication, substitut complextypes.SubstAndForm, originalNodeId int) {
	global.PrintDebug("PS", "User chose Alpha rule")
	hdf := state.GetAlpha()[indiceForm]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	state.SetAlpha(append(state.GetAlpha()[:indiceForm], state.GetAlpha()[indiceForm+1:]...))
	result_forms := search.ApplyAlphaRules(hdf, &state)
	state.SetLF(result_forms)

	state.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	Counter.Increase()
	go search.UsedSearch.ProofSearch(fatherId, state, c, substitut, id_children, originalNodeId, []int{})
}

func applyBetaRule(state complextypes.State, substitut complextypes.SubstAndForm, c search.Communication, fatherId uint64, nodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("PS", "User chose Beta rule")
	hdf := state.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := search.ApplyBetaRules(hdf, &state)
	child_id_list := []int{}

	state.SetCurrentProofFormula(hdf)

	int_form_list_list := []proof.IntFormAndTermsList{}
	for _, fl := range reslf {
		int_form_list_list = append(int_form_list_list, proof.MakeIntFormAndTermsList(global.IncrCptNode(), fl))
	}
	state.SetCurrentProofResultFormulas(int_form_list_list)
	state.SetBTOnFormulas(false)

	var chan_tab []search.Communication

	for range int_form_list_list {
		Counter.Increase()
	}

	for _, fl := range int_form_list_list {
		st_copy := state.Copy()
		st_copy.SetBeta(state.GetBeta()[1:])
		st_copy.SetLF(fl.GetFL())
		child_id_list = append(child_id_list, fl.GetI())

		if global.IsDestructive() {
			c_child := search.MakeCommunication(make(chan bool), make(chan search.Result))
			chan_tab = append(chan_tab, c_child)
			go search.UsedSearch.ProofSearch(global.GetGID(), st_copy, c_child, substitut, fl.GetI(), fl.GetI(), []int{})
		} else {
			go search.UsedSearch.ProofSearch(global.GetGID(), st_copy, c, substitut, fl.GetI(), fl.GetI(), []int{})
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}

	search.UsedSearch.DoEndManageBeta(fatherId, state, c, chan_tab, nodeId, originalNodeId, child_id_list, metaToReintroduce)
}

func applyDeltaRule(state complextypes.State, indiceForm int, fatherId uint64, c search.Communication, substitut complextypes.SubstAndForm, originalNodeId int) {
	global.PrintDebug("PS", "User chose Delta rule")
	hdf := state.GetDelta()[indiceForm]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	state.SetDelta(append(state.GetDelta()[:indiceForm], state.GetDelta()[indiceForm+1:]...))
	result_forms := search.ApplyDeltaRules(hdf, &state)
	state.SetLF(result_forms)

	state.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	Counter.Increase()
	go search.UsedSearch.ProofSearch(fatherId, state, c, substitut, id_children, originalNodeId, []int{})
}

func applyGammaRule(state complextypes.State, indiceForm int, fatherId uint64, c search.Communication, substitut complextypes.SubstAndForm, originalNodeId int) {
	global.PrintDebug("PS", "User chose Gamma rule")
	hdf := state.GetGamma()[indiceForm]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetGamma(append(state.GetGamma()[:indiceForm], state.GetGamma()[indiceForm+1:]...))

	index, new_meta_gen := basictypes.GetIndexMetaGenList(hdf, state.GetMetaGen())
	state.SetMetaGen(new_meta_gen)
	new_lf, new_metas := search.ApplyGammaRules(hdf, index, &state)
	state.SetLF(new_lf)
	state.SetMC(append(state.GetMC(), new_metas...))
	if global.IsDestructive() {
		state.SetN(state.GetN() - 1)
	}

	state.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, new_lf)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	Counter.Increase()
	go search.UsedSearch.ProofSearch(fatherId, state, c, substitut, id_children, originalNodeId, []int{})
}

func applyReintroductionRule(state complextypes.State, fatherId uint64, c search.Communication, originalNodeId int, metaToReintroduce []int, chosenReintro int) {
	global.PrintDebug("PS", "Reintroduction")
	global.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce : %s", global.IntListToString(metaToReintroduce)))
	newMetaGen := state.GetMetaGen()
	reslf := basictypes.ReintroduceMeta(&newMetaGen, chosenReintro, state.GetN())
	global.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	state.SetLF(basictypes.MakeSingleElementFormAndTermList(reslf))

	state.SetMetaGen(newMetaGen)

	childId := global.IncrCptNode()
	state.SetCurrentProofRule("Reintroduction")
	state.SetCurrentProofRuleName("Reintroduction")
	state.SetCurrentProofFormula(reslf)
	state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, basictypes.MakeSingleElementFormAndTermList(reslf))})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	Counter.Increase()
	go search.UsedSearch.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, metaToReintroduce)
}
