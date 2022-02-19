%--------------------------------------------------------------------------
% File     : SET732+4 : TPTP v7.4.0. Bugfixed v2.2.1.
% Domain   : Set Theory (Mappings)
% Problem  : Property of restriction 3
% Version  : [Pas99] axioms.
% English  : If F is a mapping from A to B,and G equal to F on A and
%            C =image2(F,A) and F is injective, then G is one-to-one.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.75 v7.4.0, 0.63 v7.3.0, 0.62 v7.2.0, 0.59 v7.1.0, 0.52 v7.0.0, 0.67 v6.4.0, 0.69 v6.3.0, 0.67 v6.2.0, 0.76 v6.1.0, 0.77 v6.0.0, 0.78 v5.5.0, 0.85 v5.4.0, 0.86 v5.3.0, 0.89 v5.2.0, 0.85 v5.1.0, 0.86 v5.0.0, 0.88 v4.1.0, 0.91 v4.0.0, 0.92 v3.7.0, 0.95 v3.3.0, 0.93 v3.2.0, 0.91 v3.1.0, 0.89 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
% Syntax   : Number of formulae    :   29 (   1 unit)
%            Number of atoms       :  137 (   7 equality)
%            Maximal formula depth :   19 (   9 average)
%            Number of connectives :  110 (   2 ~  ;   2  |;  55  &)
%                                         (  31 <=>;  20 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   16 (   0 propositional; 2-6 arity)
%            Number of functors    :   15 (   1 constant; 0-5 arity)
%            Number of variables   :  140 (   0 singleton; 131 !;   9 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v2.2.1 - Bugfixes in SET006+1.ax.
%--------------------------------------------------------------------------
%----Include set theory definitions
%------------------------------------------------------------------------------
% File     : SET006+0 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory
% Axioms   : Naive set theory based on Goedel's set theory
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----Axioms of operations on sets
fof(subset,axiom,
    ( ! [A,B] :
        ( subset(A,B)
      <=> ! [X] :
            ( member(X,A)
           => member(X,B) ) ) )).

fof(equal_set,axiom,
    ( ! [A,B] :
        ( equal_set(A,B)
      <=> ( subset(A,B)
          & subset(B,A) ) ) )).

fof(power_set,axiom,
    ( ! [X,A] :
        ( member(X,power_set(A))
      <=> subset(X,A) ) )).

fof(intersection,axiom,
    ( ! [X,A,B] :
        ( member(X,intersection(A,B))
      <=> ( member(X,A)
          & member(X,B) ) ) )).

fof(union,axiom,
    ( ! [X,A,B] :
        ( member(X,union(A,B))
      <=> ( member(X,A)
          | member(X,B) ) ) )).

fof(empty_set,axiom,
    ( ! [X] : ~ member(X,empty_set) )).

fof(difference,axiom,
    ( ! [B,A,E] :
        ( member(B,difference(E,A))
      <=> ( member(B,E)
          & ~ member(B,A) ) ) )).

fof(singleton,axiom,
    ( ! [X,A] :
        ( member(X,singleton(A))
      <=> X = A ) )).

fof(unordered_pair,axiom,
    ( ! [X,A,B] :
        ( member(X,unordered_pair(A,B))
      <=> ( X = A
          | X = B ) ) )).

fof(sum,axiom,
    ( ! [X,A] :
        ( member(X,sum(A))
      <=> ? [Y] :
            ( member(Y,A)
            & member(X,Y) ) ) )).

fof(product,axiom,
    ( ! [X,A] :
        ( member(X,product(A))
      <=> ! [Y] :
            ( member(Y,A)
           => member(X,Y) ) ) )).

%------------------------------------------------------------------------------

%----Include mappings axioms
%------------------------------------------------------------------------------
% File     : SET006+1 : TPTP v7.4.0. Bugfixed v2.2.1.
% Domain   : Set Theory
% Axioms   : Mapping axioms for the SET006+0 set theory axioms
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% SPC      : 

% Comments : Requires SET006+0.ax
% Bugfixes : v2.2.1 - compose_function and inverse_function fixed.
%------------------------------------------------------------------------------
%----Axiom and properties of mappings
fof(maps,axiom,
    ( ! [F,A,B] :
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
               => Y1 = Y2 ) ) ) ) )).

fof(compose_predicate,axiom,
    ( ! [H,G,F,A,B,C] :
        ( compose_predicate(H,G,F,A,B,C)
      <=> ! [X,Z] :
            ( ( member(X,A)
              & member(Z,C) )
           => ( apply(H,X,Z)
            <=> ? [Y] :
                  ( member(Y,B)
                  & apply(F,X,Y)
                  & apply(G,Y,Z) ) ) ) ) )).

