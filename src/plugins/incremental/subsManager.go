package incremental

import (
	"sync"

	"github.com/GoelandProver/Goeland/global"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type SubsManager interface {
	AddClosingSubsForFather(SubList)
	addClosingSubs(SubList, int)
	sendClosingSubsToFather()
	getCompatibleSubs() SubList
	GetApplicableSubs() (basictypes.MetaList, basictypes.TermList)
	tryingAgain()
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

func getApplicableSubs(sm SubsManager) (basictypes.MetaList, basictypes.TermList) {
	return sm.GetApplicableSubs()
}

type SimpleSubsManager struct {
	node *SearchNode

	closingSubsForEachChild []SubList
	childAmount             int
}

func newSubsManager(node *SearchNode) *SimpleSubsManager {
	return newSubsManagerWithChild(node, 1)
}

func newSubsManagerWithChild(node *SearchNode, childAmount int) *SimpleSubsManager {
	return &SimpleSubsManager{node, make([]SubList, childAmount), childAmount}
}

func (ssm *SimpleSubsManager) AddClosingSubsForFather(subs SubList) {
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

func (ssm *SimpleSubsManager) GetApplicableSubs() (ml basictypes.MetaList, tl basictypes.TermList) {
	if !ssm.node.isRoot() {
		return getApplicableSubs(ssm.node.father.subsManager)
	}
	return ml, tl
}

func (ssm *SimpleSubsManager) tryingAgain() {
	ssm.closingSubsForEachChild = make([]SubList, ssm.childAmount)
}

type BranchingSubsManager struct {
	*SimpleSubsManager

	counter *global.SyncCounter

	mutex sync.Mutex
}

func newBranchingSubsManager(node *SearchNode, childAmount int) *BranchingSubsManager {
	counter := global.NewEmptySyncCounter()
	bsm := &BranchingSubsManager{newSubsManagerWithChild(node, childAmount), counter, sync.Mutex{}}

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

	metas      basictypes.MetaList
	subsitutes basictypes.TermList
}

func newRootSubsManager(node *SearchNode, metas basictypes.MetaList) *IntroSubsManager {
	return &IntroSubsManager{newSubsManager(node), metas, basictypes.TermList{}}
}

func (gsm *IntroSubsManager) GetApplicableSubs() (metas basictypes.MetaList, terms basictypes.TermList) {
	metas, terms = getApplicableSubs(gsm.SimpleSubsManager)
	metas = append(metas, gsm.metas...)
	terms = append(terms, gsm.subsitutes...)

	return metas, terms
}
