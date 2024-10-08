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

package treetypes

import (
	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type TermForm struct {
	*basictypes.MappedString
	index int
	t     basictypes.Term
}

func (t TermForm) ToMappedStringSurround(mapping basictypes.MapString, displayTypes bool) string {
	return "%s"
}

func (t TermForm) ToMappedStringChild(mapping basictypes.MapString, displayTypes bool) (separator, emptyValue string) {
	return "", t.t.ToMappedString(mapping, displayTypes)
}

func (t TermForm) GetChildrenForMappedString() []basictypes.MappableString {
	return t.GetChildFormulas().ToMappableStringSlice()
}

func (t TermForm) GetTerm() basictypes.Term                                { return t.t.Copy() }
func (t TermForm) Copy() basictypes.Form                                   { return makeTermForm(t.GetIndex(), t.GetTerm()) }
func (t TermForm) GetType() typing.TypeScheme                              { return typing.DefaultFunType(0) }
func (t TermForm) RenameVariables() basictypes.Form                        { return t }
func (t TermForm) ReplaceTypeByMeta([]typing.TypeVar, int) basictypes.Form { return t }
func (t TermForm) ReplaceTermByTerm(basictypes.Term, basictypes.Term) (basictypes.Form, bool) {
	return t, false
}
func (t TermForm) GetIndex() int                                                       { return t.index }
func (t TermForm) SubstituteVarByMeta(basictypes.Var, basictypes.Meta) basictypes.Form { return t }
func (t TermForm) GetInternalMetas() *basictypes.MetaList                              { return basictypes.NewMetaList() }
func (t TermForm) SetInternalMetas(*basictypes.MetaList) basictypes.Form               { return t }
func (t TermForm) GetSubFormulasRecur() *basictypes.FormList                           { return basictypes.NewFormList() }
func (t TermForm) GetChildFormulas() *basictypes.FormList                              { return basictypes.NewFormList() }

func (t TermForm) Equals(t2 any) bool {
	switch nt := t2.(type) {
	case TermForm:
		return t.GetTerm().Equals(nt.GetTerm())
	default:
		return false
	}
}

func (t TermForm) GetMetas() *basictypes.MetaList {
	switch nt := t.GetTerm().(type) {
	case basictypes.Meta:
		return basictypes.NewMetaList(nt)
	case basictypes.Fun:
		res := basictypes.NewMetaList()

		for _, m := range nt.GetArgs().Slice() {
			switch mt := m.(type) {
			case basictypes.Meta:
				res.AppendIfNotContains(mt)
			}
		}

		return res
	default:
		return basictypes.NewMetaList()
	}
}

func (t TermForm) GetSubTerms() *basictypes.TermList {
	return t.GetTerm().GetSubTerms()
}

func (t TermForm) ReplaceMetaByTerm(meta basictypes.Meta, term basictypes.Term) basictypes.Form {
	return t
}

func MakerTermForm(t basictypes.Term) TermForm {
	return makeTermForm(basictypes.MakerIndexFormula(), t.Copy())
}

func makeTermForm(i int, t basictypes.Term) TermForm {
	fms := &basictypes.MappedString{}
	tf := TermForm{fms, i, t.Copy()}
	fms.MappableString = &tf
	return tf
}

/* Parses a formulae to a sequence of instructions. */
func ParseFormula(formula basictypes.Form) Sequence {

	// The formula has to be a predicate
	switch formula_type := formula.(type) {
	case basictypes.Pred:
		pred := basictypes.MakePred(formula_type.GetIndex(), formula_type.GetID(), TypeAndTermsToTerms(formula_type.GetTypeVars(), formula_type.GetArgs()), []typing.TypeApp{}, formula_type.GetType())
		instructions := Sequence{formula: pred}

		instructions.add(Begin{})
		parsePred(pred, &instructions)
		instructions.add(End{})

		return instructions
	case TermForm:
		if global.Is[basictypes.Fun](formula_type.GetTerm()) {
			fun := global.To[basictypes.Fun](formula_type.GetTerm())
			formula = makeTermForm(formula.GetIndex(), basictypes.MakeFun(fun.GetID(), TypeAndTermsToTerms(fun.GetTypeVars(), fun.GetArgs()), []typing.TypeApp{}, fun.GetTypeHint()))
		}

		instructions := Sequence{formula: formula}
		varCount := 0
		postCount := 0
		instructions.add(Begin{})
		parseTerms(basictypes.NewTermList(formula_type.GetTerm().Copy()), &instructions, basictypes.NewMetaList(), &varCount, &postCount)
		instructions.add(End{})

		return instructions

	default:
		return Sequence{}
	}
}

func TypeAndTermsToTerms(types []typing.TypeApp, terms *basictypes.TermList) *basictypes.TermList {
	tms := basictypes.NewTermList()

	tms.Append(basictypes.TypeAppArrToTerm(types).Slice()...)
	tms.Append(terms.Slice()...)

	return tms
}

/* Parses a predicate to machine instructions */
func parsePred(p basictypes.Pred, instructions *Sequence) {
	instructions.add(makeCheck(p.GetID()))
	if p.GetArgs().Len() > 0 {
		instructions.add(Begin{})
		instructions.add(Down{})
		varCount := 0
		postCount := 0
		parseTerms(p.GetArgs(), instructions, basictypes.NewMetaList(), &varCount, &postCount)
		instructions.add(End{})
	}
}

/* Parses an array of terms to machine instructions */
func parseTerms(terms *basictypes.TermList, instructions *Sequence, subst *basictypes.MetaList, varCount *int, postCount *int) *basictypes.MetaList {

	rightDefined := func(terms *basictypes.TermList, i int) bool {
		return i < terms.Len()-1
	}

	downDefined := func(terms *basictypes.TermList) bool {
		return terms.Len() > 0
	}

	for i, term := range terms.Slice() {
		switch t := term.(type) {
		case basictypes.Meta:
			instructions.add(Put{i: *varCount})
			subst = subst.Copy()
			subst.Append(t)
			if *varCount > 0 {
				for j := 0; j < *varCount; j++ {
					if subst.Get(j).Equals(t) {
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
	parseTerms(basictypes.NewTermList(term.Copy()), &instructions, basictypes.NewMetaList(), &varCount, &postCount)
	instructions.formula = MakerTermForm(term)
	return instructions
}
