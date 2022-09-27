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
/* id.go */
/*********/

/**
* This file contains the implementation of IDs.
**/

package basictypes

import "fmt"

/* id (for predicate) */
type Id struct {
	index int
	name  string
}

func (i Id) ToMappedString(MapString, bool) string { return i.ToString() }
func (i Id) GetIndex() int                         { return i.index }
func (i Id) GetName() string                       { return i.name }
func (i Id) ToString() string                      { return fmt.Sprintf("%s_%d", i.GetName(), i.GetIndex()) }
func (i Id) ToStringWithSuffixMeta(string) string  { return i.ToString() }
func (i Id) IsMeta() bool                          { return false }
func (i Id) IsFun() bool                           { return false }
func (i Id) Copy() Term                            { return MakeId(i.GetIndex(), i.GetName()) }
func (Id) ToMeta() Meta                            { return MakeEmptyMeta() }
func (Id) GetMetas() MetaList                      { return MetaList{} }

func (i Id) Equals(t Term) bool {
	return t.GetIndex() == i.GetIndex()
	// oth, isId := t.(Id)
	// return isId &&
	// 	(oth.GetIndex() == i.GetIndex()) &&
	// 	(oth.GetName() == i.GetName())
}

func (i Id) ReplaceSubTermBy(original_term, new_term Term) Term {
	if i.Equals(original_term) {
		return new_term.Copy()
	}
	return i
}

func (i Id) GetSubTerms() TermList {
	return TermList{i}
}
