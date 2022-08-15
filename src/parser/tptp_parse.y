/**
* Copyright 2022 by the authors (see AUTHORS).
*
* Goéland is an automated theorem prover for first order logic.
*
* This software is governed by the CeCILL-B license under French law and
* abiding by the rules of distribution of free software.  You can  use, 
* modify and/ or redistribute the software under the terms of the CeCILL-B
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
* knowledge of the CeCILL-B license and that you accept its terms.
**/

%{
package parser 

import (
    btypes "github.com/GoelandProver/Goeland/types/basic-types"
    typing "github.com/GoelandProver/Goeland/polymorphism/typing"
    . "github.com/GoelandProver/Goeland/global"
)

var quantifiersCounter = 0
var yylineno = 1

// Final result
var statement []btypes.Statement
var definedType string

// Either a TypeVar or a Typed Variable
type TFFVar struct {
    type_ typing.TypeApp
    typedVar btypes.Var
}

type TFFVarList struct {
    types []typing.TypeApp
    typedVars []btypes.Var
}

type TFFTerm struct {
    type_ typing.TypeApp
    term btypes.Term
}

type TFFTermList struct {
    types []typing.TypeApp
    terms []btypes.Term
}

type TFFFormula struct {
    form btypes.Form
    atomTyping btypes.TFFAtomTyping 
}
%}

// Semantic union
%union{
    str string 
    stm btypes.Statement
    lstm []btypes.Statement
    fr btypes.FormulaRole
    form btypes.Form
    tvl []typing.TypeVar
    tv typing.TypeVar
	vrl []btypes.Var
	vrb btypes.Var
    id btypes.Id
    trm btypes.Term 
    tml []btypes.Term
    tfv TFFVar
    tfl TFFVarList
    ttl TFFTermList
    tft TFFTerm
    tph typing.TypeHint
    tpc typing.TypeCross
    tpa typing.TypeArrow
    tya typing.TypeApp
    tal []typing.TypeApp
    tps typing.TypeScheme
    qtp typing.QuantifiedType
    tat btypes.TFFAtomTyping
    tff TFFFormula
}

// Tokens definition

// Keywords
%token FOF CNF THF TFF TCF TPI INCLUDE DOLLAR_FOT DOLLAR_FOF DOLLAR_TFF
// Punctuation
%token LEFT_PAREN RIGHT_PAREN COMMA DOT LEFT_BRACKET RIGHT_BRACKET COLON
// Operators
%token FORALL EXISTS NOT VLINE AND EQUIV IMPLY LEFT_IMPLY XOR NOTVLINE NOTAND STAR PLUS FORALL_TYPE SUBTYPE
// Predicates
%token EQUAL NOT_EQUAL TRUE FALSE
// Quoted words
%token <str> SINGLE_QUOTED DISTINCT_OBJECT
// Words
%token <str> DOLLAR_DOLLAR_WORD DOLLAR_WORD UPPER_WORD LOWER_WORD
// Special chars
%token ARROW LESS_SIGN HASH SLASH SLOSH DASH
// Numbers
%token <str> INTEGER REAL RATIONAL

