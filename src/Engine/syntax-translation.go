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
* This file translates the syntax from parsing time to an internal representation.
**/

package Engine

import (
	"fmt"

	"github.com/GoelandProver/Goeland/AST"
	"github.com/GoelandProver/Goeland/Core"
	"github.com/GoelandProver/Goeland/Glob"
	"github.com/GoelandProver/Goeland/Lib"
	"github.com/GoelandProver/Goeland/Parser"
	"github.com/GoelandProver/Goeland/Typing"
)

type Context []Lib.Pair[string, Parser.PType]

var elab_label string = "Elab"
var parsing_label string = "Parsing"

func ToInternalSyntax(parser_statements []Parser.PStatement) (statements []Core.Statement, is_typed bool) {
	is_typed = false
	con := Context{}
	for _, statement := range parser_statements {
		new_con, stmt, is_typed_stmt := elaborateParsingStatement(con, statement)
		statements = append(statements, stmt)
		con = new_con
		is_typed = is_typed || is_typed_stmt
	}
	return statements, is_typed
}

func elaborateParsingStatement(
	con Context,
	statement Parser.PStatement,
) (Context, Core.Statement, bool) {
	statement_role := elaborateRole(statement.Role(), statement)
	is_typed := false
	var core_statement Core.Statement
	switch f := statement.Form().(type) {

	case Lib.Some[Parser.PForm]:
		form, is_typed_form := elaborateParsingForm(con, f.Val)
		core_statement = Core.MakeFormStatement(
			statement.Name(),
			statement_role,
			form,
		)
		is_typed = is_typed || is_typed_form

	case Lib.None[Parser.PForm]:
		switch ty := statement.TypedConst().(type) {

		case Lib.Some[Lib.Pair[string, Parser.PType]]:
			con = append(con, ty.Val)
			core_statement = Core.MakeTypingStatement(
				statement.Name(),
				statement_role,
				elaborateParsingType(ty.Val),
			)
			is_typed = true

		case Lib.None[Lib.Pair[string, Parser.PType]]:
			if statement.Role() != Parser.Include {
				Glob.Anomaly(elab_label, fmt.Sprintf(
					"Statement %s is neither a formula nor a type nor an include", statement.ToString()))
			} else {
				core_statement = Core.MakeIncludeStatement(statement.Name())
			}
		}
	}
	return con, core_statement, is_typed
}

func elaborateRole(parsing_role Parser.PFormulaRole, stmt Parser.PStatement) Core.FormulaRole {
	switch parsing_role {
	case Parser.Axiom:
		return Core.Axiom
	case Parser.Conjecture:
		return Core.Conjecture
	case Parser.NegatedConjecture:
		return Core.NegatedConjecture
	case Parser.Type:
		return Core.Type
	case Parser.Unknown:
		Glob.PrintWarn(elab_label, "Statement "+stmt.ToString()+
			" has an unkown role. It will be ignored.")
		return Core.Unknown
	case Parser.Include:
		return Core.Include
	}
	Glob.Anomaly(elab_label, fmt.Sprintf(
		"Statement %s has a role that does not correspond any known role",
		stmt.ToString()),
	)
	return Core.Unknown
}

func elaborateParsingForm(con Context, f Parser.PForm) (AST.Form, bool) {
	return elaborateForm(con, f, f)
}

