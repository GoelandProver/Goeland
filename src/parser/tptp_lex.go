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

package parser

import (
	"log"
	"os"
	"unicode"

	btypes "github.com/GoelandProver/Goeland/types/basic-types"
)

type TPTPLex struct {
	s   string
	pos int
	c   rune
}

const (
	FAILURE_TOKEN = 0
)

// ----------------------------------------------------------------------------
// Lexer methods
// ----------------------------------------------------------------------------

/**
 * All rules of the lexer taken from:
 *	https://tptp.org/TPTP/SyntaxBNF.html
 **/

func (lexer *TPTPLex) checkAdvance(c rune) bool {
	if lexer.pos < len(lexer.s) && rune(lexer.s[lexer.pos]) == c {
		lexer.advance()
		return true
	}
	return false
}

func (lexer *TPTPLex) advance() {
	lexer.c = rune(lexer.s[lexer.pos])
	lexer.pos += 1
}

func (lexer *TPTPLex) remove(chars int) {
	lexer.pos -= chars
	if lexer.pos == 0 {
		lexer.c = rune(lexer.s[0])
		lexer.pos = 1
	} else {
		lexer.c = rune(lexer.s[lexer.pos-1])
	}
}

func (lexer TPTPLex) checkNext(c rune) bool {
	// True if EOF or following char is c
	return rune(lexer.s[lexer.pos]) == c
}

// ----------------------------------------------------------------------------
// Spaces & comments
// ----------------------------------------------------------------------------

// <comment>              ::- <comment_line>|<comment_block>
// <comment_line>         ::- [%]<printable_char>*
// <comment_block>        ::: [/][*]<not_star_slash>[*][*]*[/]
// Returns false if the next char is EOF
func (lexer *TPTPLex) filterComments() bool {
	if lexer.c == '%' { // Comment line
		lexer.advance()
		for lexer.pos < len(lexer.s) && lexer.isPrintableChar() {
			lexer.advance()
		}
		return lexer.pos < len(lexer.s)
	} else if lexer.c == '/' {
		if lexer.checkAdvance('*') {
			lexer.advance()
			for lexer.pos < len(lexer.s) && lexer.notStarSlash() {
				if lexer.c == '\n' {
					yylineno += 1
				}
				lexer.advance()
			}

			if lexer.pos == len(lexer.s) {
				lexer.Error("Multi-line comment started but never ended.")
			}

			// Finishes by */
			if lexer.s[lexer.pos-2] == '*' {
				lexer.advance()
			}
		}
		return lexer.pos < len(lexer.s)
	}

	return true
}

func (lexer *TPTPLex) filterSpaces() bool {
	for lexer.pos < len(lexer.s) && (lexer.c == ' ' || lexer.c == '\n' || lexer.c == '\r' || lexer.c == '\t') {
		if lexer.c == '\n' {
			yylineno += 1
		}
		lexer.advance()
	}

	return lexer.pos < len(lexer.s)
}

// <printable_char>       ::: .
// %----<printable_char> is any printable ASCII character, codes 32 (space) to 126
// %----(tilde). <printable_char> does not include tabs, newlines, bells, etc. The
// %----use of . does not not exclude tab, so this is a bit loose.
func (lexer *TPTPLex) isPrintableChar() bool {
	return int(lexer.c) >= 32 && int(lexer.c) <= 126
}

// <not_star_slash>       ::: ([^*]*[*][*]*[^/*])*[^*]*
func (lexer *TPTPLex) notStarSlash() bool {
	return lexer.c != '*' || !lexer.checkAdvance('/')
}

// ----------------------------------------------------------------------------
// Syntactic tokens
// ----------------------------------------------------------------------------

