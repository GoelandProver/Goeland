package zeq

import (
	"fmt"

	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

// [TEMP] Here because of "cannot define new methods on non-local type search.DestructiveSearch" if not present
type zeqDs struct {
	search.DestructiveSearch
}

var ZeqRules = search.ConditionalRule{
	If: func(args *search.ConditionalRuleArgs) bool {
		return len(args.State.GetZeq()) > 0 // [TODO] to be defined, currently it doesn't seem that we can validate this condition
	},
	Then: func(args *search.ConditionalRuleArgs) {
	},
}

var rules = search.ConditionalRuleSwitch{
	Cases: []search.ConditionalRule{
		search.AtomicRules,
		search.AlphaRules,
		ZeqRules,
		search.DeltaRules,
		search.BetaRules,
		search.GammaRules,
	},
}

func Enable() {
	global.PrintInfo("ZEQ", "ZEQ plugin enabled")
	// Ici PrintInfo printera 9223372036.854776s, juste ici, idk why
	search.SetRulesToApply(rules)
}

// [TEMP] Maybe we should use a manageRuleArgs struct instead of passing all these arguments
func (ds *zeqDs) manageZeqRules(fatherId uint64, state complextypes.State, c search.Communication, originalNodeId int) {
	global.PrintDebug("PS", "Zeq rule")
	hdf := state.GetZeq()[0]
	global.PrintDebug("PS", fmt.Sprintf("Rule applied on : %s", hdf.ToString()))
	state.SetZeq(state.GetZeq()[1:])
	resultForms := ApplyZeqRules(hdf, &state)
	state.SetLF(resultForms)

	// Proof
	// [TODO] need to be done to display the proof
	/*
		state.SetCurrentProofFormula(hdf)
		childId := global.IncrCptNode()
		state.SetCurrentProofResultFormulas([]proof.IntFormAndTermsList{proof.MakeIntFormAndTermsList(childId, resultForms)})
		tate.SetProof(append(state.GetProof(), state.GetCurrentProof()))

		ds.ProofSearch(fatherId, state, c, complextypes.MakeEmptySubstAndForm(), childId, originalNodeId, []int{})
	*/
}

// [TODO] need to be change to take zeqtypes and note basictypes
func ApplyZeqRules(fnt basictypes.FormAndTerms, state *complextypes.State) basictypes.FormAndTermsList {
	var result basictypes.FormAndTermsList

	form := fnt.GetForm()
	terms := fnt.GetTerms()

	switch formTyped := form.(type) {
	case basictypes.Not:
		if typed, ok := formTyped.GetForm().(basictypes.Pred); ok && typed.GetID().Equals(basictypes.Id_eq) {
			result = applyZeqNeqRule(typed, state, terms, result)
		}
	case basictypes.Pred:
		result = applyZeqEqRule(formTyped, state, terms, result)
	}

	return result
}

// Ici j'ai changé le type de "form" pour que ça prenne un prédicat
func applyZeqEqRule(form basictypes.Pred, state *complextypes.State, terms basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	search.SetStateRules(state, "EQ")

	return result

}

// Ici j'ai changé le type de "form" pour que ça prenne un prédicat
func applyZeqNeqRule(form basictypes.Pred, state *complextypes.State, terms basictypes.TermList, result basictypes.FormAndTermsList) basictypes.FormAndTermsList {
	search.SetStateRules(state, "NEQ")

	return result
}

/*
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
*/
