%------------------------------------------------------------------------------
% File     : NUM374+4 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Number Theory
% Problem  : Disprove Wilkie identity from Tarski's identities
% Version  : [Zha05] axioms : Especial > Augmented > Especial.
% English  :

% Refs     : [Zha05] Zhang (2005), Computer Search for Counterexamples to W
% Source   : [Zha05]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.2.0
% Syntax   : Number of formulae    :   16 (  14 unt;   0 def)
%            Number of atoms       :   48 (  46 equ)
%            Maximal formula atoms :   27 (   3 avg)
%            Number of connectives :   60 (  28   ~;   0   |;  30   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   34 (   6 avg)
%            Maximal term depth    :    5 (   1 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 2-6 aty)
%            Number of functors    :    6 (   6 usr;   3 con; 0-2 aty)
%            Number of variables   :   42 (  42   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments : Lemmas added and one value set to 0.
%------------------------------------------------------------------------------
fof(sum_symmetry,axiom,
    ! [X,Y] : sum(X,Y) = sum(Y,X) ).

fof(sum_associativity,axiom,
    ! [X,Y,Z] : sum(X,sum(Y,Z)) = sum(sum(X,Y),Z) ).

fof(product_identity,axiom,
    ! [X] : product(X,n1) = X ).

fof(product_symmetry,axiom,
    ! [X,Y] : product(X,Y) = product(Y,X) ).

fof(product_associativity,axiom,
    ! [X,Y,Z] : product(X,product(Y,Z)) = product(product(X,Y),Z) ).

fof(sum_product_distribution,axiom,
    ! [X,Y,Z] : product(X,sum(Y,Z)) = sum(product(X,Y),product(X,Z)) ).

fof(exponent_n1,axiom,
    ! [X] : exponent(n1,X) = n1 ).

fof(exponent_identity,axiom,
    ! [X] : exponent(X,n1) = X ).

fof(exponent_sum_product,axiom,
    ! [X,Y,Z] : exponent(X,sum(Y,Z)) = product(exponent(X,Y),exponent(X,Z)) ).

fof(exponent_product_distribution,axiom,
    ! [X,Y,Z] : exponent(product(X,Y),Z) = product(exponent(X,Z),exponent(Y,Z)) ).

fof(exponent_exponent,axiom,
    ! [X,Y,Z] : exponent(exponent(X,Y),Z) = exponent(X,product(Y,Z)) ).

fof(lemmas,axiom,
    ! [C,P,Q,R,S,B] :
      ( lemmas(C,P,Q,R,S,B)
    <=> ( n2 = sum(n1,n1)
        & B != n0
        & B != n1
        & B != n2
        & ! [X] : B != product(n0,X)
        & ! [X] : P != product(Q,X)
        & ! [X] : Q != product(P,X)
        & ! [X] : R != product(S,X)
        & ! [X] : S != product(R,X)
        & sum(n1,n0) != n1
        & sum(n2,n0) != n1
        & sum(n0,n0) != n1
        & C != n1
        & sum(n1,C) != n1
        & product(C,n0) != n1
        & sum(n1,n0) != n0
        & sum(n2,n0) != n0
        & sum(n0,n0) != n0
        & C != n0
        & sum(n1,C) != n0
        & sum(n2,n0) != sum(n1,n0)
        & C != sum(n1,n0)
        & product(C,n0) != sum(n1,n0)
        & C != sum(n2,n0)
        & C != sum(n0,n0)
        & sum(n1,C) != C ) ) ).

fof(n0_n1,axiom,
    n0 != n1 ).

fof(n0_n2,axiom,
    n0 != n2 ).

fof(n1_n2,axiom,
    n1 != n2 ).

fof(wilkie,conjecture,
    ! [C,P,Q,R,S,B] :
      ( ( C = product(n0,n0)
        & P = sum(n1,n0)
        & Q = sum(P,C)
        & R = sum(n1,product(n0,C))
        & S = sum(sum(n1,C),product(C,C))
        & lemmas(C,P,Q,R,S,B) )
     => product(exponent(sum(exponent(P,n0),exponent(Q,n0)),B),exponent(sum(exponent(R,B),exponent(S,B)),n0)) = product(exponent(sum(exponent(P,B),exponent(Q,B)),n0),exponent(sum(exponent(R,n0),exponent(S,n0)),B)) ) ).

%------------------------------------------------------------------------------
