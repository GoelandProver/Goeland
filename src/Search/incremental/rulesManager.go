package incremental

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

type RulesManager struct {
	atomicRules    RuleList
	atomicNotRules RuleList
	alphaRules     RuleList
	betaRules      RuleList
	gammaRules     RuleList
	deltaRules     RuleList

	reintroRules *ReintroRuleList

	metaVariables Lib.List[AST.Meta]

	appliedRule    Rule
	resultingRules []RuleList
}

func makeRulesManager() *RulesManager {
	manager := &RulesManager{reintroRules: &ReintroRuleList{}, metaVariables: Lib.NewList[AST.Meta]()}

	return manager
}

func (rm *RulesManager) onlyReintroOrClosureLeft() bool {
	return len(rm.alphaRules) == 0 && len(rm.betaRules) == 0 && len(rm.gammaRules) == 0 && len(rm.deltaRules) == 0
}

func (rm *RulesManager) insertForm(formula AST.Form) {
	rule := makeCorrectRule(formula, Lib.NewList[AST.Term]())
	rm.insertIntoCorrectSlice(rule)
}

func (rm *RulesManager) insertIntoCorrectSlice(rules ...Rule) {
	for _, rule := range rules {
		formula := rule.GetForm()

		switch Core.ShowKindOfRule(formula) {
		case Core.Atomic:
			switch formula.(type) {
			case AST.Not:
				rm.atomicNotRules = Glob.AppendIfNotContains(rm.atomicNotRules, rule)
			default:
				rm.atomicRules = Glob.AppendIfNotContains(rm.atomicRules, rule)
			}
		case Core.Alpha:
			rm.alphaRules = Glob.AppendIfNotContains(rm.alphaRules, rule)
		case Core.Beta:
			rm.betaRules = Glob.AppendIfNotContains(rm.betaRules, rule)
		case Core.Gamma:
			rm.gammaRules = Glob.AppendIfNotContains(rm.gammaRules, rule)
		case Core.Delta:
			rm.deltaRules = Glob.AppendIfNotContains(rm.deltaRules, rule)
		}
	}
}

func (rm *RulesManager) copyAppliableRules(other *RulesManager) {
	rm.atomicRules = append(rm.atomicRules, other.atomicRules...)
	rm.atomicNotRules = append(rm.atomicNotRules, other.atomicNotRules...)
	rm.alphaRules = append(rm.alphaRules, other.alphaRules...)
	rm.betaRules = append(rm.betaRules, other.betaRules...)
	rm.gammaRules = append(rm.gammaRules, other.gammaRules...)
	rm.deltaRules = append(rm.deltaRules, other.deltaRules...)
}

func (rm *RulesManager) removeRule(rule Rule) {
	rm.atomicRules = rm.atomicRules.RemoveIfContains(rule)
	rm.atomicNotRules = rm.atomicNotRules.RemoveIfContains(rule)
	rm.alphaRules = rm.alphaRules.RemoveIfContains(rule)
	rm.betaRules = rm.betaRules.RemoveIfContains(rule)
	rm.gammaRules = rm.gammaRules.RemoveIfContains(rule)
	rm.deltaRules = rm.deltaRules.RemoveIfContains(rule)
}

func (rm *RulesManager) applyCorrectRule() (resultManagers []RulesManager, isClosure bool, closingSubs SubList) {
	applied, resultManagers, success, closingSubs := rm.tryClosureRules()

	if success {
		rm.appliedRule = applied
		rm.resultingRules = []RuleList{}

		return resultManagers, success, closingSubs
	} else {
		return rm.applyNonClosureRule()
	}
}

func (rm *RulesManager) applyNonClosureRule() (resultManagers []RulesManager, isClosure bool, closingSubs SubList) {
	var resultRules []RuleList

	success, applied, resultRules, resultManagers := rm.tryToApply(rm.alphaRules)

	if !success {
		success, applied, resultRules, resultManagers = rm.tryToApply(rm.deltaRules)
	}

	if !success {
		success, applied, resultRules, resultManagers = rm.tryToApply(rm.betaRules)
	}

	if !success {
		success, applied, resultRules, resultManagers = rm.tryToApply(rm.gammaRules)
	}

	if success {
		rm.appliedRule = applied
		rm.resultingRules = resultRules
	}

	return resultManagers, false, SubList{}
}

func (rm *RulesManager) applyReintroductionRule() (success bool, resultManagers []RulesManager) {
	success, applied, resultRules, resultManagers := rm.reintroRules.TryToApply(rm)
	rm.appliedRule = applied
	rm.resultingRules = resultRules

	switch typed := applied.(type) {
	case GammaRule:
		rm.metaVariables.Append(typed.getGeneratedMetas().GetSlice()...)
		rm.reintroRules.AddReintro(typed)
	}

	return success, resultManagers
}

