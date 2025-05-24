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

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Mods/dmt"
)

func makeContextIfNeeded(root AST.Form, metaList *AST.MetaList) string {
	resultString := contextPreamble() + "\n\n"

	if Glob.IsLoaded("dmt") {
		registeredAxioms := dmt.GetRegisteredAxioms()
		registeredAxioms.Append(root)
		root = AST.MakerAnd(registeredAxioms)
	}

	if AST.EmptyGlobalContext() {
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

func getContextAsString(root AST.Form) string {
	types, arrows, others := GlobContextPairs()
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
					final = append(final, Glob.MakePair(id.Snd, arrow.Snd))
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
					final = append(final, Glob.MakePair(id.Snd, other.Snd))
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

func GlobContextPairs() (types, arrows, others []Glob.Pair[string, string]) {
	context := AST.GetGlobalContext()
	for k, v := range context {
		if k != "=" && k[0] != '$' {
			switch typed := v[0].App.(type) {
			case AST.TypeArrow:
				primitives := typed.GetPrimitives()
				typesStr := ""

				for i, prim := range primitives {
					if i != len(primitives)-1 {
						typesStr += "τ (" + prim.ToString() + ") → "
					} else {
						typesStr += prim.ToString()
					}
				}
				arrows = append(arrows, Glob.MakePair(k, typesStr))
			case AST.QuantifiedType:
				primitives := typed.GetPrimitives()
				typesStr := ""
				contextualized := []string{}

				for i, prim := range primitives {
					if i != len(primitives)-1 {
						switch typedPrim := prim.(type) {
						case AST.TypeVar:
							str := AST.SimpleStringMappable(typedPrim.ToString())
							symbol := addToContext(&str)
							typesStr += "τ (" + symbol + ") → "
							contextualized = append(contextualized, symbol)
						case AST.TypeHint:
							typesStr += "τ (" + prim.ToString() + ") → "
						}
					} else {
						typesStr += prim.ToString()
					}
				}
				arrows = append(arrows, Glob.MakePair(k, fmt.Sprintf("Π (%s : Type), %s", strings.Join(contextualized, " : Type), ("), typesStr)))
			case AST.TypeHint:
				if k == typed.ToString() {
					types = append(types, Glob.MakePair(k, "Type"))
				} else {
					others = append(others, Glob.MakePair(k, fmt.Sprintf("τ (%s)", typed.ToString())))
				}
			}
		}
	}

	return types, arrows, others
}

func contextPreamble() string {
	return "require open Logic.Goeland.FOL Logic.Goeland.LL Logic.Goeland.ND Logic.Goeland.ND_eps Logic.Goeland.ND_eps_full Logic.Goeland.ND_eps_aux Logic.Goeland.LL_ND Logic.Goeland.GS3;"
}

func getContextFromFormula(root AST.Form) []string {
	result := []string{}

	switch nf := root.(type) {
	case AST.All:
		result = getContextFromFormula(nf.GetForm())
	case AST.Ex:
		result = getContextFromFormula(nf.GetForm())
	case AST.AllType:
		result = getContextFromFormula(nf.GetForm())
	case AST.And:
		for _, f := range nf.FormList.Slice() {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case AST.Or:
		for _, f := range nf.FormList.Slice() {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case AST.Imp:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case AST.Equ:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case AST.Not:
		result = append(result, getContextFromFormula(nf.GetForm())...)
	case AST.Pred:
		if !nf.GetID().Equals(AST.Id_eq) {
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
		for _, term := range nf.GetArgs().GetSlice() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

func getIdsFromFormula(root AST.Form) []Glob.Pair[string, string] {
	result := []Glob.Pair[string, string]{}

	switch nf := root.(type) {
	case AST.All:
		result = getIdsFromFormula(nf.GetForm())
	case AST.Ex:
		result = getIdsFromFormula(nf.GetForm())
	case AST.AllType:
		result = getIdsFromFormula(nf.GetForm())
	case AST.And:
		for _, f := range nf.FormList.Slice() {
			result = append(result, getIdsFromFormula(f)...)
		}
	case AST.Or:
		for _, f := range nf.FormList.Slice() {
			result = append(result, getIdsFromFormula(f)...)
		}
	case AST.Imp:
		result = getIdsFromFormula(nf.GetF1())
		result = append(result, getIdsFromFormula(nf.GetF2())...)
	case AST.Equ:
		result = getIdsFromFormula(nf.GetF1())
		result = append(result, getIdsFromFormula(nf.GetF2())...)
	case AST.Not:
		result = getIdsFromFormula(nf.GetForm())
	case AST.Pred:
		result = append(result, Glob.MakePair(nf.GetID().GetName(), nf.GetID().ToMappedString(lambdaPiMapConnectors, false)))
		for _, f := range nf.GetArgs().GetSlice() {
			result = append(result, Glob.MakePair(f.GetName(), f.ToMappedString(lambdaPiMapConnectors, false)))
		}
	}
	return result
}

func getContextFromTerm(trm AST.Term) []string {
	result := []string{}

	if fun, isFun := trm.(AST.Fun); isFun {

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
		for _, term := range fun.GetArgs().GetSlice() {
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

func contextualizeMetas(metaList *AST.MetaList) string {
	result := []string{}
	for _, meta := range metaList.Slice() {
		result = append(result, meta.ToMappedString(lambdaPiMapConnectors, false))
	}
	return "symbol " + strings.Join(result, " ") + " : τ (ι);"
}
