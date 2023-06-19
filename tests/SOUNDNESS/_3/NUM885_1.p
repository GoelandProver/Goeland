%------------------------------------------------------------------------------
% File     : NUM885_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Number Theory
% Problem  : Product idempotence
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.1.0, 0.25 v7.0.0, 0.33 v6.4.0, 0.67 v6.3.0, 0.33 v6.2.0, 0.00 v6.0.0, 0.25 v5.5.0, 0.50 v5.4.0, 0.33 v5.3.0, 0.00 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    1 (   1 unt;   0 typ;   0 def)
%            Number of atoms       :    1 (   1 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    2 (   2 avg)
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
tff(anti_product_idempotence,conjecture,
    ! [X: $int] : ( $product(X,X) = X ) ).

%------------------------------------------------------------------------------
