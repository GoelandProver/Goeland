// $basictypes.Id$
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
	"fmt"
	"unicode"
  "io/ioutil"
  "os"
  basictypes "github.com/GoelandProver/Goeland/types/basic-types"
	)

// Count of quantifiers (bound)
var cpt_quantif = 0

// To locate the line number of an error
var yylineno = 1

// To factorize applications to terms (functions and predicates)
type App struct {
        symb basictypes.Id
	args []basictypes.Term
}//App

// To get the final result
var res []basictypes.Statement

%}

// fields inside this union end up as the fields in a structure known
// as ${PREFIX}SymType, of which a reference is passed to the lexer.
%union{
	val string
	lstm []basictypes.Statement
	stm basictypes.Statement
	fr basictypes.FormulaRole
	form basictypes.Form
	term basictypes.Term
	ltrm []basictypes.Term
	vrl []basictypes.Var
	vrb basictypes.Var
	app App
	id basictypes.Id
  ls []string
}

// any non-terminal which returns a value needs a type, which is
// really a field name in the above union struct
%type <lstm> file tptp_input_list
%type <stm> tptp_input annotated_formula fof_annotated include
%type <val> name file_name number integer rational real distinct_object signed_integer unsigned_integer decimal positive_decimal signed_rational unsigned_rational unsigned_real decimal_fraction dot_decimal decimal_exponent exp_integer signed_exp_integer unsigned_exp_integer signed_real
%type <fr> formula_role
%type <form> fof_formula fof_logic_formula fof_binary_formula
%type <form> fof_unitary_formula fof_binary_nonassoc fof_binary_assoc
%type <form> fof_or_formula fof_and_formula fof_quantified_formula
%type <form> fof_unary_formula atomic_formula fol_infix_unary
%type <form> plain_atomic_formula defined_atomic_formula defined_infix_formula
%type <term> term function_term
%type <ltrm> arguments
%type <vrl> fof_variable_list
%type <vrb> variable
%type <app> plain_term defined_term
%type <id> constant tptp_functor atomic_word
%type <ls> name_list

// same for terminals
/* Token declarations for Tptp parser */

%token EOF

%token DOT
%token COMMA
%token COLON
%token EXPONENT

%token LEFT_PAREN
%token RIGHT_PAREN
%token LEFT_BRACKET
%token RIGHT_BRACKET

%token FOF
%token INCLUDE

%token FORALL
%token EXISTS

%token ARROW

%token STAR
%token PLUS
%token <val> SIGN
%token ZERO_NUMERIC
%token <val> NUMERIC
%token SLASH

%token XOR
%token EQUIV
%token IMPLY
%token LEFT_IMPLY

%token NOT
%token AND
%token VLINE
%token NOTAND
%token NOTVLINE

%token EQUAL
%token NOT_EQUAL
%token GENTZEN_ARROW

%token ITE_F
%token ITE_T
%token LET_TF
%token LET_FF
%token LET_FT
%token LET_TT

%token DOLLAR_FOF
%token DOLLAR_FOT

%token <val> LOWER_WORD
%token <val> UPPER_WORD
%token <val> SINGLE_QUOTED
%token <val> DISTINCT_OBJECT
%token <val> DOLLAR_WORD
%token <val> DOLLAR_DOLLAR_WORD
%token <val> REAL
%token <val> RATIONAL
%token <val> INTEGER

%%

/* Parser adapted from the one of Dolmen: https://github.com/Gbury/dolmen */
/* Hand-written following syntax.bnf */
/* Complete file, i.e Top-level declarations */

file:
    tptp_input_list {res = $1}
  ;

tptp_input_list: {$$ = nil}
  | tptp_input tptp_input_list {$$ = append([]basictypes.Statement{$1}, $2...)} 
  ;

tptp_input: annotated_formula {$$ = $1}
  | include {$$ = $1}
  ;

/* Formula records */

annotated_formula:
    fof_annotated {$$ = $1}
  ;

fof_annotated:
    FOF LEFT_PAREN name COMMA formula_role COMMA
      fof_formula annotations RIGHT_PAREN DOT
    {$$ = basictypes.MakeStatement($3, $5, $7)}
  ;

