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

/*************/
/* andnor.go */
/*************/

/**
* This file implements a conjunction of formulas and a disjunction of formulas.
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* And(formula list): conjunction of formulae */
type And struct {
	index int
	lf    FormList
}

func (a And) GetLF() FormList { return a.lf.Copy() }

func (a And) ToMappedString(map_ MapString, displayTypes bool) string {
	return "(" + ListToMappedString(a.GetLF(), " "+map_[AndConn]+" ", "", map_, displayTypes) + ")"
}

func (a And) GetIndex() int              { return a.index }
func (a And) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (a And) ToString() string           { return a.ToMappedString(defaultMap, true) }
func (a And) Copy() Form                 { return MakeAnd(a.GetIndex(), a.GetLF()) }
func (a And) GetMetas() MetaList         { return metasUnion(a.GetLF()) }
func (a And) RenameVariables() Form      { return MakeAnd(a.GetIndex(), renameFormList(a.GetLF())) }

func (a And) ToStringWithSuffixMeta(suffix string) string {
	return "(" + listToStringMeta(a.GetLF(), suffix, " "+defaultMap[AndConn]+" ", "") + ")"
}

func (a And) Equals(f Form) bool {
	return a.GetIndex() == f.GetIndex()
	// oth, isAnd := f.(And)
	// return isAnd && oth.GetLF().Equals(a.GetLF())
}

func (a And) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAnd(a.GetIndex(), replaceList(a.GetLF(), varList, index))
}

func (a And) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeAnd(a.GetIndex(), replaceVarInFormList(a.GetLF(), old, new))
}

func (a And) GetSubTerms() []Term {
	res := []Term{}
	for _, tl := range a.GetLF() {
		res = MergeTermList(res, tl.GetSubTerms())
	}
	return res
}

/* Or(formula list): disjunction of formulae */
type Or struct {
	index int
	lf    FormList
}

func (o Or) GetLF() FormList { return o.lf.Copy() }

func (o Or) ToMappedString(map_ MapString, displayTypes bool) string {
	return "(" + ListToMappedString(o.GetLF(), " "+map_[OrConn]+" ", "", map_, displayTypes) + ")"
}

func (o Or) GetIndex() int              { return o.index }
func (o Or) GetType() typing.TypeScheme { return typing.DefaultPropType(0) }
func (o Or) ToString() string           { return o.ToMappedString(defaultMap, true) }
func (o Or) Copy() Form                 { return MakeOr(o.GetIndex(), o.GetLF()) }
func (o Or) GetMetas() MetaList         { return metasUnion(o.GetLF()) }
func (o Or) RenameVariables() Form      { return MakeOr(o.GetIndex(), renameFormList(o.GetLF())) }

func (o Or) ToStringWithSuffixMeta(suffix string) string {
	return "(" + listToStringMeta(o.GetLF(), suffix, " "+defaultMap[OrConn]+" ", "") + ")"
}

func (o Or) Equals(f Form) bool {
	return o.GetIndex() == f.GetIndex()
	// oth, isOr := f.(Or)
	// return isOr && oth.GetLF().Equals(o.GetLF())
}

func (o Or) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeOr(o.GetIndex(), replaceList(o.GetLF(), varList, index))
}

func (o Or) ReplaceVarByTerm(old Var, new Term) Form {
	return MakeOr(o.GetIndex(), replaceVarInFormList(o.GetLF(), old, new))
}
func (o Or) GetSubTerms() []Term {
	res := []Term{}
	for _, tl := range o.GetLF() {
		res = MergeTermList(res, tl.GetSubTerms())
	}
	return res
}

// ----------------------------------------------------------------------------
// Utility Or/And functions
// ----------------------------------------------------------------------------

func metasUnion(fl FormList) MetaList {
	res := MakeEmptyMetaList()
	for _, f := range fl {
		res = res.Merge(f.GetMetas())
	}
	return res
}

func replaceList(fl FormList, varList []typing.TypeVar, index int) FormList {
	nfl := MakeEmptyFormList()
	for _, f := range fl {
		nfl = append(nfl, f.ReplaceTypeByMeta(varList, index))
	}
	return nfl
}

func replaceVarInFormList(fl FormList, old Var, new Term) FormList {
	nfl := MakeEmptyFormList()
	for _, form := range fl {
		nfl = append(nfl, form.ReplaceVarByTerm(old, new))
	}
	return nfl
}

func renameFormList(fl FormList) FormList {
	nfl := MakeEmptyFormList()
	for _, form := range fl {
		nfl = append(nfl, form.RenameVariables())
	}
	return nfl
}
