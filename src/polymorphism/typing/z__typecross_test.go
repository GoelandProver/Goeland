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
/*  z__typecross_test.go  */
/**************************/

/**
 * This file tests the creation & functions of a TypeCross.
 **/

package polymorphism_test

import (
	"fmt"
	"testing"

	. "github.com/GoelandProver/Goeland/polymorphism/typing"
)

func getTestTypeCrossTable() []struct {
	type_              TypeCross
	expectedName       string
	expectedSize       int
	expectedEq         []int
	expectedPrimitives []TypeHint
} {
	intName := tInt.ToString()
	ratName := tRat.ToString()
	return []struct {
		type_              TypeCross
		expectedName       string
		expectedSize       int
		expectedEq         []int
		expectedPrimitives []TypeHint
	}{
		{MkTypeCross(tInt, tInt), fmt.Sprintf("(%s * %s)", intName, intName), 2, []int{0}, []TypeHint{tInt, tInt}},
		{MkTypeCross(tInt, tRat), fmt.Sprintf("(%s * %s)", intName, ratName), 2, []int{1}, []TypeHint{tInt, tRat}},
		{MkTypeCross(tRat, tInt), fmt.Sprintf("(%s * %s)", ratName, intName), 2, []int{2}, []TypeHint{tRat, tInt}},
		{MkTypeCross(tRat, tRat), fmt.Sprintf("(%s * %s)", ratName, ratName), 2, []int{3}, []TypeHint{tRat, tRat}},
		{MkTypeCross(tInt, tRat, tInt), fmt.Sprintf("(%s * %s * %s)", intName, ratName, intName), 3, []int{4}, []TypeHint{tInt, tRat, tInt}},
		{MkTypeCross(MkTypeCross(tInt, tInt), tRat), fmt.Sprintf("((%s * %s) * %s)", intName, intName, ratName), 3, []int{5}, []TypeHint{tInt, tInt, tRat}},
		{MkTypeCross(MkTypeCross(tRat, tRat), MkTypeCross(tInt, tInt)), fmt.Sprintf("((%s * %s) * (%s * %s))", ratName, ratName, intName, intName), 4, []int{6}, []TypeHint{tRat, tRat, tInt, tInt}},
		{MkTypeCross(MkTypeCross(tRat, tRat, tInt), tInt), fmt.Sprintf("((%s * %s * %s) * %s)", ratName, ratName, intName, intName), 4, []int{7}, []TypeHint{tRat, tRat, tInt, tInt}},
		{MkTypeCross(tRat, tRat, tInt, tInt), fmt.Sprintf("(%s * %s * %s * %s)", ratName, ratName, intName, intName), 4, []int{8}, []TypeHint{tRat, tRat, tInt, tInt}},
	}
}

func primitiveContains[T int | string | bool | float32 | float64](array []T, element T) bool {
	for _, el := range array {
		if element == el {
			return true
		}
	}
	return false
}

func listEquals(ls1 []TypeHint, ls2 []TypeApp) bool {
	if len(ls1) != len(ls2) {
		return false
	}
	for i := range ls1 {
		if !ls1[i].Equals(ls2[i]) {
			return false
		}
	}
	return true
}

func TestTypeCrossToString(t *testing.T) {
	testTable := getTestTypeCrossTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if test.type_.ToString() != test.expectedName {
				t.Fatalf("Expected: %s, actual: %s", test.expectedName, test.type_.ToString())
			}
		})
	}
}

func TestTypeCrossSize(t *testing.T) {
	testTable := getTestTypeCrossTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if test.type_.Size() != test.expectedSize {
				t.Fatalf("Expected: %d, actual: %d", test.expectedSize, test.type_.Size())
			}
		})
	}
}

func TestTypeCrossPrimitives(t *testing.T) {
	testTable := getTestTypeCrossTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !listEquals(test.expectedPrimitives, test.type_.GetPrimitives()) {
				t.Fatalf("Expected: %v, actual: %v", test.expectedPrimitives, test.type_.GetPrimitives())
			}
		})
	}
}

func TestTypeCrossCopy(t *testing.T) {
	testTable := getTestTypeCrossTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.type_.Equals(test.type_.Copy()) {
				t.Fatalf("Expected that a copied TypeHint is equal to its previous self.")
			}
		})
	}
}

func TestTypeCrossEquals(t *testing.T) {
	testTable := getTestTypeCrossTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.type_.Equals(test.type_) {
				t.Fatalf("Expected that a TypeHint is equal to itself.")
			}
		})
	}
}

func TestTypeCrossNotEquals(t *testing.T) {
	testTable := getTestTypeCrossTable()

	for _, test := range testTable {
		for j, test2 := range testTable {
			t.Run(fmt.Sprintf("%v-%v", test.type_.ToString(), test2.type_.ToString()), func(t *testing.T) {
				if !primitiveContains(test.expectedEq, j) && test.type_.Equals(test2.type_) {
					t.Fatalf("Expected %s != %s, but it was equal", test.type_.ToString(), test2.type_.ToString())
				}
			})
		}
	}
}

func TestTypeCrossNotEquals2(t *testing.T) {
	testTable := getTestTypeCrossTable()
	testTable2 := []TypeHint{tInt, tRat, tReal}

	for _, test := range testTable {
		for _, test2 := range testTable2 {
			t.Run(fmt.Sprintf("%v-%v", test.type_.ToString(), test2.ToString()), func(t *testing.T) {
				if test.type_.Equals(test2) {
					t.Fatalf("Expected %s != %s, but it was equal", test.type_.ToString(), test2.ToString())
				}
			})
		}
	}
}

func TestFailedCreation(t *testing.T) {
	a := MkTypeCross()
	b := MkTypeCross(tInt)
	emptyTypeCross := TypeCross{}

	if !emptyTypeCross.Equals(a) {
		t.Fatalf("A TypeCross was created with less than 2 primitives: %s", a.ToString())
	}

	if !emptyTypeCross.Equals(b) {
		t.Fatalf("A TypeCross was created with less than 2 primitives: %s", b.ToString())
	}
}
