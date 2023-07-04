%------------------------------------------------------------------------------
% File     : NUM366+1 : TPTP v8.1.2. Released v3.1.0.
% Domain   : Number Theory (RDN arithmetic)
% Problem  : 2 + 3 > 7
% Version  : Especial.
% English  :

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.1.0
% Syntax   : Number of formulae    :  402 ( 374 unt;   0 def)
%            Number of atoms       :  474 (   5 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   74 (   2   ~;   1   |;  43   &)
%                                         (   3 <=>;  25  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   1 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :   11 (  10 usr;   0 prp; 1-4 aty)
%            Number of functors    :  260 ( 260 usr; 256 con; 0-2 aty)
%            Number of variables   :  122 ( 122   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
%----Include axioms for RDN arithmetic
include('Axioms/NUM005+0.ax').
include('Axioms/NUM005+1.ax').
include('Axioms/NUM005+2.ax').
%------------------------------------------------------------------------------
fof(anti_sum_n2_n3_greater_n7,conjecture,
    ! [X] :
      ( sum(n2,n3,X)
     => less(n7,X) ) ).

%------------------------------------------------------------------------------
