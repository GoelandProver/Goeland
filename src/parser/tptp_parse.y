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
)

var quantifiersCounter = 0
var yylineno = 1

// Final result
var statement []btypes.Statement
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
}

// Tokens definition

// Keywords
%token FOF CNF THF TFF TCF TPI INCLUDE DOLLAR_FOT DOLLAR_FOF
// Punctuation
%token LEFT_PAREN RIGHT_PAREN COMMA DOT LEFT_BRACKET RIGHT_BRACKET COLON
// Operators
%token FORALL EXISTS NOT VLINE AND EQUIV IMPLY LEFT_IMPLY XOR NOTVLINE NOTAND STAR PLUS 
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
// %type <stm> tff_annotated
%type <stm>  tptp_input annotated_formula include fof_annotated tpi_annotated
%type <str>  name atomic_word atomic_defined_word number file_name
%type <fr>   formula_role 
%type <form>  tpi_formula
//%type <form> tff_formula  tff_logic_formula tff_and_formula tff_binary_assoc tff_binary_formula tff_binary_nonassoc tff_or_formula tff_unitary_formula tff_unit_formula tff_preunit_formula tff_quantified_formula tff_unary_formula tff_prefix_unary tff_infix_unary tff_atomic_formula
%type <form> fof_formula fof_infix_unary fof_logic_formula fof_binary_formula fof_binary_nonassoc fof_binary_assoc fof_or_formula fof_and_formula fof_unary_formula fof_unit_formula fof_unitary_formula fof_quantified_formula fof_atomic_formula fof_plain_atomic_formula fof_defined_atomic_formula fof_defined_plain_formula fof_defined_infix_formula
//%type <vrl> tff_variable_list 
%type <vrl> fof_variable_list
//%type <vrb> tff_variable tff_typed_variable 
%type <vrb> variable
%type <id> constant defined_constant functor defined_functor
%type <trm> fof_plain_term fof_defined_term fof_defined_atomic_term fof_defined_plain_term fof_term fof_function_term defined_term /* fof_plain_atomic_term */
%type <tml> fof_arguments

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
  ;
  // | tff_annotated    { $$ = $1 }

/*
tff_annotated: TFF LEFT_PAREN name COMMA formula_role COMMA tff_formula annotations RIGHT_PAREN DOT { $$ = btypes.MakeStatement($3, $5, $7) }
  ;
*/

fof_annotated: FOF LEFT_PAREN name COMMA formula_role COMMA fof_formula annotations RIGHT_PAREN DOT  { $$ = btypes.MakeStatement($3, $5, $7) }
  ;

tpi_annotated: TPI LEFT_PAREN name COMMA formula_role COMMA tpi_formula annotations RIGHT_PAREN DOT { $$ = btypes.MakeStatement($3, $5, $7) }
  ;

tpi_formula: fof_formula { $$ = $1 }

annotations:
  | COMMA source optional_info 
  ;

// %----Types for problems.
formula_role: LOWER_WORD            { $$ = btypes.MakeFormulaRoleFromString($1) }
  | LOWER_WORD DASH general_term    { $$ = btypes.MakeFormulaRoleFromString($1) }
  ;

// %----TFF formulae.
// tff_formula: tff_logic_formula      { $$ = $1 }
//   | tff_atom_typing                 {}
//   | tff_subtype                     {}
//   ;

// tff_logic_formula: tff_unitary_formula  { $$ = $1 }
//   | tff_unary_formula                   { $$ = $1 }
//   | tff_binary_formula                  { $$ = $1 }
//   | tff_defined_infix 
//   ;
// //   | tfx_definition
// //   | tfx_sequent
// // %----<tff_defined_infix> up here to avoid confusion in a = b | p, for TFX.
// // %----For plain TFF it can be in <tff_defined_atomic>

// tff_binary_formula: tff_binary_nonassoc { $$ = $1 }
//   | tff_binary_assoc                    { $$ = $1 }
//   ;

// tff_binary_nonassoc: tff_unit_formula EQUIV tff_unit_formula    { $$ = btypes.MakeEqu($1, $3) }
//   | tff_unit_formula IMPLY tff_unit_formula                     { $$ = btypes.MakeImp($1, $3) }
//   | tff_unit_formula LEFT_IMPLY tff_unit_formula                { $$ = btypes.MakeImp($3, $1) }
//   | tff_unit_formula XOR tff_unit_formula                       { $$ = btypes.MakeOr([]btypes.Form{btypes.MakeAnd([]btypes.Form{$1, btypes.RefuteForm($3)}), btypes.MakeAnd([]btypes.Form{btypes.RefuteForm($1), $3})})}
//   | tff_unit_formula NOTVLINE tff_unit_formula                  { $$ = btypes.RefuteForm(btypes.MakeOr([]btypes.Form{$1, $3}))}
//   | tff_unit_formula NOTAND tff_unit_formula                    { $$ = btypes.RefuteForm(btypes.MakeAnd([]btypes.Form{$1, $3}))}
//   ;

