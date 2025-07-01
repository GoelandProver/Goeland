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

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Mods/equality/eqStruct"
	"github.com/GoelandProver/Goeland/Unif"
)

type EqualityProblem struct {
	E_tree Unif.DataStructure
	E_map  map[string]Lib.List[AST.Term]
	E      Equalities
	s, t   AST.Term
	c      ConstraintStruct
}

func (ep EqualityProblem) getETree() Unif.DataStructure {
	return ep.E_tree.Copy()
}
func (ep EqualityProblem) getEMap() map[string]Lib.List[AST.Term] {
	return ep.E_map
}
func (ep EqualityProblem) GetE() Equalities {
	return ep.E.copy()
}
func (ep EqualityProblem) GetS() AST.Term {
	return ep.s.Copy()
}
func (ep EqualityProblem) GetT() AST.Term {
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
	return ep.GetS().ToMappedString(AST.DefaultMapString, false) + " = " + ep.GetT().ToMappedString(AST.DefaultMapString, false)
}

/* Apply a substitution on an equality problem */
func (ep EqualityProblem) applySubstitution(s Unif.Substitutions) EqualityProblem {
	new_s := ep.GetS()
	new_t := ep.GetT()
	new_equalities := ep.GetE()

	if !ep.getC().isEmpty() {
		Glob.PrintError("EQ-AS", fmt.Sprintf("Constraint not null in applySubstitution : %v", ep.getC().toString()))
	}

	for _, subst := range s {
		old_symbol, new_symbol := subst.Get()
		new_s = Core.ApplySubstitutionOnTerm(old_symbol, new_symbol, new_s)
		new_t = Core.ApplySubstitutionOnTerm(old_symbol, new_symbol, new_t)
		new_equalities = new_equalities.applySubstitution(old_symbol, new_symbol)
	}

	res := makeEqualityProblem(new_equalities, new_s, new_t, makeEmptyConstraintStruct())
	return res
}

func (ep EqualityProblem) getMetas() Lib.Set[AST.Meta] {
	metas := ep.E.getMetas()

	metas = metas.Union(ep.s.GetMetas())
	metas = metas.Union(ep.t.GetMetas())

	return metas
}

/*** Functions ***/

func makeEqualityProblemList(E Equalities, goal []eqStruct.TermPair) EqualityProblemList {
	epl := makeEmptyEqualityProblemList()

	for _, g := range goal {
		epl = append(epl, makeEqualityProblem(E, g.GetT1(), g.GetT2(), makeEmptyConstraintStruct()))
	}

	return epl
}

func makeEqualityProblem(E Equalities, s AST.Term, t AST.Term, c ConstraintStruct) EqualityProblem {
	return EqualityProblem{makeDataStructFromEqualities(E.copy()), makeEQMapFromEqualities(E.copy()), E.copy(), s.Copy(), t.Copy(), c.copy()}
}

/* Take a list of equalities and build the corresponding code tree */
func makeDataStructFromEqualities(eq Equalities) Unif.DataStructure {
	formList := AST.NewFormList()
	for _, e := range eq {
		formList.Append(Unif.MakerTermForm(e.GetT1()), Unif.MakerTermForm(e.GetT2()))
	}
	return Unif.NewNode().MakeDataStruct(formList.Copy(), true)
}

/* Take a list of equalities and build the corresponding assocative map */
func makeEQMapFromEqualities(eq Equalities) map[string]Lib.List[AST.Term] {
	map_res := make(map[string]Lib.List[AST.Term])

	for _, e := range eq {
		key1 := e.GetT1().ToString()
		key2 := e.GetT2().ToString()

		if _, found := map_res[key1]; !found {
			map_res[key1] = Lib.NewList[AST.Term]()
		}

		if _, found := map_res[key2]; !found {
			map_res[key2] = Lib.NewList[AST.Term]()
		}

		upd1 := map_res[key1]
		upd2 := map_res[key2]

		upd1.Append(e.GetT2())
		upd2.Append(e.GetT1())

		map_res[key1] = upd1
		map_res[key2] = upd2
	}

	return map_res
}
