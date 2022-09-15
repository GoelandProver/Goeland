%--------------------------------------------------------------------------
% File     : LCL895+1 : TPTP v8.1.0. Released v5.5.0.
% Domain   : Logic Calculi (Continuous Propositional)
% Problem  : Weak conjunction is lub in a hoop using equational axioms
% Version  : [AO13] axioms : Especial.
% English  : 

% Refs     : [Art12] Arthan (2012), Email to Geoff Sutcliffe
%          : [AO13]  Arthan & Olica (2013), Dual Hoops Have Unique Halving
% Source   : [Art12]
% Names    : pr3b.tptp [Art12]

% Status   : Theorem
% Rating   : 0.38 v8.1.0, 0.39 v7.5.0, 0.29 v7.4.0, 0.35 v7.3.0, 0.31 v7.2.0, 0.25 v7.1.0, 0.27 v7.0.0, 0.53 v6.4.0, 0.43 v6.2.0, 0.64 v6.1.0, 0.50 v6.0.0, 0.75 v5.5.0
% Syntax   : Number of formulae    :    9 (   8 unt;   0 def)
%            Number of atoms       :   11 (  11 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   1   &)
%                                         (   1 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   6 usr;   4 con; 0-2 aty)
%            Number of variables   :   14 (  14   !;   0   ?)
% SPC      : FOF_THM_RFO_PEQ

% Comments :
%--------------------------------------------------------------------------
fof(sos_01,axiom,
    ! [A,B,C] : '+'('+'(A,B),C) = '+'(A,'+'(B,C)) ).

fof(sos_02,axiom,
    ! [A,B] : '+'(A,B) = '+'(B,A) ).

fof(sos_03,axiom,
    ! [A] : '+'(A,'0') = A ).

fof(sos_04,axiom,
    ! [A] : '==>'(A,A) = '0' ).

fof(sos_05,axiom,
    ! [A] : '==>'(A,'0') = '0' ).

fof(sos_06,axiom,
    ! [A] : '==>'('0',A) = A ).

fof(sos_07,axiom,
    ! [A,B,C] : '==>'('+'(A,B),C) = '==>'(A,'==>'(B,C)) ).

fof(sos_08,axiom,
    ! [A,B] : '+'(A,'==>'(A,B)) = '+'(B,'==>'(B,A)) ).

fof(goals_09,conjecture,
    ( ( '==>'(c,a) = '0'
      & '==>'(c,b) = '0' )
  <=> '==>'(c,'+'(a,'==>'(a,b))) = '0' ) ).

%--------------------------------------------------------------------------