// The [source_form] argument is here for error printing purposes.
func elaborateForm(con Context, f, source_form Parser.PForm) (AST.Form, bool) {
	aux := func(t Parser.PTerm) (AST.Term, bool) {
		return elaborateParsingTerm(con, t)
	}

	switch pform := f.(type) {

	case Parser.PConst:
		switch pform.PConstant {
		case Parser.PTop:
			return AST.MakerTop(), false
		case Parser.PBot:
			return AST.MakerBot(), false
		}

	case Parser.PPred:
		typed_arguments := pretype(con, pform.Args())
		typed_args, term_args := splitTypes(typed_arguments)
		args := Lib.MkList[AST.Term](term_args.Len())
		is_typed := false

		for i, trm := range term_args.GetSlice() {
			arg, b := aux(trm)
			is_typed = is_typed || b
			args.Upd(i, arg)
		}

		return AST.MakerPred(
			AST.MakerId(pform.Symbol()),
			Lib.ListMap(
				typed_args,
				func(pty Parser.PType) AST.Ty {
					return elaborateType(pty, pty, false)
				}),
			args,
		), is_typed || !typed_args.Empty()

	case Parser.PUnary:
		switch pform.PUnaryOp {
		case Parser.PUnaryNeg:
			nf, b := elaborateForm(con, pform.PForm, source_form)
			return AST.MakerNot(nf), b
		}

	case Parser.PBin:
		switch pform.Operator() {
		case Parser.PBinaryOr:
			return maybeFlattenOr(con, pform, source_form)
		case Parser.PBinaryAnd:
			return maybeFlattenAnd(con, pform, source_form)
		case Parser.PBinaryImp:
			lft, b1 := elaborateForm(con, pform.Left(), source_form)
			rgt, b2 := elaborateForm(con, pform.Right(), source_form)
			return AST.MakerImp(lft, rgt), b1 || b2
		case Parser.PBinaryEqu:
			lft, b1 := elaborateForm(con, pform.Left(), source_form)
			rgt, b2 := elaborateForm(con, pform.Right(), source_form)
			return AST.MakerEqu(lft, rgt), b1 || b2
		}

	case Parser.PQuant:
		vars := pretypeVars(pform.Vars())
		switch pform.PQuantifier {
		case Parser.PQuantAll:
			actualVars := Lib.ListMap(
				Lib.MkListV(pform.Vars()...),
				func(p Lib.Pair[string, Parser.PAtomicType]) Lib.Pair[string, Parser.PType] {
					return Lib.MkPair(p.Fst, p.Snd.(Parser.PType))
				},
			)
			form, b := elaborateForm(append(con, actualVars.GetSlice()...), pform.PForm, source_form)
			if !vars.Empty() {
				form = AST.MakerAll(vars, form)
			}
			return form, b
		case Parser.PQuantEx:
			if vars.Any(func(v AST.TypedVar) bool { return AST.IsTType(v.GetTy()) }) {
				Glob.Anomaly(
					elab_label,
					"Found existentially quantified types when parsing "+source_form.ToString(),
				)
			}
			actualVars := Lib.ListMap(
				Lib.MkListV(pform.Vars()...),
				func(p Lib.Pair[string, Parser.PAtomicType]) Lib.Pair[string, Parser.PType] {
					return Lib.MkPair(p.Fst, p.Snd.(Parser.PType))
				},
			)
			form, b := elaborateForm(append(con, actualVars.GetSlice()...), pform.PForm, source_form)
			if !vars.Empty() {
				form = AST.MakerEx(vars, form)
			}
			return form, b
		}
	}
	Glob.Anomaly(
		elab_label,
		"Parsed formula "+source_form.ToString()+" does not correspond to any internal formula",
	)
	return nil, false
}

func maybeFlattenOr(con Context, f Parser.PBin, source_form Parser.PForm) (AST.Form, bool) {
	return maybeFlattenBin(
		con, f, source_form,
		func(ls Lib.List[AST.Form]) AST.Form { return AST.MakerOr(ls) },
		Parser.PBinaryOr,
	)
}

func maybeFlattenAnd(con Context, f Parser.PBin, source_form Parser.PForm) (AST.Form, bool) {
	return maybeFlattenBin(
		con, f, source_form,
		func(ls Lib.List[AST.Form]) AST.Form { return AST.MakerAnd(ls) },
		Parser.PBinaryAnd,
	)
}

func maybeFlattenBin(
	con Context,
	f Parser.PBin,
	source_form Parser.PForm,
	maker Lib.Func[Lib.List[AST.Form], AST.Form],
	op Parser.PBinOp,
) (AST.Form, bool) {
	if !Glob.Flatten() {
		lft, b1 := elaborateForm(con, f.Left(), source_form)
		rgt, b2 := elaborateForm(con, f.Right(), source_form)
		return maker(Lib.MkListV(lft, rgt)), b1 || b2
	}

	subforms := flatten(f, op)
	is_typed := false
	real_subforms := Lib.MkList[AST.Form](subforms.Len())
	for i, subform := range subforms.GetSlice() {
		real_subform, b := elaborateForm(con, subform, source_form)
		real_subforms.Upd(i, real_subform)
		is_typed = is_typed || b
	}
	return maker(real_subforms), is_typed
}

func flatten(f Parser.PForm, op Parser.PBinOp) Lib.List[Parser.PForm] {
	switch form := f.(type) {
	case Parser.PBin:
		if form.Operator() == op {
			ls := flatten(form.Left(), op)
			ls.Append(flatten(form.Right(), op).GetSlice()...)
			return ls
		}
	}
	return Lib.MkListV(f)
}

func elaborateParsingTerm(con Context, t Parser.PTerm) (AST.Term, bool) {
	return elaborateTerm(con, t, t)
}

