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

/*********/
/* or.go */
/*********/

/**
* This file implements a disjunction of formulas.
**/

package basictypes

import (
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

// A Formula list that represents the disjunction of formulae
type Or struct {
	index int
	FormList
	MetaList
}

/** Constructors **/

func MakeOr(i int, forms FormList) Or {
	return Or{i, forms, make(MetaList, 0)}
}

func MakerOr(forms FormList) Or {
	return MakeOr(MakerIndexFormula(), forms)
}

/** Methods **/

/** - Form interface Methods **/

func (o Or) GetIndex() int {
	return o.index
}

func (o Or) GetMetas() MetaList {
	return metasUnion(o.FormList)
}

func (o Or) GetType() typing.TypeScheme {
	return typing.DefaultPropType(0)
}

func (o Or) GetSubTerms() TermList {
	res := MakeEmptyTermList()
	for _, tl := range o.FormList {
		res = res.MergeTermList(tl.GetSubTerms())
	}
	return res
}

func (o Or) ToString() string {
	return o.ToMappedString(defaultMap, true)
}

func (o Or) Equals(f any) bool {
	oth, isOr := f.(Or)
	return isOr && oth.FormList.Equals(o.FormList)
}

func (o Or) Copy() Form {
	return Or{index: o.index, FormList: o.FormList.Copy(), MetaList: o.MetaList.Copy()}
}

func (o Or) ToMappedString(map_ MapString, displayTypes bool) string {
	return "(" + ListToMappedString(o.FormList, " "+map_[OrConn]+" ", "", map_, displayTypes) + ")"
}

func (o Or) ToStringWithSuffixMeta(suffix string) string {
	return "(" + listToStringMeta(o.FormList, suffix, " "+defaultMap[OrConn]+" ", "") + ")"
}

func (o Or) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakeOr(o.GetIndex(), replaceList(o.FormList, varList, index))
}

func (o Or) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	formList, res := replaceVarInFormList(o.FormList, old, new)
	return MakeOr(o.GetIndex(), formList), res
}

func (o Or) RenameVariables() Form {
	return MakeOr(o.GetIndex(), renameFormList(o.FormList))
}

func (o Or) CleanFormula() Form {
	o.FormList.CleanFormList()
	return o
}

func (o Or) SubstituteVarByMeta(old Var, new Meta) Form {
	newFormList := make(FormList, 0)
	found := false
	for _, form := range o.FormList {
		f := form.SubstituteVarByMeta(old, new)
		newFormList = append(newFormList, f)
		if f.GetInternalMetas().Contains(new) {
			found = true
		}
	}
	metas := o.MetaList
	if found {
		metas = append(o.MetaList, new)
	}
	return Or{o.index, newFormList, metas}
}

func (o Or) GetInternalMetas() MetaList {
	return o.MetaList
}
