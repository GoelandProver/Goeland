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
* This file contains the implementation of formAndTerm.
**/

package Core

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
)

type FormAndTerms struct {
	form  AST.Form
	Terms *AST.TermList
}

func (fat FormAndTerms) GetForm() AST.Form {
	if fat.form != nil {
		return fat.form.Copy()
	} else {
		return nil
	}
}

func (fat FormAndTerms) GetTerms() *AST.TermList {
	return fat.Terms.Copy()
}

func (fat *FormAndTerms) SetForm(form AST.Form) {
	fat.form = form
}

func (fat *FormAndTerms) SetTerms(Terms *AST.TermList) {
	fat.Terms = Terms
}

func MakeFormAndTerm(f AST.Form, tl *AST.TermList) FormAndTerms {
	return FormAndTerms{f, tl}
}

func (fat FormAndTerms) Copy() FormAndTerms {
	return MakeFormAndTerm(fat.GetForm(), fat.GetTerms())
}

func (fat FormAndTerms) Equals(fat2 FormAndTerms) bool {
	return fat.GetForm().Equals(fat2.GetForm()) && fat.GetTerms().EqualsWithoutOrder(fat2.GetTerms())
}

func (fat FormAndTerms) ToString() string {
	return fat.GetForm().ToMappedString(AST.DefaultMapString, Glob.GetTypeProof())
}

func (fat FormAndTerms) SubstituteBy(metas *AST.MetaList, terms *AST.TermList) FormAndTerms {
	result := fat.Copy()

	for i := range metas.Slice() {
		result.form = result.form.ReplaceMetaByTerm(metas.Get(i), terms.Get(i))
		result.Terms = result.Terms.ReplaceOccurrence(metas.Get(i), terms.Get(i))
	}

	return result
}
