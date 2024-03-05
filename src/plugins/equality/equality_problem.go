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

/**
* This file contains the type definition for equality reasonning.
**/

package equality

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
	E_map  map[string]*basictypes.TermList
	E      Equalities
	s, t   basictypes.Term
	c      ConstraintStruct
}

func (ep EqualityProblem) getETree() datastruct.DataStructure {
	return ep.E_tree.Copy()
}
func (ep EqualityProblem) getEMap() map[string]*basictypes.TermList {
	return ep.E_map
}
func (ep EqualityProblem) GetE() Equalities {
	return ep.E.copy()
}
func (ep EqualityProblem) GetS() basictypes.Term {
	return ep.s.Copy()
}
func (ep EqualityProblem) GetT() basictypes.Term {
	return ep.t.Copy()
}
func (ep EqualityProblem) getC() ConstraintStruct {
	return ep.c.copy()
}
func (ep EqualityProblem) copy() EqualityProblem {
	return makeEqualityProblem(ep.GetE(), ep.GetS(), ep.GetT(), ep.getC())
}
func (ep EqualityProblem) ToString() string {
	return "<" + ep.GetE().ToString() + ", " + ep.GetS().ToString() + ", " + ep.GetT().ToString() + "> • " + ep.getC().toString()
}

func (ep EqualityProblem) AxiomsToTPTPString() string {
	return ep.GetE().ToTPTPString()
}

func (ep EqualityProblem) ToTPTPString() string {
	return ep.GetS().ToMappedString(basictypes.DefaultMapString, false) + " = " + ep.GetT().ToMappedString(basictypes.DefaultMapString, false)
}

/* Apply a substitution on an equality problem */
func (ep EqualityProblem) applySubstitution(s treetypes.Substitutions) EqualityProblem {
	new_s := ep.GetS()
	new_t := ep.GetT()
	new_equalities := ep.GetE()

	if !ep.getC().isEmpty() {
		global.PrintError("EQ-AS", fmt.Sprintf("Constraint not null in applySubstitution : %v", ep.getC().toString()))
	}

	for _, subst := range s {
		old_symbol, new_symbol := subst.Get()
		new_s = complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, new_s)
		new_t = complextypes.ApplySubstitutionOnTerm(old_symbol, new_symbol, new_t)
		new_equalities = new_equalities.applySubstitution(old_symbol, new_symbol)
	}

	res := makeEqualityProblem(new_equalities, new_s, new_t, makeEmptyConstraintStruct())
	return res
}

func (ep EqualityProblem) getMetas() *basictypes.MetaList {
	metas := basictypes.NewMetaList()

	metas.AppendIfNotContains(ep.E.getMetas().Slice()...)
	metas.AppendIfNotContains(ep.s.GetMetas().Slice()...)
	metas.AppendIfNotContains(ep.t.GetMetas().Slice()...)

	return metas
}

/*** Functions ***/

func makeEqualityProblem(E Equalities, s basictypes.Term, t basictypes.Term, c ConstraintStruct) EqualityProblem {
	return EqualityProblem{makeDataStructFromEqualities(E.copy()), makeEQMapFromEqualities(E.copy()), E.copy(), s.Copy(), t.Copy(), c.copy()}
}

/* Take a list of equalities and build the corresponding code tree */
func makeDataStructFromEqualities(eq Equalities) datastruct.DataStructure {
	formList := basictypes.NewFormList()
	for _, e := range eq {
		formList.Append(treetypes.MakerTermForm(e.GetT1()), treetypes.MakerTermForm(e.GetT2()))
	}
	return treesearch.NewNode().MakeDataStruct(formList.Copy(), true)
}

/* Take a list of equalities and build the corresponding assocative map */
func makeEQMapFromEqualities(eq Equalities) map[string]*basictypes.TermList {
	map_res := make(map[string]*basictypes.TermList)

	for _, e := range eq {
		key1 := e.GetT1().ToString()
		key2 := e.GetT2().ToString()

		if _, found := map_res[key1]; !found {
			map_res[key1] = basictypes.NewTermList()
		}

		if _, found := map_res[key2]; !found {
			map_res[key2] = basictypes.NewTermList()
		}

		map_res[key1].Append(e.GetT2())
		map_res[key2].Append(e.GetT1())
	}

	return map_res
}
