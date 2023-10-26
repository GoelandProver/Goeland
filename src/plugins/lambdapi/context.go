package lambdapi

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/plugins/dmt"
	typing "github.com/GoelandProver/Goeland/polymorphism/typing"
	btps "github.com/GoelandProver/Goeland/types/basic-types"
)

func makeContextIfNeeded(root btps.Form, metaList btps.MetaList) string {
	resultString := contextPreamble() + "\n\n"

	if typing.EmptyGlobalContext() {
		if global.IsLoaded("dmt") {
			root = btps.MakerAnd(append(dmt.GetRegisteredAxioms(), root))
		}

		resultString += strings.Join(getContextFromFormula(root), "\n") + "\n"

		if len(metaList) > 0 {
			resultString += contextualizeMetas(metaList)
		}
	} else {
		if global.IsLoaded("dmt") {
			root = btps.MakerAnd(append(dmt.GetRegisteredAxioms(), root))
		}

		resultString += getContextAsString(root)

		if len(metaList) > 0 {
			resultString += contextualizeMetas(metaList)
		}
	}
	return resultString
}

func getContextAsString(root btps.Form) string {
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
							str := btps.SimpleStringMappable(typedPrim.ToString())
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

func getContextFromFormula(root btps.Form) []string {
	result := []string{}

	switch nf := root.(type) {
	case btps.All:
		result = getContextFromFormula(nf.GetForm())
	case btps.Ex:
		result = getContextFromFormula(nf.GetForm())
	case btps.AllType:
		result = getContextFromFormula(nf.GetForm())
	case btps.And:
		for _, f := range nf.FormList {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case btps.Or:
		for _, f := range nf.FormList {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case btps.Imp:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case btps.Equ:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case btps.Not:
		result = append(result, getContextFromFormula(nf.GetForm())...)
	case btps.Pred:
		if !nf.GetID().Equals(btps.Id_eq) {
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
		for _, term := range nf.GetArgs() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

func getIdsFromFormula(root btps.Form) []global.Pair[string, string] {
	result := []global.Pair[string, string]{}

	switch nf := root.(type) {
	case btps.All:
		result = getIdsFromFormula(nf.GetForm())
	case btps.Ex:
		result = getIdsFromFormula(nf.GetForm())
	case btps.AllType:
		result = getIdsFromFormula(nf.GetForm())
	case btps.And:
		for _, f := range nf.FormList {
			result = append(result, getIdsFromFormula(f)...)
		}
	case btps.Or:
		for _, f := range nf.FormList {
			result = append(result, getIdsFromFormula(f)...)
		}
	case btps.Imp:
		result = getIdsFromFormula(nf.GetF1())
		result = append(result, getIdsFromFormula(nf.GetF2())...)
	case btps.Equ:
		result = getIdsFromFormula(nf.GetF1())
		result = append(result, getIdsFromFormula(nf.GetF2())...)
	case btps.Not:
		result = getIdsFromFormula(nf.GetForm())
	case btps.Pred:
		result = append(result, global.MakePair(nf.GetID().GetName(), nf.GetID().ToMappedString(lambdaPiMapConnectors, false)))
		for _, f := range nf.GetArgs() {
			result = append(result, global.MakePair(f.GetName(), f.ToMappedString(lambdaPiMapConnectors, false)))
		}
	}
	return result
}

func getContextFromTerm(trm btps.Term) []string {
	result := []string{}

	if fun, isFun := trm.(btps.Fun); isFun {

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
		for _, term := range fun.GetArgs() {
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

func contextualizeMetas(metaList btps.MetaList) string {
	result := []string{}
	for _, meta := range metaList {
		result = append(result, meta.ToMappedString(lambdaPiMapConnectors, false))
	}
	return "symbol " + strings.Join(result, " ") + " : τ (ι);"
}