// Semantic type of non-terminal type
%type <lstm> tptp_file tptp_input_list
%type <stm> tff_annotated
%type <stm>  tptp_input annotated_formula include fof_annotated tpi_annotated
%type <str>  name atomic_word atomic_defined_word number file_name type_constant type_functor defined_type
%type <fr>   formula_role 
%type <form>  tpi_formula
%type <form>  tff_logic_formula tff_and_formula tff_binary_assoc tff_binary_formula tff_binary_nonassoc tff_or_formula tff_unitary_formula tff_unit_formula tff_preunit_formula tff_quantified_formula tff_unary_formula tff_prefix_unary tff_infix_unary tff_atomic_formula tff_plain_atomic_formula tff_defined_atomic tff_defined_plain
%type <form> fof_formula fof_infix_unary fof_logic_formula fof_binary_formula fof_binary_nonassoc fof_binary_assoc fof_or_formula fof_and_formula fof_unary_formula fof_unit_formula fof_unitary_formula fof_quantified_formula fof_atomic_formula fof_plain_atomic_formula fof_defined_atomic_formula fof_defined_plain_formula fof_defined_infix_formula tff_defined_infix
%type <tfv> tff_variable tff_typed_variable
%type <tfl> tff_variable_list
%type <vrl> fof_variable_list
%type <vrb> variable
%type <id> constant defined_constant functor defined_functor untyped_atom 
%type <trm> fof_plain_term fof_defined_term fof_defined_atomic_term fof_defined_plain_term fof_term fof_function_term defined_term /* fof_plain_atomic_term */
%type <tml> fof_arguments
%type <ttl> tff_arguments
%type <tft> tff_term tff_plain_term tff_defined_term tff_defined_atomic_term tff_defined_plain_term tff_function_term

%type <tpc> tff_xprod_type
%type <tpa> tff_mapping_type
%type <tya> tff_unitary_type tff_atomic_type
%type <tal> tff_type_arguments
%type <tps> tff_monotype tff_non_atomic_type tff_top_level_type 
%type <qtp> tf1_quantified_type 
%type <tat> tff_atom_typing
%type <tff> tff_formula
%%

/**
 * TPTP 8.0.0 parser
 * Following TPTP's syntax bnf (https://tptp.org/TPTP/SyntaxBNF.html) 
 **/

// %----Files. Empty file is OK.
tptp_file: tptp_input_list { statement = $1 }
  ;

tptp_input_list:                { $$ = nil } 
  | tptp_input tptp_input_list  { $$ = append([]btypes.Statement{$1}, $2...)}
  ;

tptp_input: annotated_formula   { $$ = $1 }
  | include                     { $$ = $1 }
  ;

// %----Formula records
annotated_formula: fof_annotated    { $$ = $1 }
  | tpi_annotated                   { $$ = $1 }
  | tff_annotated                   { $$ = $1 }
  ;

tff_annotated: TFF LEFT_PAREN name COMMA formula_role COMMA tff_formula annotations RIGHT_PAREN DOT { $$ = btypes.MakeStatement($3, $5, $7.form, $7.atomTyping) }
  ;

fof_annotated: FOF LEFT_PAREN name COMMA formula_role COMMA fof_formula annotations RIGHT_PAREN DOT  { $$ = btypes.MakeStatement($3, $5, $7, btypes.TFFAtomTyping{}) }
  ;

tpi_annotated: TPI LEFT_PAREN name COMMA formula_role COMMA tpi_formula annotations RIGHT_PAREN DOT { $$ = btypes.MakeStatement($3, $5, $7, btypes.TFFAtomTyping{}) }
  ;

tpi_formula: fof_formula { $$ = $1 }

annotations:
  | COMMA source optional_info 
  ;

// %----Types for problems.
formula_role: LOWER_WORD            { $$ = btypes.MakeFormulaRoleFromString($1) }
  | LOWER_WORD DASH general_term    { $$ = btypes.MakeFormulaRoleFromString($1) }
  ;

// ----------------------------------------------------------------------------
// TFF
// ----------------------------------------------------------------------------

// %----TFF formulae.
tff_formula: tff_logic_formula      { $$.form = $1 }
  | tff_atom_typing                 { $$.atomTyping = $1 }
  ;
  // | tff_subtype                     { /*$$.atomTyping = ?*/ }

tff_logic_formula: tff_unitary_formula  { $$ = $1 }
  | tff_unary_formula                   { $$ = $1 }
  | tff_binary_formula                  { $$ = $1 }
  | tff_defined_infix                   { $$ = $1 }
  ;
//   | tfx_definition
//   | tfx_sequent
// %----<tff_defined_infix> up here to avoid confusion in a = b | p, for TFX.
// %----For plain TFF it can be in <tff_defined_atomic>

