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
* This file contains all the definitons necessary to make a Discrimination Tree
**/

package discriminationtree

import (
	"fmt"
	"strings"
	"sync"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	subst "github.com/GoelandProver/Goeland/Unif/substitution"
)

var debug Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("unif")
}

/*************************/
/* Structures definition */
/*************************/

type NodeElement interface {
	ToString() string
	isAllowedNodeElement()
	IsMeta() bool
	GetArityType() int
	GetTy() AST.Ty
	Equals(target NodeElement) bool
}

func (ns NodeString) ToString() string {
	return string(ns)
}

type NodeString string
type TermNode struct{ AST.Term }
type TyNode struct{ AST.Ty }

func (ns NodeString) isAllowedNodeElement() {}
func (tn TermNode) isAllowedNodeElement()   {}
func (tn TyNode) isAllowedNodeElement()     {}

func (ns NodeString) IsMeta() bool {
	return false
}

func (tn TermNode) IsMeta() bool {
	return tn.Term.IsMeta()
}

// Required to make transitivity.p valid
func (tn TyNode) IsMeta() bool {
	if tn.Ty != nil {
		_, isTypeVariable := tn.Ty.(AST.TyMeta)
		return isTypeVariable
	}
	return false
}

func (ns NodeString) GetArityType() int {
	return 0
}

func (tn TermNode) GetArityType() int {
	return tn.GetMetaList().Len()
}

func (tn TyNode) GetArityType() int {
	return 0
}

// If SymbolType is AST.Term, return It, else nil
func (sym SymbolType) getTerm() AST.Term {

	if tn, ok := sym.symbol.(TermNode); ok {
		return tn.Term
	}
	return nil

}

// If SymbolType is AST.Ty, return It, else nil
func (sym SymbolType) GetTy() AST.Ty {

	if tn, ok := sym.symbol.(TyNode); ok {
		return tn.Ty
	}
	return nil

}

// If SymbolType is string, return It, else nil
func (sym SymbolType) getString() string {

	if ns, ok := sym.symbol.(NodeString); ok {
		return ns.ToString()
	}
	return ""
}

// Equals made between NodeString and one NodeElement
func (ns NodeString) Equals(target NodeElement) bool {

	typ, ok := target.(NodeString)
	if !ok {
		return false
	}
	return strings.EqualFold(ns.ToString(), typ.ToString())
}

// Equals made between TermNode and one NodeElement
func (tn TermNode) Equals(target NodeElement) bool {

	typ, ok := target.(TermNode)
	if !ok {
		return false
	}

	if tn.Term != nil && typ.Term != nil {
		return tn.Term.Equals(typ.Term)
	}
	return false
}

// Equals made between TyNode and one NodeElement
func (tn TyNode) Equals(target NodeElement) bool {
	typ, ok := target.(TyNode)
	if !ok {
		return false
	}

	if tn.Ty == nil || typ.Ty == nil {
		return false
	}

	return tn.Ty.Equals(typ.Ty)
}

// Return The Type of a NodeString.
// Return Temporary a AST.Tindividual()
func (ns NodeString) GetTy() AST.Ty {

	return AST.TIndividual() // Temporary

}

// Convert The termNode to Meta then getTy()
func (tn TermNode) GetTy() AST.Ty {

	return tn.ToMeta().GetTy()

}

// Return the Ty of the TyNode
func (tn TyNode) GetTy() AST.Ty {

	return tn.Ty

}

// If the is AST.Fun return ID.ToString else term.toString else nil
func (tn TermNode) ToString() string {
	if fun, ok := tn.Term.(AST.Fun); ok {
		return fun.GetID().ToString()
	}

	if tn.Term != nil {
		return tn.Term.ToString()
	}

	return "nil"
}

// Take Any Parameter. Depending of the Parameter :
// String => NodeString
// AST.Ty => TyNode
// AST.Pred => TermNode(TransformPred(Param))
// AST.Term => TermNode
// Else Anomaly
func createNodeElement(t any) NodeElement {

	switch v := t.(type) {
	case string:
		return NodeString(v)
	case AST.Ty:
		return TyNode{v}
	case AST.Pred:
		return TermNode{subst.TransformPred(v)}
	case AST.Term:
		return TermNode{v}
	default:
		Glob.Anomaly("Unknow Type from createNodeElement(t any) NodeElement ", "Unknow Type from createNodeElement(t any) NodeElement")
		return nil
	}
}

type SymbolType struct {
	symbol NodeElement // Term of the node
	arity  int         // Arity of a node
}

func (t SymbolType) ToString() string {
	return fmt.Sprintf("Symbol : %s Arity :  %d\n", t.symbol.ToString(), t.GetArity())
}

func (t SymbolType) getSymbol() NodeElement {
	return t.symbol
}

func (t SymbolType) GetArity() int {
	return t.arity
}

// Nil is Symbol is nil and arity == -1 ( default Arity for a SymbolType)
func (s SymbolType) IsNil() bool {
	return s.symbol == nil && s.arity == -1
}

// Maker a SymbolType with a Arity of 0
func makeSymbolTypeTy(node NodeElement) SymbolType {
	return SymbolType{node, 0}
}

// Maker SymbolType
func makeSymbolType(node NodeElement, arity int) SymbolType {

	return SymbolType{node, arity}
}

// Equals between two SymbolType
func (s SymbolType) Equals(target SymbolType) bool {

	if s.GetArity() != target.GetArity() {
		return false
	}

	return s.symbol.Equals(target.symbol)
}

/* Each node of a discrimination tree holds a single symbol (a function/predicate,
   a type, or a meta, together with its arity) and its children. When it is a leaf,
   leafFor / termLeafFor hold the predicates / terms whose flattened sequence ends
   at this node. */
type DiscriminationNode struct {
	symbol   SymbolType                   // Contain the AST.Term and Arity
	children Lib.List[DiscriminationNode] // All the children of the node
	leafFor  Lib.List[AST.Pred]           // If not empty, contains the where it come from

	// Parallel to leafFor, but for trees populated with raw terms (InsertTerm)
	// instead of predicates (Insert) - used by UnifyTerm/UnifyTermWithSubst.
	// Kept separate from leafFor rather than merged into a single Either-typed
	// field, since nothing in this codebase mixes both kinds of insertion on
	// the same tree instance: it keeps this addition purely additive, with
	// zero risk to the existing predicate-based Insert/Unify/Unify2 code.
	termLeafFor Lib.List[AST.Term]

	// Set once, on the tree returned by InsertTerm/MakeTermUnifProblem, so
	// UnifyTermWithSubst knows which single traversal to run instead of
	// always running both (which would double the cost of every call for
	// no benefit, since a given tree is always exclusively one or the
	// other in practice).
	termOnly bool
}

