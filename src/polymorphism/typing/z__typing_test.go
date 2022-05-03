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

package polymorphism_test

import (
	"os"
	"testing"

	p "github.com/GoelandProver/Goeland/polymorphism/typing"
)

var tInt p.TypeHint
var tRat p.TypeHint
var tReal p.TypeHint

func TestMain(m *testing.M) {
	p.Init()
	p.InitTPTPArithmetic()
	tInt = p.MkTypeHint("int")
	tRat = p.MkTypeHint("rat")
	tReal = p.MkTypeHint("real")
	code := m.Run()
	os.Exit(code)
}

/*

/* Testing p.TypeSchemes

func TestPolymorphicFunctions(t *testing.T) {
	tInt := p.MkTypeHint("int")
	tRat := p.MkTypeHint("rat")

	err := p.SaveTypeScheme("sum", p.MkTypeCross(tInt, tInt), tInt)
	if err != nil {
		t.Fatalf("Error: an error has been detected while saving type scheme when it shouldn't ! Error text: %v", err.Error())
	}
	err = p.SaveTypeScheme("sum", p.MkTypeCross(tRat, tRat), tRat)
	if err != nil {
		t.Fatalf("Error: an error has been detected while saving type scheme when it shouldn't ! Error text: %v", err.Error())
	}

	err = p.SaveTypeScheme("sum", p.MkTypeCross(tInt, tInt), tRat)
	if err == nil {
		t.Fatalf("Error: no error has been detected while saving type scheme when it should have !")
	}

	err = p.SaveTypeScheme("eq", p.MkTypeCross(tInt, tInt), tInt)
	if err != nil {
		t.Fatalf("Error: an error has been detected while saving type scheme when it shouldn't ! Error text: %v", err.Error())
	}

	if tScheme := p.GetType("sum", p.MkTypeCross(tInt, tInt)); !tScheme.Equals(p.MkTypeArrow(p.MkTypeCross(tInt, tInt), tInt)) {
		t.Fatalf("Error: couldn't retrieve previously entered type scheme in map.")
	}

	if tScheme := p.GetType("in", p.MkTypeCross(tInt, tInt)); tScheme != nil {
		t.Fatalf("Error: infered type not in global context.")
	}
}

/* Test default fun type and default prop type

func TestDefaultFunType(t *testing.T) {
	expected := p.MkTypeArrow(p.MkTypeCross(p.DefaultType(), p.DefaultType(), p.DefaultType(), p.DefaultType()), p.DefaultType().(p.TypeScheme))
	if !p.DefaultFunType(4).Equals(expected) {
		t.Errorf("Wrong fun default type. Expected: %s, actual: %s", expected.ToString(), p.DefaultFunType(4).ToString())
	}
}
func TestDefaultPropType(t *testing.T) {
	expected := p.MkTypeArrow(p.MkTypeCross(p.DefaultType(), p.DefaultType(), p.DefaultType(), p.DefaultType()), p.DefaultPropType(0))
	if !p.DefaultPropType(4).Equals(expected) {
		t.Errorf("Wrong fun default type. Expected: %s, actual: %s", expected.ToString(), p.DefaultPropType(4).ToString())
	}
}

/* Test polymorphic quantified types

func TestPolymorphicSubstitution(t *testing.T) {
	a := p.MkTypeVar("a")
	b := p.MkTypeVar("b")

	quantType := p.MkQuantifiedType([]p.TypeVar{a, b}, p.MkTypeArrow(p.MkTypeCross(a, b), a))

	expectedString := "Π a, b: Type, ((*_0 * *_1) > *_0)"
	// Test string
	if quantType.ToString() != expectedString {
		t.Fatalf("Strings do not match. Expected: %s, actual: %s", expectedString, quantType.ToString())
	}

	// Test UID
	expectedScheme := p.MkTypeArrow(p.MkTypeCross(p.MkTypeHint("*_0"), p.MkTypeHint("*_1")), p.MkTypeHint("*_0"))
	if !expectedScheme.Equals(quantType) {
		t.Fatalf("Schemes do not match. Expected: %s, actual: %s", expectedScheme.ToString(), quantType.ToString())
	}

	// Test input arguments size
	if p.GetInputType(expectedScheme).Size() != 2 {
		t.Fatalf("Wrong size of arguments. Expected: 2, actual: %d", p.GetInputType(expectedScheme).Size())
	}
}
*/
