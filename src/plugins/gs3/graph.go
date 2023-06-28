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

import (
	"reflect"
)

type Graph[T any] struct {
	vertices []T
	edges    [][]int
}

// ----------------------------------------------------------------------------
// Public methods
// ----------------------------------------------------------------------------

func MakeGraph[T any]() Graph[T] {
	g := Graph[T]{}
	g.vertices = make([]T, 0)
	g.edges = make([][]int, 0)
	return g
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
}

func (g Graph[T]) Copy() Graph[T] {
	oth := Graph[T]{}
	oth.vertices = make([]T, len(g.vertices))
	copy(oth.vertices, g.vertices)
	oth.edges = make([][]int, len(g.edges))
	for i, ls := range g.edges {
		oth.edges[i] = make([]int, len(ls))
		copy(oth.edges[i], ls)
	}
	return oth
}

func (g Graph[T]) DepthFirstSearch(source T) []T {
	sourceIndex := g.findVertex(source)
	if sourceIndex == -1 {
		return []T{}
	}
	seen := make([]bool, len(g.vertices))
	g.dfsAux(&seen, sourceIndex)
	elementsSeen := []T{}
	for i, v := range seen {
		if v {
			elementsSeen = append(elementsSeen, g.vertices[i])
		}
	}
	return elementsSeen
}

func (g *Graph[T]) CleanEdgesFromVertex(u T) {
	v := g.findVertex(u)

	if v == -1 {
		return
	}

	g.edges[v] = make([]int, 0)

	for i, neighbors := range g.edges {
		for j, neighbor := range neighbors {
			if neighbor == v {
				g.edges[i] = append(g.edges[i][:j], g.edges[i][j+1:]...)
				break
			}
		}
	}
}

// ----------------------------------------------------------------------------
// Private methods
// ----------------------------------------------------------------------------

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

func (g *Graph[T]) addVertexAndResize(u T) int {
	g.vertices = append(g.vertices, u)

	for len(g.edges) < len(g.vertices) {
		g.edges = append(g.edges, make([]int, 0))
	}

	return len(g.vertices) - 1
}

func (g Graph[T]) dfsAux(seen *[]bool, src int) {
	(*seen)[src] = true

	for _, n := range g.edges[src] {
		if !(*seen)[n] {
			g.dfsAux(seen, n)
		}
	}
}