// Basic Node. Create a SymbolType{nil, -1} and empty list for children and leafFor
func NewNode() DiscriminationNode {
	return DiscriminationNode{
		symbol:      SymbolType{symbol: nil, arity: -1},
		children:    Lib.NewList[DiscriminationNode](),
		leafFor:     Lib.NewList[AST.Pred](),
		termLeafFor: Lib.NewList[AST.Term](),
	}
}

// Basic Node with SymbolType and no empty list for children and leafFor
func MakeDiscriminationNodeWithSym(sym SymbolType) DiscriminationNode {
	return DiscriminationNode{
		symbol:      sym,
		children:    Lib.NewList[DiscriminationNode](),
		leafFor:     Lib.NewList[AST.Pred](),
		termLeafFor: Lib.NewList[AST.Term](),
	}
}

// Basic Node with SymbolType, children and empty List for leafFor
func MakeDiscriminationNodeWithSymAndChildren(sym SymbolType, children Lib.List[DiscriminationNode]) DiscriminationNode {
	return DiscriminationNode{
		symbol:      sym,
		children:    children,
		leafFor:     Lib.NewList[AST.Pred](),
		termLeafFor: Lib.NewList[AST.Term](),
	}
}

func (dNode DiscriminationNode) getSymbol() SymbolType {
	return dNode.symbol
}

func (dNode DiscriminationNode) GetArity() int {
	return dNode.symbol.GetArity()
}

func (dNode DiscriminationNode) getChildren() Lib.List[DiscriminationNode] {
	return dNode.children
}

func (dNode DiscriminationNode) getLeafFor() Lib.List[AST.Pred] {
	return dNode.leafFor
}

func (dNode DiscriminationNode) getTermLeafFor() Lib.List[AST.Term] {
	return dNode.termLeafFor
}

// If NodeElement of the dNode is nil return "" else toString
func (dNode DiscriminationNode) toString() string {
	sym := dNode.getSymbol().getSymbol()

	if sym == nil {
		return ""
	}
	return sym.ToString()
}

// Struct with a Pred and a associated substitution. Used for Robinson
type CandidatResult struct {
	Pred AST.Pred            // Predicat
	Subs subst.Substitutions // The associated substitution
}

func (Candidat CandidatResult) getPred() AST.Pred {
	return Candidat.Pred
}

func (Candidat CandidatResult) GetSubs() subst.Substitutions {
	return Candidat.Subs
}

// Return Pred and Subs
func (Candidat CandidatResult) toString() string {
	return fmt.Sprintf("Pred : %s Subs :  %s\n", Candidat.getPred().ToString(), Candidat.GetSubs().ToString())
}

// Works only if Len(CandidatResult) is 1. Had Enough to for-each all the time for single element
func ToSingleElement(candidats []CandidatResult) CandidatResult {
	if len(candidats) == 1 {
		return candidats[0]
	}
	return CandidatResult{}
}

// Maker CandidatResult
func MakeCandidat(p AST.Pred, sub subst.Substitutions) CandidatResult {
	return CandidatResult{
		Pred: p,
		Subs: sub,
	}
}

// Mirrors CandidatResult, for trees populated via InsertTerm instead of Insert.
type TermCandidatResult struct {
	Term AST.Term            // The raw term stored at this leaf
	Subs subst.Substitutions // The associated substitution
}

func (Candidat TermCandidatResult) getTerm() AST.Term {
	return Candidat.Term
}

func (Candidat TermCandidatResult) GetSubs() subst.Substitutions {
	return Candidat.Subs
}

func MakeTermCandidat(t AST.Term, sub subst.Substitutions) TermCandidatResult {
	return TermCandidatResult{
		Term: t,
		Subs: sub,
	}
}

/*****************************/
/* End Structures definition */
/*****************************/

/*****************************/
/*********** Parse ***********/
/*****************************/

// Predicat Parser. Skip the Predicat Type and Transform it into a Function.
// Then Call parseTerm on the args of the predicat.
func parsePred(p AST.Pred, ctx *NormalizerContext) Lib.List[SymbolType] {

	// if p.GetTyArgs().Len() != p.GetArgs().Len() && (p.GetTyArgs().Len() > 1) {
	// 	Glob.Anomaly("Ambigious number of types", " Ambigious number of types, don't match the number of args or not one unique types, leading to a ambigious typing for args")
	// }

	res := Lib.NewList[SymbolType]()
	// Required Overwise the SymbolType of the predicat will be AST.ID and will be compared with a AST.Fun -> Automatic faillure
	tmpFun := AST.MakerFun(p.GetID(), Lib.MkListV[AST.Ty](), Lib.MkListV[AST.Term]())
	res.Append(makeSymbolType(createNodeElement(tmpFun), p.GetArgs().Len()))

	// Add the Type(s).
	for _, elem := range p.GetTyArgs().GetSlice() {
		res.Append(makeSymbolTypeTy(createNodeElement(elem)))
	}

	// Add the element(s)
	for _, arg := range p.GetArgs().GetSlice() {
		argSeq := parseTerm(arg, ctx).GetSlice()
		res.Append(argSeq...)
	}

	return res
}