tff_binary_formula: tff_binary_nonassoc { $$ = $1 }
  | tff_binary_assoc                    { $$ = $1 }
  ;

tff_binary_nonassoc: tff_unit_formula EQUIV tff_unit_formula    { $$ = btypes.MakerEqu($1, $3) }
  | tff_unit_formula IMPLY tff_unit_formula                     { $$ = btypes.MakerImp($1, $3) }
  | tff_unit_formula LEFT_IMPLY tff_unit_formula                { $$ = btypes.MakerImp($3, $1) }
  | tff_unit_formula XOR tff_unit_formula                       { $$ = btypes.MakerOr([]btypes.Form{btypes.MakerAnd([]btypes.Form{$1, btypes.RefuteForm($3)}), btypes.MakerAnd([]btypes.Form{btypes.RefuteForm($1), $3})})}
  | tff_unit_formula NOTVLINE tff_unit_formula                  { $$ = btypes.RefuteForm(btypes.MakerOr([]btypes.Form{$1, $3}))}
  | tff_unit_formula NOTAND tff_unit_formula                    { $$ = btypes.RefuteForm(btypes.MakerAnd([]btypes.Form{$1, $3}))}
  ;

tff_binary_assoc: tff_or_formula { $$ = $1 }
  | tff_and_formula              { $$ = $1 }
  ;

tff_or_formula: tff_unit_formula VLINE tff_unit_formula { $$ = btypes.MakerOr([]btypes.Form{$1, $3}) }
  | tff_or_formula VLINE tff_unit_formula               { $$ = btypes.MakerOr([]btypes.Form{$1, $3}) }
  ;

tff_and_formula: tff_unit_formula AND tff_unit_formula { $$ = btypes.MakerAnd([]btypes.Form{$1, $3}) }
  | tff_and_formula AND tff_unit_formula                { $$ = btypes.MakerAnd([]btypes.Form{$1, $3}) }
  ;

tff_unit_formula: tff_unitary_formula { $$ = $1 }
  | tff_unary_formula                 { $$ = $1 }
  | tff_defined_infix                 { $$ = $1 }
  ;

tff_preunit_formula: tff_unitary_formula { $$ = $1 }
  | tff_prefix_unary                     { $$ = $1 }
  ;

tff_unitary_formula: tff_quantified_formula  { $$ = $1 }
  | tff_atomic_formula                       { $$ = $1 }
  | LEFT_PAREN tff_logic_formula RIGHT_PAREN { $$ = $2 }
  ;

tff_quantified_formula: FORALL LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_unit_formula { 
        if len($3.types) == 0 {
            $$ = btypes.MakerAll($3.typedVars, $6)
        } else {
            if len($3.typedVars) == 0 {
                $$ = btypes.MakerAllType(ConvertList[typing.TypeApp, typing.TypeVar]($3.types), $6)
            } else {
                $$ = btypes.MakerAllType(ConvertList[typing.TypeApp, typing.TypeVar]($3.types), btypes.MakerAll($3.typedVars, $6))
            }
        }
    }
  | EXISTS LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_unit_formula                     { $$ = btypes.MakerEx($3.typedVars, $6) }
  ;
// // %----Quantified formulae bind tightly, so cannot include infix formulae

tff_variable_list: tff_variable             { $$ = makeVarList($1) }
  | tff_variable COMMA tff_variable_list    { $$ = appendVarList($1, $3) }
  ;

tff_variable: tff_typed_variable { $$ = $1 }
  | variable                     { $$ = makeTfv($1, nil) }
  ;

tff_typed_variable: variable COLON tff_atomic_type { $$ = makeTfv($1, $3) }
  ;

tff_unary_formula: tff_prefix_unary { $$ = $1 }
  | tff_infix_unary                 { $$ = $1 }
  ;

