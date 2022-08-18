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

/**********************/
/*  type_formulas.go  */
/**********************/

package polyrules

/**
 * This file is used to properly type a formula after the first pass.
 **/

/**
 * Types all terms of a formula :
 *	- functions terms
 *	- predicates
func typeFormula(form btypes.Form) btypes.Form {
	var res btypes.Form

	// No need to check if the pred has already a type: it shouldn't.
	// This function is assumed to be called only once: after parsing the problem file.
	switch newForm := form.(type) {
	case btypes.Pred:
		newTerms, typeScheme := typeAppTerms(newForm.GetID(), newForm.GetArgs(), typing.Prop)
		res = btypes.MakePred(newForm.GetID(), newTerms, []typing.TypeApp{}, typeScheme)
	case btypes.All, btypes.Ex:
		res = typeQuantifiedFormula(newForm)
	case btypes.Imp, btypes.Equ:
		res = typeBinaryFormula(newForm)
	case btypes.Or, btypes.And:
		res = typeNaryFormula(newForm)
	case btypes.Not:
		res = btypes.RefuteForm(typeFormula(newForm.GetForm()))
	}

	return res
}

/**
 * Types a term and its subterms if it has any.
func typeTerm(term btypes.Term) btypes.Term {
	// Vars are already typed, there shouldn't be any metas but it's also
	// typed, and IDs are filtered.
	if newTerm, ok := term.(btypes.Fun); ok {
		newTerms, typeScheme := typeAppTerms(newTerm.GetID(), newTerm.GetArgs(), typing.Fun)
		term = btypes.MakeFun(newTerm.GetID(), newTerms, []typing.TypeApp{}, typeScheme)
	}
	return term
}

/**********
 * Utility functions for TypeFormula
 **********/

/**
 * Calls TypeFormula on a formula with a quantificator as a root.
 * Utility function to reduce the complexity of the main function.
 * form should be of type:
 *	- btypes.All
 *	- btypes.Ex
 * If it's another type, it will return nil.
func typeQuantifiedFormula(form btypes.Form) btypes.Form {
	switch newForm := form.(type) {
	case btypes.All:
		return btypes.MakeAll(newForm.GetVarList(), typeFormula(newForm.GetForm()))
	case btypes.Ex:
		return btypes.MakeEx(newForm.GetVarList(), typeFormula(newForm.GetForm()))
	}
	return nil
}

/**
 * Calls TypeFormula on a formula with a binary connector as a root.
 * Utility function to reduce the complexity of the main function.
 * form should be of type:
 *	- btypes.Imp
 *	- btypes.Equ
 * If it's another type, it will return nil.
func typeBinaryFormula(form btypes.Form) btypes.Form {
	switch newForm := form.(type) {
	case btypes.Imp:
		return btypes.MakeImp(typeFormula(newForm.GetF1()), typeFormula(newForm.GetF2()))
	case btypes.Equ:
		return btypes.MakeEqu(typeFormula(newForm.GetF1()), typeFormula(newForm.GetF2()))
	}
	return nil
}

/**
 * Calls TypeFormula on a formula with a n-ary connector as a root.
 * Utility function to reduce the complexity of the main function.
 * form should be of type:
 *	- btypes.Or
 *	- btypes.And
 * If it's another type, it will return nil.
func typeNaryFormula(form btypes.Form) btypes.Form {
	switch newForm := form.(type) {
	case btypes.Or:
		return btypes.MakeOr(typeFormList(newForm.GetLF()))
	case btypes.And:
		return btypes.MakeAnd(typeFormList(newForm.GetLF()))
	}

	return nil
}

/**
 * Types a form list.
func typeFormList(formList btypes.FormList) btypes.FormList {
	typedForms := btypes.MakeEmptyFormList()
	for _, subForm := range formList {
		typedForms = append(typedForms, typeFormula(subForm))
	}
	return typedForms
}

/**
 * Infer the Type Scheme of the predicate by typing its terms.
func typeAppTerms(id btypes.Id, terms []btypes.Term, outType int) ([]btypes.Term, typing.TypeScheme) {
	var newTerms []btypes.Term

	for _, term := range terms {
		t := typeTerm(term)
		newTerms = append(newTerms, t)
	}

	if len(newTerms) > 0 {
		return newTerms, typing.GetTypeOrDefault(id.GetName(), outType, typeApp(newTerms))
	} else {
		return newTerms, typing.GetTypeOrDefault(id.GetName(), outType)
	}
}

/**
 * Takes all the types of the terms and makes a cross product of everything
func typeApp(terms []btypes.Term) typing.TypeApp {
	var types []typing.TypeApp

	for _, term := range terms {
		switch tmpTerm := term.(type) {
		case btypes.Fun:
			types = append(types, typing.GetOutType(tmpTerm.GetTypeHint()))
		case btypes.Var:
			// Variables can't be of type TypeScheme, so this line shouldn't fail.
			types = append(types, tmpTerm.GetTypeHint().(typing.TypeApp))
		// There shouldn't be Metas yet.
		case btypes.Meta:
			global.PrintDebug("PTA", "Found a Meta while typing everything.")
			// ID is filtered out
		}
	}

	return typing.MkTypeCross(types...)
}
*/