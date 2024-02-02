package zeq

import (
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
)

var ZeqRules = search.ConditionalsRules{
	Condition: func(args *search.ApplyRulesArgs) bool {
		return len(args.State.GetZeq()) > 0
	},
	Rules: func(ds *search.DestructiveSearch, args *search.ApplyRulesArgs) {
	},
}

var conditionalsRulesList = []search.ConditionalsRules{
	search.AtomicRules,
	search.AlphaRules,
	ZeqRules,
	search.DeltaRules,
	search.BetaRules,
	search.GammaRules,
}

func Enable() {
	global.PrintInfo("ZEQ", "ZEQ plugin enabled")
	// Ici PrintInfo printera 9223372036.854776s, juste ici, idk why
	search.SetRulesToApply(conditionalsRulesList)
}
