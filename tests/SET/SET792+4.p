%------------------------------------------------------------------------------
% File     : SET792+4 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set Theory (Order relations)
% Problem  : The least element, if it existes, is minimal
% Version  : [Pas05] axioms.
% English  :

% Refs     : [Pas05] Pastre (2005), Email to G. Sutcliffe
% Source   : [Pas05]
% Names    :

% Status   : Theorem
% Rating   : 0.03 v7.2.0, 0.00 v7.0.0, 0.03 v6.4.0, 0.08 v6.2.0, 0.04 v6.1.0, 0.07 v6.0.0, 0.09 v5.5.0, 0.04 v5.3.0, 0.07 v5.2.0, 0.05 v5.0.0, 0.00 v3.4.0, 0.08 v3.3.0, 0.11 v3.2.0
% Syntax   : Number of formulae    :   11 (   0 unit)
%            Number of atoms       :   59 (   3 equality)
%            Maximal formula depth :   12 (   9 average)
%            Number of connectives :   48 (   0 ~  ;   1  |;  22  &)
%                                         (  10 <=>;  15 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :   13 (   0 propositional; 2-4 arity)
%            Number of functors    :    0 (   0 constant; --- arity)
%            Number of variables   :   49 (   0 singleton;  49 !;   0 ?)
%            Maximal term depth    :    1 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments :
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
fof(thIV4,conjecture,(
    ! [R,E,M] :
      ( ( order(R,E)
        & least(M,R,E) )
     => min(M,R,E) ) )).

%------------------------------------------------------------------------------
