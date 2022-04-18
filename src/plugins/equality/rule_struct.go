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
/*********************/
/* rule_struct.go */
/*********************/
/**
* This file contains the rule strucut for equality reasoning
**/

package main

import (
	"fmt"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

const (
	RIGHT int = iota
	LEFT
)

type ruleStruct struct {
	rule                int
	l, r, l_prime, s, t basictypes.Term
	s_modified          bool // For Rigth and left rule : s or t modifier or the side of the equality which was modified
	index_eq_list       int  // For Left rule : which equalit is modified
}

func (r ruleStruct) getRule() int {
	return r.rule
}
func (r ruleStruct) getL() basictypes.Term {
	return r.l.Copy()
}
func (r ruleStruct) getR() basictypes.Term {
	return r.r.Copy()
}
func (r ruleStruct) getLPrime() basictypes.Term {
	return r.l_prime.Copy()
}
func (r ruleStruct) getS() basictypes.Term {
	return r.s.Copy()
}
func (r ruleStruct) getT() basictypes.Term {
	return r.t.Copy()
}
func (r ruleStruct) getIsSModified() bool {
	return r.s_modified
}
func (r ruleStruct) getIndexEQList() int {
	return r.index_eq_list
}
func (r *ruleStruct) setIsSModified(b bool) {
	r.s_modified = true
}
func (r *ruleStruct) setIndexEQList(i int) {
	r.index_eq_list = i
}
func (r ruleStruct) toString() string {
	type_rule := "LEFT"
	if r.getRule() == RIGHT {
		type_rule = "RIGHT"
	}
	return "[ type = " + type_rule + ", s = " + r.getS().ToString() + ", t = " + r.getT().ToString() + ", l' = " + r.getLPrime().ToString() + ", l = " + r.getL().ToString() + ", r = " + r.getR().ToString() + ", is s modified = " + fmt.Sprintf("%v", r.getIsSModified()) + ", index = " + fmt.Sprintf("%v", r.getIndexEQList()) + " ]"
}
func makeRuleStruct(rule int, l, r, l_prime, s, t basictypes.Term) ruleStruct {
	return ruleStruct{rule, l, r, l_prime, s, t, true, -1}
}
func ruleStructListToString(rsl []ruleStruct) string {
	res := ""
	for i, r := range rsl {
		res += r.toString()
		if i < len(rsl)-1 {
			res += ", "
		}
	}
	return res
}
