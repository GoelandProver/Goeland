%------------------------------------------------------------------------------
% File     : NUN079+2 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Number Theory
% Problem  : Robinson arithmetic: There exists X + 2 = 1
% Version  : Especial.
% English  :

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : xplustwoeqone [Lam18]

% Status   : CounterSatisfiable
% Rating   : 1.00 v7.3.0
% Syntax   : Number of formulae    :   12 (   0 unt;   0 def)
%            Number of atoms       :   51 (  18 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   53 (  14   ~;  10   |;  29   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   50 (  23   !;  27   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated to FOL with equality.
%------------------------------------------------------------------------------
include('Axioms/NUM008+0.ax').
%------------------------------------------------------------------------------
fof(xplustwoeqone,conjecture,
    ? [Y1,Y2] :
      ( ? [Y3] :
          ( r3(Y1,Y3,Y2)
          & ? [Y4] :
              ( r2(Y4,Y3)
              & ? [Y6] :
                  ( r1(Y6)
                  & r2(Y6,Y4) ) ) )
      & ? [Y5] :
          ( Y2 = Y5
          & ? [Y7] :
              ( r1(Y7)
              & r2(Y7,Y5) ) ) ) ).

%------------------------------------------------------------------------------