func parseTerm(t AST.Term, ctx *NormalizerContext) Lib.List[SymbolType] {

	res := Lib.NewList[SymbolType]()
	switch term := t.(type) {

	// if term is a function or cst, add it and call his args
	case AST.Fun:

		funNoArgs := AST.MakerFun(term.GetID(), term.GetTyArgs(), Lib.NewList[AST.Term]())
		first_element := makeSymbolType(createNodeElement(funNoArgs), term.GetArgs().Len())
		//first_element := makeSymbolType(createNodeElement(term.GetID()), term.GetArgs().Len()) -> passer par ID ?
		res.Append(first_element)

		// for _, ty := range term.GetTyArgs().GetSlice() {
		// 	res.Append(parseTerm(ty, ctx).GetSlice()...)
		// }

		for _, arg := range term.GetArgs().GetSlice() {
			res.Append(parseTerm(arg, ctx).GetSlice()...)
		}

	// Case meta, we have to transform it
	case AST.Meta:

		originalName := term.GetName()         // Name of the meta
		_, exists := ctx.mapping[originalName] // Contains
		if !exists {                           // If the meta is unknow
			ctx.counter++
			newName := fmt.Sprintf("v%d", ctx.counter) // v + int. e.g  v1,v2,v3,...
			fakeMeta := AST.MakeMeta(ctx.counter, 0, newName, 0, term.GetTy())
			ctx.mapping[originalName] = fakeMeta // Update the mapping : X -> v1 or Y -> v2 .... )
		}

		normalizedMeta := ctx.mapping[originalName]                      // Return the transformed name association to the originalName before adding
		res.Append(makeSymbolType(createNodeElement(normalizedMeta), 0)) // Add the new Meta to the return slice

	case AST.Id:
		funNoArgs := AST.MakerFun(term, Lib.NewList[AST.Ty](), Lib.NewList[AST.Term]())
		first_element := makeSymbolType(createNodeElement(funNoArgs), 0)
		res.Append(first_element)

	default:
		Glob.Anomaly("Error with %s in ParseTerm", term.GetName())
	}

	return res

}

/*****************************/
/********* End Parse *********/
/*****************************/

/*****************************/
/********* Transform *********/
/*****************************/

// Case t is a Function => SymbolType{t.ID, t.getArgs}
// Case t is a cst => SymbolType{MakerFun(t.ID), 0}
// Case t is a Meta => SymbolType{t.ID, 0}
// Else Glob.Anomaly
func FirstElementToSymbolType(t AST.Term) SymbolType {

	switch t := t.(type) {
	case AST.Fun: // Case function
		funNoArgs := AST.MakerFun(t.GetID(), t.GetTyArgs(), Lib.NewList[AST.Term]())
		return SymbolType{createNodeElement(funNoArgs), t.GetArgs().Len()}
	case AST.Id: // Case Constant
		funNoArgs := AST.MakerFun(t, Lib.NewList[AST.Ty](), Lib.NewList[AST.Term]())
		return SymbolType{createNodeElement(funNoArgs), 0}
	case AST.Meta: // Case metaVariable
		return SymbolType{createNodeElement(t), 0}
	default: // Not supposed to see something else
		Glob.Anomaly("FirstElementToSymbolType Error", "Unknow type in FirstElementToSymbolType")
		return SymbolType{createNodeElement(nil), -1} // Dog Code that will fail but won't be triggered due to Glob.Anomaly. Only here to please the compiler.
	}
}

// Depend of the Type, create the follow DiscriminationNode
// case AST.Fun => Create a List and fill it with TermToNode(GetArgs) then Maker DiscrmiminationNode
// Case AST.Id => MakeDiscriminationNode(FirstElementToSymbol) => Create Fun
// Case AST.Meta => MakeDiscriminationNode(FirstElementToSymbol) => Create Meta
func TermToNode(t AST.Term) DiscriminationNode {
	switch t := t.(type) {
	case AST.Fun: // Accumulate all the term of the AST.Term then create a Node with all the children
		children := Lib.NewList[DiscriminationNode]()
		for _, c := range t.GetArgs().GetSlice() {
			children.Append(TermToNode(c))
		}
		return MakeDiscriminationNodeWithSymAndChildren(FirstElementToSymbolType(t), children)
	case AST.Id:
		return MakeDiscriminationNodeWithSym(FirstElementToSymbolType(t))
	case AST.Meta: // Node with T as SymbolType and empty children / leafFor
		return MakeDiscriminationNodeWithSym(FirstElementToSymbolType(t))
	default:
		Glob.Anomaly("TermToST", "Var or Id")
		return NewNode()
	}
}

/*****************************/
/******* End Transform *******/
/*****************************/

/*****************************/
/*********** Insrt ***********/
/*****************************/

// Insert a AST.Pred in the tree. If using a AST.Form or Something Else, it have to be cast when inserting ( tree = tree.Insert(px.(AST.pred)) )
// Call the parser then the auxiliary function
func (dNode DiscriminationNode) Insert(p AST.Pred) DiscriminationNode {

	sym_list := parsePred(p, NewContext())
	return dNode.insertRec(sym_list, p)
}

// Auxiliary function for insert.
func (dNode DiscriminationNode) insertRec(seq Lib.List[SymbolType], originalTerm AST.Pred) DiscriminationNode {

	// End of recursion, time to insert
	if seq.Len() == 0 {
		Exist := false
		for _, pred := range dNode.getLeafFor().GetSlice() {
			if pred.Equals(originalTerm) {
				Exist = true
				break
			}
		}
		if !Exist {
			dNode.leafFor.Append(originalTerm)
		}
		return dNode
	}

	sym := seq.At(0) // Current symbol
	childrenSlice := dNode.getChildren().GetSlice()

	foundIndex := -1 // Index of the symbol if found
	var ok = false   // Boolean if a match is found

	// Looking for already existing child
	for i, child := range childrenSlice {
		if child.getSymbol().getSymbol().Equals(sym.getSymbol()) {
			if child.GetArity() == sym.GetArity() {
				foundIndex = i
				ok = true
				break
			} else {
				Glob.Anomaly("Arity Missmatch", "Same Symbol but different Arity")
			}

		}
	}

	if ok { // Child already exist

		// Insert and update the sequence
		updatedChild := childrenSlice[foundIndex].insertRec(seq.RemoveAt(0), originalTerm)
		dNode.children.Upd(foundIndex, updatedChild) // Update children[foundIntex] = updateChild

	} else { // if Child doesn't exist

		newChild := MakeDiscriminationNodeWithSym(sym)                    // Create a new Node with the new SymbolType and his leafFor
		updatedChild := newChild.insertRec(seq.RemoveAt(0), originalTerm) // Insert the rest of the sequence after the new child
		dNode.children.Append(updatedChild)                               // Update the children of the args node
	}
	return dNode
}

/*****************************/
/********* End insrt *********/
/*****************************/

/* Insert a raw term (as opposed to Insert, which takes a full predicate).
 * Used to build a tree purely for term-level unification (UnifyTerm), the
 * discriminationtree equivalent of codetree.MakeTermUnifProblem. */
