%------------------------------------------------------------------------------
% File     : SET906+1 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : subset(set_union2(unordered_pair(A,B),C),C) => in(A,C)
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t47_zfmisc_1 [Urb06]

% Status   : Theorem
% Rating   : 0.22 v7.4.0, 0.10 v7.3.0, 0.14 v7.1.0, 0.09 v7.0.0, 0.07 v6.4.0, 0.12 v6.3.0, 0.17 v6.2.0, 0.32 v6.1.0, 0.33 v6.0.0, 0.35 v5.5.0, 0.26 v5.4.0, 0.29 v5.3.0, 0.30 v5.2.0, 0.15 v5.1.0, 0.14 v5.0.0, 0.25 v4.1.0, 0.26 v4.0.1, 0.30 v4.0.0, 0.29 v3.7.0, 0.20 v3.5.0, 0.21 v3.4.0, 0.32 v3.3.0, 0.14 v3.2.0
% Syntax   : Number of formulae    :   13 (   6 unit)
%            Number of atoms       :   25 (   7 equality)
%            Maximal formula depth :    8 (   5 average)
%            Number of connectives :   18 (   6 ~  ;   2  |;   0  &)
%                                         (   5 <=>;   5 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   0 constant; 2-2 arity)
%            Number of variables   :   30 (   2 singleton;  28 !;   2 ?)
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

fof(commutativity_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,B) = set_union2(B,A) )).

fof(d2_tarski,axiom,(
    ! [A,B,C] :
      ( C = unordered_pair(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( D = A
            | D = B ) ) ) )).

fof(d2_xboole_0,axiom,(
    ! [A,B,C] :
      ( C = set_union2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) ) ) )).

fof(d3_tarski,axiom,(
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,A)
         => in(C,B) ) ) )).

fof(fc2_xboole_0,axiom,(
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) )).

fof(fc3_xboole_0,axiom,(
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) )).

fof(idempotence_k2_xboole_0,axiom,(
    ! [A,B] : set_union2(A,A) = A )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t47_zfmisc_1,conjecture,(
    ! [A,B,C] :
      ( subset(set_union2(unordered_pair(A,B),C),C)
     => in(A,C) ) )).
%------------------------------------------------------------------------------