// The argument [source_term] is here for error printing purposes.
func elaborateTerm(con Context, t, source_term Parser.PTerm) (AST.Term, bool) {
	aux := func(t Parser.PTerm) (AST.Term, bool) {
		return elaborateTerm(con, t, source_term)
	}

	switch pterm := t.(type) {
	case Parser.PVar:
		return AST.MakerVar(pterm.Name()), false

	case Parser.PFun:
		typed_arguments := pretype(con, pterm.Args())
		ty_args, trm_args := splitTypes(typed_arguments)
		args := Lib.MkList[AST.Term](trm_args.Len())
		is_typed := false

		for i, trm := range trm_args.GetSlice() {
			arg, b := aux(trm)
			is_typed = is_typed || b
			args.Upd(i, arg)
		}

		fun := AST.MakerFun(
			AST.MakerId(pterm.Symbol()),
			Lib.ListMap(
				ty_args,
				func(pty Parser.PType) AST.Ty {
					return elaborateType(pty, pty, false)
				}),
			args,
		)
		switch oty := pterm.DefinedType().(type) {
		case Lib.Some[Parser.PTypeFun]:
			ty := elaborateType(oty.Val, oty.Val, false)
			Typing.AddToGlobalEnv(pterm.Symbol(), ty)
		}
		return fun, is_typed || !ty_args.Empty()

	}
	Glob.Anomaly(
		elab_label,
		"Parsed term "+source_term.ToString()+" does not correspond to any internal term",
	)
	return nil, false
}

func elaborateParsingType(pty Lib.Pair[string, Parser.PType]) Core.TFFAtomTyping {
	return Core.TFFAtomTyping{
		Literal: AST.MakerId(pty.Fst),
		Ty:      elaborateType(pty.Snd, pty.Snd, true),
	}
}

// The [source_type] argument is here for error printing.
func elaborateType(pty, source_type Parser.PType, from_top_level bool) AST.Ty {
	aux := func(pty Parser.PType) AST.Ty {
		return elaborateType(pty, source_type, from_top_level)
	}
	switch ty := pty.(type) {
	case Parser.PTypeVar:
		if from_top_level {
			return AST.MkTyVar(ty.Name())
		} else {
			return AST.MakerTyBV(ty.Name())
		}
	case Parser.PTypeFun:
		args := Lib.MkListV(ty.Args()...)
		actualArgs := Lib.ListMap(
			args,
			func(atom Parser.PAtomicType) Parser.PType { return atom.(Parser.PType) },
		)
		elaboratedArgs := Lib.ListMap(actualArgs, aux)
		return AST.MkTyConstr(ty.Symbol(), elaboratedArgs)

	case Parser.PTypeBin:
		fail_if_forbidden := func(ty Parser.PType) {
			Glob.Fatal(
				parsing_label,
				fmt.Sprintf(
					"Non-atomic type (%s) found under the type %s",
					ty.ToString(),
					source_type.ToString(),
				),
			)
		}

		fail_if_forbidden(ty.Left())
		fail_if_forbidden(ty.Right())

		new_left := elaborateType(ty.Left(), source_type, from_top_level)
		new_right := elaborateType(ty.Right(), source_type, from_top_level)

		switch ty.Operator() {
		case Parser.PTypeProd:
			left_list := flattenProd(new_left)
			right_list := flattenProd(new_right)
			return AST.MkTyProd(Lib.MkListV(append(left_list, right_list...)...))
		case Parser.PTypeMap:
			return AST.MkTyFunc(
				elaborateType(ty.Left(), source_type, from_top_level),
				elaborateType(ty.Right(), source_type, from_top_level),
			)
		}

	case Parser.PTypeQuant:
		switch ty.Quant() {
		case Parser.PTypeAll:
			var_names := Lib.MkList[string](len(ty.Vars()))
			for i, v := range ty.Vars() {
				var_names.Upd(i, v.Fst)
			}

			underlying_type := elaborateType(ty.Ty(), source_type, from_top_level)

			if Glob.Is[AST.TyPi](underlying_type) {
				Glob.Anomaly(
					elab_label,
					fmt.Sprintf("Found nested Pi-type in %s", source_type.ToString()),
				)
			}

			return AST.MkTyPi(var_names, underlying_type)
		}
	}

	Glob.Anomaly(
		elab_label,
		"Parsed type "+source_type.ToString()+" does not correspond to any internal type",
	)
	return nil
}

func flattenProd(ty AST.Ty) []AST.Ty {
	switch nty := ty.(type) {
	case AST.TyProd:
		res := []AST.Ty{}
		for _, uty := range nty.GetTys().GetSlice() {
			res = append(res, flattenProd(uty)...)
		}
		return res
	}
	return []AST.Ty{ty}
}