tff_prefix_unary: NOT tff_preunit_formula { $$ = btypes.RefuteForm($2) }
  ;

tff_infix_unary: tff_term NOT_EQUAL tff_term { $$ = btypes.MakerNot(btypes.MakerPred(btypes.Id_eq, []btypes.Term{$1.term, $3.term}, []typing.TypeApp{}))}
  ;

tff_atomic_formula: tff_plain_atomic_formula    { $$ = $1 }
  | tff_defined_atomic                          { $$ = $1 }
  ;

tff_plain_atomic_formula: constant                { $$ = btypes.MakerPred($1, []btypes.Term{}, []typing.TypeApp{}) }
  | functor LEFT_PAREN tff_arguments RIGHT_PAREN  { $$ = btypes.MakerPred($1, $3.terms, $3.types) }
  ;

tff_defined_atomic: tff_defined_plain { $$ = $1 }
  ;

tff_defined_plain: defined_constant                       { 
    if $1.GetName() == "$true" {
        $$ = btypes.MakerTop()
    } else if $1.GetName() == "$false" {
        $$ = btypes.MakerBot()
    } else {
        $$ = btypes.MakerPred($1, []btypes.Term{}, []typing.TypeApp{})
    }
    }
  | defined_functor LEFT_PAREN tff_arguments RIGHT_PAREN  { $$ = btypes.MakerPred($1, $3.terms, $3.types) }
  ;

tff_defined_infix: tff_term EQUAL tff_term { $$ = btypes.MakerPred(btypes.Id_eq, []btypes.Term{$1.term, $3.term}, []typing.TypeApp{}) }
  ;

tff_plain_term: constant                         { $$ = tftFrom(nil, btypes.MakerConst($1)) }
  | functor LEFT_PAREN tff_arguments RIGHT_PAREN { $$ = tftFrom(nil, btypes.MakerFun($1, $3.terms, $3.types)) }
  ;
  
tff_defined_term: defined_term  { 
  recordNumberInGlobalContext($1.GetName())
  $$ = tftFrom(nil, $1) } 
  | tff_defined_atomic_term     { $$ = $1 }
  ;

tff_defined_atomic_term: tff_defined_plain_term { $$ = $1 }
  ;

tff_defined_plain_term: defined_constant                    { $$ = tftFrom(nil, btypes.MakerConst($1)) }
  | defined_functor LEFT_PAREN tff_arguments RIGHT_PAREN    { $$ = tftFrom(nil, btypes.MakerFun($1, $3.terms, $3.types)) }
  ;

tff_term: tff_function_term { $$ = $1 }
  | tff_variable            { $$ = tftFromTfv($1) }
  ;

tff_function_term: tff_plain_term   { $$ = $1 }
  | tff_defined_term                { $$ = $1 }
  ;

tff_arguments: tff_term           { $$ = makeTermList($1) }
  | tff_term COMMA tff_arguments  { $$ = appendTermList($1, $3) }
  ;

tff_atom_typing: untyped_atom COLON tff_top_level_type { 
    if isParameterizedType($3) {
        typing.SaveParamereterizedType($1.GetName(), toParameterizedType($3))
    } else {
        $$ = btypes.TFFAtomTyping{$1, $3}
    }
    }
  | LEFT_PAREN tff_atom_typing RIGHT_PAREN { $$ = $2 }
  ;

tff_top_level_type: tff_atomic_type { $$ = $1.(typing.TypeScheme) }
  | tff_non_atomic_type             { $$ = $1 }
  ;

tff_non_atomic_type: tff_mapping_type           { $$ = $1 }
  | tf1_quantified_type                         { $$ = $1 }
  | LEFT_PAREN tff_non_atomic_type RIGHT_PAREN  { $$ = $2 }
  ;

tf1_quantified_type: FORALL_TYPE LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_monotype { $$ = typing.MkQuantifiedType(ConvertList[typing.TypeApp, typing.TypeVar]($3.types), $6) }
  ;