// %----Keywords:    fof cnf thf tff include
func (lexer *TPTPLex) isKeyword() (int, bool) {
	word := ""
	for len(lexer.s) > lexer.pos && unicode.IsLetter(lexer.c) {
		word += string(lexer.c)
		lexer.advance()
	}

	// Special case
	if len(word) == 1 {
		lexer.remove(1)
		return FAILURE_TOKEN, false
	}

	// We're at '(', so we need to remove 2 to the counter for the next char to be '('
	lexer.remove(1)

	if !lexer.checkNext('(') {
		lexer.remove(len(word) - 1)
		return FAILURE_TOKEN, false
	}

	lexMap := map[string]int{
		"fof":     FOF,
		"cnf":     CNF,
		"thf":     THF,
		"tff":     TFF,
		"tcf":     TCF,
		"tpi":     TPI,
		"include": INCLUDE,
	}

	return lexer.manageFailableReturn(lexMap, word)
}

// %----Punctuation: ( ) , . [ ] :
func (lexer TPTPLex) isPunctuation() (int, bool) {
	lexMap := map[rune]int{
		'(': LEFT_PAREN,
		')': RIGHT_PAREN,
		',': COMMA,
		'.': DOT,
		'[': LEFT_BRACKET,
		']': RIGHT_BRACKET,
		':': COLON,
	}

	return manageReturn(lexMap, lexer.c)
}

// %----Operators:   ! ? ~ & | <=> => <= <~> ~| ~& * +
func (lexer *TPTPLex) isOperator() (int, bool) {
	lexMap := map[string]int{
		"!":   FORALL,
		"!>":  FORALL_TYPE,
		"?":   EXISTS,
		"~":   NOT,
		"|":   VLINE,
		"&":   AND,
		"<=>": EQUIV,
		"=>":  IMPLY,
		"<=":  LEFT_IMPLY,
		"<~>": XOR,
		"~|":  NOTVLINE,
		"~&":  NOTAND,
		"*":   STAR,
		"+":   PLUS,
		"<<":  SUBTYPE,
	}

	word := string(lexer.c)

	switch lexer.c {
	case '!':
		if lexer.checkAdvance('>') { // !>
			word += ">"
			quantifiersCounter += 1
		} else {
			if lexer.pos >= len(lexer.s) || lexer.checkNext(' ') {
				quantifiersCounter += 1
			} else {
				return FAILURE_TOKEN, false
			}
		}
	case '?':
		if lexer.pos >= len(lexer.s) || lexer.checkNext(' ') {
			quantifiersCounter += 1
		} else {
			return FAILURE_TOKEN, false
		}
	case '<':
		if lexer.checkAdvance('=') { // <=> or <=
			word += "="
			if lexer.checkAdvance('>') {
				word += ">"
			}
		} else if lexer.checkAdvance('~') { // <~>
			if lexer.checkAdvance('>') {
				word += "~>"
			}
		} else if lexer.checkAdvance('<') { // <<
			word += "<"
		}
	case '=':
		if lexer.checkAdvance('>') { // =>
			word += ">"
		}
	case '~':
		if lexer.checkAdvance('|') { // ~|
			word += "|"
		} else if lexer.checkAdvance('&') { // ~&
			word += "&"
		}
	}

	return lexer.manageFailableReturn(lexMap, word)
}

// %----Predicates:  = != $true $false
func (lexer *TPTPLex) isPredicate() (int, bool) {
	lexMap := map[string]int{
		"=":      EQUAL,
		"!=":     NOT_EQUAL,
		"$true":  TRUE,
		"$false": FALSE,
	}

	word := string(lexer.c)

	switch lexer.c {
	case '$': // $true or $false
		lexer.advance()
		word += string(lexer.c)
		for len(lexer.s) > lexer.pos && unicode.IsLetter(lexer.c) {
			lexer.advance()
			word += string(lexer.c)
		}
	case '!': // !=
		if lexer.checkAdvance('=') {
			word = "!="
		}
	}

	return lexer.manageFailableReturn(lexMap, word)
}

func (lexer *TPTPLex) SyntacticLex() int {
	if token, isPunctation := lexer.isPunctuation(); isPunctation {
		return token
	}

	if token, isOperator := lexer.isOperator(); isOperator {
		return token
	}

	if token, isKeyword := lexer.isKeyword(); isKeyword {
		return token
	}

	if token, isPredicate := lexer.isPredicate(); isPredicate {
		return token
	}

	return FAILURE_TOKEN
}

// ----------------------------------------------------------------------------
// Quoted words
// ----------------------------------------------------------------------------

