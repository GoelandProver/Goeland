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
 * This file deskolemizes an `IProof` into a `GS3Sequent`.
 **/

package desko

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Search"
)

var label = "desko"
var debug Glob.Debugger
var debug_interrupt Glob.InterruptingDebugger
var raise_anomaly = func(msg string) { Glob.Anomaly(label, msg) }
var desko_delta StrategyRule
var indexes Lib.List[AST.Form]

type proof_node struct {
	proof Search.IProof
	child int
}

type proof_info struct {
	ctx               Lib.List[AST.Form]
	form_introduction map[int]proof_node
}

type StrategyRule func(*GS3Sequent, Search.IProof, branch_checker, proof_info)

func InitDebugger() {
	debug = Glob.CreateDebugger(label)
	debug_interrupt = Glob.CreateInterruptingDebugger(label + "-interupt")
}

var MakeDeskolemizedProof = func(proof Search.IProof) *GS3Sequent {
	if Glob.IsOuterSko() {
		desko_delta = gen_replay
	} else if Glob.IsInnerSko() || Glob.IsPreInnerSko() {
		desko_delta = desko_inner
	} else {
		Glob.Fatal(label, "Unsupported Skolemization")
	}

	indexes = Lib.NewList[AST.Form]()
	root := new(GS3Sequent)
	deskolemize_proof(root, proof, precompute_branch_checker(proof), empty_proof_info())
	return root
}

func empty_proof_info() proof_info {
	return proof_info{
		ctx:               Lib.NewList[AST.Form](),
		form_introduction: make(map[int]proof_node),
	}
}

func copy_proof_info(info proof_info) proof_info {
	nmap := make(map[int]proof_node)
	for k, v := range info.form_introduction {
		nmap[k] = v
	}
	return proof_info{ctx: Lib.ListCpy(info.ctx), form_introduction: nmap}
}

func deskolemize_proof(
	node *GS3Sequent,
	proof Search.IProof,
	is_on_branch branch_checker,
	info proof_info,
) {
	switch Search.KindOfRule(proof.RuleApplied()) {
	case Search.KindClosure:
		node.appliedOn = proof.AppliedOn()
		node.rule = proof.RuleApplied()
	case Search.KindAlpha, Search.KindBeta, Search.KindGamma, Search.KindRew:
		gen_replay(node, proof, is_on_branch, info)
	case Search.KindDelta:
		desko_delta(node, proof, is_on_branch, info)
	case Search.KindStructural:
		if proof.RuleApplied() == Search.RuleReintro {
			deskolemize_proof(node, proof.Children().At(0), is_on_branch, info)
		} else {
			raise_anomaly("Tableaux proofs should have no structural rules")
		}
	}
}

func index(f AST.Form) int {
	switch id := Lib.ListIndexOf(f, indexes).(type) {
	case Lib.Some[int]:
		return id.Val
	case Lib.None[int]:
		indexes = indexes.Push(f)
		return indexes.Len() - 1
	}

	Glob.Fatal(label, fmt.Sprintf("Formula %s not found in the index list", f.ToString()))
	return -1
}

func gen_apply_rule(node *GS3Sequent, proof Search.IProof, info proof_info) []proof_info {
	node.children = Lib.NewList[*GS3Sequent]()
	node.appliedOn = proof.AppliedOn()
	node.formsGenerated = proof.ResultFormulas()
	node.rule = proof.RuleApplied()
	node.termGenerated = proof.TermGenerated()
	node.rewriteWith = proof.RewrittenWith()
	child_infos := []proof_info{}
	for i := range proof.Children().GetSlice() {
		child_info := copy_proof_info(info)
		child_info.ctx.Append(node.formsGenerated.At(i).GetSlice()...)
		for _, f := range node.formsGenerated.At(i).GetSlice() {
			child_info.form_introduction[index(f)] = proof_node{proof: proof, child: i}
		}
		child := new(GS3Sequent)
		node.children.Append(child)
		child_infos = append(child_infos, child_info)
	}
	return child_infos
}

func gen_replay(
	node *GS3Sequent,
	proof Search.IProof,
	is_on_branch branch_checker,
	info proof_info,
) {
	infos := gen_apply_rule(node, proof, info)

	if len(infos) != node.Children().Len() {
		raise_anomaly("translated rule does not have the same number of children")
	}

	for i, child_proof := range proof.Children().GetSlice() {
		deskolemize_proof(node.children.At(i), child_proof, is_on_branch, infos[i])
	}
}

func gen_weaken(
	node *GS3Sequent,
	term Lib.Option[Lib.Either[AST.Ty, AST.Term]],
	applied_on AST.Form,
) *GS3Sequent {
	node.termGenerated = term
	node.rewriteWith = Lib.MkNone[AST.Form]()
	node.appliedOn = applied_on
	node.rule = Search.RuleWeaken
	child := new(GS3Sequent)
	node.children = Lib.MkListV(child)
	return child
}

