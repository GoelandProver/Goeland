%------------------------------------------------------------------------------
% File     : SET962+1 : TPTP v7.4.0. Bugfixed v4.0.0.
% Domain   : Set theory
% Problem  : cartesian_product(A,A) = cartesian_product(B,B) => A = B
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t115_zfmisc_1 [Urb06]

% Status   : Theorem
% Rating   : 0.34 v7.4.0, 0.23 v7.3.0, 0.31 v7.2.0, 0.28 v7.1.0, 0.30 v6.4.0, 0.35 v6.3.0, 0.33 v6.2.0, 0.36 v6.1.0, 0.33 v6.0.0, 0.39 v5.5.0, 0.37 v5.4.0, 0.39 v5.3.0, 0.41 v5.2.0, 0.30 v5.1.0, 0.33 v5.0.0, 0.29 v4.1.0, 0.26 v4.0.1, 0.35 v4.0.0
% Syntax   : Number of formulae    :    9 (   5 unit)
%            Number of atoms       :   15 (   5 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :    9 (   3 ~  ;   0  |;   1  &)
%                                         (   2 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    4 (   0 constant; 1-2 arity)
%            Number of variables   :   19 (   0 singleton;  17 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
% Bugfixes : v4.0.0 - Removed duplicate formula t2_tarski
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(l55_zfmisc_1,axiom,(
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t115_zfmisc_1,conjecture,(
    ! [A,B] :
      ( cartesian_product2(A,A) = cartesian_product2(B,B)
     => A = B ) )).

fof(t2_tarski,axiom,(
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) )).
%------------------------------------------------------------------------------
