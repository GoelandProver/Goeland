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
