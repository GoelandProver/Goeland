%--------------------------------------------------------------------------
% File     : LCL896+1 : TPTP v8.1.0. Released v5.5.0.
% Domain   : Logic Calculi (Continuous Propositional)
% Problem  : Associativity of weak conjunction implies commutativity 
% Version  : [AO13] axioms : Especial.
% English  : 

% Refs     : [Art12] Arthan (2012), Email to Geoff Sutcliffe
%          : [AO13]  Arthan & Olica (2013), Dual Hoops Have Unique Halving
% Source   : [Art12]
% Names    : pr4.tptp [Art12]

% Status   : Theorem
% Rating   : 0.61 v8.1.0, 0.72 v7.5.0, 0.69 v7.4.0, 0.67 v7.3.0, 0.69 v7.2.0, 0.72 v7.1.0, 0.74 v7.0.0, 0.83 v6.4.0, 0.77 v6.3.0, 0.71 v6.2.0, 0.84 v6.1.0, 0.83 v5.5.0
% Syntax   : Number of formulae    :   13 (   7 unt;   0 def)
%            Number of atoms       :   21 (   6 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    8 (   0   ~;   0   |;   2   &)
%                                         (   1 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
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
    ! [A] : '>='(A,A) ).

fof(sos_05,axiom,
    ! [X0,X1,X2] :
      ( ( '>='(X0,X1)
        & '>='(X1,X2) )
     => '>='(X0,X2) ) ).

fof(sos_06,axiom,
    ! [X3,X4] :
      ( ( '>='(X3,X4)
        & '>='(X4,X3) )
     => X3 = X4 ) ).

fof(sos_07,axiom,
    ! [X5,X6,X7] :
      ( '>='('+'(X5,X6),X7)
    <=> '>='(X6,'==>'(X5,X7)) ) ).

fof(sos_08,axiom,
    ! [A] : '>='(A,'0') ).

fof(sos_09,axiom,
    ! [X8,X9,X10] :
      ( '>='(X8,X9)
     => '>='('+'(X8,X10),'+'(X9,X10)) ) ).

fof(sos_10,axiom,
    ! [X11,X12,X13] :
      ( '>='(X11,X12)
     => '>='('==>'(X12,X13),'==>'(X11,X13)) ) ).

fof(sos_11,axiom,
    ! [X14,X15,X16] :
      ( '>='(X14,X15)
     => '>='('==>'(X16,X14),'==>'(X16,X15)) ) ).

fof(sos_12,axiom,
    ! [A,B,C] : '+'('+'(A,'==>'(A,B)),'==>'('+'(A,'==>'(A,B)),C)) = '+'(A,'==>'(A,'+'(B,'==>'(B,C)))) ).

fof(goals_13,conjecture,
    ! [X17,X18] : '+'(X17,'==>'(X17,X18)) = '+'(X18,'==>'(X18,X17)) ).

%--------------------------------------------------------------------------
