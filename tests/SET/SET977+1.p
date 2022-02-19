%------------------------------------------------------------------------------
% File     : SET977+1 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : Basic properties of sets, theorem 130
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t130_zfmisc_1 [Urb06]

% Status   : Theorem
% Rating   : 0.34 v7.4.0, 0.30 v7.3.0, 0.34 v7.2.0, 0.31 v7.1.0, 0.30 v7.0.0, 0.23 v6.4.0, 0.27 v6.3.0, 0.25 v6.2.0, 0.32 v6.1.0, 0.30 v6.0.0, 0.26 v5.4.0, 0.25 v5.3.0, 0.26 v5.2.0, 0.15 v5.1.0, 0.14 v5.0.0, 0.25 v4.1.0, 0.17 v4.0.1, 0.13 v4.0.0, 0.12 v3.7.0, 0.10 v3.5.0, 0.11 v3.4.0, 0.16 v3.3.0, 0.21 v3.2.0
% Syntax   : Number of formulae    :   11 (   6 unit)
%            Number of atoms       :   19 (   8 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   15 (   7 ~  ;   0  |;   3  &)
%                                         (   3 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    5 (   1 constant; 0-2 arity)
%            Number of variables   :   22 (   0 singleton;  20 !;   2 ?)
%            Maximal term depth    :    3 (   1 average)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,(
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) )).

fof(commutativity_k2_tarski,axiom,(
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) )).

fof(d1_xboole_0,axiom,(
    ! [A] :
      ( A = empty_set
    <=> ! [B] : ~ in(B,A) ) )).

fof(d5_tarski,axiom,(
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) )).

fof(fc1_xboole_0,axiom,(
    empty(empty_set) )).

fof(fc1_zfmisc_1,axiom,(
    ! [A,B] : ~ empty(ordered_pair(A,B)) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t128_zfmisc_1,axiom,(
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(singleton(C),D))
    <=> ( A = C
        & in(B,D) ) ) )).

fof(t129_zfmisc_1,axiom,(
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,singleton(D)))
    <=> ( in(A,C)
        & B = D ) ) )).

fof(t130_zfmisc_1,conjecture,(
    ! [A,B] :
      ( A != empty_set
     => ( cartesian_product2(singleton(B),A) != empty_set
        & cartesian_product2(A,singleton(B)) != empty_set ) ) )).
%------------------------------------------------------------------------------
