%------------------------------------------------------------------------------
% File     : GRP720+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : In commutative A-loops, squares form a subloop
% Version  : Especial.
% English  :

% Refs     : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    : JKVxx_1 [Sta08]

% Status   : Theorem
% Rating   : 0.71 v8.1.0, 0.83 v7.5.0, 0.81 v7.4.0, 0.82 v7.3.0, 0.77 v7.2.0, 0.75 v7.1.0, 0.73 v7.0.0, 0.80 v6.4.0, 0.79 v6.3.0, 0.71 v6.2.0, 0.55 v6.1.0, 0.75 v5.5.0, 0.62 v5.4.0, 0.67 v5.3.0, 0.50 v5.2.0, 0.43 v5.1.0, 0.57 v5.0.0, 0.75 v4.1.0, 0.82 v4.0.1, 0.90 v4.0.0
% Syntax   : Number of formulae    :    8 (   8 unt;   0 def)
%            Number of atoms       :    8 (   8 equ)
%            Maximal formula atoms :    1 (   1 avg)
%            Number of connectives :    0 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   18 (  17   !;   1   ?)
% SPC      : FOF_THM_RFO_PEQ

% Comments :
%------------------------------------------------------------------------------
fof(f01,axiom,
    ! [A] : mult(A,unit) = A ).

fof(f02,axiom,
    ! [A] : mult(unit,A) = A ).

fof(f03,axiom,
    ! [B,A] : mult(A,ld(A,B)) = B ).

fof(f04,axiom,
    ! [B,A] : ld(A,mult(A,B)) = B ).

fof(f05,axiom,
    ! [B,A] : mult(A,B) = mult(B,A) ).

fof(f06,axiom,
    ! [D,C,B,A] : ld(mult(A,B),mult(A,mult(B,mult(C,D)))) = mult(ld(mult(A,B),mult(A,mult(B,C))),ld(mult(A,B),mult(A,mult(B,D)))) ).

fof(f07,axiom,
    ! [C,B,A] : ld(A,mult(mult(B,C),A)) = mult(ld(A,mult(B,A)),ld(A,mult(C,A))) ).

fof(goals,conjecture,
    ! [X0,X1] :
    ? [X2] : mult(mult(X0,X0),mult(X1,X1)) = mult(X2,X2) ).

%------------------------------------------------------------------------------