func (dNode DiscriminationNode) InsertTerm(t AST.Term) DiscriminationNode {

	sym_list := parseTerm(t, NewContext())
	result := dNode.insertTermRec(sym_list, t)
	result.termOnly = true
	return result
}

// Auxiliary function for InsertTerm. Mirrors insertRec exactly, but stores
// into termLeafFor (AST.Term) instead of leafFor (AST.Pred).
func (dNode DiscriminationNode) insertTermRec(seq Lib.List[SymbolType], originalTerm AST.Term) DiscriminationNode {

	// End of recursion, time to insert
	if seq.Len() == 0 {
		Exist := false
		for _, t := range dNode.getTermLeafFor().GetSlice() {
			if t.Equals(originalTerm) {
				Exist = true
				break
			}
		}
		if !Exist {
			dNode.termLeafFor.Append(originalTerm)
		}
		return dNode
	}

	sym := seq.At(0) // Current symbol
	childrenSlice := dNode.getChildren().GetSlice()

	foundIndex := -1 // Index of the symbol if found
	var ok = false   // Boolean if a match is found

	// Looking for already existing child
	for i, child := range childrenSlice {
		if child.getSymbol().getSymbol().Equals(sym.getSymbol()) {
			if child.GetArity() == sym.GetArity() {
				foundIndex = i
				ok = true
				break
			} else {
				Glob.Anomaly("Arity Missmatch", "Same Symbol but different Arity")
			}

		}
	}

	if ok { // Child already exist

		// Insert and update the sequence
		updatedChild := childrenSlice[foundIndex].insertTermRec(seq.RemoveAt(0), originalTerm)
		dNode.children.Upd(foundIndex, updatedChild) // Update children[foundIntex] = updateChild

	} else { // if Child doesn't exist

		newChild := MakeDiscriminationNodeWithSym(sym)                        // Create a new Node with the new SymbolType and his leafFor
		updatedChild := newChild.insertTermRec(seq.RemoveAt(0), originalTerm) // Insert the rest of the sequence after the new child
		dNode.children.Append(updatedChild)                                   // Update the children of the args node
	}
	return dNode
}

/*****************************/
/******* End term insrt ******/
/*****************************/

/*****************************/
/********** Retriev **********/
/*****************************/

// typesCanUnify reports whether two type arguments, each kept by the tree as a
// single opaque node, could be unified. A type meta-variable unifies with any
// type; two constructors must share head symbol and argument count and unify
// argument-wise; anything else falls back to structural equality.
//
// The discrimination tree is only a *filter*: the final Robinson unification
// recomputes the real bindings, so this check must never under-approximate
// (a wrong "false" silently drops a genuinely unifiable candidate - the bug
// behind polymorphic goals such as maybe(A) vs maybe(sko)). Over-approximating
// is harmless: a wrong "true" merely yields a candidate that Robinson rejects.
func typesCanUnify(a, b AST.Ty) bool {
	if _, ok := a.(AST.TyMeta); ok {
		return true
	}
	if _, ok := b.(AST.TyMeta); ok {
		return true
	}

	ca, aok := a.(AST.TyConstr)
	cb, bok := b.(AST.TyConstr)
	if aok && bok {
		if ca.Symbol() != cb.Symbol() || ca.Args().Len() != cb.Args().Len() {
			return false
		}
		for i := range ca.Args().GetSlice() {
			if !typesCanUnify(ca.Args().At(i), cb.Args().At(i)) {
				return false
			}
		}
		return true
	}

	return a.Equals(b)
}

// symbolsUnifiableModuloTypes reports whether a stored tree symbol and a query
// symbol denote the same function/predicate up to type-argument unification:
// same identifier, same term arity, and pairwise-unifiable type arguments.
//
// This is deliberately looser than SymbolType.Equals, which demands
// syntactically identical type arguments. Nested function symbols embed their
// type arguments (e.g. head<A> in a stored polymorphic axiom vs head<sko> in a
// ground query), so requiring equality there prunes valid candidates exactly
// like the [Ty]-node case does; the concrete type binding is recovered by the
// final Robinson unification.
func symbolsUnifiableModuloTypes(treeSym, querySym SymbolType) bool {
	if treeSym.GetArity() != querySym.GetArity() {
		return false
	}

	treeFun, tok := treeSym.getTerm().(AST.Fun)
	queryFun, qok := querySym.getTerm().(AST.Fun)
	if !tok || !qok {
		return false
	}
	if !treeFun.GetID().Equals(queryFun.GetID()) {
		return false
	}

	treeTys := treeFun.GetTyArgs()
	queryTys := queryFun.GetTyArgs()
	if treeTys.Len() != queryTys.Len() {
		return false
	}
	for i := range treeTys.GetSlice() {
		if !typesCanUnify(treeTys.At(i), queryTys.At(i)) {
			return false
		}
	}
	return true
}

func GetSubTermLength(seq []SymbolType) int {
	if len(seq) == 0 {
		return 0
	}

	needed := 1 // Type + Term
	index := 0

	for needed > 0 && index < len(seq) {
		sym := seq[index]
		arite := sym.GetArity()

		needed = needed - 1 + arite // If Arity == 0 ( Meta ) end this loop, else add the arity of the form/func/...
		index++
	}
	return index
}

func (dNode DiscriminationNode) SkipTreeTermAndContinue(needed int, remainingQuery []SymbolType, substitutions subst.Substitutions) []CandidatResult {

	var subs []CandidatResult

	// End of recursion
	if needed == 0 {
		return dNode.retrieveRec(remainingQuery, substitutions)
	}

	for _, child := range dNode.getChildren().GetSlice() {
		newNeeded := needed - 1 + child.GetArity() // 0 if Meta, Else Arity of the Term
		matches := child.SkipTreeTermAndContinue(newNeeded, remainingQuery, substitutions)
		subs = append(subs, matches...)
	}
	return subs

}

func (dNode DiscriminationNode) RetrieveUnifiables(t AST.Form) []CandidatResult {
	predFormula, _ := t.(AST.Pred)                         // Cast
	seq := parsePred(predFormula, NewContext()).GetSlice() // Parser
	Env := subst.Substitutions{}
	return dNode.retrieveRec(seq, Env)
}

