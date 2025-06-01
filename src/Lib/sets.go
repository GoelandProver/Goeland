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

/**
 * This file furnishes an implementation of AVL trees.
 * The following operations are supported:
 *  - insertion (using Add) in O(log(n))
 *  - deletion (using ...) in O(log(n))
 *  - membership test (using Mem) in O(log(n))
 *  - union (using Union) in O(nlog(n))
 *  - intersection (using Inter) in O(nlog(n))
 *  - difference (using Diff) in O(nlog(n))
 *
 * Several other utility functions are also defined.
**/

package Lib

import (
	_ "fmt"
)

// -----------------------------------------------------------------------------
// Internal

type Node[T Ordered] struct {
	height int
	left   *Node[T]
	right  *Node[T]
	value  T
}

func height[T Ordered](node *Node[T]) int {
	if node == nil {
		return 0
	}
	return node.height
}

func mkNode[T Ordered](x T) *Node[T] {
	n := &Node[T]{
		height: 1,
		left:   nil,
		right:  nil,
		value:  x,
	}
	return n
}

func balance[T Ordered](node *Node[T]) int {
	if node == nil {
		return 0
	}
	return height(node.left) - height(node.right)
}

func newHeight[T Ordered](node *Node[T]) int {
	return 1 + max(height(node.left), height(node.right))
}

func rotateLeft[T Ordered](w *Node[T]) *Node[T] {
	n := w.left
	w.left = n.right
	n.right = w
	w.height = newHeight(w)
	n.height = newHeight(n)
	return n
}

func rotateRight[T Ordered](w *Node[T]) *Node[T] {
	n := w.right
	w.right = n.left
	n.left = w
	w.height = newHeight(w)
	n.height = newHeight(n)
	return n
}

func rebalance[T Ordered](node *Node[T]) *Node[T] {
	nodeBalance := balance(node)

	if nodeBalance > 1 {
		if balance(node.left) > 0 {
			// Unbalanced by left child of left child
			return rotateLeft(node)
		} else {
			// Unbalanced by right child of left child
			node.left = rotateRight(node.left)
			return rotateLeft(node)
		}
	}
	if nodeBalance < -1 {
		if balance(node.right) < 0 {
			// Unbalanced by right child of right child
			return rotateRight(node)
		} else {
			// Unbalanced by left child of right child
			node.right = rotateLeft(node.right)
			return rotateRight(node)
		}
	}

	return node
}

func insert[T Ordered](node *Node[T], x T) *Node[T] {
	if node == nil {
		return mkNode(x)
	}
	if node.value.Equals(x) {
		return node
	}

	if x.Less(node.value) {
		node.left = insert(node.left, x)
	} else {
		node.right = insert(node.right, x)
	}
	node.height = newHeight(node)

	return rebalance(node)
}

func minValue[T Ordered](node *Node[T]) T {
	if node.left != nil {
		return minValue(node.left)
	}
	return node.value
}

func remove[T Ordered](node *Node[T], x T) *Node[T] {
	if node == nil {
		return node
	}

	if x.Less(node.value) {
		node.left = remove(node.left, x)
	} else if node.value.Less(x) {
		node.right = remove(node.right, x)
	} else {
		if node.left == nil || node.right == nil {
			n := node.left
			if n == nil {
				n = node.right
			}
			if n == nil {
				return nil
			} else {
				node = n
			}
		} else {
			newVal := minValue(node.right)
			node.value = newVal
			node.right = remove(node.right, newVal)
		}
	}

	if node == nil {
		return nil
	}

	node.height = newHeight(node)
	return rebalance(node)
}

func elements[T Ordered](node *Node[T]) List[T] {
	if node == nil {
		return NewList[T]()
	}

	left := elements(node.left)
	right := elements(node.right)
	left.Append(append(right.GetSlice(), node.value)...)

	return left
}

func find[T Ordered](node *Node[T], x T) bool {
	if node == nil {
		return false
	}
	if x.Equals(node.value) {
		return true
	}

	if x.Less(node.value) {
		return find(node.left, x)
	} else {
		return find(node.right, x)
	}
}

func cardinal[T Ordered](node *Node[T]) int {
	if node == nil {
		return 0
	}

	return 1 + cardinal(node.left) + cardinal(node.right)
}

// End internal
// -----------------------------------------------------------------------------

type Set[T Ordered] struct {
	root *Node[T]
}

func mkSet[T Ordered](root *Node[T]) Set[T] {
	return Set[T]{root: root}
}

func EmptySet[T Ordered]() Set[T] {
	return mkSet[T](nil)
}

func (s Set[T]) Add(values ...T) Set[T] {
	for _, x := range values {
		s = mkSet(insert(s.root, x))
	}
	return s
}

func Singleton[T Ordered](x T) Set[T] {
	return mkSet(insert(nil, x))
}

func (s Set[T]) Remove(x T) Set[T] {
	return mkSet(remove(s.root, x))
}

func (s Set[T]) Elements() List[T] {
	return elements(s.root)
}

func (s Set[T]) Mem(x T) bool {
	return find(s.root, x)
}

func (s0 Set[T]) Union(s1 Set[T]) Set[T] {
	for _, x := range s1.Elements().GetSlice() {
		s0 = s0.Add(x)
	}
	return s0
}

func (s0 Set[T]) Inter(s1 Set[T]) Set[T] {
	s2 := EmptySet[T]()
	for _, x := range s1.Elements().GetSlice() {
		if s0.Mem(x) {
			s2 = s2.Add(x)
		}
	}
	return s2
}

func (s0 Set[T]) Diff(s1 Set[T]) Set[T] {
	for _, x := range s1.Elements().GetSlice() {
		s0 = s0.Remove(x)
	}
	return s0
}

func (s0 Set[T]) Disjoint(s1 Set[T]) bool {
	for _, x := range s1.Elements().GetSlice() {
		if s0.Mem(x) {
			return false
		}
	}
	return true
}

func (s Set[T]) Cardinal() int {
	return cardinal(s.root)
}

func (s Set[T]) IsEmpty() bool {
	return s.root == nil
}

// -----------------------------------------------------------------------------
// Internal; do not call.

func (s Set[T]) InternalHeight() int {
	return height(s.root)
}
