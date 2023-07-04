%------------------------------------------------------------------------------
% File     : NUM896_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Number Theory
% Problem  : Sum implies both less
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.00 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    3 (   1 equ)
%            Maximal formula atoms :    3 (   3 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    6 (   2 atm;   1 fun;   0 num;   3 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :    3 (   3   !;   0   ?;   3   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(anti_sum_larger,conjecture,
    ! [X: $int,Y: $int,Z: $int] :
      ( ( $sum(X,Y) = Z )
     => ( $less(X,Z)
        & $less(Y,Z) ) ) ).

%------------------------------------------------------------------------------
