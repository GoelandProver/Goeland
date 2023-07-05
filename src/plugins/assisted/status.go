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

func AddStatusElement(se *StatusElement) {
	lockStatus.Lock()
	defer lockStatus.Unlock()

	status = append(status, se)
}

func RemoveStatusElement(id int) {
	lockStatus.Lock()
	defer lockStatus.Unlock()

	for i, element := range status {
		if element.GetId() == id {
			status = append(status[:i], status[i+1:]...)
		}
	}
}

func printAllStatusIds() {
	for _, elem := range status {
		PrintFormListFromState(elem.state, elem.GetId())
	}
	fmt.Println()
}

func MakeStatusElement(ch chan Choice, st *complextypes.State) *StatusElement {
	lockId.Lock()
	defer lockId.Unlock()
	id += 1
	statusEl := new(StatusElement)
	statusEl.id, statusEl.channel, statusEl.state = id, ch, st
	return statusEl
}

func (se *StatusElement) GetId() int {
	return se.id
}

func (se *StatusElement) applySubs(sub complextypes.SubstAndForm) {
	fmt.Printf("Applying to state %d the following substitution: %s\n", se.GetId(), sub.ToString())
	complextypes.ApplySubstitution(se.state, sub)
}

func (se *StatusElement) sendChoice(choice Choice) {
	global.PrintDebug("ASSISTED", fmt.Sprintf("Choice sent to state nº%d : %v", se.GetId(), choice))

	se.channel <- choice
}

func (se *StatusElement) receiveChoice() Choice {
	choice := <-se.channel
	global.PrintDebug("ASSISTED", fmt.Sprintf("Choice received from state nº%d : %v", se.GetId(), choice))
	return choice
}
