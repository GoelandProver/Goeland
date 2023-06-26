package assisted

import (
	"fmt"

	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

var nextStep chan bool
var finishedProof = false

func SetFinishedProof(b bool) {
	nextStep <- !b
}

/*
	for !finishedProof {
		<-nextStep

		fmt.Println("LOCK CHOICE")
		lock_choices.Lock()
		index = ChooseStatus()

		fmt.Printf("StatusID1 : %d\n", status[index].GetId())
		PrintFormListFromState(status[index].state)
		fmt.Printf("Please, choose a rule you would like to apply (X, A, B, D, G)...\n")

		fmt.Printf("index : %d\n", index)
		ruleVeritable := ChooseRule(status[index].state)
		indiceChoice := ChooseFormula(ChooseFormulae(ruleVeritable, status[index].state))

		choice := MakeChoice(ruleVeritable, indiceChoice)
		status[index].channel <- choice

		fmt.Printf("StatusID2 : %d\n", status[index].GetId())
		lock_choices.Unlock()
		fmt.Println("UNLOCK CHOICE")
	}*/

var substListAssisted = complextypes.MakeEmptySubstAndForm()

func Assistant() {

	nextStep = make(chan bool)

	index := 0

	for <-nextStep {
		lock_choices.Lock()
		index = ChooseStatus()

		PrintFormListFromState(status[index].state, status[index].GetId())
		fmt.Printf("Please, choose a rule you would like to apply (X, A, B, D, G)...\n")

		ruleVeritable := ChooseRule(status[index].state)
		indiceChoice := 0

		if ruleVeritable != "X" {
			indiceChoice = ChooseFormula(ChooseFormulae(ruleVeritable, status[index].state))
		}

		choice := MakeChoice(ruleVeritable, indiceChoice, substListAssisted)
		status[index].channel <- choice
		lock_choices.Unlock()
	}
}

func ChooseStatus() int {
	fmt.Printf("\nPlease, choose a status from the list (using it's id in [ ])\n")
	printStatus()
	var chosenStatus = 0
	for true {
		fmt.Scanf("%d", &chosenStatus)
		for i, fl := range status {
			if fl.GetId() == chosenStatus {
				fmt.Printf("You chose the [%d] status, GO !\n", chosenStatus)
				return i
			}
		}

		fmt.Printf("Status [%d] is not in the list. Please choose another.\n", chosenStatus)
	}

	return -1
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
