%------------------------------------------------------------------------------
% File     : NUM353+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Number Theory (RDN arithmetic)
% Problem  : XYZ ((X+Y)+Z) != (Z+X)+Y)
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.1.0
% Syntax   : Number of formulae    :  402 ( 374 unt;   0 def)
%            Number of atoms       :  477 (   6 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   78 (   3   ~;   1   |;  47   &)
%                                         (   3 <=>;  24  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   2 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-4 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :  128 ( 121   !;   7   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(anti_associativity,conjecture,
    ? [X,Y,Z,Z1,Z2,Z3,Z4] :
      ( sum(X,Y,Z1)
      & sum(Z1,Z,Z2)
      & sum(Z,X,Z3)
      & sum(Z3,Y,Z4)
      & Z2 != Z4 ) ).

%------------------------------------------------------------------------------
