package assisted

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/search"

	// "fyne.io/fyne/v2"
	// "fyne.io/fyne/v2/container"
	// "fyne.io/fyne/v2/widget"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

// Used to lock for display and fmt.Scanf() purposes
var lock_choices sync.Mutex

// May be outdated with the addition of more prints
var ruleList = map[string]string{
	"Atomic": "X",
	"Axiom":  "X",
	"X":      "X",
	"⦾":      "X",
	"x":      "X",

	"Alpha": "A",
	"A":     "A",
	"α":     "A",
	"a":     "A",

	"Beta": "B",
	"B":    "B",
	"β":    "B",
	"b":    "B",

	"Delta": "D",
	"D":     "D",
	"δ":     "D",
	"d":     "D",

	"Gamma": "G",
	"G":     "G",
	"γ":     "G",
	"g":     "G",

	"MetaGen": "M",
	"M":       "M",
	"m":       "M",
	"MG":      "M",
	"mg":      "M",
	"Meta":    "M",
}

/** WINDOW ASSETS NOTES : 06/16/2023
* All parts of code related to visual functionnal window has been put into comments, the reason behind that
* is the time that it would take to create a fully functionnal window, with dynamic tree visualisation, zooming
* though it and its communication with goroutines would not have been implemented within the time I was given.
*
* Maybe hello to DymDym that may have to get it done later !
**/

var chRule = make(chan string, 1)
var chFormula = make(chan int, 1)

// var MainWindow fyne.Window // Keep the window in a global variable, so that we can update it and no need to pass it through function arguments.
var state = make(chan complextypes.State)

/*
func SendChMain(chMain chan bool) {
	chMain <- true
}
*/

// Prints formulae relative to rules from a State. For terminal uses.
func PrintFormListFromState(st complextypes.State) {
	fmt.Printf("Here is the content of the state :\n")
	fmt.Printf(" │ FoundSubs : \n")
	SubstsFound := st.GetSubstsFound()
	for _, s := range SubstsFound {
		fmt.Printf("	└ %s\n", s.ToString())
	}
	fmt.Printf(" │ ⦾ Atomic : %s\n", st.GetAtomic().ToString())
	fmt.Printf(" │ α Alpha : %s\n", st.GetAlpha().ToString())
	fmt.Printf(" │ β Beta : %s\n", st.GetBeta().ToString())
	fmt.Printf(" │ δ Delta : %s\n", st.GetDelta().ToString())
	fmt.Printf(" │ γ Gamma : %s\n", st.GetGamma().ToString())
	fmt.Printf(" └ MetaGen : %s\n", basictypes.MetaGenListToString(st.GetMetaGen()))
}

