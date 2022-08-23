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
/*******************/
/* search_types.go */
/*******************/

package search

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
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

type SubstProofPair struct {
	subst      treetypes.Substitutions
	proof_list [][]proof.ProofStruct
}

func (spp SubstProofPair) GetSubst() treetypes.Substitutions {
	return spp.subst.Copy()
}
func (spp SubstProofPair) GetProof() [][]proof.ProofStruct {
	return proof.CopyProofStructChildren(spp.proof_list)
}
func (spp *SubstProofPair) SetSubst(s treetypes.Substitutions) {
	spp.subst = s
}
func (spp *SubstProofPair) SetProof(p [][]proof.ProofStruct) {
	spp.proof_list = p
}

type SubstProofPairList []SubstProofPair

func makeEmptySubstProofPairList() SubstProofPairList {
	return []SubstProofPair{}
}
