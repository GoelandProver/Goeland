/* This file should factorise the different functionnalities over all the forms
   files. */

package basictypes

func getSubformsOfSubformList(f Form, fl FormList) FormList {
	subforms := FormList{f.Copy()}
	for _, sf := range fl {
		subforms = append(subforms, sf.GetSubFormulas()...)
	}
	return subforms
}

func substVarByMetaInFormList(old Var, new Meta, formList FormList, metaList MetaList) (FormList, MetaList) {
	newFormList := make(FormList, 0)
	found := false
	for _, form := range formList {
		f := form.SubstituteVarByMeta(old, new)
		newFormList = append(newFormList, f)
		if f.GetInternalMetas().Contains(new) {
			found = true
		}
	}
	if found {
		metaList = append(metaList, new)
	}
	return newFormList, metaList
}
