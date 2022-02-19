%------------------------------------------------------------------------------
% File     : SET882+1 : TPTP v7.4.0. Released v3.2.0.
% Domain   : Set theory
% Problem  : A != B => diff(unordered_pair(A,B),singleton(B)) = singleton(A)
% Version  : [Urb06] axioms : Especial.
% English  :

% Refs     : [Byl90] Bylinski (1990), Some Basic Properties of Sets
%          : [Urb06] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb06]
% Names    : zfmisc_1__t23_zfmisc_1 [Urb06]

% Status   : Theorem
% Rating   : 0.19 v7.4.0, 0.10 v7.2.0, 0.07 v7.1.0, 0.09 v7.0.0, 0.07 v6.4.0, 0.12 v6.2.0, 0.28 v6.1.0, 0.27 v6.0.0, 0.22 v5.5.0, 0.11 v5.4.0, 0.14 v5.3.0, 0.26 v5.2.0, 0.00 v5.0.0, 0.17 v4.0.1, 0.22 v4.0.0, 0.21 v3.7.0, 0.10 v3.5.0, 0.11 v3.4.0, 0.16 v3.3.0, 0.21 v3.2.0
% Syntax   : Number of formulae    :    7 (   3 unit)
%            Number of atoms       :   14 (   7 equality)
%            Maximal formula depth :    7 (   4 average)
%            Number of connectives :   11 (   4 ~  ;   1  |;   1  &)
%                                         (   3 <=>;   2 =>;   0 <=)
%                                         (   0 <~>;   0 ~|;   0 ~&)
%            Number of predicates  :    3 (   0 propositional; 1-2 arity)
%            Number of functors    :    3 (   0 constant; 1-2 arity)
%            Number of variables   :   14 (   0 singleton;  12 !;   2 ?)
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

fof(d1_tarski,axiom,(
    ! [A,B] :
      ( B = singleton(A)
    <=> ! [C] :
          ( in(C,B)
        <=> C = A ) ) )).

fof(l39_zfmisc_1,axiom,(
    ! [A,B,C] :
      ( set_difference(unordered_pair(A,B),C) = singleton(A)
    <=> ( ~ in(A,C)
        & ( in(B,C)
          | A = B ) ) ) )).

fof(rc1_xboole_0,axiom,(
    ? [A] : empty(A) )).

fof(rc2_xboole_0,axiom,(
    ? [A] : ~ empty(A) )).

fof(t23_zfmisc_1,conjecture,(
    ! [A,B] :
      ( A != B
     => set_difference(unordered_pair(A,B),singleton(B)) = singleton(A) ) )).
%------------------------------------------------------------------------------
