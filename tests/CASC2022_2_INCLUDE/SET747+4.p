%------------------------------------------------------------------------------
% File     : SET747+4 : TPTP v8.1.0. Bugfixed v2.2.1.
% Domain   : Set Theory (Mappings)
% Problem  : If F is increasing and G decreasing, then GoF is decreasing
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.72 v8.1.0, 0.75 v7.5.0, 0.81 v7.4.0, 0.70 v7.3.0, 0.69 v7.1.0, 0.61 v7.0.0, 0.70 v6.4.0, 0.73 v6.3.0, 0.71 v6.2.0, 0.72 v6.1.0, 0.77 v6.0.0, 0.83 v5.5.0, 0.85 v5.4.0, 0.93 v5.2.0, 0.90 v5.0.0, 0.92 v4.1.0, 0.91 v4.0.1, 0.96 v3.7.0, 0.95 v3.3.0, 0.93 v3.2.0, 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
% Syntax   : Number of formulae    :   29 (   1 unt;   0 def)
%            Number of atoms       :  133 (   6 equ)
%            Maximal formula atoms :   11 (   4 avg)
%            Number of connectives :  106 (   2   ~;   2   |;  53   &)
%                                         (  30 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (   9 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   16 (  15 usr;   0 prp; 2-6 aty)
%            Number of functors    :   15 (  15 usr;   1 con; 0-5 aty)
%            Number of variables   :  141 ( 132   !;   9   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%------------------------------------------------------------------------------
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

%----Include mappings axioms
%------------------------------------------------------------------------------
% File     : SET006+1 : TPTP v8.1.0. Bugfixed v2.2.1.
% Domain   : Set Theory
% Axioms   : Mapping axioms for the SET006+0 set theory axioms
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Satisfiable
% Syntax   : Number of formulae    :   17 (   0 unt;   0 def)
%            Number of atoms       :   99 (   3 equ)
%            Maximal formula atoms :   11 (   5 avg)
%            Number of connectives :   82 (   0   ~;   0   |;  46   &)
%                                         (  20 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   19 (  11 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of predicates  :   14 (  13 usr;   0 prp; 2-6 aty)
%            Number of functors    :    6 (   6 usr;   0 con; 2-5 aty)
%            Number of variables   :  105 (  97   !;   8   ?)
% SPC      : 

% Comments : Requires SET006+0.ax
% Bugfixes : v2.2.1 - compose_function and inverse_function fixed.
%------------------------------------------------------------------------------
%----Axiom and properties of mappings
fof(maps,axiom,
    ! [F,A,B] :
      ( maps(F,A,B)
    <=> ( ! [X] :
            ( member(X,A)
           => ? [Y] :
                ( member(Y,B)
                & apply(F,X,Y) ) )
        & ! [X,Y1,Y2] :
            ( ( member(X,A)
              & member(Y1,B)
              & member(Y2,B) )
           => ( ( apply(F,X,Y1)
                & apply(F,X,Y2) )
             => Y1 = Y2 ) ) ) ) ).

fof(compose_predicate,axiom,
    ! [H,G,F,A,B,C] :
      ( compose_predicate(H,G,F,A,B,C)
    <=> ! [X,Z] :
          ( ( member(X,A)
            & member(Z,C) )
         => ( apply(H,X,Z)
          <=> ? [Y] :
                ( member(Y,B)
                & apply(F,X,Y)
                & apply(G,Y,Z) ) ) ) ) ).

fof(compose_function,axiom,
    ! [G,F,A,B,C,X,Z] :
      ( ( member(X,A)
        & member(Z,C) )
     => ( apply(compose_function(G,F,A,B,C),X,Z)
      <=> ? [Y] :
            ( member(Y,B)
            & apply(F,X,Y)
            & apply(G,Y,Z) ) ) ) ).

fof(equal_maps,axiom,
    ! [F,G,A,B] :
      ( equal_maps(F,G,A,B)
    <=> ! [X,Y1,Y2] :
          ( ( member(X,A)
            & member(Y1,B)
            & member(Y2,B) )
         => ( ( apply(F,X,Y1)
              & apply(G,X,Y2) )
           => Y1 = Y2 ) ) ) ).

fof(identity,axiom,
    ! [F,A] :
      ( identity(F,A)
    <=> ! [X] :
          ( member(X,A)
         => apply(F,X,X) ) ) ).

fof(injective,axiom,
    ! [F,A,B] :
      ( injective(F,A,B)
    <=> ! [X1,X2,Y] :
          ( ( member(X1,A)
            & member(X2,A)
            & member(Y,B) )
         => ( ( apply(F,X1,Y)
              & apply(F,X2,Y) )
           => X1 = X2 ) ) ) ).

fof(surjective,axiom,
    ! [F,A,B] :
      ( surjective(F,A,B)
    <=> ! [Y] :
          ( member(Y,B)
         => ? [E] :
              ( member(E,A)
              & apply(F,E,Y) ) ) ) ).

fof(one_to_one,axiom,
    ! [F,A,B] :
      ( one_to_one(F,A,B)
    <=> ( injective(F,A,B)
        & surjective(F,A,B) ) ) ).

fof(inverse_predicate,axiom,
    ! [G,F,A,B] :
      ( inverse_predicate(G,F,A,B)
    <=> ! [X,Y] :
          ( ( member(X,A)
            & member(Y,B) )
         => ( apply(F,X,Y)
          <=> apply(G,Y,X) ) ) ) ).

fof(inverse_function,axiom,
    ! [F,A,B,X,Y] :
      ( ( member(X,A)
        & member(Y,B) )
     => ( apply(F,X,Y)
      <=> apply(inverse_function(F,A,B),Y,X) ) ) ).

fof(image2,axiom,
    ! [F,A,Y] :
      ( member(Y,image2(F,A))
    <=> ? [X] :
          ( member(X,A)
          & apply(F,X,Y) ) ) ).

fof(image3,axiom,
    ! [F,A,B,Y] :
      ( member(Y,image3(F,A,B))
    <=> ( member(Y,B)
        & ? [X] :
            ( member(X,A)
            & apply(F,X,Y) ) ) ) ).

fof(inverse_image2,axiom,
    ! [F,B,X] :
      ( member(X,inverse_image2(F,B))
    <=> ? [Y] :
          ( member(Y,B)
          & apply(F,X,Y) ) ) ).

fof(inverse_image3,axiom,
    ! [F,B,A,X] :
      ( member(X,inverse_image3(F,B,A))
    <=> ( member(X,A)
        & ? [Y] :
            ( member(Y,B)
            & apply(F,X,Y) ) ) ) ).

fof(increasing_function,axiom,
    ! [F,A,R,B,S] :
      ( increasing(F,A,R,B,S)
    <=> ! [X1,Y1,X2,Y2] :
          ( ( member(X1,A)
            & member(Y1,B)
            & member(X2,A)
            & member(Y2,B)
            & apply(R,X1,X2)
            & apply(F,X1,Y1)
            & apply(F,X2,Y2) )
         => apply(S,Y1,Y2) ) ) ).

fof(decreasing_function,axiom,
    ! [F,A,R,B,S] :
      ( decreasing(F,A,R,B,S)
    <=> ! [X1,Y1,X2,Y2] :
          ( ( member(X1,A)
            & member(Y1,B)
            & member(X2,A)
            & member(Y2,B)
            & apply(R,X1,X2)
            & apply(F,X1,Y1)
            & apply(F,X2,Y2) )
         => apply(S,Y2,Y1) ) ) ).

fof(isomorphism,axiom,
    ! [F,A,R,B,S] :
      ( isomorphism(F,A,R,B,S)
    <=> ( maps(F,A,B)
        & one_to_one(F,A,B)
        & ! [X1,Y1,X2,Y2] :
            ( ( member(X1,A)
              & member(Y1,B)
              & member(X2,A)
              & member(Y2,B)
              & apply(F,X1,Y1)
              & apply(F,X2,Y2) )
           => ( apply(R,X1,X2)
            <=> apply(S,Y1,Y2) ) ) ) ) ).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(thII38,conjecture,
    ! [F,G,A,B,C,R,S,T] :
      ( ( maps(F,A,B)
        & maps(G,B,C)
        & increasing(F,A,R,B,S)
        & decreasing(G,B,S,C,T) )
     => decreasing(compose_function(G,F,A,B,C),A,R,C,T) ) ).

%------------------------------------------------------------------------------