annotations:  {}
  | COMMA source optional_info
   //| COMMA s=source i=optional_info
   //    { let loc = L.mk_pos $startpos $endpos in Some (S.annot ~loc s i) }
   //|
   //{ None }
  ;

/* include record */
include:
  INCLUDE LEFT_PAREN file_name RIGHT_PAREN DOT  { $$ = basictypes.MakeStatement($3, basictypes.Include, nil) }
  | INCLUDE LEFT_PAREN file_name COMMA LEFT_BRACKET name_list RIGHT_BRACKET RIGHT_PAREN DOT { $$ = basictypes.MakeStatement($3, basictypes.Include, nil) }

file_name:
  SINGLE_QUOTED     { $$ = $1 }

name_list:
  name { $$ = []string{$1} }
  | name COMMA name_list { $$ = append([]string{$1}, $3...) }

formula_role:
    LOWER_WORD
    {switch $1 {
     case "axiom":
             $$ = basictypes.Axiom
     case "conjecture":
             $$ = basictypes.Conjecture
     }}
  ;

/* FOF formulas */

fof_formula:
    fof_logic_formula {$$ = $1}
  ;
/*
  | f=fof_sequent
  { f }*/

fof_logic_formula:
    fof_binary_formula {$$ = $1}
  | fof_unitary_formula {$$ = $1}
  ;

fof_binary_formula:
    fof_binary_nonassoc {$$ = $1}
  | fof_binary_assoc {$$ = $1}
  ;

fof_binary_nonassoc:
    fof_unitary_formula EQUIV fof_unitary_formula {$$ = basictypes.MakerEqu($1, $3)}
  | fof_unitary_formula IMPLY fof_unitary_formula {$$ = basictypes.MakerImp($1, $3)}
  | fof_unitary_formula LEFT_IMPLY fof_unitary_formula {$$ = basictypes.MakerImp($3, $1)}
  | fof_unitary_formula XOR fof_unitary_formula
    {$$ = basictypes.MakerOr([]basictypes.Form{basictypes.MakerAnd([]basictypes.Form{$1, basictypes.RefuteForm($3)}), basictypes.MakerAnd([]basictypes.Form{basictypes.RefuteForm($1), $3})})}
  | fof_unitary_formula NOTVLINE fof_unitary_formula
    {$$ = basictypes.RefuteForm(basictypes.MakerOr([]basictypes.Form{$1, $3}))}
  | fof_unitary_formula NOTAND fof_unitary_formula
    {$$ = basictypes.RefuteForm(basictypes.MakerAnd([]basictypes.Form{$1, $3}))}
  ;

fof_binary_assoc:
    fof_or_formula {$$ = $1}
  | fof_and_formula {$$ = $1}
  ;

fof_or_formula:
    fof_unitary_formula VLINE fof_unitary_formula {$$ = basictypes.MakerOr([]basictypes.Form{$1, $3})}
  | fof_or_formula VLINE fof_unitary_formula {$$ = basictypes.MakerOr([]basictypes.Form{$1, $3})}
  ;

fof_and_formula:
    fof_unitary_formula AND fof_unitary_formula {$$ = basictypes.MakerAnd([]basictypes.Form{$1, $3})}
  | fof_and_formula AND fof_unitary_formula {$$ = basictypes.MakerAnd([]basictypes.Form{$1, $3})}
  ;

fof_unitary_formula:
    fof_quantified_formula {$$ = $1}
  | fof_unary_formula {$$ = $1}
  | atomic_formula {$$ = $1}
  | LEFT_PAREN fof_logic_formula RIGHT_PAREN {$$ = $2}
  ;

fof_quantified_formula:
    FORALL LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON
      fof_unitary_formula
    {$$ = basictypes.MakerAll($3, $6)}
  | EXISTS LEFT_BRACKET fof_variable_list RIGHT_BRACKET COLON
      fof_unitary_formula
    {$$ = basictypes.MakerEx($3, $6)}
  ;

fof_variable_list:
    variable {$$ = []basictypes.Var{$1}}
  | variable COMMA fof_variable_list {$$ = append([]basictypes.Var{$1},$3...)}
  ;