// <single_quoted>        ::- <single_quote><sq_char><sq_char>*<single_quote>
// %----<single_quoted>s contain visible characters. \ is the escape character for
// %----' and \, i.e., \' is not the end of the <single_quoted>.
// %----The token does not include the outer quotes, e.g., 'cat' and cat are the
// %----same. See <atomic_word> for information about stripping the quotes.

// <distinct_object>      ::- <double_quote><do_char>*<double_quote>
// %---Space and visible characters upto ~, except " and \
// %----<distinct_object>s contain visible characters. \ is the escape character
// %----for " and \, i.e., \" is not the end of the <distinct_object>.
// %----<distinct_object>s are different from (but may be equal to) other tokens,
// %----e.g., "cat" is different from 'cat' and cat. Distinct objects are always
// %----interpreted as themselves, so if they are different they are unequal,
// %----e.g., "Apple" != "Microsoft" is implicit.

func (lexer *TPTPLex) quotedWords(yylval *TPTPSymType) int {
	if lexer.c == '\'' {
		lexer.advance()
		lexer.singleQuoted(yylval)
		return SINGLE_QUOTED
	} else if lexer.c == '"' {
		lexer.advance()
		lexer.distinctObject(yylval)
		return DISTINCT_OBJECT
	}
	return FAILURE_TOKEN
}

func (lexer *TPTPLex) singleQuoted(yylval *TPTPSymType) {
	word := ""
	for lexer.isSqChar() || lexer.c == '\\' {
		if lexer.c == '\\' {
			lexer.advance()
			if lexer.c == '\\' || lexer.c == '\'' {
				word += string('\\' + lexer.c)
			}
		} else {
			word += string(lexer.c)
		}
		lexer.advance()
	}
	yylval.str = word
}

func (lexer *TPTPLex) distinctObject(yylval *TPTPSymType) {
	word := ""
	for lexer.isDoChar() || lexer.c == '\\' {
		if lexer.c == '\\' {
			lexer.advance()
			if lexer.c == '\\' || lexer.c == '"' {
				word += string('\\' + lexer.c)
			}
		} else {
			word += string(lexer.c)
		}
		lexer.advance()
	}
	yylval.str = word
}

// %---Space and visible characters upto ~, except ' and \
// <sq_char>              ::: ([\40-\46\50-\133\135-\176]|[\\]['\\])
func (lexer TPTPLex) isSqChar() bool {
	ascii := int(lexer.c)
	return (ascii >= 32 && ascii <= 38) || (ascii >= 40 && ascii <= 91) || (ascii >= 93 && ascii <= 126)
}

// <do_char>              ::: ([\40-\41\43-\133\135-\176]|[\\]["\\])
func (lexer TPTPLex) isDoChar() bool {
	ascii := int(lexer.c)
	return (ascii >= 32 && ascii <= 33) || (ascii >= 35 && ascii <= 91) || (ascii >= 93 && ascii <= 126)
}

// ----------------------------------------------------------------------------
// Words
// ----------------------------------------------------------------------------

// <dollar_word>          ::- <dollar><alpha_numeric>*
// <dollar_dollar_word>   ::- <dollar><dollar><alpha_numeric>*
// <upper_word>           ::- <upper_alpha><alpha_numeric>*
// <lower_word>           ::- <lower_alpha><alpha_numeric>*
// <lower_alpha>          ::: [a-z]
// <upper_alpha>          ::: [A-Z]
// <dollar>               ::: [$]
func (lexer *TPTPLex) word(yylval *TPTPSymType) int {
	token := FAILURE_TOKEN

	yylval.str = ""
	if lexer.c == '$' {
		if lexer.checkAdvance('$') {
			lexer.advance()
			yylval.str += "$"
			token = DOLLAR_DOLLAR_WORD
		} else {
			lexer.advance()
			yylval.str = "$"
			token = DOLLAR_WORD
		}
	} else if unicode.IsUpper(lexer.c) {
		token = UPPER_WORD
	} else if unicode.IsLower(lexer.c) {
		token = LOWER_WORD
	}

	if token != FAILURE_TOKEN {
		lexer.alphaNumeric(yylval)
	}

	if token == DOLLAR_WORD {
		if yylval.str == "$fot" {
			token = DOLLAR_FOT
		} else if yylval.str == "$fof" {
			token = DOLLAR_FOF
		} else if yylval.str == "$tff" {
			token = DOLLAR_TFF
		}
	}

	return token
}

