package polymorphism_test

import (
	"fmt"
	"testing"

	p "github.com/GoelandProver/Goeland/polymorphism/typing"
)

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
	out := p.GetType("quotient", p.MkTypeCross(tRat, tRat))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tRat, tRat), tRat)) {
		t.Errorf("Error: quotient: rat * rat > rat not defined when it should be.")
	}
	out = p.GetType("quotient", p.MkTypeCross(tReal, tReal))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tReal, tReal), tReal)) {
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
		out  p.TypeScheme
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

func TestPrimitive(t *testing.T) {
	primitiveTypes := []string{
		"int",
		"rat",
	}

	for i, primitive := range primitiveTypes {
		fst := p.MkTypeHint(primitive)
		snd := p.MkTypeHint(primitive)
		if fst.UID() != snd.UID() {
			t.Errorf("Same primitive types (%s) have different UIDs : %v %v", primitive, fst.UID(), snd.UID())
		}
		for j, p2 := range primitiveTypes {
			if i != j {
				if fst.Equals(p.MkTypeHint(p2)) {
					t.Fatalf("Different primitive types (%s, %s) have the same UID: %v", primitive, p2, fst.UID())
				}
			}
		}
	}
}

func testBinaryPreds(name string) error {
	out := p.GetType(name, p.MkTypeCross(tInt, tInt))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tInt, tInt), p.DefaultPropType(0))) {
		return fmt.Errorf("Error: %s: int * int > int not defined when it should be.", name)
	}
	out = p.GetType(name, p.MkTypeCross(tRat, tRat))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tRat, tRat), p.DefaultPropType(0))) {
		return fmt.Errorf("Error: %s: rat * rat > rat not defined when it should be.", name)
	}
	out = p.GetType(name, p.MkTypeCross(tReal, tReal))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tReal, tReal), p.DefaultPropType(0))) {
		return fmt.Errorf("Error: %s: real * real > real not defined when it should be.", name)
	}

	return nil
}

func testBinaryTypes(name string) error {
	out := p.GetType(name, p.MkTypeCross(tInt, tInt))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tInt, tInt), tInt)) {
		return fmt.Errorf("Error: %s: int * int > int not defined when it should be.", name)
	}
	out = p.GetType(name, p.MkTypeCross(tRat, tRat))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tRat, tRat), tRat)) {
		return fmt.Errorf("Error: %s: rat * rat > rat not defined when it should be.", name)
	}
	out = p.GetType(name, p.MkTypeCross(tReal, tReal))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tReal, tReal), tReal)) {
		return fmt.Errorf("Error: %s: real * real > real not defined when it should be.", name)
	}

	return nil
}

func testUnaryTypes(name string) error {
	out := p.GetType(name, tInt)
	if !out.Equals(p.MkTypeArrow(tInt, tInt)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}
	out = p.GetType(name, tRat)
	if !out.Equals(p.MkTypeArrow(tRat, tRat)) {
		return fmt.Errorf("Error: %s: rat > rat not defined when it should be.", name)
	}
	out = p.GetType(name, tReal)
	if !out.Equals(p.MkTypeArrow(tReal, tReal)) {
		return fmt.Errorf("Error: %s: real > real not defined when it should be.", name)
	}

	return nil
}

func testUnaryProp(name string) error {
	out := p.GetType(name, tInt)
	if !out.Equals(p.MkTypeArrow(tInt, p.DefaultPropType(0))) {
		return fmt.Errorf("Error: %s: int > o not defined when it should be.", name)
	}
	out = p.GetType(name, tRat)
	if !out.Equals(p.MkTypeArrow(tRat, p.DefaultPropType(0))) {
		return fmt.Errorf("Error: %s: rat > o not defined when it should be.", name)
	}
	out = p.GetType(name, tReal)
	if !out.Equals(p.MkTypeArrow(tReal, p.DefaultPropType(0))) {
		return fmt.Errorf("Error: %s: real > o not defined when it should be.", name)
	}

	return nil
}

func testConversion(name string, outType p.TypeScheme) error {
	out := p.GetType(name, tInt)
	if !out.Equals(p.MkTypeArrow(tInt, outType)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}
	out = p.GetType(name, tRat)
	if !out.Equals(p.MkTypeArrow(tRat, outType)) {
		return fmt.Errorf("Error: %s: rat > int not defined when it should be.", name)
	}
	out = p.GetType(name, tReal)
	if !out.Equals(p.MkTypeArrow(tReal, outType)) {
		return fmt.Errorf("Error: %s: int > int not defined when it should be.", name)
	}

	return nil
}
