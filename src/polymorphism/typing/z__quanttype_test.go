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

/**************************/
/*  z__quanttype_test.go  */
/**************************/

/**
 * This file tests the creation & functions of a QuantifiedType.
 **/

package polymorphism_test

import (
	"fmt"
	"testing"

	. "github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/polymorphism/typing"
)

func getTestQuantTypeTable() []struct {
	type_        QuantifiedType
	expectedName string
	expectedEq   []int
	expectedSize int
	expectedVars []TypeVar
	primitives   ComparableList[TypeApp]
} {
	a, b := MkTypeVar("a"), MkTypeVar("b")

	return []struct {
		type_        QuantifiedType
		expectedName string
		expectedEq   []int
		expectedSize int
		expectedVars []TypeVar
		primitives   ComparableList[TypeApp]
	}{
		{MkQuantifiedType([]TypeVar{a}, MkTypeArrow(a, a)), "Π a: Type. (a > a)", []int{0, 1}, 2, []TypeVar{a}, []TypeApp{a, a}},
		{MkQuantifiedType([]TypeVar{b}, MkTypeArrow(b, b)), "Π b: Type. (b > b)", []int{0, 1}, 2, []TypeVar{b}, []TypeApp{b, b}},
		{MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(a, b)), "Π a, b: Type. (a > b)", []int{2}, 2, []TypeVar{a, b}, []TypeApp{a, b}},
		{MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(b, a)), "Π a, b: Type. (b > a)", []int{3}, 2, []TypeVar{a, b}, []TypeApp{b, a}},
		{MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(MkTypeCross(a, b), a)), "Π a, b: Type. ((a * b) > a)", []int{4}, 3, []TypeVar{a, b}, []TypeApp{a, b, a}},
		{MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(MkTypeCross(a, b), b)), "Π a, b: Type. ((a * b) > b)", []int{5}, 3, []TypeVar{a, b}, []TypeApp{a, b, b}},
		{MkQuantifiedType([]TypeVar{a}, MkTypeArrow(MkTypeCross(a, a), a)), "Π a: Type. ((a * a) > a)", []int{6, 7}, 3, []TypeVar{a}, []TypeApp{a, a, a}},
		{MkQuantifiedType([]TypeVar{b}, MkTypeArrow(MkTypeCross(b, b), b)), "Π b: Type. ((b * b) > b)", []int{6, 7}, 3, []TypeVar{b}, []TypeApp{b, b, b}},
	}
}

func TestQuantTypeToString(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if test.type_.ToString() != test.expectedName {
				t.Fatalf("Expected: %s, actual: %s", test.expectedName, test.type_.ToString())
			}
		})
	}
}

func TestQuantTypeInequality(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		for j, test2 := range testTable {
			t.Run(fmt.Sprintf("%v/%v", test.type_.ToString(), test2.type_.ToString()), func(t *testing.T) {
				if !primitiveContains(test.expectedEq, j) && test.type_.Equals(test2.type_) {
					t.Fatalf("Expected: %s != %s, but it was equal", test.expectedName, test2.expectedName)
				}
			})
		}
	}
}

func TestQuantTypeEquality(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		for j, test2 := range testTable {
			t.Run(fmt.Sprintf("%v/%v", test.type_.ToString(), test2.type_.ToString()), func(t *testing.T) {
				if primitiveContains(test.expectedEq, j) && !test.type_.Equals(test2.type_) {
					t.Fatalf("Expected: %s == %s, but it was not equal", test.expectedName, test2.expectedName)
				}
			})
		}
	}
}

func TestQuantTypeSize(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if test.type_.Size() != test.expectedSize {
				t.Fatalf("Expected: %d, actual: %d", test.expectedSize, test.type_.Size())
			}
		})
	}
}

func TestQuantTypeVarsSize(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if test.type_.QuantifiedVarsLen() != len(test.expectedVars) {
				t.Fatalf("Expected: %d, actual: %d", len(test.expectedVars), test.type_.QuantifiedVarsLen())
			}
		})
	}
}

func TestQuantTypeVars(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.type_.QuantifiedVars().Equals(test.expectedVars) {
				t.Fatalf("Expected: %d, actual: %d", len(test.expectedVars), test.type_.QuantifiedVarsLen())
			}
		})
	}
}

func TestQuantPrimitives(t *testing.T) {
	testTable := getTestQuantTypeTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.primitives.Equals(test.type_.GetPrimitives()) {
				t.Fatalf("Expected: %v, actual: %v", test.primitives, test.type_.GetPrimitives())
			}
		})
	}
}

func TestQuantPrimitives2(t *testing.T) {
	a := MkTypeVar("a")
	testTable := []struct {
		t QuantifiedType
		e ComparableList[TypeApp]
	}{
		{MkQuantifiedType([]TypeVar{a}, MkTypeArrow(tInt, a)), []TypeApp{tInt, a}},
		{MkQuantifiedType([]TypeVar{a}, MkTypeArrow(MkTypeCross(tInt, a), a)), []TypeApp{tInt, a, a}},
		{MkQuantifiedType([]TypeVar{a}, MkTypeArrow(tInt, a)), []TypeApp{tInt, a}},
		{MkQuantifiedType([]TypeVar{a}, MkTypeArrow(MkTypeCross(tInt, a), MkTypeCross(tInt, a))), []TypeApp{tInt, a, tInt, a}},
	}

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.t.ToString()), func(t *testing.T) {
			if !test.e.Equals(test.t.GetPrimitives()) {
				t.Fatalf("Expected: %v, actual: %v", test.e, test.t.GetPrimitives())
			}
		})
	}
}
