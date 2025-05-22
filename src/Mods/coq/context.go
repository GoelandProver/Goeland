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
* This file provides coq's context for a proof.
**/

package coq

import (
	"fmt"
	"strings"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Mods/dmt"
)

func makeContextIfNeeded(root AST.Form, metaList *AST.MetaList) string {
	if !GetContextEnabled() {
		return ""
	}

	resultingString := contextPreamble()

	if Glob.IsLoaded("dmt") {
		registeredAxioms := dmt.GetRegisteredAxioms()
		registeredAxioms.Append(root)
		root = AST.MakerAnd(registeredAxioms)
	}

	if AST.EmptyGlobalContext() {
		resultingString += strings.Join(getContextFromFormula(root), "\n") + "\n"

		if metaList.Len() > 0 {
			resultingString += contextualizeMetas(metaList)
		}
	} else {
		context := AST.GetGlobalContext()
		for k, v := range context {
			if typed, ok := v[0].App.(AST.TypeHint); ok {
				if k[0] != '$' && k == typed.ToString() {
					resultingString += "Parameter " + k + ": Type.\n"

				}
			}
		}

		resultingString += strings.Join(getContextFromFormula(root), "\n") + "\n"

		if metaList.Len() > 0 {
			resultingString += contextualizeMetas(metaList)
		}
	}
	return resultingString
}

func contextPreamble() string {
	str := lemmas
	str += "Parameter goeland_U : Set. (* goeland's universe *)\n"
	str += "Parameter goeland_I : goeland_U. (* an individual in the universe. *)\n\n"
	return str
}

func getContextFromFormula(root AST.Form) []string {
	result := []string{}
	switch nf := root.(type) {
	case AST.All:
		result = getContextFromFormula(nf.GetForm())
	case AST.Ex:
		result = getContextFromFormula(nf.GetForm())
	case AST.AllType:
		result = getContextFromFormula(nf.GetForm())
	case AST.And:
		for _, f := range nf.FormList.Slice() {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case AST.Or:
		for _, f := range nf.FormList.Slice() {
			result = append(result, clean(result, getContextFromFormula(f))...)
		}
	case AST.Imp:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case AST.Equ:
		result = clean(result, getContextFromFormula(nf.GetF1()))
		result = append(result, clean(result, getContextFromFormula(nf.GetF2()))...)
	case AST.Not:
		result = clean(result, getContextFromFormula(nf.GetForm()))
	case AST.Pred:
		if !nf.GetID().Equals(AST.Id_eq) {
			result = append(result, mapDefault(fmt.Sprintf("Parameter %s : %s.", nf.GetID().ToMappedString(coqMapConnectors(), false), nf.GetType().ToString())))
		}
		for _, term := range nf.GetArgs().Slice() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

func getContextFromTerm(trm AST.Term) []string {
	result := []string{}
	if fun, isFun := trm.(AST.Fun); isFun {
		result = append(result, mapDefault(fmt.Sprintf("Parameter %s : %s.", fun.GetID().ToMappedString(coqMapConnectors(), false), fun.GetTypeHint().ToString())))
		for _, term := range fun.GetArgs().Slice() {
			result = append(result, clean(result, getContextFromTerm(term))...)
		}
	}
	return result
}

// Returns everything in add not in set
func clean(set, add []string) []string {
	result := []string{}
	for _, str := range add {
		found := false
		for _, s := range set {
			if s == str {
				found = true
				break
			}
		}
		if !found {
			result = append(result, str)
		}
	}
	return result
}

func contextualizeMetas(metaList *AST.MetaList) string {
	result := []string{}
	for _, meta := range metaList.Slice() {
		result = append(result, meta.ToMappedString(coqMapConnectors(), false))
	}
	return "Parameters " + strings.Join(result, " ") + " : goeland_U."
}

var lemmas = `Require Export Classical.

Lemma goeland_notnot : forall P : Prop,
  P -> (~ P -> False).
Proof. tauto. Qed.

Lemma goeland_nottrue :
  (~True -> False).
Proof. tauto. Qed.

Lemma goeland_and : forall P Q : Prop,
  (P -> (Q -> False)) -> (P /\ Q -> False).
Proof. tauto. Qed.

Lemma goeland_or : forall P Q : Prop,
  (P -> False) -> (Q -> False) -> (P \/ Q -> False).
Proof. tauto. Qed.

Lemma goeland_imply : forall P Q : Prop,
  (~P -> False) -> (Q -> False) -> ((P -> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_equiv : forall P Q : Prop,
  (~P -> ~Q -> False) -> (P -> Q -> False) -> ((P <-> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notand : forall P Q : Prop,
  (~P -> False) -> (~Q -> False) -> (~(P /\ Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notor : forall P Q : Prop,
  (~P -> ~Q -> False) -> (~(P \/ Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notimply : forall P Q : Prop,
  (P -> ~Q -> False) -> (~(P -> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_notequiv : forall P Q : Prop,
  (~P -> Q -> False) -> (P -> ~Q -> False) -> (~(P <-> Q) -> False).
Proof. tauto. Qed.

Lemma goeland_ex : forall (T : Type) (P : T -> Prop),
  (forall z : T, ((P z) -> False)) -> ((exists x : T, (P x)) -> False).
Proof. firstorder. Qed.

Lemma goeland_all : forall (T : Type) (P : T -> Prop) (t : T),
  ((P t) -> False) -> ((forall x : T, (P x)) -> False).
Proof. firstorder. Qed.

Lemma goeland_notex : forall (T : Type) (P : T -> Prop) (t : T),
  (~(P t) -> False) -> (~(exists x : T, (P x)) -> False).
Proof. firstorder. Qed.

Lemma goeland_notall : forall (T : Type) (P : T -> Prop),
  (forall z : T, (~(P z) -> False)) -> (~(forall x : T, (P x)) -> False).
Proof. intros T P Ha Hb. apply Hb. intro. apply NNPP. exact (Ha x). Qed.

Definition goeland_and_s := fun P Q c h => goeland_and P Q h c.
Definition goeland_or_s := fun P Q c h i => goeland_or P Q h i c.
Definition goeland_imply_s := fun P Q c h i => goeland_imply P Q h i c.
Definition goeland_equiv_s := fun P Q c h i => goeland_equiv P Q h i c.
Definition goeland_notand_s := fun P Q c h i => goeland_notand P Q h i c.
Definition goeland_notor_s := fun P Q c h => goeland_notor P Q h c.
Definition goeland_notimply_s := fun P Q c h => goeland_notimply P Q h c.
Definition goeland_notequiv_s := fun P Q c h i => goeland_notequiv P Q h i c.
Definition goeland_ex_s := fun T P c h => goeland_ex T P h c.
Definition goeland_notall_s := fun T P c h => goeland_notall T P h c.
`
