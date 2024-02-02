package zeq

import (
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

func Enable() {
	global.PrintInfo("ZEQ", "ZEQ plugin enabled")
	// Ici PrintInfo printera 9223372036.854776s, juste ici, idk why
	search.SetApplyRules(zeqApplyRules)
}

/* Apply rules with priority (closure < rewrite < alpha < equality < delta < closure with mm < beta < gamma) */
func zeqApplyRules(fatherId uint64, state complextypes.State, c search.Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {

	var args = search.ApplyRulesArgs{ // [TEMP]: Again, this is very suboptimal
		fatherId,
		state,
		c,
		newAtomics,
		currentNodeId,
		originalNodeId,
		metaToReintroduce,
	}

	global.PrintInfo("ZEQ", "Apply rules")
	if typed, ok := search.UsedSearch.(*search.DestructiveSearch); ok {

		typed.NewApplyRules(&args, search.ConditionalsRulesList)
	}
}
