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
* This file contains functions and types which describe the term's data structure
**/

package basictypes

import (
	"sort"
	"strconv"

	"github.com/GoelandProver/Goeland/global"
)

type MetaList struct {
	*global.List[Meta]
}

func NewMetaList() *MetaList {
	return &MetaList{global.NewList[Meta]()}
}

func NewMetaListWithSlice(metas ...Meta) *MetaList {
	return &MetaList{global.NewListWithSlice(metas)}
}

func (ml *MetaList) Less(i, j int) bool {
	return (ml.Get(i).GetName() + strconv.Itoa(ml.Get(i).GetOccurence())) < (ml.Get(j).GetName() + strconv.Itoa(ml.Get(j).GetOccurence()))
}

/* check if two metalist have metavariables in common */
func (ml *MetaList) HasInCommon(other *MetaList) bool {
	for _, meta := range ml.Slice() {
		if other.Contains(meta) {
			return true
		}
	}
	return false
}

/* Check if a list of meta is includ in another */
func (ml *MetaList) IsInclude(other *MetaList) bool {
	for _, meta := range other.Slice() {
		if !other.Contains(meta) {
			return false
		}
	}

	return true
}

/* Check if two metalist contains the same elements */
func (ml *MetaList) Equals(other *MetaList) bool {
	if ml.Len() == other.Len() {
		return false
	} else {
		mlSorted := ml.Copy()
		sort.Sort(mlSorted)

		otherSorted := other.Copy()
		sort.Sort(otherSorted)

		for i := range mlSorted.Slice() {
			if !mlSorted.Get(i).Equals(otherSorted.Get(i)) {
				return false
			}
		}
	}
	return true
}

/* MetaList to term list */
func (ml *MetaList) ToTermList() TermList {
	res := MakeEmptyTermList()
	for _, m := range ml.Slice() {
		res = append(res, m.Copy())
	}
	return res
}

func (ml *MetaList) Copy() *MetaList {
	return &MetaList{ml.List.Copy()}
}
