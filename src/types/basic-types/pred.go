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

/***********/
/* pred.go */
/***********/

/**
* This file implements a Pred, which is an atomic formula.
* It's composed of a name (for example, in forall x. human(x) => mortal(x),
* `human` and `mortal` are predicate names) and of a list of terms.
**/

package basictypes

import (
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Symbol of predicate */
type Pred struct {
	index    int
	id       Id
	args     []Term
	typeVars []typing.TypeApp
	typeHint typing.TypeScheme
}

func (p Pred) getEmptyChar() string {
	if IsPrettyPrint() {
		return "∅"
	}
	return "{}"
}

/* Pred attributes getters */

func (p Pred) GetIndex() int                 { return p.index }
func (p Pred) GetID() Id                     { return p.id.Copy().(Id) }
func (p Pred) GetArgs() []Term               { return CopyTermList(p.args) }
func (p Pred) GetTypeVars() []typing.TypeApp { return typing.CopyTypeAppList(p.typeVars) }

/* Formula methods */

func (p Pred) GetType() typing.TypeScheme { return p.typeHint }
func (p Pred) RenameVariables() Form      { return p }

func (p Pred) ToString() string {
	if len(p.typeVars) == 0 && len(p.GetArgs()) == 0 {
		return p.GetID().ToString()
	}
	return p.GetID().ToString() + "(" + ListToString(p.typeVars, ", ", p.getEmptyChar()) +
		" ; " + ListToString(p.GetArgs(), ", ", p.getEmptyChar()) + ")"
}

func (p Pred) ToStringWithSuffixMeta(suffix string) string {
	if len(p.typeVars) == 0 && len(p.GetArgs()) == 0 {
		return p.GetID().ToString()
	}
	return p.GetID().ToString() + "(" + ListToString(p.typeVars, ", ", p.getEmptyChar()) +
		" ; " + listToStringMeta(p.GetArgs(), suffix, ", ", p.getEmptyChar()) + ")"
}

func (p Pred) Copy() Form {
	return MakePred(p.GetIndex(), p.GetID(), p.GetArgs(), typing.CopyTypeAppList(p.GetTypeVars()), p.GetType())
}

func (p Pred) Equals(f Form) bool {
	oth, isPred := f.(Pred)
	return isPred &&
		oth.GetID().Equals(p.GetID()) &&
		ComparableList[typing.TypeApp](p.typeVars).Equals(oth.typeVars) &&
		AreEqualsTermList(oth.GetArgs(), p.GetArgs()) &&
		p.typeHint.Equals(oth.typeHint)
}

func (p Pred) GetMetas() MetaList {
	res := MakeEmptyMetaList()
	for _, m := range p.GetArgs() {
		switch mt := m.(type) {
		case Meta:
			res = res.AppendIfNotContains(mt)
		case Fun:
			res = res.Merge(mt.GetMetas())
		}
	}
	return res
}

func (p Pred) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakePred(p.GetIndex(), p.GetID(), replaceTermListTypesByMeta(p.GetArgs(), varList, index), instanciateTypeAppList(p.typeVars, varList, index), p.GetType())
}

func (p Pred) ReplaceVarByTerm(old Var, new Term) Form {
	return MakePred(p.GetIndex(), p.GetID(), replaceVarInTermList(p.GetArgs(), old, new), p.GetTypeVars(), p.GetType())
}
