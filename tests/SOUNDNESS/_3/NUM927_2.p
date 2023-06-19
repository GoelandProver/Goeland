%------------------------------------------------------------------------------
% File     : NUM927_2 : TPTP v8.1.2. Released v6.4.0.
% Domain   : Number Theory
% Problem  : Related to the Collatz Conjecture
% Version  : Especial.
% English  : There are two sequences of different length that lead to the
%            same value.

% Refs     : 
% Source   : [TPTP]
% Names    : 

% Status   : CounterSatisfiable
% Rating   : 1.00 v6.4.0
% Syntax   : Number of formulae    :    7 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   12 (   8 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :    7 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number arithmetic     :   31 (   4 atm;   6 fun;  12 num;   9 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :   11 (   2 usr;   4 con; 0-2 aty)
%            Number of variables   :    9 (   7   !;   2   ?;   9   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : 
%------------------------------------------------------------------------------
tff(f_type,type,
    f: $int > $int ).

tff(iterate_f_type,type,
    iterate_f: ( $int * $int ) > $int ).

tff(f_odd,axiom,
    ! [X: $int] :
      ( ( $remainder_t(X,2) = 1 )
     => ( f(X) = $sum($product(3,X),1) ) ) ).

tff(f_even,axiom,
    ! [X: $int] :
      ( ( $remainder_t(X,2) = 0 )
     => ( f(X) = $quotient_t(X,2) ) ) ).

tff(iterate_f_base,axiom,
    ! [I: $int,X: $int] :
      ( ( I = 1 )
     => ( iterate_f(I,X) = f(X) ) ) ).

tff(iterate_f,axiom,
    ! [I: $int,X: $int] :
      ( $greater(I,1)
     => ( iterate_f(I,X) = iterate_f($difference(I,1),f(X)) ) ) ).

tff(iterates,conjecture,
    ! [X: $int] :
      ( $greatereq(X,1)
     => ? [I1: $int,I2: $int] :
          ( $greatereq(I1,1)
          & $greater(I2,I1)
          & ( iterate_f(I1,X) = iterate_f(I2,X) ) ) ) ).

%------------------------------------------------------------------------------
