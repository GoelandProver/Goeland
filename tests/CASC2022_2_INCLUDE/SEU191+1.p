%------------------------------------------------------------------------------
% File     : SEU191+1 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP bushy problem t74_relat_1
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : bushy-t74_relat_1 [Urb07]

% Status   : Theorem
% Rating   : 0.64 v8.1.0, 0.50 v7.4.0, 0.43 v7.3.0, 0.52 v7.1.0, 0.48 v7.0.0, 0.57 v6.4.0, 0.58 v6.3.0, 0.54 v6.2.0, 0.56 v6.1.0, 0.67 v6.0.0, 0.70 v5.5.0, 0.78 v5.4.0, 0.79 v5.3.0, 0.81 v5.2.0, 0.70 v5.1.0, 0.71 v5.0.0, 0.75 v4.1.0, 0.74 v4.0.0, 0.75 v3.7.0, 0.70 v3.5.0, 0.79 v3.4.0, 0.84 v3.3.0
% Syntax   : Number of formulae    :   31 (  15 unt;   0 def)
%            Number of atoms       :   64 (   7 equ)
%            Maximal formula atoms :    7 (   2 avg)
%            Number of connectives :   42 (   9   ~;   1   |;  14   &)
%                                         (   5 <=>;  13  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   4 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :    6 (   4 usr;   1 prp; 0-2 aty)
%            Number of functors    :    6 (   6 usr;   1 con; 0-2 aty)
%            Number of variables   :   48 (  42   !;   6   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ( B = identity_relation(A)
      <=> ! [C,D] :
            ( in(ordered_pair(C,D),B)
          <=> ( in(C,A)
              & C = D ) ) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( relation(C)
             => ( C = relation_composition(A,B)
              <=> ! [D,E] :
                    ( in(ordered_pair(D,E),C)
                  <=> ? [F] :
                        ( in(ordered_pair(D,F),A)
                        & in(ordered_pair(F,E),B) ) ) ) ) ) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(relation_composition(A,B)) ) ).

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( empty(A)
        & relation(B) )
     => ( empty(relation_composition(B,A))
        & relation(relation_composition(B,A)) ) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( empty(A)
        & relation(B) )
     => ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) ) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( empty(A)
      & relation(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & relation(A) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => A = empty_set ) ).

fof(t74_relat_1,conjecture,
    ! [A,B,C,D] :
      ( relation(D)
     => ( in(ordered_pair(A,B),relation_composition(identity_relation(C),D))
      <=> ( in(A,C)
          & in(ordered_pair(A,B),D) ) ) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

%------------------------------------------------------------------------------
