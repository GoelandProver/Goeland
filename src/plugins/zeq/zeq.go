// There some things to do, search [TODO]

package zeq

import (
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

func Enable() {
	global.PrintInfo("ZEQ", "ZEQ plugin enabled")
	search.SetApplyRules(zeqApplyRules)
}

/* Apply rules with priority (closure < rewrite < alpha < equality < delta < closure with mm < beta < gamma) */
func zeqApplyRules(fatherId uint64, state complextypes.State, c search.Communication, newAtomics basictypes.FormAndTermsList, currentNodeId int, originalNodeId int, metaToReintroduce []int) {

	global.PrintInfo("ZEQ", "Apply rules")
	if typed, ok := search.UsedSearch.(*search.DestructiveSearch); ok {
		typed.ApplyRules(fatherId, state, c, newAtomics, currentNodeId, originalNodeId, metaToReintroduce)
	}
}
