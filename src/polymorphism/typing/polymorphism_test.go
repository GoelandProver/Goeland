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
/*  polymorphism_test.go  */
/**************************/

/**
 * This file tests the polymorphism package.
 **/

package polymorphism

import (
	"fmt"
	"os"
	"testing"
)

func TestMain(m *testing.M) {
	Init()
	code := m.Run()
	os.Exit(code)
}

/* INTERNAL: testing encoding functions */

func TestZ(t *testing.T) {
	testTable := []struct {
		fst int64
		snd uint64
	}{
		{0, 0},
		{-1, 1},
		{1, 2},
		{-2, 3},
		{2, 4},
		{-3, 5},
		{3, 6},
		{-100, 199},
		{100, 200},
	}

	for _, test := range testTable {
		if encodeInt(test.fst) != test.snd {
			t.Fatalf("Error while encoding integer (%v) to nat number. Expected: %v, actual: %v", test.fst, test.snd, encodeInt(test.fst))
		}
	}
}

func TestIds(t *testing.T) {
	testTable := []struct {
		fst []uint64
		snd uint64
	}{
		{[]uint64{0}, 0},
		{[]uint64{1}, 1},
		{[]uint64{2}, 4},
		{[]uint64{3}, 9},
	}

	for _, test := range testTable {
		res := encode(test.fst, ETypeHint)
		if res != test.snd {
			t.Fatalf("Error while encoding list (%v) to nat number. Expected: %v, actual: %v", test.fst, test.snd, res)
		}
	}
}

func TestL(t *testing.T) {
	testTable := []struct {
		fst []uint64
		snd uint64
	}{
		{[]uint64{1, 1}, 3},
		{[]uint64{1, 1, 1}, 13},
		{[]uint64{1, 2}, 5},
		{[]uint64{2, 1}, 7},
	}

	for _, test := range testTable {
		res := encodeList(test.fst)
		if res != test.snd {
			t.Fatalf("Error while encoding list (%v) to nat number. Expected: %v, actual: %v", test.fst, test.snd, res)
		}
	}
}

func TestCopy(t *testing.T) {
	testTable := [][][]uint64{
		{{0}, {0}},
		{{1}, {1}},
		{{1, 2, 3}, {1, 2, 3}},
		{{9, 5, 3, 8, 2, 1, 7}, {9, 5, 3, 8, 2, 1, 7}},
	}

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test[1]), func(t *testing.T) {
			encodeList(test[0])
			for i := range test[1] {
				if len(test[0]) < i || test[0][i] != test[1][i] {
					t.Fatalf("Error: list isn't properly copied.")
				}
			}
		})
	}
}

/* Testing TYPES */

func TestPrimitive(t *testing.T) {
	primitiveTypes := []string{
		"int",
		"rat",
	}

	for i, primitive := range primitiveTypes {
		fst := MkTypeHint(primitive)
		snd := MkTypeHint(primitive)
		if fst.UID() != snd.UID() {
			t.Errorf("Same primitive types (%s) have different UIDs : %v %v", primitive, fst.UID(), snd.UID())
		}
		for j, p2 := range primitiveTypes {
			if i != j {
				if fst.Equals(MkTypeHint(p2)) {
					t.Fatalf("Different primitive types (%s, %s) have the same UID: %v", primitive, p2, fst.UID())
				}
			}
		}
	}
}

func TesTypeCrosses(t *testing.T) {
	tInt := MkTypeHint("int")
	tRat := MkTypeHint("rat")

	testTable := []struct {
		c TypeCross
		e string
	}{
		{MkTypeCross(tInt, tInt), "(int * int)"},
		{MkTypeCross(tInt, tRat, tInt), "(int * rat * int)"},
		{MkTypeCross(tInt, MkTypeCross(tInt, tRat)), "(int * (int * rat))"},
	}

	for i, test := range testTable {
		if test.c.ToString() != test.e {
			t.Errorf("Error in parsing to string. Expected: %s, actual: %s", test.e, test.c.ToString())
		}
		for j, test2 := range testTable {
			if i != j {
				if test.c.Equals(test2.c) {
					t.Fatalf("Error: two different types have the same UID: %v (%s, %s)", test.c.UID(), test.c.ToString(), test2.c.ToString())
				}
			}
		}
	}
}

func TestTypeArrows(t *testing.T) {
	tInt := MkTypeHint("int")
	tRat := MkTypeHint("rat")

	testTable := []struct {
		c TypeArrow
		e string
	}{
		{MkTypeArrow(tInt, tInt), "(int > int)"},
		{MkTypeArrow(tInt, tRat), "(int > rat)"},
		{MkTypeArrow(tRat, tInt), "(rat > int)"},
		{MkTypeArrow(MkTypeArrow(tRat, tInt), tInt), "((rat > int) > int)"},
	}

	for i, test := range testTable {
		if test.c.ToString() != test.e {
			t.Errorf("Error in parsing to string. Expected: %s, actual: %s", test.e, test.c.ToString())
		}
		for j, test2 := range testTable {
			if i != j {
				if test.c.Equals(test2.c) {
					t.Fatalf("Error: two different types have the same UID = %v (%s, %s)", test.c.UID(), test.c.ToString(), test2.c.ToString())
				}
			}
		}
	}
}

