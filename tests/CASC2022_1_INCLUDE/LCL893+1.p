%--------------------------------------------------------------------------
% File     : LCL893+1 : TPTP v8.1.0. Released v5.5.0.
% Domain   : Logic Calculi (Continuous Propositional)
% Problem  : In a coop, x/2 = x implies x = 0
% Version  : [AO13] axioms : Especial.
% English  : 

% Refs     : [Art12] Arthan (2012), Email to Geoff Sutcliffe
%          : [AO13]  Arthan & Olica (2013), Dual Hoops Have Unique Halving
% Source   : [Art12]
% Names    : pr2.tptp [Art12]

% Status   : Theorem
% Rating   : 0.25 v8.1.0, 0.19 v7.4.0, 0.20 v7.3.0, 0.17 v7.1.0, 0.22 v7.0.0, 0.23 v6.4.0, 0.27 v6.3.0, 0.25 v6.2.0, 0.28 v6.1.0, 0.27 v6.0.0, 0.26 v5.5.0
% Syntax   : Number of formulae    :   15 (   8 unt;   0 def)
%            Number of atoms       :   24 (   9 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    9 (   0   ~;   0   |;   2   &)
%                                         (   1 <=>;   6  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   30 (  30   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
fof(sos_01,axiom,
    ! [A,B,C] : '+'('+'(A,B),C) = '+'(A,'+'(B,C)) ).

fof(sos_02,axiom,
    ! [A,B] : '+'(A,B) = '+'(B,A) ).

fof(sos_03,axiom,
    ! [A] : '+'(A,'0') = A ).

fof(sos_04,axiom,
    ! [A] : '+'(A,'1') = '1' ).

fof(sos_05,axiom,
    ! [A] : '>='(A,A) ).

fof(sos_06,axiom,
    ! [X0,X1,X2] :
      ( ( '>='(X0,X1)
        & '>='(X1,X2) )
     => '>='(X0,X2) ) ).

fof(sos_07,axiom,
    ! [X3,X4] :
      ( ( '>='(X3,X4)
        & '>='(X4,X3) )
     => X3 = X4 ) ).

fof(sos_08,axiom,
    ! [X5,X6,X7] :
      ( '>='('+'(X5,X6),X7)
    <=> '>='(X6,'==>'(X5,X7)) ) ).

fof(sos_09,axiom,
    ! [A] : '>='(A,'0') ).

fof(sos_10,axiom,
    ! [X8,X9,X10] :
      ( '>='(X8,X9)
     => '>='('+'(X8,X10),'+'(X9,X10)) ) ).

fof(sos_11,axiom,
    ! [X11,X12,X13] :
      ( '>='(X11,X12)
     => '>='('==>'(X12,X13),'==>'(X11,X13)) ) ).

fof(sos_12,axiom,
    ! [X14,X15,X16] :
      ( '>='(X14,X15)
     => '>='('==>'(X16,X14),'==>'(X16,X15)) ) ).

fof(sos_13,axiom,
    ! [A,B] : '+'(A,'==>'(A,B)) = '+'(B,'==>'(B,A)) ).

fof(sos_14,axiom,
    ! [A] : h(A) = '==>'(h(A),A) ).

fof(goals_15,conjecture,
    ! [X17] :
      ( h(X17) = X17
     => X17 = '0' ) ).

%--------------------------------------------------------------------------
