%------------------------------------------------------------------------------
% File     : GRP655+2 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : A quasigroup satisfying Moufang 2 is a loop
% Version  : Especial.
% English  :

% Refs     : [Kun96] Kunen (1996), Moufang Quasigroups
%          : [PS08]  Phillips & Stanovsky (2008), Automated Theorem Proving
%          : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    : Kun96a [PS08]

% Status   : Theorem
% Rating   : 0.54 v8.1.0, 0.57 v7.5.0, 0.52 v7.4.0, 0.53 v7.3.0, 0.38 v7.2.0, 0.42 v7.1.0, 0.36 v7.0.0, 0.53 v6.4.0, 0.50 v6.2.0, 0.45 v6.1.0, 0.50 v6.0.0, 0.42 v5.5.0, 0.25 v5.4.0, 0.44 v5.3.0, 0.17 v5.2.0, 0.29 v5.1.0, 0.43 v5.0.0, 0.50 v4.1.0, 0.55 v4.0.1, 0.80 v4.0.0
% Syntax   : Number of formulae    :    6 (   5 unt;   0 def)
%            Number of atoms       :    7 (   7 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    1 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    4 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 2-2 aty)
%            Number of variables   :   13 (  13   !;   0   ?)
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
    ! [C,B,A] : mult(A,mult(B,mult(C,B))) = mult(mult(mult(A,B),C),B) ).

fof(goals,conjecture,
    ! [X0,X1] :
      ( mult(X0,rd(X1,X1)) = X0
      & mult(rd(X1,X1),X0) = X0 ) ).

%------------------------------------------------------------------------------
