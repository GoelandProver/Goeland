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

import "github.com/GoelandProver/Goeland/global"

// https://en.wikipedia.org/wiki/Disjoint-set_data_structure
type DisjointSet[T global.Basic] struct {
	graph *global.Map[T, *global.BasicPair[T, global.Integer]]
}

func NewDisjointSet[T global.Basic]() *DisjointSet[T] {
	return &DisjointSet[T]{global.NewMap[T, *global.BasicPair[T, global.Integer]]()}
}

func (ds *DisjointSet[T]) MakeSet(element T) {
	if !ds.isInSet(element) {
		nodeInfo := global.NewBasicPair[T, global.Integer](element, 1)
		ds.graph.Set(element, nodeInfo)
	}
}

func (ds *DisjointSet[T]) Find(element T) T {
	for !ds.isRoot(element) {
		oldFather := ds.getFatherOf(element)
		ds.setFatherOf(element, ds.getFatherOf(ds.getFatherOf(element)))
		element = oldFather
	}

	return element
}

func (ds *DisjointSet[T]) AreInSame(first, second T) bool {
	return ds.Find(first).Equals(ds.Find(second))
}

func (ds *DisjointSet[T]) Union(first, second T) {
	first, second = ds.Find(first), ds.Find(second)

	if first.Equals(second) {
		return
	}

	if ds.getSizeOf(first) < ds.getSizeOf(second) {
		first, second = second, first
	}

	ds.setFatherOf(second, first)
	ds.setSizeOf(first, ds.getSizeOf(first)+ds.getSizeOf(second))
}

func (ds *DisjointSet[T]) getSizeOf(element T) global.Integer {
	return ds.graph.Get(element).GetSnd()
}

func (ds *DisjointSet[T]) setSizeOf(element T, size global.Integer) {
	ds.graph.Get(element).SetSnd(size)
}

func (ds *DisjointSet[T]) getFatherOf(element T) T {
	return ds.graph.Get(element).GetFst()
}

func (ds *DisjointSet[T]) setFatherOf(element, root T) {
	ds.graph.Get(element).SetFst(root)
}

func (ds *DisjointSet[T]) isRoot(element T) bool {
	return ds.getFatherOf(element).Equals(element)
}

func (ds *DisjointSet[T]) isInSet(element T) bool {
	return ds.graph.Exists(element)
}
