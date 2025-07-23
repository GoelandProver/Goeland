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
 * This file defines Goéland's terms
 **/

package AST

import (
	"fmt"
	"strings"
	"unicode"
	"unicode/utf8"

	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

// -----------------------------------------------------------------------------
// Predicates / functions symbols

type Id struct {
	*MappedString
	index int
	name  string
}

func (i Id) GetIndex() int             { return i.index }
func (i Id) GetName() string           { return i.name }
func (i Id) IsMeta() bool              { return false }
func (i Id) IsFun() bool               { return false }
func (i Id) Copy() Term                { return MakeId(i.GetIndex(), i.GetName()) }
func (Id) ToMeta() Meta                { return MakeEmptyMeta() }
func (Id) GetMetas() Lib.Set[Meta]     { return Lib.EmptySet[Meta]() }
func (Id) GetMetaList() Lib.List[Meta] { return Lib.NewList[Meta]() }

var ToStringId = func(i Id) string {
	return fmt.Sprintf("%s_%d", i.GetName(), i.GetIndex())
}

func (i Id) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "%s"
}

func (i Id) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return "", ToStringId(i)
}

func NoIdToString(i Id) string {
	return fmt.Sprintf("%s", i.GetName())
}

func QuotedToString(i Id) string {
	if i.GetName() == "Goeland_I" || strings.Contains(i.GetName(), "Sko_") {
		return fmt.Sprintf("%s", i.GetName())
	} else {
		r, _ := utf8.DecodeRuneInString(i.GetName())
		if unicode.IsUpper(r) {
			return fmt.Sprintf("'%s'", i.GetName())
		} else {
			return fmt.Sprintf("%s", i.GetName())
		}
	}
}

func (i Id) GetChildrenForMappedString() []MappableString {
	return []MappableString{}
}

func (i Id) Equals(t any) bool {
	if typed, ok := t.(Id); ok {
		return typed.GetIndex() == i.GetIndex()
	}
	return false
}

func (i Id) ReplaceSubTermBy(original_term, new_term Term) Term {
	if i.Equals(original_term) {
		return new_term.Copy()
	}
	return i
}

func (i Id) ReplaceTyVar(TyBound, Ty) Term { return i }

func (i Id) GetSubTerms() Lib.List[Term] {
	return Lib.MkListV[Term](i)
}

// id < other : -1; id = other : 0; id > other : 1
func (i Id) CompareWith(other Id) int {
	if i.name == other.name {
		switch {
		case i.index < other.index:
			return -1
		case i.index == other.index:
			return 0
		default:
			return 1
		}
	}

	return strings.Compare(i.name, other.name)
}

func (i Id) Less(u any) bool {
	switch t := u.(type) {
	case Term:
		return i.GetIndex() < t.GetIndex()
	default:
		Glob.Anomaly("Strict term comparison", "Not comparing two terms")
	}
	return false
}

// -----------------------------------------------------------------------------
// n-ary functions

type Fun struct {
	*MappedString
	p     Id
	tys   Lib.List[Ty]
	args  Lib.List[Term]
	metas Lib.Cache[Lib.Set[Meta], Fun]
}

func (f Fun) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return f.ToMappedStringSurroundWithId(f.GetID().ToMappedString(mapping, displayTypes), mapping, displayTypes)
}

func (f Fun) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	return ", ", mapping[PredEmpty]
}

func (f Fun) ToMappedStringSurroundWithId(idString string, mapping MapString, displayTypes bool) string {
	if f.tys.Empty() && f.GetArgs().Empty() {
		return idString + "%s"
	}

	args := []string{}
	if !f.tys.Empty() {
		if tv := Lib.ListToString(f.tys, ", ", mapping[PredEmpty]); tv != "" {
			args = append(args, tv)
		}
	}

	args = append(args, "%s")

	str := idString + "(" + strings.Join(args, mapping[PredTypeVarSep]) + ")"

	return str
}

func ToFlatternStringSurrountWithId(f Fun, idString string, mapping MapString, displayTypes bool) string {
	if f.GetArgs().Len() == 0 {
		return idString + "%s"
	}
	args := []string{}
	args = append(args, "%s")

	str := idString + "_" + strings.Join(args, mapping[PredTypeVarSep])

	return str
}

func (f Fun) GetChildrenForMappedString() []MappableString {
	mappableList := Lib.ListMap(f.GetArgs(), Glob.To[MappableString])
	return mappableList.GetSlice()
}