func (rm *RulesManager) tryClosureRules() (rule Rule, results []RulesManager, success bool, closingSubs SubList) {
	if rule := rm.tryTrivialClosureRules(); rule != nil {
		return rule, []RulesManager{}, true, SubList{SubJoker}
	}

	if rule := rm.tryComplementaryClosureRules(); rule != nil {
		return rule, []RulesManager{}, true, SubList{SubJoker}
	}

	if rule, subs := rm.trySubstitutionClosureRules(); rule != nil {
		return rule, []RulesManager{}, true, subs
	}

	return rule, []RulesManager{}, false, SubList{}
}

func (rm *RulesManager) tryTrivialClosureRules() Rule {
	for _, rule := range rm.atomicRules {
		switch rule.(type) {
		case *Bot:
			return rule
		}
	}

	for _, rule := range rm.atomicNotRules {
		switch rule.(type) {
		case *NotTop:
			return rule
		}
	}

	return nil
}

func (rm *RulesManager) tryComplementaryClosureRules() Rule {
	for _, posRule := range rm.atomicRules {
		for _, negRule := range rm.atomicNotRules {
			if posForm, isPred := posRule.GetForm().(AST.Pred); isPred {
				switch negForm := negRule.GetForm().(type) {
				case AST.Not:
					if trueNegForm, isPred := negForm.GetForm().(AST.Pred); isPred && posForm.Equals(trueNegForm) {
						return posRule
					}
				}
			}
		}
	}

	return nil
}

func (rm *RulesManager) trySubstitutionClosureRules() (applied Rule, subs SubList) {
	positiveRules, negativeRules := rm.getAtomicsWithoutTopOrBottom()

	negTree := new(Unif.Node).MakeDataStruct(negativeRules.GetFormList(), false)

	substitutions := []Unif.MatchingSubstitutions{}

	for _, posRule := range positiveRules {
		success, currentSubst := negTree.Unify(posRule.GetForm())
		if success {
			substitutions = append(substitutions, currentSubst...)
			applied = posRule
		}
	}

	for _, substitution := range substitutions {
		subs = append(subs, NewFromOldSub(substitution))
	}

	return applied, subs
}

func (rm *RulesManager) getAtomicsWithoutTopOrBottom() (pos, neg RuleList) {
	for _, rule := range rm.atomicRules {
		switch rule.(type) {
		case *Top, *Bot:
		default:
			pos = append(pos, rule)
		}
	}

	for _, rule := range rm.atomicNotRules {
		switch rule.(type) {
		case *NotTop, *NotBot:
		default:
			neg = append(neg, rule)
		}
	}

	return pos, neg
}

func (rm *RulesManager) tryToApply(category RuleList) (success bool, applied Rule, resultRules []RuleList, resultManagers []RulesManager) {
	success, applied, resultRules = category.TryToApply()

	if success {
		for _, branch := range resultRules {
			copy := makeRulesManager()
			copy.copyAppliableRules(rm)
			copy.removeRule(applied)
			copy.insertIntoCorrectSlice(branch...)

			copy.metaVariables.Append(rm.metaVariables.GetSlice()...)
			switch typed := applied.(type) {
			case GammaRule:
				copy.metaVariables.Append(typed.getGeneratedMetas().GetSlice()...)
				rm.reintroRules.AddReintro(typed)
			}
			copy.reintroRules = rm.reintroRules.Copy()

			resultManagers = append(resultManagers, *copy)
		}
	}

	return success, applied, resultRules, resultManagers
}

func (rm *RulesManager) ToString() string {
	str := "~~~~Rule Manager~~~~\n"

	if len(rm.atomicRules) > 0 {
		str += "| Atomic Rules: " + rm.atomicRules.GetFormList().ToString() + "\n"
	}
	if len(rm.atomicNotRules) > 0 {
		str += "| Negative Atomic Rules: " + rm.atomicNotRules.GetFormList().ToString() + "\n"
	}
	if len(rm.alphaRules) > 0 {
		str += "| Alpha Rules: " + rm.alphaRules.GetFormList().ToString() + "\n"
	}
	if len(rm.deltaRules) > 0 {
		str += "| Delta Rules: " + rm.deltaRules.GetFormList().ToString() + "\n"
	}
	if len(rm.betaRules) > 0 {
		str += "| Beta Rules: " + rm.betaRules.GetFormList().ToString() + "\n"
	}
	if len(rm.gammaRules) > 0 {
		str += "| Gamma Rules: " + rm.gammaRules.GetFormList().ToString() + "\n"
	}
	if len(rm.reintroRules.reintroRules) > 0 {
		str += "| Reintro Rules: " + rm.reintroRules.ToString() + "\n"
	}

	if rm.appliedRule != nil {
		str += "| Applied Rule: " + rm.appliedRule.GetForm().ToString() + "\n"
	}

	return str + "~~~~~~~~~~~~~~~~~~~~"
}
