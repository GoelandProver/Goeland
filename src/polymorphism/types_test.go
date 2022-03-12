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

/*******************/
/*  test_types.go  */
/*******************/

/**
 * This file tests some properties of the polytypes :
 *	- Same UIDs for same primitive types
 *	- Same UIDs for same Type Schemes
 *	- Different UIDs for different Type Schemes
 **/

package polymorphism

import (
	"os"
	"testing"
)

func TestMain(m *testing.M) {
	Init()
    code := m.Run()
	os.Exit(code)
}

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

	testTable := []struct{
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

func TesTypeArrows(t *testing.T) {
	tInt := MkTypeHint("int")
	tRat := MkTypeHint("rat")

	testTable := []struct{
		c TypeArrow
		e string
	}{
		{ MkTypeArrow(tInt, tInt), "(int > int)" },
		{ MkTypeArrow(tInt, tRat), "(int > rat)" },
		{ MkTypeArrow(tRat, tInt), "(rat > int)" },
		{ MkTypeArrow(MkTypeArrow(tRat, tInt), tInt), "((rat > int) > int)" },
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

	testTable := []struct{
		fst TypeScheme 
		snd TypeScheme
	}{
		{ MkTypeArrow(tInt, tInt), MkTypeCross(tInt, tInt) },
		{ MkTypeArrow(MkTypeCross(tRat, tInt), tInt), MkTypeCross(MkTypeArrow(tRat, tInt), tInt) },
		{ MkTypeArrow(MkTypeArrow(tRat, tInt), tInt), MkTypeCross(tRat, tInt, tInt) },
	}

	for _, test := range testTable {
		if test.fst.Equals(test.snd) {
			t.Errorf("Error: two different types schemes have the same UID: %s %s", test.fst.ToString(), test.snd.ToString())
		}
	}
}