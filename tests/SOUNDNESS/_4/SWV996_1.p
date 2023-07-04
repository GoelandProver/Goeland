%------------------------------------------------------------------------------
% File     : SWV996_1 : TPTP v8.1.2. Released v5.0.0.
% Domain   : Software Verification
% Problem  : Backward simplification: node deletion 2
% Version  : Especial.
% English  : A problem extracted from model checking a safety problem (no
%            violation of mutual exclusion) for a parameterized system (a
%            variant of the protocol due to Szymanski).

% Refs     : [MP90]  Manna & Pnueli (1990), Tools and Rules for the Practic
%          : [Ran10] Ranise (2010), Email to Geoff Sutcliffe
% Source   : [Ran10]
% Names    : sz2_fixpoint_2 [Ran10]

% Status   : CounterSatisfiable
% Rating   : 0.67 v7.4.0, 0.33 v7.3.0, 0.67 v7.1.0, 0.75 v7.0.0, 0.67 v6.2.0, 0.00 v6.0.0, 1.00 v5.4.0, 0.67 v5.2.0, 1.00 v5.0.0
% Syntax   : Number of formulae    :    6 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :   15 (   8 equ)
%            Maximal formula atoms :   15 (   2 avg)
%            Number of connectives :   20 (   6   ~;   0   |;  13   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (  13 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number arithmetic     :   19 (   6 atm;   0 fun;   9 num;   4 var)
%            Number of types       :    1 (   0 usr;   1 ari)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   0 usr;   1 prp; 0-2 aty)
%            Number of functors    :   11 (   5 usr;   9 con; 0-1 aty)
%            Number of variables   :    4 (   4   !;   0   ?;   4   :)
% SPC      : TF0_CSA_EQU_ARI

% Comments : Considered a relatively simple benchmark for infinite state model
%            checkers.
%          : In the SMT AUFLIA logic. Generated using the MCMT system -
%            http://homes.dsi.unimi.it/~ghilardi/mcmt/
%------------------------------------------------------------------------------
tff(z1_type,type,
    z1: $int ).

tff(z2_type,type,
    z2: $int ).

tff(z3_type,type,
    z3: $int ).

tff(a_type,type,
    a: $int > $int ).

tff(b_type,type,
    b: $int > $int ).

tff(0,conjecture,
    ( ( ! [Z1: $int] :
          ( $lesseq(1,a(Z1))
          & $lesseq(a(Z1),12) )
      & ! [Z1: $int] :
          ( $lesseq(1,b(Z1))
          & $lesseq(b(Z1),5) )
      & $true
      & ( z1 != z2 )
      & ( z1 != z3 )
      & ( z2 != z3 )
      & ! [Z1: $int,Z2: $int] :
          ~ ( ( Z1 != Z2 )
            & ( a(Z1) = 10 )
            & ( a(Z2) = 10 ) ) )
   => ~ ( ( a(z1) = 9 )
        & ( a(z2) = 10 )
        & $less(b(z2),3)
        & $less(z2,z1) ) ) ).

%------------------------------------------------------------------------------
