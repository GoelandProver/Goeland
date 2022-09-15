%------------------------------------------------------------------------------
% File     : GEO557+1 : TPTP v8.1.0. Released v7.5.0.
% Domain   : Geometry
% Problem  : JGEX problem 17
% Version  : [CGZ00] axioms.
% English  :

% Refs     : [CGZ00] Chou et al. (2000), A Deductive Database Approach to A
%          : [YCG08] Ye et al. (2008), An Introduction to Java Geometry Exp
%          : [Qua20] Quaresma (2020), Email to Geoff Sutcliffe
% Source   : [Qua20]
% Names    : 17.p [Qua20]

% Status   : Theorem
% Rating   : 0.39 v8.1.0, 0.50 v7.5.0
% Syntax   : Number of formulae    :   95 (   0 unt;   0 def)
%            Number of atoms       :  292 (   1 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :  204 (   7   ~;   0   |; 102   &)
%                                         (   0 <=>;  95  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   21 (   9 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   12 (  11 usr;   0 prp; 2-8 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  534 ( 514   !;  20   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Taken from JGEX [YCG08], converted by Pedro Quaresma.
%------------------------------------------------------------------------------
%------------------------------------------------------------------------------
% File     : GEO012+0 : TPTP v8.1.0. Released v7.5.0.
% Domain   : Geometry
% Axioms   : Deductive Databases Method in Geometry
% Version  : [CGZ00] axioms.
% English  :

% Refs     : [CGZ00] Chou et al. (2000), A Deductive Database Approach to A
%          : [YCG08] Ye et al. (2008), An Introduction to Java Geometry Exp
%          : [Qua20] Quaresma (2020), Email to Geoff Sutcliffe
% Source   : [Qua20]
% Names    : geometryDeductiveDatabaseMethod.ax [Qua20]

% Status   : Satisfiable
% Syntax   : Number of formulae    :   94 (   0 unt;   0 def)
%            Number of atoms       :  283 (   1 equ)
%            Maximal formula atoms :    8 (   3 avg)
%            Number of connectives :  196 (   7   ~;   0   |;  95   &)
%                                         (   0 <=>;  94  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   8 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :   12 (  11 usr;   0 prp; 2-8 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :  522 ( 502   !;  20   ?)
% SPC      : FOF_SAT_RFO_SEQ

% Comments : Taken from JGEX [YCG08], converted by Pedro Quaresma.
%------------------------------------------------------------------------------
fof(ruleD1,axiom,
    ! [A,B,C] :
      ( coll(A,B,C)
     => coll(A,C,B) ) ).

fof(ruleD2,axiom,
    ! [A,B,C] :
      ( coll(A,B,C)
     => coll(B,A,C) ) ).

fof(ruleD3,axiom,
    ! [A,B,C,D] :
      ( ( coll(A,B,C)
        & coll(A,B,D) )
     => coll(C,D,A) ) ).

fof(ruleD4,axiom,
    ! [A,B,C,D] :
      ( para(A,B,C,D)
     => para(A,B,D,C) ) ).

fof(ruleD5,axiom,
    ! [A,B,C,D] :
      ( para(A,B,C,D)
     => para(C,D,A,B) ) ).

fof(ruleD6,axiom,
    ! [A,B,C,D,E,F] :
      ( ( para(A,B,C,D)
        & para(C,D,E,F) )
     => para(A,B,E,F) ) ).

fof(ruleD7,axiom,
    ! [A,B,C,D] :
      ( perp(A,B,C,D)
     => perp(A,B,D,C) ) ).

fof(ruleD8,axiom,
    ! [A,B,C,D] :
      ( perp(A,B,C,D)
     => perp(C,D,A,B) ) ).

fof(ruleD9,axiom,
    ! [A,B,C,D,E,F] :
      ( ( perp(A,B,C,D)
        & perp(C,D,E,F) )
     => para(A,B,E,F) ) ).

fof(ruleD10,axiom,
    ! [A,B,C,D,E,F] :
      ( ( para(A,B,C,D)
        & perp(C,D,E,F) )
     => perp(A,B,E,F) ) ).

fof(ruleD11,axiom,
    ! [A,B,M] :
      ( midp(M,B,A)
     => midp(M,A,B) ) ).

fof(ruleD12,axiom,
    ! [A,B,C,O] :
      ( ( cong(O,A,O,B)
        & cong(O,A,O,C) )
     => circle(O,A,B,C) ) ).

fof(ruleD13,axiom,
    ! [A,B,C,D,O] :
      ( ( cong(O,A,O,B)
        & cong(O,A,O,C)
        & cong(O,A,O,D) )
     => cyclic(A,B,C,D) ) ).

fof(ruleD14,axiom,
    ! [A,B,C,D] :
      ( cyclic(A,B,C,D)
     => cyclic(A,B,D,C) ) ).

fof(ruleD15,axiom,
    ! [A,B,C,D] :
      ( cyclic(A,B,C,D)
     => cyclic(A,C,B,D) ) ).

fof(ruleD16,axiom,
    ! [A,B,C,D] :
      ( cyclic(A,B,C,D)
     => cyclic(B,A,C,D) ) ).

fof(ruleD17,axiom,
    ! [A,B,C,D,E] :
      ( ( cyclic(A,B,C,D)
        & cyclic(A,B,C,E) )
     => cyclic(B,C,D,E) ) ).

fof(ruleD18,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqangle(A,B,C,D,P,Q,U,V)
     => eqangle(B,A,C,D,P,Q,U,V) ) ).

fof(ruleD19,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqangle(A,B,C,D,P,Q,U,V)
     => eqangle(C,D,A,B,U,V,P,Q) ) ).

fof(ruleD20,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqangle(A,B,C,D,P,Q,U,V)
     => eqangle(P,Q,U,V,A,B,C,D) ) ).

fof(ruleD21,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqangle(A,B,C,D,P,Q,U,V)
     => eqangle(A,B,P,Q,C,D,U,V) ) ).

fof(ruleD22,axiom,
    ! [A,B,C,D,P,Q,U,V,E,F,G,H] :
      ( ( eqangle(A,B,C,D,P,Q,U,V)
        & eqangle(P,Q,U,V,E,F,G,H) )
     => eqangle(A,B,C,D,E,F,G,H) ) ).

fof(ruleD23,axiom,
    ! [A,B,C,D] :
      ( cong(A,B,C,D)
     => cong(A,B,D,C) ) ).

fof(ruleD24,axiom,
    ! [A,B,C,D] :
      ( cong(A,B,C,D)
     => cong(C,D,A,B) ) ).

fof(ruleD25,axiom,
    ! [A,B,C,D,E,F] :
      ( ( cong(A,B,C,D)
        & cong(C,D,E,F) )
     => cong(A,B,E,F) ) ).

fof(ruleD26,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqratio(A,B,C,D,P,Q,U,V)
     => eqratio(B,A,C,D,P,Q,U,V) ) ).

fof(ruleD27,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqratio(A,B,C,D,P,Q,U,V)
     => eqratio(C,D,A,B,U,V,P,Q) ) ).

fof(ruleD28,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqratio(A,B,C,D,P,Q,U,V)
     => eqratio(P,Q,U,V,A,B,C,D) ) ).

