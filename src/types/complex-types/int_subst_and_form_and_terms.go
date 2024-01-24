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
* This file contains functions and types which describe the substitution management in a proofsearch.
**/

package complextypes

type IntSubstAndFormAndTerms struct {
	id_rewrite int
	saf        SubstAndFormAndTerms
}

func (intsubstandform IntSubstAndFormAndTerms) GetId_rewrite() int {
	return intsubstandform.id_rewrite
}

func (intsubstandform IntSubstAndFormAndTerms) GetSaf() SubstAndFormAndTerms {
	return intsubstandform.saf.Copy()
}

func (intsubstandform *IntSubstAndFormAndTerms) SetId_rewrite(id_rewrite int) {
	intsubstandform.id_rewrite = id_rewrite
}

func (intsubstandform *IntSubstAndFormAndTerms) SetSaf(saf SubstAndFormAndTerms) {
	intsubstandform.saf = saf
}

func MakeIntSubstAndFormAndTerms(i int, saf SubstAndFormAndTerms) IntSubstAndFormAndTerms {
	return IntSubstAndFormAndTerms{i, saf}
}
func MakeEmptyIntSubstAndFormAndTerms() IntSubstAndFormAndTerms {
	return IntSubstAndFormAndTerms{-1, MakeEmptySubstAndFormAndTerms()}
}

func (s IntSubstAndFormAndTerms) Copy() IntSubstAndFormAndTerms {
	if s.GetSaf().IsEmpty() {
		return MakeEmptyIntSubstAndFormAndTerms()
	} else {
		return MakeIntSubstAndFormAndTerms(s.GetId_rewrite(), s.GetSaf())
	}
}

/* Copy a list of subst and form */
func CopyIntSubstAndFormAndTermsList(sl []IntSubstAndFormAndTerms) []IntSubstAndFormAndTerms {
	res := make([]IntSubstAndFormAndTerms, len(sl))
	for i := range sl {
		res[i] = sl[i].Copy()
	}
	return res
}
