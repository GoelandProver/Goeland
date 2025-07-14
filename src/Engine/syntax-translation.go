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
)

type Context []Lib.Pair[string, Parser.PType]

var elab_label string = "Elab"
var parsing_label string = "Parsing"

func ToInternalSyntax(parser_statements []Parser.PStatement) []Core.Statement {
	statements := []Core.Statement{}
	con := Context{}
	for _, statement := range parser_statements {
		newCon, stmt := elaborateParsingStatement(con, statement)
		statements = append(statements, stmt)
		con = newCon
	}
	return statements
}

func elaborateParsingStatement(
	con Context,
	statement Parser.PStatement,
) (Context, Core.Statement) {
	statement_role := elaborateRole(statement.Role(), statement)
	var core_statement Core.Statement
	switch f := statement.Form().(type) {

	case Lib.Some[Parser.PForm]:
		core_statement = Core.MakeFormStatement(
			statement.Name(),
			statement_role,
			elaborateParsingForm(con, f.Val),
		)

	case Lib.None[Parser.PForm]:
		switch ty := statement.TypedConst().(type) {

		case Lib.Some[Lib.Pair[string, Parser.PType]]:
			con = append(con, ty.Val)
			core_statement = Core.MakeTypingStatement(
				statement.Name(),
				statement_role,
				elaborateParsingType(ty.Val),
			)

		case Lib.None[Lib.Pair[string, Parser.PType]]:
			if statement.Role() != Parser.Include {
				Glob.Anomaly(elab_label, fmt.Sprintf(
					"Statement %s is neither a formula nor a type nor an include", statement.ToString()))
			} else {
				core_statement = Core.MakeIncludeStatement(statement.Name())
			}
		}
	}
	return con, core_statement
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

func elaborateParsingForm(con Context, f Parser.PForm) AST.Form {
	return elaborateForm(con, f, f)
}

// The [source_form] argument is here for error printing purposes.
func elaborateForm(con Context, f, source_form Parser.PForm) AST.Form {
	aux := func(t Parser.PTerm) AST.Term {
		return elaborateParsingTerm(con, t)
	}

	switch pform := f.(type) {

	case Parser.PConst:
		switch pform.PConstant {
		case Parser.PTop:
			return AST.MakerTop()
		case Parser.PBot:
			return AST.MakerBot()
		}

	case Parser.PPred:
		typed_arguments := pretype(con, pform.Args())
		type_args, real_args := splitTypes(typed_arguments)
		return AST.MakerPred(
			AST.MakerId(pform.Symbol()),
			Lib.ListMap(real_args, aux),
			Lib.ListMap(
				type_args,
				func(pty Parser.PType) AST.TypeApp {
					return elaborateType(pty, pty).(AST.TypeApp)
				},
			).GetSlice(),
		)

	case Parser.PUnary:
		switch pform.PUnaryOp {
		case Parser.PUnaryNeg:
			return AST.MakerNot(elaborateForm(con, pform.PForm, source_form))
		}

	case Parser.PBin:
		switch pform.Operator() {
		case Parser.PBinaryOr:
			return maybeFlattenOr(con, pform, source_form)
		case Parser.PBinaryAnd:
			return maybeFlattenAnd(con, pform, source_form)
		case Parser.PBinaryImp:
			return AST.MakerImp(
				elaborateForm(con, pform.Left(), source_form),
				elaborateForm(con, pform.Right(), source_form),
			)
		case Parser.PBinaryEqu:
			return AST.MakerEqu(
				elaborateForm(con, pform.Left(), source_form),
				elaborateForm(con, pform.Right(), source_form),
			)
		}

	case Parser.PQuant:
		type_vars, vars := splitTypeVars(pform.Vars())
		switch pform.PQuantifier {
		case Parser.PQuantAll:
			actualVars := Lib.ListMap(
				Lib.MkListV(pform.Vars()...),
				func(p Lib.Pair[string, Parser.PAtomicType]) Lib.Pair[string, Parser.PType] {
					return Lib.MkPair(p.Fst, p.Snd.(Parser.PType))
				},
			)
			form := elaborateForm(append(con, actualVars.GetSlice()...), pform.PForm, source_form)
			if len(vars) != 0 {
				form = AST.MakerAll(vars, form)
			}
			if len(type_vars) != 0 {
				form = AST.MakerAllType(type_vars, form)
			}
			return form
		case Parser.PQuantEx:
			if len(type_vars) != 0 {
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
			form := elaborateForm(append(con, actualVars.GetSlice()...), pform.PForm, source_form)
			if len(vars) != 0 {
				return AST.MakerEx(vars, form)
			}
			return form
		}
	}
	Glob.Anomaly(
		elab_label,
		"Parsed formula "+source_form.ToString()+" does not correspond to any internal formula",
	)
	return nil
}

func maybeFlattenOr(con Context, f Parser.PBin, source_form Parser.PForm) AST.Form {
	return maybeFlattenBin(
		con, f, source_form,
		// FIXME: get rid of the pointer
		func(ls *AST.FormList) AST.Form { return AST.MakerOr(ls) },
		Parser.PBinaryOr,
	)
}

func maybeFlattenAnd(con Context, f Parser.PBin, source_form Parser.PForm) AST.Form {
	return maybeFlattenBin(
		con, f, source_form,
		// FIXME: get rid of the pointer
		func(ls *AST.FormList) AST.Form { return AST.MakerAnd(ls) },
		Parser.PBinaryAnd,
	)
}

func maybeFlattenBin(
	con Context,
	f Parser.PBin,
	source_form Parser.PForm,
	maker Lib.Func[*AST.FormList, AST.Form],
	op Parser.PBinOp,
) AST.Form {
	if !Glob.Flatten() {
		return maker(
			AST.NewFormList(
				elaborateForm(con, f.Left(), source_form),
				elaborateForm(con, f.Right(), source_form),
			))
	}

	subforms := flatten(f, op)
	forms := AST.NewFormList(
		Lib.ListMap(
			subforms,
			func(f Parser.PForm) AST.Form { return elaborateForm(con, f, source_form) },
		).GetSlice()...,
	)
	return maker(forms)
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

func elaborateParsingTerm(con Context, t Parser.PTerm) AST.Term {
	return elaborateTerm(con, t, t)
}

// The argument [source_term] is here for error printing purposes.
func elaborateTerm(con Context, t, source_term Parser.PTerm) AST.Term {
	aux := func(t Parser.PTerm) AST.Term {
		return elaborateTerm(con, t, source_term)
	}

	fail := func(ty AST.TypeScheme) {
		Glob.Fatal(
			parsing_label,
			fmt.Sprintf(
				"Non-atomic type found when pretyping %s: got %s",
				t.ToString(),
				ty.ToString(),
			),
		)
	}

	switch pterm := t.(type) {
	case Parser.PVar:
		ty := lookupInContext(con, pterm.Name())
		switch t := ty.(type) {
		case Lib.Some[Parser.PType]:
			if isTType(t.Val) {
				Glob.Anomaly(
					elab_label,
					fmt.Sprintf(
						"Trying to transform the type variable %s into an internal term in %s",
						pterm.Name(),
						source_term.ToString(),
					),
				)
			}

			ty := elaborateType(t.Val, t.Val)
			if _, ok := ty.(AST.TypeApp); !ok {
				fail(ty)
			}
			// FIXME: get some error function over here
			return AST.MakerVar(pterm.Name(), elaborateType(t.Val, t.Val).(AST.TypeApp))
		}

	case Parser.PFun:
		typed_arguments := pretype(con, pterm.Args())
		type_args, real_args := splitTypes(typed_arguments)
		fun := AST.MakerFun(
			AST.MakerId(pterm.Symbol()),
			Lib.ListMap(real_args, aux),
			Lib.ListMap(
				type_args,
				func(pty Parser.PType) AST.TypeApp {
					ty := elaborateType(pty, pty)
					if _, ok := ty.(AST.TypeApp); !ok {
						fail(ty)
					}
					return elaborateType(pty, pty).(AST.TypeApp)
				},
			).GetSlice(),
		)
		switch oty := pterm.DefinedType().(type) {
		case Lib.Some[Parser.PTypeFun]:
			ty := elaborateType(oty.Val, oty.Val).(AST.TypeApp)
			AST.SaveConstant(pterm.Symbol(), ty)
		}
		return fun

	}
	Glob.Anomaly(
		elab_label,
		"Parsed term "+source_term.ToString()+" does not correspond to any internal term",
	)
	return nil
}

func elaborateParsingType(pty Lib.Pair[string, Parser.PType]) Core.TFFAtomTyping {
	return Core.TFFAtomTyping{
		Literal: AST.MakerId(pty.Fst),
		Ts:      elaborateType(pty.Snd, pty.Snd),
	}
}

// The [source_type] argument is here for error printing.
func elaborateType(pty, source_type Parser.PType) AST.TypeScheme {
	aux := func(pty Parser.PType) AST.TypeScheme {
		return elaborateType(pty, source_type)
	}
	switch ty := pty.(type) {
	case Parser.PTypeVar:
		return AST.MkTypeVar(ty.Name())

	case Parser.PTypeFun:
		if len(ty.Args()) == 0 {
			return AST.MkTypeHint(ty.Symbol())
		} else {
			args := Lib.MkListV(ty.Args()...)
			actualArgs := Lib.ListMap(
				args,
				func(atom Parser.PAtomicType) Parser.PType { return atom.(Parser.PType) },
			)
			elaboratedArgs := Lib.ListMap(actualArgs, aux)
			convertedArgs := Lib.ListMap(
				elaboratedArgs,
				func(ty AST.TypeScheme) AST.TypeApp { return ty.(AST.TypeApp) },
			)
			// FIXME: this is __bad__
			params := []AST.TypeApp{}
			for range convertedArgs.GetSlice() {
				params = append(params, nil)
			}
			// FIXME: shouldn't this be internalized when making a new parameterized type
			// instead of having to save it before?
			AST.SaveParamereterizedType(ty.Symbol(), params)
			return AST.MkParameterizedType(
				ty.Symbol(),
				convertedArgs.GetSlice(),
			)
		}

	case Parser.PTypeBin:
		new_left := elaborateType(ty.Left(), source_type)
		new_right := elaborateType(ty.Right(), source_type)

		fail := func(cse string) {
			Glob.Fatal(
				parsing_label,
				fmt.Sprintf(
					"Non-atomic type found under the %s type %s in %s",
					cse,
					ty.ToString(),
					source_type.ToString(),
				),
			)
		}

		switch ty.Operator() {
		case Parser.PTypeProd:
			if !Glob.Is[AST.TypeApp](new_left) {
				fail("map")
			}
			if !Glob.Is[AST.TypeApp](new_right) {
				fail("map")
			}
			left_list := flattenProd(new_left.(AST.TypeApp))
			right_list := flattenProd(new_right.(AST.TypeApp))
			return AST.MkTypeCross(append(left_list, right_list...)...)
		case Parser.PTypeMap:
			if !Glob.Is[AST.TypeApp](new_left) {
				fail("map")
			}
			if !Glob.Is[AST.TypeApp](new_right) {
				fail("map")
			}
			return AST.MkTypeArrow(
				elaborateType(ty.Left(), source_type).(AST.TypeApp),
				elaborateType(ty.Right(), source_type).(AST.TypeApp),
			)
		}

	case Parser.PTypeQuant:
		switch ty.Quant() {
		case Parser.PTypeAll:
			vars := Lib.MkListV(ty.Vars()...)
			actualVars := Lib.ListMap(
				vars,
				func(p Lib.Pair[string, Parser.PAtomicType]) AST.TypeVar {
					return AST.MkTypeVar(p.Fst)
				},
			)
			return AST.MkQuantifiedType(
				actualVars.GetSlice(),
				elaborateType(ty.Ty(), source_type),
			)
		}
	}

	Glob.Anomaly(
		elab_label,
		"Parsed type "+source_type.ToString()+" does not correspond to any internal type",
	)
	return nil
}

func flattenProd(ty AST.TypeApp) []AST.TypeApp {
	switch nty := ty.(type) {
	case AST.TypeCross:
		res := []AST.TypeApp{}
		for _, uty := range nty.GetAllUnderlyingTypes() {
			res = append(res, flattenProd(uty)...)
		}
		return res
	}
	return []AST.TypeApp{ty}
}
