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
/******************/
/* instruction.go */
/******************/
/**
* This file provides the necessary structures to represents instructions for the machine.
**/

package treetypes

import (
	"reflect"
	"strconv"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

/*** Instruction ***/

/* All the instructions of the abstract unification machine */
type Instruction interface {
	IsEquivalent(instr Instruction) bool
	ToString() string
	Copy() Instruction
}

/* Start of a block */
type Begin struct {
}

/* End of a block */
type End struct {
	term basictypes.Term
}

/* Navigate to the next argument */
type Right struct {
}

/* Enter inside a function's arguments */
type Down struct {
}

/* Checks if the current id of the formulae corresponds to the one recorded */
type Check struct {
	term basictypes.Term
}

/* Adds the Term to the post array at the index i */
type Push struct {
	i int
}

/* Get the Term of the post array at the index i */
type Pop struct {
	i int
}

/* Adds a substitution at the index i. Maybe think about keeping the metavaribale here ? */
type Put struct {
	i int
}

/* Compare the substitutions at the indexes i and j */
type Compare struct {
	i int
	j int
}

/*** Instruction's mehods ***/

/* IsEquivalent */
func (b Begin) IsEquivalent(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(b)
}
func (e End) IsEquivalent(instr Instruction) bool {
	return reflect.DeepEqual(e, instr)
}
func (r Right) IsEquivalent(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(r)
}
func (d Down) IsEquivalent(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(d)
}
func (c Check) IsEquivalent(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(c) && c.term.GetName() == instr.(Check).term.GetName() && c.term.GetIndex() == instr.(Check).term.GetIndex()
}
func (p Push) IsEquivalent(instr Instruction) bool {
	return reflect.DeepEqual(p, instr)
}
func (p Pop) IsEquivalent(instr Instruction) bool {
	return reflect.DeepEqual(p, instr)
}
func (p Put) IsEquivalent(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(p) && p.i == instr.(Put).i
}
func (c Compare) IsEquivalent(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(c) && c.i == instr.(Compare).i && c.j == instr.(Compare).j
}

/* ToString */

func (Begin) ToString() string {
	return "Begin"
}
func (e End) ToString() string {
	return "End"
}
func (Right) ToString() string {
	return "Right"
}
func (Down) ToString() string {
	return "Down"
}
func (c Check) ToString() string {
	return "Check " + c.term.ToString()
}
func (p Push) ToString() string {
	return "Push " + strconv.Itoa(p.i)
}
func (p Pop) ToString() string {
	return "Pop " + strconv.Itoa(p.i)
}
func (p Put) ToString() string {
	return "Put " + strconv.Itoa(p.i)
}
func (c Compare) ToString() string {
	return "Compare " + strconv.Itoa(c.i) + " " + strconv.Itoa(c.j)
}

/* IsEnd */
func IsEnd(instr Instruction) bool {
	return reflect.TypeOf(instr) == reflect.TypeOf(End{})
}

/* Getters */
func (e End) GetTerm() basictypes.Term {
	if e.term == nil {
		return nil
	}
	return e.term.Copy()
}
func (c Check) GetTerm() basictypes.Term {
	return c.term.Copy()
}
func (p Push) GetIndex() int {
	return p.i
}
func (p Pop) GetIndex() int {
	return p.i
}
func (p Put) GetIndex() int {
	return p.i
}
func (c Compare) GetIndexI() int {
	return c.i
}
func (c Compare) GetIndexJ() int {
	return c.j
}

/* Copy */
func (Begin) Copy() Instruction {
	return Begin{}
}
func (e End) Copy() Instruction {
	return End{e.GetTerm()}
}
func (Right) Copy() Instruction {
	return Right{}
}
func (Down) Copy() Instruction {
	return Down{}
}
func (c Check) Copy() Instruction {
	return Check{c.GetTerm()}
}
func (p Push) Copy() Instruction {
	return Push{p.GetIndex()}
}
func (p Pop) Copy() Instruction {
	return Pop{p.GetIndex()}
}
func (p Put) Copy() Instruction {
	return Put{p.GetIndex()}
}
func (c Compare) Copy() Instruction {
	return Compare{c.GetIndexI(), c.GetIndexJ()}
}

/* Copy list f instructions */
func CopyInstructionList(il []Instruction) []Instruction {
	res := make([]Instruction, len(il))
	for i := range il {
		res[i] = il[i].Copy()
	}
	return res
}

/* Makers */
func makeEnd(t basictypes.Term) End {
	return End{t.Copy()}
}

func makeCheck(t basictypes.Term) Check {
	return Check{t.Copy()}
}
