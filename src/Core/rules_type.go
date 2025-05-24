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

/**
* This file contains the rules's data sturcture
**/
package Core

import (
	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
)

/******************/
/* Structure rule */
/******************/

/*
*
Rules are representedby an int :
1 : atomic
2 : alpha
3 : beta
4 : delta
5 : gamma
*
*/
type KindOfRule int

const (
	Atomic KindOfRule = iota
	Alpha
	Beta
	Delta
	Gamma
)

/*************/
/* Functions */
/*************/

/* Identify the rule's type */
func ShowKindOfRule(f AST.Form) KindOfRule {
	var res KindOfRule
	switch nf := f.(type) {
	case AST.Pred, AST.Top, AST.Bot:
		res = Atomic
	case AST.Not:
		switch nf.GetForm().(type) {
		case AST.Pred, AST.Top, AST.Bot:
			res = Atomic
		case AST.Not, AST.Imp, AST.Or:
			res = Alpha
		case AST.And, AST.Equ:
			res = Beta
		case AST.Ex:
			res = Gamma
		case AST.All:
			res = Delta
		case AST.AllType:
			Glob.Anomaly("Kind of rule", "not forall(type) found when it shouldn't happen.")
		}
	case AST.And:
		res = Alpha
	case AST.Or, AST.Imp, AST.Equ:
		res = Beta
	case AST.Ex:
		res = Delta
	case AST.All, AST.AllType:
		res = Gamma
	}
	return res
}
