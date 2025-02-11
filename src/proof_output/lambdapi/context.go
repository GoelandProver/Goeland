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
package lambdapi

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/modules/dmt"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func makeContextIfNeeded(root basictypes.Form, metaList *basictypes.MetaList) string {
	resultString := contextPreamble() + "\n\n"

	if global.IsLoaded("dmt") {
		registeredAxioms := dmt.GetRegisteredAxioms()
		registeredAxioms.Append(root)
		root = basictypes.MakerAnd(registeredAxioms)
	}

	if typing.EmptyGlobalContext() {
		resultString += strings.Join(getContextFromFormula(root), "\n") + "\n"

		if metaList.Len() > 0 {
			resultString += contextualizeMetas(metaList)
		}
	} else {
		resultString += getContextAsString(root)

		if metaList.Len() > 0 {
			resultString += contextualizeMetas(metaList)
		}
	}
	return resultString
}

func getContextAsString(root basictypes.Form) string {
	types, arrows, others := globalContextPairs()
	ids := getIdsFromFormula(root)

	final := types

	for _, arrow := range arrows {
		for _, id := range ids {
			if id.Fst == arrow.Fst {
				found := false
				for _, fin := range final {
					if fin.Fst == id.Snd {
						found = true
					}
				}

				if !found {
					final = append(final, global.MakePair(id.Snd, arrow.Snd))
				}
			}
		}
	}

	for _, other := range others {
		for _, id := range ids {
			if id.Fst == other.Fst {
				found := false
				for _, fin := range final {
					if fin.Fst == id.Snd {
						found = true
					}
				}

				if !found {
					final = append(final, global.MakePair(id.Snd, other.Snd))
				}
			}
		}
	}

	result := ""

	for _, fin := range final {
		result += "symbol " + fin.Fst + " : " + mapDefault(fin.Snd) + ";\n"
	}

	return result
}

func globalContextPairs() (types, arrows, others []global.Pair[string, string]) {
	context := typing.GetGlobalContext()
	for k, v := range context {
		if k != "=" && k[0] != '$' {
			switch typed := v[0].App.(type) {
			case typing.TypeArrow:
				primitives := typed.GetPrimitives()
				typesStr := ""

				for i, prim := range primitives {
					if i != len(primitives)-1 {
						typesStr += "τ (" + prim.ToString() + ") → "
					} else {
						typesStr += prim.ToString()
					}
				}
				arrows = append(arrows, global.MakePair(k, typesStr))
			case typing.QuantifiedType:
				primitives := typed.GetPrimitives()
				typesStr := ""
				contextualized := []string{}

				for i, prim := range primitives {
					if i != len(primitives)-1 {
						switch typedPrim := prim.(type) {
						case typing.TypeVar:
							str := basictypes.SimpleStringMappable(typedPrim.ToString())
							symbol := addToContext(&str)
							typesStr += "τ (" + symbol + ") → "
							contextualized = append(contextualized, symbol)
						case typing.TypeHint:
							typesStr += "τ (" + prim.ToString() + ") → "
						}
					} else {
						typesStr += prim.ToString()
					}
				}
				arrows = append(arrows, global.MakePair(k, fmt.Sprintf("Π (%s : Type), %s", strings.Join(contextualized, " : Type), ("), typesStr)))
			case typing.TypeHint:
				if k == typed.ToString() {
					types = append(types, global.MakePair(k, "Type"))
				} else {
					others = append(others, global.MakePair(k, fmt.Sprintf("τ (%s)", typed.ToString())))
				}
			}
		}
	}

	return types, arrows, others
}

func contextPreamble() string {
	return "require open Logic.Goeland.FOL Logic.Goeland.LL Logic.Goeland.ND Logic.Goeland.ND_eps Logic.Goeland.ND_eps_full Logic.Goeland.ND_eps_aux Logic.Goeland.LL_ND Logic.Goeland.GS3;"
}

