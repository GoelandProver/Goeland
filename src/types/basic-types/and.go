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
/* and.go */
/**********/

/**
* This file implements a conjunction of formulas
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

// A Formula list that represents the conjunction of formulae
type And struct {
	index int
	FormList
	MetaList
}

/** Constructors **/

func MakeAnd(i int, forms FormList) And {
	return And{index: i, FormList: forms, MetaList: make(MetaList, 0)}
}

func MakerAnd(forms FormList) And {
	return MakeAnd(MakerIndexFormula(), forms)
}

/** Methods **/

/** - Form interface Methods **/

func (a And) GetIndex() int {
	return a.index
}

func (a And) GetMetas() MetaList {
	return metasUnion(a.FormList)
}

func (a And) GetType() typing.TypeScheme {
	return typing.DefaultPropType(0)
}

func (a And) GetSubTerms() TermList {
	res := TermList{}
	for _, tl := range a.FormList {
		res = res.MergeTermList(tl.GetSubTerms())
	}
	return res
}

func (a And) ToString() string {
	return a.ToMappedString(defaultMap, true)
}

func (a And) Equals(f any) bool {
	oth, isAnd := f.(And)
	return isAnd && oth.FormList.Equals(a.FormList)
}

func (a And) Copy() Form {
	return And{
		index:    a.index,
		FormList: a.FormList.Copy(),
		MetaList: a.MetaList.Copy(),
	}
}

func (a And) ToMappedString(map_ MapString, displayTypes bool) string {
	return "(" + ListToMappedString(a.FormList, " "+map_[AndConn]+" ", "", map_, displayTypes) + ")"
}

func (a And) ToStringWithSuffixMeta(suffix string) string {
	return "(" + listToStringMeta(a.FormList, suffix, " "+defaultMap[AndConn]+" ", "") + ")"
}

func (a And) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeAnd(a.GetIndex(), replaceList(a.FormList, varList, index))
}

func (a And) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	varList, res := replaceVarInFormList(a.FormList, old, new)
	return And{a.GetIndex(), varList, a.MetaList}, res
}

func (a And) RenameVariables() Form {
	return MakeAnd(a.GetIndex(), renameFormList(a.FormList))
}

func (a And) CleanFormula() Form {
	a.CleanFormList()
	return a
}

func (a And) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList := make(FormList, 0)
	found := false
	for _, form := range a.FormList {
		f := form.SubstituteVarByMeta(old, new)
		newFormList = append(newFormList, f)
		if f.GetInternalMetas().Contains(new) {
			found = true
		}
	}
	metas := a.MetaList
	if found {
		metas = append(a.MetaList, new)
	}
	return And{a.index, newFormList, metas}
}

func (a And) GetInternalMetas() MetaList {
	return a.MetaList
}

func (a And) GetSubFormulas() FormList {
	return getSubformsOfSubformList(a, a.FormList)
}
