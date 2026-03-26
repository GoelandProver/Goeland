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
 * This file implements n-ary formulas (or, and)
 **/

package AST

import "github.com/GoelandProver/Goeland/Lib"

type nari_form struct {
	subforms Lib.List[Form]
}

func makeNAriForm(subforms Lib.List[Form]) nari_form {
	return nari_form{subforms}
}

func (f nari_form) GetMetas() Lib.Set[Meta] {
	return listUnion(f.subforms, Form.GetMetas)
}

func (f nari_form) GetSubTerms() Lib.Set[Term] {
	return listUnion(f.subforms, Form.GetSubTerms)

}

func (f nari_form) GetSymbols() Lib.Set[Id] {
	return listUnion(f.subforms, Form.GetSymbols)
}

func (f nari_form) equals(oth nari_form) bool {
	return Lib.ListEquals(f.subforms, oth.subforms)
}

func (f nari_form) copy() nari_form {
	return makeNAriForm(Lib.ListCpy(f.subforms))
}

func (f nari_form) toString(n int, conn Connective) string {
	return f.subforms.ToString(
		func(f Form) string { return printer.Str(printer.SurroundChild(f.toString(n))) },
		printer.StrConn(conn), "",
	)
}

func (f nari_form) applyOnArgs(g func(Form) Form) nari_form {
	return makeNAriForm(
		Lib.ListMap(f.subforms, g),
	)
}

func (f nari_form) GetChildFormulas() Lib.List[Form] {
	return f.subforms
}

func (f nari_form) less(g nari_form) bool {
	return bLess(f.subforms, g.subforms)
}
