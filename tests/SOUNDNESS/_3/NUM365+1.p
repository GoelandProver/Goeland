%------------------------------------------------------------------------------
% File     : NUM365+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Number Theory (RDN arithmetic)
% Problem  : !XY (X - Y > X + Y)
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v6.2.0, 0.91 v6.1.0, 1.00 v3.1.0
% Syntax   : Number of formulae    :  402 ( 374 unt;   0 def)
%            Number of atoms       :  475 (   5 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   75 (   2   ~;   1   |;  45   &)
%                                         (   3 <=>;  24  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-4 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :  125 ( 125   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(anti_sum_diff_less_2,conjecture,
    ! [X,Y,Z1,Z2] :
      ( sum(X,Y,Z1)
      & difference(X,Y,Z2)
      & less(Z2,Z1) ) ).

%------------------------------------------------------------------------------
