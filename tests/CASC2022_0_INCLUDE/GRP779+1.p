%------------------------------------------------------------------------------
% File     : GRP779+1 : TPTP v8.1.0. Released v4.1.0.
% Domain   : Group Theory (Quasigroups)
% Problem  : Napoleon's quasigroups: Gruenbaum's theorem 2
% Version  : Especial.
% English  :

% Refs     : [Sta09] Stanovsky (2009), Email to Geoff Sutcliffe
% Source   : [Sta09]
% Names    : napoleon3 [Sta09]

% Status   : Theorem
% Rating   : 0.72 v8.1.0, 0.67 v7.5.0, 0.69 v7.4.0, 0.70 v7.3.0, 0.72 v7.2.0, 0.76 v7.1.0, 0.74 v7.0.0, 0.80 v6.4.0, 0.77 v6.3.0, 0.75 v6.2.0, 0.84 v6.1.0, 0.87 v6.0.0, 0.91 v5.5.0, 0.85 v5.4.0, 0.86 v5.3.0, 0.89 v5.2.0, 0.00 v4.1.0
% Syntax   : Number of formulae    :   16 (  14 unt;   0 def)
%            Number of atoms       :   18 (   9 equ)
%            Maximal formula atoms :    2 (   1 avg)
%            Number of connectives :    2 (   0   ~;   0   |;   0   &)
%                                         (   2 <=>;   0  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    5 (   2 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :    3 (   2 usr;   0 prp; 2-3 aty)
%            Number of functors    :   12 (  12 usr;   9 con; 0-2 aty)
%            Number of variables   :   21 (  21   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof(sos01,axiom,
    ! [B,A] : difference(A,product(A,B)) = B ).

fof(sos02,axiom,
    ! [B,A] : product(A,difference(A,B)) = B ).

fof(sos03,axiom,
    ! [B,A] : quotient(product(A,B),B) = A ).

fof(sos04,axiom,
    ! [B,A] : product(quotient(A,B),B) = A ).

fof(sos05,axiom,
    ! [D,C,B,A] : product(product(A,B),product(C,D)) = product(product(A,C),product(B,D)) ).

fof(sos06,axiom,
    ! [A] : product(A,A) = A ).

%----Napoleon
fof(sos07,axiom,
    ! [B,A] : product(product(product(A,B),B),product(B,product(B,A))) = B ).

fof(sos08,axiom,
    ! [X0,X1,X2] :
      ( d(X0,X1,X2)
    <=> product(X0,X1) = product(X1,X2) ) ).

fof(sos09,axiom,
    ! [X3,X4,X5] :
      ( m(X3,X4,X5)
    <=> product(product(X3,X4),product(X4,X5)) = product(X3,X5) ) ).

fof(sos10,axiom,
    d(b,bigA,c) ).

fof(sos11,axiom,
    d(bigB,a,c) ).

fof(sos12,axiom,
    d(b,a,bigC) ).

fof(sos13,axiom,
    d(a,b1,c1) ).

fof(sos14,axiom,
    d(a1,b,c1) ).

fof(sos15,axiom,
    d(a1,b1,c) ).

fof(goals,conjecture,
    m(bigA,b1,bigC) ).

%------------------------------------------------------------------------------
