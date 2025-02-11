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
* This file implements a Pred, which is an atomic formula.
* It's composed of a name (for example, in forall x. human(x) => mortal(x),
* `human` and `mortal` are predicate names) and of a list of terms.
**/

package basictypes

import (
	"strings"

	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Symbol of predicate */
type Pred struct {
	*MappedString
	index    int
	id       Id
	args     *TermList
	typeVars []typing.TypeApp
	typeHint typing.TypeScheme
	*MetaList
}

func MakePredSimple(index int, id Id, terms *TermList, typeApps []typing.TypeApp, metas *MetaList, typeSchemes ...typing.TypeScheme) Pred {
	if len(typeSchemes) == 1 {
		fms := &MappedString{}
		pred := Pred{fms, index, id, terms, typeApps, typeSchemes[0], metas}
		fms.MappableString = &pred
		return pred
	} else {
		fms := &MappedString{}
		pred := Pred{fms, index, id, terms, typeApps, typing.DefaultPropType(terms.Len()), metas}
		fms.MappableString = &pred
		return pred
	}
}

func MakePred(index int, id Id, terms *TermList, typeApps []typing.TypeApp, typeSchemes ...typing.TypeScheme) Pred {
	return MakePredSimple(index, id, terms, typeApps, NewMetaList(), typeSchemes...)
}

func MakerPred(id Id, terms *TermList, typeApps []typing.TypeApp, typeSchemes ...typing.TypeScheme) Pred {
	return MakePred(MakerIndexFormula(), id, terms, typeApps, typeSchemes...)
}

/* Pred attributes getters */

func (p Pred) GetIndex() int                 { return p.index }
func (p Pred) GetID() Id                     { return p.id.Copy().(Id) }
func (p Pred) GetArgs() *TermList            { return p.args.Copy() }
func (p Pred) GetTypeVars() []typing.TypeApp { return typing.CopyTypeAppList(p.typeVars) }

/* Formula methods */

func (p Pred) GetType() typing.TypeScheme { return p.typeHint }
func (p Pred) RenameVariables() Form      { return p }

func (p Pred) ToString() string {
	return p.MappedString.ToString()
}

func (p Pred) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	if len(p.typeVars) == 0 && p.GetArgs().Len() == 0 {
		return p.GetID().ToMappedString(mapping, displayTypes) + "%s"
	}
	args := []string{}

	if len(p.typeVars) > 0 {
		if tv := ListToString(p.typeVars, ", ", mapping[PredEmpty]); tv != "" {
			args = append(args, tv)
		}
	}
	args = append(args, "%s")

	if p.GetID().GetName() == "=" {
		return "(" + strings.Join(args, " "+mapping[PredTypeVarSep]+" ") + ")"
	}

	return p.GetID().ToMappedString(mapping, displayTypes) + "(" + strings.Join(args, " "+mapping[PredTypeVarSep]+" ") + ")"
}

func (p Pred) ToMappedStringChild(mapping MapString, displayTypes bool) (separator, emptyValue string) {
	if p.GetID().GetName() == "=" {
		return " = ", mapping[PredEmpty]
	}

	return ", ", mapping[PredEmpty]
}

func (p Pred) GetChildrenForMappedString() []MappableString {
	return p.GetArgs().ToMappableStringSlice()
}

func (p Pred) Copy() Form {
	return MakePredSimple(p.index, p.id, p.GetArgs(), typing.CopyTypeAppList(p.GetTypeVars()), p.MetaList.Copy(), p.GetType())
}

func (p Pred) Equals(other any) bool {
	if typed, ok := other.(Pred); ok {
		return typed.id.Equals(p.id) &&
			ComparableList[typing.TypeApp](p.typeVars).Equals(typed.typeVars) &&
			typed.args.Equals(p.args) &&
			p.typeHint.Equals(typed.typeHint)
	}

	return false
}

func (p Pred) GetMetas() *MetaList {
	res := NewMetaList()

	for _, m := range p.GetArgs().Slice() {
		switch mt := m.(type) {
		case Meta:
			res.Append(mt)
		case Fun:
			res.Append(mt.GetMetas().Slice()...)
		}
	}

	return res
}

func (p Pred) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakePred(p.GetIndex(), p.GetID(), replaceTermListTypesByMeta(p.GetArgs(), varList, index), instanciateTypeAppList(p.typeVars, varList, index), p.GetType())
}

func (p Pred) ReplaceTermByTerm(old Term, new Term) (Form, bool) {
	termList, res := replaceTermInTermList(p.GetArgs(), old, new)
	return MakePredSimple(p.GetIndex(), p.GetID(), termList, p.GetTypeVars(), p.MetaList, p.GetType()), res
}

func (p Pred) GetSubTerms() *TermList {
	res := NewTermList()

	for _, t := range p.GetArgs().Slice() {
		res.AppendIfNotContains(t)
		res.AppendIfNotContains(t.GetSubTerms().Slice()...)
	}

	return res
}

func (p Pred) SubstituteVarByMeta(old Var, new Meta) Form {
	f, res := p.ReplaceTermByTerm(old, new)

	if p, isPred := f.(Pred); isPred && (IsOuterSko() || res) {
		metaList := p.MetaList.Copy()
		metaList.AppendIfNotContains(new)

		return MakePredSimple(p.index, p.id, p.args, p.typeVars, metaList, p.typeHint)
	}

	return f
}

func (p Pred) GetInternalMetas() *MetaList {
	return p.MetaList
}

func (p Pred) SetInternalMetas(m *MetaList) Form {
	p.MetaList = m
	return p
}

func (p Pred) GetSubFormulasRecur() *FormList {
	return NewFormList(p.Copy())
}

func (p Pred) GetChildFormulas() *FormList {
	return NewFormList()
}

func (p Pred) ReplaceMetaByTerm(meta Meta, term Term) Form {
	newTerms := NewTermList()

	for _, old := range p.args.Slice() {
		// ILL TODO: old.GetName() == meta.GetName() ??
		if old.Equals(meta) {
			newTerms.Append(term)
		} else {
			newTerms.Append(old)
		}
	}

	return MakePred(p.GetIndex(), p.id, newTerms, p.typeVars, p.GetType())
}
