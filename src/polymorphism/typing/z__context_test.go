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

/************************/
/*  z__context_test.go  */
/************************/

/**
 * This file tests the creation & functions of a context.
 **/

package polymorphism_test

import (
	"fmt"
	"testing"

	. "github.com/GoelandProver/Goeland/polymorphism/typing"
)

func getSavedTypeTable(name string) []struct {
	name          string
	in            TypeHint
	out           TypeHint
	expectedError bool
} {
	testTable := []struct {
		name          string
		in            TypeHint
		out           TypeHint
		expectedError bool
	}{
		{name, tInt, tInt, false},
		{name, tInt, tInt, false},
		{name, tInt, tRat, true},
		{name, tRat, tInt, false},
	}

	if name == "test" {
		for _, test := range testTable {
			SaveTypeScheme(test.name, test.in, test.out)
		}
	}

	return testTable
}

func getSavedConstantTable() []struct {
	name string
	out  TypeHint
	err  bool
} {
	testTable := []struct {
		name string
		out  TypeHint
		err  bool
	}{
		{"1", tInt, false},
		{"2", tInt, false},
		{"3", tInt, false},
		{"1", tRat, true},
	}

	for _, test := range testTable {
		SaveConstant(test.name, test.out)
	}

	return testTable
}

func TestNotSavedConstant(t *testing.T) {
	testTable := []string{
		"testasheitguo",
		"skegjhsighawei",
		"klegjhigfawuiof",
		"sehgueg3wihgsg",
		"egsoihgioseaughfgi",
		"fsejkhfsyuich",
	}

	for _, test := range testTable {
		t.Run(test, func(t *testing.T) {
			scheme := GetType(test)
			if scheme != nil {
				t.Fatalf("Error: scheme should be nil but it isn't: %s", scheme.ToString())
			}
		})
	}
}
func TestNotSavedTS(t *testing.T) {
	testTable := []string{
		"testasheitguo",
		"skegjhsighawei",
		"klegjhigfawuiof",
		"sehgueg3wihgsg",
		"egsoihgioseaughfgi",
		"fsejkhfsyuich",
	}

	for _, test := range testTable {
		t.Run(test, func(t *testing.T) {
			scheme := GetType(test, tInt)
			if scheme != nil {
				t.Fatalf("Error: scheme should be nil but it isn't: %s", scheme.ToString())
			}
		})
	}
}

func TestNormalTS(t *testing.T) {
	testTable := getSavedTypeTable("abcd")

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			err := SaveTypeScheme(test.name, test.in, test.out)
			if test.expectedError {
				if err == nil {
					t.Fatalf("Expected error when saving %s : (%s > %s) but it didn't happen", test.name, test.in.ToString(), test.out.ToString())
				}
			} else {
				if err != nil {
					t.Fatalf("Error while saving an unsaved type scheme: %s", err.Error())
				}
			}
		})
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			if !test.expectedError {
				scheme := GetType(test.name, test.in)
				if scheme == nil {
					t.Fatalf("Couldn't retrieve type scheme when it should have been saved")
				} else {
					testScheme := MkTypeArrow(test.in, test.out)
					if !scheme.Equals(testScheme) {
						t.Fatalf("Error in type scheme retrieved. Expected: %s, actual: %s", testScheme.ToString(), scheme.ToString())
					}
				}
			}
		})
	}
}

func TestTSConstantSave(t *testing.T) {
	testTable := []struct {
		name string
		out  TypeHint
		err  bool
	}{
		{"4", tInt, false},
		{"5", tInt, false},
		{"6", tInt, false},
		{"4", tRat, true},
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			err := SaveConstant(test.name, test.out)
			if test.err {
				if err == nil {
					t.Fatalf("Expected error when saving %s : %s but it didn't happen", test.name, test.out.ToString())
				}
			} else {
				if err != nil {
					t.Fatalf("Error while saving an unsaved type scheme: %s", err.Error())
				}
			}
		})
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			scheme := GetType(test.name)
			if !test.err {
				if !IsConstant(test.name) {
					t.Fatalf("%s should be saved as constant", test.name)
				}
				if scheme == nil {
					t.Fatalf("Couldn't retrieve type scheme when it should have been saved")
				}
				if !scheme.Equals(test.out) {
					t.Fatalf("Wrong type for constant %s", test.name)
				}
			}
		})
	}
}