fof(ruleD29,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( eqratio(A,B,C,D,P,Q,U,V)
     => eqratio(A,B,P,Q,C,D,U,V) ) ).

fof(ruleD30,axiom,
    ! [A,B,C,D,E,F,G,H,P,Q,U,V] :
      ( ( eqratio(A,B,C,D,P,Q,U,V)
        & eqratio(P,Q,U,V,E,F,G,H) )
     => eqratio(A,B,C,D,E,F,G,H) ) ).

fof(ruleD31,axiom,
    ! [A,B,C,P,Q,R] :
      ( simtri(A,C,B,P,R,Q)
     => simtri(A,B,C,P,Q,R) ) ).

fof(ruleD32,axiom,
    ! [A,B,C,P,Q,R] :
      ( simtri(B,A,C,Q,P,R)
     => simtri(A,B,C,P,Q,R) ) ).

fof(ruleD33,axiom,
    ! [A,B,C,P,Q,R] :
      ( simtri(P,Q,R,A,B,C)
     => simtri(A,B,C,P,Q,R) ) ).

fof(ruleD34,axiom,
    ! [A,B,C,E,F,G,P,Q,R] :
      ( ( simtri(A,B,C,E,F,G)
        & simtri(E,F,G,P,Q,R) )
     => simtri(A,B,C,P,Q,R) ) ).

