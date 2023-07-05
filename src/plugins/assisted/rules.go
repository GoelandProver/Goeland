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

// Function to apply tabeau rules as we want, given string rule and int choice.
func ApplyRulesAssisted(father_id uint64, state1 complextypes.State, c search.Communication, new_atomics basictypes.FormAndTermsList, node_id int, original_node_id int, meta_to_reintroduce []int) {

	ch := make(chan Choice)
	var ruleVeritable string
	var indiceForm int
	var substitut complextypes.SubstAndForm

	thisStatus := MakeStatusElement(ch, state1)
	AddStatusElement(&thisStatus)
	Counter.Decrease()

	ruleVeritable, indiceForm, substitut = receiveChoice(father_id, state1, c, new_atomics, node_id, original_node_id, meta_to_reintroduce, ch)
	RemoveStatusElement(thisStatus.GetId())

	switch ruleVeritable {
	case "X":
		applyAtomicRule(state1, father_id, c, node_id, original_node_id, substitut, meta_to_reintroduce)
	case "A":
		applyAlphaRule(state1, indiceForm, father_id, c, substitut, original_node_id)
	case "B":
		applyBetaRule(state1, substitut, c, father_id, node_id, original_node_id, meta_to_reintroduce)
	case "D":
		applyDeltaRule(state1, indiceForm, father_id, c, substitut, original_node_id)
	case "G":
		applyGammaRule(state1, indiceForm, father_id, c, substitut, original_node_id)
	case "M":
		fmt.Printf("case M\n")
		// Counter.Increase()
	}
}

/**
* Not yet complete for Atomics and reintroduction.
**/
func applyAtomicRule(state1 complextypes.State, father_id uint64, c search.Communication, node_id int, original_node_id int, substitut complextypes.SubstAndForm, meta_to_reintroduce []int) {
	foundOne := false
	listSubsts := [][]complextypes.SubstAndForm{}
	finalBool := true
	for _, f := range state1.GetAtomic() {
		global.PrintDebug("Assisted", fmt.Sprintf("##### Formula %v #####", f.ToString()))

		clos_res_after_apply_subst, subst_after_apply_subst := search.ApplyClosureRules(f.GetForm(), &state1)
		if clos_res_after_apply_subst {
			boolSubsts, resSubsts := search.ManageClosureRule(father_id, &state1, c, treetypes.CopySubstList(subst_after_apply_subst), f.Copy(), node_id, original_node_id)
			if !boolSubsts {
				finalBool = false
			}
			listSubsts = append(listSubsts, resSubsts)
			foundOne = true
		}
	}

	if !foundOne {
		Counter.Increase()
		go search.ProofSearch(father_id, state1, c, substitut, node_id, original_node_id, meta_to_reintroduce)
	} else {
		listSubsts2 := []complextypes.SubstAndForm{}
		for _, elem := range listSubsts {
			listSubsts2 = append(listSubsts2, elem...)
		}

		if len(listSubsts2) > 0 && finalBool {
			subChoice := SelectSubstitution(listSubsts2)
			ApplySubstsAssisted(listSubsts2[subChoice])
			HasChanged = true
		}

		if len(status) > 0 {
			nextStep <- true
		} else {
			nextStep <- false
		}
	}
}

func applyAlphaRule(state1 complextypes.State, indiceForm int, father_id uint64, c search.Communication, substitut complextypes.SubstAndForm, original_node_id int) {
	global.PrintDebug("PS", "User chose Alpha rule")
	hdf := state1.GetAlpha()[indiceForm]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	state1.SetAlpha(append(state1.GetAlpha()[:indiceForm], state1.GetAlpha()[indiceForm+1:]...))
	result_forms := search.ApplyAlphaRules(hdf, &state1)
	state1.SetLF(result_forms)

	state1.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
	state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

	Counter.Increase()
	go search.ProofSearch(father_id, state1, c, substitut, id_children, original_node_id, []int{})
}

