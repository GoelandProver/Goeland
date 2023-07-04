%------------------------------------------------------------------------------
% File     : SYO521_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Syntactic
% Problem  : There are more than two integers
% Version  : Especial.
% English  : 

% Refs     : 
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.4.0, 0.33 v7.1.0, 0.25 v7.0.0, 0.00 v6.3.0, 0.33 v6.2.0, 0.00 v6.0.0, 0.50 v5.4.0, 0.67 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    3 (   3 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    2 (   0   ~;   1   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :    5 (   0 atm;   1 fun;   2 num;   2 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   2 usr;   3 con; 0-2 aty)
%            Number of variables   :    2 (   1   !;   1   ?;   2   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : Designed to test for soundness
%------------------------------------------------------------------------------
tff(a_type,type,
    a: $int ).

tff(b_type,type,
    b: $int ).

tff(a,conjecture,
    ? [X: $int] :
      ( ( $sum(2,2) = X )
      & ! [Y: $int] :
          ( ( Y = a )
          | ( Y = b ) ) ) ).

%------------------------------------------------------------------------------
