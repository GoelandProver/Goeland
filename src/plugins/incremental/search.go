package incremental

import (
	"github.com/GoelandProver/Goeland/global"
	"github.com/GoelandProver/Goeland/search"
	basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

type incrementalSearch struct{}

func NewIncrementalSearch() search.SearchAlgorithm {
	return &incrementalSearch{}
}

func (is *incrementalSearch) Search(formula basictypes.Form, bound int) bool {
	resetSearchTree(formula)
	go allDoParallelAlgo(doSearch, rootSearchNode)
	resultFound := is.handleSearchResults()

	return resultFound
}

func (is *incrementalSearch) handleSearchResults() bool {
	resultFound, finalProof := rootSearchNode.getResult()

	search.PrintProof(resultFound, finalProof, basictypes.MakeEmptyMetaList())

	return resultFound
}

func (is *incrementalSearch) SetApplyRules(func(uint64, complextypes.State, search.Communication, basictypes.FormAndTermsList, int, int, []int)) {
	global.PrintError("NDS", "Incremental search not compatible with the assisted plugin for now.")
}
