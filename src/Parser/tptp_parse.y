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
package Parser

import (
    "github.com/GoelandProver/Goeland/Lib"
)

var quantifiersCounter = 0
var containsEquality = false
var yylineno = 1

// Final result
var statement []PStatement
var definedType string

type TFFFormula struct {
    form Lib.Option[PForm]
    typ Lib.Option[Lib.Pair[string, PType]]
}

type TypedVar = Lib.Pair[string, PAtomicType]
%}

// Semantic union
%union{
    str string
    atom PAtomicType
    atoms []PAtomicType
    typ PType
    tyl []PType
    tv PVar
	vrl []PVar
	tfv TypedVar
    tfl []TypedVar
    trm PTerm
    ttl []PTerm
    form PForm
    tps Lib.Pair[string, PType]
    tff TFFFormula
    fr PFormulaRole
    stm PStatement
	lstm []PStatement
	strty Lib.Pair[string, PTypeFun]
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
%type <str>  name atomic_word atomic_defined_word file_name type_constant type_functor defined_type variable constant defined_constant functor defined_functor untyped_atom
%type <strty> number
%type <fr>   formula_role 
%type <form>  tpi_formula
%type <form>  tff_logic_formula tff_and_formula tff_binary_assoc tff_binary_formula tff_binary_nonassoc tff_or_formula tff_unitary_formula tff_unit_formula tff_preunit_formula tff_quantified_formula tff_unary_formula tff_prefix_unary tff_infix_unary tff_atomic_formula tff_plain_atomic_formula tff_defined_atomic tff_defined_plain
%type <form> fof_formula fof_infix_unary fof_logic_formula fof_binary_formula fof_binary_nonassoc fof_binary_assoc fof_or_formula fof_and_formula fof_unary_formula fof_unit_formula fof_unitary_formula fof_quantified_formula fof_atomic_formula fof_plain_atomic_formula fof_defined_atomic_formula fof_defined_plain_formula fof_defined_infix_formula tff_defined_infix
%type <tfv> tff_variable tff_typed_variable
%type <tfl> tff_variable_list fof_variable_list
%type <trm> fof_plain_term fof_defined_term fof_defined_atomic_term fof_defined_plain_term fof_term fof_function_term defined_term tff_term tff_plain_term tff_defined_term tff_defined_atomic_term tff_defined_plain_term tff_function_term
%type <ttl> tff_arguments fof_arguments
%type <atom> tff_atomic_type
%type <atoms> tff_type_arguments
%type <typ> tff_monotype tff_non_atomic_type tff_top_level_type tff_mapping_type tf1_quantified_type tff_xprod_type tff_unitary_type
%type <tff> tff_formula
%type <tps> tff_atom_typing
%%

/**
 * TPTP 8.0.0 parser
 * Following TPTP's syntax bnf (https://tptp.org/TPTP/SyntaxBNF.html) 
 **/

// %----Files. Empty file is OK.
tptp_file: tptp_input_list { statement = $1 }
  ;

tptp_input_list:                { $$ = []PStatement{} }
  | tptp_input tptp_input_list  { $$ = append([]PStatement{$1}, $2...)}
  ;

tptp_input: annotated_formula   { $$ = $1 }
  | include                     { $$ = $1 }
  ;

// %----Formula records
annotated_formula: fof_annotated    { $$ = $1 }
  | tpi_annotated                   { $$ = $1 }
  | tff_annotated                   { $$ = $1 }
  ;

tff_annotated: TFF LEFT_PAREN name COMMA formula_role COMMA tff_formula annotations RIGHT_PAREN DOT
  { $$ = PStatement{$3, $5, $7.form, $7.typ} }
  ;

fof_annotated: FOF LEFT_PAREN name COMMA formula_role COMMA fof_formula annotations RIGHT_PAREN DOT
  { $$ = PStatement{$3, $5, Lib.MkSome($7), Lib.MkNone[Lib.Pair[string, PType]]()} }
  ;

tpi_annotated: TPI LEFT_PAREN name COMMA formula_role COMMA tpi_formula annotations RIGHT_PAREN DOT
  { $$ = PStatement{$3, $5, Lib.MkSome($7), Lib.MkNone[Lib.Pair[string, PType]]()} }
  ;

tpi_formula: fof_formula { $$ = $1 }

annotations:
  | COMMA source optional_info
  ;

// %----Types for problems.
formula_role: LOWER_WORD            { $$ = PFormulaRoleFromStr($1) }
  | LOWER_WORD DASH general_term    { $$ = PFormulaRoleFromStr($1) }
  ;

// ----------------------------------------------------------------------------
// TFF
// ----------------------------------------------------------------------------

tff_formula: tff_logic_formula
  { $$ = TFFFormula{Lib.MkSome($1), Lib.MkNone[Lib.Pair[string, PType]]()} }
  | tff_atom_typing
  { $$ = TFFFormula{Lib.MkNone[PForm](), Lib.MkSome($1)} }
  ;

tff_logic_formula: tff_unitary_formula  { $$ = $1 }
  | tff_unary_formula                   { $$ = $1 }
  | tff_binary_formula                  { $$ = $1 }
  | tff_defined_infix                   { $$ = $1 }
  ;

tff_binary_formula: tff_binary_nonassoc { $$ = $1 }
  | tff_binary_assoc                    { $$ = $1 }
  ;

tff_binary_nonassoc: tff_unit_formula EQUIV tff_unit_formula    { $$ = MkPEqu($1, $3) }
  | tff_unit_formula IMPLY tff_unit_formula                     { $$ = MkPImp($1, $3) }
  | tff_unit_formula LEFT_IMPLY tff_unit_formula                { $$ = MkPRevImp($1, $3) }
  | tff_unit_formula XOR tff_unit_formula                       { $$ = MkPXor($1, $3)}
  | tff_unit_formula NOTVLINE tff_unit_formula                  { $$ = MkPNotOr($1, $3)}
  | tff_unit_formula NOTAND tff_unit_formula                    { $$ = MkPNotAnd($1, $3) }
  ;

tff_binary_assoc: tff_or_formula { $$ = $1 }
  | tff_and_formula              { $$ = $1 }
  ;

tff_or_formula: tff_unit_formula VLINE tff_unit_formula { $$ = MkPOr($1, $3) }
  | tff_or_formula VLINE tff_unit_formula               { $$ = MkPOr($1, $3) }
  ;

tff_and_formula: tff_unit_formula AND tff_unit_formula { $$ = MkPAnd($1, $3) }
  | tff_and_formula AND tff_unit_formula                { $$ = MkPAnd($1, $3) }
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

tff_quantified_formula: FORALL LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_unit_formula
  { $$ = MkPAll($3, $6) }
  | EXISTS LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_unit_formula
  { $$ = MkPEx($3, $6) }
  ;

tff_variable_list: tff_variable { $$ = []TypedVar{$1} }
  | tff_variable COMMA tff_variable_list
  { $$ = append([]TypedVar{$1}, $3...) }
  ;

tff_variable: tff_typed_variable { $$ = $1 }
  | variable                     { $$ = Lib.MkPair[string, PAtomicType]($1, MkDefPAtomicType()) }
  ;

tff_typed_variable: variable COLON tff_atomic_type { $$ = Lib.MkPair($1, $3) }
  ;

tff_unary_formula: tff_prefix_unary { $$ = $1 }
  | tff_infix_unary                 { $$ = $1 }
  ;

tff_prefix_unary: NOT tff_preunit_formula { $$ = MkPNeg($2) }
  ;

tff_infix_unary: tff_term NOT_EQUAL tff_term
  { $$ = MkPNeg(PPred{PEqSymbol, []PTerm{$1, $3}}) }
  ;

tff_atomic_formula: tff_plain_atomic_formula    { $$ = $1 }
  | tff_defined_atomic                          { $$ = $1 }
  ;

tff_plain_atomic_formula: constant { $$ = PPred{$1, []PTerm{}} }
  | functor LEFT_PAREN tff_arguments RIGHT_PAREN { $$ = PPred{$1, $3} }
  ;

tff_defined_atomic: tff_defined_plain { $$ = $1 }
  | TRUE { $$ = MkPTop() }
  | FALSE { $$ = MkPBot() }
  ;

tff_defined_plain: defined_constant { $$ = PPred{$1, []PTerm{}} }
  | defined_functor LEFT_PAREN tff_arguments RIGHT_PAREN
  { $$ = PPred{$1, $3} }
  ;

tff_defined_infix: tff_term EQUAL tff_term
  { $$ = PPred{PEqSymbol, []PTerm{$1, $3}} }
  ;

tff_plain_term: constant { $$ = MkFunConst($1) }
  | functor LEFT_PAREN tff_arguments RIGHT_PAREN
  { $$ = PFun{$1, $3, Lib.MkNone[PTypeFun]()} }
  ;

tff_defined_term: defined_term { $$ = $1 }
  | tff_defined_atomic_term { $$ = $1 }
  ;

tff_defined_atomic_term: tff_defined_plain_term { $$ = $1 }
  ;

tff_defined_plain_term: defined_constant { $$ = MkFunConst($1) }
  | defined_functor LEFT_PAREN tff_arguments RIGHT_PAREN
  { $$ = PFun{$1, $3, Lib.MkNone[PTypeFun]()} }
  ;

tff_term: tff_function_term { $$ = $1 }
  | tff_variable { $$ = PVar{$1.Fst} }
  ;

tff_function_term: tff_plain_term { $$ = $1 }
  | tff_defined_term { $$ = $1 }
  ;

tff_arguments: tff_term { $$ = []PTerm{$1} }
  | tff_term COMMA tff_arguments { $$ = append([]PTerm{$1}, $3...) }
  ;

tff_atom_typing: untyped_atom COLON tff_top_level_type { $$ = Lib.MkPair($1, $3) }
  | LEFT_PAREN tff_atom_typing RIGHT_PAREN { $$ = $2 }
  ;

tff_top_level_type: tff_atomic_type { $$ = $1.(PType) }
  | tff_non_atomic_type             { $$ = $1 }
  ;

tff_non_atomic_type: tff_mapping_type           { $$ = $1 }
  | tf1_quantified_type                         { $$ = $1 }
  | LEFT_PAREN tff_non_atomic_type RIGHT_PAREN  { $$ = $2 }
  ;

tf1_quantified_type: FORALL_TYPE LEFT_BRACKET tff_variable_list RIGHT_BRACKET COLON tff_monotype
  { $$ = MkTypeAll($3, $6) }
  ;

tff_monotype: tff_atomic_type               { $$ = $1.(PType) }
  | LEFT_PAREN tff_mapping_type RIGHT_PAREN { $$ = $2 }
  | tf1_quantified_type                     { $$ = $1 }
  ;

tff_unitary_type: tff_atomic_type         { $$ = $1.(PType) }
  | LEFT_PAREN tff_xprod_type RIGHT_PAREN { $$ = $2 }
  ;

tff_atomic_type: type_constant                              { $$ = MkTypeConst($1) }
  | defined_type                                            { $$ = MkTypeConst($1) }
  | UPPER_WORD                                              { $$ = PTypeVar{$1} }
  | type_functor LEFT_PAREN tff_type_arguments RIGHT_PAREN  { $$ = PTypeFun{$1, $3} }
  | LEFT_PAREN tff_atomic_type RIGHT_PAREN                  { $$ = $2 }
  ;

tff_type_arguments: tff_atomic_type           { $$ = []PAtomicType{$1} }
  | tff_atomic_type COMMA tff_type_arguments  { $$ = append([]PAtomicType{$1}, $3...) }
  ;

tff_mapping_type: tff_unitary_type ARROW tff_atomic_type { $$ = MkTypeMap($1, $3.(PType)) }
  ;

tff_xprod_type: tff_unitary_type STAR tff_atomic_type { $$ = MkTypeProd($1, $3.(PType)) }
  | tff_xprod_type STAR tff_atomic_type               { $$ = MkTypeProd($1, $3.(PType)) }
  ;

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

fof_binary_nonassoc: fof_unit_formula EQUIV fof_unit_formula { $$ = MkPEqu($1, $3) }
  | fof_unit_formula IMPLY fof_unit_formula                  { $$ = MkPImp($1, $3) }
  | fof_unit_formula LEFT_IMPLY fof_unit_formula             { $$ = MkPRevImp($1, $3) }
  | fof_unit_formula XOR fof_unit_formula                    { $$ = MkPXor($1, $3) }
  | fof_unit_formula NOTVLINE fof_unit_formula               { $$ = MkPNotOr($1, $3) }
  | fof_unit_formula NOTAND fof_unit_formula                 { $$ = MkPNotAnd($1, $3) }
  ;

fof_binary_assoc: fof_or_formula    { $$ = $1 }
  | fof_and_formula                 { $$ = $1 }
  ;

fof_or_formula: fof_unit_formula VLINE fof_unit_formula { $$ = MkPOr($1, $3) }
  | fof_or_formula VLINE fof_unit_formula               { $$ = MkPOr($1, $3) }
  ;

fof_and_formula: fof_unit_formula AND fof_unit_formula  { $$ = MkPAnd($1, $3) }
  | fof_and_formula AND fof_unit_formula                { $$ = MkPAnd($1, $3) }
  ;

fof_unary_formula: NOT fof_unit_formula     { $$ = MkPNeg($2) }
  | fof_infix_unary                         { $$ = $1 }
  ;

fof_infix_unary: fof_term NOT_EQUAL fof_term {
  $$ = MkPNeg(PPred{PEqSymbol, []PTerm{$1, $3}})
  }
  ;

fof_unit_formula: fof_unitary_formula   { $$ = $1 }
  | fof_unary_formula                   { $$ = $1 }
  ;

fof_unitary_formula: fof_quantified_formula     { $$ = $1 }
  | fof_atomic_formula                          { $$ = $1 }
  | LEFT_PAREN fof_logic_formula RIGHT_PAREN    { $$ = $2 }
  ;

fof_quantified_formula: FORALL LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON fof_unit_formula
  { $$ = MkPAll($3, $6) }
  | EXISTS LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON fof_unit_formula
  { $$ = MkPEx($3, $6) }
  ;

fof_variable_list: variable
  { $$ = []TypedVar{Lib.MkPair($1, MkDefPAtomicType())} }
  | variable COMMA fof_variable_list
  { $$ = append([]TypedVar{Lib.MkPair($1, MkDefPAtomicType())}, $3...) }
  ;

fof_atomic_formula: fof_plain_atomic_formula    { $$ = $1 }
  | fof_defined_atomic_formula                  { $$ = $1 }
  ;

fof_plain_atomic_formula: constant { $$ = PPred{$1, []PTerm{}} }
  | functor LEFT_PAREN fof_arguments RIGHT_PAREN { $$ = PPred{$1, $3} }
  ;

fof_defined_atomic_formula: fof_defined_plain_formula { $$ = $1 }
  | fof_defined_infix_formula                         { $$ = $1 }
  ;

fof_defined_plain_formula: defined_constant { $$ = PPred{$1, []PTerm{}} }
  | TRUE  { $$ = MkPTop() }
  | FALSE { $$ = MkPBot() }
  | defined_functor LEFT_PAREN fof_arguments RIGHT_PAREN { $$ = PPred{$1, $3} }
  ;

fof_defined_infix_formula: fof_term EQUAL fof_term { $$ = PPred{PEqSymbol, []PTerm{$1, $3}} }
  ;

// <fof_system_atomic_formula> ::= <fof_system_term>
// %----<fof_system_atomic_formula>s are used for evaluable predicates that are
// %----available in particular tools. The predicate names are not controlled by
// %----the TPTP syntax, so use with due care. Same for <fof_system_term>s.

fof_plain_term: constant                         { $$ = MkFunConst($1) }
  | functor LEFT_PAREN fof_arguments RIGHT_PAREN { $$ = PFun{$1, $3, Lib.MkNone[PTypeFun]()} }
  ;

fof_defined_term: defined_term  { $$ = $1 }
  | fof_defined_atomic_term     { $$ = $1 }
  ;

fof_defined_atomic_term: fof_defined_plain_term { $$ = $1 }
  ;

fof_defined_plain_term: defined_constant                    { $$ = MkFunConst($1) }
  | defined_functor LEFT_PAREN fof_arguments RIGHT_PAREN    { $$ = PFun{$1, $3, Lib.MkNone[PTypeFun]()} }
  ;

fof_arguments: fof_term          { $$ = []PTerm{$1} }
  | fof_term COMMA fof_arguments { $$ = append([]PTerm{$1}, $3...) }
  ;

fof_term: fof_function_term { $$ = $1 }
  | variable                { $$ = PVar{$1} }
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

functor: atomic_word { $$ = $1 }
  ;

defined_constant: defined_functor { $$ = $1 }
  ;

defined_functor: atomic_defined_word { $$ = $1 }
  ;

// <defined_functor>      :== $uminus | $sum | $difference | $product |
//                            $quotient | $quotient_e | $quotient_t | $quotient_f |
//                            $remainder_e | $remainder_t | $remainder_f |
//                            $floor | $ceiling | $truncate | $round |
//                            $to_int | $to_rat | $to_real

defined_term: number { $$ = MkDefinedConst($1.Fst, $1.Snd) }
  | DISTINCT_OBJECT  { $$ = MkFunConst($1) }
  ;

variable: UPPER_WORD { $$ = $1 }
  ;

include: INCLUDE LEFT_PAREN file_name formula_selection RIGHT_PAREN DOT
{ $$ = PStatement{$3, Include, Lib.MkNone[PForm](), Lib.MkNone[Lib.Pair[string, PType]]()} }
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

number: INTEGER { $$ = Lib.MkPair($1, MkTypeConst("$int").(PTypeFun)) }
  | RATIONAL    { $$ = Lib.MkPair($1, MkTypeConst("$rat").(PTypeFun)) }
  | REAL        { $$ = Lib.MkPair($1, MkTypeConst("$real").(PTypeFun)) }
  ;

file_name: SINGLE_QUOTED { $$ = $1 }
  ;
%%

/* func recordNumberInGlobalContext(name string) { */
/*     if name[0] == '$' { */
/*         return */
/*     } */
/*     AST.SaveConstant(name, AST.MkTypeHint(definedType)) */
/* } */
