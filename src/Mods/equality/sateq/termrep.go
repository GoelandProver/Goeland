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

	"github.com/GoelandProver/Goeland/AST"
)

type Ordered[T any] interface {
	// return -1 if this is smaller than other, 1 if it is greater, 0 if they are equal
	CompareTo(other T) int
}

// to get == to behave as expected, x must be the smallest element
// always use makeUnorderedPair to ensure that this is true
type unorderedPair[T Ordered[T]] struct {
	x, y T
}

func makeUnorderedPair[T Ordered[T]](x, y T) unorderedPair[T] {
	if x.CompareTo(y) == -1 {
		return unorderedPair[T]{x, y}
	}
	return unorderedPair[T]{y, x}
}

var eqClassCounter = 0

type eqClass struct {
	id     int
	parent *eqClass
	size   int
}

func (e *eqClass) Equals(a any) bool {
	if typed, ok := a.(*eqClass); ok {
		return e.id == typed.id
	}

	return false
}

func (e *eqClass) ToString() string {
	return fmt.Sprintf("(id: %d, parent: %d, size: %d)", e.id, e.parent.id, e.size)
}

func (e *eqClass) CompareTo(other *eqClass) int {
	return cmp.Compare(e.representative().id, other.representative().id)
}

func (e *eqClass) representative() *eqClass {
	x := e
	for x.parent != x {
		// path compression with splitting
		x, x.parent = x.parent, x.parent.parent
	}
	return x
}

func (e *eqClass) merge(e2 *eqClass) {
	x := e.representative()
	y := e2.representative()
	if x != y {
		if x.size < y.size {
			// y is the node with the fewest descendents
			x, y = y, x
		}
		// make x the root
		y.parent = x
		x.size += y.size
	}
}

func (e *eqClass) congruent(e2 *eqClass) bool {
	return e.representative() == e2.representative()
}

func makeEqClass() *eqClass {
	r := eqClass{id: eqClassCounter, parent: nil, size: 1}
	r.parent = &r
	eqClassCounter++

	return &r
}

func metaTermRecord(m AST.Meta) *termRecord {
	return &termRecord{
		index:   m.GetIndex(),
		eqClass: makeEqClass(),
		meta:    &m,
	}
}

func funTermRecord(t AST.Fun, args []*eqClass) *termRecord {
	return &termRecord{
		index:    t.GetIndex(),
		eqClass:  makeEqClass(),
		meta:     nil,
		symbolId: t.GetID(),
		args:     args,
	}
}

type termRecord struct {
	index    int
	eqClass  *eqClass
	meta     *AST.Meta
	symbolId AST.Id
	args     []*eqClass
}

func (t *termRecord) isMeta() bool {
	return t.meta != nil
}

func (t *termRecord) Equals(other any) bool {
	if typed, ok := other.(*termRecord); ok {
		return typed == t
	}
	return false
}

func (t *termRecord) congruent(t2 *termRecord) bool {
	// this tests if the eqClass are congruent even if their equivalence classes are disjoint
	if t.index != t2.index || t.isMeta() != t2.isMeta() {
		return false
	}
	if !t.isMeta() {
		for i, c := range t.args {
			if !c.congruent(t2.args[i]) {
				return false
			}
		}
	}
	return true
}

func (t *termRecord) ToString() string {
	//TODO implement me
	panic("implement me")
}

func (t *termRecord) CompareTo(other *termRecord) int {
	if t.isMeta() == other.isMeta() {
		return cmp.Compare(t.index, other.index)
	} else {
		if t.isMeta() {
			return -1
		} else {
			return 1
		}
	}
}