fof(ruleD35,axiom,
    ! [A,B,C,P,Q,R] :
      ( contri(A,C,B,P,R,Q)
     => contri(A,B,C,P,Q,R) ) ).

fof(ruleD36,axiom,
    ! [A,B,C,P,Q,R] :
      ( contri(B,A,C,Q,P,R)
     => contri(A,B,C,P,Q,R) ) ).

fof(ruleD37,axiom,
    ! [A,B,C,P,Q,R] :
      ( contri(P,Q,R,A,B,C)
     => contri(A,B,C,P,Q,R) ) ).

fof(ruleD38,axiom,
    ! [A,B,C,E,F,G,P,Q,R] :
      ( ( contri(A,B,C,E,F,G)
        & contri(E,F,G,P,Q,R) )
     => contri(A,B,C,P,Q,R) ) ).

% Note: D42 collinear 4 points, instead of three
%       coll(P,Q,A,B) <==> coll(P,Q,A) & coll(P,Q,B)
%       ~coll(P,Q,A,B) <==> (~col(P,Q,A) | ~coll(P,Q,B))
%      Split in two rules D42a, D42b
% XXX cyclic with 6 arguments                   XXX
% XXX three points define a unique circle       XXX
% XXX cyclic(A,B,C,P,Q,R) <=> cyclic(A,B,C,P) & XXX
% XXX                         cyclic(A,B,C,Q) & XXX
% XXX                         cyclic(A,B,C,R)   XXX
fof(ruleD39,axiom,
    ! [A,B,C,D,P,Q] :
      ( eqangle(A,B,P,Q,C,D,P,Q)
     => para(A,B,C,D) ) ).

fof(ruleD40,axiom,
    ! [A,B,C,D,P,Q] :
      ( para(A,B,C,D)
     => eqangle(A,B,P,Q,C,D,P,Q) ) ).

fof(ruleD41,axiom,
    ! [A,B,P,Q] :
      ( cyclic(A,B,P,Q)
     => eqangle(P,A,P,B,Q,A,Q,B) ) ).

fof(ruleD42a,axiom,
    ! [A,B,P,Q] :
      ( ( eqangle(P,A,P,B,Q,A,Q,B)
        & ~ coll(P,Q,A) )
     => cyclic(A,B,P,Q) ) ).

fof(ruleD42b,axiom,
    ! [A,B,P,Q] :
      ( ( eqangle(P,A,P,B,Q,A,Q,B)
        & coll(P,Q,B) )
     => cyclic(A,B,P,Q) ) ).

fof(ruleD43,axiom,
    ! [A,B,C,P,Q,R] :
      ( ( cyclic(A,B,C,P)
        & cyclic(A,B,C,Q)
        & cyclic(A,B,C,R)
        & eqangle(C,A,C,B,R,P,R,Q) )
     => cong(A,B,P,Q) ) ).

fof(ruleD44,axiom,
    ! [A,B,C,E,F] :
      ( ( midp(E,A,B)
        & midp(F,A,C) )
     => para(E,F,B,C) ) ).

fof(ruleD45,axiom,
    ! [A,B,C,E,F] :
      ( ( midp(E,A,B)
        & para(E,F,B,C)
        & coll(F,A,C) )
     => midp(F,A,C) ) ).

