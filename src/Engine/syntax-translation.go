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

var elab_label string = "Elab"
var parsing_label string = "Parsing"

var debug Glob.Debugger
var debug_low_level Glob.Debugger

func InitDebugger() {
	debug = Glob.CreateDebugger("elab")
	debug_low_level = Glob.CreateDebugger("elab-low")
}

func ToInternalSyntax(parser_statements []Parser.PStatement) (statements []Core.Statement, is_typed bool) {
	is_typed = false
	con := initialContext()
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
		debug(Lib.MkLazy(func() string { return fmt.Sprintf("Elaborating formula %s", f.Val.ToString()) }))

		new_con, form, is_typed_form := elaborateParsingForm(con, f.Val)
		core_statement = Core.MakeFormStatement(
			statement.Name(),
			statement_role,
			form,
		)
		is_typed = is_typed || is_typed_form
		con = new_con

	case Lib.None[Parser.PForm]:
		switch ty := statement.TypedConst().(type) {

		case Lib.Some[Lib.Pair[string, Parser.PType]]:
			debug(Lib.MkLazy(func() string {
				return fmt.Sprintf(
					"Elaborating type statement %s: %s",
					ty.Val.Fst,
					ty.Val.Snd.ToString())
			}))

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

func elaborateParsingForm(con Context, f Parser.PForm) (Context, AST.Form, bool) {
	return elaborateForm(con, f, f)
}

// The [source_form] argument is here for error printing purposes.
func elaborateForm(con Context, f, source_form Parser.PForm) (Context, AST.Form, bool) {
	aux := func(con Context, t Parser.PTerm) (Context, AST.Term, bool) {
		return elaborateParsingTerm(con, t)
	}

	switch pform := f.(type) {

	case Parser.PConst:
		switch pform.PConstant {
		case Parser.PTop:
			return con, AST.MakerTop(), false
		case Parser.PBot:
			return con, AST.MakerBot(), false
		}

	case Parser.PPred:
		typed_arguments := pretype(con, pform.Args())
		typed_args, term_args := splitTypes(typed_arguments)
		is_typed := false

		args := Lib.MkList[AST.Term](term_args.Len())
		for i, trm := range term_args.GetSlice() {
			new_con, arg, b := aux(con, trm)
			con = new_con
			is_typed = is_typed || b
			args.Upd(i, arg)
		}

		// Special cases: defined types get elaborated to manage ad-hoc polymorphism
		if isDefined(pform.Symbol()) {
			tys := Lib.ListMap(Lib.MkListV(typed_arguments[typed_args.Len():]...),
				func(p Lib.Pair[Parser.PTerm, Parser.PType]) Parser.PType { return p.Snd })
			typed_args = elaborateDefinedFunctionals(con, pform.Symbol(), tys, args)
		} else {
			is_typed = !typed_args.Empty()
		}

		return con, AST.MakerPred(
			AST.MakerId(pform.Symbol()),
			Lib.ListMap(
				typed_args,
				func(pty Parser.PType) AST.Ty {
					return elaborateType(pty, pty, false)
				}),
			args,
		), is_typed

	case Parser.PUnary:
		switch pform.PUnaryOp {
		case Parser.PUnaryNeg:
			new_con, nf, b := elaborateForm(con, pform.PForm, source_form)
			return new_con, AST.MakerNot(nf), b
		}

	case Parser.PBin:
		switch pform.Operator() {
		case Parser.PBinaryOr:
			return maybeFlattenOr(con, pform, source_form)
		case Parser.PBinaryAnd:
			return maybeFlattenAnd(con, pform, source_form)
		case Parser.PBinaryImp:
			con1, lft, b1 := elaborateForm(con, pform.Left(), source_form)
			new_con, rgt, b2 := elaborateForm(con1, pform.Right(), source_form)
			return new_con, AST.MakerImp(lft, rgt), b1 || b2
		case Parser.PBinaryEqu:
			con1, lft, b1 := elaborateForm(con, pform.Left(), source_form)
			new_con, rgt, b2 := elaborateForm(con1, pform.Right(), source_form)
			return new_con, AST.MakerEqu(lft, rgt), b1 || b2
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
			new_con, form, b := elaborateForm(append(con, actualVars.GetSlice()...), pform.PForm, source_form)
			if !vars.Empty() {
				form = AST.MakerAll(vars, form)
			}
			return new_con, form, b

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
			new_con, form, b := elaborateForm(append(con, actualVars.GetSlice()...), pform.PForm, source_form)
			if !vars.Empty() {
				form = AST.MakerEx(vars, form)
			}
			return new_con, form, b
		}
	}
	Glob.Anomaly(
		elab_label,
		"Parsed formula "+source_form.ToString()+" does not correspond to any internal formula",
	)
	return con, nil, false
}

func maybeFlattenOr(con Context, f Parser.PBin, source_form Parser.PForm) (Context, AST.Form, bool) {
	return maybeFlattenBin(
		con, f, source_form,
		func(ls Lib.List[AST.Form]) AST.Form { return AST.MakerOr(ls) },
		Parser.PBinaryOr,
	)
}

func maybeFlattenAnd(con Context, f Parser.PBin, source_form Parser.PForm) (Context, AST.Form, bool) {
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
) (Context, AST.Form, bool) {
	if !Glob.Flatten() {
		con1, lft, b1 := elaborateForm(con, f.Left(), source_form)
		new_con, rgt, b2 := elaborateForm(con1, f.Right(), source_form)
		return new_con, maker(Lib.MkListV(lft, rgt)), b1 || b2
	}

	subforms := flatten(f, op)
	is_typed := false
	real_subforms := Lib.MkList[AST.Form](subforms.Len())
	for i, subform := range subforms.GetSlice() {
		new_con, real_subform, b := elaborateForm(con, subform, source_form)
		con = new_con
		real_subforms.Upd(i, real_subform)
		is_typed = is_typed || b
	}
	return con, maker(real_subforms), is_typed
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

func elaborateParsingTerm(con Context, t Parser.PTerm) (Context, AST.Term, bool) {
	return elaborateTerm(con, t, t)
}

// The argument [source_term] is here for error printing purposes.
func elaborateTerm(con Context, t, source_term Parser.PTerm) (Context, AST.Term, bool) {
	aux := func(con Context, t Parser.PTerm) (Context, AST.Term, bool) {
		return elaborateTerm(con, t, source_term)
	}

	switch pterm := t.(type) {
	case Parser.PVar:
		return con, AST.MakerVar(pterm.Name()), false

	case Parser.PFun:
		typed_arguments := pretype(con, pterm.Args())
		typed_args, term_args := splitTypes(typed_arguments)
		is_typed := false

		args := Lib.MkList[AST.Term](term_args.Len())
		for i, trm := range term_args.GetSlice() {
			new_con, arg, b := aux(con, trm)
			con = new_con
			is_typed = is_typed || b
			args.Upd(i, arg)
		}

		// Special cases: defined types get elaborated to manage ad-hoc polymorphism
		if isDefined(pterm.Symbol()) {
			tys := Lib.ListMap(Lib.MkListV(typed_arguments[typed_args.Len():]...),
				func(p Lib.Pair[Parser.PTerm, Parser.PType]) Parser.PType { return p.Snd })
			typed_args = elaborateDefinedFunctionals(con, pterm.Symbol(), tys, args)
		} else {
			is_typed = !typed_args.Empty()
		}

		fun := AST.MakerFun(
			AST.MakerId(pterm.Symbol()),
			Lib.ListMap(
				typed_args,
				func(pty Parser.PType) AST.Ty {
					return elaborateType(pty, pty, false)
				}),
			args,
		)
		switch oty := pterm.DefinedType().(type) {
		case Lib.Some[Parser.PTypeFun]:
			debug(Lib.MkLazy(func() string { return fmt.Sprintf("%s is a defined function", pterm.Symbol()) }))
			debug_low_level(Lib.MkLazy(func() string {
				return fmt.Sprintf("%s has defined type %s", pterm.Symbol(), oty.Val.ToString())
			}))
			con = append(con, Lib.MkPair(pterm.Symbol(), Parser.PType(oty.Val)))
			ty := elaborateType(oty.Val, oty.Val, false)
			Typing.AddToGlobalEnv(pterm.Symbol(), ty)
		}
		return con, fun, is_typed || !typed_args.Empty()

	}
	Glob.Anomaly(
		elab_label,
		"Parsed term "+source_term.ToString()+" does not correspond to any internal term",
	)
	return con, nil, false
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
			fatal := func() {
				Glob.Fatal(
					parsing_label,
					fmt.Sprintf(
						"Non-atomic type (%s) found under the type %s",
						ty.ToString(),
						source_type.ToString(),
					),
				)
			}

			switch nty := ty.(type) {
			case Parser.PTypeBin:
				if nty.Operator() == Parser.PTypeMap {
					fatal()
				}
			case Parser.PTypeQuant:
				fatal()
			}
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

func elaborateDefinedFunctionals(
	con Context,
	name string,
	ty_arguments Lib.List[Parser.PType],
	arguments Lib.List[AST.Term],
) Lib.List[Parser.PType] {
	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf("Elaborating defined functional %s(%s)", name, Lib.ListToString(arguments, ", ", ""))
	}))

	// Invariant: call from isDefined, defined_length should be defined as well
	if arguments.Len() != defined_length[name] {
		Glob.Fatal(
			elab_label,
			fmt.Sprintf("%s expects %d arguments, got %d", name, defined_length[name], arguments.Len()),
		)
	}

	ty_args := Lib.NewList[Parser.PType]()
	tys := Lib.NewList[Parser.PType]()
	for i, arg := range arguments.GetSlice() {
		var ty Lib.Option[Parser.PType]
		ty_args := Lib.NewList[Parser.PTerm]()
		switch term := arg.(type) {
		case AST.Fun:
			ty = lookupInContext(con, term.GetName())
			for _, ty := range term.GetTyArgs().GetSlice() {
				switch t := ty.(type) {
				case AST.TyConstr:
					ty_args.Append(Parser.MkFunConst(t.Symbol()))
				case AST.TyBound:
					ty_args.Append(Parser.MkVar(t.GetName()))
				default:
					Glob.Anomaly(elab_label, "Found non-constant type parameter in defined type")
				}
			}
		case AST.Var:
			ty = lookupInContext(con, term.GetName())
		default:
			Glob.Anomaly(elab_label, "Parsed argument is neither a function nor a variable")
		}

		switch rty := ty.(type) {
		case Lib.Some[Parser.PType]:
			tys.Append(instantiateType(rty.Val, arg.GetName(), ty_args.GetSlice()))
		case Lib.None[Parser.PType]:
			// This is not a defined, let's use the inferred type
			tys.Append(ty_arguments.At(i))
		}
	}

	// Take the first allowed argument and hope for the best (leave the rest for the typechecker)
	elab_ty := Lib.MkNone[Parser.PType]()
	for _, ty := range tys.GetSlice() {
		if isAllowed(name, ty) {
			elab_ty = Lib.MkSome(ty)
			break
		}
	}

	switch ety := elab_ty.(type) {
	case Lib.Some[Parser.PType]:
		ty_args.Append(ety.Val)
	case Lib.None[Parser.PType]:
		switch allowed := allowed_elab[name].(type) {
		case Lib.Some[Lib.List[Parser.PType]]:
			Glob.Fatal(
				elab_label,
				fmt.Sprintf(
					"%s expects arguments in {%s}, but found none with the right type",
					name, Lib.ListToString(allowed.Val, ", ", ""),
				))
		case Lib.None[Lib.List[Parser.PType]]:
			Glob.Anomaly(
				elab_label,
				fmt.Sprintf("allowed_elab[%s] is None but term is not allowed", name),
			)
		}
	}

	// Special case: quotient of two integers
	if name == "$quotient" {
		if tys.At(0).Equals(Parser.MkTypeConst("$int")) {
			ty_args.Append(Parser.MkTypeConst("$rat").(Parser.PType))
		} else {
			ty_args.Append(ty_args.At(0))
		}
	}

	debug(Lib.MkLazy(func() string {
		return fmt.Sprintf("Defined functional elaborated to %s(%s ; %s)",
			name, Lib.ListToString(ty_args, ", ", ""), Lib.ListToString(arguments, ", ", ""))
	}))

	return ty_args
}
