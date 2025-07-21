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

package Search

import (
	"fmt"

	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

/* Struct result to communicate substitution or a quit order through a channel */
type Communication struct {
	quit   chan bool // True if need to die, false si need to wait
	result chan Result
}

func (c Communication) getQuit() chan bool {
	return c.quit
}
func (c Communication) getResult() chan Result {
	return c.result
}

func MakeCommunication(quit chan bool, result chan Result) Communication {
	return Communication{quit, result}
}

type Result struct {
	id                    uint64
	closed, need_answer   bool
	subst_for_children    Core.SubstAndForm
	subst_list_for_father []Core.SubstAndForm
	forbidden             []Unif.Substitutions
	proof                 []ProofStruct
	node_id               int
	original_node_id      int
	unifier               Core.Unifier
}

func (r Result) getId() uint64 {
	return r.id
}
func (r Result) isClosed() bool {
	return r.closed
}
func (r Result) needsAnswer() bool {
	return r.need_answer
}
func (r Result) getSubstForChildren() Core.SubstAndForm {
	return r.subst_for_children.Copy()
}
func (r Result) getSubstListForFather() []Core.SubstAndForm {
	return Core.CopySubstAndFormList(r.subst_list_for_father)
}
func (r Result) getForbiddenSubsts() []Unif.Substitutions {
	return Unif.CopySubstList(r.forbidden)
}
func (r Result) getProof() []ProofStruct {
	return CopyProofStructList(r.proof)
}
func (r Result) getNodeId() int {
	return r.node_id
}
func (r Result) getOriginalNodeId() int {
	return r.original_node_id
}
func (r Result) getUnifier() Core.Unifier {
	return r.unifier.Copy()
}

func (r Result) Copy() Result {
	return Result{r.getId(), r.isClosed(), r.needsAnswer(), r.getSubstForChildren(), r.getSubstListForFather(), r.getForbiddenSubsts(), r.getProof(), r.getNodeId(), r.getOriginalNodeId(), r.getUnifier()}
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
	Glob.PrintDebug(
		"CC",
		Lib.MkLazy(func() string { return fmt.Sprintf("Close children : %v,  order : %v", len(*children), kill) }),
	)

	for i, v := range *children {
		select {
		case v.quit <- kill:
			Glob.PrintDebug("CC", Lib.MkLazy(func() string { return "Send close order" }))
		case res := <-v.result:
			Glob.PrintDebug(
				"CC",
				Lib.MkLazy(func() string {
					return fmt.Sprintf(
						"Receive answer : %v and then send close order",
						res.id)
				}),
			)
			if res.need_answer {
				v.quit <- kill
			} else {
				Glob.PrintDebug(
					"CC",
					Lib.MkLazy(func() string { return "Not send, child already dead" }),
				)
				*children = removeChildren(*children, i)
			}
		}
		if kill {
			*children = removeChildren(*children, i)
		}
	}
}

/* Send a substitution to a list of child */
func sendSubToChildren(children []Communication, s Core.SubstAndForm) {
	Glob.PrintDebug(
		"SSTC",
		Lib.MkLazy(func() string { return fmt.Sprintf("Send sub to children : %v", len(children)) }),
	)
	for i, v := range children {
		Glob.PrintDebug(
			"SSTC",
			Lib.MkLazy(func() string { return fmt.Sprintf("children : %v/%v", i+1, len(children)) }),
		)
		v.result <- Result{Glob.GetGID(), true, true, s.Copy(), []Core.SubstAndForm{}, Unif.MakeEmptySubstitutionList(), nil, -1, -1, Core.MakeUnifier()}
	}
}

/* Send a substitution to a list of child */
func sendForbiddenToChildren(children []Communication, s []Unif.Substitutions) {
	Glob.PrintDebug(
		"SFTC",
		Lib.MkLazy(func() string { return fmt.Sprintf("Send forbidden to children : %v", len(children)) }),
	)
	for i, v := range children {
		Glob.PrintDebug(
			"SFTC",
			Lib.MkLazy(func() string { return fmt.Sprintf("children : %v/%v", i+1, len(children)) }),
		)
		v.result <- Result{Glob.GetGID(), true, true, Core.MakeEmptySubstAndForm(), []Core.SubstAndForm{}, s, nil, -1, -1, Core.MakeUnifier()}
	}
}

/* Send a subst to father. Return true if the process is supposed to die after */
func (ds *destructiveSearch) sendSubToFather(c Communication, closed, need_answer bool, father_id uint64, st State, given_substs []Core.SubstAndForm, node_id int, original_node_id int, meta_to_reintroduce []int) {
	subst_for_father := Core.RemoveEmptySubstFromSubstAndFormList(st.GetSubstsFound())
	Glob.PrintDebug(
		"SSTF",
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Send subst to father : %v, closed : %v, need answer : %v",
				Unif.SubstListToString(Core.GetSubstListFromSubstAndFormList(subst_for_father)),
				closed, need_answer)
		}),
	)
	Glob.PrintDebug(
		"SSTF",
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Send answer : %v",
				Core.SubstAndFormListToString(subst_for_father))
		}),
	)
	Glob.PrintDebug(
		"SSTF",
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Id : %v, original node id :%v",
				node_id,
				original_node_id)
		}),
	)
	Glob.PrintDebug(
		"SSTF",
		Lib.MkLazy(func() string { return fmt.Sprintf("Send proof : %v", ProofStructListToString(st.GetProof())) }),
	)
	Glob.PrintDebug(
		"SSTF",
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Meta to reintroduce: %v",
				Glob.IntListToString(meta_to_reintroduce))
		}),
	)

	select {
	case c.result <- Result{Glob.GetGID(), closed, need_answer, Core.MakeEmptySubstAndForm(), Core.CopySubstAndFormList(subst_for_father), Unif.MakeEmptySubstitutionList(), st.GetProof(), node_id, original_node_id, st.GetGlobUnifier()}:
		if need_answer {
			ds.waitFather(father_id, st, c, Core.FusionSubstAndFormListWithoutDouble(subst_for_father, given_substs), node_id, original_node_id, []int{}, meta_to_reintroduce)
		} else {
			Glob.PrintDebug("SSTF", Lib.MkLazy(func() string { return "Die" }))
		}
	case quit := <-c.quit:
		ds.manageQuitOrder(quit, c, father_id, st, []Communication{}, given_substs, node_id, original_node_id, []int{}, meta_to_reintroduce)
	}
}
