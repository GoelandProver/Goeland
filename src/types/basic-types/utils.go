/* This file should factorise the different functionnalities over all the forms
   files. */

package basictypes

import "github.com/GoelandProver/Goeland/global"

func getAllSubFormulasAppended(f Form) FormList {
	subforms := FormList{f.Copy()}
	for _, sf := range f.GetChildFormulas() {
		subforms = append(subforms, sf.GetSubFormulasRecur()...)
	}
	return subforms
}

func substVarByMetaInFormList(old Var, new Meta, formList FormList, metaList MetaList) (FormList, MetaList) {
	newFormList := make(FormList, 0)
	found := false
	for _, form := range formList {
		f := form.SubstituteVarByMeta(old, new)
		newFormList = append(newFormList, f)
		if f.GetInternalMetas().Contains(new) || global.IsOuterSko() {
			found = true
		}
	}
	if found {
		metaList = append(metaList, new)
	}
	return newFormList, metaList
}