func (f Fun) GetID() Id               { return f.p.Copy().(Id) }
func (f Fun) GetP() Id                { return f.p.Copy().(Id) }
func (f Fun) GetTyArgs() Lib.List[Ty] { return f.tys }
func (f Fun) GetArgs() Lib.List[Term] { return f.args }

func (f *Fun) SetArgs(tl Lib.List[Term]) { f.args = tl }

func (f Fun) GetIndex() int   { return f.GetID().GetIndex() }
func (f Fun) GetName() string { return f.GetID().GetName() }
func (f Fun) IsMeta() bool    { return false }
func (f Fun) IsFun() bool     { return true }
func (Fun) ToMeta() Meta      { return MakeEmptyMeta() }

func (f Fun) Equals(t any) bool {
	switch typed := t.(type) {
	case Fun:
		return typed.GetID().Equals(f.GetID()) &&
			Lib.ListEquals(typed.GetTyArgs(), f.GetTyArgs()) &&
			Lib.ListEquals(typed.GetArgs(), f.GetArgs())
	case *Fun:
		return typed.GetID().Equals(f.GetID()) &&
			Lib.ListEquals(typed.GetTyArgs(), f.GetTyArgs()) &&
			Lib.ListEquals(typed.GetArgs(), f.GetArgs())
	default:
		return false
	}
}

func (f Fun) Copy() Term {
	return MakeFun(f.GetP(), Lib.ListCpy(f.GetTyArgs()), Lib.ListCpy(f.GetArgs()), f.metas.Raw())
}

func (f Fun) PointerCopy() *Fun {
	nf := MakeFun(f.GetP(), f.GetTyArgs(), f.GetArgs(), f.metas.Raw())
	return &nf
}

func (f Fun) forceGetMetas() Lib.Set[Meta] {
	metas := Lib.EmptySet[Meta]()

	for _, arg := range f.GetArgs().GetSlice() {
		metas = metas.Union(arg.GetMetas())
	}

	return metas
}

func (f Fun) GetMetas() Lib.Set[Meta] {
	return f.metas.Get(f)
}

func (f Fun) GetMetaList() Lib.List[Meta] {
	metas := Lib.NewList[Meta]()

	for _, arg := range f.GetArgs().GetSlice() {
		switch t := arg.(type) {
		case Fun:
			metas.Append(t.GetMetaList().GetSlice()...)
		default:
			metas.Append(arg.GetMetas().Elements().GetSlice()...)
		}
	}

	return metas
}

func (f Fun) ReplaceSubTermBy(oldTerm, newTerm Term) Term {
	if f.Equals(oldTerm) {
		return newTerm.Copy()
	} else {
		tl, res := replaceFirstOccurrenceTermList(f.GetArgs(), oldTerm, newTerm)
		nf := MakeFun(f.GetID(), f.GetTyArgs(), tl, f.metas.Raw())
		if !res && !f.metas.NeedsUpd() {
			nf.metas.AvoidUpd()
		}
		return nf
	}
}

func (f Fun) ReplaceTyVar(old TyBound, new Ty) Term {
	typed_args := Lib.ListMap(
		f.tys,
		func(t Ty) Ty { return t.ReplaceTyVar(old, new) },
	)
	args := Lib.ListMap(
		f.args,
		func(t Term) Term { return t.ReplaceTyVar(old, new) },
	)
	return MakeFun(
		f.GetID(),
		typed_args,
		args,
		f.metas.Raw(),
	)
}

func (f Fun) ReplaceAllSubTerm(oldTerm, newTerm Term) Term {
	if f.Equals(oldTerm) {
		return newTerm.Copy()
	} else {
		tl, res := ReplaceOccurrence(f.GetArgs(), oldTerm, newTerm)
		nf := MakeFun(f.GetID(), f.GetTyArgs(), tl, f.metas.Raw())
		if !res && !f.metas.NeedsUpd() {
			nf.metas.AvoidUpd()
		}
		return nf
	}
}

func (f Fun) GetSubTerms() Lib.List[Term] {
	res := Lib.NewList[Term]()

	res.Add(TermEquals, f)
	for _, arg := range f.GetArgs().GetSlice() {
		res.Add(TermEquals, arg.GetSubTerms().GetSlice()...)
	}

	return res
}

func (f Fun) Less(u any) bool {
	switch t := u.(type) {
	case Term:
		return f.GetIndex() < t.GetIndex()
	default:
		Glob.Anomaly("Strict term comparison", "Not comparing two terms")
	}
	return false
}

