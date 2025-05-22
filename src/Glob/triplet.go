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

type Triplet[T, U, V Basic] interface {
	Basic
	GetFst() T
	GetSnd() U
	GetThd() V
	SetFst(T)
	SetSnd(U)
	SetThd(V)
}

type triplet[T, U, V Basic] struct {
	fst T
	snd U
	thd V
}

func NewTriplet[T, U, V Basic](fst T, snd U, thd V) Triplet[T, U, V] {
	return &triplet[T, U, V]{fst, snd, thd}
}

func (t *triplet[T, U, V]) GetFst() T {
	return t.fst
}

func (t *triplet[T, U, V]) GetSnd() U {
	return t.snd
}

func (t *triplet[T, U, V]) GetThd() V {
	return t.thd
}

func (t *triplet[T, U, V]) SetFst(other T) {
	t.fst = other
}

func (t *triplet[T, U, V]) SetSnd(other U) {
	t.snd = other
}

func (t *triplet[T, U, V]) SetThd(other V) {
	t.thd = other
}

func (t *triplet[T, U, V]) Equals(other any) bool {
	if typed, ok := other.(*triplet[T, U, V]); ok {
		return t.fst.Equals(typed.fst) && t.snd.Equals(typed.snd) && t.snd.Equals(typed.thd)
	}

	return false
}

func (t *triplet[T, U, V]) ToString() string {
	return "{" + t.fst.ToString() + ", " + t.snd.ToString() + ", " + t.thd.ToString() + "}"
}

type unorderedTriplet[T Basic] struct {
	Triplet[T, T, T]
}

func NewUnorderedTriplet[T Basic](fst T, snd T, thd T) Triplet[T, T, T] {
	return &unorderedTriplet[T]{NewTriplet(fst, snd, thd)}
}

func (ut *unorderedTriplet[T]) contains(other T) bool {
	return ut.GetFst().Equals(other) || ut.GetSnd().Equals(other) || ut.GetThd().Equals(other)
}

func (ut *unorderedTriplet[T]) containsAll(other *unorderedTriplet[T]) bool {
	return ut.contains(other.GetFst()) && ut.contains(other.GetSnd()) && ut.contains(other.GetThd())
}

func (ut *unorderedTriplet[T]) Equals(other any) bool {
	if typed, ok := other.(*unorderedTriplet[T]); ok {
		return ut.containsAll(typed) && typed.containsAll(ut)
	}

	return false
}
