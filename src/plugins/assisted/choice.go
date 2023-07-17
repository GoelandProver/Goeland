package assisted

import (
	complextypes "github.com/GoelandProver/Goeland/types/complex-types"
)

type Choice interface {
	getRule() string
	getForm() int
	getSubst() complextypes.SubstAndForm
	getReintro() int
}

type ChoiceBasic struct {
	rule string
	form int
}

func makeChoice(rule string, form int) ChoiceBasic {
	return ChoiceBasic{rule, form}
}

func (choice ChoiceBasic) getForm() int {
	return choice.form
}

func (choice ChoiceBasic) getRule() string {
	return choice.rule
}

func (choice ChoiceBasic) getSubst() complextypes.SubstAndForm {
	return complextypes.MakeEmptySubstAndForm()
}

func (choice ChoiceBasic) getReintro() int {
	return -1
}

type ChoiceSubsts struct {
	ChoiceBasic
	substs complextypes.SubstAndForm
}

func makeChoiceWithSubsts(rule string, form int, substs complextypes.SubstAndForm) ChoiceSubsts {
	return ChoiceSubsts{ChoiceBasic: makeChoice(rule, form), substs: substs}
}

func (choice ChoiceSubsts) getSubst() complextypes.SubstAndForm {
	return choice.substs
}

type ChoiceReintro struct {
	ChoiceBasic
	reintro int
}

func makeChoiceWithReintro(rule string, reintro int) ChoiceReintro {
	return ChoiceReintro{ChoiceBasic: makeChoice(rule, -1), reintro: reintro}
}

func (choice ChoiceReintro) getReintro() int {
	return choice.reintro
}
