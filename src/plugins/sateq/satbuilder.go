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
	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	"github.com/go-air/gini"
	"github.com/go-air/gini/z"
)

type SatBuilder struct {
	problem *Problem

	sMapping SMapping
	eMapping EMapping
	rMapping RMapping
	oMapping OMapping
	cMapping CMapping
	ϕMapping EMapping
	𝜓Mapping EMapping
	fMapping FMapping
	tMapping TMapping

	gini gini.Gini
	lits *global.List[Lit]

	numberOfPairs int
}

func buildSAT(problem *Problem) (sb *SatBuilder) {
	sb = &SatBuilder{
		problem: problem,

		sMapping: make(map[global.Pair[termIndex, constant]]Lit),
		eMapping: make(map[int]map[unorderedPair[constant]]Lit),
		rMapping: make(map[global.Pair[constant, termIndex]]Lit),
		oMapping: make(map[global.Pair[constant, constant]]Lit),
		cMapping: make(map[int]Lit),
		ϕMapping: make(map[int]map[unorderedPair[constant]]Lit),
		𝜓Mapping: make(map[int]map[unorderedPair[constant]]Lit),
		fMapping: make(map[int]map[unorderedPair[termIndex]]Lit),
		tMapping: make(map[int]map[global.Pair[unorderedPair[constant], constant]]Lit),

		gini: *gini.New(),
		lits: global.NewList[Lit](),
	}

	sb.problem.format()

	n := sb.problem.constants.Length()
	sb.numberOfPairs = (n * (n - 1)) / 2

	sb.buildAllStandardConstraints()
	sb.buildAllAcyclicityConstraints()

	return sb
}

func (sb *SatBuilder) addClause(vars ...Lit) {
	if len(vars) > 0 {
		for _, v := range vars {
			sb.gini.Add(z.Lit(v))
		}

		sb.gini.Add(z.LitNull)
	}
}

func (sb *SatBuilder) buildAllStandardConstraints() {
	sb.buildMappingConstraints()
	sb.buildSubsConstraints()
	sb.buildEConstraints()
	sb.buildGoalConstraints()
}

func (sb *SatBuilder) buildAllAcyclicityConstraints() {
	sb.buildRepresentedConstraint()
	sb.buildSubtermRelationConstraints()
	sb.buildTransitivityConstraints()
	sb.buildSubstitutionConstraints()
	sb.buildAcyclicityConstraints()
}

func (sb *SatBuilder) buildMappingConstraints() {
	for _, meta := range sb.problem.metas.AsSlice() {
		for i := 0; i < sb.problem.constants.Length()-1; i++ {
			iConst := sb.problem.constants.Get(i)
			for j := i + 1; j < sb.problem.constants.Length(); j++ {
				jConst := sb.problem.constants.Get(j)
				sb.addClause(sb.getVarFromSMapping(meta, iConst).Not(), sb.getVarFromSMapping(meta, jConst).Not())
			}
		}
	}
}

func (sb *SatBuilder) buildSubsConstraints() {

	for i := 0; i < sb.problem.constants.Length()-1; i++ {
		iConst := sb.problem.constants.Get(i)
		for j := i + 1; j < sb.problem.constants.Length(); j++ {
			jConst := sb.problem.constants.Get(j)
			sb.subsConstraint(iConst, jConst)
		}
	}
}

func (sb *SatBuilder) subsConstraint(ci, cj constant) {
	allVars := []Lit{sb.getVarFromEMapping(0, ci, cj).Not()}

	for _, t := range sb.problem.representativeIndex[ci].AsSlice() {
		if sb.problem.rightHandIndex[t].IsMeta() {
			allVars = append(allVars, sb.getVarFromSMapping(t, cj))
		}
	}

	for _, t := range sb.problem.representativeIndex[cj].AsSlice() {
		if sb.problem.rightHandIndex[t].IsMeta() {
			allVars = append(allVars, sb.getVarFromSMapping(t, ci))
		}
	}

	sb.addClause(allVars...)
}

func (sb *SatBuilder) buildEConstraints() {
	for index := 1; index <= sb.numberOfPairs; index++ {
		for i := 0; i < sb.problem.constants.Length()-1; i++ {
			ci := sb.problem.constants.Get(i)
			for j := i + 1; j < sb.problem.constants.Length(); j++ {
				cj := sb.problem.constants.Get(j)
				if ci != cj {
					eSupVar := sb.getVarFromEMapping(index, ci, cj)
					eVar := sb.getVarFromEMapping(index-1, ci, cj)

					ϕVar, _ := sb.getVarFromϕMapping(index-1, ci, cj)
					𝜓Var, _ := sb.getVarFrom𝜓Mapping(index-1, ci, cj)
					sb.addClause(eSupVar.Not(), eVar, ϕVar, 𝜓Var)

					sb.ϕConstraint(index-1, ci, cj)
					sb.𝜓Constraint(index-1, ci, cj)
				}
			}
		}
	}
}

