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
/*  typescheme_test.go  */
/************************/

/**
 * This file tests some properties of the polymorphic functions.
 **/

package polymorphism

import (
	"fmt"
	"testing"
)

func TestTPTPBinaryNativesCreation(t *testing.T) {
	ls := []string{
		"less",
		"lesseq",
		"greater",
		"greatereq",
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
	_, err := GetTypeScheme("quotient", MkTypeCross(tRat, tRat))
	if err != nil {
		t.Errorf("Error: quotient: rat * rat > rat not defined when it should be.")
	}
	_, err = GetTypeScheme("quotient", MkTypeCross(tReal, tReal))
	if err != nil {
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

func testBinaryTypes(name string) error {
	out, err := GetTypeScheme(name, MkTypeCross(tInt, tInt))
	if err != nil || !out.Equals(MkTypeArrow(MkTypeCross(tInt, tInt), tInt)) {
		return fmt.Errorf("Error: %s: int * int > int not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, MkTypeCross(tRat, tRat))
	if err != nil || !out.Equals(MkTypeArrow(MkTypeCross(tRat, tRat), tRat)) {
		return fmt.Errorf("Error: %s: rat * rat > rat not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, MkTypeCross(tReal, tReal))
	if err != nil || !out.Equals(MkTypeArrow(MkTypeCross(tReal, tReal), tReal)) {
		return fmt.Errorf("Error: %s: real * real > real not defined when it should be.", name)
	}

	return nil
}

func testUnaryTypes(name string) error {
	out, err := GetTypeScheme(name, tInt)
	if err != nil || !out.Equals(MkTypeArrow(tInt, tInt)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, tRat)
	if err != nil || !out.Equals(MkTypeArrow(tRat, tRat)) {
		return fmt.Errorf("Error: %s: rat > rat not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, tReal)
	if err != nil || !out.Equals(MkTypeArrow(tReal, tReal)) {
		return fmt.Errorf("Error: %s: real > real not defined when it should be.", name)
	}

	return nil
}

func testUnaryProp(name string) error {
	out, err := GetTypeScheme(name, tInt)
	if err != nil || !out.Equals(MkTypeArrow(tInt, tProp)) {
		return fmt.Errorf("Error: %s: int > o not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, tRat)
	if err != nil || !out.Equals(MkTypeArrow(tRat, tProp)) {
		return fmt.Errorf("Error: %s: rat > o not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, tReal)
	if err != nil || !out.Equals(MkTypeArrow(tReal, tProp)) {
		return fmt.Errorf("Error: %s: real > o not defined when it should be.", name)
	}

	return nil
}

func testConversion(name string, outType TypeScheme) error {
	out, err := GetTypeScheme(name, tInt)
	if err != nil || !out.Equals(MkTypeArrow(tInt, outType)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, tRat)
	if err != nil || !out.Equals(MkTypeArrow(tRat, outType)) {
		return fmt.Errorf("Error: %s: rat > int not defined when it should be.", name)
	}
	out, err = GetTypeScheme(name, tReal)
	if err != nil || !out.Equals(MkTypeArrow(tReal, outType)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}

	return nil
}