tff_monotype: tff_atomic_type               { $$ = $1.(typing.TypeScheme) /* will it work? */}
  | LEFT_PAREN tff_mapping_type RIGHT_PAREN { $$ = $2 }
  | tf1_quantified_type                     { $$ = $1 }
  ;

tff_unitary_type: tff_atomic_type         { $$ = $1 }
  | LEFT_PAREN tff_xprod_type RIGHT_PAREN { $$ = $2 }
  ;
  
tff_atomic_type: type_constant                              { $$ = typing.MkTypeHint($1) }
  | defined_type                                            { $$ = typing.MkTypeHint($1) }
  | UPPER_WORD                                              { $$ = typing.MkTypeVar($1) }
  | type_functor LEFT_PAREN tff_type_arguments RIGHT_PAREN  { $$ = typing.MkParameterizedType($1, $3) /* >< */ }
  | LEFT_PAREN tff_atomic_type RIGHT_PAREN                  { $$ = $2 }
  ;
  
tff_type_arguments: tff_atomic_type           { $$ = []typing.TypeApp{$1} }
  | tff_atomic_type COMMA tff_type_arguments  { $$ = append([]typing.TypeApp{$1}, $3...) }
  ;
  
tff_mapping_type: tff_unitary_type ARROW tff_atomic_type { $$ = typing.MkTypeArrow($1, $3) }
  ;
  
tff_xprod_type: tff_unitary_type STAR tff_atomic_type { $$ = typing.MkTypeCross($1, $3) }
  | tff_xprod_type STAR tff_atomic_type               { $$ = typing.MkTypeCross($1, $3) }
  ;
  
/*
tff_subtype: untyped_atom SUBTYPE untyped_atom { $$ = $1 } // whats this lol
  ; */

untyped_atom: constant { $$ = $1 }
  ;

type_constant: type_functor { $$ = $1 }
  ;

type_functor: atomic_word { $$ = $1 }
  ;

defined_type: atomic_defined_word { $$ = $1 }
  ;

// ----------------------------------------------------------------------------
// FOF
// ----------------------------------------------------------------------------

fof_formula: fof_logic_formula  { $$ = $1 }
  ;

fof_logic_formula: fof_binary_formula { $$ = $1 }
  | fof_unary_formula                 { $$ = $1 }
  | fof_unitary_formula               { $$ = $1 }
  ;

fof_binary_formula: fof_binary_nonassoc     { $$ = $1 }
  | fof_binary_assoc                        { $$ = $1 }
  ;

fof_binary_nonassoc: fof_unit_formula EQUIV fof_unit_formula { $$ = btypes.MakerEqu($1, $3) }
  | fof_unit_formula IMPLY fof_unit_formula                  { $$ = btypes.MakerImp($1, $3) }
  | fof_unit_formula LEFT_IMPLY fof_unit_formula             { $$ = btypes.MakerImp($3, $1) }
  | fof_unit_formula XOR fof_unit_formula                       { $$ = btypes.MakerOr([]btypes.Form{btypes.MakerAnd([]btypes.Form{$1, btypes.RefuteForm($3)}), btypes.MakerAnd([]btypes.Form{btypes.RefuteForm($1), $3})})}
  | fof_unit_formula NOTVLINE fof_unit_formula                  { $$ = btypes.RefuteForm(btypes.MakerOr([]btypes.Form{$1, $3}))}
  | fof_unit_formula NOTAND fof_unit_formula                    { $$ = btypes.RefuteForm(btypes.MakerAnd([]btypes.Form{$1, $3}))}
  ;

fof_binary_assoc: fof_or_formula    { $$ = $1 }
  | fof_and_formula                 { $$ = $1 }
  ;

fof_or_formula: fof_unit_formula VLINE fof_unit_formula { $$ = btypes.MakerOr([]btypes.Form{$1, $3}) }
  | fof_or_formula VLINE fof_unit_formula               { $$ = btypes.MakerOr([]btypes.Form{$1, $3}) }
  ;