// <alpha_numeric>        ::: (<lower_alpha>|<upper_alpha>|<numeric>|[_])
func (lexer *TPTPLex) alphaNumeric(yylval *TPTPSymType) {
	word := ""
	for len(lexer.s) > lexer.pos && (unicode.IsLetter(lexer.c) || unicode.IsDigit(lexer.c) || lexer.c == '_') {
		word += string(lexer.c)
		lexer.advance()
	}
	lexer.remove(1)
	yylval.str += word
}

// ----------------------------------------------------------------------------
// Special characters
// ----------------------------------------------------------------------------

// <arrow>                ::- [>]
// <less_sign>            ::- [<]
// <hash>                 ::- [#]
// <slash>                ::- <slash_char>
// <slosh>                ::- <slosh_char>
// <slash_char>           ::: [/]
// <slosh_char>           ::: [\\]
func (lexer TPTPLex) specialChars() int {
	switch lexer.c {
	case '>':
		return ARROW
	case '<':
		return LESS_SIGN
	case '#':
		return HASH
	case '/':
		return SLASH
	case '\\':
		return SLOSH
	case '-':
		return DASH
	}

	return FAILURE_TOKEN
}

// ----------------------------------------------------------------------------
// Numbers
// ----------------------------------------------------------------------------

func (lexer *TPTPLex) number(yylval *TPTPSymType) int {
	if lexer.real(yylval) {
		return REAL
	}

	if lexer.rational(yylval) {
		return RATIONAL
	} else if lexer.integer(yylval) {
		return INTEGER
	}
	return FAILURE_TOKEN
}

// ----------------------------------------------------------------------------
// Reals
// ----------------------------------------------------------------------------

// <real>                 ::- (<signed_real>|<unsigned_real>)
func (lexer *TPTPLex) real(yylval *TPTPSymType) bool {
	return lexer.signedReal(yylval) || lexer.unsignedReal(yylval)
}

// <signed_real>          ::- <sign><unsigned_real>
func (lexer *TPTPLex) signedReal(yylval *TPTPSymType) bool {
	if !lexer.isSign() {
		return false
	}

	yylval.str += string(lexer.c)
	lexer.advance()
	if !lexer.unsignedReal(yylval) {
		lexer.remove(1)
		yylval.str = yylval.str[:len(yylval.str)-1]
		return false
	}

	return true
}

// <unsigned_real>        ::- (<decimal_fraction>|<decimal_exponent>)
func (lexer *TPTPLex) unsignedReal(yylval *TPTPSymType) bool {
	return lexer.decimalExponent(yylval) || lexer.decimalFraction(yylval)
}

// <decimal_exponent>     ::- (<decimal>|<decimal_fraction>)<exponent><exp_integer>
func (lexer *TPTPLex) decimalExponent(yylval *TPTPSymType) bool {
	pos := len(yylval.str)

	if !(lexer.decimalFraction(yylval) || lexer.decimal(yylval)) {
		return false
	}

	if !lexer.isExponent() {
		lexer.remove(len(yylval.str) - pos - 1)
		yylval.str = yylval.str[:pos]
		return false
	}

	yylval.str += string(lexer.c)
	lexer.advance()
	return lexer.expInteger(yylval)
}

// <decimal_fraction>     ::- <decimal><dot_decimal>
func (lexer *TPTPLex) decimalFraction(yylval *TPTPSymType) bool {
	pos := len(yylval.str)

	if !lexer.decimal(yylval) {
		return false
	}

	lexer.advance()

	if !lexer.dotDecimal(yylval) {
		lexer.remove(1)
		lexer.remove(len(yylval.str) - pos - 1)
		yylval.str = yylval.str[:pos]
		return false
	}

	return true
}

