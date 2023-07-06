package assisted

import (
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

type Choice interface {
	GetRule() string
	GetForm() int
	GetSubst() complextypes.SubstAndForm
	GetReintro() int
}

type ChoiceBasic struct {
	rule string
	form int
}

func MakeChoice(rule string, form int) ChoiceBasic {
	return ChoiceBasic{rule, form}
}

func (choice ChoiceBasic) GetForm() int {
	return choice.form
}

func (choice ChoiceBasic) GetRule() string {
	return choice.rule
}

func (choice ChoiceBasic) GetSubst() complextypes.SubstAndForm {
	return complextypes.MakeEmptySubstAndForm()
}

func (choice ChoiceBasic) GetReintro() int {
	return -1
}

type ChoiceSubsts struct {
	ChoiceBasic
	substs complextypes.SubstAndForm
}

func MakeChoiceWithSubsts(rule string, form int, substs complextypes.SubstAndForm) ChoiceSubsts {
	return ChoiceSubsts{ChoiceBasic: MakeChoice(rule, form), substs: substs}
}

func (choice ChoiceSubsts) GetSubst() complextypes.SubstAndForm {
	return choice.substs
}

type ChoiceReintro struct {
	ChoiceBasic
	reintro int
}

func MakeChoiceWithReintro(rule string, reintro int) ChoiceReintro {
	return ChoiceReintro{ChoiceBasic: MakeChoice(rule, -1), reintro: reintro}
}

func (choice ChoiceReintro) GetReintro() int {
	return choice.reintro
}
