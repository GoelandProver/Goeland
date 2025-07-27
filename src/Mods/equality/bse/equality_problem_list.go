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
* This file contains the type definition for equality problem list. and multilist.
* Equality problem list :  a list of equality problem wich are connected to each other. A solution for one of them needs to be a solution for the others.
* Equality problem multi list : a list of list of equality problem. Independent
**/

package equality

import (
	"fmt"
	"os"
	"strconv"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Unif"
)

type EqualityProblemList []EqualityProblem

func (epl EqualityProblemList) ToString() string {
	res := "{"
	for i, ep := range epl {
		res += ep.ToString()
		if i < len(epl)-1 {
			res += ", "
		}
	}
	return res + "}"
}

var eqCpt = 0

func (epl EqualityProblemList) ToTPTPString() string {
	result := "("
	for _, ep := range epl {
		result += ep.ToTPTPString() + ") & ("
	}
	result = result[:len(result)-4]

	return result
}

func (epl EqualityProblemList) GetMetas() Lib.Set[AST.Meta] {
	metas := Lib.EmptySet[AST.Meta]()

	for _, ep := range epl {
		metas = metas.Union(ep.getMetas())
	}

	return metas
}

func makeEmptyEqualityProblemList() EqualityProblemList {
	return EqualityProblemList{}
}

type EqualityProblemMultiList []EqualityProblemList

func (epml EqualityProblemMultiList) HasMetas() bool {
	for _, epl := range epml {
		if epl.GetMetas().Cardinal() > 0 {
			return true
		}
	}

	return false
}

func (epml EqualityProblemMultiList) ToString() string {
	res := "{"
	for i, ep := range epml {
		res += ep.ToString()
		if i < len(epml)-1 {
			res += ", "
		}
	}
	return res + "}"
}

func (epml EqualityProblemMultiList) ToTPTPString(isSat bool) string {
	problemName := os.Args[len(os.Args)-1]
	problemName = problemName[:len(problemName)-2]
	parts := strings.Split(problemName, "/")
	problemName = strings.ToLower(strings.ReplaceAll(parts[len(parts)-1], "+", "plus") + "eq" + strconv.Itoa(eqCpt))

	if !isSat {
		problemName = problemName + "un"
	}
	problemName = problemName + "sat"

	result := "fof(" + problemName + ", conjecture, "
	eqCpt++

	result += epml.GetMetasToTPTPString() + "(("
	result += epml[0][0].AxiomsToTPTPString() + ") => (("

	for _, epl := range epml {
		result += epl.ToTPTPString() + ") | ("
	}
	result = result[:len(result)-4]

	result = strings.ReplaceAll(result, "{}", "")

	return result + ")))."
}

func (epml EqualityProblemMultiList) GetMetasToTPTPString() string {
	result := ""
	metas := Lib.EmptySet[AST.Meta]()

	for _, epl := range epml {
		metas = metas.Union(epl.GetMetas())
	}

	if metas.Cardinal() > 0 {
		result = "? ["
		for _, meta := range metas.Elements().GetSlice() {
			result += meta.ToMappedString(AST.DefaultMapString, false) + ", "
		}
		result = result[:len(result)-2] + "] : "
	}

	return result
}

func (epml EqualityProblemMultiList) isTrivial() bool {
	return len(epml[0][0].GetE()) == 0 || !epml.HasMetas()
}

func (epml EqualityProblemMultiList) removeHalfOfEqualities() {
	for i, epm := range epml {
		for j, ep := range epm {
			ep.E = ep.GetE().removeHalf()
			epm[j] = ep
		}
		epml[i] = epm
	}
}

func makeEmptyEqualityProblemMultiList() EqualityProblemMultiList {
	return EqualityProblemMultiList{}
}

/*** Functions ***/

/* Build an equalit problem multilist from a list of inequation */
func buildEqualityProblemMultiListFromNEQ(neq Inequalities, eq Equalities) EqualityProblemMultiList {
	res := makeEmptyEqualityProblemMultiList()
	for _, neq_pair := range neq {
		x := makeEqualityProblem(eq.copy(), neq_pair.GetT1(), neq_pair.GetT2(), makeEmptyConstraintStruct())
		res = append(res, append(makeEmptyEqualityProblemList(), x))
	}
	return res
}

/* Build an equality problem list from a predicat and its negation */
func buildEqualityProblemListFrom2Pred(p1 AST.Pred, p2 AST.Pred, eq Equalities) EqualityProblemList {
	res := makeEmptyEqualityProblemList()
	for i := range p1.GetArgs().GetSlice() {
		res = append(res, makeEqualityProblem(
			eq.copy(),
			p1.GetArgs().At(i).Copy(),
			p2.GetArgs().At(i).Copy(),
			makeEmptyConstraintStruct()),
		)
	}
	return res
}

/* Build an equality problem multi list from a list of predicate. Take one predicate, search for its negation in the code tree, and if it found any, build the corresponding equality problem list */
func buildEqualityProblemMultiListFromPredList(pred AST.Pred, tn Unif.DataStructure, equs Equalities) EqualityProblemMultiList {
	res := makeEmptyEqualityProblemMultiList()

	predId := pred.GetID()
	metas := Lib.NewList[AST.Meta]()

	for _, arg := range pred.GetArgs().GetSlice() {
		metas = Lib.ListAdd(metas, AST.MakerMeta("METAEQ_"+arg.ToString(), -1))
	}

	newTerm := AST.MakerPred(
		predId.Copy().(AST.Id),
		AST.MetaListToTermList(metas),
		pred.GetTypeVars(),
		pred.GetType(),
	)
	found, complementaryPredList := tn.Unify(newTerm)

	if found {
		for _, s := range complementaryPredList {
			res = append(res, buildEqualityProblemListFrom2Pred(pred.Copy().(AST.Pred), s.GetForm().(AST.Pred), equs.copy()))
		}
	}

	return res
}

/* Take a list of form and build an equality problem list, corresponding to thoses related to a predicate and its negation */
func buildEqualityProblemMultiListFromFormList(fl Lib.List[AST.Form], tn Unif.DataStructure, eq Equalities) EqualityProblemMultiList {
	res := makeEmptyEqualityProblemMultiList()
	for _, p := range fl.GetSlice() {
		if pt, ok := p.(AST.Pred); ok {
			debug(
				Lib.MkLazy(func() string { return fmt.Sprintf("Pred found : %v", p.ToString()) }),
			)
			if !pt.GetID().Equals(AST.Id_eq) {
				res = append(res, buildEqualityProblemMultiListFromPredList(pt, tn, eq.copy())...)
			}
		}
	}
	return res
}

/**
* Take a form list
* Retun a lis of independent problem list (from predicate and negation) + a boolean, true if there is equality in the formula list, false otherwise
**/
func buildEqualityProblemMultiList(fl Lib.List[AST.Form], tp, tn Unif.DataStructure) (EqualityProblemMultiList, bool) {
	res := makeEmptyEqualityProblemMultiList()
	eq := retrieveEqualities(tp.Copy())
	if len(eq) == 0 {
		return res, false
	}
	res = append(res, buildEqualityProblemMultiListFromNEQ(retrieveInequalities(tn.Copy()), eq.copy())...)
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Res after FromNEQ : %v", res.ToString()) }),
	)
	res = append(res, buildEqualityProblemMultiListFromFormList(Lib.ListCpy(fl), tn.Copy(), eq.copy())...)
	debug(
		Lib.MkLazy(func() string { return fmt.Sprintf("Res after FromForm : %v", res.ToString()) }),
	)

	if len(res) == 0 {
		return res, false
	}

	return res, true
}
