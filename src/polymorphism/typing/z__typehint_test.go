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
 * This file tests the creation & functions of a TypeHint.
 * A TypeHint is at the base of the type system.
 **/

package polymorphism_test

import (
	"fmt"
	"testing"

	. "github.com/GoelandProver/Goeland/polymorphism/typing"
)

func getTestTypeHintTable() []struct {
	type_    TypeHint
	expected string
} {
	return []struct {
		type_    TypeHint
		expected string
	}{
		{MkTypeHint("set"), "set"},
		{MkTypeHint("list"), "list"},
		{MkTypeHint("array"), "array"},
		{MkTypeHint("vector"), "vector"},
		{MkTypeHint("map"), "map"},
	}
}

func TestTypeHintToString(t *testing.T) {
	testTable := getTestTypeHintTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if test.type_.ToString() != test.expected {
				t.Fatalf("Expected: %s, actual: %s", test.expected, test.type_.ToString())
			}
		})
	}
}

func TestTypeHintSize(t *testing.T) {
	testTable := getTestTypeHintTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if test.type_.Size() != 1 {
				t.Fatalf("Expected: 1, actual: %d", test.type_.Size())
			}
		})
	}
}

func TestTypeHintPrimitives(t *testing.T) {
	testTable := getTestTypeHintTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if len(test.type_.GetPrimitives()) != 1 || !test.type_.GetPrimitives()[0].(TypeHint).Equals(test.type_) {
				t.Fatalf("Expected: %v, actual: %v", []TypeApp{test.type_}, test.type_.GetPrimitives())
			}
		})
	}
}

func TestTypeHintCopy(t *testing.T) {
	testTable := getTestTypeHintTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if !test.type_.Equals(test.type_.Copy()) {
				t.Fatalf("Expected that a copied TypeHint is equal to its previous self.")
			}
		})
	}
}

func TestTypeHintEquals(t *testing.T) {
	testTable := getTestTypeHintTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if !test.type_.Equals(test.type_) {
				t.Fatalf("Expected that a TypeHint is equal to itself.")
			}
		})
	}
}

func TestTypeHintNotEquals(t *testing.T) {
	testTable := getTestTypeHintTable()

	for i, test := range testTable {
		for j, test2 := range testTable {
			t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
				if i != j && test.type_.Equals(test2.type_) {
					t.Fatalf("Expected that a TypeHint is not equal to a different TypeHint.")
				}
			})
		}
	}
}

func TestTypeHintNotEquals2(t *testing.T) {
	testTable := getTestTypeHintTable()
	testTable2 := getTestTypeVarTable()

	for _, test := range testTable {
		for _, test2 := range testTable2 {
			t.Run(fmt.Sprintf("%v/%v", test.type_.ToString(), test2.type_.ToString()), func(t *testing.T) {
				if test.type_.Equals(test2.type_) {
					t.Fatalf("Expected that a TypeHint is not a TypeVar")
				}
			})
		}
	}
}