fof_and_formula: fof_unit_formula AND fof_unit_formula  { $$ = btypes.MakerAnd([]btypes.Form{$1, $3}) }
  | fof_and_formula AND fof_unit_formula                { $$ = btypes.MakerAnd([]btypes.Form{$1, $3}) }
  ;
  
fof_unary_formula: NOT fof_unit_formula     { $$ = btypes.RefuteForm($2) }
  | fof_infix_unary                         { $$ = $1 }
  ;
  
fof_infix_unary: fof_term NOT_EQUAL fof_term { $$ = btypes.MakerNot(btypes.MakerPred(btypes.Id_eq, []btypes.Term{$1, $3}, []typing.TypeApp{})) }
  ;
  
fof_unit_formula: fof_unitary_formula   { $$ = $1 }
  | fof_unary_formula                   { $$ = $1 }
  ;

fof_unitary_formula: fof_quantified_formula     { $$ = $1 }
  | fof_atomic_formula                          { $$ = $1 }
  | LEFT_PAREN fof_logic_formula RIGHT_PAREN    { $$ = $2 }
  ;
  
fof_quantified_formula: FORALL LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON fof_unit_formula { $$ = btypes.MakerAll($3, $6) }
  | EXISTS LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON fof_unit_formula                     { $$ = btypes.MakerEx($3, $6) }
  ;
  
fof_variable_list: variable             { $$ = []btypes.Var{$1} }
  | variable COMMA fof_variable_list    { $$ = append([]btypes.Var{$1}, $3...) }
  ;
  
fof_atomic_formula: fof_plain_atomic_formula    { $$ = $1 }
  | fof_defined_atomic_formula                  { $$ = $1 }
  ;
  //   | fof_system_atomic_formula                   { $$ = $1 }

fof_plain_atomic_formula: constant                  { $$ = btypes.MakerPred($1, []btypes.Term{}, []typing.TypeApp{}) }
  | functor LEFT_PAREN fof_arguments RIGHT_PAREN    { $$ = btypes.MakerPred($1, $3, []typing.TypeApp{}) }
  ;

/*
fof_plain_atomic_term: fof_plain_term { $$ = $1 }
  ;
*/
  
fof_defined_atomic_formula: fof_defined_plain_formula { $$ = $1 }
  | fof_defined_infix_formula                         { $$ = $1 }
  ;

fof_defined_plain_formula: defined_constant               { 
    if $1.GetName() == "$true" {
        $$ = btypes.MakerTop()
    } else if $1.GetName() == "$false" {
        $$ = btypes.MakerBot()
    } else {
        $$ = btypes.MakerPred($1, []btypes.Term{}, []typing.TypeApp{})
    }
    }
  | defined_functor LEFT_PAREN fof_arguments RIGHT_PAREN  { $$ = btypes.MakerPred($1, $3, []typing.TypeApp{}) }
  ;

fof_defined_infix_formula: fof_term EQUAL fof_term { $$ = btypes.MakerPred(btypes.Id_eq, []btypes.Term{$1, $3}, []typing.TypeApp{}) }
  ;

// <fof_system_atomic_formula> ::= <fof_system_term>
// %----<fof_system_atomic_formula>s are used for evaluable predicates that are
// %----available in particular tools. The predicate names are not controlled by
// %----the TPTP syntax, so use with due care. Same for <fof_system_term>s.

fof_plain_term: constant                         { $$ = btypes.MakerConst($1) }
  | functor LEFT_PAREN fof_arguments RIGHT_PAREN { $$ = btypes.MakerFun($1, $3, []typing.TypeApp{}) }
  ;
  
fof_defined_term: defined_term  { $$ = $1 }
  | fof_defined_atomic_term     { $$ = $1 }
  ;

