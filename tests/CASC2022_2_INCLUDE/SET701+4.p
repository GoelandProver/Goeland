%--------------------------------------------------------------------------
% File     : SET701+4 : TPTP v8.1.0. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : Property of intersection and difference 3
% Version  : [Pas99] axioms.
% English  : A is a subset of B if and only if the intersection of A and
%            of the difference of B is a subset of the intersection of C
%            and of the difference of C.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.58 v8.1.0, 0.50 v7.5.0, 0.59 v7.4.0, 0.60 v7.3.0, 0.55 v7.2.0, 0.52 v7.0.0, 0.53 v6.4.0, 0.54 v6.2.0, 0.56 v6.1.0, 0.63 v6.0.0, 0.61 v5.5.0, 0.63 v5.4.0, 0.71 v5.3.0, 0.70 v5.2.0, 0.65 v5.1.0, 0.71 v4.1.0, 0.74 v4.0.1, 0.78 v4.0.0, 0.79 v3.7.0, 0.75 v3.5.0, 0.79 v3.4.0, 0.84 v3.3.0, 0.71 v3.2.0, 0.82 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.50 v2.3.0, 0.33 v2.2.1
% Syntax   : Number of formulae    :   12 (   1 unt;   0 def)
%            Number of atoms       :   33 (   3 equ)
%            Maximal formula atoms :    4 (   2 avg)
%            Number of connectives :   23 (   2   ~;   2   |;   5   &)
%                                         (  11 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   6 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   32 (  31   !;   1   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
%--------------------------------------------------------------------------
%----Include set theory definitions
%------------------------------------------------------------------------------
% File     : SET006+0 : TPTP v8.1.0. Released v2.2.0.
% Domain   : Set Theory
% Axioms   : Naive set theory based on Goedel's set theory
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   11 (   1 unt;   0 def)
%            Number of atoms       :   29 (   3 equ)
%            Maximal formula atoms :    3 (   2 avg)
%            Number of connectives :   20 (   2   ~;   2   |;   4   &)
%                                         (  10 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :    4 (   3 usr;   0 prp; 2-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   28 (  27   !;   1   ?)
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Axioms of operations on sets
fof(subset,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [X] :
          ( member(X,A)
         => member(X,B) ) ) ).

fof(equal_set,axiom,
    ! [A,B] :
      ( equal_set(A,B)
    <=> ( subset(A,B)
        & subset(B,A) ) ) ).

fof(power_set,axiom,
    ! [X,A] :
      ( member(X,power_set(A))
    <=> subset(X,A) ) ).

fof(intersection,axiom,
    ! [X,A,B] :
      ( member(X,intersection(A,B))
    <=> ( member(X,A)
        & member(X,B) ) ) ).

fof(union,axiom,
    ! [X,A,B] :
      ( member(X,union(A,B))
    <=> ( member(X,A)
        | member(X,B) ) ) ).

fof(empty_set,axiom,
    ! [X] : ~ member(X,empty_set) ).

fof(difference,axiom,
    ! [B,A,E] :
      ( member(B,difference(E,A))
    <=> ( member(B,E)
        & ~ member(B,A) ) ) ).

fof(singleton,axiom,
    ! [X,A] :
      ( member(X,singleton(A))
    <=> X = A ) ).

fof(unordered_pair,axiom,
    ! [X,A,B] :
      ( member(X,unordered_pair(A,B))
    <=> ( X = A
        | X = B ) ) ).

fof(sum,axiom,
    ! [X,A] :
      ( member(X,sum(A))
    <=> ? [Y] :
          ( member(Y,A)
          & member(X,Y) ) ) ).

fof(product,axiom,
    ! [X,A] :
      ( member(X,product(A))
    <=> ! [Y] :
          ( member(Y,A)
         => member(X,Y) ) ) ).

%------------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(thI35,conjecture,
    ! [A,B,C,E] :
      ( ( subset(A,E)
        & subset(B,E) )
     => ( subset(A,B)
      <=> subset(intersection(A,difference(E,B)),intersection(C,difference(E,C))) ) ) ).

%--------------------------------------------------------------------------