// <decimal>              ::- (<zero_numeric>|<positive_decimal>)
func (lexer *TPTPLex) decimal(yylval *TPTPSymType) bool {
	if lexer.isZeroNumeric() {
		yylval.str += "0"
		return true
	}
	return lexer.positiveDecimal(yylval)
}

// <positive_decimal>     ::- <non_zero_numeric><numeric>*
func (lexer *TPTPLex) positiveDecimal(yylval *TPTPSymType) bool {
	if !lexer.isNonZeroNumeric() {
		return false
	}

	for lexer.pos < len(lexer.s) && lexer.isNumeric() {
		yylval.str += string(lexer.c)
		lexer.advance()
	}
	lexer.remove(1)

	if lexer.pos == len(lexer.s)-1 {
		yylval.str += string(lexer.c)
	}

	return true
}

// <dot_decimal>          ::- <dot><numeric><numeric>*
func (lexer *TPTPLex) dotDecimal(yylval *TPTPSymType) bool {
	if !lexer.isDot() {
		return false
	}

	lexer.advance()

	if !lexer.isNumeric() {
		lexer.remove(2)
		return false
	}

	yylval.str += "."

	for lexer.pos < len(lexer.s) && lexer.isNumeric() {
		yylval.str += string(lexer.c)
		lexer.advance()
	}
	lexer.remove(1)

	if lexer.pos == len(lexer.s)-1 {
		yylval.str += string(lexer.c)
	}

	return true
}

// <exp_integer>          ::- (<signed_exp_integer>|<unsigned_exp_integer>)
func (lexer *TPTPLex) expInteger(yylval *TPTPSymType) bool {
	return lexer.signedExpInteger(yylval) || lexer.unsignedExpInteger(yylval)
}

// <signed_exp_integer>   ::- <sign><unsigned_exp_integer>
func (lexer *TPTPLex) signedExpInteger(yylval *TPTPSymType) bool {
	if !lexer.isSign() {
		return false
	}

	yylval.str += string(lexer.c)
	lexer.advance()

	return lexer.unsignedExpInteger(yylval)
}

// <unsigned_exp_integer> ::- <numeric><numeric>*
func (lexer *TPTPLex) unsignedExpInteger(yylval *TPTPSymType) bool {
	if !lexer.isNumeric() {
		return false
	}

	for lexer.pos < len(lexer.s) && lexer.isNumeric() {
		yylval.str += string(lexer.c)
		lexer.advance()
	}
	lexer.remove(1)

	if lexer.pos == len(lexer.s)-1 {
		yylval.str += string(lexer.c)
	}

	return true
}

// ----------------------------------------------------------------------------
// Integers
// ----------------------------------------------------------------------------

// <integer>              ::- (<signed_integer>|<unsigned_integer>)
func (lexer *TPTPLex) integer(yylval *TPTPSymType) bool {
	return lexer.signedInteger(yylval) || lexer.unsignedInteger(yylval)
}

// <signed_integer>       ::- <sign><unsigned_integer>
func (lexer *TPTPLex) signedInteger(yylval *TPTPSymType) bool {
	if !lexer.isSign() {
		return false
	}

	yylval.str += string(lexer.c)
	lexer.advance()

	if !lexer.unsignedInteger(yylval) {
		lexer.remove(1)
		yylval.str = yylval.str[:len(yylval.str)-1]
		return false
	}

	return true
}

// <unsigned_integer>     ::- <decimal>
func (lexer *TPTPLex) unsignedInteger(yylval *TPTPSymType) bool {
	return lexer.decimal(yylval)
}

// ----------------------------------------------------------------------------
// Rationals
// ----------------------------------------------------------------------------

// <rational>             ::- (<signed_rational>|<unsigned_rational>)
func (lexer *TPTPLex) rational(yylval *TPTPSymType) bool {
	return lexer.signedRational(yylval) || lexer.unsignedRational(yylval)
}

// <signed_rational>      ::- <sign><unsigned_rational>
func (lexer *TPTPLex) signedRational(yylval *TPTPSymType) bool {
	if !lexer.isSign() {
		return false
	}

	yylval.str += string(lexer.c)
	lexer.advance()

	if !lexer.unsignedRational(yylval) {
		lexer.remove(1)
		yylval.str = yylval.str[:len(yylval.str)-1]
		return false
	}
	return true
}

