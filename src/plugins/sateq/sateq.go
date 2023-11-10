package sateq

import (
	treetypes "github.com/GoelandProver/Goeland/code-trees/tree-types"
	"github.com/GoelandProver/Goeland/plugins/equality"
)

func Enable() {
	equality.RunEqualityReasoning = RunEqualityReasoning
}

func RunEqualityReasoning(epml equality.EqualityProblemMultiList) (bool, []treetypes.Substitutions) {
	return false, []treetypes.Substitutions{}
}
