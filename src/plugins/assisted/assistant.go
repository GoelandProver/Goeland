package assisted

import (
	"fmt"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

var nextStep chan bool
var recieveSubst chan complextypes.SubstAndForm

var substAssisted = complextypes.MakeEmptySubstAndForm()
var HasChanged = false

func ApplySubstsAssisted(substi complextypes.SubstAndForm) {
	_, substAssisted = complextypes.MergeSubstAndForm(substAssisted, substi)
}

func Assistant(channel chan bool) {
	nextStep = make(chan bool)
	recieveSubst = make(chan complextypes.SubstAndForm)

	index := 0

	for <-nextStep {
		if HasChanged {
			for range status {
				recieveSubst <- substAssisted
			}
			HasChanged = false
		}

		lockStatus.Lock()
		index = SelectStatus()

		fmt.Println("\nHere is the state and its rules:")
		PrintFormListFromState(status[index].state, status[index].GetId())
		fmt.Println()

		ruleVeritable := SelectRule(status[index].state)
		indiceChoice := 0

		if ruleVeritable != "X" {
			indiceChoice = SelectFormula(GetFormulaeFromRule(ruleVeritable, status[index].state))
		}

		choice := MakeChoice(ruleVeritable, indiceChoice, substAssisted)
		status[index].channel <- choice
		lockStatus.Unlock()
	}
	fmt.Println("\nAssistant finished !")
	channel <- true
}

func SelectStatus() int {
	fmt.Println("\nHere are the states:")
	printAllStatusIds()
	var chosenStatus = 0
	for {
		fmt.Printf("Select a state ID ~> ")
		fmt.Scanf("%d", &chosenStatus)
		for i, fl := range status {
			if fl.GetId() == chosenStatus {
				fmt.Printf("You selected the state nº%d\n", chosenStatus)
				fmt.Println("-------------------------")
				return i
			}
		}

		fmt.Printf("\nState nº%d is not in the list. Please select a valid state ID.\n", chosenStatus)
	}
}

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
	isRuleValid := false
	var rule string
	for !isRuleValid {
		fmt.Printf("Select a rule to apply ~> ")
		fmt.Scanf("%s", &rule)
		rule = ruleSynonymList[rule]
		if rule == "M" {
			if st.CanReintroduce() && len(st.GetMetaGen()) > 0 {
				rule = "M"
				isRuleValid = true
			} else {
				fmt.Printf("Error, M rule is empty or cannot reintroduce\n")
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
	fmt.Println()
}

// Choose a formula from an indexed formula list.
func SelectFormula(forms basictypes.FormAndTermsList) int {
	fmt.Println("\nHere are the formulas:")
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
