%------------------------------------------------------------------------------
% File     : GRP664+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : Conjugacy closed with ab = 1 implies ba is in the nucleus - a
% Version  : Especial.
% English  :

% Refs     : [Kun00] Kunen (2000), The Structure of Conjugacy Closed Loops
%          : [PS08]  Phillips & Stanovsky (2008), Automated Theorem Proving
%          : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    : Kun00 [PS08]

% Status   : Theorem
% Rating   : 0.83 v7.5.0, 0.90 v7.4.0, 0.88 v7.3.0, 0.92 v7.1.0, 0.82 v7.0.0, 0.80 v6.4.0, 0.79 v6.2.0, 0.82 v6.1.0, 1.00 v5.3.0, 0.83 v5.2.0, 1.00 v4.0.0
% Syntax   : Number of formulae    :    9 (   8 unt;   0 def)
%            Number of atoms       :   12 (  12 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    8 (   4 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   4 usr;   1 con; 0-2 aty)
%            Number of variables   :   20 (  20   !;   0   ?)
% SPC      : FOF_THM_RFO_PEQ

% Comments :
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [B,A] : mult(A,ld(A,B)) = B ).

fof(f02,axiom,
    ! [B,A] : ld(A,mult(A,B)) = B ).

fof(f03,axiom,
    ! [B,A] : mult(rd(A,B),B) = A ).

fof(f04,axiom,
    ! [B,A] : rd(mult(A,B),B) = A ).

fof(f05,axiom,
    ! [A] : mult(A,unit) = A ).

fof(f06,axiom,
    ! [A] : mult(unit,A) = A ).

fof(f07,axiom,
    ! [C,B,A] : mult(A,mult(B,C)) = mult(rd(mult(A,B),A),mult(A,C)) ).

fof(f08,axiom,
    ! [C,B,A] : mult(mult(A,B),C) = mult(mult(A,C),ld(C,mult(B,C))) ).

fof(goals,conjecture,
    ! [X0,X1,X2,X3] :
      ( mult(X0,X1) = unit
     => ( mult(mult(X1,X0),mult(X2,X3)) = mult(mult(mult(X1,X0),X2),X3)
        & mult(mult(X2,mult(X1,X0)),X3) = mult(X2,mult(mult(X1,X0),X3))
        & mult(mult(X2,X3),mult(X1,X0)) = mult(X2,mult(X3,mult(X1,X0))) ) ) ).

%------------------------------------------------------------------------------
