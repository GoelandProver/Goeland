%------------------------------------------------------------------------------
% File     : GRP763+1 : TPTP v8.1.2. Released v4.0.0.
% Domain   : Group Theory
% Problem  : Lattice ordered group
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to Geoff Sutcliffe
% Source   : [Sta08]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v4.0.0
% Syntax   : Number of formulae    :   14 (  14 unt;   0 def)
%            Number of atoms       :   14 (  14 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    1 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    6 (   6 usr;   2 con; 0-2 aty)
%            Number of variables   :   27 (  27   !;   0   ?)
% SPC      : FOF_SAT_RFO_PEQ

% Comments :
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [A] : mult(A,i(A)) = e ).

fof(f02,axiom,
    ! [A] : mult(A,e) = A ).

fof(f03,axiom,
    ! [A,B,C] : mult(A,mult(B,C)) = mult(mult(A,B),C) ).

fof(f04,axiom,
    ! [A] : m(A,A) = A ).

fof(f05,axiom,
    ! [A,B] : m(A,B) = m(B,A) ).

fof(f06,axiom,
    ! [A,B,C] : m(A,m(B,C)) = m(m(A,B),C) ).

fof(f07,axiom,
    ! [A] : j(A,A) = A ).

fof(f08,axiom,
    ! [A,B] : j(A,B) = j(B,A) ).

fof(f09,axiom,
    ! [A,B,C] : j(A,j(B,C)) = j(j(A,B),C) ).

fof(f10,axiom,
    ! [A,B] : m(A,j(A,B)) = A ).

fof(f11,axiom,
    ! [A,B] : j(A,m(A,B)) = A ).

fof(f12,axiom,
    ! [A,B,C] : mult(A,j(B,C)) = j(mult(A,B),mult(A,C)) ).

fof(f13,axiom,
    ! [A,B,C] : mult(j(B,C),A) = j(mult(B,A),mult(C,A)) ).

fof(f14,axiom,
    a != e ).

%------------------------------------------------------------------------------
