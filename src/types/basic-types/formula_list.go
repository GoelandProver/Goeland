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
* This file contains functions and types which describe the fomula_list's data
* structure
**/

package basictypes

import (
	"sort"

	"github.com/GoelandProver/Goeland/global"
)

type FormList struct {
	*global.List[Form]
}

func NewFormList(slice ...Form) *FormList {
	return &FormList{global.NewList(slice...)}
}

func (fl *FormList) Less(i, j int) bool {
	return (fl.Get(i).ToString() < fl.Get(j).ToString())
}

func (fl *FormList) Copy() *FormList {
	return &FormList{fl.List.Copy()}
}

func (lf *FormList) ToMappableStringSlice() []MappableString {
	forms := []MappableString{}

	for _, form := range lf.Slice() {
		forms = append(forms, form.(MappableString))
	}

	return forms
}

func (fl *FormList) Equals(other *FormList) bool {
	if fl.Len() != other.Len() {
		return false
	}

	flSorted := fl.Copy()
	sort.Sort(flSorted)

	otherSorted := other.Copy()
	sort.Sort(otherSorted)

	for i := range flSorted.Slice() {
		if !flSorted.Get(i).Equals(otherSorted.Get(i)) {
			return false
		}
	}

	return true
}

// Removes all AND formulas: {(a & b), (b => c), (d & (e & f))} -> {(a), (b), (b => c), (d), (e), (f)}
func (fl *FormList) Flatten() *FormList {
	result := NewFormList()

	for _, form := range fl.Slice() {
		if typed, ok := form.(And); ok {
			result.Append(typed.FormList.Flatten().Slice()...)
		} else {
			result.Append(form)
		}
	}

	return result
}
