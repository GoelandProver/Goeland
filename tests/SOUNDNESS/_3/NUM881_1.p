%------------------------------------------------------------------------------
% File     : NUM881_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Number Theory
% Problem  : Product is not a function
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.33 v6.4.0, 0.00 v6.0.0, 0.75 v5.4.0, 0.33 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    3 (   3 equ)
%            Maximal formula atoms :    3 (   3 avg)
%            Number of connectives :    3 (   1   ~;   0   |;   2   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   8 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   0 atm;   2 fun;   0 num;   4 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :    4 (   0   !;   4   ?;   4   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(anti_unique_product,conjecture,
    ? [X: $int,Y: $int,Z1: $int,Z2: $int] :
      ( ( $product(X,Y) = Z1 )
      & ( $product(X,Y) = Z2 )
      & ( Z1 != Z2 ) ) ).

%------------------------------------------------------------------------------
