%------------------------------------------------------------------------------
% File     : SET796+4 : TPTP v7.4.0. Bugfixed v4.0.0.
% Domain   : Set Theory (Order relations)
% Problem  : If R(a,b) then a is the greatest lower bound of unordered_pair(a,b)
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% Status   : Theorem
% Rating   : 0.62 v7.4.0, 0.47 v7.3.0, 0.52 v7.1.0, 0.48 v7.0.0, 0.57 v6.4.0, 0.58 v6.3.0, 0.54 v6.2.0, 0.60 v6.1.0, 0.67 v6.0.0, 0.70 v5.4.0, 0.79 v5.3.0, 0.81 v5.2.0, 0.80 v5.1.0, 0.81 v5.0.0, 0.79 v4.1.0, 0.78 v4.0.1, 0.83 v4.0.0
% Syntax   : Number of formulae    :   22 (   1 unit)
%            Number of atoms       :   90 (   6 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   70 (   2   ~;   3   |;  28   &)
%                                         (  20 <=>;  17  =>;   0  <=)
%                                         (   0 <~>;   0  ~|;   0  ~&)
%            Number of predicates  :   15 (   0 propositional; 2-4 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   78 (   0 sgn;  77   !;   1   ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
% Bugfixes : v4.0.0 - removed duplicate include of SET006+3.ax
%------------------------------------------------------------------------------
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

%----Include order relation axioms
%------------------------------------------------------------------------------
% File     : SET006+3 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set Theory
% Axioms   : Order relation (Naive set theory)
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% SPC      : 

% Comments : Requires SET006+0.ax
%------------------------------------------------------------------------------
%----Order relations
fof(order,axiom,(
    ! [R,E] :
      ( order(R,E)
    <=> ( ! [X] :
            ( member(X,E)
           => apply(R,X,X) )
        & ! [X,Y] :
            ( ( member(X,E)
              & member(Y,E) )
           => ( ( apply(R,X,Y)
                & apply(R,Y,X) )
             => X = Y ) )
        & ! [X,Y,Z] :
            ( ( member(X,E)
              & member(Y,E)
              & member(Z,E) )
           => ( ( apply(R,X,Y)
                & apply(R,Y,Z) )
             => apply(R,X,Z) ) ) ) ) )).

fof(total_order,axiom,(
    ! [R,E] :
      ( total_order(R,E)
    <=> ( order(R,E)
        & ! [X,Y] :
            ( ( member(X,E)
              & member(Y,E) )
           => ( apply(R,X,Y)
              | apply(R,Y,X) ) ) ) ) )).

fof(upper_bound,axiom,(
    ! [R,E,M] :
      ( upper_bound(M,R,E)
    <=> ! [X] :
          ( member(X,E)
         => apply(R,X,M) ) ) )).

fof(lower_bound,axiom,(
    ! [R,E,M] :
      ( lower_bound(M,R,E)
    <=> ! [X] :
          ( member(X,E)
         => apply(R,M,X) ) ) )).

fof(greatest,axiom,(
    ! [R,E,M] :
      ( greatest(M,R,E)
    <=> ( member(M,E)
        & ! [X] :
            ( member(X,E)
           => apply(R,X,M) ) ) ) )).

fof(least,axiom,(
    ! [R,E,M] :
      ( least(M,R,E)
    <=> ( member(M,E)
        & ! [X] :
            ( member(X,E)
           => apply(R,M,X) ) ) ) )).

fof(max,axiom,(
    ! [R,E,M] :
      ( max(M,R,E)
    <=> ( member(M,E)
        & ! [X] :
            ( ( member(X,E)
              & apply(R,M,X) )
           => M = X ) ) ) )).

fof(min,axiom,(
    ! [R,E,M] :
      ( min(M,R,E)
    <=> ( member(M,E)
        & ! [X] :
            ( ( member(X,E)
              & apply(R,X,M) )
           => M = X ) ) ) )).

fof(least_upper_bound,axiom,(
    ! [A,X,R,E] :
      ( least_upper_bound(A,X,R,E)
    <=> ( member(A,X)
        & upper_bound(A,R,X)
        & ! [M] :
            ( ( member(M,E)
              & upper_bound(M,R,X) )
           => apply(R,A,M) ) ) ) )).

fof(greatest_lower_bound,axiom,(
    ! [A,X,R,E] :
      ( greatest_lower_bound(A,X,R,E)
    <=> ( member(A,X)
        & lower_bound(A,R,X)
        & ! [M] :
            ( ( member(M,E)
              & lower_bound(M,R,X) )
           => apply(R,M,A) ) ) ) )).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(thIV8,conjecture,(
    ! [R,E,A,B] :
      ( ( order(R,E)
        & member(A,E)
        & member(B,E)
        & apply(R,A,B) )
     => greatest_lower_bound(A,unordered_pair(A,B),R,E) ) )).

%------------------------------------------------------------------------------
