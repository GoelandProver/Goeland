%------------------------------------------------------------------------------
% File     : GEO167+1 : TPTP v8.1.0. Released v3.2.0.
% Domain   : Geometry
% Problem  : Pappus1 implies Pappus2
% Version  : Especial.
% English  :

% Refs     : [Bez05] Bezem (2005), Email to Geoff Sutcliffe
% Source   : [Bez05]
% Names    : p1p2 [Bez05]

% Status   : Theorem
% Rating   : 0.87 v8.1.0, 0.79 v7.5.0, 0.95 v7.4.0, 0.81 v7.3.0, 0.86 v7.2.0, 0.83 v7.1.0, 0.75 v7.0.0, 0.86 v6.4.0, 0.79 v6.3.0, 0.85 v6.2.0, 0.91 v6.1.0, 1.00 v6.0.0, 0.75 v5.5.0, 1.00 v3.2.0
% Syntax   : Number of formulae    :   24 (   1 unt;   0 def)
%            Number of atoms       :   75 (   0 equ)
%            Maximal formula atoms :   15 (   3 avg)
%            Number of connectives :   51 (   0   ~;   7   |;  25   &)
%                                         (   0 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of predicates  :    5 (   5 usr;   1 prp; 0-4 aty)
%            Number of functors    :   17 (  17 usr;  17 con; 0-0 aty)
%            Number of variables   :   62 (  59   !;   3   ?)
% SPC      : FOF_THM_RFO_NEQ

% Comments :
%------------------------------------------------------------------------------
fof(assumption1,axiom,
    ( colinear(a,b,c,l)
    & colinear(d,e,f,m) ) ).

fof(assumption2,axiom,
    ( colinear(b,f,g,n)
    & colinear(c,e,g,o) ) ).

fof(assumption3,axiom,
    ( colinear(b,d,h,p)
    & colinear(a,e,h,q) ) ).

fof(assumption4,axiom,
    ( colinear(c,d,i,r)
    & colinear(a,f,i,s) ) ).

fof(goal1,axiom,
    ( line_equal(n,o)
   => goal ) ).

fof(goal2,axiom,
    ( line_equal(p,q)
   => goal ) ).

fof(goal3,axiom,
    ( line_equal(s,r)
   => goal ) ).

fof(goal4,axiom,
    ! [A] :
      ( ( line_equal(A,A)
        & incident(g,A)
        & incident(h,A)
        & incident(i,A) )
     => goal ) ).

fof(colinearity_elimination1,axiom,
    ! [A,B,C,D] :
      ( colinear(A,B,C,D)
     => incident(A,D) ) ).

fof(colinearity_elimination2,axiom,
    ! [A,B,C,D] :
      ( colinear(A,B,C,D)
     => incident(B,D) ) ).

fof(colinearity_elimination3,axiom,
    ! [A,B,C,D] :
      ( colinear(A,B,C,D)
     => incident(C,D) ) ).

fof(reflexivity_of_point_equal,axiom,
    ! [A,B] :
      ( incident(A,B)
     => point_equal(A,A) ) ).

fof(symmetry_of_point_equal,axiom,
    ! [A,B] :
      ( point_equal(A,B)
     => point_equal(B,A) ) ).

fof(transitivity_of_point_equal,axiom,
    ! [A,B,C] :
      ( ( point_equal(A,B)
        & point_equal(B,C) )
     => point_equal(A,C) ) ).

fof(reflexivity_of_line_equal,axiom,
    ! [A,B] :
      ( incident(A,B)
     => line_equal(B,B) ) ).

fof(symmetry_of_line_equal,axiom,
    ! [A,B] :
      ( line_equal(A,B)
     => line_equal(B,A) ) ).

fof(transitivity_of_line_equal,axiom,
    ! [A,B,C] :
      ( ( line_equal(A,B)
        & line_equal(B,C) )
     => line_equal(A,C) ) ).

fof(pcon,axiom,
    ! [A,B,C] :
      ( ( point_equal(A,B)
        & incident(B,C) )
     => incident(A,C) ) ).

fof(lcon,axiom,
    ! [A,B,C] :
      ( ( incident(A,B)
        & line_equal(B,C) )
     => incident(A,C) ) ).

fof(pappus1,axiom,
    ! [A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q] :
      ( ( colinear(A,B,C,J)
        & colinear(D,E,F,K)
        & colinear(B,F,G,L)
        & colinear(C,E,G,M)
        & colinear(B,D,H,N)
        & colinear(A,E,H,O)
        & colinear(C,D,I,P)
        & colinear(A,F,I,Q) )
     => ( ? [R] : colinear(G,H,I,R)
        | incident(A,K)
        | incident(B,K)
        | incident(C,K)
        | incident(D,J)
        | incident(E,J)
        | incident(F,J) ) ) ).

fof(unique,axiom,
    ! [A,B,C,D] :
      ( ( incident(C,A)
        & incident(C,B)
        & incident(D,A)
        & incident(D,B) )
     => ( point_equal(C,D)
        | line_equal(A,B) ) ) ).

fof(line,axiom,
    ! [A,B] :
      ( ( point_equal(A,A)
        & point_equal(B,B) )
     => ? [C] :
          ( incident(A,C)
          & incident(B,C) ) ) ).

fof(point,axiom,
    ! [A,B,C] :
      ( ( line_equal(C,C)
        & line_equal(B,B) )
     => ? [A] :
          ( incident(A,B)
          & incident(A,C) ) ) ).

fof(goal_to_be_proved,conjecture,
    goal ).

%------------------------------------------------------------------------------
