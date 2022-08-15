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

/**********/
/* fun.go */
/**********/

/**
* This file contains the implementation of functions.
**/

package basictypes

import (
	"github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* function or constant (f(a,b), f(X,Y), a) */
type Fun struct {
	p        Id
	args     []Term
	typeVars []typing.TypeApp
	typeHint typing.TypeScheme
}

func (f Fun) getEmptyChar() string {
	if global.IsPrettyPrint() {
		return "∅"
	}
	return "{}"
}

func (f Fun) GetID() Id       { return f.p.Copy().(Id) }
func (f Fun) GetP() Id        { return f.p.Copy().(Id) }
func (f Fun) GetArgs() []Term { return CopyTermList(f.args) }

func (f *Fun) SetArgs(tl []Term)                  { f.args = tl }
func (f *Fun) SetTypeScheme(ts typing.TypeScheme) { f.typeHint = ts }

func (f Fun) GetTypeVars() []typing.TypeApp  { return f.typeVars }
func (f Fun) GetTypeApp() typing.TypeApp     { return nil }
func (f Fun) GetTypeHint() typing.TypeScheme { return f.typeHint }
func (f Fun) GetIndex() int                  { return f.GetID().GetIndex() }
func (f Fun) GetName() string                { return f.GetID().GetName() }
func (f Fun) IsMeta() bool                   { return false }
func (f Fun) IsFun() bool                    { return true }
func (Fun) ToMeta() Meta                     { return Meta{} }

func (f Fun) ToString() string {
	if len(f.args) == 0 {
		return f.GetID().GetName()
	}
	return f.GetID().GetName() + "(" + ListToString(f.typeVars, ", ", f.getEmptyChar()) + " ; " + ListToString(f.args, ", ", "") + ") : " + f.typeHint.ToString()
}

func (f Fun) ToStringWithSuffixMeta(suffix string) string {
	if len(f.args) == 0 {
		return f.GetID().GetName()
	}
	return f.GetID().GetName() + "(" + listToStringMeta(f.args, suffix, ", ", "") + ") : " + f.typeHint.ToString()
}

func (f Fun) Equals(t Term) bool {
	oth, isFun := t.(Fun)
	return isFun &&
		(oth.GetID() == f.GetID()) &&
		AreEqualsTermList(oth.GetArgs(), f.GetArgs()) &&
		f.typeHint.Equals(oth.typeHint)
}

func (f Fun) Copy() Term {
	return MakeFun(f.GetP(), f.GetArgs(), typing.CopyTypeAppList(f.GetTypeVars()), f.GetTypeHint())
}

func (f Fun) GetMetas() MetaList {
	metas := MetaList{}
	for _, arg := range f.GetArgs() {
		metas = append(metas, arg.GetMetas()...)
	}
	return metas
}

func (f Fun) ReplaceSubTermBy(original_term, new_term Term) Term {
	if f.Equals(original_term) {
		return new_term.Copy()
	} else {
		return MakeFun(f.GetID(), replaceFirstOccurrenceTermList(original_term, new_term, f.GetArgs()), f.GetTypeVars(), f.GetTypeHint())
	}
}

func (f Fun) GetSubTerms() []Term {
	res := []Term{f}
	for _, arg := range f.GetArgs() {
		res = append(res, arg.GetSubTerms()...)
	}
	return res
}