// <unsigned_rational>    ::- <decimal><slash><positive_decimal>
func (lexer *TPTPLex) unsignedRational(yylval *TPTPSymType) bool {
	pos := len(yylval.str)

	if !lexer.decimal(yylval) {
		return false
	}

	if lexer.c != '/' {
		lexer.remove(len(yylval.str) - pos - 1)
		yylval.str = yylval.str[:pos]
		return false
	}

	yylval.str += "/"
	lexer.advance()
	return lexer.positiveDecimal(yylval)
}

// %----Character classes
// <sign>                 ::: [+-]
func (lexer TPTPLex) isSign() bool {
	return lexer.c == '-' || lexer.c == '+'
}

// <dot>                  ::: [.]
func (lexer TPTPLex) isDot() bool {
	return lexer.c == '.'
}

// <exponent>             ::: [Ee]
func (lexer TPTPLex) isExponent() bool {
	return lexer.c == 'e' || lexer.c == 'E'
}

// <zero_numeric>         ::: [0]
func (lexer TPTPLex) isZeroNumeric() bool {
	return lexer.c == '0'
}

// <non_zero_numeric>     ::: [1-9]
func (lexer TPTPLex) isNonZeroNumeric() bool {
	return int(lexer.c) >= int('1') && int(lexer.c) <= int('9')
}

// <numeric>              ::: [0-9]
func (lexer TPTPLex) isNumeric() bool {
	return unicode.IsDigit(lexer.c)
}

func (lexer TPTPLex) Error(s string) {
	log.Fatalf("Syntax error, line %d: %s\n", yylineno, s)
}

func (lexer *TPTPLex) Lex(yylval *TPTPSymType) int {
	lexer.advance()

	// Filter out comments and spaces at the lexical level
	stop := false
	for !stop {
		before := lexer.pos
		if !lexer.filterComments() || !lexer.filterSpaces() {
			return FAILURE_TOKEN
		}
		stop = (before == lexer.pos)
	}

	if token := lexer.SyntacticLex(); token != FAILURE_TOKEN {
		// fmt.Printf("Syntactic lex: %d\n", token)
		return token
	}

	if token := lexer.quotedWords(yylval); token != FAILURE_TOKEN {
		// fmt.Printf("Quoted word: %d %s\n", token, yylval.str)
		return token
	}

	if token := lexer.word(yylval); token != FAILURE_TOKEN {
		// fmt.Printf("Word: %d %s\n", token, yylval.str)
		return token
	}

	if token := lexer.specialChars(); token != FAILURE_TOKEN {
		// fmt.Printf("Special char: %d\n", token)
		return token
	}

	if token := lexer.number(yylval); token != FAILURE_TOKEN {
		// fmt.Printf("Number: %d %s\n", token, yylval.str)
		return token
	}

	return FAILURE_TOKEN
}

// ----------------------------------------------------------------------------
// Main parsing function
// ----------------------------------------------------------------------------

func ParseTPTPFile(filename string) ([]btypes.Statement, int) {
	defer func() {
		if r := recover(); r != nil {
			log.Fatalf("Lexing error: %v \n", r)
		}
	}()

	data, err := os.ReadFile(filename)

	if err != nil {
		log.Fatal(err)
	}

	TPTPParse(&TPTPLex{s: string(data)})

	return statement, quantifiersCounter
}

// ----------------------------------------------------------------------------
// Utility functions
// ----------------------------------------------------------------------------

func manageReturn[T comparable](lexingMap map[T]int, key T) (int, bool) {
	if token, found := lexingMap[key]; found {
		return token, true
	}

	return FAILURE_TOKEN, false
}

func (lexer *TPTPLex) manageFailableReturn(lexingMap map[string]int, key string) (int, bool) {
	if token, found := lexingMap[key]; found {
		return token, true
	}

	// Removing 0 characters still updates c to the next position
	// So we have to check that we have at least 1 char.
	if len(key) > 1 {
		lexer.remove(len(key) - 1)
	}
	return FAILURE_TOKEN, false
}
