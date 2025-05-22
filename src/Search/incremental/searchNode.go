package incremental

import (
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Search"
)

type SearchNode struct {
	id int

	father  *SearchNode
	childNb int

	children []*SearchNode

	rulesManager   *RulesManager
	subsManager    SubsManager
	closureManager ClosureManager
}

var rootSearchNode *SearchNode

var searchNodeIdCounter = 0
var idMutex sync.Mutex

func getNewSearchNodeId() int {
	idMutex.Lock()
	defer idMutex.Unlock()

	current := searchNodeIdCounter
	searchNodeIdCounter++
	return current
}

func resetSearchTree(formula AST.Form) {
	searchNodeIdCounter = 0
	newRootSearchNode(formula)
}

func newRootSearchNode(formula AST.Form) *SearchNode {
	rulesManager := makeRulesManager()
	rulesManager.insertForm(formula)

	root := newSearchNode(nil, rulesManager)
	root.father = root

	rootSearchNode = root
	return root
}

func newSearchNode(father *SearchNode, manager *RulesManager) *SearchNode {
	node := &SearchNode{
		id:           getNewSearchNodeId(),
		father:       father,
		children:     []*SearchNode{},
		rulesManager: manager,
	}

	doneSubs := SubList{}
	if father != nil {
		doneSubs = father.subsManager.getDoneSubs()
	}

	node.subsManager = newSubsManager(node, doneSubs)
	node.closureManager = newClosureManager(node)
	return node
}

func (sn *SearchNode) NewChildSearchNode(manager RulesManager) *SearchNode {
	child := newSearchNode(sn, &manager)
	child.childNb = len(sn.children)

	sn.children = append(sn.children, child)

	return child
}

func allDoParallelAlgo(algo func(*SearchNode), nodes ...*SearchNode) {
	for range nodes {
		searchNodeCounter.Increment()
	}

	for i, node := range nodes {
		if i == 0 {
			algo(node)
		} else {
			go algo(node)
		}
	}
}

func doSearch(node *SearchNode) {
	defer searchNodeCounter.Decrement()

	if node.closureManager.shouldDoSearch() {
		node.search()
	} else {
		node.subsManager.sendClosingSubsToFather()
	}
}

func doKeepGoing(node *SearchNode) {
	defer searchNodeCounter.Decrement()

	if node.closureManager.shouldKeepGoing() {
		node.nonClosureSearch()
	} else {
		node.subsManager.sendClosingSubsToFather()
	}
}

func (sn *SearchNode) search() {
	newManagers, isClosure, subs := sn.rulesManager.applyCorrectRule()
	sn.processAppliedRule(newManagers, isClosure, subs)
}

func (sn *SearchNode) nonClosureSearch() {
	newManagers, isClosure, subs := sn.rulesManager.applyNonClosureRule()
	sn.processAppliedRule(newManagers, isClosure, subs)
}

func (sn *SearchNode) processAppliedRule(newManagers []RulesManager, isClosure bool, subs SubList) {
	if isClosure || len(newManagers) > 0 {
		sn.continueSearch(newManagers, isClosure, subs)
	} else if sn.rulesManager.onlyReintroOrClosureLeft() {
		sn.tryReintroduction()
	} else {
		sn.closureManager.setNothingToDo()
	}
}

func (sn *SearchNode) tryReintroduction() {
	success, newManagers := sn.rulesManager.applyReintroductionRule()

	if success {
		sn.continueSearch(newManagers, false, SubList{})
	} else {
		sn.closureManager.setNothingToDo()
	}
}

func (sn *SearchNode) continueSearch(newManagers []RulesManager, isClosure bool, subs SubList) {
	switch rule := sn.rulesManager.appliedRule.(type) {
	case GammaRule:
		metas := rule.getGeneratedMetas()
		sn.subsManager = newIntroSubsManager(sn, metas, sn.father.subsManager.getDoneSubs())
	case *BetaEqu, *BetaImp, *BetaNotAnd, *BetaNotEqu, *BetaOr:
		sn.subsManager = newBranchingSubsManager(sn, len(newManagers), sn.father.subsManager.getDoneSubs())
	}

	sn.closureManager.sendClosureInfo(isClosure, subs)

	if isClosure {
		if sn.subsManager.hasNewSubs(subs) {
			sn.subsManager.AddClosingSubsForFather(subs)
		} else {
			sn.nonClosureSearch()
		}
	} else {
		sn.children = []*SearchNode{}

		for _, manager := range newManagers {
			sn.NewChildSearchNode(manager)
		}

		allDoParallelAlgo(doSearch, sn.children...)
	}
}

func allKeepGoing(nodes ...*SearchNode) {
	for range nodes {
		searchNodeCounter.Increment()
	}

	for _, node := range nodes {
		node.keepGoing()
	}
}

func (sn *SearchNode) keepGoing() {
	if len(sn.children) > 0 {
		sn.subsManager.tryingAgain()
		sn.closureManager.tryingAgain()
		allKeepGoing(sn.children...)
		searchNodeCounter.Decrement()
	} else {
		go doKeepGoing(sn)
	}
}

func (sn *SearchNode) getResult() (result bool, finalProof []Search.ProofStruct) {
	<-searchNodeCounter.channel

	result = sn.closureManager.isTreeClosed()

	intersecting := sn.subsManager.getCompatibleSubs()
	intersecting = intersecting.InstanciateAny()

	chosenSub := &Sub{}
	if len(intersecting) > 0 {
		chosenSub = intersecting[0]
	}

	if result {
		finalProof = sn.getProofStruct(chosenSub)
	}

	return result, finalProof
}

func (sn *SearchNode) getProofStruct(chosenSub *Sub) []Search.ProofStruct {
	everyStep := []Search.ProofStruct{}
	thisStep := Search.ProofStruct{}

	thisStep.Rule_name, thisStep.Rule = sn.rulesManager.appliedRule.GetRuleStrings()
	thisStep.Node_id = sn.id

	metas, terms := chosenSub.GetAsMetasAndTerms()

	thisStep.Formula = sn.getFormula().SubstituteBy(metas, terms)

	resultFormulas := []Search.IntFormAndTermsList{}
	for _, form := range sn.getResultFormulas() {
		x := form.SubstituteBy(metas, terms)
		resultFormulas = append(resultFormulas, x)
	}
	thisStep.Result_formulas = resultFormulas

	switch {
	case len(sn.children) > 1:
		for _, child := range sn.children {
			thisStep.Children = append(thisStep.Children, child.getProofStruct(chosenSub))
		}
		everyStep = append(everyStep, thisStep)
	case len(sn.children) == 1:
		everyStep = append(everyStep, thisStep)
		nextStep := sn.children[0].getProofStruct(chosenSub)
		everyStep = append(everyStep, nextStep...)
	case len(sn.children) == 0:
		everyStep = append(everyStep, thisStep)
	}

	return everyStep
}

func (sn *SearchNode) getFormula() Core.FormAndTerms {
	return sn.rulesManager.appliedRule.ToFormula()
}

func (sn *SearchNode) getResultFormulas() []Search.IntFormAndTermsList {
	result := []Search.IntFormAndTermsList{}

	for i, branch := range sn.rulesManager.resultingRules {
		id := sn.children[i].id
		list := Core.MakeEmptyFormAndTermsList()

		for _, rule := range branch {
			list = append(list, Core.MakeFormAndTerm(rule.GetForm(), rule.GetTerms()))
		}

		result = append(result, Search.MakeIntFormAndTermsList(id, list))
	}

	return result
}

func (sn *SearchNode) isRoot() bool {
	return sn == sn.father
}
