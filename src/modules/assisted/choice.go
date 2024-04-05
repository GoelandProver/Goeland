/**
* Copyright 2022 by the authors (see AUTHORS).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL license under French law and
* abiding by the rules of distribution of free software.  You can  use,
* modify and/ or redistribute the software under the terms of the CeCILL
* license as circulated by CEA, CNRS and INRIA at the following URL
* "http://www.cecill.info".
*
* As a counterpart to the access to the source code and  rights to copy,
* modify and redistribute granted by the license, users are provided only
* with a limited warranty  and the software's author,  the holder of the
* economic rights,  and the successive licensors  have only  limited
* liability.
*
* In this respect, the user's attention is drawn to the risks associated
* with loading,  using,  modifying and/or developing or reproducing the
* software by the user in light of its specific status of free software,
* that may mean  that it is complicated to manipulate,  and  that  also
* therefore means  that it is reserved for developers  and  experienced
* professionals having in-depth computer knowledge. Users are therefore
* encouraged to load and test the software's suitability as regards their
* requirements in conditions enabling the security of their systems and/or
* data to be ensured and,  more generally, to use and operate it in the
* same conditions as regards security.
*
* The fact that you are presently reading this means that you have had
* knowledge of the CeCILL license and that you accept its terms.
**/
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
