%------------------------------------------------------------------------------
% File     : SEU180+2 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP chainy problem t30_relat_1
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : chainy-t30_relat_1 [Urb07]

% Status   : Theorem
% Rating   : 0.36 v8.1.0, 0.39 v7.5.0, 0.38 v7.4.0, 0.27 v7.3.0, 0.34 v7.2.0, 0.38 v7.1.0, 0.35 v7.0.0, 0.37 v6.4.0, 0.42 v6.3.0, 0.46 v6.2.0, 0.48 v6.1.0, 0.53 v6.0.0, 0.52 v5.5.0, 0.59 v5.4.0, 0.64 v5.3.0, 0.70 v5.2.0, 0.60 v5.1.0, 0.57 v5.0.0, 0.50 v4.1.0, 0.52 v4.0.0, 0.54 v3.7.0, 0.55 v3.5.0, 0.42 v3.4.0, 0.53 v3.3.0
% Syntax   : Number of formulae    :  150 (  48 unt;   0 def)
%            Number of atoms       :  353 (  85 equ)
%            Maximal formula atoms :   11 (   2 avg)
%            Number of connectives :  262 (  59   ~;   6   |;  64   &)
%                                         (  47 <=>;  86  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   5 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of predicates  :   10 (   8 usr;   1 prp; 0-2 aty)
%            Number of functors    :   20 (  20 usr;   1 con; 0-3 aty)
%            Number of variables   :  321 ( 306   !;  15   ?)
% SPC      : FOF_THM_RFO_SEQ

% Comments : Translated by MPTP 0.2 from the original problem in the Mizar
%            library, www.mizar.org
%------------------------------------------------------------------------------
fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( proper_subset(A,B)
     => ~ proper_subset(B,A) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,B) = set_union2(B,A) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( A = B
    <=> ( subset(A,B)
        & subset(B,A) ) ) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( relation(A)
    <=> ! [B] :
          ~ ( in(B,A)
            & ! [C,D] : B != ordered_pair(C,D) ) ) ).

fof(d1_setfam_1,axiom,
    ! [A,B] :
      ( ( A != empty_set
       => ( B = set_meet(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ! [D] :
                  ( in(D,A)
                 => in(C,D) ) ) ) )
      & ( A = empty_set
       => ( B = set_meet(A)
        <=> B = empty_set ) ) ) ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( B = singleton(A)
    <=> ! [C] :
          ( in(C,B)
        <=> C = A ) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( A = empty_set
    <=> ! [B] : ~ in(B,A) ) ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( B = powerset(A)
    <=> ! [C] :
          ( in(C,B)
        <=> subset(C,A) ) ) ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
       => ( element(B,A)
        <=> in(B,A) ) )
      & ( empty(A)
       => ( element(B,A)
        <=> empty(B) ) ) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( C = unordered_pair(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( D = A
            | D = B ) ) ) ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_union2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) ) ) ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( C = cartesian_product2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ? [E,F] :
              ( in(E,A)
              & in(F,B)
              & D = ordered_pair(E,F) ) ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,A)
         => in(C,B) ) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_intersection2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( B = relation_dom(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) ) ) ) ).

fof(d4_subset_1,axiom,
    ! [A] : cast_to_subset(A) = A ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( B = union(A)
    <=> ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(C,D)
              & in(D,A) ) ) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_difference(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( B = relation_rng(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(D,C),A) ) ) ) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => subset_complement(A,B) = set_difference(A,B) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
    <=> set_intersection2(A,B) = empty_set ) ).

fof(d8_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ! [C] :
          ( element(C,powerset(powerset(A)))
         => ( C = complements_of_subsets(A,B)
          <=> ! [D] :
                ( element(D,powerset(A))
               => ( in(D,C)
                <=> in(subset_complement(A,D),B) ) ) ) ) ) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( proper_subset(A,B)
    <=> ( subset(A,B)
        & A != B ) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(meet_of_subsets(A,B),powerset(A)) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(set_union2(A,B)) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,A) = A ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => subset_complement(A,subset_complement(A,B)) = B ) ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(l1_zfmisc_1,lemma,
    ! [A] : singleton(A) != empty_set ).

fof(l23_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) ).

fof(l25_zfmisc_1,lemma,
    ! [A,B] :
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) ).

fof(l28_zfmisc_1,lemma,
    ! [A,B] :
      ( ~ in(A,B)
     => disjoint(singleton(A),B) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(l32_xboole_1,lemma,
    ! [A,B] :
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) ).

fof(l3_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( in(C,B)
         => in(C,A) ) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) ) ) ).

fof(l4_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) ).

fof(l50_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(l55_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(l71_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         => in(C,B) )
     => element(A,powerset(B)) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( empty(A)
      & relation(A) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(redefinition_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) ).

fof(redefinition_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => meet_of_subsets(A,B) = set_meet(B) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( unordered_pair(A,B) = unordered_pair(C,D)
        & A != C
        & A != D ) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( subset(A,B)
        & subset(C,D) )
     => subset(cartesian_product2(A,C),cartesian_product2(B,D)) ) ).

fof(t12_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_union2(A,B) = B ) ).

