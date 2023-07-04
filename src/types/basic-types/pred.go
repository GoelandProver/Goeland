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

/***********/
/* pred.go */
/***********/

/**
* This file implements a Pred, which is an atomic formula.
* It's composed of a name (for example, in forall x. human(x) => mortal(x),
* `human` and `mortal` are predicate names) and of a list of terms.
**/

package basictypes

import (
	"strings"

	"github.com/GoelandProver/Goeland/global"
	. "github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
)

/* Symbol of predicate */
type Pred struct {
	index    int
	id       Id
	args     TermList
	typeVars []typing.TypeApp
	typeHint typing.TypeScheme
	MetaList
}

/* Pred attributes getters */

func (p Pred) GetIndex() int                 { return p.index }
func (p Pred) GetID() Id                     { return p.id.Copy().(Id) }
func (p Pred) GetArgs() TermList             { return p.args.Copy() }
func (p Pred) GetTypeVars() []typing.TypeApp { return typing.CopyTypeAppList(p.typeVars) }

/* Formula methods */

func (p Pred) GetType() typing.TypeScheme { return p.typeHint }
func (p Pred) RenameVariables() Form      { return p }
func (p Pred) CleanFormula() Form         { return p }

func (p Pred) ToMappedString(map_ MapString, type_ bool) string {
	if len(p.typeVars) == 0 && len(p.GetArgs()) == 0 {
		return p.GetID().ToMappedString(map_, type_)
	}
	args := []string{}

	if tv := ListToString(p.typeVars, ", ", map_[PredEmpty]); tv != "" {
		args = append(args, tv)
	}
	if vs := ListToMappedString(p.GetArgs(), ", ", map_[PredEmpty], map_, type_); vs != "" {
		args = append(args, vs)
	}

	// Defined infix: =
	if p.GetID().GetName() == "=" {
		if len(p.GetArgs()) != 2 {
			global.PrintPanic("Pred", "infix '=' should only have 2 arguments")
		}
		return "(" + p.GetArgs()[0].ToMappedString(map_, type_) + " = " + p.GetArgs()[1].ToMappedString(map_, type_) + ")"
	}

	// strconv.Itoa(p.GetIndex()) + "@"
	return p.GetID().ToMappedString(map_, type_) + "(" + strings.Join(args, " "+map_[PredTypeVarSep]+" ") + ")"
}

func (p Pred) ToString() string {
	return p.ToMappedString(defaultMap, true)
}

func (p Pred) ToStringWithSuffixMeta(suffix string) string {
	if len(p.typeVars) == 0 && len(p.GetArgs()) == 0 {
		return p.GetID().ToString()
	}
	return p.GetID().ToString() + "(" + ListToString(p.typeVars, ", ", defaultMap[PredEmpty]) +
		" ; " + listToStringMeta(p.GetArgs(), suffix, ", ", defaultMap[PredEmpty]) + ")"
}

func (p Pred) Copy() Form {
	return Pred{index: p.index,
		id:       p.id,
		args:     p.GetArgs(),
		typeVars: typing.CopyTypeAppList(p.GetTypeVars()),
		typeHint: p.GetType(),
		MetaList: p.MetaList.Copy(),
	}
}

func (p Pred) Equals(f any) bool {
	oth, isPred := f.(Pred)
	return isPred &&
		oth.GetID().Equals(p.GetID()) &&
		ComparableList[typing.TypeApp](p.typeVars).Equals(oth.typeVars) &&
		oth.GetArgs().Equals(p.GetArgs()) &&
		p.typeHint.Equals(oth.typeHint)
}

func (p Pred) GetMetas() MetaList {
	res := MakeEmptyMetaList()
	for _, m := range p.GetArgs() {
		switch mt := m.(type) {
		case Meta:
			res = res.AppendIfNotContains(mt)
		case Fun:
			res = res.Merge(mt.GetMetas())
		}
	}
	return res
}

func (p Pred) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return MakePred(p.GetIndex(), p.GetID(), replaceTermListTypesByMeta(p.GetArgs(), varList, index), instanciateTypeAppList(p.typeVars, varList, index), p.GetType())
}

func (p Pred) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	termList, res := replaceVarInTermList(p.GetArgs(), old, new)
	return MakePred(p.GetIndex(), p.GetID(), termList, p.GetTypeVars(), p.GetType()), res
}

func (p Pred) GetSubTerms() TermList {
	res := MakeEmptyTermList()
	for _, t := range p.GetArgs() {
		res = res.AppendIfNotContains(t)
		res = res.MergeTermList(t.GetSubTerms())
	}
	return res
}

func (p Pred) SubstituteVarByMeta(old Var, new Meta) Form {
	f, res := p.ReplaceVarByTerm(old, new)
	if p, isPred := f.(Pred); isPred && res {
		return Pred{index: f.GetIndex(), id: p.id, args: p.args, typeVars: p.typeVars, typeHint: p.typeHint, MetaList: append(p.MetaList, new)}
	}
	return f
}

func (p Pred) GetInternalMetas() MetaList {
	return p.MetaList
}
