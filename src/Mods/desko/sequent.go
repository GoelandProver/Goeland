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
package desko

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Search"
)

type GS3Sequent struct {
	rule           Search.TableauxRule
	appliedOn      AST.Form
	rewriteWith    Lib.Option[AST.Form]
	termGenerated  Lib.Option[Lib.Either[AST.Ty, AST.Term]]
	formsGenerated Lib.List[Lib.List[AST.Form]]
	children       Lib.List[*GS3Sequent]
}

// IProof interface

func (s *GS3Sequent) AppliedOn() AST.Form                          { return s.appliedOn }
func (s *GS3Sequent) RuleApplied() Search.TableauxRule             { return s.rule }
func (s *GS3Sequent) ResultFormulas() Lib.List[Lib.List[AST.Form]] { return s.formsGenerated }

func (s *GS3Sequent) Children() Lib.List[Search.IProof] {
	return Lib.ListMap(
		s.children,
		func(child *GS3Sequent) Search.IProof { return Search.IProof(child) },
	)
}

func (s *GS3Sequent) RewrittenWith() Lib.Option[AST.Form] { return s.rewriteWith }

func (s *GS3Sequent) TermGenerated() Lib.Option[Lib.Either[AST.Ty, AST.Term]] { return s.termGenerated }

func (s *GS3Sequent) ToString() string {
	res := Lib.ListToString(s.children, "\n", "")
	trm_str := ""

	switch tm := s.termGenerated.(type) {
	case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
		trm_str = "(" + Lib.EitherToString[AST.Ty, AST.Term](tm.Val, "ty", "tm") + ")"
	}

	return fmt.Sprintf(
		"%s\ngs3(%p, %s, %s%s ---> %s)",
		res,
		s,
		s.appliedOn.ToString(),
		s.rule.ToString(),
		trm_str,
		s.children.ToString(func(c *GS3Sequent) string { return fmt.Sprintf("%p", c) }, ",", "[]"),
	)
}