fof(ruleD46,axiom,
    ! [A,B,O] :
      ( cong(O,A,O,B)
     => eqangle(O,A,A,B,A,B,O,B) ) ).

fof(ruleD47,axiom,
    ! [A,B,O] :
      ( ( eqangle(O,A,A,B,A,B,O,B)
        & ~ coll(O,A,B) )
     => cong(O,A,O,B) ) ).

fof(ruleD48,axiom,
    ! [A,B,C,O,X] :
      ( ( circle(O,A,B,C)
        & perp(O,A,A,X) )
     => eqangle(A,X,A,B,C,A,C,B) ) ).

fof(ruleD49,axiom,
    ! [A,B,C,O,X] :
      ( ( circle(O,A,B,C)
        & eqangle(A,X,A,B,C,A,C,B) )
     => perp(O,A,A,X) ) ).

fof(ruleD50,axiom,
    ! [A,B,C,O,M] :
      ( ( circle(O,A,B,C)
        & midp(M,B,C) )
     => eqangle(A,B,A,C,O,B,O,M) ) ).

fof(ruleD51,axiom,
    ! [A,B,C,O,M] :
      ( ( circle(O,A,B,C)
        & coll(M,B,C)
        & eqangle(A,B,A,C,O,B,O,M) )
     => midp(M,B,C) ) ).

fof(ruleD52,axiom,
    ! [A,B,C,M] :
      ( ( perp(A,B,B,C)
        & midp(M,A,C) )
     => cong(A,M,B,M) ) ).

fof(ruleD53,axiom,
    ! [A,B,C,O] :
      ( ( circle(O,A,B,C)
        & coll(O,A,C) )
     => perp(A,B,B,C) ) ).

fof(ruleD54,axiom,
    ! [A,B,C,D] :
      ( ( cyclic(A,B,C,D)
        & para(A,B,C,D) )
     => eqangle(A,D,C,D,C,D,C,B) ) ).

fof(ruleD55,axiom,
    ! [A,B,M,O] :
      ( ( midp(M,A,B)
        & perp(O,M,A,B) )
     => cong(O,A,O,B) ) ).

fof(ruleD56,axiom,
    ! [A,B,P,Q] :
      ( ( cong(A,P,B,P)
        & cong(A,Q,B,Q) )
     => perp(A,B,P,Q) ) ).

fof(ruleD57,axiom,
    ! [A,B,P,Q] :
      ( ( cong(A,P,B,P)
        & cong(A,Q,B,Q)
        & cyclic(A,B,P,Q) )
     => perp(P,A,A,Q) ) ).

fof(ruleD58,axiom,
    ! [A,B,C,P,Q,R] :
      ( ( eqangle(A,B,B,C,P,Q,Q,R)
        & eqangle(A,C,B,C,P,R,Q,R)
        & ~ coll(A,B,C) )
     => simtri(A,B,C,P,Q,R) ) ).

fof(ruleD59,axiom,
    ! [A,B,C,P,Q,R] :
      ( simtri(A,B,C,P,Q,R)
     => eqratio(A,B,A,C,P,Q,P,R) ) ).

fof(ruleD60,axiom,
    ! [A,B,C,P,Q,R] :
      ( simtri(A,B,C,P,Q,R)
     => eqangle(A,B,B,C,P,Q,Q,R) ) ).

fof(ruleD61,axiom,
    ! [A,B,C,P,Q,R] :
      ( ( simtri(A,B,C,P,Q,R)
        & cong(A,B,P,Q) )
     => contri(A,B,C,P,Q,R) ) ).

fof(ruleD62,axiom,
    ! [A,B,C,P,Q,R] :
      ( contri(A,B,C,P,Q,R)
     => cong(A,B,P,Q) ) ).

fof(ruleD63,axiom,
    ! [A,B,C,D,M] :
      ( ( midp(M,A,B)
        & midp(M,C,D) )
     => para(A,C,B,D) ) ).

