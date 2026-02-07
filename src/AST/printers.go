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
 * This file stores the different printers we have in Goeland.
 **/

package AST

import (
	"github.com/GoelandProver/Goeland/Lib"
	"strings"
)

func RemoveSuperfluousParenthesesAction(connectives PrinterConnective) PrinterAction {
	return PrinterAction{
		genericAction: func(s string) string {
			if len(s) == 0 {
				return s
			}

			complexChildStart := connectives.StrConn(SurComplexChildStart)
			complexChildEnd := connectives.StrConn(SurComplexChildEnd)
			if s[:len(complexChildStart)] == complexChildStart &&
				s[len(s)-len(complexChildEnd):] == complexChildEnd {
				tentative_str := s[len(complexChildStart) : len(s)-len(complexChildEnd)]
				is_open := 0
				for i, char := range tentative_str {
					if len(complexChildStart) <= i && tentative_str[i-len(complexChildStart):i] == complexChildStart {
						is_open += 1
					}
					if len(complexChildEnd) <= i && tentative_str[i-len(complexChildEnd):i] == complexChildEnd {
						is_open -= 1
					}
					if char == ' ' && is_open == 0 {
						return s
					}
				}
				return tentative_str
			}

			return s
		},
		actionOnId:       func(i Id) string { return i.name },
		actionOnBoundVar: func(s string, index int) string { return s },
		actionOnMeta:     func(s string, index int) string { return s },
		actionOnType:     func(s string) string { return s },
		actionOnTypedVar: func(p Lib.Pair[string, Ty]) string { return p.Fst },
		actionOnFunctional: func(id Id, tys Lib.List[string], args Lib.List[string]) string {
			return connectives.DefaultOnFunctionalArgs(id, tys, args)
		},
	}
}

func SanitizerAction(connectives PrinterConnective, forbidden_chars []string) PrinterAction {
	return PrinterAction{
		genericAction: func(s string) string {
			for _, c := range forbidden_chars {
				s = strings.ReplaceAll(s, c, "_")
			}
			return s
		},
		actionOnId:       func(i Id) string { return i.name },
		actionOnBoundVar: func(s string, index int) string { return s },
		actionOnMeta:     func(s string, index int) string { return s },
		actionOnType:     func(s string) string { return s },
		actionOnTypedVar: func(p Lib.Pair[string, Ty]) string { return p.Fst },
		actionOnFunctional: func(id Id, tys Lib.List[string], args Lib.List[string]) string {
			return connectives.DefaultOnFunctionalArgs(id, tys, args)
		},
	}
}
