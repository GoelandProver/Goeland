%------------------------------------------------------------------------------
% File     : NUM374+3 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Number Theory
% Problem  : Disprove Wilkie identity from Tarski's identities
% Version  : [Zha05] axioms : Especial.
% English  :

% Refs     : [Zha05] Zhang (2005), Computer Search for Counterexamples to W
% Source   : [Zha05]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.2.0
% Syntax   : Number of formulae    :   13 (  12 unt;   0 def)
%            Number of atoms       :   18 (  18 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :    6 (   1   ~;   0   |;   4   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   12 (   4 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    5 (   5 usr;   2 con; 0-2 aty)
%            Number of variables   :   31 (  31   !;   0   ?)
% SPC      : FOF_CSA_RFO_PEQ

% Comments : One value set to 0.
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

fof(n0_n1,axiom,
    n0 != n1 ).

fof(wilkie,conjecture,
    ! [C,P,Q,R,S,B] :
      ( ( C = product(n0,n0)
        & P = sum(n1,n0)
        & Q = sum(P,C)
        & R = sum(n1,product(n0,C))
        & S = sum(sum(n1,C),product(C,C)) )
     => product(exponent(sum(exponent(P,n0),exponent(Q,n0)),B),exponent(sum(exponent(R,B),exponent(S,B)),n0)) = product(exponent(sum(exponent(P,B),exponent(Q,B)),n0),exponent(sum(exponent(R,n0),exponent(S,n0)),B)) ) ).

%------------------------------------------------------------------------------
