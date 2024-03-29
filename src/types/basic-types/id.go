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
* This file contains the implementation of IDs.
**/

package basictypes

import (
	"fmt"
	"strings"
	"unicode"
	"unicode/utf8"
)

/* id (for predicate) */
type Id struct {
	*MappedString
	index int
	name  string
}

func (i Id) GetIndex() int     { return i.index }
func (i Id) GetName() string   { return i.name }
func (i Id) IsMeta() bool      { return false }
func (i Id) IsFun() bool       { return false }
func (i Id) Copy() Term        { return MakeId(i.GetIndex(), i.GetName()) }
func (Id) ToMeta() Meta        { return MakeEmptyMeta() }
func (Id) GetMetas() *MetaList { return NewMetaList() }

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

func (i Id) GetSubTerms() *TermList {
	return NewTermList(i)
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
