%------------------------------------------------------------------------------
% File     : NUM374+1 : TPTP v8.1.2. Released v3.2.0.
% Domain   : Number Theory
% Problem  : Disprove Wilkie identity from Tarski's identities
% Version  : [Zha05] axioms.
% English  :

% Refs     : [Zha05] Zhang (2005), Computer Search for Counterexamples to W
% Source   : [Zha05]
% Names    :

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.2.0
% Syntax   : Number of formulae    :   12 (  11 unt;   0 def)
%            Number of atoms       :   17 (  17 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   4   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   4 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of predicates  :    1 (   0 usr;   0 prp; 2-2 aty)
%            Number of functors    :    4 (   4 usr;   1 con; 0-2 aty)
%            Number of variables   :   32 (  32   !;   0   ?)
% SPC      : FOF_CSA_RFO_PEQ

% Comments :
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

%----The clausified version as in Zhang's paper
%fof(wilkie1,axiom,
%    c = product(a,a)).
%fof(wilkie2,axiom,
%    p = sum(n1,a)).
%fof(wilkie3,axiom,
%    q = sum(p,c)).
%fof(wilkie4,axiom,
%    r = sum(n1,product(a,c))).
%fof(wilkie5,axiom,
%    s = sum(sum(n1,c),product(c,c))).
%fof(wilkie,axiom,
%    product(exponent(sum(exponent(p,a),exponent(q,a)),b),exponent(sum(exponent(r,b),exponent(s,b)),a)) != product(exponent(sum(exponent(p,b),exponent(q,b)),a),exponent(sum(exponent(r,a),exponent(s,a)),b))).

fof(wilkie,conjecture,
    ! [C,P,Q,R,S,A,B] :
      ( ( C = product(A,A)
        & P = sum(n1,A)
        & Q = sum(P,C)
        & R = sum(n1,product(A,C))
        & S = sum(sum(n1,C),product(C,C)) )
     => product(exponent(sum(exponent(P,A),exponent(Q,A)),B),exponent(sum(exponent(R,B),exponent(S,B)),A)) = product(exponent(sum(exponent(P,B),exponent(Q,B)),A),exponent(sum(exponent(R,A),exponent(S,A)),B)) ) ).

%------------------------------------------------------------------------------
