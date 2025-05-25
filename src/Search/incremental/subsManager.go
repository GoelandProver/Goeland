package incremental

import (
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
)

type SubsManager interface {
	AddClosingSubsForFather(SubList)
	addClosingSubs(SubList, int)
	sendClosingSubsToFather()
	getCompatibleSubs() SubList
	GetApplicableSubs() (Lib.List[AST.Meta], Lib.List[AST.Term])
	tryingAgain()
	getDoneSubs() SubList
	addDoneSubs(SubList)
	hasNewSubs(SubList) bool
}

func addClosingSubsForFather(sm SubsManager, subs SubList) {
	sm.AddClosingSubsForFather(subs)
}

func addClosingSubs(sm SubsManager, subs SubList, index int) {
	sm.addClosingSubs(subs, index)
}

func sendClosingSubsToFather(sm SubsManager) {
	sm.sendClosingSubsToFather()
}

func getCompatibleSubs(sm SubsManager) SubList {
	return sm.getCompatibleSubs()
}

func getApplicableSubs(sm SubsManager) (Lib.List[AST.Meta], Lib.List[AST.Term]) {
	return sm.GetApplicableSubs()
}

type SimpleSubsManager struct {
	node *SearchNode

	closingSubsForEachChild []SubList
	childAmount             int

	doneSubs SubList
}

func newSubsManager(node *SearchNode, doneSubs SubList) *SimpleSubsManager {
	return newSubsManagerWithChild(node, 1, doneSubs)
}

func newSubsManagerWithChild(node *SearchNode, childAmount int, doneSubs SubList) *SimpleSubsManager {
	return &SimpleSubsManager{node, make([]SubList, childAmount), childAmount, doneSubs}
}

func (ssm *SimpleSubsManager) AddClosingSubsForFather(subs SubList) {
	ssm.addDoneSubs(subs)
	addClosingSubs(ssm.node.father.subsManager, subs, ssm.node.childNb)
}

func (ssm *SimpleSubsManager) addClosingSubs(subs SubList, childIndex int) {
	ssm.closingSubsForEachChild[childIndex] = ssm.closingSubsForEachChild[childIndex].AppendIfNotContains(subs...)
	sendClosingSubsToFather(ssm)
}

func (ssm *SimpleSubsManager) sendClosingSubsToFather() {
	if !ssm.node.isRoot() {
		compatibleSubs := getCompatibleSubs(ssm)

		if len(compatibleSubs) > 0 {
			addClosingSubsForFather(ssm, compatibleSubs)
		}
	}
}

func (ssm *SimpleSubsManager) getCompatibleSubs() SubList {
	compatibleSubs := ssm.closingSubsForEachChild[0]

	for i := 1; i < len(ssm.closingSubsForEachChild); i++ {
		compatibleSubs = getCompatibleBetween(compatibleSubs, ssm.closingSubsForEachChild[i])
	}

	compatibleSubs = addMissingMetas(compatibleSubs, ssm.node.rulesManager.metaVariables)

	return compatibleSubs
}

func (ssm *SimpleSubsManager) GetApplicableSubs() (ml Lib.List[AST.Meta], tl Lib.List[AST.Term]) {
	if !ssm.node.isRoot() {
		return getApplicableSubs(ssm.node.father.subsManager)
	}
	return ml, tl
}

func (ssm *SimpleSubsManager) tryingAgain() {
	ssm.closingSubsForEachChild = make([]SubList, ssm.childAmount)
}

func (ssm *SimpleSubsManager) getDoneSubs() SubList {
	return ssm.doneSubs
}

func (ssm *SimpleSubsManager) addDoneSubs(doneSubs SubList) {
	ssm.doneSubs = ssm.doneSubs.AppendIfNotContains(doneSubs...)
}

func (ssm *SimpleSubsManager) hasNewSubs(doneSubs SubList) bool {
	if len(ssm.doneSubs) == 0 {
		return true
	}

	for _, subs := range doneSubs {
		if !ssm.doneSubs.Contains(subs) {
			return true
		}
	}

	return false
}

type BranchingSubsManager struct {
	*SimpleSubsManager

	counter *Glob.SyncCounter

	mutex sync.Mutex
}

func newBranchingSubsManager(node *SearchNode, childAmount int, doneSubs SubList) *BranchingSubsManager {
	counter := Glob.NewEmptySyncCounter()
	bsm := &BranchingSubsManager{newSubsManagerWithChild(node, childAmount, doneSubs), counter, sync.Mutex{}}

	counter.SetWhenFinished(bsm.sendClosingSubsToFather)

	for i := 0; i < childAmount; i++ {
		counter.Increment()
	}

	return bsm
}

func (bsm *BranchingSubsManager) addClosingSubs(subs SubList, childIndex int) {
	defer bsm.counter.Decrement()

	bsm.mutex.Lock()
	defer bsm.mutex.Unlock()

	bsm.closingSubsForEachChild[childIndex] = bsm.closingSubsForEachChild[childIndex].AppendIfNotContains(subs...)
}

func (bsm *BranchingSubsManager) sendClosingSubsToFather() {
	compatibleSubs := getCompatibleSubs(bsm)

	if len(compatibleSubs) > 0 {
		if !bsm.node.isRoot() {
			addClosingSubsForFather(bsm, compatibleSubs)
		}
	} else {
		for range bsm.node.children {
			bsm.counter.Increment()
		}

		allKeepGoing(bsm.node.children...)
	}
}

func (bsm *BranchingSubsManager) getCompatibleSubs() SubList {
	bsm.mutex.Lock()
	defer bsm.mutex.Unlock()

	return getCompatibleSubs(bsm.SimpleSubsManager)
}

func (bsm *BranchingSubsManager) tryingAgain() {
	bsm.counter.Empty()
	for range bsm.node.children {
		bsm.counter.Increment()
	}

	bsm.SimpleSubsManager.tryingAgain()
}

type IntroSubsManager struct {
	*SimpleSubsManager

	metas      Lib.List[AST.Meta]
	subsitutes Lib.List[AST.Term]
}

func newIntroSubsManager(node *SearchNode, metas Lib.List[AST.Meta], doneSubs SubList) *IntroSubsManager {
	return &IntroSubsManager{
		newSubsManager(node, doneSubs),
		metas,
		Lib.NewList[AST.Term](),
	}
}

func (gsm *IntroSubsManager) GetApplicableSubs() (
	metas Lib.List[AST.Meta],
	terms Lib.List[AST.Term],
) {
	metas, terms = getApplicableSubs(gsm.SimpleSubsManager)
	metas.Append(gsm.metas.GetSlice()...)
	terms.Append(gsm.subsitutes.GetSlice()...)

	return metas, terms
}
