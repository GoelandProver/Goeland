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
 * This file provides an interface to ease communication between proof structures.
 **/

package Search

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type TableauxRule int
type TableauxRuleKind int

const (
	RuleClosure TableauxRule = iota
	RuleImp
	RuleAnd
	RuleOr
	RuleEqu
	RuleEx
	RuleAll
	RuleNotNot
	RuleNotImp
	RuleNotAnd
	RuleNotOr
	RuleNotEqu
	RuleNotEx
	RuleNotAll
	RuleReintro
	RuleRew
	RuleWeaken
)

const (
	KindClosure TableauxRuleKind = iota
	KindAlpha
	KindBeta
	KindDelta
	KindGamma
	KindRew
	KindStructural
)

func (r TableauxRule) ToString() string {
	smap := map[TableauxRule]string{
		RuleClosure: "Closure",
		RuleImp:     "BetaImp",
		RuleAnd:     "AlphaAnd",
		RuleOr:      "BetaOr",
		RuleEqu:     "BetaEqu",
		RuleEx:      "DeltaEx",
		RuleAll:     "GammaAll",
		RuleNotNot:  "AlphaNotNot",
		RuleNotImp:  "AlphaNotImp",
		RuleNotAnd:  "BetaNotAnd",
		RuleNotOr:   "AlphaNotOr",
		RuleNotEqu:  "BetaNotEqu",
		RuleNotEx:   "GammaNotEx",
		RuleNotAll:  "DeltaNotAll",
		RuleReintro: "Gamma",
		RuleRew:     "Rew",
		RuleWeaken:  "Weakening",
	}
	res, found := smap[r]
	if !found {
		Glob.Anomaly(label, "Unknown rule")
	}
	return res
}

func KindOfRule(r TableauxRule) TableauxRuleKind {
	switch r {
	case RuleClosure:
		return KindClosure
	case RuleNotNot, RuleNotOr, RuleNotImp, RuleAnd:
		return KindAlpha
	case RuleNotAnd, RuleNotEqu, RuleOr, RuleImp, RuleEqu:
		return KindBeta
	case RuleNotAll, RuleEx:
		return KindDelta
	case RuleNotEx, RuleAll:
		return KindGamma
	case RuleRew:
		return KindRew
	case RuleWeaken, RuleReintro:
		return KindStructural
	}

	Glob.Anomaly(label, "Unknown kind of rule")
	return 0
}

type IProof interface {
	AppliedOn() AST.Form
	RuleApplied() TableauxRule
	ResultFormulas() Lib.List[Lib.List[AST.Form]]
	Children() Lib.List[IProof]
	RewrittenWith() Lib.Option[AST.Form]
	TermGenerated() Lib.Option[Lib.Either[AST.Ty, AST.Term]]
	ToString() string
}
