%--------------------------------------------------------------------------
% File     : SET766+4 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory (Equivalence relations)
% Problem  : A member belongs to its equivalence class
% Version  : [Pas99] axioms.
% English  :

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.06 v7.4.0, 0.10 v7.3.0, 0.07 v7.1.0, 0.13 v7.0.0, 0.10 v6.4.0, 0.15 v6.3.0, 0.17 v6.2.0, 0.12 v6.1.0, 0.10 v6.0.0, 0.13 v5.5.0, 0.07 v5.3.0, 0.15 v5.2.0, 0.10 v5.0.0, 0.12 v4.1.0, 0.13 v4.0.0, 0.17 v3.7.0, 0.20 v3.5.0, 0.16 v3.4.0, 0.11 v3.3.0, 0.00 v2.2.1
% Syntax   : Number of formulae    :   17 (   1 unit)
%            Number of atoms       :   71 (   4 equality)
%            Maximal formula depth :   12 (   7 average)
%            Number of connectives :   57 (   3 ~  ;   2  |;  22  &)
%                                         (  15 <=>;  15 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    9 (   0 propositional; 2-3 arity)
%            Number of functors    :   10 (   1 constant; 0-3 arity)
%            Number of variables   :   60 (   0 singleton;  56 !;   4 ?)
%            Maximal term depth    :    2 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
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

%----Include equivalence relation axioms
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

%--------------------------------------------------------------------------
fof(thIII02,conjecture,
    ( ! [E,R,A] :
        ( ( equivalence(R,E)
          & member(A,E) )
       => member(A,equivalence_class(A,E,R)) ) )).

%--------------------------------------------------------------------------
