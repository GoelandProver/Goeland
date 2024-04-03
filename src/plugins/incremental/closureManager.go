package incremental

type ClosureManager interface {
	sendClosureInfo(bool, SubList)
	setNothingToDo()
	tryingAgain()
	shouldDoSearch() bool
	shouldKeepGoing() bool
	isNodeImpossible() bool
	isNodeClosed() bool
	isTreeClosed() bool
}

var treeImpossible = false

type SimpleClosureManager struct {
	node *SearchNode

	isClosed               bool
	isFinishedAndNotClosed bool
	closingSubs            SubList
	closingRule            Rule
}

func newClosureManager(node *SearchNode) ClosureManager {
	return &SimpleClosureManager{node, false, false, SubList{}, nil}
}

func (scm *SimpleClosureManager) sendClosureInfo(isClosure bool, subs SubList) {
	scm.isClosed = isClosure
	scm.closingSubs = subs
	if scm.isClosed {
		scm.closingRule = scm.node.rulesManager.appliedRule
	}
}

func (scm *SimpleClosureManager) setNothingToDo() {
	scm.isFinishedAndNotClosed = true
	scm.isClosed = false
	if scm.isNodeImpossible() {
		treeImpossible = true
	}
}

func (scm *SimpleClosureManager) tryingAgain() {
	scm.isFinishedAndNotClosed = false
	scm.isClosed = false
}

func (scm *SimpleClosureManager) shouldDoSearch() bool {
	return !scm.isClosed && !scm.isFinishedAndNotClosed && !treeImpossible
}

func (scm *SimpleClosureManager) shouldKeepGoing() bool {
	isJoker := false
	if len(scm.closingSubs) > 0 {
		isJoker = scm.closingSubs[0] == SubJoker
	}
	return (!isJoker || !scm.isClosed) && !treeImpossible
}

func (scm *SimpleClosureManager) isNodeImpossible() bool {
	return scm.node.rulesManager.reintroRules.IsEmpty() && scm.isFinishedAndNotClosed
}

func (scm *SimpleClosureManager) isNodeClosed() bool {
	return scm.isClosed
}

func (scm *SimpleClosureManager) isTreeClosed() bool {
	if len(scm.node.children) > 0 {
		result := true

		for _, child := range scm.node.children {
			result = result && child.closureManager.isTreeClosed()
		}

		return result
	} else {
		return scm.isNodeClosed()
	}
}
