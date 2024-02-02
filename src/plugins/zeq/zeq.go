package zeq

import (
	"fmt"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
	proof "github.com/GoelandProver/Goeland/visualization_proof"
)
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

func manageZeqRules(ds *search.DestructiveSearch, fatherId uint64, state complextypes.State, c search.Communication, currentNodeId int, originalNodeId int, metaToReintroduce []int) {
	global.PrintDebug("PS", "Zeq rule")
	hdf := state.GetZeq()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))

	reslf := ApplyZeqRules(hdf, &state)
	childIds := []int{}

	state.SetCurrentProofFormula(hdf)
	intFormLists := []proof.IntFormAndTermsList{}
	for _, fl := range reslf {
		intFormLists = append(intFormLists, proof.MakeIntFormAndTermsList(global.IncrCptNode(), fl))
	}

	var channels []search.Communication
	for _, fl := range intFormLists {
		otherState := state.Copy()
		otherState.SetZeq(state.GetZeq()[1:])
		otherState.SetLF(fl.GetFL())
		childIds = append(childIds, fl.GetI())
		channelChild := search.Communication{make(chan bool), make(chan Result)}
		channels = append(channels, channelChild)
		go ds.ProofSearch(global.GetGID(), otherState, channelChild, complextypes.MakeEmptySubstAndForm(), fl.GetI(), fl.GetI(), []int{})

		// Je lance une goroutine pr chaque fils.

		global.IncrGoRoutine(1)
		global.PrintDebug("PS", fmt.Sprintf("GO %v !", fl.GetI()))
	}
}

func ApplyZeqRules(fnt basictypes.FormAndTerms, state *complextypes.State) []basictypes.FormAndTermsList {
	var result []basictypes.FormAndTermsList

	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch formTyped := form.(type) {
	case basictypes.Not:
		result = applyBetaNotRule(formTyped, state, terms, result)
	case basictypes.Or:
		result = applyBetaOrRule(formTyped, state, terms, result)
	case basictypes.Imp:
		result = applyBetaImpRule(formTyped, state, terms, result)
	case basictypes.Equ:
		result = applyBetaEquRule(formTyped, state, terms, result)
	}

	return result
}