fof_unary_formula:
    NOT fof_unitary_formula {$$ = basictypes.RefuteForm($2)}
  | fol_infix_unary {$$ = $1}
  ;

/*fof_sequent:
    fof_tuple GENTZEN_ARROW fof_tuple
  | LEFT_PAREN fof_sequent RIGHT_PAREN
  ;*/
  /*  | hyp=fof_tuple GENTZEN_ARROW goal=fof_tuple
       { let loc = L.mk_pos $startpos $endpos in T.sequent ~loc hyp goal }
  | LEFT_PAREN t=fof_sequent RIGHT_PAREN
  { t }*/

/*fof_tuple:
    LEFT_BRACKET RIGHT_BRACKET
  | LEFT_BRACKET fof_tuple_list RIGHT_BRACKET
  ;*/
/*  | LEFT_BRACKET RIGHT_BRACKET
       { [] }
  | LEFT_BRACKET l=fof_tuple_list RIGHT_BRACKET
  { l }*/

/*fof_tuple_list:
    fof_logic_formula
  | fof_logic_formula COMMA fof_tuple_list
  ;*/
    /*  | f=fof_logic_formula
       { [ f ] }
  | f=fof_logic_formula COMMA l=fof_tuple_list
  { f :: l }*/

/* Special formulas */

fol_infix_unary:
    term NOT_EQUAL term {$$ = basictypes.MakerPred(basictypes.Id_neq, []basictypes.Term{$1, $3})}
  ;

/* First order atoms */

atomic_formula:
    plain_atomic_formula {$$ = $1}
  | defined_atomic_formula {$$ = $1}
  ;
  /*  | system_atomic_formula */

plain_atomic_formula:
    plain_term {$$ = basictypes.MakerPred($1.symb, $1.args)}
  ;

defined_atomic_formula:
    defined_infix_formula {$$ = $1}
  | DOLLAR_WORD
    {if $1 == "true" {
             $$ =basictypes.Top{}
     } else if $1 == "false" {
	     $$ = basictypes.Bot{}
     }}
  ;
/*    defined_plain_formula */
      
/*defined_plain_formula:
    defined_plain_term
    ;*/

defined_infix_formula:
    term EQUAL term {$$ = basictypes.MakerPred(basictypes.Id_eq, []basictypes.Term{$1, $3})}
  ;

/*system_atomic_formula:
    system_term
    ;*/
  /*    | t=system_term
      { t }*/

/* First order terms */

term:
    function_term {$$ = $1}
  | variable {$$ = $1}
  ;
/*  | t=conditional_term
    | t=let_term */

function_term:
    plain_term {$$ = basictypes.MakerFun($1.symb, $1.args)}
    | defined_term { $$ = basictypes.MakerFun($1.symb, $1.args) }
  ;
/*  | defined_term
    | system_term */

plain_term:
    constant {$$ = App{$1, []basictypes.Term{}}}
  | tptp_functor LEFT_PAREN arguments RIGHT_PAREN {$$ = App{$1, $3}}
  ;

defined_term:
  number { $$ = App{basictypes.MakerId($1), []basictypes.Term{}} }
  | distinct_object  { $$ = App{basictypes.MakerId($1), []basictypes.Term{}} }
  ;


constant:
    tptp_functor {$$ = $1}
  ;

tptp_functor:
    atomic_word {$$ = $1}
  ;

/*defined_term:
    defined_atom
  | defined_atomic_term
  ;*/
/*  | t=defined_atom
  | t=defined_atomic_term
  { t }*/

/*defined_atom:
    number
  | distinct_object
  ;*/
  /*  | a=number
  | a=distinct_object
  { a }*/

/*defined_atomic_term:
    defined_plain_term
    ;*/
/*  | t=defined_plain_term
    { t }*/

/*defined_plain_term:
    defined_constant
  | defined_functor LEFT_PAREN arguments RIGHT_PAREN
  ;*/
  /*  | c=defined_constant
    { c }
  | f=defined_functor LEFT_PAREN l=arguments RIGHT_PAREN
  { let loc = L.mk_pos $startpos $endpos in T.apply ~loc f l }*/

/*defined_constant:
    defined_functor
    ;*/
  /*  | c=defined_functor
      { c }*/

