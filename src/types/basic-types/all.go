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
* This file implements quantifiers over formulas (forall, exists, forall (types)).
**/

package basictypes

import typing "github.com/GoelandProver/Goeland/polymorphism/typing"

type All struct {
	quantifier
}

func MakeAllSimple(i int, vars []Var, forms Form, metas *MetaList) All {
	return All{makeQuantifier(i, vars, forms, metas)}
}

func MakeAll(i int, vars []Var, forms Form) All {
	return MakeAllSimple(i, vars, forms, NewMetaList())
}

func MakerAll(vars []Var, forms Form) All {
	return MakeAll(MakerIndexFormula(), vars, forms)
}

func (a All) ToMappedStringSurround(mapping MapString, displayTypes bool) string {
	return a.quantifier.toMappedString(mapping[AllQuant], mapping, displayTypes)
}

func (a All) Equals(other any) bool {
	if typed, ok := other.(All); ok {
		return AreEqualsVarList(a.GetVarList(), typed.GetVarList()) && a.GetForm().Equals(typed.GetForm())
	}

	return false
}

func (a All) GetSubFormulasRecur() FormList {
	return getAllSubFormulasAppended(a)
}

func (a All) Copy() Form {
	return All{a.quantifier.copy()}
}

func (a All) RenameVariables() Form {
	return All{a.quantifier.renameVariables()}
}

func (a All) ReplaceTypeByMeta(varList []typing.TypeVar, index int) Form {
	return All{a.quantifier.replaceTypeByMeta(varList, index)}
}

func (a All) ReplaceVarByTerm(old Var, new Term) (Form, bool) {
	quant, isReplaced := a.quantifier.replaceVarByTerm(old, new)
	return All{quant}, isReplaced
}

func (a All) SetInternalMetas(m *MetaList) Form {
	return All{a.quantifier.setInternalMetas(m)}
}

func (a All) SubstituteVarByMeta(old Var, new Meta) Form {
	return All{a.quantifier.substituteVarByMeta(old, new)}
}