func TestTSConstantSaveWithOthersSchemes(t *testing.T) {
	testTable := getSavedConstantTable()

	for _, test := range testTable {
		SaveTypeScheme(test.name, tInt, test.out)
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			scheme := GetType(test.name)
			if !test.err {
				if !IsConstant(test.name) {
					t.Fatalf("%s should be saved as constant", test.name)
				}
				if scheme == nil {
					t.Fatalf("Couldn't retrieve type scheme when it should have been saved")
				}
				if !scheme.Equals(test.out) {
					t.Fatalf("Wrong type for constant %s", test.name)
				}
			}
		})
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			scheme := GetType(test.name, tInt)
			if !test.err {
				if scheme == nil {
					t.Fatalf("Couldn't retrieve type scheme when it should have been saved")
				}
				testScheme := MkTypeArrow(tInt, test.out)
				if !scheme.Equals(testScheme) {
					t.Fatalf("Wrong type for %s. Expected: %s, actual: %s", test.name, testScheme.ToString(), scheme.ToString())
				}
			}
		})
	}
}

func TestFunTypeOrDefault(t *testing.T) {
	getSavedTypeTable("test")
	testTable := []struct {
		name            string
		args            TypeApp
		defaultExpected bool
	}{
		{"testasheitguo", MkTypeCross(tInt, tInt), true},
		{"skegjhsighawei", MkTypeCross(DefaultType(), DefaultType()), true},
		{"klegjhigfawuiof", tInt, true},
		{"test", tInt, false},
		{"test", tRat, false},
	}

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.name), func(t *testing.T) {
			if test.defaultExpected && !GetOutType(GetTypeOrDefault(test.name, Fun, test.args)).Equals(DefaultType()) {
				t.Fatalf("%s should have default type", test.name)
			}
			if !test.defaultExpected && GetOutType(GetTypeOrDefault(test.name, Fun, test.args)).Equals(DefaultType()) {
				t.Fatalf("%s shouldn't have default type", test.name)
			}
		})
	}
}

func TestPolymorphicSaving(t *testing.T) {
	a, b := MkTypeVar("a"), MkTypeVar("b")
	testTable := []struct {
		name      string
		scheme    QuantifiedType
		expectErr bool
		saved     bool
	}{
		{"T1", MkQuantifiedType([]TypeVar{a}, MkTypeArrow(MkTypeCross(a, a), a)), false, true},
		{"T1", MkQuantifiedType([]TypeVar{b}, MkTypeArrow(MkTypeCross(b, b), b)), true, false},
		{"T2", MkQuantifiedType([]TypeVar{a}, MkTypeArrow(MkTypeCross(a, a), a)), false, true},
		{"T1", MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(MkTypeCross(a, b), a)), false, true},
		{"T2", MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(MkTypeCross(a, a), b)), true, false},
		{"T2", MkQuantifiedType([]TypeVar{a, b}, MkTypeArrow(MkTypeCross(a, a), a)), false, false},
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			err := SavePolymorphScheme(test.name, test.scheme)
			if test.expectErr {
				if err == nil {
					t.Fatalf("Expected error when saving %s : %s but it didn't happen", test.name, test.scheme.ToString())
				}
			} else {
				if err != nil {
					t.Fatalf("Error while saving an unsaved type scheme: %s", err.Error())
				}
			}
		})
	}

	for i, test := range testTable {
		t.Run(fmt.Sprintf("%d", i), func(t *testing.T) {
			scheme := GetPolymorphicType(test.name, test.scheme.QuantifiedVarsLen(), test.scheme.Size()-1)
			if test.saved {
				if scheme == nil {
					t.Fatalf("Couldn't retrieve type scheme %s : %s when it should have been saved", test.name, test.scheme.ToString())
				}
				if !scheme.Equals(test.scheme) {
					t.Fatalf("Wrong type for polymorphic scheme %s", test.name)
				}
			}
		})
	}
}

func TestGetGlobalContext(t *testing.T) {
	gc := GetGlobalContext()
	if len(gc) < 3 {
		t.Fatalf("Error: global context is empty when it shouldn't be")
	}
}
