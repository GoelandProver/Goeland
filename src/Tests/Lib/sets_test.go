package sets_test

import (
	"os"
	"testing"

	Lib "github.com/GoelandProver/Goeland/Lib"
)

type Integer struct {
	v int
}

func (i Integer) Equals(j any) bool {
	if j, ok := j.(Integer); ok {
		return i.v == j.v
	}
	return false
}

func (i Integer) Less(j any) bool {
	if j, ok := j.(Integer); ok {
		return i.v < j.v
	}
	return false
}

func mkInt(v int) Integer {
	return Integer{v: v}
}

func TestMain(m *testing.M) {
	os.Exit(m.Run())
}

func TestSimpleAdd(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	s = s.Add(mkInt(0))

	if !s.Contains(mkInt(0)) {
		t.Fatal("Error: added element not found in set.")
	}
}

func TestSingleton(t *testing.T) {
	s := Lib.Singleton(mkInt(0))

	if !s.Contains(mkInt(0)) {
		t.Fatal("Error: single element not found in singleton.")
	}
}

func TestEmptyHeight(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	if s.InternalHeight() != 0 {
		t.Fatal("Error: empty set should have height 0.")
	}
}

func TestSingletonHeight(t *testing.T) {
	s := Lib.Singleton(mkInt(0))
	if s.InternalHeight() != 1 {
		t.Fatal("Error: singleton should have height 1.")
	}
}

func TestMultiAdd(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	for i := 0; i < 8; i++ {
		s = s.Add(mkInt(i))
	}
	for i := 0; i < 8; i++ {
		if !s.Contains(mkInt(i)) {
			t.Fatal("Error: added element not found in set.")
		}
	}
	if s.InternalHeight() != 4 {
		t.Fatalf("Error: expected height: 4, actual height: %d", s.InternalHeight())
	}
}

func TestMultiAdd2(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	slice := []int{5, 2, 1, 8, 6, 7, 3}
	for _, x := range slice {
		s = s.Add(mkInt(x))
	}

	if s.InternalHeight() != 4 {
		t.Fatalf("Error: expected height: 4, actual height: %d", s.InternalHeight())
	}
}

func TestSimpleRemove(t *testing.T) {
	s := Lib.Singleton(mkInt(12))

	s = s.Remove(mkInt(12))
	if s.Contains(mkInt(12)) {
		t.Fatal("Error: Removed element still in set.")
	}
}

func TestAdvancedRemove(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	slice := []int{5, 2, 1, 8, 6, 7, 3}
	for _, x := range slice {
		s = s.Add(mkInt(x))
	}

	s = s.Remove(mkInt(5))
	if s.Contains(mkInt(5)) {
		t.Fatal("Error: Removed element still in set.")
	}

	if s.InternalHeight() != 3 {
		t.Fatalf("Error: expected height: 4, actual height: %d", s.InternalHeight())
	}
}

func TestElements(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	slice := []int{5, 2, 1, 8, 6, 7, 3}
	for _, x := range slice {
		s = s.Add(mkInt(x))
	}

	els := s.Elements()
	for _, x := range slice {
		if !Lib.ListMem(mkInt(x), els) {
			t.Fatalf("Error: element %d not found in set.Elements()", x)
		}
	}
}

func TestUnion(t *testing.T) {
	s1 := Lib.EmptySet[Integer]()
	s2 := Lib.EmptySet[Integer]()
	slice1 := []int{5, 2, 1, 8, 6, 7, 3}
	slice2 := []int{5, 2, 1, 12, 40, 35}
	for _, x := range slice1 {
		s1 = s1.Add(mkInt(x))
	}
	for _, x := range slice2 {
		s2 = s2.Add(mkInt(x))
	}

	s := s1.Union(s2)
	for _, x := range []int{5, 2, 1, 8, 6, 7, 3, 12, 40, 35} {
		if !s.Contains(mkInt(x)) {
			t.Fatalf("Error: expected %d to be in the union of the sets", x)
		}
	}
}

func TestInter(t *testing.T) {
	s1 := Lib.EmptySet[Integer]()
	s2 := Lib.EmptySet[Integer]()
	slice1 := []int{5, 2, 1, 8, 6, 7, 3}
	slice2 := []int{5, 2, 1, 12, 40, 35}
	for _, x := range slice1 {
		s1 = s1.Add(mkInt(x))
	}
	for _, x := range slice2 {
		s2 = s2.Add(mkInt(x))
	}

	s := s1.Inter(s2)
	for _, x := range []int{5, 2, 1} {
		if !s.Contains(mkInt(x)) {
			t.Fatalf("Error: expected %d to be in the intersection of the sets", x)
		}
	}
	for _, x := range []int{8, 6, 7, 3, 12, 40, 35} {
		if s.Contains(mkInt(x)) {
			t.Fatalf("Error: expected %d to not be in the intersection of the sets", x)
		}
	}
}

func TestDiff(t *testing.T) {
	s1 := Lib.EmptySet[Integer]()
	s2 := Lib.EmptySet[Integer]()
	slice1 := []int{5, 2, 1, 8, 6, 7, 3}
	slice2 := []int{5, 2, 1, 12, 40, 35}
	for _, x := range slice1 {
		s1 = s1.Add(mkInt(x))
	}
	for _, x := range slice2 {
		s2 = s2.Add(mkInt(x))
	}

	s := s1.Diff(s2)
	for _, x := range []int{8, 6, 7, 3} {
		if !s.Contains(mkInt(x)) {
			t.Fatalf("Error: expected %d to be in the difference of the sets", x)
		}
	}
	for _, x := range []int{5, 2, 1, 12, 40, 35} {
		if s.Contains(mkInt(x)) {
			t.Fatalf("Error: expected %d to not be in the difference of the sets", x)
		}
	}
}

func TestDisjoint(t *testing.T) {
	s1 := Lib.EmptySet[Integer]()
	s2 := Lib.EmptySet[Integer]()
	slice1 := []int{5, 2, 1, 8, 6, 7, 3}
	slice2 := []int{5, 2, 1, 12, 40, 35}
	for _, x := range slice1 {
		s1 = s1.Add(mkInt(x))
	}
	for _, x := range slice2 {
		s2 = s2.Add(mkInt(x))
	}

	if s1.Disjoint(s2) {
		t.Fatal("Error: expected that s1 and s2 are not disjoint")
	}

	s := s1.Diff(s2)
	if !s.Disjoint(s2) {
		t.Fatal("Error: expected to not have any more element of s2 in the diff")
	}
}

func TestCardinal(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	slice := []int{5, 2, 1, 8, 6, 7, 3}
	for _, x := range slice {
		s = s.Add(mkInt(x))
	}

	if s.Cardinal() != 7 {
		t.Fatal("Error: expected cardinal to be 7")
	}
}

func TestIsEmpty(t *testing.T) {
	s := Lib.EmptySet[Integer]()

	if !s.IsEmpty() {
		t.Fatalf("Error: expected empty set to be empty")
	}
}

func TestIsEmpty2(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	slice := []int{5, 2, 1, 8, 6, 7, 3}
	for _, x := range slice {
		s = s.Add(mkInt(x))
	}

	s = s.Diff(s)
	if !s.IsEmpty() {
		t.Fatalf("Error: expected diff of something with itself to be empty")
	}
}

func TestNotEmpty(t *testing.T) {
	s := Lib.EmptySet[Integer]()
	slice := []int{5, 2, 1, 8, 6, 7, 3}
	for _, x := range slice {
		s = s.Add(mkInt(x))
	}

	if s.IsEmpty() {
		t.Fatalf("Error: expected s not to be empty")
	}
}