func desko_inner(
	node *GS3Sequent,
	proof Search.IProof,
	is_on_branch branch_checker,
	info proof_info,
) {
	var tm AST.Term
	switch t := proof.TermGenerated().(type) {
	case Lib.Some[Lib.Either[AST.Ty, AST.Term]]:
		switch term := t.Val.(type) {
		case Lib.Left[AST.Ty, AST.Term]:
			// Shortcut: Skolemized types do not have to be deskolemized.
			gen_replay(node, proof, is_on_branch, info)
		case Lib.Right[AST.Ty, AST.Term]:
			tm = term.Val
		}

	case Lib.None[Lib.Either[AST.Ty, AST.Term]]:
		// Shortcut: as it doesn't appear in the proof, we don't care about this step
		gen_replay(node, proof, is_on_branch, info)
		return
	}

	if tm == nil {
		raise_anomaly("The IProof gives a wrong TermGenerated result")
	}

	var sko_symbol AST.Id
	switch symb := AST.GetSymbol(tm).(type) {
	case Lib.Some[AST.Id]:
		sko_symbol = symb.Val
	case Lib.None[AST.Id]:
		raise_anomaly(fmt.Sprintf("The term %s is not a valid Skolem symbol", tm.ToString()))
	}

	// Step 1: weaken the formulas in which the Skolem symbol appears
	forms_to_weaken := get_forms_in_ctx_with_symbol(info, sko_symbol)
	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Symbol: %s; formulas to weaken:\n [%s]\n\nResult formula of the delta: %s, context:\n [%s]",
				sko_symbol.ToString(),
				Lib.ListToString(forms_to_weaken, ",\n", ""),
				proof.ResultFormulas().At(0).At(0).ToString(),
				Lib.ListToString(info.ctx, ",\n", ""),
			)
		}),
	)

	// Fast path: if the delta has already been applied in the branch, skip the delta rule
	if Lib.ListMem(proof.ResultFormulas().At(0).At(0), info.ctx) {
		debug(
			Lib.MkLazy(func() string {
				return "Result formula found in the tree, skipping rule..."
			}))
		deskolemize_proof(node, proof.Children().At(0), is_on_branch, info)
		return
	}

	to_replay := Lib.NewList[proof_node]()

	// We must delay the weakening of terms as we first have to remove all the formulas
	// containing a term before weakening it.
	term_delayed_weakening := []Lib.Option[Lib.Either[AST.Ty, AST.Term]]{}
	for _, form := range forms_to_weaken.GetSlice() {
		comes_from := info.form_introduction[index(form)].proof.AppliedOn()
		if is_on_branch(sko_symbol, comes_from) {
			to_replay.Append(info.form_introduction[index(form)])
		}
		node = gen_weaken(node, Lib.MkNone[Lib.Either[AST.Ty, AST.Term]](), form)
		if Search.KindOfRule(info.form_introduction[index(form)].proof.RuleApplied()) ==
			Search.KindDelta {
			term_delayed_weakening = append(
				term_delayed_weakening,
				info.form_introduction[index(form)].proof.TermGenerated(),
			)
		}
	}
	for _, delayed := range term_delayed_weakening {
		node = gen_weaken(node, delayed, AST.MakerTop())
	}

	debug(
		Lib.MkLazy(func() string {
			return fmt.Sprintf(
				"Formulas to replay: %s",
				Lib.ListToString(Lib.ListMap(
					to_replay, func(node proof_node) AST.Form { return node.proof.AppliedOn() },
				), ", ", "[]"),
			)
		}),
	)
	debug_interrupt()

	info.ctx = info.ctx.Filter(func(f AST.Form) bool {
		return !(Lib.ListMem(f, forms_to_weaken))
	})

	// Step 2: apply the Skolemization rule
	infos := gen_apply_rule(node, proof, info)
	info = infos[0]
	node = node.children.At(0)

	// Step 3: replay only the stuff coming from the same branch
	for _, n := range to_replay.GetSlice() {
		infos := gen_apply_rule(node, n.proof, info)
		for i, child_proof := range n.proof.Children().GetSlice() {
			if i != n.child {
				deskolemize_proof(node.children.At(i), child_proof, is_on_branch, infos[i])
			}
		}
		info = infos[n.child]
		node = node.children.At(n.child)
	}

	deskolemize_proof(node, proof.Children().At(0), is_on_branch, info)
}

func get_forms_in_ctx_with_symbol(info proof_info, symb AST.Id) Lib.List[AST.Form] {
	forms_with_term := Lib.NewList[AST.Form]()
	for _, form := range info.ctx.GetSlice() {
		if form.GetSymbols().Contains(symb) {
			forms_with_term.Append(form)
		}
	}
	return forms_with_term
}
