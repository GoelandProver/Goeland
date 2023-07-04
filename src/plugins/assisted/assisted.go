package assisted

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/search"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

// Prints formulae relative to rules from a State. For terminal uses.
func PrintFormListFromState(st complextypes.State, id int) {
	fmt.Printf("\nState nº%d:\n", id)
	SubstsFound := st.GetSubstsFound()
	if len(SubstsFound) > 0 {
		fmt.Printf("FoundSubs : \n")
		for _, s := range SubstsFound {
			fmt.Printf("   └ %s\n", s.ToString())
		}
	}

	printRulesLine(" | X - Atomic : %s\n", st.GetAtomic())
	printRulesLine(" | A - Alpha : %s\n", st.GetAlpha())
	printRulesLine(" | B - Beta : %s\n", st.GetBeta())
	printRulesLine(" | D - Delta : %s\n", st.GetDelta())
	printRulesLine(" | G - Gamma : %s\n", st.GetGamma())

	if len(st.GetMetaGen()) > 0 {
		fmt.Printf(" | M - MetaGen : %s\n", basictypes.MetaGenListToString(st.GetMetaGen()))
	}
}

func printRulesLine(line string, fnts basictypes.FormAndTermsList) {
	if len(fnts) > 0 {
		fmt.Printf(line, fnts.ToString())
	}
}

// Selects a rule with formulae applicable.
func SelectRule(st complextypes.State) string {
	checker := 0
	var rule string
	for checker < 1 {
		fmt.Printf("Select a rule to apply ~> ")
		fmt.Scanf("%s", &rule)
		if ruleSynonymList[rule] == "M" {
			if st.CanReintroduce() && len(st.GetMetaGen()) > 0 {
				rule = "M"
				fmt.Printf("%s rule selected.\n", rule)
				fmt.Println("-------------------------")
				checker = 1
			} else {
				fmt.Printf("Error, M rule is empty or cannot reintroduce\n")
			}
		} else {
			if ruleSynonymList[rule] == "X" || ruleSynonymList[rule] == "A" || ruleSynonymList[rule] == "B" || ruleSynonymList[rule] == "D" || ruleSynonymList[rule] == "G" {
				rule = ruleSynonymList[rule]
				if rule == "X" && len(st.GetAtomic()) == 0 || rule == "A" && len(st.GetAlpha()) == 0 || rule == "B" && len(st.GetBeta()) == 0 || rule == "D" && len(st.GetDelta()) == 0 || rule == "G" && len(st.GetGamma()) == 0 {
					fmt.Printf("Error, %s rule does not have any formula. Please select another.\n", rule)
				} else {
					fmt.Println("-------------------------")
					checker = 1
				}
			} else {
				fmt.Printf("Error, select a valid rule to apply.\n")
			}
		}
	}
	return rule
}

// Given a string, returns the FormAndTermsList associated with that rule.
func GetFormulaeFromRule(rule string, st complextypes.State) basictypes.FormAndTermsList {
	var chosenFormulae basictypes.FormAndTermsList
	switch rule {
	case "X":
		chosenFormulae = st.GetAtomic()
	case "A":
		chosenFormulae = st.GetAlpha()
	case "B":
		chosenFormulae = st.GetBeta()
	case "D":
		chosenFormulae = st.GetDelta()
	case "G":
		chosenFormulae = st.GetGamma()
	case "M":
		metaGens := st.GetMetaGen()
		for _, metaGen := range metaGens {
			chosenFormulae = append(chosenFormulae, metaGen.GetForm())
		}
	}

	return chosenFormulae
}

// Listing formulae from FormAndTermsList with an index. Might be moved to utils.go later.
func listIndexedForms(forms basictypes.FormAndTermsList) {
	for i, s := range forms {
		fmt.Printf("[%d] %s\n", i, s.ToString())
	}
}

// Choose a formula from an indexed formula list.
func SelectFormula(forms basictypes.FormAndTermsList) int {
	fmt.Println()
	listIndexedForms(forms)

	isFormulaValid := false
	var choice int
	for !isFormulaValid {
		fmt.Printf("Select a formula for the rule to apply ~> ")
		fmt.Scanf("%d", &choice)
		if choice < len(forms) && choice >= 0 {
			fmt.Printf("You selected %s\n", forms[choice].ToString())
			isFormulaValid = true
			fmt.Println("-------------------------")
		} else {
			fmt.Printf("Error, please select a valid formula.\n")
		}
	}
	return choice
}

// Choose a formula from an indexed formula list.
func SelectSubstitution(substs []complextypes.SubstAndForm) int {
	fmt.Printf("Found closure rule with substitution that is used elsewhere, requires User choice.\n")
	fmt.Printf("Here is the list of possible substitutions (may contain duplicates):\n")
	for i, elem := range substs {
		fmt.Printf("[%d] %v\n", i, elem.ToString())
	}

	isSubstitutionValid := false
	var choice int
	for !isSubstitutionValid {
		fmt.Printf("Select a substitution ~> ")
		fmt.Scanf("%d", &choice)
		if choice < len(substs) && choice >= 0 {
			fmt.Printf("You selected %v substitution.\nIt will apply when a state will be updated.\n", substs[choice].ToString())
			isSubstitutionValid = true
			fmt.Println("-------------------------")
		} else {
			fmt.Printf("Error, please select a valid substitution.\n")
		}
	}
	return choice
}