func TestComposition(t *testing.T) {
	tInt := MkTypeHint("int")
	tRat := MkTypeHint("rat")

	testTable := []struct {
		fst TypeScheme
		snd TypeScheme
	}{
		{MkTypeArrow(tInt, tInt), MkTypeCross(tInt, tInt)},
		{MkTypeArrow(MkTypeCross(tRat, tInt), tInt), MkTypeCross(MkTypeArrow(tRat, tInt), tInt)},
		{MkTypeArrow(MkTypeArrow(tRat, tInt), tInt), MkTypeCross(tRat, tInt, tInt)},
	}

	for _, test := range testTable {
		if test.fst.Equals(test.snd) {
			t.Errorf("Error: two different types schemes have the same UID: %s %s", test.fst.ToString(), test.snd.ToString())
		}
	}
}

/* Testing TypeSchemes */

func TestPolymorphicFunctions(t *testing.T) {
	tInt := MkTypeHint("int")
	tRat := MkTypeHint("rat")

	err := SaveTypeScheme("sum", MkTypeCross(tInt, tInt), tInt)
	if err != nil {
		t.Fatalf("Error: an error has been detected while saving type scheme when it shouldn't ! Error text: %v", err.Error())
	}
	err = SaveTypeScheme("sum", MkTypeCross(tRat, tRat), tRat)
	if err != nil {
		t.Fatalf("Error: an error has been detected while saving type scheme when it shouldn't ! Error text: %v", err.Error())
	}

	err = SaveTypeScheme("sum", MkTypeCross(tInt, tInt), tRat)
	if err == nil {
		t.Fatalf("Error: no error has been detected while saving type scheme when it should have !")
	}

	err = SaveTypeScheme("eq", MkTypeArrow(tInt, tInt), tInt)
	if err != nil {
		t.Fatalf("Error: an error has been detected while saving type scheme when it shouldn't ! Error text: %v", err.Error())
	}

	if tScheme := GetTypeScheme("sum", MkTypeCross(tInt, tInt)); !tScheme.Equals(MkTypeArrow(MkTypeCross(tInt, tInt), tInt)) {
		t.Fatalf("Error: couldn't retrieve previously entered type scheme in map.")
	}

	if tScheme := GetTypeScheme("in", MkTypeCross(tInt, tInt)); tScheme == nil {
		t.Fatalf("Error: couldn't infer type of scheme not entered in the map.")
	}
}

/* Testing TPTPNatives definition */

