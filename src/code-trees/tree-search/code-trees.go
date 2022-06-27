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
/*****************/
/* code-trees.go */
/*****************/
/**
* This file contains all the definitons necessary to make a Code Tree
**/

package treesearch

import (
	"strings"

	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	datastruct "github.com/GoelandProver/Goeland/types/data-struct"
)

/*************************/
/* Structures definition */
/*************************/

/* A CodeBlock is a sequence of continuous instructions. */
type CodeBlock []treetypes.Instruction

func (c CodeBlock) Copy() CodeBlock {
	return treetypes.CopyInstructionList(c)
}

/* Each node of a CodeTree is composed of a sequence of instruction and its children. If it's a leaf, it has formulaes corresponding to the sequence of instructions. */
type Node struct {
	value    CodeBlock
	children []*Node
	formulae basictypes.FormList
}

func (n Node) getValue() CodeBlock {
	return treetypes.CopyInstructionList(n.value)
}
func (n Node) getChildren() []*Node {
	return CopyNodeList(n.children)
}
func (n Node) getFormulae() basictypes.FormList {
	return n.formulae.Copy()
}

/* Check if a node is empty */
func (n Node) IsEmpty() bool {
	return (len(n.value) == 0)
}

/* Make data struct */
func (n Node) MakeDataStruct(fl basictypes.FormList, is_pos bool) datastruct.DataStructure {
	return makeCodeTreeFromAtomic(fl, is_pos)
}

/* Copy a datastruct */
func (n Node) Copy() datastruct.DataStructure {
	return Node{n.getValue(), n.getChildren(), n.getFormulae()}
}

/********************/
/* Helper functions */
/********************/

/* The Node is a leaf when it contains at least one formulae. */
func (n Node) isLeaf() bool {
	return len(n.getFormulae()) > 0
}

/* Make two code trees (tree_pos and tree_neg) from st.atomic */
func makeCodeTreeFromAtomic(lf basictypes.FormList, is_pos bool) *Node {
	var form basictypes.FormList

	for _, f := range lf {
		switch nf := f.Copy().(type) {
		case basictypes.Pred:
			if is_pos {
				form = append(form, f)
			}
		case basictypes.Not:
			switch nf.GetForm().(type) {
			case basictypes.Pred:
				if !(is_pos) {
					form = append(form, nf.GetForm())
				}
			}
		}
	}

	return makeCodeTree(form)
}

/* Makes a Code Tree from a Sequence of instructions */
func makeCodeTree(forms basictypes.FormList) *Node {
	root := makeNode(nil)

	for _, f := range forms {
		f_tmp := f.Copy()
		form_tmp := treetypes.ParseFormula(f_tmp)
		root.insert(form_tmp)
	}

	return root
}

/* Makes a CodeTree from one sequence of instructions. */
func makeBranch(sequence treetypes.Sequence) *Node {
	root := makeNode(nil)

	root.insert(sequence)

	return root
}

/* Makes a Node from an instruction */
func makeNode(block CodeBlock) *Node {
	n := new(Node)
	n.value = block.Copy()
	n.children = []*Node{}
	n.formulae = basictypes.MakeEmptyFormList()
	return n
}

/* Insert a lsit of formula into the right tree */
func (n Node) InsertFormulaListToDataStructure(lf basictypes.FormList) datastruct.DataStructure {
	for _, f := range lf {
		switch nf := f.Copy().(type) {
		case basictypes.Pred:
			n.insert(treetypes.ParseFormula(nf))

		case basictypes.Not:
			switch nf.GetForm().(type) {
			case basictypes.Pred:
				n.insert(treetypes.ParseFormula(nf.GetForm()))

			}
		}
	}
	return n
}

/*******************/
/* Actual methods. */
/*******************/

/* Prints a CodeTree. */
func (n Node) Print() {
	n.printAux(-1)
}

