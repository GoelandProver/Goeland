package assisted

import (
	"fmt"
	"sync"

	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

var ruleSynonymList = map[string]string{
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

var lockId sync.Mutex
var id = -1

var lockStatus sync.Mutex
var status []StatusElement

// StatusElement struct : with and id (int) and a channel (search.Communication)
type StatusElement struct {
	id      int
	channel chan Choice
	state   complextypes.State
}

func AddStatusElement(se *StatusElement) {
	lockStatus.Lock()
	defer lockStatus.Unlock()

	status = append(status, *se)
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

func MakeStatusElement(ch chan Choice, st complextypes.State) StatusElement {
	lockId.Lock()
	defer lockId.Unlock()
	id += 1
	return StatusElement{id, ch, st}
}

func (se *StatusElement) GetId() int {
	return se.id
}

func (se *StatusElement) GetChannel() chan Choice {
	return se.channel
}