func (dNode DiscriminationNode) retrieveRec(seq []SymbolType, currentEnv subst.Substitutions) []CandidatResult {

	ch := make(chan []CandidatResult) // Channel
	var results []CandidatResult

	var wg sync.WaitGroup

	if len(seq) == 0 { // End of recursion

		for _, p := range dNode.getLeafFor().GetSlice() {
			results = append(results, MakeCandidat(p, currentEnv))
		}
		return results
	}

	// Work goroutine: fan out one goroutine per child. Each child's subtree is
	// independent of its siblings (no shared mutable state - currentEnv is
	// read-only here, and every recursive call gets its own fresh results
	// slice/channel), so this is safe, and lets wide/deep subtrees be searched
	// in parallel instead of one child at a time.
	for _, child := range dNode.children.GetSlice() {

		wg.Add(1) // Create exactly 1 goroutine
		go retrieveCase(seq, currentEnv, child, ch, &wg)
	}

	// Main goroutine waiting until all the goroutine stop
	go func() {
		wg.Wait()
		close(ch)
	}()

	for matches := range ch {
		results = append(results, matches...)
	}

	return results
}

// Retrieve all the Unifiable
func retrieveCase(seq []SymbolType, currentEnv subst.Substitutions, child DiscriminationNode, ch chan<- []CandidatResult, wg *sync.WaitGroup) {

	defer wg.Done()    // Always signal completion, even if this case matches nothing
	symQuery := seq[0] // Term of the Query

	// Case 1. Exact Match, we go to the next element
	isExactMatch := child.symbol.Equals(symQuery)
	if isExactMatch {
		matches := child.retrieveRec(seq[1:], currentEnv)
		ch <- matches
		return
	}

	// Case 1bis. Type-argument matching up to unification. The tree keeps type
	// arguments either as standalone [Ty] nodes (predicate level) or embedded on
	// a function symbol (nested terms). A polymorphic stored type such as A /
	// maybe(A) is not syntactically equal to a concrete query type such as
	// sko / maybe(sko), yet the two unify, so we must descend rather than prune.
	// Both kinds of node span exactly one sequence element, so we consume one
	// element on each side; the final Robinson pass recomputes the type bindings.
	if childTy, queryTy := child.getSymbol().GetTy(), symQuery.GetTy(); childTy != nil && queryTy != nil {
		if typesCanUnify(childTy, queryTy) {
			ch <- child.retrieveRec(seq[1:], currentEnv)
		}
		return
	}
	if symbolsUnifiableModuloTypes(child.getSymbol(), symQuery) {
		ch <- child.retrieveRec(seq[1:], currentEnv)
		return
	}

	// Case 2. The Symbol from the discriminationTree is a Meta
	// We need to look the len of the actual term from the sequence. f(x) == 2, y == 1 and we skip the entire term
	if child.getSymbol().getSymbol().IsMeta() {
		skip := GetSubTermLength(seq)
		if skip <= len(seq) {
			matches := child.retrieveRec(seq[skip:], currentEnv)
			ch <- matches
		}
		return

		// Case 3. Reverse of the Case 2.
		// The term from the Sequence is a Meta, so we look the len of the term from the DTree and we got skip it.
	} else if symQuery.getSymbol().IsMeta() {
		childResults := child.SkipTreeTermAndContinue(child.GetArity(), seq[1:], currentEnv)
		ch <- childResults
	}
}

// Term-level mirror of SkipTreeTermAndContinue/RetrieveUnifiables/retrieveRec/
// retrieveCase above: same exact logic, operating on termLeafFor (AST.Term)
// instead of leafFor (AST.Pred). Deliberately does not build up any
// substitution while walking down (case 3 below just skips structurally,
// like the classic predicate version does) - the caller redoes a full,
// clean Robinson unification at the end in UnifyTermWithSubst, so there is
// nothing here that could leak the tree's internal v1/v2-style normalized
// meta names into a caller's result (see the Unify2 fix elsewhere in this
// file for the bug this pattern avoids).

func (dNode DiscriminationNode) SkipTreeTermAndContinueTerm(needed int, remainingQuery []SymbolType, substitutions subst.Substitutions) []TermCandidatResult {

	var subs []TermCandidatResult

	if needed == 0 {
		return dNode.retrieveTermRec(remainingQuery, substitutions)
	}

	for _, child := range dNode.getChildren().GetSlice() {
		newNeeded := needed - 1 + child.GetArity()
		matches := child.SkipTreeTermAndContinueTerm(newNeeded, remainingQuery, substitutions)
		subs = append(subs, matches...)
	}
	return subs
}

func (dNode DiscriminationNode) RetrieveUnifiableTerms(t AST.Term) []TermCandidatResult {
	seq := parseTerm(t, NewContext()).GetSlice()
	Env := subst.Substitutions{}
	return dNode.retrieveTermRec(seq, Env)
}

func (dNode DiscriminationNode) retrieveTermRec(seq []SymbolType, currentEnv subst.Substitutions) []TermCandidatResult {

	ch := make(chan []TermCandidatResult)
	var results []TermCandidatResult
	var wg sync.WaitGroup

	if len(seq) == 0 {
		for _, t := range dNode.getTermLeafFor().GetSlice() {
			results = append(results, MakeTermCandidat(t, currentEnv))
		}
		return results
	}

	for _, child := range dNode.children.GetSlice() {
		wg.Add(1)
		go retrieveCaseTerm(seq, currentEnv, child, ch, &wg)
	}

	go func() {
		wg.Wait()
		close(ch)
	}()

	for matches := range ch {
		results = append(results, matches...)
	}

	return results
}

func retrieveCaseTerm(seq []SymbolType, currentEnv subst.Substitutions, child DiscriminationNode, ch chan<- []TermCandidatResult, wg *sync.WaitGroup) {
	defer wg.Done()

	symQuery := seq[0]

	isExactMatch := child.symbol.Equals(symQuery)
	if isExactMatch {
		ch <- child.retrieveTermRec(seq[1:], currentEnv)
		return
	}

	// Case 1bis. Type-argument matching up to unification (see retrieveCase).
	if childTy, queryTy := child.getSymbol().GetTy(), symQuery.GetTy(); childTy != nil && queryTy != nil {
		if typesCanUnify(childTy, queryTy) {
			ch <- child.retrieveTermRec(seq[1:], currentEnv)
		}
		return
	}
	if symbolsUnifiableModuloTypes(child.getSymbol(), symQuery) {
		ch <- child.retrieveTermRec(seq[1:], currentEnv)
		return
	}

	if child.getSymbol().getSymbol().IsMeta() {
		skip := GetSubTermLength(seq)
		if skip <= len(seq) {
			ch <- child.retrieveTermRec(seq[skip:], currentEnv)
		}
		return

	} else if symQuery.getSymbol().IsMeta() {
		ch <- child.SkipTreeTermAndContinueTerm(child.GetArity(), seq[1:], currentEnv)
	}
}

