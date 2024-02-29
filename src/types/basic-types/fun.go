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
* This file contains the implementation of functions.
**/

package basictypes

import (
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* function or constant (f(a,b), f(X,Y), a) */
type Fun struct {
	*MappedString
	p        Id
	args     *TermList
	typeVars []typing.TypeApp
	typeHint typing.TypeScheme
}

var ToMappedStringSurroundWithId = func(f Fun, idString string, mapping MapString, displayTypes bool) string {
	if len(f.typeVars) == 0 && f.GetArgs().Len() == 0 {
		return idString + "%s"
	}
	args := []string{}

	if len(f.typeVars) > 0 {
		if tv := ListToString(f.typeVars, ", ", mapping[PredEmpty]); tv != "" {
			args = append(args, tv)
		}
	}
	args = append(args, "%s")

	str := idString + "(" + strings.Join(args, mapping[PredTypeVarSep]) + ")"
	if displayTypes {
		str += " : " + f.typeHint.ToString()
	}

	return str
}

func (f Fun) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return ToMappedStringSurroundWithId(f, f.GetID().ToMappedString(mapping, displayTypes), mapping, displayTypes)
}

func (f Fun) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return ", ", mapping[PredEmpty]
}

func ToFlatternStringSurrountWithId(f Fun, idString string, mapping MapString, displayTypes bool) string {

	if len(f.typeVars) == 0 && f.GetArgs().Len() == 0 {
		return idString + "%s"
	}
	args := []string{}

	if len(f.typeVars) > 0 {
		if tv := ListToString(f.typeVars, "_", mapping[PredEmpty]); tv != "" {
			args = append(args, tv)
		}
	}
	args = append(args, "%s")

	str := idString + "_" + strings.Join(args, mapping[PredTypeVarSep])
	if displayTypes {
		str += " : " + f.typeHint.ToString()
	}

	return str
}

func (f Fun) GetChildrenForMappedString() []MappableString {
	return f.GetArgs().ToMappableStringSlice()
}

func (f Fun) GetID() Id          { return f.p.Copy().(Id) }
func (f Fun) GetP() Id           { return f.p.Copy().(Id) }
func (f Fun) GetArgs() *TermList { return f.args.Copy() }

func (f *Fun) SetArgs(tl *TermList)               { f.args = tl }
func (f *Fun) SetTypeScheme(ts typing.TypeScheme) { f.typeHint = ts }

func (f Fun) GetTypeVars() []typing.TypeApp  { return f.typeVars }
func (f Fun) GetTypeApp() typing.TypeApp     { return nil }
func (f Fun) GetTypeHint() typing.TypeScheme { return f.typeHint }
func (f Fun) GetIndex() int                  { return f.GetID().GetIndex() }
func (f Fun) GetName() string                { return f.GetID().GetName() }
func (f Fun) IsMeta() bool                   { return false }
func (f Fun) IsFun() bool                    { return true }
func (Fun) ToMeta() Meta                     { return MakeEmptyMeta() }

func (f Fun) Equals(t any) bool {
	switch typed := t.(type) {
	case Fun:
		return typed.GetID().Equals(f.GetID()) &&
			typed.GetArgs().Equals(f.GetArgs()) &&
			f.typeHint.Equals(typed.typeHint)
	case *Fun:
		return typed.GetID().Equals(f.GetID()) &&
			typed.GetArgs().Equals(f.GetArgs()) &&
			f.typeHint.Equals(typed.typeHint)
	default:
		return false
	}
}

func (f Fun) Copy() Term {
	return MakeFun(f.GetP(), f.GetArgs(), typing.CopyTypeAppList(f.GetTypeVars()), f.GetTypeHint())
}

func (f Fun) PointerCopy() *Fun {
	return NewFun(f.GetP(), f.GetArgs(), typing.CopyTypeAppList(f.GetTypeVars()), f.GetTypeHint())
}

func (f Fun) GetMetas() *MetaList {
	metas := NewMetaList()

	for _, arg := range f.GetArgs().Slice() {
		metas.Append(arg.GetMetas().Slice()...)
	}

	return metas
}

func (f Fun) ReplaceSubTermBy(oldTerm, newTerm Term) Term {
	if f.Equals(oldTerm) {
		return newTerm.Copy()
	} else {
		return MakeFun(f.GetID(), f.GetArgs().replaceFirstOccurrenceTermList(oldTerm, newTerm), f.GetTypeVars(), f.GetTypeHint())
	}
}

func (f Fun) ReplaceAllSubTerm(oldTerm, newTerm Term) Term {
	if f.Equals(oldTerm) {
		return newTerm.Copy()
	} else {
		return MakeFun(f.GetID(), f.GetArgs().replaceOccurrence(oldTerm, newTerm), f.GetTypeVars(), f.GetTypeHint())
	}
}

func (f Fun) GetSubTerms() *TermList {
	res := NewTermList()

	res.AppendIfNotContains(f)
	for _, arg := range f.GetArgs().Slice() {
		res.AppendIfNotContains(arg.GetSubTerms().Slice()...)
	}

	return res
}
