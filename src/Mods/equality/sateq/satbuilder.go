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
	"github.com/GoelandProver/Goeland/Glob"
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

	gini      gini.Gini
	eqClasses *Glob.List[*eqClass]
	lits      *Glob.List[Lit]

	numberOfPairs int
}

func buildSAT(problem *Problem) (sb *SatBuilder) {
	sb = &SatBuilder{
		problem: problem,

		sMapping: make(map[Glob.Pair[*termRecord, *eqClass]]Lit),
		eMapping: make(map[int]map[unorderedPair[*eqClass]]Lit),
		rMapping: make(map[Glob.Pair[*eqClass, *termRecord]]Lit),
		oMapping: make(map[Glob.Pair[*eqClass, *eqClass]]Lit),
		cMapping: make(map[int]Lit),
		ϕMapping: make(map[int]map[unorderedPair[*eqClass]]Lit),
		𝜓Mapping: make(map[int]map[unorderedPair[*eqClass]]Lit),
		fMapping: make(map[int]map[unorderedPair[*termRecord]]Lit),
		tMapping: make(map[int]map[Glob.Pair[unorderedPair[*eqClass], *eqClass]]Lit),

		gini:      *gini.New(),
		eqClasses: problem.EquivalenceClasses(),
		lits:      Glob.NewList[Lit](),
	}

	n := sb.eqClasses.Len()
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
	for _, meta := range sb.problem.Metas().Slice() {
		for i := 0; i < sb.eqClasses.Len()-1; i++ {
			eci := sb.eqClasses.Get(i)
			for j := i + 1; j < sb.eqClasses.Len(); j++ {
				ecj := sb.eqClasses.Get(j)
				sb.addClause(sb.getVarFromSMapping(meta, eci).Not(), sb.getVarFromSMapping(meta, ecj).Not())
			}
		}
	}
}

func (sb *SatBuilder) buildSubsConstraints() {
	for i := 0; i < sb.eqClasses.Len()-1; i++ {
		eci := sb.eqClasses.Get(i)
		for j := i + 1; j < sb.eqClasses.Len(); j++ {
			ecj := sb.eqClasses.Get(j)
			sb.subsConstraint(eci, ecj)
		}
	}
}

func (sb *SatBuilder) subsConstraint(ec1, ec2 *eqClass) {
	allVars := []Lit{sb.getVarFromEMapping(0, ec1, ec2).Not()}

	for _, t := range sb.problem.TermsInClass(ec1).Slice() {
		if t.isMeta() {
			allVars = append(allVars, sb.getVarFromSMapping(t, ec2))
		}
	}

	for _, t := range sb.problem.TermsInClass(ec2).Slice() {
		if t.isMeta() {
			allVars = append(allVars, sb.getVarFromSMapping(t, ec1))
		}
	}

	sb.addClause(allVars...)
}

func (sb *SatBuilder) buildEConstraints() {
	for index := 1; index <= sb.numberOfPairs; index++ {
		for i := 0; i < sb.eqClasses.Len()-1; i++ {
			eci := sb.eqClasses.Get(i)
			for j := i + 1; j < sb.eqClasses.Len(); j++ {
				ecj := sb.eqClasses.Get(j)
				if !eci.congruent(ecj) {
					eSupVar := sb.getVarFromEMapping(index, eci, ecj)
					eVar := sb.getVarFromEMapping(index-1, eci, ecj)

					ϕVar, _ := sb.getVarFromϕMapping(index-1, eci, ecj)
					𝜓Var, _ := sb.getVarFrom𝜓Mapping(index-1, eci, ecj)
					sb.addClause(eSupVar.Not(), eVar, ϕVar, 𝜓Var)

					sb.ϕConstraint(index-1, eci, ecj)
					sb.𝜓Constraint(index-1, eci, ecj)
				}
			}
		}
	}
}

func (sb *SatBuilder) ϕConstraint(index int, ec1, ec2 *eqClass) {
	lit, _ := sb.getVarFromϕMapping(index, ec1, ec2)
	vars := []Lit{lit.Not()}

	for _, ec3 := range sb.eqClasses.Slice() {
		if !ec3.congruent(ec1) && !ec3.congruent(ec2) {
			tVar := sb.getVarFromTMapping(index, ec1, ec2, ec3)
			eFirstVar := sb.getVarFromEMapping(index, ec1, ec3)
			eSecondtVar := sb.getVarFromEMapping(index, ec3, ec2)

			sb.addClause(tVar.Not(), eFirstVar)
			sb.addClause(tVar.Not(), eSecondtVar)

			vars = append(vars, tVar)
		}
	}

	sb.addClause(vars...)
}

