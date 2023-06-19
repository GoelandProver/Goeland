%------------------------------------------------------------------------------
% File     : CSR144_8 : TPTP v8.1.2. Released v8.0.0.
% Domain   : Commonsense Reasoning
% Problem  : Does Max think he's single?
% Version  : Especial.
% English  : There is no time during which Max considers to have a wife. Is it
%            true that Max does not believe that he is a husband of somebody?.

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0
% Syntax   : Number of formulae    :    9 (   2 unt;   7 typ;   0 def)
%            Number of atoms       :    5 (   0 equ)
%            Maximal formula atoms :    1 (   0 avg)
%            Number of connectives :    2 (   2   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    3 (   1 usr)
%            Number of type conns  :   10 (   5   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   5 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    3 (   1   !;   2   ?;   3   :)
% SPC      : TX0_CSA_NEQ_NAR

% Comments : Translated to TXF from the THF version.
%------------------------------------------------------------------------------
%----The extracted signature
tff(numbers,type,
    num: $tType ).

tff(believes_THFTYPE_IiooI,type,
    believes_THFTYPE_IiooI: ( $i * $o ) > $o ).

tff(considers_THFTYPE_IiooI,type,
    considers_THFTYPE_IiooI: ( $i * $o ) > $o ).

tff(holdsDuring_THFTYPE_IiooI,type,
    holdsDuring_THFTYPE_IiooI: ( $i * $o ) > $o ).

tff(husband_THFTYPE_IiioI,type,
    husband_THFTYPE_IiioI: ( $i * $i ) > $o ).

tff(lMax_THFTYPE_i,type,
    lMax_THFTYPE_i: $i ).

tff(wife_THFTYPE_IiioI,type,
    wife_THFTYPE_IiioI: ( $i * $i ) > $o ).

%----The translated axioms
tff(ax,axiom,
    ! [X: $i] :
      ~ ? [Z: $i] : holdsDuring_THFTYPE_IiooI(Z,considers_THFTYPE_IiooI(lMax_THFTYPE_i,wife_THFTYPE_IiioI(X,lMax_THFTYPE_i))) ).

%----The translated conjectures
tff(con,conjecture,
    ? [Z: $i] : ~ believes_THFTYPE_IiooI(lMax_THFTYPE_i,husband_THFTYPE_IiioI(lMax_THFTYPE_i,Z)) ).

%------------------------------------------------------------------------------
