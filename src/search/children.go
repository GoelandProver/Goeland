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
/***************/
/* children.go */
/**************/

package search

import (
	"fmt"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)

/* Struct result to communicate substitution or a quit order through a channel */
type Communication struct {
	quit   chan bool // True if need to die, false si need to wait
	result chan Result
}

func (c Communication) GetQuit() chan bool {
	return c.quit
}
func (c Communication) GetResult() chan Result {
	return c.result
}

func MakeCommunication(quit chan bool, result chan Result) Communication {
	return Communication{quit, result}
}

type Result struct {
	id                    uint64
	closed, need_answer   bool
	subst_for_children    complextypes.SubstAndForm
	subst_list_for_father []complextypes.SubstAndForm
	proof                 []proof.ProofStruct
}

func (r Result) GetId() uint64 {
	return r.id
}
func (r Result) GetClosed() bool {
	return r.closed
}
func (r Result) GetNeedAnswer() bool {
	return r.need_answer
}
func (r Result) GetSubstForChildren() complextypes.SubstAndForm {
	return r.subst_for_children.Copy()
}
func (r Result) GetSubstListForFather() []complextypes.SubstAndForm {
	return complextypes.CopySubstAndFormList(r.subst_list_for_father)
}
func (r Result) GetProof() []proof.ProofStruct {
	return proof.CopyProofStructList(r.proof)
}
func (r Result) Copy() Result {
	return Result{r.GetId(), r.GetClosed(), r.GetNeedAnswer(), r.GetSubstForChildren(), r.GetSubstListForFather(), r.GetProof()}
}

/* remove a childre  from a communication list */
func removeChildren(s []Communication, i int) []Communication {
	if len(s) > 1 {
		s[i] = s[len(s)-1]
		return s[:len(s)-1]
	} else {
		return []Communication{}
	}
}

/**
* Close a map of waiting children
* Delete the children those who are already closed
* kill = true : kill the children  false : wait father
**/
func closeChildren(children *[]Communication, kill bool) {
	global.PrintDebug("CC", fmt.Sprintf("Close children : %v,  order : %v", len(*children), kill))

	for i, v := range *children {
		select {
		case v.quit <- kill:
			global.PrintDebug("CC", "Send close order")
		case res := <-v.result:
			global.PrintDebug("CC", fmt.Sprintf("Receive answer : %v and then send close order", res.id))
			if res.need_answer {
				v.quit <- kill
			} else {
				global.PrintDebug("CC", "Not send, child already dead")
				*children = removeChildren(*children, i)
			}
		}
		if kill {
			*children = removeChildren(*children, i)
		}
	}
}

/* Send a substitution to a list of child */
func sendSubToChildren(children []Communication, s complextypes.SubstAndForm) {
	global.PrintDebug("SSTC", fmt.Sprintf("Send sub to children : %v", len(children)))
	for i, v := range children {
		global.PrintDebug("SSTC", fmt.Sprintf("children : %v/%v", i+1, len(children)))
		v.result <- Result{global.GetGID(), true, true, s.Copy(), []complextypes.SubstAndForm{}, nil}
	}
}

/* Send a subst to father. Return true if the process is supposed to die after */
func sendSubToFather(c Communication, closed, need_answer bool, father_id uint64, st complextypes.State, given_substs []complextypes.SubstAndForm, node_id int) {
	subst_for_father := complextypes.RemoveEmptySubstFromSubstAndFormList(st.GetSubstsFound())
	global.PrintDebug("SSTF", fmt.Sprintf("Send subst to father : %v, closed : %v, need answer : %v", treetypes.SubstListToString(complextypes.GetSubstListFromSubstAndFormList(subst_for_father)), closed, need_answer))
	global.PrintDebug("SSTF", fmt.Sprintf("Send answer : %v", complextypes.SubstAndFormListToString(subst_for_father)))

	global.PrintDebug("SSTF", fmt.Sprintf("Proof : %v", proof.ProofStructListToString(st.GetProof())))

	select {
	case c.result <- Result{global.GetGID(), closed, need_answer, complextypes.MakeEmptySubstAndForm(), complextypes.CopySubstAndFormList(subst_for_father), st.GetProof()}:
		if need_answer {
			waitFather(father_id, st, c, complextypes.FusionSubstAndFormListWithoutDouble(subst_for_father, given_substs), node_id)
		} else {
			global.PrintDebug("SSTF", "Die")
		}
	case quit := <-c.quit:
		manageQuitOrder(quit, c, father_id, st, []Communication{}, given_substs, node_id)
	}
}
