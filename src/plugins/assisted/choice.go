package assisted

import (
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

// Used for communication in channels
type Choice struct {
	rule   string
	form   int
	substs complextypes.SubstAndForm
}

func (choice Choice) GetForm() int {
	return choice.form
}

func (choice Choice) GetRule() string {
	return choice.rule
}

func (choice Choice) GetSubst() complextypes.SubstAndForm {
	return choice.substs
}

func MakeChoice(r string, i int, s complextypes.SubstAndForm) Choice {
	return Choice{r, i, s}
}