/*defined_functor:
    atomic_defined_word
  ;*/
  /*  | f=atomic_defined_word
      { f }*/

/*system_term:
    system_constant
  | system_functor LEFT_PAREN arguments RIGHT_PAREN
  ;*/
  /*  | c=system_constant
    { c }
  | f=system_functor LEFT_PAREN l=arguments RIGHT_PAREN
  { let loc = L.mk_pos $startpos $endpos in T.apply ~loc f l }*/

/*system_constant:
    system_functor
    ;*/
  /*  | f=system_functor
      { f }*/

/*system_functor:
    atomic_system_word
  ;*/
/*  | f=atomic_system_word
    { f }*/

variable:
    UPPER_WORD {$$ = basictypes.MakerVar($1)}
  ;

arguments:
    term {$$ = []basictypes.Term{$1}}
  | term COMMA arguments {$$ = append([]basictypes.Term{$1},$3...)}
  ;

/* Formula sources */

source:
    general_term
  ;
    /*  | t=general_term
	{ t }*/

optional_info:
  | COMMA useful_info
  ;
/*  | COMMA i=useful_info
    { i }
  |
  { [] }*/

useful_info:
    general_list
  ;
  /*  | l=general_list
      { l }*/

general_term:
    general_data
  | general_list
  | general_data COLON general_term
  ;
  /*  | d=general_data
    { d }
  | l=general_list
    { let f = let loc = L.mk_pos $startpos $endpos in T.data_t ~loc () in
      let loc = L.mk_pos $startpos $endpos in T.apply ~loc f l }
  | d=general_data COLON t=general_term
  { let loc = L.mk_pos $startpos $endpos in T.colon ~loc d t }*/

general_data:
    atomic_word
  | general_function
  | variable
  | number
  | distinct_object
  | formula_data
  ;
/*  | d=atomic_word
  | d=general_function
  | d=variable
  | d=number
  | d=distinct_object
  | d=formula_data
  { d }*/

general_function:
    atomic_word LEFT_PAREN general_terms RIGHT_PAREN
  ;
  /*  | f=atomic_word LEFT_PAREN l=general_terms RIGHT_PAREN
      { let loc = L.mk_pos $startpos $endpos in T.apply ~loc f l }*/

formula_data:
    DOLLAR_FOF LEFT_PAREN fof_formula RIGHT_PAREN
  | DOLLAR_FOT LEFT_PAREN term        RIGHT_PAREN
  ;
  /*  | DOLLAR_FOF LEFT_PAREN f=fof_formula RIGHT_PAREN
  | DOLLAR_FOT LEFT_PAREN f=term        RIGHT_PAREN
  { f }*/

general_list:
    LEFT_BRACKET RIGHT_BRACKET
  | LEFT_BRACKET general_terms RIGHT_BRACKET
  /*  | LEFT_BRACKET RIGHT_BRACKET
    { [] }
  | LEFT_BRACKET l=general_terms RIGHT_BRACKET
  { l }*/

general_terms:
    general_term
  | general_term COMMA general_terms
  ;
  /*  | t=general_term
    { [ t ] }
  | t=general_term COMMA l=general_terms
  { t :: l }*/

/* General purposes */

/*
  name: atomic_word | integer

  this production has been expanded to
  produce ids instead of terms
*/
name:
    atomic_word   { $$ = $1.GetName() }
  | integer { $$ = $1 }

  ;
/*  
  | SINGLE_QUOTED
  | INTEGER
    | integer     { $$ = $1 }   
  ;*/

atomic_word:
    LOWER_WORD {$$ = basictypes.MakerId($1)}
    | SINGLE_QUOTED  { $$ = basictypes.MakerId($1) }
  ;
  /*   | SINGLE_QUOTED */

/*atomic_defined_word:
    DOLLAR_WORD
  ;*/
  /*  | s=DOLLAR_WORD
    { let loc = L.mk_pos $startpos $endpos in
    T.const ~loc (I.mk I.term s) }*/

/*atomic_system_word:
    DOLLAR_DOLLAR_WORD
  ;*/
  /*  | s=DOLLAR_DOLLAR_WORD
    { let loc = L.mk_pos $startpos $endpos in
    T.const ~loc (I.mk I.term s) }*/

