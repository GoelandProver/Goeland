%------------------------------------------------------------------------------
% File     : NUM871_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Number Theory
% Problem  : Sum is not associativity
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.00 v6.0.0, 0.50 v5.4.0, 0.33 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    5 (   5 equ)
%            Maximal formula atoms :    5 (   5 avg)
%            Number of connectives :    5 (   1   ~;   0   |;   4   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (  13 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :   11 (   0 atm;   4 fun;   0 num;   7 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :    7 (   0   !;   7   ?;   7   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(anti_associativity_sum,conjecture,
    ? [X: $int,Y: $int,Z: $int,Z1: $int,Z2: $int,Z3: $int,Z4: $int] :
      ( ( $sum(X,Y) = Z1 )
      & ( $sum(Z1,Z) = Z2 )
      & ( $sum(Z,X) = Z3 )
      & ( $sum(Z3,Y) = Z4 )
      & ( Z2 != Z4 ) ) ).

%------------------------------------------------------------------------------
