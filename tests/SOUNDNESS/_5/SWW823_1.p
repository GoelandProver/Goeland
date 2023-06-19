%------------------------------------------------------------------------------
% File     : SWW823_1 : TPTP v8.1.2. Released v7.0.0.
% Domain   : Software Verification
% Problem  : Fast Fourier Transform 629331
% Version  : Especial.
% English  : Formalization of a functional implementation of the FFT algorithm
%            over the complex numbers, and its inverse. Both are shown
%            equivalent to the usual definitions of these operations through
%            Vandermonde matrices. They are also shown to be inverse to each
%            other, more precisely, that composition of the inverse and the
%            transformation yield the identity up to a scalar.

% Refs     : [BN10]  Boehme & Nipkow (2010), Sledgehammer: Judgement Day
%          : [BBP11] Blanchette et al. (2011), Extending Sledgehammer with
% Source   : [SMTL]
% Names    : FFT/smtlib.629331.p [SMTL]

% Status   : Satisfiable
% Rating   : 0.67 v7.2.0, 0.50 v7.1.0, 0.67 v7.0.0
% Syntax   : Number of formulae    :   14 (   5 unt;   8 typ;   0 def)
%            Number of atoms       :    9 (   4 equ)
%            Maximal formula atoms :    4 (   0 avg)
%            Number of connectives :    7 (   4   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :   13 (   5 atm;   2 fun;   4 num;   2 var)
%            Number of types       :    3 (   2 usr;   1 ari)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   10 (   6 usr;   7 con; 0-2 aty)
%            Number of variables   :    2 (   1   !;   1   ?;   2   :)
% SPC      : TF0_SAT_EQU_ARI

% Comments : This is an SMT-LIB AUFNIRA problem. Translated and contributed 
%            to SMT-LIB by Andrew Reynolds and Morgan Deters.
%          : Translated to TFF using Peter Baumgartner's SMTtoTPTP program.
%          : This might align with one of the existing Fast Fourier Transform
%            Judgement Day problems in the SWV domain, but I can't pick it.
%------------------------------------------------------------------------------
tff('S1',type,
    'S1': $tType ).

tff('S2',type,
    'S2': $tType ).

tff(f4,type,
    f4: 'S2' ).

tff(f3,type,
    f3: ( 'S2' * $real ) > $real ).

tff(f5,type,
    f5: $real ).

tff(f1,type,
    f1: 'S1' ).

tff(f6,type,
    f6: $real ).

tff(f2,type,
    f2: 'S1' ).

tff(formula_1,axiom,
    f1 != f2 ).

tff(formula_2,axiom,
    ~ ( ( f3(f4,f5) != 0.0 ) ) ).

tff(formula_3,axiom,
    $less(f6,f5) ).

tff(formula_4,axiom,
    $less(f5,$product(2.0,f6)) ).

tff(formula_5,axiom,
    f3(f4,$difference(f5,f6)) != 0.0 ).

tff(formula_6,axiom,
    ! [A__questionmark_v0: $real] :
    ? [A__questionmark_v_0_1: $real] :
      ( ( A__questionmark_v_0_1 = 0.0 )
      & ( $less(A__questionmark_v_0_1,A__questionmark_v0)
       => ( $less(A__questionmark_v0,f6)
         => $less(A__questionmark_v_0_1,f3(f4,A__questionmark_v0)) ) ) ) ).

%------------------------------------------------------------------------------