// tff_binary_assoc: tff_or_formula { $$ = $1 }
//   | tff_and_formula              { $$ = $1 }
//   ;

// tff_or_formula: tff_unit_formula VLINE tff_unit_formula { $$ = btypes.MakeOr([]btypes.Form{$1, $3}) }
//   | tff_or_formula VLINE tff_unit_formula               { $$ = btypes.MakeOr([]btypes.Form{$1, $3}) }
//   ;

// tff_and_formula: tff_unit_formula AND tff_unit_formula { $$ = btypes.MakeAnd([]btypes.Form{$1, $3}) }
//   | tff_and_formula AND tff_unit_formula                { $$ = btypes.MakeAnd([]btypes.Form{$1, $3}) }
//   ;

// tff_unit_formula: tff_unitary_formula { $$ = $1 }
//   | tff_unary_formula                 { $$ = $1 }
//   | tff_defined_infix 
//   ;

// tff_preunit_formula: tff_unitary_formula { $$ = $1 }
//   | tff_prefix_unary                     { $$ = $1 }
//   ;

// tff_unitary_formula: tff_quantified_formula  { $$ = $1 }
//   | tff_atomic_formula                       { $$ = $1 }
//   | LEFT_PAREN tff_logic_formula RIGHT_PAREN { $$ = $2 }
//   ;

// tff_quantified_formula: FORALL LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_unit_formula { $$ = btypes.MakeAll($3, $6) }
//   | EXISTS LEFT_BRACKET tff_variable RIGHT_BRACKET COLON tff_unit_formula                          { $$ = btypes.MakeEx($3, $6) }
//   ;
// // %----Quantified formulae bind tightly, so cannot include infix formulae

// tff_variable_list: tff_variable             { $$ = []typing.TypeVar{ $1 } }
//   | tff_variable COMMA tff_variable_list    { $$ = []typing.TypeVar{ $1, $2... } }
//   ;

// tff_variable: tff_typed_variable { $$ = $1 }
//   | variable                     { $$ = $1 }
//   ;

// tff_typed_variable: variable COLON tff_atomic_type { $$ = btypes.MakeVar($1.GetIndex(), $1.GetName(), $3) }
//   ;

// tff_unary_formula: tff_prefix_unary { $$ = $1 }
//   | tff_infix_unary                 { $$ = $1 }
//   ;

// tff_prefix_unary: NOT tff_preunit_formula { $$ = btypes.RefuteForm($2) }
//   ;

// tff_infix_unary: tff_unitary_term NOT_EQUAL tff_unitary_term { $$ = btypes.MakePred(btypes.Id_neq, []btypes.Term{$1, $3}, []typing.TypeApp{$1.(TypedTerm).GetTypeApp(), $3.(TypedTerm).GetTypeApp() }) }
//   ;

// tff_atomic_formula: tff_plain_atomic_formula    { $$ = $1 }
//   | tff_defined_atomic                          { $$ = $1 }
//   | tff_system_atomic                           { $$ = $1 }
//   ;

// tff_plain_atomic_formula: proposition { $$ = $1 }
//   |

