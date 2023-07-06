package assisted

import (
	"fmt"
	"sync"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

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
var substAssisted = complextypes.MakeEmptySubstAndForm()
var hasAppliedSubsts = false

func ApplySubstsAssisted(substi complextypes.SubstAndForm) {
	lockSubstAssisted.Lock()
	defer lockSubstAssisted.Unlock()
	_, substAssisted = complextypes.MergeSubstAndForm(substAssisted, substi)
	hasAppliedSubsts = true
}

func Assistant(channel chan bool) {
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

	index := SelectStatus()

	fmt.Println("\nHere is the state and its rules:")
	PrintFormListFromState(status[index].state, status[index].GetId())
	fmt.Println()

	chosenRule := SelectRule(status[index].state)
	chosenReintro := -1
	chosenForm := 0

	switch {
	case chosenRule != "X" && chosenRule != "R":
		chosenForm = SelectFormula(GetFormulaeFromRule(chosenRule, status[index].state))
	case chosenRule == "R":
		chosenReintro = SelectReintro(status[index].state)
	}

	var choice Choice

	switch {
	case hasAppliedSubsts:
		choice = MakeChoiceWithSubsts(chosenRule, chosenForm, substAssisted)
	case chosenReintro != -1:
		choice = MakeChoiceWithReintro(chosenRule, chosenReintro)
	default:
		choice = MakeChoice(chosenRule, chosenForm)
	}

	status[index].sendChoice(choice)
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
func PrintFormListFromState(st *complextypes.State, id int) {
	fmt.Printf("\nState nº%d:\n", id)

	printBeautifulList("Applied subs", st.GetAppliedSubst().GetSubst())
	printBeautifulList("X - Atomic", st.GetAtomic())
	printBeautifulList("A - Alpha", st.GetAlpha())
	printBeautifulList("B - Beta", st.GetBeta())
	printBeautifulList("D - Delta", st.GetDelta())
	printBeautifulList("G - Gamma", st.GetGamma())
	printBeautifulList("R - Reintroductions", st.GetMetaGen())

	printGoelandChoice(st)
}

func printBeautifulList[T global.Stringable](title string, list []T) {
	if len(list) > 0 {
		var stringableList []global.Stringable
		for _, element := range list {
			stringableList = append(stringableList, element)
		}
		printSubList(title, stringableList)
	}
}

func printSubList(title string, list []global.Stringable) {
	fmt.Printf(" | %s : \n", title)
	for i, element := range list {
		transition := "|"
		if i == len(list)-1 {
			transition = "└"
		}
		fmt.Printf(" | %s %s\n", transition, element.ToString())
	}
}

func printGoelandChoice(st *complextypes.State) {
	found := false
	allSubs := []treetypes.Substitutions{}
	withSubs := true

	for _, form := range st.GetAtomic() {
		canClose, subs := search.ApplyClosureRules(form.GetForm(), st)
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
		var formula global.Stringable
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
		default:
			done = false
		}

		if done {
			fmt.Printf(" └ Goéland would apply the %s rule on the following formula: %s\n", rule, formula.ToString())
		}
	}
}

// Selects a rule with formulae applicable.
func SelectRule(st *complextypes.State) string {
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

// Given a string, returns the FormAndTermsList associated with that rule.
func GetFormulaeFromRule(rule string, st *complextypes.State) basictypes.FormAndTermsList {
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
	case "R":
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
	fmt.Printf("Found closure rule with substitution that is used elsewhere.\n")
	fmt.Printf("Here is the list of possible substitutions :\n")
	uniqueSubs := []treetypes.Substitutions{}

	for _, sub := range substs {
		uniqueSubs = treetypes.AppendIfNotContainsSubst(uniqueSubs, sub.GetSubst())
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

func SelectReintro(st *complextypes.State) int {
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
