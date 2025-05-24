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

package Unif

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
)

type TermForm struct {
	*AST.MappedString
	index int
	t     AST.Term
}

func (t TermForm) ToMappedStringSurround(mapping AST.MapString, displayTypes bool) string {
	return "%s"
}

func (t TermForm) ToMappedStringChild(mapping AST.MapString, displayTypes bool) (separator, emptyValue string) {
	return "", t.t.ToMappedString(mapping, displayTypes)
}

func (t TermForm) GetChildrenForMappedString() []AST.MappableString {
	return t.GetChildFormulas().ToMappableStringSlice()
}

func (t TermForm) GetTerm() AST.Term                             { return t.t.Copy() }
func (t TermForm) Copy() AST.Form                                { return makeTermForm(t.GetIndex(), t.GetTerm()) }
func (t TermForm) GetType() AST.TypeScheme                       { return AST.DefaultFunType(0) }
func (t TermForm) RenameVariables() AST.Form                     { return t }
func (t TermForm) ReplaceTypeByMeta([]AST.TypeVar, int) AST.Form { return t }
func (t TermForm) ReplaceTermByTerm(AST.Term, AST.Term) (AST.Form, bool) {
	return t, false
}
func (t TermForm) GetIndex() int                                  { return t.index }
func (t TermForm) SubstituteVarByMeta(AST.Var, AST.Meta) AST.Form { return t }
func (t TermForm) GetInternalMetas() *AST.MetaList                { return AST.NewMetaList() }
func (t TermForm) SetInternalMetas(*AST.MetaList) AST.Form        { return t }
func (t TermForm) GetSubFormulasRecur() *AST.FormList             { return AST.NewFormList() }
func (t TermForm) GetChildFormulas() *AST.FormList                { return AST.NewFormList() }

func (t TermForm) Equals(t2 any) bool {
	switch nt := t2.(type) {
	case TermForm:
		return t.GetTerm().Equals(nt.GetTerm())
	default:
		return false
	}
}

func (t TermForm) GetMetas() *AST.MetaList {
	switch nt := t.GetTerm().(type) {
	case AST.Meta:
		return AST.NewMetaList(nt)
	case AST.Fun:
		res := AST.NewMetaList()

		for _, m := range nt.GetArgs().Slice() {
			switch mt := m.(type) {
			case AST.Meta:
				res.AppendIfNotContains(mt)
			}
		}

		return res
	default:
		return AST.NewMetaList()
	}
}

func (t TermForm) GetSubTerms() *AST.TermList {
	return t.GetTerm().GetSubTerms()
}

func (t TermForm) ReplaceMetaByTerm(meta AST.Meta, term AST.Term) AST.Form {
	return t
}

func MakerTermForm(t AST.Term) TermForm {
	return makeTermForm(AST.MakerIndexFormula(), t.Copy())
}

func makeTermForm(i int, t AST.Term) TermForm {
	fms := &AST.MappedString{}
	tf := TermForm{fms, i, t.Copy()}
	fms.MappableString = &tf
	return tf
}

/* Parses a formulae to a sequence of instructions. */
func ParseFormula(formula AST.Form) Sequence {

	// The formula has to be a predicate
	switch formula_type := formula.(type) {
	case AST.Pred:
		pred := AST.MakePred(formula_type.GetIndex(), formula_type.GetID(), TypeAndTermsToTerms(formula_type.GetTypeVars(), formula_type.GetArgs()), []AST.TypeApp{}, formula_type.GetType())
		instructions := Sequence{formula: pred}

		instructions.add(Begin{})
		parsePred(pred, &instructions)
		instructions.add(End{})

		return instructions
	case TermForm:
		if Glob.Is[AST.Fun](formula_type.GetTerm()) {
			fun := Glob.To[AST.Fun](formula_type.GetTerm())
			formula = makeTermForm(formula.GetIndex(), AST.MakeFun(fun.GetID(), TypeAndTermsToTerms(fun.GetTypeVars(), fun.GetArgs()), []AST.TypeApp{}, fun.GetTypeHint()))
		}

		instructions := Sequence{formula: formula}
		varCount := 0
		postCount := 0
		instructions.add(Begin{})
		parseTerms(AST.NewTermList(formula_type.GetTerm().Copy()), &instructions, AST.NewMetaList(), &varCount, &postCount)
		instructions.add(End{})

		return instructions

	default:
		return Sequence{}
	}
}

func TypeAndTermsToTerms(types []AST.TypeApp, terms *AST.TermList) *AST.TermList {
	tms := AST.NewTermList()

	tms.Append(AST.TypeAppArrToTerm(types).Slice()...)
	tms.Append(terms.Slice()...)

	return tms
}

/* Parses a predicate to machine instructions */
func parsePred(p AST.Pred, instructions *Sequence) {
	instructions.add(makeCheck(p.GetID()))
	if p.GetArgs().Len() > 0 {
		instructions.add(Begin{})
		instructions.add(Down{})
		varCount := 0
		postCount := 0
		parseTerms(p.GetArgs(), instructions, AST.NewMetaList(), &varCount, &postCount)
		instructions.add(End{})
	}
}

/* Parses an array of terms to machine instructions */
func parseTerms(terms *AST.TermList, instructions *Sequence, subst *AST.MetaList, varCount *int, postCount *int) *AST.MetaList {

	rightDefined := func(terms *AST.TermList, i int) bool {
		return i < terms.Len()-1
	}

	downDefined := func(terms *AST.TermList) bool {
		return terms.Len() > 0
	}

	for i, term := range terms.Slice() {
		switch t := term.(type) {
		case AST.Meta:
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
		case AST.Fun:
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

func ParseTerm(term AST.Term) Sequence {
	var instructions Sequence
	varCount := 0
	postCount := 0
	parseTerms(AST.NewTermList(term.Copy()), &instructions, AST.NewMetaList(), &varCount, &postCount)
	instructions.formula = MakerTermForm(term)
	return instructions
}