// <tff_plain_atomic>     ::= <constant> | <functor>(<tff_arguments>)
// <tff_plain_atomic>     :== <proposition> | <predicate>(<tff_arguments>)
// %----<tnc_connective> allowed as formulae for logic specifications
// <tff_defined_atomic>   ::= <tff_defined_plain> | <tnc_connective>
// %---To avoid confusion in TFX mode a = b | p   | <tff_defined_infix>
// <tff_defined_plain>    ::= <defined_constant> |
//                            <defined_functor>(<tff_arguments>) | 
//                            <tfx_tnc_atom> | <tfx_let> 
// % <tfx_conditional> 
// %----<tfx_conditional> is omitted from <tff_defined_plain> because $ite is
// %----read simply as a <tff_atomic_formula>
// <tff_defined_plain>    :== <defined_proposition> |
//                            <defined_predicate>(<tff_arguments>) |
//                            <tfx_conditional> | <tfx_let> | <tfx_tnc>
// %----This is the only one that is strictly a formula, type $o. In TFX, if the
// %----LHS/RHS is a formula that does not look like a term, then it must be ()ed
// %----per <tff_unitary_term>. If you put an un()ed formula that looks like a term
// %----it will be interpreted as a term.
// <tff_defined_infix>    ::= <tff_unitary_term> <defined_infix_pred>
//                            <tff_unitary_term>
// <tff_system_atomic>    ::= <system_constant> |
//                            <system_functor>(<tff_arguments>)
// <tff_system_atomic>    :== <system_proposition> |
//                            <system_predicate>(<tff_arguments>)
// %----<tfx_conditional> is written and read as a <tff_defined_atomic>
// <tfx_conditional>      :== $ite(<tff_logic_formula>,<tff_term>,<tff_term>)
// <tfx_let>              ::= $let(<tfx_let_types>,<tfx_let_defns>,<tff_term>)
// <tfx_let_types>        ::= <tff_atom_typing> | [<tff_atom_typing_list>]
// <tff_atom_typing_list> ::= <tff_atom_typing> |
//                            <tff_atom_typing>,<tff_atom_typing_list>
// <tfx_let_defns>        ::= <tfx_let_defn> | [<tfx_let_defn_list>]
// <tfx_let_defn>         ::= <tfx_let_LHS> <assignment> <tff_term>
// <tfx_let_LHS>          ::= <tff_plain_atomic> | <tfx_tuple>
// <tfx_let_defn_list>    ::= <tfx_let_defn> | <tfx_let_defn>,<tfx_let_defn_list>
// <tfx_tnc_atom>         ::= <tnc_connective>(<tff_arguments>)

// <tff_term>             ::= <tff_logic_formula> | <defined_term> | <tfx_tuple> |
//                            <tnc_key_pair>
// <tff_unitary_term>     ::= <tff_atomic_formula> | <defined_term> |
//                            <tfx_tuple> | <variable> | (<tff_logic_formula>)
// <tfx_tuple>            ::= [] | [<tff_arguments>]

// <tff_arguments>        ::= <tff_term> | <tff_term>,<tff_arguments>

// %----<tff_atom_typing> can appear only at top level.
// <tff_atom_typing>      ::= <untyped_atom> : <tff_top_level_type> |
//                            (<tff_atom_typing>)
// <tff_top_level_type>   ::= <tff_atomic_type> | <tff_non_atomic_type>
// <tff_non_atomic_type>  ::= <tff_mapping_type> | <tf1_quantified_type> |
//                            (<tff_non_atomic_type>)
// <tf1_quantified_type>  ::= !> [<tff_variable_list>] : <tff_monotype>
// <tff_monotype>         ::= <tff_atomic_type> | (<tff_mapping_type>) |
//                            <tf1_quantified_type>
// <tff_unitary_type>     ::= <tff_atomic_type> | (<tff_xprod_type>)
// <tff_atomic_type>      ::= <type_constant> | <defined_type> | <variable> |
//                            <type_functor>(<tff_type_arguments>) |
//                            (<tff_atomic_type>) | <tfx_tuple_type>
// <tff_type_arguments>   ::= <tff_atomic_type> |
//                            <tff_atomic_type>,<tff_type_arguments>
// <tff_mapping_type>     ::= <tff_unitary_type> <arrow> <tff_atomic_type>
// <tff_xprod_type>       ::= <tff_unitary_type> <star> <tff_atomic_type> |
//                            <tff_xprod_type> <star> <tff_atomic_type>
// %----For TFX only
// <tfx_tuple_type>       ::= [<tff_type_list>]
// <tff_type_list>        ::= <tff_top_level_type> |
//                            <tff_top_level_type>,<tff_type_list>

// <tff_subtype>          ::= <untyped_atom> <subtype_sign> <atom>

// <tfx_definition>       ::= <tff_atomic_formula> <identical> <tff_term>
// <tfx_sequent>          ::= <tfx_tuple> <gentzen_arrow> <tfx_tuple>

fof_formula: fof_logic_formula  { $$ = $1 }
  ;

fof_logic_formula: fof_binary_formula { $$ = $1 }
  | fof_unary_formula                 { $$ = $1 }
  | fof_unitary_formula               { $$ = $1 }
  ;

fof_binary_formula: fof_binary_nonassoc     { $$ = $1 }
  | fof_binary_assoc                        { $$ = $1 }
  ;

