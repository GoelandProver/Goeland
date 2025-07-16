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

	"github.com/GoelandProver/Goeland/Search"

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Unif"
)

func ApplyRulesAssisted(fatherId uint64, state Search.State, c Search.Communication, newAtomics Core.FormAndTermsList, nodeID int, originalNodeId int, metaToReintroduce []int) {

	ch := make(chan Choice)

	thisStatus := makeStatusElement(ch, &state)
	addStatusElement(thisStatus)
	assistedCounter.Decrement()

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

func applyAtomicRule(state Search.State, fatherId uint64, c Search.Communication, nodeId int, originalNodeId int, substitut Core.SubstAndForm, metaToReintroduce []int) {
	foundOne := false
	listSubsts := [][]Core.SubstAndForm{}
	finalBool := true
	for _, f := range state.GetAtomic() {
		Glob.PrintDebug("Assisted", fmt.Sprintf("##### Formula %v #####", f.ToString()))

		clos_res_after_apply_subst, subst_after_apply_subst := Search.ApplyClosureRules(f.GetForm(), &state)
		if clos_res_after_apply_subst {
			boolSubsts, resSubsts := searchAlgo.ManageClosureRule(fatherId, &state, c, Unif.CopySubstList(subst_after_apply_subst), f.Copy(), nodeId, originalNodeId)
			if !boolSubsts {
				finalBool = false
			}
			listSubsts = append(listSubsts, resSubsts)
			foundOne = true
		}
	}

	if !foundOne {
		Glob.PrintDebug("ApplyAtomicRule", "No valid substitution found. This state will be copied and put back in the list.")
		assistedCounter.Increment()
		go searchAlgo.ProofSearch(fatherId, state, c, substitut, nodeId, originalNodeId, metaToReintroduce, false)
	} else {
		listSubsts2 := []Core.SubstAndForm{}
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

func applyAlphaRule(state Search.State, indiceForm int, fatherId uint64, c Search.Communication, substitut Core.SubstAndForm, originalNodeId int) {
	Glob.PrintDebug("PS", "User chose Alpha rule")
	hdf := state.GetAlpha()[indiceForm]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	state.SetAlpha(append(state.GetAlpha()[:indiceForm], state.GetAlpha()[indiceForm+1:]...))
	result_forms := Search.ApplyAlphaRules(hdf, &state)
	state.SetLF(result_forms)

	state.SetCurrentProofFormula(hdf)
	id_children := Glob.IncrCptNode()
	state.SetCurrentProofResultFormulas([]Search.IntFormAndTermsList{Search.MakeIntFormAndTermsList(id_children, result_forms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	assistedCounter.Increment()
	go searchAlgo.ProofSearch(fatherId, state, c, substitut, id_children, originalNodeId, []int{}, false)
}

func applyBetaRule(state Search.State, substitut Core.SubstAndForm, c Search.Communication, fatherId uint64, nodeId int, originalNodeId int, metaToReintroduce []int) {
	Glob.PrintDebug("PS", "User chose Beta rule")
	hdf := state.GetBeta()[0]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := Search.ApplyBetaRules(hdf, &state)
	child_id_list := []int{}

	state.SetCurrentProofFormula(hdf)

	int_form_list_list := []Search.IntFormAndTermsList{}
	for _, fl := range reslf {
		int_form_list_list = append(int_form_list_list, Search.MakeIntFormAndTermsList(Glob.IncrCptNode(), fl))
	}
	state.SetCurrentProofResultFormulas(int_form_list_list)
	state.SetBTOnFormulas(false)

	var chan_tab []Search.Communication

	for range int_form_list_list {
		assistedCounter.Increment()
	}

	for _, fl := range int_form_list_list {
		st_copy := state.Copy()
		st_copy.SetBeta(state.GetBeta()[1:])
		st_copy.SetLF(fl.GetFL())
		child_id_list = append(child_id_list, fl.GetI())

		if Glob.IsDestructive() {
			c_child := Search.MakeCommunication(make(chan bool), make(chan Search.Result))
			chan_tab = append(chan_tab, c_child)
			go searchAlgo.ProofSearch(Glob.GetGID(), st_copy, c_child, substitut, fl.GetI(), fl.GetI(), []int{}, false)
		} else {
			go searchAlgo.ProofSearch(Glob.GetGID(), st_copy, c, substitut, fl.GetI(), fl.GetI(), []int{}, false)
		}

		Glob.IncrGoRoutine(1)
		Glob.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}

	searchAlgo.DoEndManageBeta(fatherId, state, c, chan_tab, nodeId, originalNodeId, child_id_list, metaToReintroduce)
}

func applyDeltaRule(state Search.State, indiceForm int, fatherId uint64, c Search.Communication, substitut Core.SubstAndForm, originalNodeId int) {
	Glob.PrintDebug("PS", "User chose Delta rule")
	hdf := state.GetDelta()[indiceForm]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	state.SetDelta(append(state.GetDelta()[:indiceForm], state.GetDelta()[indiceForm+1:]...))
	result_forms := Search.ApplyDeltaRules(hdf, &state)
	state.SetLF(result_forms)

	state.SetCurrentProofFormula(hdf)
	id_children := Glob.IncrCptNode()
	state.SetCurrentProofResultFormulas([]Search.IntFormAndTermsList{Search.MakeIntFormAndTermsList(id_children, result_forms)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	assistedCounter.Increment()
	go searchAlgo.ProofSearch(fatherId, state, c, substitut, id_children, originalNodeId, []int{}, false)
}

func applyGammaRule(state Search.State, indiceForm int, fatherId uint64, c Search.Communication, substitut Core.SubstAndForm, originalNodeId int) {
	Glob.PrintDebug("PS", "User chose Gamma rule")
	hdf := state.GetGamma()[indiceForm]
	Glob.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetGamma(append(state.GetGamma()[:indiceForm], state.GetGamma()[indiceForm+1:]...))

	index, new_meta_gen := Core.GetIndexMetaGenList(hdf, state.GetMetaGen())
	state.SetMetaGen(new_meta_gen)
	new_lf, new_metas := Search.ApplyGammaRules(hdf, index, &state)
	state.SetLF(new_lf)

	newMC := state.GetMC().Copy()
	newMC = newMC.Union(new_metas)
	state.SetMC(newMC)

	if Glob.IsDestructive() {
		state.SetN(state.GetN() - 1)
	}

	state.SetCurrentProofFormula(hdf)
	id_children := Glob.IncrCptNode()
	state.SetCurrentProofResultFormulas([]Search.IntFormAndTermsList{Search.MakeIntFormAndTermsList(id_children, new_lf)})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	assistedCounter.Decrement()
	go searchAlgo.ProofSearch(fatherId, state, c, substitut, id_children, originalNodeId, []int{}, false)
}

func applyReintroductionRule(state Search.State, fatherId uint64, c Search.Communication, originalNodeId int, metaToReintroduce []int, chosenReintro int) {
	Glob.PrintDebug("PS", "Reintroduction")
	Glob.PrintDebug("PS", fmt.Sprintf("Meta to reintroduce : %s", Glob.IntListToString(metaToReintroduce)))
	newMetaGen := state.GetMetaGen()
	reslf := Core.ReintroduceMeta(&newMetaGen, chosenReintro, state.GetN())
	Glob.PrintDebug("PS", fmt.Sprintf("Reintroduce the formula : %s", reslf.ToString()))
	state.SetLF(Core.MakeSingleElementFormAndTermList(reslf))

	state.SetMetaGen(newMetaGen)

	childId := Glob.IncrCptNode()
	state.SetCurrentProofRule("Reintroduction")
	state.SetCurrentProofRuleName("Reintroduction")
	state.SetCurrentProofFormula(reslf)
	state.SetCurrentProofResultFormulas([]Search.IntFormAndTermsList{Search.MakeIntFormAndTermsList(childId, Core.MakeSingleElementFormAndTermList(reslf))})
	state.SetProof(append(state.GetProof(), state.GetCurrentProof()))

	assistedCounter.Increment()
	go searchAlgo.ProofSearch(fatherId, state, c, Core.MakeEmptySubstAndForm(), childId, originalNodeId, metaToReintroduce, false)
}