// -----------------------------------------------------------------------------
// Bound variables

type Var struct {
	*MappedString
	index int
	name  string
}

func (v Var) GetIndex() int             { return v.index }
func (v Var) GetName() string           { return v.name }
func (v Var) IsMeta() bool              { return false }
func (v Var) IsFun() bool               { return false }
func (v Var) Copy() Term                { return MakeVar(v.GetIndex(), v.GetName()) }
func (Var) ToMeta() Meta                { return MakeEmptyMeta() }
func (Var) GetMetas() Lib.Set[Meta]     { return Lib.EmptySet[Meta]() }
func (Var) GetMetaList() Lib.List[Meta] { return Lib.NewList[Meta]() }

func (v Var) Equals(t any) bool {
	if typed, ok := t.(Var); ok {
		return v.GetIndex() == typed.GetIndex()
	}
	return false
}

func (v Var) GetSubTerms() Lib.List[Term] {
	return Lib.MkListV[Term](v)
}

func (v Var) ReplaceSubTermBy(original_term, new_term Term) Term {
	if v.Equals(original_term) {
		return new_term.Copy()
	}
	return v
}

func (v Var) ReplaceTyVar(TyBound, Ty) Term { return v }

func (v Var) ToMappedString(map_ MapString, type_ bool) string {
	return v.GetName()
}

func (v Var) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "%s"
}

func (v Var) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	if displayTypes {
		return "", fmt.Sprintf("%s_%d", v.GetName(), v.GetIndex())
	} else {
		return "", v.GetName()
	}
}

func (v Var) GetChildrenForMappedString() []MappableString {
	return []MappableString{}
}

func (v Var) Less(u any) bool {
	switch t := u.(type) {
	case Term:
		return v.GetIndex() < t.GetIndex()
	default:
		Glob.Anomaly("Strict term comparison", "Not comparing two terms")
	}
	return false
}

// -----------------------------------------------------------------------------
// Meta/Free variables

type Meta struct {
	*MappedString
	index     int
	occurence int
	name      string
	formula   int
	ty        Ty
}

func (m Meta) GetFormula() int { return m.formula }

func (m Meta) GetName() string             { return m.name }
func (m Meta) GetIndex() int               { return m.index }
func (m Meta) GetOccurence() int           { return m.occurence }
func (m Meta) IsMeta() bool                { return true }
func (m Meta) IsFun() bool                 { return false }
func (m Meta) ToMeta() Meta                { return m }
func (m Meta) GetMetas() Lib.Set[Meta]     { return Lib.Singleton(m) }
func (m Meta) GetMetaList() Lib.List[Meta] { return Lib.MkListV(m) }
func (m Meta) GetTy() Ty                   { return m.ty }

func (m Meta) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return "%s"
}

func (m Meta) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	if displayTypes {
		return "", fmt.Sprintf("%s_%d : %s", m.GetName(), m.GetIndex(), m.ty.ToString())
	} else {
		return "", fmt.Sprintf("%s_%d", m.GetName(), m.GetIndex())
	}
}

func (m Meta) GetChildrenForMappedString() []MappableString {
	return []MappableString{}
}

func (m Meta) Equals(t any) bool {
	if typed, ok := t.(Meta); ok {
		return typed.GetIndex() == m.GetIndex()
	}
	return false
}

func (m Meta) Copy() Term {
	return MakeMeta(m.GetIndex(), m.GetOccurence(), m.GetName(), m.GetFormula(), m.GetTy())
}

func (m Meta) ReplaceSubTermBy(original_term, new_term Term) Term {
	if m.Equals(original_term) {
		return new_term.Copy()
	}
	return m
}

func (m Meta) ReplaceTyVar(TyBound, Ty) Term { return m }

func (m Meta) GetSubTerms() Lib.List[Term] {
	return Lib.MkListV[Term](m)
}

func (m Meta) Less(u any) bool {
	switch t := u.(type) {
	case Term:
		return m.GetIndex() < t.GetIndex()
	default:
		Glob.Anomaly("Strict term comparison", "Not comparing two terms")
	}
	return false
}

func MakeEmptyMeta() Meta {
	// FIXME: nil are bad
	return MakeMeta(-1, -1, "-1", -1, nil)
}

func MetaEquals(x, y Meta) bool {
	return x.Equals(y)
}