fof_defined_atomic_term: fof_defined_plain_term { $$ = $1 }
  ;

fof_defined_plain_term: defined_constant                    { $$ = btypes.MakerConst($1) }
  | defined_functor LEFT_PAREN fof_arguments RIGHT_PAREN    { $$ = btypes.MakerFun($1, $3, []typing.TypeApp{}) }
  ;
  
fof_arguments: fof_term          { $$ = []btypes.Term{$1} }
  | fof_term COMMA fof_arguments { $$ = append([]btypes.Term{$1}, $3...) }
  ;

fof_term: fof_function_term { $$ = $1 }
  | variable                { $$ = $1 }
  ;

fof_function_term: fof_plain_term   { $$ = $1 }
  | fof_defined_term                { $$ = $1 }
  ;

//   %----For all language types
// <defined_proposition>  :== $true | $false
// <defined_predicate>    :== $distinct |
//                            $less | $lesseq | $greater | $greatereq |
//                            $is_int | $is_rat |
//                            $box_P | $box_i | $box_int | $box |
//                            $dia_P | $dia_i | $dia_int | $dia
// %----$distinct means that each of it's constant arguments are pairwise !=. It
// %----is part of the TFF syntax. It can be used only as a fact in an axiom (not
// %----a conjecture), and not under any connective.

constant: functor { $$ = $1 }
  ;

functor: atomic_word { $$ = btypes.MakerId($1) }
  ;

defined_constant: defined_functor { $$ = $1 }
  ;

defined_functor: atomic_defined_word { $$ = btypes.MakerId($1) }
  ;

// <defined_functor>      :== $uminus | $sum | $difference | $product |
//                            $quotient | $quotient_e | $quotient_t | $quotient_f |
//                            $remainder_e | $remainder_t | $remainder_f |
//                            $floor | $ceiling | $truncate | $round |
//                            $to_int | $to_rat | $to_real

defined_term: number { $$ = btypes.MakerConst(btypes.MakerId($1)) }
  | DISTINCT_OBJECT  { $$ = btypes.MakerConst(btypes.MakerId($1)) }
  ;
  
variable: UPPER_WORD { $$ = btypes.MakerVar($1) }
  ;
  
include: INCLUDE LEFT_PAREN file_name formula_selection RIGHT_PAREN DOT { $$ = btypes.MakeStatement($3, btypes.Include, nil, btypes.TFFAtomTyping{}) }
  ;

formula_selection: 
  | COMMA LEFT_BRACKET name_list RIGHT_BRACKET
  ;
  
name_list: name 
  | name COMMA name_list 
  ;

source: general_term
  ;

optional_info: 
  | COMMA useful_info
  ; 

useful_info: general_list
  ;

general_term: general_data
  | general_data COLON general_term 
  | general_list 
  ;

general_data: atomic_word 
  | general_function 
  | variable 
  | number 
  | DISTINCT_OBJECT
  | formula_data 
  ;

general_function: atomic_word LEFT_PAREN general_terms RIGHT_PAREN
  ;
  
formula_data: DOLLAR_FOF LEFT_PAREN fof_formula RIGHT_PAREN
  | DOLLAR_FOT LEFT_PAREN fof_term RIGHT_PAREN
  | DOLLAR_TFF LEFT_PAREN tff_formula RIGHT_PAREN
  ;
  
general_list: LEFT_BRACKET RIGHT_BRACKET
  | LEFT_BRACKET general_terms RIGHT_BRACKET
  ;

general_terms: general_term 
  | general_term COMMA general_terms
  ;

name: atomic_word { $$ = $1 }
  | INTEGER       { $$ = $1 }
  ;
  
atomic_word: LOWER_WORD { $$ = $1 }
  | SINGLE_QUOTED       { $$ = $1 }
  ;
  
atomic_defined_word: DOLLAR_WORD { $$ = $1 }
  ;
  