/*****************************/
/* DataStruct implementation */
/*****************************/

// Print routes the tree dump through the "unif" debugger, exactly like the code
// tree's Print does. This keeps it silent on normal runs (e.g. -proof output)
// and only visible when debugging is enabled, instead of writing to stdout
// unconditionally.
func (dNode DiscriminationNode) Print() {
	if dNode.IsEmpty() {
		debug(Lib.MkLazy(func() string { return "Empty Tree" }))
		return
	}
	debug(Lib.MkLazy(func() string { return "[ROOT]" }))
	for _, child := range dNode.getChildren().GetSlice() {
		child.displayRec(1)
	}
}

func (dNode DiscriminationNode) displayRec(depth int) {

	indent := strings.Repeat("    ", depth)

	var nodeTag string

	switch dNode.getSymbol().getSymbol().(type) {
	case TyNode:
		nodeTag = "[Ty]"
	case TermNode:
		nodeTag = "[Term]"
	case NodeString:
		nodeTag = "[String]"
	}

	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf("%s|-- %s %s (arity: %d)", indent, nodeTag, dNode.toString(), dNode.GetArity())
	}))

	if dNode.getLeafFor().Len() > 0 {
		leafIndent := indent + "    "
		for _, pred := range dNode.getLeafFor().GetSlice() {
			debug(Lib.MkLazy(func() string { return fmt.Sprintf("%s[=> %s]", leafIndent, pred.ToString()) }))
		}
	}

	for _, child := range dNode.getChildren().GetSlice() {
		child.displayRec(depth + 1)
	}
}

func (dNode DiscriminationNode) IsEmpty() bool {
	return dNode.getChildren().Empty()
}

func (dNode DiscriminationNode) Copy() subst.DataStructure {
	newChildMaster := Lib.NewList[DiscriminationNode]()
	for _, child := range dNode.getChildren().GetSlice() {
		newChild := child.Copy().(DiscriminationNode)
		newChildMaster.Append(newChild)
	}

	newLeafFor := Lib.ListCpy(dNode.getLeafFor())
	newTermLeafFor := Lib.ListCpy(dNode.getTermLeafFor())
	return DiscriminationNode{
		symbol:      dNode.symbol,
		children:    newChildMaster,
		leafFor:     newLeafFor,
		termLeafFor: newTermLeafFor,
		termOnly:    dNode.termOnly,
	}
}

func (dNode DiscriminationNode) MakeDataStruct(formulas Lib.List[AST.Form], is_pos bool) subst.DataStructure {

	form := Lib.NewList[AST.Form]()

	for _, f := range formulas.GetSlice() {
		switch nf := f.(type) {
		case AST.Pred:
			if is_pos {
				form.Append(nf.Copy())
			}
		case AST.Not:
			switch nf.GetForm().(type) {
			case AST.Pred:
				if !(is_pos) {
					form.Append(nf.GetForm())
				}
			}
		}
	}
	return dNode.InsertFormulaListToDataStructure(form)
}

func (dNode DiscriminationNode) InsertFormulaListToDataStructure(lf Lib.List[AST.Form]) subst.DataStructure {
	for _, f := range lf.GetSlice() {
		switch nf := f.Copy().(type) {
		case AST.Pred:
			dNode = dNode.Insert(nf)
		case AST.Not:
			switch newForm := nf.GetForm().(type) { // Get the type AST.Form
			case AST.Pred:
				dNode = dNode.Insert(newForm)
			}
		}
	}
	return dNode
}

/* Take a list of terms and build the corresponding discrimination tree.
 * The discriminationtree equivalent of codetree.MakeTermUnifProblem: builds
 * a tree purely for term-level unification (UnifyTerm), as opposed to
 * Insert/Unify which index full predicates. */
func MakeTermUnifProblem(l Lib.List[AST.Term]) subst.DataStructure {
	root := NewNode()
	for _, t := range l.GetSlice() {
		root = root.InsertTerm(t)
	}
	return root
}

func (dNode DiscriminationNode) Unify(inputFormula AST.Form) (bool, []subst.MixedSubstitutions) {

	// With -ep, use the early-pruning retrieval. Both paths run the exact same
	// final Robinson unification (see Unify2), so they return the same result;
	// the flag only lets us compare the two retrieval strategies' speed.
	if Glob.GetEarlyPruning() {
		return dNode.Unify2(inputFormula)
	}

	candidates := dNode.RetrieveUnifiables(inputFormula)
	var mixed []subst.MixedSubstitutions
	var found bool

	// Robinson required Pred, so we verify
	predFormula, isPred := inputFormula.(AST.Pred)
	if !isPred {
		Glob.Anomaly("DiscriminationTree Unify", "Expected a predicate")
		return false, nil
	}
	queryTerm := subst.TransformPred(predFormula) // For Robinson

	for _, possibleMatch := range candidates {
		initialSubst := subst.Substitutions{}
		possibleMatchTerm := subst.TransformPred(possibleMatch.getPred())              // Pred -> Term for Robinson
		finalSubst := subst.AddUnification(possibleMatchTerm, queryTerm, initialSubst) // Call Robinson

		if !finalSubst.Equals(subst.Failure()) {
			found = true
			matching := subst.MakeMatchingSubstitutions(possibleMatch.getPred(), finalSubst)
			mixed = append(mixed, matching.ToMixed()) // convert To Mixed for return
		}
	}

	return found, mixed
}

func (dNode DiscriminationNode) UnifyTerm(inputTerm AST.Term) (bool, []subst.MixedTermSubstitutions) {
	return dNode.UnifyTermWithSubst(inputTerm, subst.MakeEmptySubstitution())
}

