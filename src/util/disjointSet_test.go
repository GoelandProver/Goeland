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
package util

import (
	"os"
	"testing"

	"github.com/GoelandProver/Goeland/global"
)

var ds *DisjointSet[global.Integer]
var size int

func TestMain(m *testing.M) {
	size = 100
	code := m.Run()
	os.Exit(code)
}

func initDS() {
	ds = NewDisjointSet[global.Integer]()
	for i := 0; i < size; i++ {
		ds.MakeSet(global.Integer(i))
	}
}

func TestInsert(t *testing.T) {
	initDS()
	for i := 0; i < size; i++ {
		if !ds.isInSet(global.Integer(i)) {
			t.Fatalf("The %d element has not been inserted correctly", i)
		}
	}
}

func TestRoots(t *testing.T) {
	initDS()
	for i := 0; i < size; i++ {
		if !ds.isRoot(global.Integer(i)) {
			t.Fatalf("The %d element is not its own father, thus it's not a root node", i)
		}
	}
}

func TestUnion(t *testing.T) {
	initDS()
	last := global.Integer(size - 1)
	ds.Union(0, last)

	if !ds.AreInSame(0, last) {
		t.Fatal("Union doesn't work properly")
	}

	if ds.getSizeOf(0) != 2 && ds.getSizeOf(last) != 2 {
		t.Fatal("The sizes are incorrectly set during the Union")
	}
}

func TestRepresentative(t *testing.T) {
	initDS()
	for i := 0; i < size/2; i++ {
		ds.Union(0, global.Integer(i))
	}

	representativeOf0 := ds.Find(0)
	for i := 0; i < size/2; i++ {
		if !representativeOf0.Equals(ds.Find(global.Integer(i))) {
			t.Fatalf("Elements %d and %d should have the same representative", 0, i)
		}
	}
}

func TestCorrectReRootingAndResizing(t *testing.T) {
	initDS()
	for i := 0; i < size/2; i++ {
		ds.Union(0, global.Integer(i))
	}

	for i := size/2 + 1; i < size/2+size/4; i++ {
		ds.Union(global.Integer(size/2+1), global.Integer(i))
	}

	if !ds.getSizeOf(0).Equals(global.Integer(size / 2)) {
		t.Fatalf("The size of %d should be %d and is %d instead", 0, size/2, ds.getSizeOf(0))
	}

	if !ds.getSizeOf(global.Integer(size/2 + 1)).Equals(global.Integer(size/4) - 1) {
		t.Fatalf("The size of %d should be %d and is %d instead", size/2+1, size/4-1, ds.getSizeOf(global.Integer(size/2+1)))
	}

	ds.Union(0, global.Integer(size/2+1))

	if !ds.isRoot(0) {
		t.Fatalf("The root of %d is %d but it should be itself since it's the larger tree", 0, ds.Find(0))
	}

	if !ds.getSizeOf(0).Equals(global.Integer(size/2 + size/4 - 1)) {
		t.Fatalf("After merging the two trees, the size of %d should be %d and is %d instead", 0, size/2+size/4-1, ds.getSizeOf(0))
	}
}

func TestMultipleReRooting(t *testing.T) {
	initDS()
	for i := size - 1; i > 0; i-- {
		ds.Union(global.Integer(i-1), global.Integer(i))
	}

	if !ds.getSizeOf(ds.Find(0)).Equals(global.Integer(size)) {
		t.Fatalf("After merging all of the branches, the size of the representative of %d should be %d and is %d instead", 0, size, ds.getSizeOf(0))
	}
}
