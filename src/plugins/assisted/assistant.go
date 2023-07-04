package assisted

import (
	"fmt"

	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

var nextStep chan bool
var recieveSubst chan complextypes.SubstAndForm

func SetFinishedProof(b bool) {
	nextStep <- !b
}

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
			for _, elem := range status {
				_ = elem
				recieveSubst <- substAssisted
			}
			HasChanged = false
		}

		lock_choices.Lock()
		fmt.Println()
		index = SelectStatus()

		PrintFormListFromState(status[index].state, status[index].GetId())
		fmt.Println()

		ruleVeritable := SelectRule(status[index].state)
		indiceChoice := 0

		if ruleVeritable != "X" {
			indiceChoice = SelectFormula(GetFormulaeFromRule(ruleVeritable, status[index].state))
		}

		choice := MakeChoice(ruleVeritable, indiceChoice, substAssisted)
		status[index].channel <- choice
		lock_choices.Unlock()
	}
	channel <- true
}

func SelectStatus() int {
	printStatusIds()
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

func RemoveStatus(a int) {
	lock_choices.Lock()
	defer lock_choices.Unlock()

	for i, fl := range status {
		if fl.GetId() == a {
			status = append(status[:i], status[i+1:]...)
		}
	}
}
