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
	"github.com/GoelandProver/Goeland/Lib"
)

type FormAndTerms struct {
	form  AST.Form
	Terms Lib.List[AST.Term]
}

func (fat FormAndTerms) GetForm() AST.Form {
	if fat.form != nil {
		return fat.form.Copy()
	} else {
		return nil
	}
}

func (fat FormAndTerms) GetTerms() Lib.List[AST.Term] {
	return fat.Terms.Copy(AST.Term.Copy)
}

func (fat *FormAndTerms) SetForm(form AST.Form) {
	fat.form = form
}

func (fat *FormAndTerms) SetTerms(Terms Lib.List[AST.Term]) {
	fat.Terms = Terms
}

func MakeFormAndTerm(f AST.Form, tl Lib.List[AST.Term]) FormAndTerms {
	return FormAndTerms{f, tl}
}

func (fat FormAndTerms) Copy() FormAndTerms {
	return MakeFormAndTerm(fat.GetForm(), fat.GetTerms())
}

func (fat FormAndTerms) Equals(fat2 FormAndTerms) bool {
	return fat.GetForm().Equals(fat2.GetForm()) &&
		AST.EqualsWithoutOrder(fat.GetTerms(), fat2.GetTerms())
}

func (fat FormAndTerms) ToString() string {
	return fat.GetForm().ToMappedString(AST.DefaultMapString, Glob.GetTypeProof())
}

func (fat FormAndTerms) SubstituteBy(
	metas Lib.List[AST.Meta],
	terms Lib.List[AST.Term],
) FormAndTerms {
	result := fat.Copy()

	for i := range metas.GetSlice() {
		result.form = result.form.ReplaceMetaByTerm(metas.At(i), terms.At(i))
		result.Terms = AST.ReplaceOccurrence(result.Terms, metas.At(i), terms.At(i))
	}

	return result
}