func getContextFromFormula(root basictypes.Form) []string {
	result := []string{}

	switch nf := root.(type) {
	case basictypes.All:
		result = getContextFromFormula(nf.GetForm())
	case basictypes.Ex:
		result = getContextFromFormula(nf.GetForm())
	case basictypes.AllType:
		result = getContextFromFormula(nf.GetForm())
	case basictypes.And:
		for _, f := range nf.FormList.Slice() {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case basictypes.Or:
		for _, f := range nf.FormList.Slice() {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case basictypes.Imp:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case basictypes.Equ:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case basictypes.Not:
		result = append(result, getContextFromFormula(nf.GetForm())...)
	case basictypes.Pred:
		if !nf.GetID().Equals(basictypes.Id_eq) {
			primitives := nf.GetType().GetPrimitives()
			typesStr := ""

			for i, prim := range primitives {
				if i != len(primitives)-1 {
					typesStr += "τ (" + prim.ToString() + ") → "
				} else {
					typesStr += prim.ToString()
				}
			}

			result = append(result, mapDefault(fmt.Sprintf("symbol %s : %s;", nf.GetID().ToMappedString(lambdaPiMapConnectors, false), typesStr)))
		}
		for _, term := range nf.GetArgs().Slice() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

func getIdsFromFormula(root basictypes.Form) []global.Pair[string, string] {
	result := []global.Pair[string, string]{}

	switch nf := root.(type) {
	case basictypes.All:
		result = getIdsFromFormula(nf.GetForm())
	case basictypes.Ex:
		result = getIdsFromFormula(nf.GetForm())
	case basictypes.AllType:
		result = getIdsFromFormula(nf.GetForm())
	case basictypes.And:
		for _, f := range nf.FormList.Slice() {
			result = append(result, getIdsFromFormula(f)...)
		}
	case basictypes.Or:
		for _, f := range nf.FormList.Slice() {
			result = append(result, getIdsFromFormula(f)...)
		}
	case basictypes.Imp:
		result = getIdsFromFormula(nf.GetF1())
		result = append(result, getIdsFromFormula(nf.GetF2())...)
	case basictypes.Equ:
		result = getIdsFromFormula(nf.GetF1())
		result = append(result, getIdsFromFormula(nf.GetF2())...)
	case basictypes.Not:
		result = getIdsFromFormula(nf.GetForm())
	case basictypes.Pred:
		result = append(result, global.MakePair(nf.GetID().GetName(), nf.GetID().ToMappedString(lambdaPiMapConnectors, false)))
		for _, f := range nf.GetArgs().Slice() {
			result = append(result, global.MakePair(f.GetName(), f.ToMappedString(lambdaPiMapConnectors, false)))
		}
	}
	return result
}

func getContextFromTerm(trm basictypes.Term) []string {
	result := []string{}

	if fun, isFun := trm.(basictypes.Fun); isFun {

		primitives := fun.GetTypeHint().GetPrimitives()
		typesStr := ""
		for i, prim := range primitives {
			if i != len(primitives)-1 {
				typesStr += "τ (" + prim.ToString() + ") → "
			} else {
				typesStr += "τ (" + prim.ToString() + ")"
			}
		}

		result = append(result, mapDefault(fmt.Sprintf("symbol %s : %s;", fun.GetID().ToMappedString(lambdaPiMapConnectors, false), typesStr)))
		for _, term := range fun.GetArgs().Slice() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

// Returns everything in add not in set
func clean(set, add []string) []string {
	result := []string{}
	for _, str := range add {
		found := false
		for _, s := range set {
			if s == str {
				found = true
				break
			}
		}
		if !found {
			result = append(result, str)
		}
	}
	return result
}

func contextualizeMetas(metaList *basictypes.MetaList) string {
	result := []string{}
	for _, meta := range metaList.Slice() {
		result = append(result, meta.ToMappedString(lambdaPiMapConnectors, false))
	}
	return "symbol " + strings.Join(result, " ") + " : τ (ι);"
}
