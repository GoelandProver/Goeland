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

package Lib

import (
	"fmt"
)

/* This file implements the Either type (sum type). */

type Either[A, B any] interface {
	isEither()
}

type Left[A, B any] struct {
	Val A
}

type Right[A, B any] struct {
	Val B
}

func (Left[A, B]) isEither()  {}
func (Right[A, B]) isEither() {}

func MkLeft[A, B any](x A) Either[A, B] {
	return Left[A, B]{Val: x}
}

func MkRight[A, B any](y B) Either[A, B] {
	return Right[A, B]{Val: y}
}

func EitherToString[A, B Stringable](u Either[A, B], left, right string) string {
	switch x := u.(type) {
	case Left[A, B]:
		return fmt.Sprintf("%s(%s)", left, x.Val.ToString())
	case Right[A, B]:
		return fmt.Sprintf("%s(%s)", right, x.Val.ToString())
	}
	return ""
}

func EitherEquals[A, B Comparable](u, v Either[A, B]) bool {
	switch x := u.(type) {
	case Left[A, B]:
		switch y := v.(type) {
		case Left[A, B]:
			return x.Val.Equals(y.Val)
		case Right[A, B]:
			return false
		}
	case Right[A, B]:
		switch y := v.(type) {
		case Left[A, B]:
			return false
		case Right[A, B]:
			return x.Val.Equals(y.Val)
		}
	}

	return false
}

func EitherCpy[A Copyable[A], B Copyable[B]](u Either[A, B]) Either[A, B] {
	switch x := u.(type) {
	case Left[A, B]:
		return MkLeft[A, B](x.Val.Copy())
	case Right[A, B]:
		return MkRight[A, B](x.Val.Copy())
	}
	return u
}