// Selects a rule with formulae applicable.
func ChooseRule(st complextypes.State) string {
	checker := 0
	var rule string
	for checker < 1 {
		fmt.Scanf("%s", &rule)
		if ruleList[rule] == "M" {
			if st.CanReintroduce() && len(st.GetMetaGen()) > 0 {
				rule = "M"
				fmt.Printf("%s rule selected. Please choose a formula for the rule to apply.\n", rule)
				checker = 1
			} else {
				fmt.Printf("Error, M rule is empty or cannot reintroduce\n")
			}
		} else {
			if ruleList[rule] == "X" || ruleList[rule] == "A" || ruleList[rule] == "B" || ruleList[rule] == "D" || ruleList[rule] == "G" {
				rule = ruleList[rule]
				if rule == "X" && len(st.GetAtomic()) == 0 || rule == "A" && len(st.GetAlpha()) == 0 || rule == "B" && len(st.GetBeta()) == 0 || rule == "D" && len(st.GetDelta()) == 0 || rule == "G" && len(st.GetGamma()) == 0 {
					fmt.Printf("Error, %s rule does not have any formula. Please select another.\n", rule)
				} else {
					fmt.Printf("%s rule selected. Please choose a formula for the rule to apply.\n", rule)
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
func ChooseFormulae(rule string, st complextypes.State) basictypes.FormAndTermsList {
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
		list := st.GetMetaGen()
		var listeLaVraie basictypes.FormAndTermsList

		for _, UwU := range list {
			listeLaVraie = append(listeLaVraie, UwU.GetForm())
		}

		chosenFormulae = listeLaVraie
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
func ChooseFormula(forms basictypes.FormAndTermsList) int {
	listIndexedForms(forms)

	checker1 := 0
	var choice int
	for checker1 < 1 {
		fmt.Scanf("%d", &choice)
		if choice < len(forms) && choice >= 0 {
			fmt.Printf("You chose %s formula.\n", forms[choice].ToString())
			checker1 = 1
		} else {
			fmt.Printf("Error, please choose an existing formula.\n")
		}
	}
	return choice
}

/*
// Updates the window with applicable rules and their formulae.
func Window(st complextypes.State) {
	fmt.Printf("Je suis dans Window\n")
	items := initRuleList(st)
	fmt.Printf("Je suis dans Window, j'ai créé items %s\n", items)
	list := widget.NewList(
		func() int {
			return len(items)
		},
		func() fyne.CanvasObject {
			return widget.NewLabel("")
		},
		func(index int, obj fyne.CanvasObject) {
			if label, ok := obj.(*widget.Label); ok {
				label.SetText(items[index])
			}
		},
	)

	list.OnSelected = func(index int) {
		println("Élément sélectionné :", items[index])
		WindowForms(items[index][0], st)
	}

	scrollContainer := container.NewVScroll(list)
	MainWindow.SetContent(scrollContainer)
}

// Updates the window with a list of formulae.
func WindowForms(char byte, st complextypes.State) {
	global.PrintDebug("SBS", fmt.Sprintf("Entering formula selection"))
	items := []string{}

	if char == 88 { // X
		for _, form := range st.GetAtomic() {
			items = append(items, form.ToString())
			chRule <- "X"
		}
	}
	if char == 65 { // A
		for _, form := range st.GetAlpha() {
			items = append(items, form.ToString())
			chRule <- "A"
		}
	}
	if char == 66 { // B
		for _, form := range st.GetBeta() {
			items = append(items, form.ToString())
			chRule <- "B"
		}
	}
	if char == 68 { // D
		for _, form := range st.GetDelta() {
			items = append(items, form.ToString())
			chRule <- "D"
		}
	}
	if char == 61 { // G
		for _, form := range st.GetGamma() {
			items = append(items, form.ToString())
			chRule <- "G"
		}
	}

	global.PrintDebug("SBS", fmt.Sprintf("Try to modify displayed list..."))
	list := widget.NewList(
		func() int {
			return len(items)
		},
		func() fyne.CanvasObject {
			return widget.NewLabel("")
		},
		func(index int, obj fyne.CanvasObject) {
			if label, ok := obj.(*widget.Label); ok {
				label.SetText(items[index])
			}
		},
	)
	global.PrintDebug("SBS", fmt.Sprintf("List modified!"))

	list.OnSelected = func(index int) {
		println("Formule sélectionnée :", items[index])
		// Envoyer le choix de la selection au applyRuleAssisted
		chFormula <- index
		fmt.Printf("Coucou ! chFormula channel passé\n")
		// Recuperer le state de début de applyRuleAssisted
		//search.DoCorrectApplyRules(father_id, st, c, atomics_for_dmt, node_id, original_node_id, meta_to_reintroduce, chFyne)
	}

	scrollContainer := container.NewVScroll(list)
	MainWindow.SetContent(scrollContainer)

}

// Mmh subject to changes.
func initRuleList(st complextypes.State) []string {
	items := []string{}
	str := ""
	if len(st.GetAtomic()) > 0 {
		str = "X Atomic : "
		str = concatenateFormsToString(str, st.GetAtomic())
	}
	if len(st.GetAlpha()) > 0 {
		str = "A Alpha : "
		str = concatenateFormsToString(str, st.GetAlpha())
	}
	if len(st.GetBeta()) > 0 {
		str = "B Beta : "
		str = concatenateFormsToString(str, st.GetBeta())
	}
	if len(st.GetDelta()) > 0 {
		str = "D Delta : "
		str = concatenateFormsToString(str, st.GetDelta())
	}
	if len(st.GetGamma()) > 0 {
		str = "G Gamma : "
		str = concatenateFormsToString(str, st.GetGamma())
	}
	items = append(items, str)
	return items
}

func concatenateFormsToString(str string, forms basictypes.FormAndTermsList) string {
	for _, s := range forms {
		str += s.ToString() + ", "
	}
	return str
}
*/

// Function to apply tabeau rules as we want, given string rule and int choice.
func ApplyRulesAssisted(father_id uint64, state1 complextypes.State, c search.Communication, new_atomics basictypes.FormAndTermsList, node_id int, original_node_id int, meta_to_reintroduce []int, chFyne chan complextypes.State) {
	lock_choices.Lock()

	// Updates the window with the current state. Can only be done there because
	// ApplyRulesAssisted redefines DoCorrectApplyRules in search_destructive.go
	//Window(state1)

	// Prints the state to the terminal
	PrintFormListFromState(state1)
	fmt.Printf("Please, choose a rule you would like to apply (X, A, B, D, G)...\n")
	ruleVeritable := ChooseRule(state1)
	choice := ChooseFormula(ChooseFormulae(ruleVeritable, state1))
	lock_choices.Unlock()

	// Attends le choix fait par la fenetre
	//rule := <-chRule
	//choice := <-chFormula

	switch ruleVeritable {
	case "X":
		/**
		* Not yet complete for Atomics and reintroduction.
		**/
		global.PrintDebug("PS", "User chose Atomic rule")
		hdf := state1.GetAtomic()[choice]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

		state1.SetAtomic(append(state1.GetAtomic()[:choice], state1.GetAtomic()[choice+1:]...))
		// result_forms := applyAtomicRules(hdf, &state1) ??
		// state1.SetLF(result_forms)
	case "A":
		global.PrintDebug("PS", "User chose Alpha rule")
		hdf := state1.GetAlpha()[choice] // Gets the chosen formula
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

		state1.SetAlpha(append(state1.GetAlpha()[:choice], state1.GetAlpha()[choice+1:]...)) // Cuts the chosen formula from the slice
		result_forms := search.ApplyAlphaRules(hdf, &state1)
		state1.SetLF(result_forms)

		// Proof
		state1.SetCurrentProofFormula(hdf)
		id_children := global.IncrCptNode()
		state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
		state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

		search.ProofSearch(father_id, state1, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, []int{}, chFyne)
	case "B":
		global.PrintDebug("PS", "User chose Beta rule")
		hdf := state1.GetBeta()[0]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
		reslf := search.ApplyBetaRules(hdf, &state1)
		child_id_list := []int{}

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
		for _, fl := range int_form_list_list {
			st_copy := state1.Copy()
			st_copy.SetBeta(state1.GetBeta()[1:])
			st_copy.SetLF(fl.GetFL())
			child_id_list = append(child_id_list, fl.GetI())

			if global.IsDestructive() {
				c_child := search.Communication{Quit: make(chan bool), Result: make(chan search.Result)}
				chan_tab = append(chan_tab, c_child)
				go search.ProofSearch(global.GetGID(), st_copy, c_child, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{}, chFyne)
			} else {
				go search.ProofSearch(global.GetGID(), st_copy, c, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{}, chFyne)
			}

			global.IncrGoRoutine(1)
			global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))

		}
		if global.IsDestructive() {
			search.WaitChildren(father_id, state1, c, chan_tab, []complextypes.SubstAndForm{}, complextypes.SubstAndForm{}, []complextypes.SubstAndForm{}, []complextypes.IntSubstAndFormAndTerms{}, node_id, original_node_id, false, child_id_list, meta_to_reintroduce, chFyne)
		} else {
			global.PrintDebug("PS", "Die")
		}
	case "D":
		global.PrintDebug("PS", "User chose Delta rule")
		hdf := state1.GetDelta()[choice]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

		state1.SetDelta(append(state1.GetDelta()[:choice], state1.GetDelta()[choice+1:]...))
		result_forms := search.ApplyDeltaRules(hdf, &state1)
		state1.SetLF(result_forms)

		// Proof
		state1.SetCurrentProofFormula(hdf)
		id_children := global.IncrCptNode()
		state1.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(id_children, result_forms)})
		state1.SetProof(append(state1.GetProof(), state1.GetCurrentProof()))

		search.ProofSearch(father_id, state1, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, []int{}, chFyne)
	case "G":
		global.PrintDebug("PS", "User chose Gamma rule")
		hdf := state1.GetGamma()[choice]
		global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
		state1.SetGamma(append(state1.GetGamma()[:choice], state1.GetGamma()[choice+1:]...))

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

		search.ProofSearch(father_id, state1, c, complextypes.MakeEmptySubstAndForm(), id_children, original_node_id, []int{}, chFyne)
	case "M":
		fmt.Printf("case M\n")
	}
}