fof(compose_function,axiom,
    ( ! [G,F,A,B,C,X,Z] :
        ( ( member(X,A)
          & member(Z,C) )
       => ( apply(compose_function(G,F,A,B,C),X,Z)
        <=> ? [Y] :
              ( member(Y,B)
              & apply(F,X,Y)
              & apply(G,Y,Z) ) ) ) )).

fof(equal_maps,axiom,
    ( ! [F,G,A,B] :
        ( equal_maps(F,G,A,B)
      <=> ! [X,Y1,Y2] :
            ( ( member(X,A)
              & member(Y1,B)
              & member(Y2,B) )
           => ( ( apply(F,X,Y1)
                & apply(G,X,Y2) )
             => Y1 = Y2 ) ) ) )).

fof(identity,axiom,
    ( ! [F,A] :
        ( identity(F,A)
      <=> ! [X] :
            ( member(X,A)
           => apply(F,X,X) ) ) )).

fof(injective,axiom,
    ( ! [F,A,B] :
        ( injective(F,A,B)
      <=> ! [X1,X2,Y] :
            ( ( member(X1,A)
              & member(X2,A)
              & member(Y,B) )
           => ( ( apply(F,X1,Y)
                & apply(F,X2,Y) )
             => X1 = X2 ) ) ) )).

fof(surjective,axiom,
    ( ! [F,A,B] :
        ( surjective(F,A,B)
      <=> ! [Y] :
            ( member(Y,B)
           => ? [E] :
                ( member(E,A)
                & apply(F,E,Y) ) ) ) )).

fof(one_to_one,axiom,
    ( ! [F,A,B] :
        ( one_to_one(F,A,B)
      <=> ( injective(F,A,B)
          & surjective(F,A,B) ) ) )).

fof(inverse_predicate,axiom,
    ( ! [G,F,A,B] :
        ( inverse_predicate(G,F,A,B)
      <=> ! [X,Y] :
            ( ( member(X,A)
              & member(Y,B) )
           => ( apply(F,X,Y)
            <=> apply(G,Y,X) ) ) ) )).

fof(inverse_function,axiom,
    ( ! [F,A,B,X,Y] :
        ( ( member(X,A)
          & member(Y,B) )
       => ( apply(F,X,Y)
        <=> apply(inverse_function(F,A,B),Y,X) ) ) )).

fof(image2,axiom,
    ( ! [F,A,Y] :
        ( member(Y,image2(F,A))
      <=> ? [X] :
            ( member(X,A)
            & apply(F,X,Y) ) ) )).

fof(image3,axiom,
    ( ! [F,A,B,Y] :
        ( member(Y,image3(F,A,B))
      <=> ( member(Y,B)
          & ? [X] :
              ( member(X,A)
              & apply(F,X,Y) ) ) ) )).

fof(inverse_image2,axiom,
    ( ! [F,B,X] :
        ( member(X,inverse_image2(F,B))
      <=> ? [Y] :
            ( member(Y,B)
            & apply(F,X,Y) ) ) )).

fof(inverse_image3,axiom,
    ( ! [F,B,A,X] :
        ( member(X,inverse_image3(F,B,A))
      <=> ( member(X,A)
          & ? [Y] :
              ( member(Y,B)
              & apply(F,X,Y) ) ) ) )).

fof(increasing_function,axiom,
    ( ! [F,A,R,B,S] :
        ( increasing(F,A,R,B,S)
      <=> ! [X1,Y1,X2,Y2] :
            ( ( member(X1,A)
              & member(Y1,B)
              & member(X2,A)
              & member(Y2,B)
              & apply(R,X1,X2)
              & apply(F,X1,Y1)
              & apply(F,X2,Y2) )
           => apply(S,Y1,Y2) ) ) )).

fof(decreasing_function,axiom,
    ( ! [F,A,R,B,S] :
        ( decreasing(F,A,R,B,S)
      <=> ! [X1,Y1,X2,Y2] :
            ( ( member(X1,A)
              & member(Y1,B)
              & member(X2,A)
              & member(Y2,B)
              & apply(R,X1,X2)
              & apply(F,X1,Y1)
              & apply(F,X2,Y2) )
           => apply(S,Y2,Y1) ) ) )).

fof(isomorphism,axiom,
    ( ! [F,A,R,B,S] :
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
              <=> apply(S,Y1,Y2) ) ) ) ) )).

%------------------------------------------------------------------------------

%--------------------------------------------------------------------------
fof(thII23,conjecture,
    ( ! [F,G,A,B,C] :
        ( ( maps(F,A,B)
          & subset(C,B)
          & image2(F,A) = C
          & ! [X,Y] :
              ( ( member(X,A)
                & member(Y,C) )
             => ( apply(G,X,Y)
              <=> apply(F,X,Y) ) )
          & injective(F,A,B) )
       => one_to_one(G,A,C) ) )).

%--------------------------------------------------------------------------
