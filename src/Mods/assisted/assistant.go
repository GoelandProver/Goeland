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
	"math"
	"sync"

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Search"
	"github.com/GoelandProver/Goeland/Unif"
)

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("plugin.assisted")
}

var ruleSynonymList = map[string]string{
	"Atomic": "X",
	"atomic": "X",
	"Axiom":  "X",
	"axiom":  "X",
	"X":      "X",
	"x":      "X",

	"Alpha": "A",
	"alpha": "A",
	"A":     "A",
	"a":     "A",

	"Beta": "B",
	"beta": "B",
	"B":    "B",
	"b":    "B",

	"Delta": "D",
	"delta": "D",
	"D":     "D",
	"d":     "D",

	"Gamma": "G",
	"gamma": "G",
	"G":     "G",
	"g":     "G",

	"Reintroduction": "R",
	"reintroduction": "R",
	"Reintro":        "R",
	"reintro":        "R",
	"R":              "R",
	"r":              "R",
}

var nextStep chan bool

var lockSubstAssisted sync.Mutex
var substAssisted = Core.MakeEmptySubstAndForm()
var hasAppliedSubsts = false

var assistedCounter Glob.SyncCounter
var searchAlgo Search.BasicSearchAlgorithm

func InitAssisted() {
	assistedCounter = *Glob.NewEmptySyncCounter()
	assistedCounter.Increment()
	if typed, ok := Search.UsedSearch.(Search.BasicSearchAlgorithm); ok {
		searchAlgo = typed
	} else {
		Glob.PrintError("ASS", "Search algorithm not supported by the Assisted plugin")
	}
}

func applySubstsAssisted(substi Core.SubstAndForm) {
	lockSubstAssisted.Lock()
	defer lockSubstAssisted.Unlock()
	_, substAssisted = Core.MergeSubstAndForm(substAssisted, substi)
	hasAppliedSubsts = true
}

func StartAssistant(channel chan bool) {
	nextStep = make(chan bool)

	for <-nextStep {
		doOneAssistantStep()
	}

	fmt.Println("\nAssistant finished !")
	channel <- true
}

func doOneAssistantStep() {
	lockStatus.Lock()
	defer lockStatus.Unlock()

	if hasAppliedSubsts {
		for _, element := range status {
			element.applySubs(substAssisted)
		}
		hasAppliedSubsts = false
	}

	index := selectStatus()

	fmt.Println("\nHere is the state and its rules:")
	printFormListFromState(status[index].state, status[index].getId())
	fmt.Println()

	chosenRule := selectRule(status[index].state)
	chosenReintro := -1
	chosenForm := 0

	switch {
	case chosenRule != "X" && chosenRule != "R":
		chosenForm = selectFormula(getFormulaeFromRule(chosenRule, status[index].state))
	case chosenRule == "R":
		chosenReintro = selectReintro(status[index].state)
	}

	var choice Choice

	switch {
	case hasAppliedSubsts:
		choice = makeChoiceWithSubsts(chosenRule, chosenForm, substAssisted)
	case chosenReintro != -1:
		choice = makeChoiceWithReintro(chosenRule, chosenReintro)
	default:
		choice = makeChoice(chosenRule, chosenForm)
	}

	status[index].sendChoice(choice)
}

func selectStatus() int {
	fmt.Println("\nHere are the states:")
	printAllStatusIds()
	var chosenStatus = 0
	for {
		fmt.Printf("Select a state ID ~> ")
		fmt.Scanf("%d", &chosenStatus)
		for i, fl := range status {
			if fl.getId() == chosenStatus {
				fmt.Printf("You selected the state nº%d\n", chosenStatus)
				fmt.Println("-------------------------")
				return i
			}
		}

		fmt.Printf("\nState nº%d is not in the list. Please select a valid state ID.\n", chosenStatus)
	}
}

func printFormListFromState(st *Search.State, id int) {
	fmt.Printf("\nState nº%d:\n", id)

	printSubList("Applied subs", st.GetAppliedSubst().GetSubst())
	printSubList("X - Atomic", st.GetAtomic())
	printSubList("A - Alpha", st.GetAlpha())
	printSubList("B - Beta", st.GetBeta())
	printSubList("D - Delta", st.GetDelta())
	printSubList("G - Gamma", st.GetGamma())
	printSubList("R - Reintroductions", st.GetMetaGen())

	printGoelandChoice(st)
}

func printSubList[T Glob.Stringable](title string, list []T) {
	if len(list) > 0 {
		fmt.Printf(" | %s : \n", title)
		for i, element := range list {
			transition := "|"
			if i == len(list)-1 {
				transition = "└"
			}
			fmt.Printf(" | %s %s\n", transition, element.ToString())
		}
	}
}

