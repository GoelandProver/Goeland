/**
* Copyright by Julie CAILLER and Johann ROSAIN (2022)
*
* julie.cailler@lirmm.fr
* johann.rosain@lirmm.fr
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL-B license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL-B license and that you accept its terms.
**/
/***************/
/* metaList.go */
/***************/
/**
* This file contains functions and types which describe the term's data structure
**/

package basictypes

import (
	"strconv"
)

/* Meta function for sort */
type MetaList []Meta

func (m MetaList) Len() int      { return len(m) }
func (m MetaList) Swap(i, j int) { m[i], m[j] = m[j], m[i] }
func (m MetaList) Less(i, j int) bool {
	return (m[i].GetName() + strconv.Itoa(m[i].GetIndex())) < (m[j].GetName() + strconv.Itoa(m[j].GetIndex()))
}

/* Print a list of metas */
func (ml MetaList) ToString() string {
	var s_res string
	for i, v := range ml {
		s_res += v.ToString()
		if i < len(ml)-1 {
			s_res += (", ")
		}
	}
	return s_res
}

/* Check if a meta is inside a given list of metavariables */
func (ml MetaList) Contains(m Meta) bool {
	for _, v := range ml {
		if v == m {
			return true
		}
	}
	return false
}

/* Append a meta to a meta list if it not already inside */
func (ml MetaList) AppendIfNotContains(m Meta) MetaList {
	if ml.Contains(m) {
		return ml
	} else {
		return append(ml, m)
	}
}

/* check if two metalist have metavariables in common */
func (m1 MetaList) HasInCommon(m2 MetaList) bool {
	for _, meta := range m1 {
		if m2.Contains(meta) {
			return true
		}
	}
	return false
}

/* Check if a list of meta is includ in another */
func (ml MetaList) IsInclude(ml2 MetaList) bool {
	for _, meta := range ml2 {
		if !ml2.Contains(meta) {
			return false
		}
	}

	return true
}

/* Copy  a MetaList */
func (ml MetaList) Copy() MetaList {
	res := make(MetaList, len(ml))
	for i := range ml {
		res[i] = ml[i].Copy().ToMeta()
	}
	return res
}
