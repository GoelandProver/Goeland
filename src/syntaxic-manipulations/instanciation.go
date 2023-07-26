package syntaxicmanipulations

import (
	"strings"

	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

const (
	is_all = iota
	is_exists
)

/**
 * Instantiates once the formula fnt.
 */
func Instantiate(fnt btps.FormAndTerms, index int) (btps.FormAndTerms, btps.MetaList) {
	var meta btps.Meta
	terms := fnt.GetTerms()

	switch f := fnt.GetForm().(type) {
	case btps.Not:
		if ex, isEx := f.GetForm().(btps.Ex); isEx {
			fnt, meta = realInstantiate(ex.GetVarList(), index, is_exists, ex.GetForm(), terms)
		}
	case btps.All:
		fnt, meta = realInstantiate(f.GetVarList(), index, is_all, f.GetForm(), terms)
	}

	return fnt, btps.MetaList{meta}
}

func realInstantiate(varList []btps.Var, index, status int, subForm btps.Form, terms btps.TermList) (btps.FormAndTerms, btps.Meta) {
	v := varList[0]
	meta := btps.MakerMeta(strings.ToUpper(v.GetName()), index, v.GetTypeHint().(typing.TypeApp))
	subForm = subForm.SubstituteVarByMeta(v, meta)
	terms = terms.MergeTermList(btps.TermList{meta})
	internalMetas := subForm.GetInternalMetas()

	if len(varList) > 1 {
		if status == is_exists {
			subForm = btps.RefuteForm(btps.MakerEx(varList[1:], subForm))
		} else {
			subForm = btps.MakerAll(varList[1:], subForm)
		}
	} else {
		if status == is_exists {
			subForm = btps.RefuteForm(subForm)
		}
	}

	subForm.SetInternalMetas(internalMetas)
	return btps.MakeFormAndTerm(subForm, terms), meta
}
