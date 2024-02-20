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
package sateq

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

func gatherSubs(truthValues map[Lit]bool, sMapping map[global.Pair[termIndex, constant]]Lit, rMapping map[global.Pair[constant, termIndex]]Lit, termCorrespondance map[termIndex]basictypes.Term) (subs []treetypes.Substitutions, success bool) {
	subsMap := getSubstitution(truthValues, sMapping)
	transMap := getTranslation(truthValues, rMapping)

	return buildSubsFrom(subsMap, transMap, termCorrespondance), true
}

func getSubstitution(truthValue map[Lit]bool, sMapping map[global.Pair[termIndex, constant]]Lit) map[termIndex]constant {
	subsMap := make(map[termIndex]constant)

	for firstLit, assignedTrue := range truthValue {
		if assignedTrue {
			for pair, secondLit := range sMapping {
				if firstLit.Equals(secondLit) {
					subsMap[pair.Fst] = pair.Snd
					break
				}
			}
		}
	}

	return subsMap
}

func getTranslation(truthValue map[Lit]bool, rMapping map[global.Pair[constant, termIndex]]Lit) map[constant]termIndex {
	transMap := make(map[constant]termIndex)

	for firstLit, assignedTrue := range truthValue {
		if assignedTrue {
			for replacement, secondLit := range rMapping {
				if firstLit.Equals(secondLit) {
					transMap[replacement.Fst] = replacement.Snd
					break
				}
			}
		}
	}

	return transMap
}

func translate(toTranslate basictypes.Term, termCorrespondance map[constant]basictypes.Term) (basictypes.Term, bool) {
	if typed, ok := toTranslate.(constant); ok {
		return translateConstant(typed, termCorrespondance)
	}

	if typed, ok := toTranslate.(basictypes.Fun); ok {
		return translateFunction(typed, termCorrespondance)
	}

	return toTranslate, false
}

func translateConstant(toTranslate constant, termCorrespondance map[constant]basictypes.Term) (basictypes.Term, bool) {
	if value, found := termCorrespondance[toTranslate]; found {
		return value, true
	} else {
		return toTranslate, false
	}
}

func translateFunction(toTranslate basictypes.Fun, termCorrespondance map[constant]basictypes.Term) (basictypes.Term, bool) {
	newTerms := global.NewList[basictypes.Term]()

	for _, arg := range toTranslate.GetArgs() {
		subterm, subchange := arg, true

		for subchange {
			subterm, subchange = translate(subterm, termCorrespondance)
		}

		newTerms.Append(subterm)
	}

	return basictypes.MakerFun(toTranslate.GetID(), newTerms.Slice(), toTranslate.GetTypeVars(), toTranslate.GetTypeHint()), false
}

func buildSubsFrom(subsMap map[termIndex]constant, translation map[constant]termIndex, termCorrespondance map[termIndex]basictypes.Term) []treetypes.Substitutions {
	result := treetypes.MakeEmptySubstitutionList()
	subs := treetypes.MakeEmptySubstitution()

	translatedCorrespondance := make(map[constant]basictypes.Term)
	for k, v := range translation {
		translatedCorrespondance[k] = termCorrespondance[v]
	}

	for meta, constantId := range subsMap {
		if typedMeta, ok := termCorrespondance[meta].(basictypes.Meta); ok {
			c := constantId
			t1, _ := translate(c, translatedCorrespondance)
			subs.Set(typedMeta, t1)
		}
	}

	result = append(result, subs)
	return result
}
