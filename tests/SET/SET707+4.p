%--------------------------------------------------------------------------
% File     : SET707+4 : TPTP v7.4.0. Released v2.2.0.
% Domain   : Set Theory (Naive)
% Problem  : Components of equal ordered pairs are equal
% Version  : [Pas99] axioms.
% English  : If {{A},{A,B}} = {{U},{U,V}} then A = U and B = V.

% Refs     : [Pas99] Pastre (1999), Email to G. Sutcliffe
% Source   : [Pas99]
% Names    :

% Status   : Theorem
% Rating   : 0.53 v7.4.0, 0.43 v7.3.0, 0.52 v7.1.0, 0.48 v7.0.0, 0.50 v6.4.0, 0.58 v6.3.0, 0.54 v6.2.0, 0.68 v6.1.0, 0.80 v6.0.0, 0.78 v5.4.0, 0.79 v5.3.0, 0.81 v5.2.0, 0.70 v5.1.0, 0.71 v5.0.0, 0.67 v4.1.0, 0.65 v4.0.1, 0.70 v4.0.0, 0.71 v3.7.0, 0.75 v3.5.0, 0.74 v3.3.0, 0.71 v3.2.0, 0.64 v3.1.0, 0.78 v2.7.0, 0.83 v2.6.0, 0.86 v2.5.0, 0.88 v2.4.0, 0.75 v2.3.0, 0.67 v2.2.1
% Syntax   : Number of formulae    :   12 (   1 unit)
%            Number of atoms       :   32 (   5 equality)
%            Maximal formula depth :    7 (   6 average)
%            Number of connectives :   22 (   2 ~  ;   2  |;   5  &)
%                                         (  10 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 2-2 arity)
%            Number of functors    :    9 (   1 constant; 0-2 arity)
%            Number of variables   :   32 (   0 singleton;  31 !;   1 ?)
%            Maximal term depth    :    3 (   1 average)
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

%--------------------------------------------------------------------------
fof(thI50,conjecture,
    ( ! [A,B,U,V] :
        ( equal_set(unordered_pair(singleton(A),unordered_pair(A,B)),unordered_pair(singleton(U),unordered_pair(U,V)))
       => ( A = U
          & B = V ) ) )).

%--------------------------------------------------------------------------
