package assisted

import (
	"fmt"

	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

var nextStep chan bool
var needSubst chan bool
var finishedProof = false
var chAssistant chan bool
var recieveSubst chan complextypes.SubstAndForm

func SetFinishedProof(b bool) {
	nextStep <- !b
}

var substAssisted = complextypes.MakeEmptySubstAndForm()
var HasChanged = false

func ApplySubstsAssisted(substi complextypes.SubstAndForm) {
	fmt.Printf("Je passe avant : %v\n", substi.ToString())
	substAssisted = complextypes.MergeSubstAndForm(substAssisted, substi)
	fmt.Printf("Je passe après : %v\n", substAssisted.ToString())
	need = true
}

var first = true
var need = false

func Assistant(channel chan bool) {
	nextStep = make(chan bool)
	needSubst = make(chan bool)
	recieveSubst = make(chan complextypes.SubstAndForm)

	index := 0

	for <-nextStep {
		fmt.Printf("j'ai commencé nextStep\n")
		fmt.Printf("HasChanger  %v\n", HasChanged)
		if HasChanged {
			for _, elem := range status {
				_ = elem
				fmt.Printf("before recieve subst")
				recieveSubst <- substAssisted
			}
			HasChanged = false
		}

		fmt.Printf("before lock\n")
		lock_choices.Lock()
		index = ChooseStatus()

		PrintFormListFromState(status[index].state, status[index].GetId())
		fmt.Printf("Please, choose a rule you would like to apply (X, A, B, D, G)...\n~> ")

		ruleVeritable := ChooseRule(status[index].state)
		indiceChoice := 0

		if ruleVeritable != "X" {
			indiceChoice = ChooseFormula(ChooseFormulae(ruleVeritable, status[index].state))
		}

		fmt.Printf("J'envoie choice avec : %s, %d, %s", ruleVeritable, indiceChoice, substAssisted.ToString())
		choice := MakeChoice(ruleVeritable, indiceChoice, substAssisted)
		status[index].channel <- choice
		lock_choices.Unlock()
		fmt.Printf("J'unlock\n")
	}
	channel <- true
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

		fmt.Printf("Status [%d] is not in the list. Please choose another.\n~> ", chosenStatus)
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