fof_binary_nonassoc: fof_unit_formula EQUIV fof_unit_formula { $$ = btypes.MakeEqu($1, $3) }
  | fof_unit_formula IMPLY fof_unit_formula                  { $$ = btypes.MakeImp($1, $3) }
  | fof_unit_formula LEFT_IMPLY fof_unit_formula             { $$ = btypes.MakeImp($3, $1) }
  | fof_unit_formula XOR fof_unit_formula                       { $$ = btypes.MakeOr([]btypes.Form{btypes.MakeAnd([]btypes.Form{$1, btypes.RefuteForm($3)}), btypes.MakeAnd([]btypes.Form{btypes.RefuteForm($1), $3})})}
  | fof_unit_formula NOTVLINE fof_unit_formula                  { $$ = btypes.RefuteForm(btypes.MakeOr([]btypes.Form{$1, $3}))}
  | fof_unit_formula NOTAND fof_unit_formula                    { $$ = btypes.RefuteForm(btypes.MakeAnd([]btypes.Form{$1, $3}))}
  ;

fof_binary_assoc: fof_or_formula    { $$ = $1 }
  | fof_and_formula                 { $$ = $1 }
  ;

fof_or_formula: fof_unit_formula VLINE fof_unit_formula { $$ = btypes.MakeOr([]btypes.Form{$1, $3}) }
  | fof_or_formula VLINE fof_unit_formula               { $$ = btypes.MakeOr([]btypes.Form{$1, $3}) }
  ;

fof_and_formula: fof_unit_formula AND fof_unit_formula  { $$ = btypes.MakeAnd([]btypes.Form{$1, $3}) }
  | fof_and_formula AND fof_unit_formula                { $$ = btypes.MakeAnd([]btypes.Form{$1, $3}) }
  ;
  
fof_unary_formula: NOT fof_unit_formula     { $$ = btypes.RefuteForm($2) }
  | fof_infix_unary                         { $$ = $1 }
  ;
  
fof_infix_unary: fof_term NOT_EQUAL fof_term { $$ = btypes.MakePred(btypes.Id_neq, []btypes.Term{$1, $3}, []typing.TypeApp{}) }
  ;
  
fof_unit_formula: fof_unitary_formula   { $$ = $1 }
  | fof_unary_formula                   { $$ = $1 }
  ;

fof_unitary_formula: fof_quantified_formula     { $$ = $1 }
  | fof_atomic_formula                          { $$ = $1 }
  | LEFT_PAREN fof_logic_formula RIGHT_PAREN    { $$ = $2 }
  ;
  
fof_quantified_formula: FORALL LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON fof_unit_formula { $$ = btypes.MakeAll($3, $6) }
  | EXISTS LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON fof_unit_formula                     { $$ = btypes.MakeEx($3, $6) }
  ;
  
fof_variable_list: variable             { $$ = []btypes.Var{$1} }
  | variable COMMA fof_variable_list    { $$ = append([]btypes.Var{$1}, $3...) }
  ;
  
fof_atomic_formula: fof_plain_atomic_formula    { $$ = $1 }
  | fof_defined_atomic_formula                  { $$ = $1 }
  ;
  //   | fof_system_atomic_formula                   { $$ = $1 }

fof_plain_atomic_formula: constant                  { $$ = btypes.MakePred($1, []btypes.Term{}, []typing.TypeApp{}) }
  | functor LEFT_PAREN fof_arguments RIGHT_PAREN    { $$ = btypes.MakePred($1, $3, []typing.TypeApp{}) }
  ;

/*
fof_plain_atomic_term: fof_plain_term { $$ = $1 }
  ;
*/
  
fof_defined_atomic_formula: fof_defined_plain_formula { $$ = $1 }
  | fof_defined_infix_formula                         { $$ = $1 }
  ;

fof_defined_plain_formula: defined_constant               { $$ = btypes.MakePred($1, []btypes.Term{}, []typing.TypeApp{}) }
  | defined_functor LEFT_PAREN fof_arguments RIGHT_PAREN  { $$ = btypes.MakePred($1, $3, []typing.TypeApp{}) }
  ;

fof_defined_infix_formula: fof_term EQUAL fof_term { $$ = btypes.MakePred(btypes.Id_eq, []btypes.Term{$1, $3}, []typing.TypeApp{}) }
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
  
include: INCLUDE LEFT_PAREN file_name formula_selection RIGHT_PAREN DOT { $$ = btypes.MakeStatement($3, btypes.Include, nil) }
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
  ;
  // | TFF LEFT_PAREN tff_formula RIGHT_PAREN
  
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
  
number: INTEGER { $$ = $1 }
  | RATIONAL    { $$ = $1 }
  | REAL        { $$ = $1 }
  ;

file_name: SINGLE_QUOTED { $$ = $1 }
  ;
%%