number:
    integer { $$ = $1 }
  | rational { $$ = $1 }
  | real { $$ = $1 }
  ;
  /* | n=integer
  | n=rational
  | n=real
  { n }*/

integer:
  signed_integer   { $$ = $1 }
  | unsigned_integer { $$ = $1 }
;

signed_integer: 
  SIGN unsigned_integer { $$ = $1+$2 } // SIGN = + ou -, valeur sémantique à définir
;

unsigned_integer: 
  decimal { $$ = $1 }
;

decimal: 
  ZERO_NUMERIC {$$ = "0" }// 0
  | positive_decimal { $$ = $1 }
;

positive_decimal: 
  NUMERIC // [1-9][0-9]*
;


/* Wrapper around some lexical definitions */

distinct_object:
    DISTINCT_OBJECT
  ;
/*  | s=DISTINCT_OBJECT
    { let loc = L.mk_pos $startpos $endpos in
    T.distinct ~loc (I.mk I.term s) }*/

/* | n=
     { let loc = L.mk_pos $startpos $endpos in T.int ~loc n } */

rational:
  signed_rational   { $$ = $1 }
  | unsigned_rational { $$ = $1 }
;

signed_rational: 
  SIGN unsigned_rational { $$ = $1+$2 } // SIGN = + ou -, valeur sémantique à définir
;

unsigned_rational: 
  decimal SLASH positive_decimal { $$ = $1 }
;

/* | n=RATIONAL
   { let loc = L.mk_pos $startpos $endpos in T.rat ~loc n }*/

real:
  signed_real   { $$ = $1 }
  | unsigned_real { $$ = $1 }
;

signed_real: 
  SIGN unsigned_real { $$ = $1+$2 }
  ;

unsigned_real: 
  decimal_fraction   { $$ = $1 }
  | decimal_exponent { $$ = $1}
  ;

decimal_fraction:
  decimal dot_decimal   { $$ = $1+$2 }
  ;

dot_decimal:
  DOT NUMERIC { $$ = "."+$2 }
  ;

decimal_exponent:
  decimal EXPONENT exp_integer { $$ = $1+"E"+$3 }
  | decimal_fraction EXPONENT exp_integer { $$ = $1+"E"+$3 }
  ;

exp_integer:
  signed_exp_integer { $$ = $1 }
  | unsigned_exp_integer { $$ = $1 }
  ;

signed_exp_integer:
  SIGN unsigned_exp_integer { $$ = $1+$2 }
  ;

unsigned_exp_integer:
  NUMERIC  
  ;
/*| n=REAL
    { let loc = L.mk_pos $startpos $endpos in T.real ~loc n }*/

%%      /*  start  of  programs  */

// Hand-written lexer

type TPTPLex struct {
	s string
	pos int
}

// Skips comments
// Returns 0 if there is nothing more to read, 1 otherwise
func (l *TPTPLex) SkipComments() int {
	if l.pos == len(l.s) {
		return 0
	}//if
        c := rune(l.s[l.pos])
	if c == '%' {
	        for c != '\n' {
		        l.pos += 1
	                if l.pos == len(l.s) {
		                return 0
	                }//if
                        c = rune(l.s[l.pos])
		}//for
		yylineno +=1
	        l.pos += 1
                if l.pos == len(l.s) {
	                return 0
                }//if
	}//if
        return 1
}//SkipComments

// Skips spaces, line feeds, etc.
// Returns 0 if there is nothing more to read, 1 otherwise
func (l *TPTPLex) SkipSpaces() int {
	var c rune = ' '
	for c == ' ' || c == '\n' || c == '\r' || c == '\t' {
		if l.pos == len(l.s) {
			return 0
		}//if
		c = rune(l.s[l.pos])
		if c == ' ' || c == '\n' || c == '\r' || c == '\t' {
  		        l.pos += 1
			if c == '\n' {
			        yylineno += 1
			}//if
		}//if
	}//for
        return 1
}//SkipSpaces