func applyBetaRule(state1 complextypes.State, substitut complextypes.SubstAndForm, c search.Communication, father_id uint64, node_id int, original_node_id int, meta_to_reintroduce []int) {
	global.PrintDebug("PS", "User chose Beta rule")
	hdf := state1.GetBeta()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	reslf := search.ApplyBetaRules(hdf, &state1)
	child_id_list := []int{}

	state1.SetCurrentProofFormula(hdf)

	int_form_list_list := []proof.IntFormAndTermsList{}
	for _, fl := range reslf {
		int_form_list_list = append(int_form_list_list, proof.MakeIntFormAndTermsList(global.IncrCptNode(), fl))
	}
	state1.SetCurrentProofResultFormulas(int_form_list_list)
	state1.SetBTOnFormulas(false)

	var chan_tab []search.Communication

	fmt.Printf("This rule branches. They have generated processus :\n")
	for _, feur := range int_form_list_list {
		fmt.Printf(" * %s \n", feur.ToString())
	}
	fmt.Printf("...Adding them to states list.\n\n")

	for range int_form_list_list {
		Counter.Increase()
	}

	for _, fl := range int_form_list_list {
		st_copy := state1.Copy()
		st_copy.SetBeta(state1.GetBeta()[1:])
		st_copy.SetLF(fl.GetFL())
		child_id_list = append(child_id_list, fl.GetI())

		if global.IsDestructive() {
			c_child := search.Communication{Quit: make(chan bool), Result: make(chan search.Result)}
			chan_tab = append(chan_tab, c_child)
			go search.ProofSearch(global.GetGID(), st_copy, c_child, substitut, fl.GetI(), fl.GetI(), []int{})
		} else {
			go search.ProofSearch(global.GetGID(), st_copy, c, substitut, fl.GetI(), fl.GetI(), []int{})
		}

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

	}
	if global.IsDestructive() {
		search.WaitChildren(search.MakeWcdArgs(father_id, state1, c, chan_tab, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, node_id, original_node_id, false, child_id_list, meta_to_reintroduce))
	} else {
		global.PrintDebug("PS", "Die")
	}
}

func applyDeltaRule(state1 complextypes.State, indiceForm int, father_id uint64, c search.Communication, substitut complextypes.SubstAndForm, original_node_id int) {
	global.PrintDebug("PS", "User chose Delta rule")
	hdf := state1.GetDelta()[indiceForm]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	state1.SetDelta(append(state1.GetDelta()[:indiceForm], state1.GetDelta()[indiceForm+1:]...))
	result_forms := search.ApplyDeltaRules(hdf, &state1)
	state1.SetLF(result_forms)

	state1.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
	state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

	Counter.Increase()
	go search.ProofSearch(father_id, state1, c, substitut, id_children, original_node_id, []int{})
}

func applyGammaRule(state1 complextypes.State, indiceForm int, father_id uint64, c search.Communication, substitut complextypes.SubstAndForm, original_node_id int) {
	global.PrintDebug("PS", "User chose Gamma rule")
	hdf := state1.GetGamma()[indiceForm]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state1.SetGamma(append(state1.GetGamma()[:indiceForm], state1.GetGamma()[indiceForm+1:]...))

	index, new_meta_gen := basictypes.GetIndexMetaGenList(hdf, state1.GetMetaGen())
	state1.SetMetaGen(new_meta_gen)
	new_lf, new_metas := search.ApplyGammaRules(hdf, index, &state1)
	state1.SetLF(new_lf)
	state1.SetMC(append(state1.GetMC(), new_metas...))
	if global.IsDestructive() {
		state1.SetN(state1.GetN() - 1)
	}

	state1.SetCurrentProofFormula(hdf)
	id_children := global.IncrCptNode()
	state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, new_lf)})
	state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

	Counter.Increase()
	go search.ProofSearch(father_id, state1, c, substitut, id_children, original_node_id, []int{})
}

func receiveChoice(father_id uint64, state1 complextypes.State, c search.Communication, new_atomics basictypes.FormAndTermsList, node_id int, original_node_id int, meta_to_reintroduce []int, ch chan Choice) (ruleVeritable string, indiceForm int, substitut complextypes.SubstAndForm) {
	select {
	case substitution := <-recieveSubst:
		complextypes.ApplySubstitution(&state1, substitution)
		receiveChoice(father_id, state1, c, new_atomics, node_id, original_node_id, meta_to_reintroduce, ch)
	case choice := <-ch:
		return choice.GetRule(), choice.GetForm(), choice.GetSubst()
	}
	return "", -1, complextypes.MakeEmptySubstAndForm()
}
