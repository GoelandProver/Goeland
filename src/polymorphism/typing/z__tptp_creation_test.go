package polymorphism_test

import (
	"fmt"
	"testing"

	p "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Testing TPTPNatives definition */

func TestTPTPBinaryNativeBinaryProps(t *testing.T) {
	ls := []string{
		"$less",
		"$lesseq",
		"$greater",
		"$greatereq",
	}
	for _, name := range ls {
		if err := testBinaryPreds(name); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestTPTPBinaryNatives(t *testing.T) {
	ls := []string{
		"$sum",
		"$difference",
		"$product",
		"$quotient_e",
		"$quotient_t",
		"$quotient_f",
		"$remainder_e",
		"$remainder_t",
		"$remainder_f",
	}
	for _, name := range ls {
		if err := testBinaryTypes(name); err != nil {
			t.Errorf(err.Error())
		}
	}
	out := p.GetType("$quotient", p.MkTypeCross(tRat, tRat))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tRat, tRat), tRat)) {
		t.Errorf("Error: quotient: rat * rat > rat not defined when it should be.")
	}
	out = p.GetType("$quotient", p.MkTypeCross(tReal, tReal))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tReal, tReal), tReal)) {
		t.Errorf("Error: quotient: real * real > real not defined when it should be.")
	}
}

func TestTPTPUnaryNativesCreation(t *testing.T) {
	ls := []string{
		"$uminus",
		"$floor",
		"$ceiling",
		"$truncate",
		"$round",
	}
	for _, name := range ls {
		if err := testUnaryTypes(name); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestUnaryProp(t *testing.T) {
	ls := []string{"$is_int", "$is_rat"}

	for _, name := range ls {
		if err := testUnaryProp(name); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestTPTPConversionFunctions(t *testing.T) {
	ls := []struct {
		name string
		out  p.TypeApp
	}{
		{"$to_int", tInt},
		{"$to_rat", tRat},
		{"$to_real", tReal},
	}

	for _, type_ := range ls {
		if err := testConversion(type_.name, type_.out); err != nil {
			t.Errorf(err.Error())
		}
	}
}

func TestPrimitive(t *testing.T) {
	primitiveTypes := []string{
		"$int",
		"$rat",
	}

	for i, primitive := range primitiveTypes {
		fst := p.MkTypeHint(primitive)
		snd := p.MkTypeHint(primitive)
		if !fst.Equals(snd) {
			t.Errorf("Same primitive types (%s) have different UIDs !", primitive)
		}
		for j, p2 := range primitiveTypes {
			if i != j {
				if fst.Equals(p.MkTypeHint(p2)) {
					t.Fatalf("Different primitive types (%s, %s) have the same UID !", primitive, p2)
				}
			}
		}
	}
}

func TestIsIntFunction(t *testing.T) {
	testTable := []struct {
		t p.TypeHint
		b bool
	}{
		{tInt, true}, {tRat, false}, {tReal, false}, {p.MkTypeHint("o"), false}, {p.MkTypeHint("i"), false},
	}

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.t.ToString()), func(t *testing.T) {
			if test.b && !p.IsInt(test.t) {
				t.Fatalf("%s is int when it shouldn't", test.t.ToString())
			}
		})
	}
}

func TestIsRatFunction(t *testing.T) {
	testTable := []struct {
		t p.TypeHint
		b bool
	}{
		{tInt, false}, {tRat, true}, {tReal, false}, {p.MkTypeHint("$o"), false}, {p.MkTypeHint("$i"), false},
	}

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.t.ToString()), func(t *testing.T) {
			if test.b && !p.IsRat(test.t) {
				t.Fatalf("%s is rat when it shouldn't", test.t.ToString())
			}
		})
	}
}

