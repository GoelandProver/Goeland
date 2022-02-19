%------------------------------------------------------------------------------
% File     : SET912+1 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : ( in(A,B) & in(C,B) ) => intsctn(uno_pair(A,C),B) = uno_pair(A,C)
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t53_zfmisc_1 [Urb06]

% Status   : Theorem
% Rating   : 0.06 v7.4.0, 0.03 v7.1.0, 0.00 v6.4.0, 0.04 v6.3.0, 0.00 v6.2.0, 0.04 v6.1.0, 0.07 v6.0.0, 0.04 v5.3.0, 0.15 v5.2.0, 0.05 v5.0.0, 0.08 v4.1.0, 0.09 v4.0.0, 0.08 v3.7.0, 0.10 v3.5.0, 0.11 v3.3.0, 0.07 v3.2.0
% Syntax   : Number of formulae    :   10 (   6 unit)
%            Number of atoms       :   16 (   5 equality)
%            Maximal formula depth :    6 (   4 average)
%            Number of connectives :    8 (   2 ~  ;   0  |;   2  &)
%                                         (   1 <=>;   3 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    4 (   0 propositional; 1-2 arity)
%            Number of functors    :    2 (   0 constant; 2-2 arity)
%            Number of variables   :   20 (   2 singleton;  18 !;   2 ?)
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

fof(commutativity_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) )).

fof(idempotence_k3_xboole_0,axiom,(
    ! [A,B] : set_intersection2(A,A) = A )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(reflexivity_r1_tarski,axiom,(
    ! [A,B] : subset(A,A) )).

fof(t28_xboole_1,axiom,(
    ! [A,B] :
      ( subset(A,B)
     => set_intersection2(A,B) = A ) )).

fof(t38_zfmisc_1,axiom,(
    ! [A,B,C] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(A,C)
        & in(B,C) ) ) )).

fof(t53_zfmisc_1,conjecture,(
    ! [A,B,C] :
      ( ( in(A,B)
        & in(C,B) )
     => set_intersection2(unordered_pair(A,C),B) = unordered_pair(A,C) ) )).
%------------------------------------------------------------------------------