func (dNode DiscriminationNode) UnifyTermWithSubst(inputTerm AST.Term, globalSubst subst.Substitutions) (bool, []subst.MixedTermSubstitutions) {
	var mixed []subst.MixedTermSubstitutions
	var found bool

	seq := parseTerm(inputTerm, NewContext()).GetSlice()

	if dNode.termOnly {
		// Term-only leaves (termLeafFor, populated via InsertTerm /
		// MakeTermUnifProblem) - needed for trees that only ever hold raw terms.
		termCandidates := dNode.retrieveTermRec(seq, globalSubst)
		for _, possibleMatch := range termCandidates {
			candidateTerm := possibleMatch.getTerm()
			// Re-unify from the caller's own globalSubst, not from whatever
			// possibleMatch itself carries - same reasoning as the Unify2 fix:
			// the traversal's own bookkeeping must never leak into the result.
			finalSubst := subst.AddUnification(inputTerm, candidateTerm, globalSubst.Copy())

			if !finalSubst.Equals(subst.Failure()) {
				found = true
				mixMatch := subst.MixMatchSubstitutions{
					Tof:   Lib.MkLeft[AST.Term, AST.Form](inputTerm),
					Subst: finalSubst,
				}
				mixed = append(mixed, mixMatch.ToMixedTerm())
			}
		}
		return found, mixed
	}

	// Predicate leaves (leafFor, populated via Insert), compared as terms via
	// TransformPred - the original behaviour, for a tree built the "normal" way.
	predCandidates := dNode.retrieveRec(seq, globalSubst)
	for _, possibleMatch := range predCandidates {
		candidateTerm := subst.TransformPred(possibleMatch.getPred())
		finalSubst := subst.AddUnification(inputTerm, candidateTerm, globalSubst)

		if !finalSubst.Equals(subst.Failure()) {
			found = true
			mixMatch := subst.MixMatchSubstitutions{
				Tof:   Lib.MkLeft[AST.Term, AST.Form](inputTerm),
				Subst: finalSubst,
			}
			mixed = append(mixed, mixMatch.ToMixedTerm())
		}
	}

	return found, mixed
}

///////////////////////////////////////////////
/////// EARLY-PRUNING PART OF THE DTREE ///////
///////////////////////////////////////////////

// ReconstructTerm reads a flattened sequence of symbols generated by parseTerm and reconstructs the full AST.Term structure
// This allows the discrimination tree to extract a specific sub-query/sub-term and give it Robinson
func ReconstructTerm(seq []SymbolType) (AST.Term, []SymbolType) {
	if len(seq) == 0 {
		return nil, seq
	}

	head := seq[0]

	// Ignore AST.Type if needed
	if _, ok := head.getSymbol().(TyNode); ok {
		return ReconstructTerm(seq[1:])
	}

	arite := head.GetArity()
	term := head.getTerm()
	currentSeq := seq[1:]

	switch t := term.(type) {
	case AST.Fun:
		// Reconstruct function arguments by recursively parsing subsequent elements
		args := Lib.NewList[AST.Term]()
		for i := 0; i < arite; i++ {
			var arg AST.Term
			arg, currentSeq = ReconstructTerm(currentSeq)
			if arg != nil {
				args.Append(arg)
			}
		}
		return AST.MakerFun(t.GetID(), t.GetTyArgs(), args), currentSeq
	case AST.Meta:
		return t, currentSeq
	case AST.Id:
		return AST.MakerFun(t, Lib.NewList[AST.Ty](), Lib.NewList[AST.Term]()), currentSeq
	default:
		return nil, currentSeq
	}
}

// Unify2 call Robinson at the end, but relies on early pruning during the retrieval phase
func (dNode DiscriminationNode) Unify2(inputFormula AST.Form) (bool, []subst.MixedSubstitutions) {
	candidates := dNode.RetrieveUnifiables2(inputFormula, subst.MakeEmptySubstitution())
	var mixed []subst.MixedSubstitutions
	var found bool

	queryPred, isQueryPred := inputFormula.(AST.Pred) // Convert for Robinson
	if !isQueryPred {
		return false, mixed
	}

	// The final unification is exactly the classic Unify one: transform predicate
	// to term (types included, handled uniformly as term arguments) and run
	// Robinson. Keeping this identical to Unify means the two modes differ *only*
	// in their retrieval strategy (RetrieveUnifiables2's early pruning vs the
	// classic RetrieveUnifiables), which is the whole point of the comparison.
	queryTerm := subst.TransformPred(queryPred)

	for _, possibleMatch := range candidates {
		candPred := possibleMatch.getPred()
		candTerm := subst.TransformPred(candPred)

		// possibleMatch.GetSubs() carries whatever the early-pruning traversal
		// accumulated, but those bindings are keyed by the tree's internally
		// normalized metas (v1, v2, ... from NewContext()) and would leak into the
		// result. The traversal only prunes; Robinson below re-unifies both full
		// terms from scratch, so - like classic Unify - we start from a clean
		// substitution.
		finalSubst := subst.AddUnification(candTerm, queryTerm, subst.Substitutions{})

		if !finalSubst.Equals(subst.Failure()) {
			found = true
			matching := subst.MakeMatchingSubstitutions(candPred, finalSubst)
			mixed = append(mixed, matching.ToMixed())
		}
	}

	return found, mixed
}

// UnifyTerm performs unification directly on an AST.Term instead of a full AST.Form.
func (dNode DiscriminationNode) UnifyTerm2(inputTerm AST.Term) (bool, []subst.MixedTermSubstitutions) {
	var mixed []subst.MixedTermSubstitutions
	var found bool

	seq := parseTerm(inputTerm, NewContext()).GetSlice()

	candidates := dNode.retrieveRec2(seq, subst.MakeEmptySubstitution())

	for _, possibleMatch := range candidates {
		currentSubst := possibleMatch.GetSubs().Copy()
		candidateTerm := subst.TransformPred(possibleMatch.getPred())

		finalSubst := subst.AddUnification(inputTerm, candidateTerm, currentSubst) // Robinson call

		if !finalSubst.Equals(subst.Failure()) {
			found = true
			mixMatch := subst.MixMatchSubstitutions{
				Tof:   Lib.MkLeft[AST.Term, AST.Form](inputTerm),
				Subst: finalSubst,
			}
			mixed = append(mixed, mixMatch.ToMixedTerm())
		}
	}
	return found, mixed
}

