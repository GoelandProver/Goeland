%------------------------------------------------------------------------------
% File     : NUM875_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Number Theory
% Problem  : Sum not idempotence
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.00 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    1 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    2 (   0 atm;   1 fun;   0 num;   1 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    1 (   0 usr;   0 con; 2-2 aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(anti_not_sum_idempotence,conjecture,
    ! [X: $int] : ( $sum(X,X) != X ) ).

%------------------------------------------------------------------------------
