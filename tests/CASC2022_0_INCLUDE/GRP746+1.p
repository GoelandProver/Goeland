%------------------------------------------------------------------------------
% File     : GRP746+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : Right alternative loop rings: the group case
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    : CGKxx_2 [Sta08]

% Status   : Theorem
% Rating   : 0.58 v8.1.0, 0.61 v7.5.0, 0.62 v7.4.0, 0.53 v7.3.0, 0.38 v7.2.0, 0.33 v7.1.0, 0.36 v7.0.0, 0.60 v6.4.0, 0.57 v6.2.0, 0.55 v6.1.0, 0.58 v5.5.0, 0.25 v5.4.0, 0.44 v5.3.0, 0.33 v5.2.0, 0.43 v5.0.0, 0.50 v4.1.0, 0.64 v4.0.1, 0.50 v4.0.0
% Syntax   : Number of formulae    :    9 (   8 unt;   0 def)
%            Number of atoms       :   12 (  12 equ)
%            Maximal formula atoms :    4 (   1 avg)
%            Number of connectives :    3 (   0   ~;   1   |;   2   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    6 (   3 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    7 (   7 usr;   4 con; 0-2 aty)
%            Number of variables   :   16 (  16   !;   0   ?)
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
    ! [C,B,A] : mult(mult(mult(A,B),C),B) = mult(A,mult(mult(B,C),B)) ).

fof(f08,axiom,
    ! [X0,X1,X2] :
      ( ( mult(mult(X0,X1),X2) = mult(X0,mult(X1,X2))
        & mult(mult(X0,X2),X1) = mult(X0,mult(X2,X1)) )
      | ( mult(mult(X0,X1),X2) = mult(mult(X0,X2),X1)
        & mult(X0,mult(X1,X2)) = mult(X0,mult(X2,X1)) ) ) ).

fof(goals,conjecture,
    mult(mult(a,b),c) = mult(a,mult(b,c)) ).

%------------------------------------------------------------------------------