/* Auxiliary function to print a CodeTree. */
func (n Node) printAux(tab int) {
	// Print current value
	for _, instr := range n.value {
		if instr.IsEquivalent(treetypes.Begin{}) {
			tab += 1
		}
		global.PrintDebug("PT", strings.Repeat("\t", tab)+instr.ToString())

		if treetypes.IsEnd(instr) {
			tab -= 1
		}
	}

	if n.isLeaf() {
		for _, form := range n.formulae {
			global.PrintDebug("PT", strings.Repeat("\t", tab+1)+form.ToString())
		}
	}
	global.PrintDebug("PT", "\n")

	// For each child, print the following sequences with tab = tab + 1
	for _, child := range n.children {
		child.printAux(tab)
	}
}

/* Inserts a sequence of instructions in a Code Tree. */
func (n *Node) insert(sequence treetypes.Sequence) {
	if len(n.value) == 0 {
		n.value = sequence.GetInstructions()
		n.formulae = basictypes.MakeSingleElementList(sequence.GetFormula())
	} else {
		n.followInstructions(sequence.GetInstructions(), sequence.GetFormula())
	}
}

/* Auxiliary function to follow the sequence of instructions to insert in the Node. */
func (n *Node) followInstructions(instructions []treetypes.Instruction, form basictypes.Form) {
	// Initialization of the node we will be working on and of a counter.
	current := n
	oui := 0

	// For each instruction, there are 2 cases:
	//    * The current instruction is equivalent to the instruction stored in the CodeBlock of the current node at the index of the counter.
	//    * Or it isn't.
	for i, instr := range instructions {

		// If it's equivalent, there are 2 cases:
		//    * It's the end of the sequence & the end of the CodeBlock. In this case, it's a full match, just add the formulae to the leaf.
		//    * It's the end of the CodeBlock, but not of the sequence. In this case, check if the following instruction matches with any child.
		if instr.IsEquivalent(current.value[oui]) {
			oui += 1
			if i == len(instructions)-1 && oui == len(current.value) && !current.formulae.Contains(form) {
				current.formulae = append(current.formulae, form)
			} else if i < len(instructions)-1 && oui == len(current.value) {

				// If the instruction matches, then continue the algorithm with the child as the current node.
				// If it doesn't, we have a new leaf with the following instructions of the sequence.
				found := false
				for _, child := range current.children {
					if instructions[i+1].IsEquivalent(child.value[0]) {
						current = child
						oui = 0
						found = true
					}
				}
				if !found {
					newNode := makeNode(instructions[i+1:])
					newNode.formulae = basictypes.MakeSingleElementList(form)
					current.children = append(current.children, newNode)
					break
				}
			}
		} else {
			// Split the current CodeBlock in 2 parts:
			//    * The first one will contain the remaining instructions of the current CodeBlock, and it will inherit the current's children and formulaes.
			//    * The second one contains the remaining instructions of the sequence plus the formulae.
			child1 := makeNode(current.value[oui:])
			child2 := makeNode(instructions[i:])
			child2.formulae = basictypes.MakeSingleElementList(form)

			child1.children = current.children
			child1.formulae = current.formulae

			current.value = current.value[:oui]
			current.formulae = basictypes.MakeEmptyFormList()
			current.children = []*Node{child1, child2}

			break
		}
	}

	// It's the end of the sequence, but there are still instructions in the CodeBlock.
	// In this case, we have to split the CodeBlock in 2 parts. The first one will be a leaf containing the current sequence's formulae.
	// The second will be the rest of the CodeBlock's instructions, with the current's children and formulaes.
	if oui < len(current.value)-1 {
		child1 := makeNode(current.value[oui:])
		child1.children = current.children
		current.value = current.value[:oui]
		current.children = []*Node{child1}
		current.formulae = basictypes.MakeSingleElementList(form.Copy())
	}
}

/* Copy a list of *Node */
func CopyNodeList(nl []*Node) []*Node {
	res := make([]*Node, len(nl))
	for i := range nl {
		new_node := nl[i].Copy().(Node)
		res[i] = &new_node
	}
	return res
}
