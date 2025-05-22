package incremental

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Search"
	"github.com/GoelandProver/Goeland/Unif"
)

type incrementalSearch struct{}

func NewIncrementalSearch() Search.SearchAlgorithm {
	return &incrementalSearch{}
}

func (is *incrementalSearch) Search(formula AST.Form, bound int) bool {
	resetSearchTree(formula)
	go allDoParallelAlgo(doSearch, rootSearchNode)
	resultFound := is.handleSearchResults()

	return resultFound
}

func (is *incrementalSearch) handleSearchResults() bool {
	resultFound, finalProof := rootSearchNode.getResult()

	Search.PrintProof(finalProof, AST.NewMetaList())

	return resultFound
}

func (is *incrementalSearch) SetApplyRules(func(uint64, Search.State, Search.Communication, Core.FormAndTermsList, int, int, []int)) {
	Glob.PrintError("NDS", "Incremental search not compatible with the assisted plugin for now.")
}

// ManageClosureRule implements Search.SearchAlgorithm.
func (is *incrementalSearch) ManageClosureRule(uint64, *Search.State, Search.Communication, []Unif.Substitutions, Core.FormAndTerms, int, int) (bool, []Core.SubstAndForm) {
	Glob.PrintError("NDS", "Incremental search not compatible with the equality plugin for now.")
	return false, []Core.SubstAndForm{}
}