func receive(father_id uint64, state1 complextypes.State, c search.Communication, new_atomics basictypes.FormAndTermsList, node_id int, original_node_id int, meta_to_reintroduce []int, ch chan Choice) (ruleVeritable string, indiceForm int, substitut complextypes.SubstAndForm) {
	select {
	case cas1 := <-recieveSubst:
		fmt.Printf("SUBST\n")
		complextypes.ApplySubstitution(&state1, cas1)
		receive(father_id, state1, c, new_atomics, node_id, original_node_id, meta_to_reintroduce, ch)
	case daChoice := <-ch:
		return daChoice.GetRule(), daChoice.GetForm(), daChoice.GetSubst()
	}
	return "", -1, complextypes.MakeEmptySubstAndForm()
}

var lock_choices sync.Mutex
var status []StatusElement

// Function to apply tabeau rules as we want, given string rule and int choice.
func ApplyRulesAssisted(father_id uint64, state1 complextypes.State, c search.Communication, new_atomics basictypes.FormAndTermsList, node_id int, original_node_id int, meta_to_reintroduce []int) {

	ch := make(chan Choice)
	var ruleVeritable string
	var indiceForm int
	var substitut complextypes.SubstAndForm

	lock_choices.Lock()
	thisStatus := MakeStatusElement(ch, state1)
	status = append(status, thisStatus)

	lock_choices.Unlock()
	Counter.Decrease()

	ruleVeritable, indiceForm, substitut = receive(father_id, state1, c, new_atomics, node_id, original_node_id, meta_to_reintroduce, ch)
	RemoveStatus(thisStatus.GetId())

	switch ruleVeritable {
	case "X":
		/**
		* Not yet complete for Atomics and reintroduction.
		**/
		foundOne := false
		listSubsts := [][]complextypes.SubstAndForm{}
		finalBool := true
		for _, f := range state1.GetAtomic() {
			global.PrintDebug("Assisted", fmt.Sprintf("##### Formula %v #####", f.ToString()))
			// Check if exists a contradiction after applying the substitution
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

		listSubsts2 := []complextypes.SubstAndForm{}
		for _, elem := range listSubsts {
			listSubsts2 = append(listSubsts2, elem...)
		}

		if !foundOne {
			fmt.Printf("No applicable rule in X. Re-adding myself to status as [%d]\n", thisStatus.GetId())
			status = append(status, thisStatus)
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
	case "A":
		global.PrintDebug("PS", "User chose Alpha rule")
		hdf := state1.GetAlpha()[indiceForm] // Gets the chosen formula
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

		state1.SetAlpha(append(state1.GetAlpha()[:indiceForm], state1.GetAlpha()[indiceForm+1:]...)) // Cuts the chosen formula from the slice
		result_forms := search.ApplyAlphaRules(hdf, &state1)
		state1.SetLF(result_forms)

		// Proof
		state1.SetCurrentProofFormula(hdf)
		id_children := global.IncrCptNode()
		state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
		state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

		Counter.Increase()
		go search.ProofSearch(father_id, state1, c, substitut, id_children, original_node_id, []int{})
	case "B":
		global.PrintDebug("PS", "User chose Beta rule")
		hdf := state1.GetBeta()[0]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
		reslf := search.ApplyBetaRules(hdf, &state1) // DONC RESLF c'est RES de ApplyBetaRules
		child_id_list := []int{}

		// JE PRODUIS LES FILS X ET Y

		// Proof

		state1.SetCurrentProofFormula(hdf)

		int_form_list_list := []proof.IntFormAndTermsList{}
		for _, fl := range reslf {
			int_form_list_list = append(int_form_list_list, proof.MakeIntFormAndTermsList(global.IncrCptNode(), fl))
		}
		state1.SetCurrentProofResultFormulas(int_form_list_list)
		state1.SetBTOnFormulas(false)

		// For each child, launch a goroutine, stock its channel, and wait an answer
		var chan_tab []search.Communication

		// Good or not ?
		fmt.Printf("This rule branches. They have generated processus :\n")
		for _, feur := range int_form_list_list {
			fmt.Printf(" * %s \n", feur.ToString())
		}
		fmt.Printf("...Adding them to status list.\n\n")

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
	case "D":
		global.PrintDebug("PS", "User chose Delta rule")
		hdf := state1.GetDelta()[indiceForm]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

		state1.SetDelta(append(state1.GetDelta()[:indiceForm], state1.GetDelta()[indiceForm+1:]...))
		result_forms := search.ApplyDeltaRules(hdf, &state1)
		state1.SetLF(result_forms)

		// Proof
		state1.SetCurrentProofFormula(hdf)
		id_children := global.IncrCptNode()
		state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
		state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

		Counter.Increase()
		go search.ProofSearch(father_id, state1, c, substitut, id_children, original_node_id, []int{})
	case "G":
		global.PrintDebug("PS", "User chose Gamma rule")
		hdf := state1.GetGamma()[indiceForm]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
		state1.SetGamma(append(state1.GetGamma()[:indiceForm], state1.GetGamma()[indiceForm+1:]...))

		// Update MetaGen
		index, new_meta_gen := basictypes.GetIndexMetaGenList(hdf, state1.GetMetaGen())
		state1.SetMetaGen(new_meta_gen)
		new_lf, new_metas := search.ApplyGammaRules(hdf, index, &state1)
		state1.SetLF(new_lf)
		state1.SetMC(append(state1.GetMC(), new_metas...))
		if global.IsDestructive() {
			state1.SetN(state1.GetN() - 1)
		}

		// Proof
		state1.SetCurrentProofFormula(hdf)
		id_children := global.IncrCptNode()
		state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, new_lf)})
		state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

		Counter.Increase()
		go search.ProofSearch(father_id, state1, c, substitut, id_children, original_node_id, []int{})
	case "M":
		fmt.Printf("case M\n")
		// Counter.Increase()
	}
}
