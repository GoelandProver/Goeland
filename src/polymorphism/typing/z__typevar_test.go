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
 * This file tests the creation & functions of a TypeVar.
 * A TypeVar is at the base of the type system.
 **/

package polymorphism_test

import (
	"fmt"
	"testing"

	_ "github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/polymorphism/typing"
)

func getTestTypeVarTable() []struct {
	type_    TypeVar
	expected string
	formulas []int
	indexes  []int
} {
	return []struct {
		type_    TypeVar
		expected string
		formulas []int
		indexes  []int
	}{
		{MkTypeVar("set"), "set", []int{1, 2, 3}, []int{0, 2, 3}},
		{MkTypeVar("list"), "list", []int{1, 2, 3}, []int{0, 2, 3}},
		{MkTypeVar("array"), "array", []int{1, 2, 3}, []int{0, 2, 3}},
		{MkTypeVar("vector"), "vector", []int{1, 2, 3}, []int{0, 2, 3}},
		{MkTypeVar("map"), "map", []int{1, 2, 3}, []int{0, 2, 3}},
	}
}

func TestTypeVarToString(t *testing.T) {
	testTable := getTestTypeVarTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if test.type_.ToString() != test.expected {
				t.Fatalf("Expected: %s, actual: %s", test.expected, test.type_.ToString())
			}
		})
	}
}

func TestTypeVarSize(t *testing.T) {
	testTable := getTestTypeVarTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if test.type_.Size() != 1 {
				t.Fatalf("Expected: 1, actual: %d", test.type_.Size())
			}
		})
	}
}

func TestTypeVarPrimitives(t *testing.T) {
	testTable := getTestTypeVarTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if len(test.type_.GetPrimitives()) != 1 || !test.type_.GetPrimitives()[0].(TypeVar).Equals(test.type_) {
				t.Fatalf("Expected: %v, actual: %v", []TypeApp{test.type_}, test.type_.GetPrimitives())
			}
		})
	}
}

func TestTypeVarCopy(t *testing.T) {
	testTable := getTestTypeVarTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if !test.type_.Equals(test.type_.Copy()) {
				t.Fatalf("Expected that a copied TypeVar is equal to its previous self.")
			}
		})
	}
}

func TestTypeVarEquals(t *testing.T) {
	testTable := getTestTypeVarTable()

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
			if !test.type_.Equals(test.type_) {
				t.Fatalf("Expected that a TypeVar is equal to itself.")
			}
		})
	}
}

func TestTypeVarNotEquals(t *testing.T) {
	testTable := getTestTypeVarTable()

	for i, test := range testTable {
		for j, test2 := range testTable {
			t.Run(fmt.Sprintf("%v", test.expected), func(t *testing.T) {
				if i != j && test.type_.Equals(test2.type_) {
					t.Fatalf("Expected that a TypeVar is not equal to a different TypeVar.")
				}
			})
		}
	}
}

// func TestTypeVarMeta(t *testing.T) {
// 	testTable := getTestTypeVarTable()

// 	for _, test := range testTable {
// 		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
// 			typeVars := []TypeVar{}
// 			for _, formula := range test.formulas {
// 				tv := test.type_.Copy().(TypeVar)
// 				tv.ShouldBeMeta(formula)
// 				typeVars = append(typeVars, tv)
// 			}

// 			for i, tv := range typeVars {
// 				f, _ := tv.MetaInfos()
// 				t.Run(fmt.Sprintf("%d", f), func(t *testing.T) {
// 					if !tv.IsMeta() {
// 						t.Fatalf("TypeVar should be a meta but is not.")
// 					}
// 					if tv.Equals(test.type_) {
// 						t.Fatalf("TypeVar meta equals to another not meta TypeVar.")
// 					}
// 					if tv.Instantiated() {
// 						t.Fatalf("TypeVar instanciated when it's still not.")
// 					}
// 				})
// 				for j, tv2 := range typeVars {
// 					t.Run(fmt.Sprintf("%d/%d", i, j), func(t *testing.T) {
// 						if j != i && tv.Equals(tv2) {
// 							t.Fatalf("Two differently meta TypeVar are equals.")
// 						}
// 					})
// 				}
// 			}

// 			for _, tv := range typeVars {
// 				instanciated := []TypeVar{}
// 				for _, index := range test.indexes {
// 					t := tv.Copy().(TypeVar)
// 					t.Instantiate(index)
// 					instanciated = append(instanciated, t)
// 				}

// 				for j, instTv := range instanciated {
// 					f, i := instTv.MetaInfos()
// 					t.Run(fmt.Sprintf("%d/%d", f, i), func(t *testing.T) {
// 						if !instTv.IsMeta() {
// 							t.Fatalf("TypeVar should be a meta but is not.")
// 						}
// 						if instTv.Equals(test.type_) {
// 							t.Fatalf("TypeVar meta equals to another not meta TypeVar.")
// 						}
// 						if instTv.Equals(tv) {
// 							t.Fatalf("Instanciated TypeVar equals to another meta TypeVar not instanciated.")
// 						}
// 						if !instTv.Instantiated() {
// 							t.Fatalf("TypeVar not instanciated when it should be.")
// 						}
// 					})
// 					for k, instTv2 := range instanciated {
// 						t.Run(fmt.Sprintf("%d/%d", j, k), func(t *testing.T) {
// 							if j != k && instTv.Equals(instTv2) {
// 								t.Fatalf("Two differently instanciated TypeVar are equals.")
// 							}
// 						})
// 					}
// 				}
// 			}
// 		})
// 	}
// }

func TestTypeVarNotEquals2(t *testing.T) {
	testTable := getTestTypeVarTable()
	testTable2 := getTestTypeHintTable()

	for _, test := range testTable {
		for _, test2 := range testTable2 {
			t.Run(fmt.Sprintf("%v-%v", test.type_.ToString(), test2.type_.ToString()), func(t *testing.T) {
				if test.type_.Equals(test2.type_) {
					t.Fatalf("Expected %s != %s, but it was equal", test.type_.ToString(), test2.type_.ToString())
				}
			})
		}
	}
}
