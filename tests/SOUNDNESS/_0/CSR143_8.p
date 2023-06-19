%------------------------------------------------------------------------------
% File     : CSR143_8 : TPTP v8.1.2. Released v8.0.0.
% Domain   : Commonsense Reasoning
% Problem  : Who is the husband of Corina during 2009?
% Version  : Especial.
% English  : During 2009 Corina is the wife of Chris. True holds at any time. 
%            Who is the husband of Corina during 2009?

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0
% Syntax   : Number of formulae    :   11 (   3 unt;   8 typ;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :    7 (   4   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   1 prp; 0-2 aty)
%            Number of functors    :    4 (   4 usr;   3 con; 0-1 aty)
%            Number of variables   :    2 (   1   !;   1   ?;   2   :)
% SPC      : TX0_CSA_NEQ_NAR

% Comments : Translated to TXF from the THF version.
%------------------------------------------------------------------------------
%----The extracted signature
tff(numbers,type,
    num: $tType ).

tff(holdsDuring_THFTYPE_IiooI,type,
    holdsDuring_THFTYPE_IiooI: ( $i * $o ) > $o ).

tff(husband_THFTYPE_IiioI,type,
    husband_THFTYPE_IiioI: ( $i * $i ) > $o ).

tff(lChris_THFTYPE_i,type,
    lChris_THFTYPE_i: $i ).

tff(lCorina_THFTYPE_i,type,
    lCorina_THFTYPE_i: $i ).

tff(lYearFn_THFTYPE_IiiI,type,
    lYearFn_THFTYPE_IiiI: $i > $i ).

tff(n2009_THFTYPE_i,type,
    n2009_THFTYPE_i: $i ).

tff(wife_THFTYPE_IiioI,type,
    wife_THFTYPE_IiioI: ( $i * $i ) > $o ).

%----The translated axioms
tff(ax,axiom,
    ! [Z: $i] : holdsDuring_THFTYPE_IiooI(Z,$true) ).

tff(ax_001,axiom,
    holdsDuring_THFTYPE_IiooI(lYearFn_THFTYPE_IiiI(n2009_THFTYPE_i),wife_THFTYPE_IiioI(lCorina_THFTYPE_i,lChris_THFTYPE_i)) ).

%----The translated conjectures
tff(con,conjecture,
    ? [X: $i] : holdsDuring_THFTYPE_IiooI(lYearFn_THFTYPE_IiiI(n2009_THFTYPE_i),husband_THFTYPE_IiioI(X,lCorina_THFTYPE_i)) ).

%------------------------------------------------------------------------------
