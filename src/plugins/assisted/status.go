package assisted

import (
	"fmt"
	"sync"

	"github.com/GoelandProver/Goeland/global"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

var lockId sync.Mutex
var id = -1

var lockStatus sync.Mutex
var status []*StatusElement

type StatusElement struct {
	id      int
	channel chan Choice
	state   *complextypes.State
}

func addStatusElement(se *StatusElement) {
	lockStatus.Lock()
	defer lockStatus.Unlock()

	status = append(status, se)
}

func removeStatusElement(id int) {
	lockStatus.Lock()
	defer lockStatus.Unlock()

	for i, element := range status {
		if element.getId() == id {
			status = append(status[:i], status[i+1:]...)
		}
	}
}

func printAllStatusIds() {
	for _, elem := range status {
		printFormListFromState(elem.state, elem.getId())
	}
	fmt.Println()
}

func makeStatusElement(ch chan Choice, st *complextypes.State) *StatusElement {
	lockId.Lock()
	defer lockId.Unlock()
	id += 1
	statusEl := new(StatusElement)
	statusEl.id, statusEl.channel, statusEl.state = id, ch, st
	return statusEl
}

func (se *StatusElement) getId() int {
	return se.id
}

func (se *StatusElement) applySubs(sub complextypes.SubstAndForm) {
	fmt.Printf("Applying to state %d the following substitution: %s\n", se.getId(), sub.ToString())
	complextypes.ApplySubstitution(se.state, sub)
}

func (se *StatusElement) sendChoice(choice Choice) {
	global.PrintDebug("ASSISTED", fmt.Sprintf("Choice sent to state nº%d : %v", se.getId(), choice))

	se.channel <- choice
}

func (se *StatusElement) receiveChoice() Choice {
	choice := <-se.channel
	global.PrintDebug("ASSISTED", fmt.Sprintf("Choice received from state nº%d : %v", se.getId(), choice))
	return choice
}
