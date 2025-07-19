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
	"sync"

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Search"
)

var lockId sync.Mutex
var id = -1

var lockStatus sync.Mutex
var status []*StatusElement

type StatusElement struct {
	id      int
	channel chan Choice
	state   *Search.State
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

func makeStatusElement(ch chan Choice, st *Search.State) *StatusElement {
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

func (se *StatusElement) applySubs(sub Core.SubstAndForm) {
	fmt.Printf("Applying to state %d the following substitution: %s\n", se.getId(), sub.ToString())
	Search.ApplySubstitution(se.state, sub)
}

func (se *StatusElement) sendChoice(choice Choice) {
	Glob.PrintDebug(
		"ASSISTED",
		Lib.MkLazy(func() string { return fmt.Sprintf("Choice sent to state nº%d : %v", se.getId(), choice) }),
	)

	se.channel <- choice
}

func (se *StatusElement) receiveChoice() Choice {
	choice := <-se.channel
	Glob.PrintDebug(
		"ASSISTED",
		Lib.MkLazy(func() string { return fmt.Sprintf("Choice received from state nº%d : %v", se.getId(), choice) }),
	)
	return choice
}
