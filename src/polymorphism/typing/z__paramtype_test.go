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
 * This file tests the creation & functions of a ParameterizedType.
 **/

package polymorphism_test

import (
	"fmt"
	"testing"

	. "github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/polymorphism/typing"
)

func getTestParamTypeTable() []struct {
	type_              ParameterizedType
	expectedName       string
	primitives         ComparableList[TypeApp]
	expectedParameters ComparableList[TypeApp]
} {
	a := MkTypeVar("a")
	SaveParamereterizedType("list", []TypeApp{nil})
	SaveParamereterizedType("map", []TypeApp{nil, nil})
	SaveParamereterizedType("pair", []TypeApp{nil, nil})
	SaveParamereterizedType("intMap", []TypeApp{tInt, nil})
	SaveParamereterizedType("ratMap", []TypeApp{tRat, nil})

	return []struct {
		type_              ParameterizedType
		expectedName       string
		primitives         ComparableList[TypeApp]
		expectedParameters ComparableList[TypeApp]
	}{
		{MkParameterizedType("list", []TypeApp{tInt}), "list($int)", []TypeApp{tInt}, []TypeApp{tInt}},
		{MkParameterizedType("list", []TypeApp{tRat}), "list($rat)", []TypeApp{tRat}, []TypeApp{tRat}},
		{MkParameterizedType("map", []TypeApp{tInt, tInt}), "map($int, $int)", []TypeApp{tInt, tInt}, []TypeApp{tInt, tInt}},
		{MkParameterizedType("map", []TypeApp{tInt, tRat}), "map($int, $rat)", []TypeApp{tInt, tRat}, []TypeApp{tInt, tRat}},
		{MkParameterizedType("map", []TypeApp{tRat, tRat}), "map($rat, $rat)", []TypeApp{tRat, tRat}, []TypeApp{tRat, tRat}},
		{MkParameterizedType("pair", []TypeApp{a, tRat}), "pair(a, $rat)", []TypeApp{a, tRat}, []TypeApp{a, tRat}},
		{MkParameterizedType("pair", []TypeApp{MkTypeCross(tInt, tInt), MkTypeCross(tRat, tRat)}), "pair(($int * $int), ($rat * $rat))", []TypeApp{tInt, tInt, tRat, tRat}, []TypeApp{MkTypeCross(tInt, tInt), MkTypeCross(tRat, tRat)}},
		{MkParameterizedType("intMap", []TypeApp{tRat}), "intMap($int, $rat)", []TypeApp{tInt, tRat}, []TypeApp{tInt, tRat}},
		{MkParameterizedType("ratMap", []TypeApp{tInt}), "ratMap($rat, $int)", []TypeApp{tRat, tInt}, []TypeApp{tRat, tInt}},
	}
}

func TestParamTypeToString(t *testing.T) {
	tableTest := getTestParamTypeTable()

	for _, test := range tableTest {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if test.type_.ToString() != test.expectedName {
				t.Fatalf("Expected: %s, actual: %s", test.expectedName, test.type_.ToString())
			}
		})
	}
}

func TestParamTypeNequal(t *testing.T) {
	tableTest := getTestParamTypeTable()

	for i, test := range tableTest {
		for j, test2 := range tableTest {
			t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
				if i != j && test.type_.Equals(test2.type_) {
					t.Fatalf("Expected %s != %s but it was equal", test.type_.ToString(), test2.type_.ToString())
				}
			})
		}
	}
}

func TestParamTypeNequal2(t *testing.T) {
	tableTest := getTestParamTypeTable()
	tableTest2 := getTestTypeHintTable()

	for _, test := range tableTest {
		for _, test2 := range tableTest2 {
			t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
				if test.type_.Equals(test2.type_) {
					t.Fatalf("Expected %s != %s but it was equal", test.type_.ToString(), test2.type_.ToString())
				}
			})
		}
	}
}

func TestParamTypeEqual(t *testing.T) {
	tableTest := getTestParamTypeTable()

	for _, test := range tableTest {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.type_.Equals(test.type_.Copy()) {
				t.Fatalf("Expected copy of itself to be equal")
			}
		})
	}
}

func TestParamTypeEqual2(t *testing.T) {
	tableTest := getTestParamTypeTable()

	for i, test := range tableTest {
		for j, test2 := range tableTest {
			t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
				if i == j && !test.type_.Equals(test2.type_) {
					t.Fatalf("Expected %s == %s but it was equal", test.type_.ToString(), test2.type_.ToString())
				}
			})
		}
	}
}

func TestParamTypePrimitives(t *testing.T) {
	tableTest := getTestParamTypeTable()

	for _, test := range tableTest {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.type_.Equals(test.type_.GetPrimitives()[0]) {
				t.Fatalf("Expected %s == %s", test.type_.ToString(), test.type_.GetPrimitives()[0].ToString())
			}
		})
	}
}

func TestParamTypeParameters(t *testing.T) {
	tableTest := getTestParamTypeTable()

	for _, test := range tableTest {
		t.Run(fmt.Sprintf("%v", test.type_.ToString()), func(t *testing.T) {
			if !test.expectedParameters.Equals(test.type_.GetParameters()) {
				t.Fatalf("Expected %v == %v", test.expectedParameters, test.type_.GetParameters())
			}
		})
	}
}

func TestParamTypeFailedInstanciation(t *testing.T) {
	tableTest := []string{"a", "int", "rat", "set", "vector", "array"}

	for _, test := range tableTest {
		t.Run(fmt.Sprintf("%v", test), func(t *testing.T) {
			pt := MkParameterizedType(test, []TypeApp{})
			emptyPt := ParameterizedType{}
			if !emptyPt.Equals(pt) {
				t.Fatalf("Created a parameterized type not in the list")
			}
		})
	}
}

func TestParamTypeFailedInstanciation2(t *testing.T) {
	emptyPt := ParameterizedType{}
	test := MkParameterizedType("list", []TypeApp{tInt, tInt})
	if !emptyPt.Equals(test) {
		t.Fatalf("Created a parameterized type with too many arguments")
	}
	test = MkParameterizedType("map", []TypeApp{tInt, tInt, tInt})
	if !emptyPt.Equals(test) {
		t.Fatalf("Created a parameterized type with too many arguments")
	}
	test = MkParameterizedType("intMap", []TypeApp{tInt, tInt})
	if !emptyPt.Equals(test) {
		t.Fatalf("Created a parameterized type with too many arguments")
	}
	test = MkParameterizedType("ratMap", []TypeApp{tInt, tInt})
	if !emptyPt.Equals(test) {
		t.Fatalf("Created a parameterized type with too many arguments")
	}
}
