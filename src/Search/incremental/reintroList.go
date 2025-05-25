package incremental

import (
	"strconv"

	"github.com/GoelandProver/Goeland/Glob"
)

type ReintroRuleList struct {
	reintroRules  []GammaRule
	reintroAmount []int
}

func (rrl *ReintroRuleList) AddReintro(rule GammaRule) {
	if !Glob.Contains[GammaRule](rrl.reintroRules, rule) {
		rrl.reintroRules = append(rrl.reintroRules, rule)
		rrl.reintroAmount = append(rrl.reintroAmount, 0)
	}
}

func (rrl *ReintroRuleList) Copy() *ReintroRuleList {
	reintrosCopy := []GammaRule{}
	limitsCopy := []int{}

	for i := range rrl.reintroRules {
		reintrosCopy = append(reintrosCopy, rrl.reintroRules[i])
		limitsCopy = append(limitsCopy, rrl.reintroAmount[i])
	}

	return &ReintroRuleList{reintrosCopy, limitsCopy}
}

func (rrl *ReintroRuleList) TryToApply(original *RulesManager) (success bool, applied Rule, resultRules []RuleList, resultManagers []RulesManager) {
	if !rrl.IsEmpty() {
		index := 0
		best := rrl.reintroRules[index]
		min := rrl.reintroAmount[index]

		for i := range rrl.reintroRules {
			if min > rrl.reintroAmount[i] {
				index = i
				best = rrl.reintroRules[index]
				min = rrl.reintroAmount[index]
			}
		}

		best = best.Copy()
		copy := makeRulesManager()
		copy.copyAppliableRules(original)
		copy.reintroRules = rrl.Copy()
		copy.reintroRules.reintroAmount[index]++
		copy.metaVariables.Append(original.metaVariables.GetSlice()...)
		copy.insertIntoCorrectSlice(best)

		return copy.tryToApply(copy.gammaRules)
	}

	return false, nil, nil, []RulesManager{}
}

func (rrl *ReintroRuleList) IsEmpty() bool {
	return len(rrl.reintroRules) == 0
}

func (rrl *ReintroRuleList) ToString() string {
	str := "{"

	for i := range rrl.reintroAmount {
		str += strconv.Itoa(rrl.reintroAmount[i]) + ": " + rrl.reintroRules[i].GetForm().ToString() + ", "
	}

	return str[:len(str)-2] + "}"
}

func (rrl *ReintroRuleList) LimitToString() string {
	str := "{"

	for i := range rrl.reintroAmount {
		str += strconv.Itoa(rrl.reintroAmount[i]) + ", "
	}

	return str[:len(str)-2] + "}"
}