func TestIsRealFunction(t *testing.T) {
	testTable := []struct {
		t p.TypeHint
		b bool
	}{
		{tInt, false}, {tRat, false}, {tReal, true}, {p.MkTypeHint("$o"), false}, {p.MkTypeHint("$i"), false},
	}

	for _, test := range testTable {
		t.Run(fmt.Sprintf("%v", test.t.ToString()), func(t *testing.T) {
			if test.b && !p.IsReal(test.t) {
				t.Fatalf("%s is real when it shouldn't", test.t.ToString())
			}
		})
	}
}

func TestDefaultType(t *testing.T) {
	if !p.DefaultType().Equals(p.MkTypeHint("$i")) {
		t.Fatalf("Wrong default type: %s", p.DefaultType().ToString())
	}
}

func TestDefaultProp(t *testing.T) {
	if !p.DefaultProp().Equals(p.MkTypeHint("$o")) {
		t.Fatalf("Wrong default type: %s", p.DefaultProp().ToString())
	}
}

func TestDefaultType2(t *testing.T) {
	if !p.DefaultFunType(0).Equals(p.DefaultType()) {
		t.Fatalf("Wrong default type with 0 arguments: %s", p.DefaultFunType(0))
	}
}

func TestDefaultProp2(t *testing.T) {
	if !p.DefaultPropType(0).Equals(p.DefaultProp()) {
		t.Fatalf("Wrong default type with 0 arguments: %s", p.DefaultPropType(0))
	}
}

func TestEmptyGlobalContext(t *testing.T) {
	if p.EmptyGlobalContext() {
		t.Fatalf("It says that global context is empty when it's loaded")
	}
}

func TestDefaultType3(t *testing.T) {
	testTable := []struct {
		size int
		name string
	}{
		{1, "($i > $i)"},
		{2, "(($i * $i) > $i)"},
		{3, "(($i * $i * $i) > $i)"},
		{10, "(($i * $i * $i * $i * $i * $i * $i * $i * $i * $i) > $i)"},
	}

	for _, test := range testTable {
		if p.DefaultFunType(test.size).ToString() != test.name {
			t.Fatalf("Wrong default fun type. Expected: %s, actual: %s", test.name, p.DefaultFunType(test.size).ToString())
		}
	}
}

func TestDefaultProp3(t *testing.T) {
	testTable := []struct {
		size int
		name string
	}{
		{1, "($i > $o)"},
		{2, "(($i * $i) > $o)"},
		{3, "(($i * $i * $i) > $o)"},
		{10, "(($i * $i * $i * $i * $i * $i * $i * $i * $i * $i) > $o)"},
	}

	for _, test := range testTable {
		if p.DefaultPropType(test.size).ToString() != test.name {
			t.Fatalf("Wrong default fun type. Expected: %s, actual: %s", test.name, p.DefaultPropType(test.size).ToString())
		}
	}
}

func testBinaryPreds(name string) error {
	out := p.GetType(name, p.MkTypeCross(tInt, tInt))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tInt, tInt), p.DefaultProp())) {
		return fmt.Errorf("Error: %s: int * int > int not defined when it should be.", name)
	}
	out = p.GetType(name, p.MkTypeCross(tRat, tRat))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tRat, tRat), p.DefaultProp())) {
		return fmt.Errorf("Error: %s: rat * rat > rat not defined when it should be.", name)
	}
	out = p.GetType(name, p.MkTypeCross(tReal, tReal))
	if !out.Equals(p.MkTypeArrow(p.MkTypeCross(tReal, tReal), p.DefaultProp())) {
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
	if !out.Equals(p.MkTypeArrow(tInt, p.DefaultProp())) {
		return fmt.Errorf("Error: %s: int > o not defined when it should be.", name)
	}
	out = p.GetType(name, tRat)
	if !out.Equals(p.MkTypeArrow(tRat, p.DefaultProp())) {
		return fmt.Errorf("Error: %s: rat > o not defined when it should be.", name)
	}
	out = p.GetType(name, tReal)
	if !out.Equals(p.MkTypeArrow(tReal, p.DefaultProp())) {
		return fmt.Errorf("Error: %s: real > o not defined when it should be.", name)
	}

	return nil
}

func testConversion(name string, outType p.TypeApp) error {
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
