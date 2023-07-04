%------------------------------------------------------------------------------
% File     : NUM873_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Number Theory
% Problem  : Sum something and 0 is another thing
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.00 v6.0.0, 0.50 v5.4.0, 0.33 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    1 (   0 unt;   0 typ;   0 def)
%            Number of atoms       :    2 (   2 equ)
%            Maximal formula atoms :    2 (   2 avg)
%            Number of connectives :    2 (   1   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    4 (   0 atm;   1 fun;   1 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    2 (   0 usr;   1 con; 0-2 aty)
%            Number of variables   :    2 (   0   !;   2   ?;   2   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments :
%------------------------------------------------------------------------------
tff(anti_sum_identity_2,conjecture,
    ? [X: $int,Y: $int] :
      ( ( $sum(X,0) = Y )
      & ( Y != X ) ) ).

%------------------------------------------------------------------------------