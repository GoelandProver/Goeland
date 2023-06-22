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

/************/
/* graph.go */
/************/

/**
 * This file provides a definition of a polymorphic graph.
 **/

package gs3

import "reflect"

type Graph[T any] struct {
	vertices []T
	edges    [][]int
}

func (g *Graph[T]) AddVertex(u T) {
	g.vertices = append(g.vertices, u)
}

func (g *Graph[T]) AddEdge(u, v T) {
	ux := g.findVertex(u)
	vx := g.findVertex(v)

	if ux == -1 {
		ux = g.addVertexAndResize(u)
	}
	if vx == -1 {
		vx = g.addVertexAndResize(v)
	}

	g.edges[ux] = append(g.edges[ux], vx)
	g.edges[vx] = append(g.edges[vx], ux)
}

func (g Graph[T]) findVertex(u T) int {
	index := -1
	for i, v := range g.vertices {
		if reflect.DeepEqual(u, v) {
			index = i
			break
		}
	}
	return index
}

func (g Graph[T]) addVertexAndResize(u T) int {
	res := len(g.vertices)
	g.vertices = append(g.vertices, u)

	for len(g.edges) < res {
		g.edges = append(g.edges, make([]int, 0))
	}

	return res
}
