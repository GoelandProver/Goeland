%------------------------------------------------------------------------------
% File     : SEU289+1 : TPTP v8.1.2. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP bushy problem t28_wellord2
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : bushy-t28_wellord2 [Urb07]

% Status   : CounterSatisfiable
% Rating   : 1.00 v3.7.0, 0.95 v3.5.0, 1.00 v3.3.0
% Syntax   : Number of formulae    :   59 (  22 unt;   0 def)
%            Number of atoms       :  184 (  23 equ)
%            Maximal formula atoms :   25 (   3 avg)
%            Number of connectives :  148 (  23   ~;   1   |;  79   &)
%                                         (  13 <=>;  32  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   17 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   20 (  18 usr;   1 prp; 0-2 aty)
%            Number of functors    :   10 (  10 usr;   1 con; 0-2 aty)
%            Number of variables   :  107 (  90   !;  17   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & empty(A)
        & function(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(A)
        & epsilon_connected(A) )
     => ordinal(A) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( empty(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) ) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_reflexive_in(A,B)
        <=> ! [C] :
              ( in(C,B)
             => in(ordered_pair(C,C),A) ) ) ) ).

fof(d1_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = fiber(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ( D != B
                & in(ordered_pair(D,B),A) ) ) ) ) ).

fof(d3_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_well_founded_in(A,B)
        <=> ! [C] :
              ~ ( subset(C,B)
                & C != empty_set
                & ! [D] :
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) ) ) ) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_intersection2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) ).

fof(d4_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_antisymmetric_in(A,B)
        <=> ! [C,D] :
              ( ( in(C,B)
                & in(D,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,C),A) )
             => C = D ) ) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( B = union(A)
    <=> ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(C,D)
              & in(D,A) ) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(d5_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( well_orders(A,B)
        <=> ( is_reflexive_in(A,B)
            & is_transitive_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_connected_in(A,B)
            & is_well_founded_in(A,B) ) ) ) ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_connected_in(A,B)
        <=> ! [C,D] :
              ~ ( in(C,B)
                & in(D,B)
                & C != D
                & ~ in(ordered_pair(C,D),A)
                & ~ in(ordered_pair(D,C),A) ) ) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
    <=> set_intersection2(A,B) = empty_set ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(union(A))
        & epsilon_connected(union(A))
        & ordinal(union(A)) ) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A)
      & function(A) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & one_to_one(A)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & one_to_one(A) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( ~ empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(s2_funct_1__e10_24__wellord2,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ( ( ! [C,D,E] :
              ( ( in(C,A)
                & ? [F] :
                    ( C = F
                    & in(D,F)
                    & ! [G] :
                        ( in(G,F)
                       => in(ordered_pair(D,G),B) ) )
                & ? [H] :
                    ( C = H
                    & in(E,H)
                    & ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(E,I),B) ) ) )
             => D = E )
          & ! [C] :
              ~ ( in(C,A)
                & ! [D] :
                    ~ ? [J] :
                        ( C = J
                        & in(D,J)
                        & ! [K] :
                            ( in(K,J)
                           => in(ordered_pair(D,K),B) ) ) ) )
       => ? [C] :
            ( relation(C)
            & function(C)
            & relation_dom(C) = A
            & ! [D] :
                ( in(D,A)
               => ? [L] :
                    ( D = L
                    & in(apply(C,D),L)
                    & ! [M] :
                        ( in(M,L)
                       => in(ordered_pair(apply(C,D),M),B) ) ) ) ) ) ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(t26_wellord2,axiom,
    ! [A] :
    ? [B] :
      ( relation(B)
      & well_orders(B,A) ) ).

fof(t28_wellord2,conjecture,
    ! [A] :
      ( ~ empty(A)
     => ~ ( ! [B] :
              ~ ( in(B,A)
                & B = empty_set )
          & ! [B] :
              ( ( relation(B)
                & function(B) )
             => ~ ( relation_dom(B) = A
                  & ! [C] :
                      ( in(C,A)
                     => in(apply(B,C),C) ) ) ) ) ) ).

fof(t2_boole,axiom,
    ! [A] : set_intersection2(A,empty_set) = empty_set ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => A = empty_set ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

fof(t92_zfmisc_1,axiom,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

%------------------------------------------------------------------------------