fof(ruleD64,axiom,
    ! [A,B,C,D,M] :
      ( ( midp(M,A,B)
        & para(A,C,B,D)
        & para(A,D,B,C) )
     => midp(M,C,D) ) ).

fof(ruleD65,axiom,
    ! [A,B,C,D,O] :
      ( ( para(A,B,C,D)
        & coll(O,A,C)
        & coll(O,B,D) )
     => eqratio(O,A,A,C,O,B,B,D) ) ).

fof(ruleD66,axiom,
    ! [A,B,C] :
      ( para(A,B,A,C)
     => coll(A,B,C) ) ).

fof(ruleD67,axiom,
    ! [A,B,C] :
      ( ( cong(A,B,A,C)
        & coll(A,B,C) )
     => midp(A,B,C) ) ).

fof(ruleD68,axiom,
    ! [A,B,C] :
      ( midp(A,B,C)
     => cong(A,B,A,C) ) ).

fof(ruleD69,axiom,
    ! [A,B,C] :
      ( midp(A,B,C)
     => coll(A,B,C) ) ).

fof(ruleD70,axiom,
    ! [A,B,C,D,M,N] :
      ( ( midp(M,A,B)
        & midp(N,C,D) )
     => eqratio(M,A,A,B,N,C,C,D) ) ).

fof(ruleD71,axiom,
    ! [A,B,C,D] :
      ( ( eqangle(A,B,C,D,C,D,A,B)
        & ~ para(A,B,C,D) )
     => perp(A,B,C,D) ) ).

fof(ruleD72,axiom,
    ! [A,B,C,D] :
      ( ( eqangle(A,B,C,D,C,D,A,B)
        & ~ perp(A,B,C,D) )
     => para(A,B,C,D) ) ).

fof(ruleD73,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( ( eqangle(A,B,C,D,P,Q,U,V)
        & para(P,Q,U,V) )
     => para(A,B,C,D) ) ).

fof(ruleD74,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( ( eqangle(A,B,C,D,P,Q,U,V)
        & perp(P,Q,U,V) )
     => perp(A,B,C,D) ) ).

fof(ruleD75,axiom,
    ! [A,B,C,D,P,Q,U,V] :
      ( ( eqratio(A,B,C,D,P,Q,U,V)
        & cong(P,Q,U,V) )
     => cong(A,B,C,D) ) ).

fof(ruleX1,axiom,
    ! [A,M,O,X] :
    ? [B] :
      ( ( perp(O,M,M,A)
        & eqangle(X,O,M,O,M,O,A,O) )
     => ( coll(B,A,M)
        & coll(B,O,X) ) ) ).

fof(ruleX2,axiom,
    ! [A,B,O,X] :
    ? [M] :
      ( ( cong(O,A,O,B)
        & eqangle(A,O,O,X,O,X,O,B) )
     => ( coll(B,A,M)
        & coll(M,O,X) ) ) ).

fof(ruleX3,axiom,
    ! [A,B,O,X] :
    ? [M] :
      ( ( perp(O,X,A,B)
        & eqangle(A,O,O,X,O,X,O,B) )
     => ( coll(B,A,M)
        & coll(M,O,X) ) ) ).

fof(ruleX4,axiom,
    ! [A,B,O,X] :
    ? [M] :
      ( ( perp(O,X,A,B)
        & cong(O,A,O,B) )
     => ( coll(B,A,M)
        & coll(M,O,X) ) ) ).

fof(ruleX5,axiom,
    ! [A,B,P,X,Y] :
    ? [Q] :
      ( ( eqangle(A,P,B,P,A,X,B,Y)
        & ~ coll(A,B,P) )
     => ( eqangle(A,P,B,P,A,Q,B,Q)
        & cyclic(X,B,P,Q) ) ) ).

fof(ruleX6,axiom,
    ! [A,B,C,D,M,N] :
    ? [P] :
      ( ( midp(M,A,B)
        & midp(N,C,D) )
     => ( midp(P,A,D)
        & para(P,M,B,D)
        & para(P,N,A,C) ) ) ).

