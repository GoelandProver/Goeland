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
/**************/
/* parsing.go */
/**************/

package treetypes

import (
	"reflect"

	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type TermForm struct {
	index int
	t     basictypes.Term
}

func (tf TermForm) GetTerm() basictypes.Term {
	return tf.t.Copy()
}
func (tf TermForm) GetIndex() int {
	return tf.index
}

func (tf TermForm) ToString() string {
	return tf.t.ToString()
}

func (t TermForm) ToStringWithSuffixMeta(string) string {
	return t.ToString()
}

func (t TermForm) Copy() basictypes.Form {
	return makeTermForm(t.GetIndex(), t.GetTerm())
}

func (t TermForm) Equals(t2 basictypes.Form) bool {
	switch nt := t2.(type) {
	case TermForm:
		return t.GetTerm().Equals(nt.GetTerm())
	default:
		return false
	}
}

func (t TermForm) GetMetas() basictypes.MetaList {
	switch nt := t.GetTerm().(type) {
	case basictypes.Meta:
		return append(basictypes.MakeEmptyMetaList(), nt)
	case basictypes.Fun:
		res := basictypes.MakeEmptyMetaList()
		for _, m := range nt.GetArgs() {
			switch mt := m.(type) {
			case basictypes.Meta:
				res = res.AppendIfNotContains(mt)
			}
		}
		return res
	default:
		return basictypes.MakeEmptyMetaList()
	}
}

func makerTermForm(t basictypes.Term) TermForm {
	return TermForm{basictypes.MakerIndexFormula(), t.Copy()}
}

func makeTermForm(i int, t basictypes.Term) TermForm {
	return TermForm{i, t.Copy()}
}

/* Parses a formulae to a sequence of instructions. */
func ParseFormula(formula basictypes.Form) Sequence {

	// The formula has to be a predicate
	if reflect.TypeOf(formula) != reflect.TypeOf(basictypes.Pred{}) {
		return Sequence{}
	}

	instructions := Sequence{formula: formula}

	instructions.add(Begin{})
	parsePred(formula.(basictypes.Pred), &instructions)
	instructions.add(End{})

	return instructions
}

/* Parses a predicate to machine instructions */
func parsePred(p basictypes.Pred, instructions *Sequence) {
	instructions.add(makeCheck(p.GetID()))
	if len(p.GetArgs()) > 0 {
		instructions.add(Begin{})
		instructions.add(Down{})
		varCount := 0
		postCount := 0
		parseTerms(p.GetArgs(), instructions, basictypes.MetaList{}, &varCount, &postCount)
		instructions.add(End{})
	}
}

/* Parses an array of terms to machine instructions */
func parseTerms(terms []basictypes.Term, instructions *Sequence, subst basictypes.MetaList, varCount *int, postCount *int) basictypes.MetaList {

	rightDefined := func(terms []basictypes.Term, i int) bool {
		return i < len(terms)-1
	}

	downDefined := func(args []basictypes.Term) bool {
		return len(args) > 0
	}

	for i, term := range terms {
		switch t := term.(type) {
		case basictypes.Meta:
			instructions.add(Put{i: *varCount})
			subst = append(subst, t)
			if *varCount > 0 {
				for j := 0; j < *varCount; j++ {
					if subst[j].Equals(t) {
						instructions.add(Compare{j, *varCount})
					}
				}
			}
			*varCount++
			if rightDefined(terms, i) {
				instructions.add(Right{})
			}
		case basictypes.Fun:
			instructions.add(Begin{}) // TEST 33
			instructions.add(makeCheck(t.GetID()))

			if downDefined(t.GetArgs()) {
				if rightDefined(terms, i) {
					instructions.add(Push{*postCount})
					*postCount++
				}
				instructions.add(Down{})
				subst = parseTerms(t.GetArgs(), instructions, subst, varCount, postCount)
				if rightDefined(terms, i) {
					*postCount--
					instructions.add(Pop{*postCount})
				}
				instructions.add(makeEnd(t))
			} else if rightDefined(terms, i) {
				instructions.add(makeEnd(t)) // TEST33
				instructions.add(Right{})
			} else {
				instructions.add(makeEnd(t)) // TEST33
			}
		}
	}
	return subst
}

func ParseTerm(term basictypes.Term) Sequence {
	var instructions Sequence
	varCount := 0
	postCount := 0
	parseTerms([]basictypes.Term{term.Copy()}, &instructions, basictypes.MetaList{}, &varCount, &postCount)
	instructions.formula = makerTermForm(term)
	return instructions
}
