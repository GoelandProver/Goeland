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

type Pair[T, U any] struct {
	Fst T
	Snd U
}

func MakePair[T, U any](fst T, snd U) Pair[T, U] {
	return Pair[T, U]{Fst: fst, Snd: snd}
}

type BasicPaired[T, U Basic] interface {
	Basic
	GetFst() T
	GetSnd() U
	SetFst(T)
	SetSnd(U)
}

type BasicPair[T, U Basic] struct {
	fst T
	snd U
}

func NewBasicPair[T, U Basic](fst T, snd U) *BasicPair[T, U] {
	return &BasicPair[T, U]{fst, snd}
}

func (bp *BasicPair[T, U]) GetFst() T {
	return bp.fst
}

func (bp *BasicPair[T, U]) GetSnd() U {
	return bp.snd
}

func (bp *BasicPair[T, U]) SetFst(other T) {
	bp.fst = other
}

func (bp *BasicPair[T, U]) SetSnd(other U) {
	bp.snd = other
}

func (bp *BasicPair[T, U]) Equals(other any) bool {
	if typed, ok := other.(*BasicPair[T, U]); ok {
		return bp.fst.Equals(typed.fst) && bp.snd.Equals(typed.snd)
	}

	return false
}

func (bp *BasicPair[T, U]) ToString() string {
	return "{" + bp.fst.ToString() + ", " + bp.snd.ToString() + "}"
}

type UnorderedBasicPair[T Basic] struct {
	*BasicPair[T, T]
}

func NewUnorderedBasicPair[T Basic](fst T, snd T) *UnorderedBasicPair[T] {
	return &UnorderedBasicPair[T]{NewBasicPair(fst, snd)}
}

func (ubp *UnorderedBasicPair[T]) Equals(other any) bool {
	if typed, ok := other.(*UnorderedBasicPair[T]); ok {
		return (ubp.fst.Equals(typed.fst) && ubp.snd.Equals(typed.snd)) || (ubp.fst.Equals(typed.snd) && ubp.snd.Equals(typed.fst))
	}

	return false
}