fof(ruleX7,axiom,
    ! [A,B,C,D,M,N,Q] :
    ? [P] :
      ( ( midp(M,A,B)
        & midp(N,C,D)
        & coll(C,A,B)
        & coll(D,A,B) )
     => midp(P,A,Q) ) ).

fof(ruleX8,axiom,
    ! [A,B,M,P,Q,R,M] :
    ? [X] :
      ( ( midp(M,A,B)
        & para(A,P,R,M)
        & para(A,P,B,Q)
        & coll(P,Q,R) )
     => ( coll(X,A,Q)
        & coll(X,M,R) ) ) ).

fof(ruleX9,axiom,
    ! [A,B,C,D,O] :
    ? [P] :
      ( ( cong(O,C,O,D)
        & perp(A,B,B,O) )
     => ( cong(O,C,O,P)
        & para(P,C,A,B)
        & cong(B,C,B,P) ) ) ).

fof(ruleX10,axiom,
    ! [A,B,C,H] :
    ? [P,Q] :
      ( ( perp(A,H,B,C)
        & perp(B,H,A,C) )
     => ( coll(P,C,B)
        & perp(A,P,C,B)
        & coll(Q,C,A)
        & perp(B,Q,C,A) ) ) ).

fof(ruleX11,axiom,
    ! [A,B,C,O] :
    ? [P] :
      ( circle(O,A,B,C)
     => perp(P,A,A,O) ) ).

fof(ruleX12,axiom,
    ! [A,B,C,D,M,N] :
    ? [P,Q] :
      ( ( circle(M,A,B,C)
        & cong(M,A,M,D)
        & cong(N,A,N,B)
        & M != N )
     => ( coll(P,A,C)
        & cong(P,N,N,A)
        & coll(Q,B,D)
        & cong(Q,N,N,A) ) ) ).

fof(ruleX13,axiom,
    ! [A,B,C,D,M] :
    ? [O] :
      ( ( cyclic(A,B,C,D)
        & para(A,B,C,D)
        & midp(M,A,B) )
     => circle(O,A,B,C) ) ).

fof(ruleX14,axiom,
    ! [A,B,C,D] :
    ? [O] :
      ( ( perp(A,C,C,B)
        & cyclic(A,B,C,D) )
     => circle(O,A,B,C) ) ).

fof(ruleX15,axiom,
    ! [A,B,C,E,F] :
    ? [P] :
      ( ( perp(A,C,C,B)
        & coll(B,E,F) )
     => ( coll(P,E,F)
        & perp(P,A,E,F) ) ) ).

fof(ruleX16,axiom,
    ! [A,B,C,D,M] :
    ? [P] :
      ( ( perp(A,B,A,C)
        & perp(C,A,C,D)
        & midp(M,B,D) )
     => midp(P,A,C) ) ).

fof(ruleX17,axiom,
    ! [A,B,O] :
    ? [C] :
      ( ( cong(O,A,O,B)
        & perp(A,O,O,B) )
     => ( coll(A,O,C)
        & cong(O,A,O,C) ) ) ).

fof(ruleX18,axiom,
    ! [A,B,C,D,P,Q] :
    ? [R] :
      ( ( para(A,B,C,D)
        & coll(P,A,C)
        & coll(P,B,D)
        & coll(Q,A,B) )
     => ( coll(P,Q,R)
        & coll(R,C,D) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(exemplo6GDDFULL012017,conjecture,
    ! [A,C,K,O,N,B,G,O1,M,NWPNT1,NWPNT2,NWPNT3] :
      ( ( circle(O,A,C,K)
        & circle(O,A,N,NWPNT1)
        & coll(B,A,K)
        & coll(B,C,N)
        & circle(G,A,C,B)
        & circle(O1,K,N,B)
        & circle(G,A,M,NWPNT2)
        & circle(O1,K,M,NWPNT3) )
     => cyclic(M,K,O,C) ) ).

%------------------------------------------------------------------------------
