%------------------------------------------------------------------------------
% File     : SET815+4 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set Theory (Order relations)
% Problem  : An ordinal number is equal to the sum of its successor
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% Status   : Theorem
% Rating   : 0.88 v7.4.0, 0.80 v7.3.0, 0.79 v7.1.0, 0.74 v7.0.0, 0.83 v6.4.0, 0.85 v6.3.0, 0.79 v6.2.0, 0.80 v6.1.0, 0.83 v6.0.0, 0.91 v5.5.0, 0.93 v5.2.0, 0.95 v5.0.0, 0.96 v3.7.0, 0.95 v3.3.0, 0.93 v3.2.0
% Syntax   : Number of formulae    :   21 (   1 unit)
%            Number of atoms       :   69 (   4 equality)
%            Maximal formula depth :   11 (   6 average)
%            Number of connectives :   51 (   3 ~  ;   3  |;  16  &)
%                                         (  17 <=>;  12 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 1-3 arity)
%            Number of functors    :   13 (   3 constant; 0-3 arity)
%            Number of variables   :   59 (   0 singleton;  56 !;   3 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
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

%----Include ordinal numbers axioms
%------------------------------------------------------------------------------
% File     : SET006+4 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set Theory
% Axioms   : Ordinal numbers for the SET006+0 set theory axioms
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% SPC      : 

% Comments : Requires SET006+0.ax
%------------------------------------------------------------------------------
%---- Ordinal numbers and strict order relations
fof(ordinal_number,axiom,(
    ! [A] :
      ( member(A,on)
    <=> ( set(A)
        & strict_well_order(member_predicate,A)
        & ! [X] :
            ( member(X,A)
           => subset(X,A) ) ) ) )).

fof(strict_well_order,axiom,(
    ! [R,E] :
      ( strict_well_order(R,E)
    <=> ( strict_order(R,E)
        & ! [A] :
            ( ( subset(A,E)
              & ? [X] : member(X,A) )
           => ? [Y] : least(Y,R,A) ) ) ) )).

fof(least,axiom,(
    ! [R,E,M] :
      ( least(M,R,E)
    <=> ( member(M,E)
        & ! [X] :
            ( member(X,E)
           => ( M = X
              | apply(R,M,X) ) ) ) ) )).

fof(rel_member,axiom,(
    ! [X,Y] :
      ( apply(member_predicate,X,Y)
    <=> member(X,Y) ) )).

fof(strict_order,axiom,(
    ! [R,E] :
      ( strict_order(R,E)
    <=> ( ! [X,Y] :
            ( ( member(X,E)
              & member(Y,E) )
           => ~ ( apply(R,X,Y)
                & apply(R,Y,X) ) )
        & ! [X,Y,Z] :
            ( ( member(X,E)
              & member(Y,E)
              & member(Z,E) )
           => ( ( apply(R,X,Y)
                & apply(R,Y,Z) )
             => apply(R,X,Z) ) ) ) ) )).

fof(set_member,axiom,(
    ! [X] :
      ( set(X)
     => ! [Y] :
          ( member(Y,X)
         => set(Y) ) ) )).

fof(initial_segment,axiom,(
    ! [X,R,A,Y] :
      ( member(Y,initial_segment(X,R,A))
    <=> ( member(Y,A)
        & apply(R,Y,X) ) ) )).

fof(successor,axiom,(
    ! [A,X] :
      ( member(X,suc(A))
    <=> member(X,union(A,singleton(A))) ) )).

%------------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(thI44,axiom,(
    ! [A,X] :
      ( member(X,A)
     => subset(singleton(X),A) ) )).

fof(thV15,conjecture,(
    ! [A] :
      ( member(A,on)
     => equal_set(sum(suc(A)),A) ) )).

%------------------------------------------------------------------------------
