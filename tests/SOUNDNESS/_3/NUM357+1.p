%------------------------------------------------------------------------------
% File     : NUM357+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Number Theory (RDN arithmetic)
% Problem  : ?X (X + 0 != X)
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.1.0
% Syntax   : Number of formulae    :  402 ( 374 unt;   0 def)
%            Number of atoms       :  474 (   6 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   75 (   3   ~;   1   |;  44   &)
%                                         (   3 <=>;  24  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-4 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :  123 ( 121   !;   2   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(anti_sum_identity,conjecture,
    ? [X,Y] :
      ( sum(X,n0,Y)
      & Y != X ) ).

%------------------------------------------------------------------------------