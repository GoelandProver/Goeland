package syntaxicmanipulations

import (
	"strings"

	"github.com/GoelandProver/Goeland/global"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

/**
 * Instantiates once the formula fnt.
 */
func Instantiate(fnt btps.FormAndTerms, index int) (btps.FormAndTerms, btps.MetaList) {
	var newMm btps.MetaList
	terms := fnt.GetTerms()

	switch nf := fnt.GetForm().(type) {
	case btps.Not:
		if tmp, ok := nf.GetForm().(btps.Ex); ok {
			form, metas := realInstantiate(tmp.GetForm(), index, tmp.GetVarList())
			newMm = append(newMm, metas...)
			fnt = btps.MakeFormAndTerm(btps.RefuteForm(form), terms.MergeTermList(newMm.ToTermList()))
		}
	case btps.All:
		form, metas := realInstantiate(nf.GetForm(), index, nf.GetVarList())
		newMm = append(newMm, metas...)
		fnt = btps.MakeFormAndTerm(form, terms.MergeTermList(newMm.ToTermList()))
	case btps.AllType:
		fnt = btps.MakeFormAndTerm(nf.GetForm().ReplaceTypeByMeta(nf.GetVarList(), index), btps.MakeEmptyTermList())
		for _, v := range nf.GetVarList() {
			v.ShouldBeMeta(index)
		}
		fnt = btps.MakeFormAndTerm(btps.MakeAllType(nf.GetIndex(), nf.GetVarList(), fnt.GetForm()), btps.MakeEmptyTermList())
	}

	return fnt, newMm
}

func realInstantiate(form btps.Form, index int, vars []btps.Var) (btps.Form, btps.MetaList) {
	var newMm btps.MetaList

	for _, v := range vars {
		meta := btps.MakerMeta(strings.ToUpper(v.GetName()), index, v.GetTypeHint().(typing.TypeApp))
		if global.IsInnerSko() || global.IsOptimisedSko() {
			form = form.SubstituteVarByMeta(v, meta)
		} else {
			form, _ = form.ReplaceVarByTerm(v, meta)
		}
		newMm = append(newMm, meta)
	}

	return form, newMm
}