// Skips comments and spaces, line feeds, etc.
// Returns 0 if there is nothing more to read, 1 otherwise
func (l *TPTPLex) SkipCommentsAndSpaces() int {
        stop := false
        for !stop {
	        before := l.pos
                res := l.SkipComments()
                if res == 0 {
	                return 0
		}//if
                stop = (before == l.pos)
		before = l.pos
                res = l.SkipSpaces()
                if res == 0 {
	                return 0
	        }//if
                stop = stop && (before == l.pos)
	}//for
        return 1
}//SkipCommentsAndSpaces

// Checks if name is a keyword
func IsKeyword(name string) (int, bool) {
        switch name {
	case "fof":
	        return FOF, false
  case "include":
          return INCLUDE, false
	default:
	        return 0, true
        }//switch
}//IsKeyword

// Checks if the next token is a upper/lower word or a keyword
// Returns the token if recognized, 0 otherwise (something remains to be read)
func (l *TPTPLex) Word(lval *TPTPSymType) int {
        c := rune(l.s[l.pos])
        name := string(c)
        if unicode.IsUpper(c) || unicode.IsLower(c) {
	        var token int
  	        if unicode.IsUpper(c) {
		        token = UPPER_WORD
		}/*if*/ else {
		        token = LOWER_WORD
		}//else
	        l.pos += 1
		if l.pos == len(l.s) {
		        lval.val = name
			return token
		}//if
		c = rune(l.s[l.pos])
		for unicode.IsLetter(c) || unicode.IsDigit(c) || c == '_' {
		        name = name + string(c)
		        l.pos += 1
			if l.pos == len(l.s) {
			        kwd, err := IsKeyword(name)
			        if err {
		                        lval.val = name
			                return token
				}/*if*/ else {
				        return kwd
				}//else
		        }//if
			c = rune(l.s[l.pos])
		}//for
		kwd, err := IsKeyword(name)
		if err || c != '(' {
		        lval.val = name
			return token
		}/*if*/ else {
		        return kwd
		}//else
	} else if c == '\'' {
      l.pos += 1
      c = rune(l.s[l.pos])
      sq_quoted := ""
      for isSqChar(c) || c == '\\' {
          if c == '\\' {
            l.pos += 1
            c = rune(l.s[l.pos])
            if c == '\\' || c == '\'' {
                sq_quoted += string('\\'+c)
            }
          } else {
            sq_quoted += string(c)
          }
          l.pos += 1
          // ... Si y'a des bugs, voir ici
          c = rune(l.s[l.pos])
      }
      l.pos += 1
      c = rune(l.s[l.pos])
      lval.val = sq_quoted
return SINGLE_QUOTED 
  } else if c == '"' {
   l.pos += 1
      c = rune(l.s[l.pos])
      sq_quoted := ""
      for isDoChar(c) || c == '\\' {
          if c == '\\' {
            l.pos += 1
            c = rune(l.s[l.pos])
            if c == '\\' || c == '"' {
                sq_quoted += string('\\'+c)
            }
          } else {
            sq_quoted += string(c)
          }
          l.pos += 1
          // ... Si y'a des bugs, voir ici
          c = rune(l.s[l.pos])
      }
      l.pos += 1
      c = rune(l.s[l.pos])
      lval.val = sq_quoted
return DISTINCT_OBJECT  
  } else if unicode.IsDigit(c) {
      tmp := string(c)
      l.pos += 1
      c = rune(l.s[l.pos])
      for unicode.IsDigit(c) {
         tmp += string(c)
        l.pos += 1
        c = rune(l.s[l.pos])
      }
      lval.val = tmp
      return NUMERIC
  } else {
	        return 0
	}//else
}//Word

// 40-46, 50-133, 135-176 et \\ ou \'
//32-38 40-91 93-126
func isSqChar(c rune) bool {
  ascii := int(c)
  return (ascii >= 32 && ascii <= 38) || (ascii >= 40 && ascii <= 91) || (ascii >= 93 && ascii <= 126) 
}

func isDoChar(c rune) bool {
  ascii := int(c)
  return (ascii >= 32 && ascii <= 33) || (ascii >= 35 && ascii <= 91) || (ascii >= 93 && ascii <= 126) 
}