number: INTEGER { 
  definedType = "$int"
  $$ = $1 }
  | RATIONAL    {
  definedType = "$rat"
    $$ = $1 }
  | REAL        { 
  definedType = "$real"
  $$ = $1 }
  ;

file_name: SINGLE_QUOTED { $$ = $1 }
  ;
%%

func makeVarList(in TFFVar) TFFVarList {
    if in.type_ == nil {
        return TFFVarList{[]typing.TypeApp{}, []btypes.Var{in.typedVar}}
    }
    return TFFVarList{[]typing.TypeApp{in.type_}, []btypes.Var{}}
}

func appendVarList(in TFFVar, ls TFFVarList) TFFVarList {
    if in.type_ == nil {
        ls.typedVars = append([]btypes.Var{in.typedVar}, ls.typedVars...)
    } else {
        ls.types = append([]typing.TypeApp{in.type_}, ls.types...)
    }
    return ls
}

func tftFromTfv(in TFFVar) TFFTerm {
    tffTerm := TFFTerm{}
    if in.type_ == nil {
        tffTerm.term = in.typedVar
    } else {
        tffTerm.type_ = in.type_
    }
    return tffTerm
}

func makeTermList(in TFFTerm) TFFTermList {
    if in.type_ == nil {
        return TFFTermList{types: []typing.TypeApp{}, terms: []btypes.Term{in.term}}
    }
    return TFFTermList{types: []typing.TypeApp{in.type_}, terms: []btypes.Term{}}
}

func appendTermList(in TFFTerm, ls TFFTermList) TFFTermList {
    if in.type_ == nil {
        ls.terms = append([]btypes.Term{in.term}, ls.terms...)
    } else {
        ls.types = append([]typing.TypeApp{in.type_}, ls.types...)
    }
    return ls
}

func makeTfv(var_ btypes.Var, type_ typing.TypeApp) TFFVar {
    tffVar := TFFVar{}
    if type_ == nil {
        tffVar.typedVar = var_
    } else if type_.Equals(typing.MkTypeHint("$tType")) {
        tffVar.type_ = typing.MkTypeVar(var_.GetName())
    } else {
        tffVar.typedVar = btypes.MakeVar(var_.GetIndex(), var_.GetName(), type_)
    }
    return tffVar
}

func tftFrom(type_ typing.TypeApp, term btypes.Term) TFFTerm {
    tffTerm := TFFTerm{}
    if type_ == nil {
        tffTerm.term = term
    } else {
        tffTerm.type_ = type_
    }
    return tffTerm
}

func isParameterizedType(ts typing.TypeScheme) bool {
    if !Is[typing.TypeArrow](ts) {
        return false
    }

    var aux func(typing.TypeApp) bool
    aux = func(ta typing.TypeApp) bool {
        switch t := ta.(type) {
        case typing.TypeHint:
            return t.Equals(typing.MkTypeHint("$tType"))
        case typing.TypeVar:
            return false 
        case typing.TypeCross:
            for _, type_ := range t.GetPrimitives() {
                if aux(type_) {
                    return true
                }
            }
        }

        return false
    }    

    return aux(typing.GetInputType(ts)[0])
}

func toParameterizedType(ts typing.TypeScheme) []typing.TypeApp {
    arr := []typing.TypeApp{}

    switch t := typing.GetInputType(ts)[0].(type) {
        case typing.TypeHint:
            arr = append(arr, t)
        case typing.TypeCross:
            arr = t.GetPrimitives()
    }

    realArr := []typing.TypeApp{}
    for _, type_ := range arr {
        if type_.Equals(typing.MkTypeHint("$tType")) {
            realArr = append(realArr, nil)
        } else {
            realArr = append(realArr, type_)
        }
    }
    return realArr
}

func recordNumberInGlobalContext(name string) {
    if name[0] == '$' {
        return
    }
    typing.SaveConstant(name, typing.MkTypeHint(definedType))
} 