fof(t136_zfmisc_1,lemma,
    ! [A] :
    ? [B] :
      ( in(A,B)
      & ! [C,D] :
          ( ( in(C,B)
            & subset(D,C) )
         => in(D,B) )
      & ! [C] :
          ( in(C,B)
         => in(powerset(C),B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) ) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(t19_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(A,C) )
     => subset(A,set_intersection2(B,C)) ) ).

fof(t1_boole,axiom,
    ! [A] : set_union2(A,empty_set) = A ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(t1_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) ).

fof(t1_zfmisc_1,lemma,
    powerset(empty_set) = singleton(empty_set) ).

fof(t20_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_dom(C))
          & in(B,relation_rng(C)) ) ) ) ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => subset(A,cartesian_product2(relation_dom(A),relation_rng(A))) ) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(A,B)
           => ( subset(relation_dom(A),relation_dom(B))
              & subset(relation_rng(A),relation_rng(B)) ) ) ) ) ).

fof(t26_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_intersection2(A,C),set_intersection2(B,C)) ) ).

fof(t28_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_intersection2(A,B) = A ) ).

fof(t2_boole,axiom,
    ! [A] : set_intersection2(A,empty_set) = empty_set ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(t30_relat_1,conjecture,
    ! [A,B,C] :
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_field(C))
          & in(B,relation_field(C)) ) ) ) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ordered_pair(A,B) = ordered_pair(C,D)
     => ( A = C
        & B = D ) ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(t37_xboole_1,lemma,
    ! [A,B] :
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) ).

fof(t37_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(t38_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(A,C)
        & in(B,C) ) ) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) ).

fof(t3_boole,axiom,
    ! [A] : set_difference(A,empty_set) = A ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(t3_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ~ disjoint(A,B)
          & ! [C] :
              ~ ( in(C,A)
                & in(C,B) ) )
      & ~ ( ? [C] :
              ( in(C,A)
              & in(C,B) )
          & disjoint(A,B) ) ) ).

fof(t3_xboole_1,lemma,
    ! [A] :
      ( subset(A,empty_set)
     => A = empty_set ) ).

fof(t40_xboole_1,lemma,
    ! [A,B] : set_difference(set_union2(A,B),B) = set_difference(A,B) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) ) ) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => B = set_union2(A,set_difference(B,A)) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & complements_of_subsets(A,B) = empty_set ) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) ).

fof(t47_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => subset_difference(A,cast_to_subset(A),union_of_subsets(A,B)) = meet_of_subsets(A,complements_of_subsets(A,B)) ) ) ).

fof(t48_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => union_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B)) ) ) ).

fof(t48_xboole_1,lemma,
    ! [A,B] : set_difference(A,set_difference(A,B)) = set_intersection2(A,B) ).

fof(t4_boole,axiom,
    ! [A] : set_difference(empty_set,A) = empty_set ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) ).

fof(t4_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ~ disjoint(A,B)
          & ! [C] : ~ in(C,set_intersection2(A,B)) )
      & ~ ( ? [C] : in(C,set_intersection2(A,B))
          & disjoint(A,B) ) ) ).

fof(t50_subset_1,lemma,
    ! [A] :
      ( A != empty_set
     => ! [B] :
          ( element(B,powerset(A))
         => ! [C] :
              ( element(C,A)
             => ( ~ in(C,B)
               => in(C,subset_complement(A,B)) ) ) ) ) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( element(C,powerset(A))
     => ~ ( in(B,subset_complement(A,C))
          & in(B,C) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( subset(A,B)
        & proper_subset(B,A) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & disjoint(B,C) )
     => disjoint(A,C) ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( set_difference(A,singleton(B)) = A
    <=> ~ in(B,A) ) ).

fof(t69_enumset1,lemma,
    ! [A] : unordered_pair(A,A) = singleton(A) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => A = empty_set ) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),singleton(B))
     => A = B ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( disjoint(A,B)
    <=> set_difference(A,B) = A ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(C,B) )
     => subset(set_union2(A,C),B) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( singleton(A) = unordered_pair(B,C)
     => A = B ) ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(t99_zfmisc_1,lemma,
    ! [A] : union(powerset(A)) = A ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( in(A,B)
      & ! [C,D] :
          ( ( in(C,B)
            & subset(D,C) )
         => in(D,B) )
      & ! [C] :
          ~ ( in(C,B)
            & ! [D] :
                ~ ( in(D,B)
                  & ! [E] :
                      ( subset(E,C)
                     => in(E,D) ) ) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) ) ) ).

fof(t9_zfmisc_1,lemma,
    ! [A,B,C] :
      ( singleton(A) = unordered_pair(B,C)
     => B = C ) ).

%------------------------------------------------------------------------------
