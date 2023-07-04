%------------------------------------------------------------------------------
% File     : NUN079+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Number Theory
% Problem  : Robinson arithmetic: There exists X + 2 = 1
% Version  : Especial.
% English  :

% Refs     : [BBJ03] Boolos et al. (2003), Computability and Logic
%          : [Smi07] Smith (2007), An Introduction to Goedel's Theorems
%          : [Lam18] Lampert (2018), Email to Geoff Sutcliffe
% Source   : [Lam18]
% Names    : xplustwoidone [Lam18]

% Status   : CounterSatisfiable
% Rating   : 1.00 v7.3.0
% Syntax   : Number of formulae    :   19 (   1 unt;   0 def)
%            Number of atoms       :   82 (   0 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   97 (  34   ~;  26   |;  37   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   74 (  47   !;  27   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments : Translated to FOL without equality.
%------------------------------------------------------------------------------
include('Axioms/NUM009+0.ax').
%------------------------------------------------------------------------------
fof(xplustwoidone,conjecture,
    ? [Y1,Y2] :
      ( ? [Y3] :
          ( r3(Y1,Y3,Y2)
          & ? [Y4] :
              ( r2(Y4,Y3)
              & ? [Y6] :
                  ( r1(Y6)
                  & r2(Y6,Y4) ) ) )
      & ? [Y5] :
          ( id(Y2,Y5)
          & ? [Y7] :
              ( r1(Y7)
              & r2(Y7,Y5) ) ) ) ).

%------------------------------------------------------------------------------