// Checks if the next token is a special word
// Returns the token if recognized, 0 otherwise
func (l *TPTPLex) SpecialWord(lval *TPTPSymType) int {
        c := l.s[l.pos]
        l.pos += 1
        switch c {
	case '.':
	        return DOT
	case ',':
	        return COMMA
	case ':':
	        return COLON
	case '(':
	        return LEFT_PAREN
	case ')':
	        return RIGHT_PAREN
	case '[':
	        return LEFT_BRACKET
	case ']':
	        return RIGHT_BRACKET
  case '+', '-':
          lval.val = string(c)
          return SIGN 
  case '0':
          return ZERO_NUMERIC
  case '/':
          return SLASH
  case 'e', 'E':
          return EXPONENT
	case '!':
	        if l.pos == len(l.s) {
            cpt_quantif++
		        return FORALL
		}/*if*/ else {
                        c = l.s[l.pos]
   	                if c == '=' {
	                        l.pos += 1
			        return NOT_EQUAL
		        }/*if*/ else {
                    cpt_quantif++
		                return FORALL
		        }//else
		}//else
	case '?':
          cpt_quantif++
	        return EXISTS
	case '~':
                if l.pos == len(l.s) {
		        return NOT
		}/*if*/ else {
                        c = l.s[l.pos]
	                switch c {
		        case '&':
        	                l.pos +=1
		                return NOTAND
		        case '|':
        	                l.pos +=1
	                        return NOTVLINE
		        default:
		                return NOT
		        }//switch
		}//else
	case '&':
	        return AND
	case '|':
	        return VLINE
        case '=':
                if l.pos == len(l.s) {
		        return EQUAL
		}/*if*/ else {
                        c = l.s[l.pos]
   	                if c == '>' {
	                        l.pos += 1
			        return IMPLY
		        }/*if*/ else {
		                return EQUAL
		        }//else
		}//else
	case '<':
                if l.pos == len(l.s) {
		        return 0
		}/*if*/ else {
                        c = l.s[l.pos]
	                if c == '=' {
		                l.pos += 1
                                if l.pos == len(l.s) {
				        return LEFT_IMPLY
				}/*if*/ else {
                                        c = l.s[l.pos]
		                        if c == '>' {
			                        l.pos += 1
			                        return EQUIV
				        }/*if*/ else {
                                                return LEFT_IMPLY
				        }//else
				}//else
			}/*if*/ else if c == '~' {
		                l.pos += 1
                                if l.pos == len(l.s) {
				        return 0
				}/*if*/ else {
                                        c = l.s[l.pos]
		                        if c == '>' {
			                        l.pos += 1
			                        return XOR
		                        }//if
				}//else
			}//else
		}//else
	        return 0
	case '$':
                if l.pos == len(l.s) {
		        return 0
		}/*if*/ else {
                        token := l.Word(lval)
			if (token == LOWER_WORD) {
        if (lval.val == "fot") {
          return DOLLAR_FOT
        } else if (lval.val == "true" || lval.val == "false") {
		                return DOLLAR_WORD
			  } 
      } else if (token == FOF) {
          return DOLLAR_FOF
        }//if
      }
			   
	        //else
	}//switch
        return 0
}//SpecialWord

// Main lexer
func (l *TPTPLex) Lex(lval *TPTPSymType) int {
	// Skip comments and spaces, line feeds, etc.
        res := l.SkipCommentsAndSpaces()
        if res == 0 {
	        return 0
	}//if
	// Keywords and names
        token := l.Word(lval)
	if token != 0 {
	        return token
	}//if
        // Special words
        token = l.SpecialWord(lval)
	if token != 0 {
	        return token
	}//if
	return 0
}//Lex

func (l *TPTPLex) Error(s string) {
        fmt.Printf("Syntax error, line %d: %s\n", yylineno, s)
}//Error

func check(e error) {
        if e != nil {
                fmt.Printf("Error : %v\n", e)
                os.Exit(1)
        }
}//check

func ParseMain(fn string) ([]basictypes.Statement, int) {
        dat, err := ioutil.ReadFile(fn)
        check(err)
        TPTPParse(&TPTPLex{s: string(dat)})
        return res, cpt_quantif
}//ParseMain
