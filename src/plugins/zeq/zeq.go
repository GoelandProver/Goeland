package zeq

import (
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
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

/* Apply rules with priority (closure < rewrite < alpha < equality < delta < closure with mm < beta < gamma) */
func zeqApplyRules(fatherId uint64, state complextypes.State, c search.Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {

	var args = search.ApplyRulesArgs{ // [TEMP]: Again, this is very suboptimal
		FatherId:          fatherId,
		State:             state,
		C:                 c,
		NewAtomics:        newAtomics,
		CurrentNodeId:     currentNodeId,
		OriginalNodeId:    originalNodeId,
		MetaToReintroduce: metaToReintroduce,
	}

	global.PrintInfo("ZEQ", "Apply rules")
	if typed, ok := search.UsedSearch.(*search.DestructiveSearch); ok {

		typed.ApplyRules(&args, conditionalsRulesList)
	}
}
