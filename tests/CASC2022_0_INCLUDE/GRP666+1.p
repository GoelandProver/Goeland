%------------------------------------------------------------------------------
% File     : GRP666+1 : TPTP v8.1.0. Released v4.0.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : Inverse property A-loops are Moufang
% Version  : Especial.
% English  :

% Refs     : [KKP02] Kinyon et al. (2002), Every Diassociative A-loop is M
%          : [PS08]  Phillips & Stanovsky (2008), Automated Theorem Proving
%          : [Sta08] Stanovsky (2008), Email to G. Sutcliffe
% Source   : [Sta08]
% Names    : KKP02a [PS08]

% Status   : Theorem
% Rating   : 0.79 v8.1.0, 0.78 v7.5.0, 0.76 v7.3.0, 0.69 v7.2.0, 0.67 v7.1.0, 0.64 v7.0.0, 0.80 v6.4.0, 0.79 v6.2.0, 0.73 v6.1.0, 0.83 v5.5.0, 0.75 v5.4.0, 0.89 v5.3.0, 0.67 v5.2.0, 0.86 v5.0.0, 0.88 v4.1.0, 0.91 v4.0.1, 0.90 v4.0.0
% Syntax   : Number of formulae    :   15 (  12 unt;   0 def)
%            Number of atoms       :   18 (  18 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    8 (   8 usr;   4 con; 0-2 aty)
%            Number of variables   :   34 (  34   !;   0   ?)
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
    ! [B,A] : mult(i(A),mult(A,B)) = B ).

fof(f08,axiom,
    ! [B,A] : mult(mult(A,B),i(B)) = A ).

fof(f09,axiom,
    ! [D,C,B,A] : ld(mult(A,B),mult(A,mult(B,mult(C,D)))) = mult(ld(mult(A,B),mult(A,mult(B,C))),ld(mult(A,B),mult(A,mult(B,D)))) ).

fof(f10,axiom,
    ! [D,C,B,A] : rd(mult(mult(mult(A,B),C),D),mult(C,D)) = mult(rd(mult(mult(A,C),D),mult(C,D)),rd(mult(mult(B,C),D),mult(C,D))) ).

fof(f11,axiom,
    ! [C,B,A] : ld(A,mult(mult(B,C),A)) = mult(ld(A,mult(B,A)),ld(A,mult(C,A))) ).

fof(f12,axiom,
    ! [X0,X1,X2] :
      ( mult(X0,mult(X1,mult(X2,X1))) = mult(mult(mult(X0,X1),X2),X1)
     => mult(X1,mult(X0,mult(X1,X2))) = mult(mult(mult(X1,X0),X1),X2) ) ).

fof(f13,axiom,
    ! [X3,X4,X5] :
      ( mult(mult(X3,X4),mult(X5,X3)) = mult(mult(X3,mult(X4,X5)),X3)
     => mult(X3,mult(X4,mult(X3,X5))) = mult(mult(mult(X3,X4),X3),X5) ) ).

fof(f14,axiom,
    ! [X6,X7,X8] :
      ( mult(mult(X6,X7),mult(X8,X6)) = mult(X6,mult(mult(X7,X8),X6))
     => mult(X6,mult(X7,mult(X6,X8))) = mult(mult(mult(X6,X7),X6),X8) ) ).

fof(goals,conjecture,
    mult(a,mult(b,mult(a,c))) = mult(mult(mult(a,b),a),c) ).

%------------------------------------------------------------------------------
