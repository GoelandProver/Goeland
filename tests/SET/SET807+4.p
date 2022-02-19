%------------------------------------------------------------------------------
% File     : SET807+4 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set Theory (Pre-order relations)
% Problem  : Inclusion of sets defines a pre-order relation
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% Status   : Theorem
% Rating   : 0.62 v7.4.0, 0.47 v7.3.0, 0.52 v7.2.0, 0.48 v7.1.0, 0.43 v7.0.0, 0.47 v6.4.0, 0.54 v6.2.0, 0.48 v6.1.0, 0.57 v6.0.0, 0.61 v5.5.0, 0.70 v5.4.0, 0.82 v5.3.0, 0.85 v5.2.0, 0.75 v5.1.0, 0.76 v5.0.0, 0.79 v4.1.0, 0.74 v4.0.0, 0.79 v3.7.0, 0.80 v3.5.0, 0.84 v3.3.0, 0.79 v3.2.0
% Syntax   : Number of formulae    :   18 (   2 unit)
%            Number of atoms       :   71 (   4 equality)
%            Maximal formula depth :   12 (   6 average)
%            Number of connectives :   56 (   3 ~  ;   2  |;  21  &)
%                                         (  16 <=>;  14 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :   11 (   2 constant; 0-3 arity)
%            Number of variables   :   60 (   0 singleton;  56 !;   4 ?)
%            Maximal term depth    :    2 (   1 average)
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

%----Include equivalence and pre-order relation axioms
%--------------------------------------------------------------------------
% File     : SET006+2 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory
% Axioms   : Equivalence relation axioms for the SET006+0 set theory axioms
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% SPC      : 

% Comments : Requires SET006+0.ax
%--------------------------------------------------------------------------
%----Equivalence relations
fof(disjoint,axiom,
    ( ! [A,B] :
        ( disjoint(A,B)
      <=> ~ ( ? [X] :
                ( member(X,A)
                & member(X,B) ) ) ) )).

fof(partition,axiom,
    ( ! [A,E] :
        ( partition(A,E)
      <=> ( ! [X] :
              ( member(X,A)
             => subset(X,E) )
          & ! [X] :
              ( member(X,E)
             => ? [Y] :
                  ( member(Y,A)
                  & member(X,Y) ) )
          & ! [X,Y] :
              ( ( member(X,A)
                & member(Y,A) )
             => ( ? [Z] :
                    ( member(Z,X)
                    & member(Z,Y) )
               => X = Y ) ) ) ) )).

fof(equivalence,axiom,
    ( ! [A,R] :
        ( equivalence(R,A)
      <=> ( ! [X] :
              ( member(X,A)
             => apply(R,X,X) )
          & ! [X,Y] :
              ( ( member(X,A)
                & member(Y,A) )
             => ( apply(R,X,Y)
               => apply(R,Y,X) ) )
          & ! [X,Y,Z] :
              ( ( member(X,A)
                & member(Y,A)
                & member(Z,A) )
             => ( ( apply(R,X,Y)
                  & apply(R,Y,Z) )
               => apply(R,X,Z) ) ) ) ) )).

fof(equivalence_class,axiom,
    ( ! [R,E,A,X] :
        ( member(X,equivalence_class(A,E,R))
      <=> ( member(X,E)
          & apply(R,A,X) ) ) )).

fof(pre_order,axiom,
    ( ! [R,E] :
        ( pre_order(R,E)
      <=> ( ! [X] :
              ( member(X,E)
             => apply(R,X,X) )
          & ! [X,Y,Z] :
              ( ( member(X,E)
                & member(Y,E)
                & member(Z,E) )
             => ( ( apply(R,X,Y)
                  & apply(R,Y,Z) )
               => apply(R,X,Z) ) ) ) ) )).

%--------------------------------------------------------------------------

%------------------------------------------------------------------------------
fof(rel_subset,hypothesis,(
    ! [X,Y] :
      ( apply(subset_predicate,X,Y)
    <=> subset(X,Y) ) )).

fof(thIV18a,conjecture,(
    ! [E] : pre_order(subset_predicate,power_set(E)) )).

%------------------------------------------------------------------------------