func (sb *SatBuilder) ϕConstraint(index int, ci, cj constant) {
	lit, _ := sb.getVarFromϕMapping(index, ci, cj)
	vars := []Lit{lit.Not()}

	for _, other := range sb.problem.constants.AsSlice() {
		if other != ci && other != cj {
			tVar := sb.getVarFromTMapping(index, ci, cj, other)
			eFirstVar := sb.getVarFromEMapping(index, ci, other)
			eSecondtVar := sb.getVarFromEMapping(index, other, cj)

			sb.addClause(tVar.Not(), eFirstVar)
			sb.addClause(tVar.Not(), eSecondtVar)

			vars = append(vars, tVar)
		}
	}

	sb.addClause(vars...)
}

func (sb *SatBuilder) 𝜓Constraint(index int, ci, cj constant) {
	lit, _ := sb.getVarFrom𝜓Mapping(index, ci, cj)
	vars := []Lit{lit.Not()}

	for _, firstTerm := range sb.problem.representativeIndex[ci].AsSlice() {
		for _, secondTerm := range sb.problem.representativeIndex[cj].AsSlice() {
			if firstFun, ok := sb.problem.rightHandIndex[firstTerm].(basictypes.Fun); ok {
				if secondFun, ok := sb.problem.rightHandIndex[secondTerm].(basictypes.Fun); ok {
					if firstFun.GetID().Equals(secondFun.GetID()) {
						fVar := sb.getVarFromFMapping(index, firstTerm, secondTerm)
						firstArgs, secondArgs := firstFun.GetArgs(), secondFun.GetArgs()

						for i := range firstArgs {
							if firstConst, ok := firstArgs[i].(constant); ok {
								if secondConst, ok := secondArgs[i].(constant); ok {
									sb.addClause(fVar.Not(), sb.getVarFromEMapping(index, firstConst, secondConst))
								}
							}
						}

						vars = append(vars, fVar)
					}
				}
			}
		}
	}

	sb.addClause(vars...)
}

func (sb *SatBuilder) buildGoalConstraints() {
	conjunction := []Lit{}

	for i, goal := range sb.problem.goals.AsSlice() {
		cVar := sb.getVarFromCMapping(i)
		conjunction = append(conjunction, cVar)

		for _, equ := range goal.AsSlice() {
			if fstTyped, ok := equ.GetFst().(constant); ok {
				if sndTyped, ok := equ.GetSnd().(constant); ok {
					sb.addClause(cVar.Not(), sb.getVarFromEMapping(sb.numberOfPairs, fstTyped, sndTyped))
				}
			}
		}
	}

	sb.addClause(conjunction...)
}

func (sb *SatBuilder) buildRepresentedConstraint() {
	for _, currentConst := range sb.problem.constants.AsSlice() {
		disjunction := []Lit{}

		for _, representedTerm := range sb.problem.representativeIndex[currentConst].AsSlice() {
			disjunction = append(disjunction, sb.getVarFromRMapping(currentConst, representedTerm))
		}

		sb.addClause(disjunction...)
	}
}

func (sb *SatBuilder) buildSubtermRelationConstraints() {
	for _, currentConst := range sb.problem.constants.AsSlice() {
		for _, t := range sb.problem.representativeIndex[currentConst].AsSlice() {
			if typedFun, ok := sb.problem.rightHandIndex[t].(basictypes.Fun); ok {

				rVar := sb.getVarFromRMapping(currentConst, t)

				for _, arg := range typedFun.GetArgs() {
					if typedArg, ok := arg.(constant); ok {
						sb.addClause(rVar.Not(), sb.getVarFromOMapping(typedArg, currentConst))
					}
				}

			}
		}
	}
}

func (sb *SatBuilder) buildTransitivityConstraints() {
	for _, iConst := range sb.problem.constants.AsSlice() {
		for _, jConst := range sb.problem.constants.AsSlice() {
			if iConst != jConst {
				for _, kConst := range sb.problem.constants.AsSlice() {
					if jConst != kConst {
						oVarji, oVarkj, oVarki := sb.getVarFromOMapping(jConst, iConst), sb.getVarFromOMapping(kConst, jConst), sb.getVarFromOMapping(kConst, iConst)
						sb.addClause(oVarji.Not(), oVarkj.Not(), oVarki)
					}
				}
			}
		}
	}
}

func (sb *SatBuilder) buildSubstitutionConstraints() {
	for _, meta := range sb.problem.metas.AsSlice() {
		for _, iConst := range sb.problem.constants.AsSlice() {
			if iConst != sb.problem.leftHandIndex[meta] {
				for _, kConst := range sb.problem.constants.AsSlice() {
					jConst := sb.problem.leftHandIndex[meta]
					sVar, rVar := sb.getVarFromSMapping(meta, iConst), sb.getVarFromRMapping(jConst, meta)
					oVarjk, oVarik := sb.getVarFromOMapping(jConst, kConst), sb.getVarFromOMapping(iConst, kConst)
					oVarki, oVarkj := sb.getVarFromOMapping(kConst, iConst), sb.getVarFromOMapping(kConst, jConst)

					sb.addClause(sVar.Not(), rVar.Not(), oVarki.Not(), oVarkj)
					sb.addClause(sVar.Not(), rVar.Not(), oVarjk.Not(), oVarik)
				}
			}
		}
	}
}

func (sb *SatBuilder) buildAcyclicityConstraints() {
	for _, currentConst := range sb.problem.constants.AsSlice() {
		sb.addClause(sb.getVarFromOMapping(currentConst, currentConst).Not())
	}
}
