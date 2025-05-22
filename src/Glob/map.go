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
package Glob

// A simple map of generic Basic types.
//
// Instanciate with NewMap() or NewSyncMap() for a synchronised version.
type Map[T Basic, U Basic] struct {
	*RWSynchroniser

	keys   *List[T]
	values *List[U]
}

// Create a new Map and gives its pointer
func NewMap[T Basic, U Basic]() *Map[T, U] {
	return &Map[T, U]{NewRWSynchroniser(), NewList[T](), NewList[U]()}
}

// Creates a new synchronised Map and gives its pointer
func NewSyncMap[T Basic, U Basic]() *Map[T, U] {
	syncMap := NewMap[T, U]()
	MakeIntoSyncableRW(syncMap)

	return syncMap
}

// Given a key, gives the value associated with that key and if the key exists. If the key doesn't exist, gives a zero value of type U.
func (m *Map[T, U]) GetExists(otherKey T) (U, bool) {
	m.DoAtStartR()
	defer m.DoAtEndR()

	return m.getExists(otherKey)
}

func (m *Map[T, U]) getExists(otherKey T) (U, bool) {
	for i, key := range m.keys.Slice() {
		if key.Equals(otherKey) {
			return m.values.Get(i), true
		}
	}
	var zero U
	return zero, false
}

// Given a key, gives the value associated with that key. If the key doesn't exist, gives a zero value of type U.
func (m *Map[T, U]) Get(otherKey T) U {
	m.DoAtStartR()
	defer m.DoAtEndR()

	return m.get(otherKey)
}

func (m *Map[T, U]) get(otherKey T) U {
	value, _ := m.getExists(otherKey)
	return value
}

// Given a key, return true if the key exists.
func (m *Map[T, U]) Exists(otherKey T) bool {
	m.DoAtStartR()
	defer m.DoAtEndR()

	return m.exists(otherKey)
}

func (m *Map[T, U]) exists(otherKey T) bool {
	_, result := m.getExists(otherKey)
	return result
}

// Given a value, gives the key associated with that value and if the value exists. If the value doesn't exist, gives a zero value of type T.
func (m *Map[T, U]) GetKey(otherValue U) (key T, found bool) {
	m.DoAtStartR()
	defer m.DoAtEndR()

	if index, ok := m.values.GetIndexOf(otherValue); ok {
		return m.keys.Get(index), true
	}

	return key, false
}

// Sets the given value to be associated with the given key. If the key already existed, the new value overrides the previous value.
// Returns the old value if it was replaced and a boolean indicating if a value was replaced.
func (m *Map[T, U]) Set(otherKey T, otherValue U) (oldValue U, replacedValue bool) {
	m.DoAtStart()
	defer m.DoAtEnd()

	return m.set(otherKey, otherValue)
}

func (m *Map[T, U]) set(otherKey T, otherValue U) (oldValue U, replacedValue bool) {
	for i, key := range m.keys.Slice() {
		if key.Equals(otherKey) {
			oldValue := m.values.Get(i)
			m.values.Set(i, otherValue)
			return oldValue, true
		}
	}

	m.keys.Append(otherKey)
	m.values.Append(otherValue)

	return oldValue, false
}

// Removes the given key and the associated value, if they existed.
func (m *Map[T, U]) Unset(otherKey T) {
	m.DoAtStart()
	defer m.DoAtEnd()

	index, success := m.keys.GetIndexOf(otherKey)

	if success {
		m.keys.Remove(index)
		m.values.Remove(index)
	}
}

// Indicated the amount of keys there are in the Map.
func (m *Map[T, U]) Length() int {
	m.DoAtStartR()
	defer m.DoAtEndR()

	return m.keys.Len()
}

// Removes every key and every associated value from the Map.
func (m *Map[T, U]) Clear() {
	m.DoAtStart()
	defer m.DoAtEnd()

	m.keys = NewList[T]()
	m.values = NewList[U]()
}

// Create a shallow copy of the Map.
func (m *Map[T, U]) Clone() *Map[T, U] {
	m.DoAtStartR()
	defer m.DoAtEndR()

	newCm := NewMap[T, U]()
	newCm.keys.Append(m.keys.Slice()...)
	newCm.values.Append(m.values.Slice()...)
	return newCm
}

// Inserts all the keys and associated values inside another Map.
func (m *Map[T, U]) CopyInto(other *Map[T, U]) {
	m.DoAtStart()
	defer m.DoAtEnd()

	for i := range m.keys.Slice() {
		other.Set(m.keys.Get(i), m.values.Get(i))
	}
}

// Returns a slice with all the keys.
func (m *Map[T, U]) Keys() []T {
	m.DoAtStartR()
	defer m.DoAtEndR()

	return m.keys.Slice()
}

// Returns a slice with all the values.
func (m *Map[T, U]) Values() []U {
	m.DoAtStartR()
	defer m.DoAtEndR()

	return m.values.Slice()
}

// Returns a string that represents the Map.
//
// The string will look like: "{" + list[0].toString + ", " + list[1].toString + ", " + list[2].toString + "]"
func (m *Map[T, U]) ToString() string {
	m.DoAtStartR()
	defer m.DoAtEndR()

	result := "{"
	for i := range m.keys.Slice() {
		result += m.keys.Get(i).ToString() + " : " + m.values.Get(i).ToString() + "; "
	}

	if m.keys.Len() > 0 {
		return result[:len(result)-2] + "}"
	} else {
		return "{}"
	}
}

type MapWithList[T Basic, U Basic] struct {
	Map[T, *List[U]]
}

func NewMapWithList[T Basic, U Basic]() *MapWithList[T, U] {
	return &MapWithList[T, U]{*NewMap[T, *List[U]]()}
}

func NewSyncMapWithList[T Basic, U Basic]() *MapWithList[T, U] {
	syncMap := NewMapWithList[T, U]()
	MakeIntoSyncableRW(syncMap)

	return syncMap
}

func (mwl *MapWithList[T, U]) Add(key T, value ...U) {
	mwl.DoAtStart()
	defer mwl.DoAtEnd()

	if !mwl.exists(key) {
		mwl.set(key, NewList[U]())
	}
	mwl.get(key).Append(value...)
}

func (mwl *MapWithList[T, U]) AddIfNotContains(key T, value ...U) {
	mwl.DoAtStart()
	defer mwl.DoAtEnd()

	if !mwl.exists(key) {
		mwl.set(key, NewList[U]())
	}
	mwl.get(key).AppendIfNotContains(value...)
}

func (mwl *MapWithList[T, U]) Remove(key T, index int) {
	mwl.DoAtStart()
	defer mwl.DoAtEnd()

	if !mwl.exists(key) {
		mwl.set(key, NewList[U]())
	}
	mwl.get(key).Remove(index)
}

func (mwl *MapWithList[T, U]) RemoveAll(key T, value U) {
	mwl.DoAtStart()
	defer mwl.DoAtEnd()

	if !mwl.exists(key) {
		mwl.set(key, NewList[U]())
	}
	mwl.get(key).RemoveAll(value)
}
