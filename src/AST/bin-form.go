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
 * This file implements binary formulas (imp, equ)
 **/

package AST

import (
	"fmt"

	"github.com/GoelandProver/Goeland/Lib"
)

type bin_form struct {
	left  Form
	right Form
}

func makeBinForm(left, right Form) bin_form {
	return bin_form{left, right}
}

func (b bin_form) GetF1() Form {
	return b.left
}

func (b bin_form) GetF2() Form {
	return b.right
}

func (b bin_form) copy() bin_form {
	return makeBinForm(b.left.Copy(), b.right.Copy())
}

func (b bin_form) GetChildFormulas() Lib.List[Form] {
	return Lib.MkListV(b.left, b.right)
}

func (b bin_form) GetMetas() Lib.Set[Meta] {
	return listUnion(b.GetChildFormulas(), Form.GetMetas)
}

func (b bin_form) toString(n int, conn Connective) string {
	return printer.Str(fmt.Sprintf("%s %s %s",
		printer.Str(printer.SurroundChild(b.left.toString(n))),
		printer.StrConn(conn),
		printer.Str(printer.SurroundChild(b.right.toString(n))),
	))
}

func (b bin_form) equals(oth bin_form) bool {
	return b.left.Equals(oth.left) && b.right.Equals(oth.right)
}

func (b bin_form) applyOnArgs(f func(Form) Form) bin_form {
	return makeBinForm(f(b.left), f(b.right))
}

func (b bin_form) GetSubTerms() Lib.Set[Term] {
	return listUnion(b.GetChildFormulas(), Form.GetSubTerms)
}

func (b bin_form) GetSymbols() Lib.Set[Id] {
	return listUnion(b.GetChildFormulas(), Form.GetSymbols)
}

func (b bin_form) less(oth bin_form) bool {
	return b.left.Less(oth.left) || (b.left.Equals(oth.left) && b.right.Less(oth.right))
}
