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

func gatherSubs(truthValues map[Lit]bool, sMapping map[global.Pair[*termRecord, *eqClass]]Lit, rMapping map[global.Pair[*eqClass, *termRecord]]Lit) (subs []treetypes.Substitutions, success bool) {
	sub := getSubstitution(truthValues, sMapping)
	correspondence := getTranslation(truthValues, rMapping)

	return translateSub(sub, correspondence), true
}

func getSubstitution(truthValue map[Lit]bool, sMapping map[global.Pair[*termRecord, *eqClass]]Lit) map[*termRecord]*eqClass {
	subsMap := make(map[*termRecord]*eqClass)

	for pair, lit := range sMapping {
		if pair.Fst.isMeta() && truthValue[lit] {
			subsMap[pair.Fst] = pair.Snd
		}
	}

	return subsMap
}

func getTranslation(truthValue map[Lit]bool, rMapping map[global.Pair[*eqClass, *termRecord]]Lit) map[*eqClass]*termRecord {
	transMap := make(map[*eqClass]*termRecord)

	for firstLit, assignedTrue := range truthValue {
		if assignedTrue {
			for replacement, secondLit := range rMapping {
				if firstLit.Equals(secondLit) {
					transMap[replacement.Fst.representative()] = replacement.Snd
					break
				}
			}
		}
	}

	return transMap
}

func translate(toTranslate *eqClass, correspondence map[*eqClass]*termRecord) basictypes.Term {
	tr := correspondence[toTranslate.representative()]
	if tr.isMeta() {
		return tr.meta
	} else {
		args := global.NewList[basictypes.Term]()
		for _, s := range tr.args {
			args.Append(translate(s, correspondence))
		}
		return basictypes.MakerFun(tr.symbolId, args.AsSlice(), tr.typeVars, tr.typeHint)
	}
}

/*func translateConstant(toTranslate *eqClass, termCorrespondance map[*eqClass]basictypes.Term) (basictypes.Term, bool) {
	if value, found := termCorrespondance[toTranslate]; found {
		return value, true
	} else {
		return toTranslate, false
	}
}*/

/*func translateFunction(toTranslate basictypes.Fun, termCorrespondance map[*eqClass]basictypes.Term) (basictypes.Term, bool) {
	newTerms := global.NewList[basictypes.Term]()

	for _, arg := range toTranslate.GetArgs() {
		subterm, subchange := arg, true

		for subchange {
			subterm, subchange = translate(subterm, termCorrespondance)
		}

		newTerms.Append(subterm)
	}

	return basictypes.MakerFun(toTranslate.GetID(), newTerms.AsSlice(), toTranslate.GetTypeVars(), toTranslate.GetTypeHint()), false
}*/

func translateSub(sub map[*termRecord]*eqClass, correspondence map[*eqClass]*termRecord) []treetypes.Substitutions {
	result := treetypes.MakeEmptySubstitutionList()
	subs := treetypes.MakeEmptySubstitution()

	for x, r := range sub {
		subs.Set(*x.meta, translate(r, correspondence))
	}

	result = append(result, subs)
	return result
}
