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
package sateq

import (
	"cmp"
	"fmt"
	"sync"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type unorderedPair[T cmp.Ordered] struct {
	x, y T
}

func makeUnorderedPair[T cmp.Ordered](x, y T) unorderedPair[T] {
	if x < y {
		return unorderedPair[T]{x, y}
	}
	return unorderedPair[T]{y, x}
}

type termIndex int

func (ti termIndex) ToString() string {
	return fmt.Sprint(ti)
}

func (ti termIndex) Equals(other any) bool {
	if typed, ok := other.(termIndex); ok {
		return ti == typed
	}

	return false
}

type constant int

var constantCounter = 0
var counterMutex sync.Mutex

func makeConstant() constant {
	counterMutex.Lock()
	defer counterMutex.Unlock()

	cst := constant(constantCounter)
	constantCounter++

	return cst
}

func (c constant) Copy() basictypes.Term {
	return c
}

func (c constant) Equals(other any) bool {
	if typed, ok := other.(constant); ok {
		return int(c) == int(typed)
	}

	return false
}

func (c constant) GetChildrenForMappedString() []basictypes.MappableString {
	return []basictypes.MappableString{}
}

func (c constant) GetIndex() int {
	return int(c)
}

func (c constant) GetMetas() *basictypes.MetaList {
	return basictypes.NewMetaList()
}

func (c constant) GetName() string {
	return c.ToString()
}

func (c constant) GetSubTerms() basictypes.TermList {
	return basictypes.TermList{c}
}

func (c constant) IsFun() bool {
	return false
}

func (c constant) IsMeta() bool {
	return false
}

func (c constant) ReplaceSubTermBy(oldTerm, newTerm basictypes.Term) basictypes.Term {
	if c.Equals(oldTerm) {
		return newTerm
	} else {
		return c
	}
}

func (c constant) ToMeta() basictypes.Meta {
	return basictypes.MakeEmptyMeta()
}

func (c constant) ToString() string {
	return c.ToMappedString(basictypes.MapString{}, false)
}

func (c constant) ToMappedString(m basictypes.MapString, b bool) string {
	_, res := c.ToMappedStringChild(m, b)
	return res
}

func (c constant) ToMappedStringChild(basictypes.MapString, bool) (separator, emptyValue string) {
	return "", fmt.Sprintf("𝓒%v", int(c))
}

func (c constant) ToMappedStringSurround(basictypes.MapString, bool) string {
	return "%s"
}
