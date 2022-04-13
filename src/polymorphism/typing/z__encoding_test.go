package polymorphism

import (
	"fmt"
	"testing"
)

func Setup() {
	Init()
	InitTPTPArithmetic()
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
