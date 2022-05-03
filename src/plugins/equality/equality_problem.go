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
/***********************/
/* equality_problem.go */
/***********************/
/**
* This file contains the type definition for equality reasonning.
**/

package main

import (
	"fmt"

	treesearch "github.com/GoelandProver/Goeland/code-trees/tree-search"
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

type EqualityProblem struct {
	E_tree datastruct.DataStructure
	E_map  map[string][]basictypes.Term
	E      Equalities
	s, t   basictypes.Term
	c      ConstraintStruct
}

func (ep EqualityProblem) getETree() datastruct.DataStructure {
	return ep.E_tree.Copy()
}
func (ep EqualityProblem) getEMap() map[string][]basictypes.Term {
	map_res := make(map[string][]basictypes.Term)
	for k, v := range ep.E_map {
		map_res[k] = basictypes.CopyTermList(v)
	}
	return map_res
}
func (ep EqualityProblem) getE() Equalities {
	return ep.E.copy()
}
func (ep EqualityProblem) getS() basictypes.Term {
	return ep.s.Copy()
}
func (ep EqualityProblem) getT() basictypes.Term {
	return ep.t.Copy()
}
func (ep EqualityProblem) getC() ConstraintStruct {
	return ep.c.copy()
}
func (ep EqualityProblem) copy() EqualityProblem {
	return makeEqualityProblem(ep.getE(), ep.getS(), ep.getT(), ep.getC())
}
func (ep EqualityProblem) equals(ep2 EqualityProblem) basictypes.Term {
	return ep.t.Copy()
}
func (ep EqualityProblem) toString() string {
	return "<" + ep.getE().toString() + ", " + ep.getS().ToString() + ", " + ep.getT().ToString() + "> • " + ep.getC().toString()
}

/* Apply a substitution on an equality problem */
func (ep EqualityProblem) applySubstitution(s treetypes.Substitutions) EqualityProblem {
	new_s := ep.getS()
	new_t := ep.getT()
	new_equalities := ep.getE()

	if !ep.getC().isEmpty() {
		fmt.Printf("Error : constraint not null in applySubstitution\n")
		global.PrintDebug("EQ-AS", fmt.Sprintf("Error : constraint not null in applySubstitution : %v", ep.getC().toString()))
	}

	for old_symbol, new_symbol := range s {
		new_s = complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, new_s)
		new_t = complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, new_t)
		new_equalities = new_equalities.applySubstitution(old_symbol, new_symbol)
	}

	res := makeEqualityProblem(new_equalities, new_s, new_t, makeEmptyConstaintStruct())
	return res
}

/*** Functions ***/

func makeEqualityProblem(E Equalities, s basictypes.Term, t basictypes.Term, c ConstraintStruct) EqualityProblem {
	return EqualityProblem{makeDataStructFromEqualities(E.copy()), makeEQMapFromEqualities(E.copy()), E.copy(), s.Copy(), t.Copy(), c.copy()}
}

/* Take a list of equalities and build the corresponding code tree */
func makeDataStructFromEqualities(eq Equalities) datastruct.DataStructure {
	form_list := basictypes.MakeEmptyFormList()
	for _, e := range eq {
		form_list = append(form_list, treetypes.MakeTermForm(e.getT1()))
		form_list = append(form_list, treetypes.MakeTermForm(e.getT2()))
	}
	return new(treesearch.Node).MakeDataStruct(form_list.Copy(), true)
}

/* Take a list of equalities and build the corresponding assocative map */
func makeEQMapFromEqualities(eq Equalities) map[string][]basictypes.Term {
	map_res := make(map[string][]basictypes.Term)
	for _, e := range eq {
		map_res[e.getT1().ToString()] = append(map_res[e.getT1().ToString()], e.getT2())
		map_res[e.getT2().ToString()] = append(map_res[e.getT2().ToString()], e.getT1())
	}
	return map_res
}
