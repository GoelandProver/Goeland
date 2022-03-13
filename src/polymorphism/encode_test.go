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
	"testing"
)
 
func TestZ(t *testing.T) {
	testTable := []struct{
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
	testTable := []struct{
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
	testTable := []struct{
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

/*
func TestCopy(t *testing.T) {
	testTable := [][]uint64{
		{0},
		{1},
		{1, 2, 3},
		{9, 5, 3, 8, 2, 1, 7},
	}

	for _, test := range testTable {
		n := len(test)
		last := test[n-1]
		encodeList(test)
		if len(test) != n || last != test[n - 1] {
			t.Fatalf("Error: list isn't properly copied.")
		}
	}
}
*/