package assisted

import (
	"fmt"
	"sync"

	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

// Map for user friendship purposes. May be an outdated method.
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

var Counter SyncCounter
var id = -1

// StatusElement struct : with and id (int) and a channel (search.Communication)
type StatusElement struct {
	id      int
	channel chan Choice
	state   complextypes.State
}

// Used for communication in channels
type Choice struct {
	rule   string
	form   int
	substs complextypes.SubstAndForm
}

type SyncCounter struct {
	cpt   int
	mutex sync.Mutex
}

func (sc *SyncCounter) Increase() {
	sc.mutex.Lock()
	defer sc.mutex.Unlock()
	sc.cpt++
}

func (sc *SyncCounter) Decrease() {
	sc.mutex.Lock()
	defer sc.mutex.Unlock()
	sc.cpt--
	if sc.cpt == 0 {
		nextStep <- true
	}
}

// Returns the element's Id
func (se StatusElement) GetId() int {
	return se.id
}

// Returns the element's channel
func (se StatusElement) GetChannel() chan Choice {
	return se.channel
}

// Creates a StatusElement given a communication channel and a state
func MakeStatusElem(ch chan Choice, st complextypes.State) StatusElement {
	id += 1
	return StatusElement{id, ch, st}
}

// Adds a StatusElement to a Status list
func AddStatusElem(elem StatusElement, statusHere []StatusElement) {
	statusHere = append(statusHere, elem)
}

// Prints the actual status
func printStatus() {
	fmt.Printf("Status list : {")
	for i, elem := range status {
		if i < len(status)-1 {
			fmt.Printf("[%d], ", elem.GetId())
		} else {
			fmt.Printf("[%d]", elem.GetId())
		}
	}
	fmt.Printf("}\n")

	for _, elem := range status {
		PrintFormListFromState(elem.state, elem.GetId())
	}
}

func (choice Choice) GetForm() int {
	return choice.form
}

func (choice Choice) GetRule() string {
	return choice.rule
}

func (choice Choice) GetSubst() complextypes.SubstAndForm {
	return choice.substs
}

func MakeChoice(r string, i int, s complextypes.SubstAndForm) Choice {
	return Choice{r, i, s}
}