func TestTPTPBinaryNativeBinaryProps(t *testing.T) {
	ls := []string{
		"less",
		"lesseq",
		"greater",
		"greatereq",
	}
	for _, name := range ls {
		if err := testBinaryPreds(name); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestTPTPBinaryNatives(t *testing.T) {
	ls := []string{
		"sum",
		"difference",
		"product",
		"quotient_e",
		"quotient_t",
		"quotient_f",
		"remainder_e",
		"remainder_t",
		"remainder_f",
	}
	for _, name := range ls {
		if err := testBinaryTypes(name); err != nil {
			t.Errorf(err.Error())
		}
	}
	out := GetTypeScheme("quotient", MkTypeCross(tRat, tRat))
	if !out.Equals(MkTypeArrow(MkTypeCross(tRat, tRat), tRat)) {
		t.Errorf("Error: quotient: rat * rat > rat not defined when it should be.")
	}
	out = GetTypeScheme("quotient", MkTypeCross(tReal, tReal))
	if !out.Equals(MkTypeArrow(MkTypeCross(tReal, tReal), tReal)) {
		t.Errorf("Error: quotient: real * real > real not defined when it should be.")
	}
}

func TestTPTPUnaryNativesCreation(t *testing.T) {
	ls := []string{
		"uminus",
		"floor",
		"ceiling",
		"truncate",
		"round",
	}
	for _, name := range ls {
		if err := testUnaryTypes(name); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestUnaryProp(t *testing.T) {
	ls := []string{"is_int", "is_rat"}

	for _, name := range ls {
		if err := testUnaryProp(name); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestTPTPConversionFunctions(t *testing.T) {
	ls := []struct {
		name string
		out  TypeScheme
	}{
		{"to_int", tInt},
		{"to_rat", tRat},
		{"to_real", tReal},
	}

	for _, type_ := range ls {
		if err := testConversion(type_.name, type_.out); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func testBinaryPreds(name string) error {
	out := GetTypeScheme(name, MkTypeCross(tInt, tInt))
	if !out.Equals(MkTypeArrow(MkTypeCross(tInt, tInt), tProp)) {
		return fmt.Errorf("Error: %s: int * int > int not defined when it should be.", name)
	}
	out = GetTypeScheme(name, MkTypeCross(tRat, tRat))
	if !out.Equals(MkTypeArrow(MkTypeCross(tRat, tRat), tProp)) {
		return fmt.Errorf("Error: %s: rat * rat > rat not defined when it should be.", name)
	}
	out = GetTypeScheme(name, MkTypeCross(tReal, tReal))
	if !out.Equals(MkTypeArrow(MkTypeCross(tReal, tReal), tProp)) {
		return fmt.Errorf("Error: %s: real * real > real not defined when it should be.", name)
	}

	return nil
}

func testBinaryTypes(name string) error {
	out := GetTypeScheme(name, MkTypeCross(tInt, tInt))
	if !out.Equals(MkTypeArrow(MkTypeCross(tInt, tInt), tInt)) {
		return fmt.Errorf("Error: %s: int * int > int not defined when it should be.", name)
	}
	out = GetTypeScheme(name, MkTypeCross(tRat, tRat))
	if !out.Equals(MkTypeArrow(MkTypeCross(tRat, tRat), tRat)) {
		return fmt.Errorf("Error: %s: rat * rat > rat not defined when it should be.", name)
	}
	out = GetTypeScheme(name, MkTypeCross(tReal, tReal))
	if !out.Equals(MkTypeArrow(MkTypeCross(tReal, tReal), tReal)) {
		return fmt.Errorf("Error: %s: real * real > real not defined when it should be.", name)
	}

	return nil
}

func testUnaryTypes(name string) error {
	out := GetTypeScheme(name, tInt)
	if !out.Equals(MkTypeArrow(tInt, tInt)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}
	out = GetTypeScheme(name, tRat)
	if !out.Equals(MkTypeArrow(tRat, tRat)) {
		return fmt.Errorf("Error: %s: rat > rat not defined when it should be.", name)
	}
	out = GetTypeScheme(name, tReal)
	if !out.Equals(MkTypeArrow(tReal, tReal)) {
		return fmt.Errorf("Error: %s: real > real not defined when it should be.", name)
	}

	return nil
}

func testUnaryProp(name string) error {
	out := GetTypeScheme(name, tInt)
	if !out.Equals(MkTypeArrow(tInt, tProp)) {
		return fmt.Errorf("Error: %s: int > o not defined when it should be.", name)
	}
	out = GetTypeScheme(name, tRat)
	if !out.Equals(MkTypeArrow(tRat, tProp)) {
		return fmt.Errorf("Error: %s: rat > o not defined when it should be.", name)
	}
	out = GetTypeScheme(name, tReal)
	if !out.Equals(MkTypeArrow(tReal, tProp)) {
		return fmt.Errorf("Error: %s: real > o not defined when it should be.", name)
	}

	return nil
}

func testConversion(name string, outType TypeScheme) error {
	out := GetTypeScheme(name, tInt)
	if !out.Equals(MkTypeArrow(tInt, outType)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}
	out = GetTypeScheme(name, tRat)
	if !out.Equals(MkTypeArrow(tRat, outType)) {
		return fmt.Errorf("Error: %s: rat > int not defined when it should be.", name)
	}
	out = GetTypeScheme(name, tReal)
	if !out.Equals(MkTypeArrow(tReal, outType)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}

	return nil
}

/* Test default fun type and default prop type */

func TestDefaultFunType(t *testing.T) {
	expected := MkTypeArrow(MkTypeCross(defaultType, defaultType, defaultType, defaultType), defaultType)
	if !DefaultFunType(4).Equals(expected) {
		t.Errorf("Wrong fun default type. Expected: %s, actual: %s", expected.ToString(), DefaultFunType(4).ToString())
	}
}
func TestDefaultPropType(t *testing.T) {
	expected := MkTypeArrow(MkTypeCross(defaultType, defaultType, defaultType, defaultType), tProp)
	if !DefaultPropType(4).Equals(expected) {
		t.Errorf("Wrong fun default type. Expected: %s, actual: %s", expected.ToString(), DefaultPropType(4).ToString())
	}
}

/* Trivial yet important: strings */

func TestCrossToString(t *testing.T) {
	if MkTypeCross(tInt, tInt).ToString() != fmt.Sprintf("(%s * %s)", tInt.ToString(), tInt.ToString()) {
		t.Errorf("TypeCross ToString failed. Expected: (%s * %s), actual: %s", tInt.ToString(), tInt.ToString(), MkTypeCross(tInt, tInt).ToString())
	}
}
func TestArrowToString(t *testing.T) {
	if MkTypeArrow(tInt, tInt).ToString() != fmt.Sprintf("(%s > %s)", tInt.ToString(), tInt.ToString()) {
		t.Errorf("TypeCross ToString failed. Expected: (%s > %s), actual: %s", tInt.ToString(), tInt.ToString(), MkTypeArrow(tInt, tInt).ToString())
	}
}