func (sb *SatBuilder) 𝜓Constraint(index int, ec1, ec2 *eqClass) {
	lit, _ := sb.getVarFrom𝜓Mapping(index, ec1, ec2)
	vars := []Lit{lit.Not()}

	for _, tr1 := range sb.problem.TermsInClass(ec1).Slice() {
		if !tr1.isMeta() && len(tr1.args) != 0 {
			for _, tr2 := range sb.problem.TermsWithSymbol(tr1.index).Slice() {
				if !tr1.eqClass.congruent(tr2.eqClass) {
					fVar := sb.getVarFromFMapping(index, tr1, tr2)
					vars2 := []Lit{fVar}

					for i, rs1 := range tr1.args {
						rs2 := tr2.args[i]
						l := sb.getVarFromEMapping(index, rs1, rs2)
						sb.addClause(fVar.Not(), l)
						vars2 = append(vars2, l.Not())
					}

					vars = append(vars, fVar)
				}
			}
		}
	}

	sb.addClause(vars...)
}

func (sb *SatBuilder) buildGoalConstraints() {
	conjunction := []Lit{}

	for i, goal := range sb.problem.goals.Slice() {
		cVar := sb.getVarFromCMapping(i)
		conjunction = append(conjunction, cVar)

		for _, eq := range goal.Slice() {
			sb.addClause(cVar.Not(), sb.getVarFromEMapping(sb.numberOfPairs, eq.GetFst(), eq.GetSnd()))
		}
	}

	sb.addClause(conjunction...)
}

func (sb *SatBuilder) buildRepresentedConstraint() {
	for _, ec := range sb.eqClasses.Slice() {
		disjunction := []Lit{}

		for _, representedTerm := range sb.problem.TermsInClass(ec).Slice() {
			disjunction = append(disjunction, sb.getVarFromRMapping(ec, representedTerm))
		}

		sb.addClause(disjunction...)
	}
}

func (sb *SatBuilder) buildSubtermRelationConstraints() {
	for _, ec := range sb.eqClasses.Slice() {
		for _, t := range sb.problem.TermsInClass(ec).Slice() {
			if !t.isMeta() {

				rVar := sb.getVarFromRMapping(ec, t)

				for _, arg := range t.args {
					sb.addClause(rVar.Not(), sb.getVarFromOMapping(arg, ec))
				}

			}
		}
	}
}

func (sb *SatBuilder) buildTransitivityConstraints() {
	for _, iConst := range sb.eqClasses.Slice() {
		for _, jConst := range sb.eqClasses.Slice() {
			if !iConst.congruent(jConst) {
				for _, kConst := range sb.eqClasses.Slice() {
					if !jConst.congruent(kConst) {
						oVarji, oVarkj, oVarki := sb.getVarFromOMapping(jConst, iConst), sb.getVarFromOMapping(kConst, jConst), sb.getVarFromOMapping(kConst, iConst)
						sb.addClause(oVarji.Not(), oVarkj.Not(), oVarki)
					}
				}
			}
		}
	}
}

func (sb *SatBuilder) buildSubstitutionConstraints() {
	for _, meta := range sb.problem.Metas().Slice() {
		for _, eci := range sb.eqClasses.Slice() {
			if !eci.congruent(meta.eqClass) {
				for _, eck := range sb.eqClasses.Slice() {
					ecj := meta.eqClass
					sVar, rVar := sb.getVarFromSMapping(meta, eci), sb.getVarFromRMapping(ecj, meta)
					oVarjk, oVarik := sb.getVarFromOMapping(ecj, eck), sb.getVarFromOMapping(eci, eck)
					oVarki, oVarkj := sb.getVarFromOMapping(eck, eci), sb.getVarFromOMapping(eck, ecj)

					sb.addClause(sVar.Not(), rVar.Not(), oVarki.Not(), oVarkj)
					sb.addClause(sVar.Not(), rVar.Not(), oVarjk.Not(), oVarik)
				}
			}
		}
	}
}

func (sb *SatBuilder) buildAcyclicityConstraints() {
	for _, currentConst := range sb.eqClasses.Slice() {
		sb.addClause(sb.getVarFromOMapping(currentConst, currentConst).Not())
	}
}