func printGoelandChoice(st *Search.State) {
	found := false
	allSubs := []Unif.Substitutions{}
	withSubs := true

	for _, form := range st.GetAtomic() {
		canClose, subs := Search.ApplyClosureRules(form.GetForm(), st)
		if canClose {
			found = true
			if len(subs) > 0 && !subs[0].IsEmpty() {
				allSubs = append(allSubs, subs...)
			} else {
				withSubs = false
			}
		}
	}

	if found {
		str := " └ Goéland would apply the Closure rule"
		if withSubs {
			str += " with the following substitution: " + allSubs[0].ToString()
		} else {
			str += " without any subsitutions"
		}
		fmt.Println(str)
	} else {
		rule := ""
		var formula Glob.Stringable
		done := true

		switch {
		case len(st.GetAlpha()) > 0:
			rule, formula = "Alpha", st.GetAlpha()[0]
		case len(st.GetDelta()) > 0:
			rule, formula = "Delta", st.GetDelta()[0]
		case len(st.GetBeta()) > 0:
			rule, formula = "Beta", st.GetBeta()[0]
		case (len(st.GetGamma()) > 0 && st.CanApplyGammaRule()):
			rule, formula = "Gamma", st.GetGamma()[0]
		case st.CanReintroduce():
			rule, formula = "Reintroduction", chooseReintroRule(st)
		default:
			done = false
		}

		if done {
			fmt.Printf(" └ Goéland would apply the %s rule on the following formula: %s\n", rule, formula.ToString())
		}
	}
}

func chooseReintroRule(st *Search.State) Glob.Stringable {
	bestMg := Core.MetaGen{}
	bestValue := math.MaxInt
	for _, mg := range st.GetMetaGen() {
		if bestValue > mg.GetCounter() {
			bestMg = mg
			bestValue = mg.GetCounter()
		}
	}
	return bestMg.GetForm().GetForm()
}

func selectRule(st *Search.State) string {
	isRuleValid := false
	var rule string
	for !isRuleValid {
		fmt.Printf("Select a rule to apply ~> ")
		fmt.Scanf("%s", &rule)
		rule = ruleSynonymList[rule]
		if rule == "R" {
			switch {
			case !st.CanReintroduce():
				fmt.Println("Error, the state cannot be reintroduced")
			case len(st.GetMetaGen()) == 0:
				fmt.Println("Error, the M rule is empty")
			default:
				isRuleValid = true
			}
		} else {
			if rule == "X" || rule == "A" || rule == "B" || rule == "D" || rule == "G" {
				if rule == "X" && len(st.GetAtomic()) == 0 || rule == "A" && len(st.GetAlpha()) == 0 || rule == "B" && len(st.GetBeta()) == 0 || rule == "D" && len(st.GetDelta()) == 0 || rule == "G" && len(st.GetGamma()) == 0 {
					fmt.Printf("Error, %s rule does not have any formula. Please select another.\n", rule)
				} else {
					isRuleValid = true
				}
			} else {
				fmt.Printf("Error, select a valid rule to apply.\n")
			}
		}
	}
	fmt.Printf("%s rule selected.\n", rule)
	fmt.Println("-------------------------")
	return rule
}

func getFormulaeFromRule(rule string, st *Search.State) Core.FormAndTermsList {
	var chosenFormulae Core.FormAndTermsList
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
	case "R":
		metaGens := st.GetMetaGen()
		for _, metaGen := range metaGens {
			chosenFormulae = append(chosenFormulae, metaGen.GetForm())
		}
	}

	return chosenFormulae
}

func listIndexedForms(forms Core.FormAndTermsList) {
	for i, s := range forms {
		fmt.Printf("[%d] %s\n", i, s.ToString())
	}
	fmt.Println()
}

func selectFormula(forms Core.FormAndTermsList) int {
	fmt.Println("\nHere are the formulae:")
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

func selectSubstitution(substs []Core.SubstAndForm) int {
	fmt.Printf("Found closure rule with substitution that is used elsewhere.\n")
	fmt.Printf("Here is the list of possible substitutions :\n")
	uniqueSubs := []Unif.Substitutions{}

	for _, sub := range substs {
		uniqueSubs = Unif.AppendIfNotContainsSubst(uniqueSubs, sub.GetSubst())
	}

	for i, elem := range uniqueSubs {
		fmt.Printf("[%d] %v\n", i, elem.ToString())
	}

	isSubstitutionValid := false
	var choice int
	for !isSubstitutionValid {
		fmt.Printf("Select a substitution ~> ")
		fmt.Scanf("%d", &choice)
		if choice < len(uniqueSubs) && choice >= 0 {
			fmt.Printf("You selected the substitution %v.\n", uniqueSubs[choice].ToString())
			isSubstitutionValid = true
			fmt.Println("-------------------------")
		} else {
			fmt.Printf("Error, please select a valid substitution.\n")
		}
	}
	return choice
}

func selectReintro(st *Search.State) int {
	fmt.Println("Here is the list of Meta variables and the formula that introduced them :")

	metaGenList := st.GetMetaGen()

	for i, metaGen := range metaGenList {
		fmt.Printf("[%d] %s\n", i, metaGen.ToString())
	}

	for {
		var choice int
		fmt.Printf("Select a MetaGen ~> ")
		fmt.Scanf("%d", &choice)

		if choice >= 0 && choice < len(metaGenList) {
			fmt.Printf("You selected the MetaGen %v \n", metaGenList[choice].ToString())
			fmt.Println("-------------------------")
			return choice
		} else {
			fmt.Printf("Error, please select a valid MetaGen.\n")
		}
	}
}
