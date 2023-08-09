/* This file should factorise the different functionnalities over all the forms
   files. */

package basictypes

func getAllSubFormulasAppended(f Form) FormList {
	subforms := FormList{f.Copy()}
	for _, sf := range f.GetChildFormulas() {
		subforms = append(subforms, sf.GetAllSubFormulas()...)
	}
	return subforms
}