// RetrieveUnifiables2 parses the predicate formula and initiates the recursive,
// concurrent unifiable search starting from the current node.
func (dNode DiscriminationNode) RetrieveUnifiables2(t AST.Form, globalEnv subst.Substitutions) []CandidatResult {
	predFormula, _ := t.(AST.Pred)
	seq := parsePred(predFormula, NewContext()).GetSlice()
	return dNode.retrieveRec2(seq, globalEnv)
}

// Call a goroutine per branch in the discrimination tree.
func (dNode DiscriminationNode) retrieveRec2(seq []SymbolType, currentEnv subst.Substitutions) []CandidatResult {
	ch := make(chan []CandidatResult)
	var results []CandidatResult
	var wg sync.WaitGroup

	// End of the sequence reached, collect all predicates stored at this leaf
	if len(seq) == 0 {
		for _, p := range dNode.getLeafFor().GetSlice() {
			results = append(results, MakeCandidat(p, currentEnv.Copy()))
		}
		return results
	}

	// Concurrently evaluate all branch
	for _, child := range dNode.children.GetSlice() {
		wg.Add(1)
		go retrieveCase2(seq, currentEnv.Copy(), child, ch, &wg)
	}

	go func() {
		wg.Wait()
		close(ch)
	}()

	for matches := range ch {
		results = append(results, matches...)
	}

	return results
}

// retrieveCase2 executes backtracking logic on a specific child node. It performs pruning , unification when encountering variables.
func retrieveCase2(seq []SymbolType, currentEnv subst.Substitutions, child DiscriminationNode, ch chan<- []CandidatResult, wg *sync.WaitGroup) {
	defer wg.Done()
	symQuery := seq[0]
	childSym := child.getSymbol()

	isExactMatch := child.symbol.Equals(symQuery)

	// Case 1: Perfect structural symbol match
	if isExactMatch {
		matches := child.retrieveRec2(seq[1:], currentEnv)
		ch <- matches
	}

	// Case 1bis: type-argument / polymorphic symbol match up to unification
	// (mirrors retrieveCase). A polymorphic stored type/symbol such as A / head<A>
	// is not syntactically equal to a concrete query one, yet the two unify, so we
	// descend instead of pruning; the final Robinson pass recomputes the bindings.
	// Not threaded through currentEnv on purpose: Unify2 re-unifies from a clean
	// substitution at the end anyway, exactly like the classic path.
	if !isExactMatch {
		if childTy, queryTy := childSym.GetTy(), symQuery.GetTy(); childTy != nil && queryTy != nil {
			if typesCanUnify(childTy, queryTy) {
				ch <- child.retrieveRec2(seq[1:], currentEnv)
			}
			return
		}
		if symbolsUnifiableModuloTypes(childSym, symQuery) {
			ch <- child.retrieveRec2(seq[1:], currentEnv)
			return
		}
	}

	// Case 2: The tree contains a meta-variable branch (Early Pruning Attempt)
	if childSym.getSymbol().IsMeta() && !isExactMatch {
		queryTerm, restSeq := ReconstructTerm(seq)

		if queryTerm != nil && childSym.getTerm() != nil {
			mergedSub := subst.AddUnification(childSym.getTerm(), queryTerm, currentEnv.Copy()) // Pruning

			if !mergedSub.Equals(subst.Failure()) { // If Succes Continue
				matches := child.retrieveRec2(restSeq, mergedSub)
				ch <- matches
			} else {
				// SAFETY FALLBACK: Robinson's unification failed. This might be a true failure
				// or a false positive due to the Occur-Check on normalized variables (e.g., v1 vs v1).
				// Instead of killing the branch, we skip the term and let the final Unify2 step decide.
				skip := GetSubTermLength(seq)
				if skip <= len(seq) {
					matches := child.retrieveRec2(seq[skip:], currentEnv)
					ch <- matches
				}
			}
		} else if childSym.getTerm() == nil {
			// Fallback if the tree term reference is empty: safely skip the matching sub-term length
			skip := GetSubTermLength(seq)
			if skip <= len(seq) {
				matches := child.retrieveRec2(seq[skip:], currentEnv)
				ch <- matches
			}
		}

		// Case 3: The query sequence contains a meta-variable
	} else if symQuery.getSymbol().IsMeta() && !isExactMatch {
		mergedSub := currentEnv.Copy()

		if child.GetArity() == 0 {
			childTerm := childSym.getTerm()
			symTerm := symQuery.getTerm()

			if childTerm != nil && symTerm != nil {
				properTerm := childTerm
				// Normalize standard IDs into empty functions to align with substitution expectations
				if id, ok := childTerm.(AST.Id); ok {
					properTerm = AST.MakerFun(id, Lib.NewList[AST.Ty](), Lib.NewList[AST.Term]())
				}

				currentSub := subst.MakeSubstitution(symTerm.ToMeta(), properTerm)
				newSubstitutionS := subst.Substitutions{currentSub}

				if len(currentEnv) == 0 {
					mergedSub = newSubstitutionS
				} else {
					mergedSub, _ = subst.MergeSubstitutions(currentEnv, newSubstitutionS)
				}
			}
		}

		if !mergedSub.Equals(subst.Failure()) {
			// Substitution successful: skip the tree's sub-structure and continue
			childResults := child.SkipTreeTermAndContinue2(child.GetArity(), seq[1:], mergedSub)
			ch <- childResults
		} else {
			// SAFETY FALLBACK: Same as above. Do not kill the branch on substitution failure.
			// Skip the sub-structure using the unmodified environment a
			childResults := child.SkipTreeTermAndContinue2(child.GetArity(), seq[1:], currentEnv)
			ch <- childResults
		}
	}
}

// SkipTreeTermAndContinue2 skips a Term and his args if needed
func (dNode DiscriminationNode) SkipTreeTermAndContinue2(needed int, remainingQuery []SymbolType, substitutions subst.Substitutions) []CandidatResult {
	var subs []CandidatResult

	if needed == 0 {
		return dNode.retrieveRec2(remainingQuery, substitutions)
	}

	for _, child := range dNode.getChildren().GetSlice() {
		// (amount - 1) + arity. If meta (amount - 1) + 0 else (amount - 1) + len(args)
		arite := child.GetArity()
		newNeeded := needed - 1 + arite
		matches := child.SkipTreeTermAndContinue2(newNeeded, remainingQuery, substitutions)
		subs = append(subs, matches...)
	}
	return subs
}
