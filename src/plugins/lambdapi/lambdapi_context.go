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
	// if !GetContextEnabled() {
	// 	return ""
	// }
	resultString := contextPreamble()

	if typing.EmptyGlobalContext() {

		if global.IsLoaded("dmt") {
			root = btps.MakerAnd(append(dmt.GetRegisteredAxioms(), root))
		}

		resultString += strings.Join(getContextFromFormula(root), "\n") + "\n"

		if len(metaList) > 0 {
			resultString += contextualizeMetas(metaList)
		}
	}
	return resultString
}

func contextPreamble() string {
	return "require open Logic.Goeland.FOL Logic.Goeland.LL Logic.Goeland.ND Logic.Goeland.ND_eps Logic.Goeland.ND_eps_full Logic.Goeland.ND_eps_aux Logic.Goeland.LL_ND Logic.Goeland.zen;\n\n"
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
			result = append(result, mapDefault(fmt.Sprintf("symbol %s : %s;", nf.GetID().ToMappedString(lPMapconnectors(), false), nf.GetType().ToString())))
		}
		for _, term := range nf.GetArgs() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

func getContextFromTerm(trm btps.Term) []string {
	result := []string{}
	if fun, isFun := trm.(btps.Fun); isFun {
		result = append(result, mapDefault(fmt.Sprintf("symbol %s : %s;", fun.GetID().ToMappedString(lPMapconnectors(), false), fun.GetTypeHint().ToString())))
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
		result = append(result, meta.ToMappedString(lPMapconnectors(), false))
	}
	return "symbol " + strings.Join(result, " ") + " : τ (ι)."
}
