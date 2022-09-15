%------------------------------------------------------------------------------
% File     : SEU284+2 : TPTP v8.1.0. Released v3.3.0.
% Domain   : Set theory
% Problem  : MPTP chainy problem s3_funct_1__e16_22__wellord2
% Version  : [Urb07] axioms : Especial.
% English  :

% Refs     : [Ban01] Bancerek et al. (2001), On the Characterizations of Co
%          : [Urb07] Urban (2006), Email to G. Sutcliffe
% Source   : [Urb07]
% Names    : chainy-s3_funct_1__e16_22__wellord2 [Urb07]

% Status   : Theorem
% Rating   : 0.78 v8.1.0, 0.69 v7.5.0, 0.84 v7.4.0, 0.60 v7.3.0, 0.66 v7.1.0, 0.65 v7.0.0, 0.70 v6.4.0, 0.73 v6.3.0, 0.75 v6.2.0, 0.80 v6.1.0, 0.93 v6.0.0, 0.87 v5.5.0, 0.89 v5.4.0, 0.93 v5.2.0, 0.85 v5.1.0, 0.86 v5.0.0, 0.92 v4.1.0, 0.91 v4.0.0, 0.92 v3.7.0, 0.80 v3.5.0, 0.89 v3.3.0
% Syntax   : Number of formulae    :  371 (  68 unt;   0 def)
%            Number of atoms       : 1246 ( 245 equ)
%            Maximal formula atoms :   16 (   3 avg)
%            Number of connectives :  992 ( 117   ~;   8   |; 367   &)
%                                         ( 139 <=>; 361  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   6 avg)
%            Maximal term depth    :    4 (   1 avg)
%            Number of predicates  :   34 (  32 usr;   1 prp; 0-3 aty)
%            Number of functors    :   38 (  38 usr;   1 con; 0-3 aty)
%            Number of variables   :  884 ( 805   !;  79   ?)
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

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

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

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,B) = set_union2(B,A) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
        | ordinal_subset(B,A) ) ) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ( B = identity_relation(A)
      <=> ! [C,D] :
            ( in(ordered_pair(C,D),B)
          <=> ( in(C,A)
              & C = D ) ) ) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( A = B
    <=> ( subset(A,B)
        & subset(B,A) ) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( relation(C)
         => ( C = relation_dom_restriction(A,B)
          <=> ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,B)
                  & in(ordered_pair(D,E),A) ) ) ) ) ) ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( C = relation_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(E,relation_dom(A))
                  & in(E,B)
                  & D = apply(A,E) ) ) ) ) ).

fof(d12_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ! [C] :
          ( relation(C)
         => ( C = relation_rng_restriction(A,B)
          <=> ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(E,A)
                  & in(ordered_pair(D,E),B) ) ) ) ) ) ).

fof(d12_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) ) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( C = relation_inverse_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ( in(D,relation_dom(A))
                & in(apply(A,D),B) ) ) ) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = relation_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(ordered_pair(E,D),A)
                  & in(E,B) ) ) ) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = relation_inverse_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(ordered_pair(D,E),A)
                  & in(E,B) ) ) ) ) ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( connected(A)
      <=> is_connected_in(A,relation_field(A)) ) ) ).

fof(d16_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( transitive(A)
      <=> is_transitive_in(A,relation_field(A)) ) ) ).

fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( D = unordered_triple(A,B,C)
    <=> ! [E] :
          ( in(E,D)
        <=> ~ ( E != A
              & E != B
              & E != C ) ) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( function(A)
    <=> ! [B,C,D] :
          ( ( in(ordered_pair(B,C),A)
            & in(ordered_pair(B,D),A) )
         => C = D ) ) ).

fof(d1_mcart_1,axiom,
    ! [A] :
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] :
          ( B = pair_first(A)
        <=> ! [C,D] :
              ( A = ordered_pair(C,D)
             => B = C ) ) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : succ(A) = set_union2(A,singleton(A)) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( relation(A)
    <=> ! [B] :
          ~ ( in(B,A)
            & ! [C,D] : B != ordered_pair(C,D) ) ) ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_reflexive_in(A,B)
        <=> ! [C] :
              ( in(C,B)
             => in(ordered_pair(C,C),A) ) ) ) ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> subset(C,cartesian_product2(A,B)) ) ).

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

fof(d1_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = fiber(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ( D != B
                & in(ordered_pair(D,B),A) ) ) ) ) ).

fof(d1_wellord2,axiom,
    ! [A,B] :
      ( relation(B)
     => ( B = inclusion_relation(A)
      <=> ( relation_field(B) = A
          & ! [C,D] :
              ( ( in(C,A)
                & in(D,A) )
             => ( in(ordered_pair(C,D),B)
              <=> subset(C,D) ) ) ) ) ) ).

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

fof(d2_mcart_1,axiom,
    ! [A] :
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] :
          ( B = pair_second(A)
        <=> ! [C,D] :
              ( A = ordered_pair(C,D)
             => B = D ) ) ) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( epsilon_transitive(A)
    <=> ! [B] :
          ( in(B,A)
         => subset(B,A) ) ) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( A = B
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),A)
              <=> in(ordered_pair(C,D),B) ) ) ) ) ).

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

fof(d2_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( well_founded_relation(A)
      <=> ! [B] :
            ~ ( subset(B,relation_field(A))
              & B != empty_set
              & ! [C] :
                  ~ ( in(C,B)
                    & disjoint(fiber(A,C),B) ) ) ) ) ).

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

fof(d3_ordinal1,axiom,
    ! [A] :
      ( epsilon_connected(A)
    <=> ! [B,C] :
          ~ ( in(B,A)
            & in(C,A)
            & ~ in(B,C)
            & B != C
            & ~ in(C,B) ) ) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(A,B)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),A)
               => in(ordered_pair(C,D),B) ) ) ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,A)
         => in(C,B) ) ) ).

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

fof(d4_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( ( in(B,relation_dom(A))
           => ( C = apply(A,B)
            <=> in(ordered_pair(B,C),A) ) )
          & ( ~ in(B,relation_dom(A))
           => ( C = apply(A,B)
            <=> C = empty_set ) ) ) ) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
    <=> ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( B = relation_dom(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) ) ) ) ).

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

fof(d4_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( well_ordering(A)
      <=> ( reflexive(A)
          & transitive(A)
          & antisymmetric(A)
          & connected(A)
          & well_founded_relation(A) ) ) ) ).

fof(d4_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> ? [C] :
          ( relation(C)
          & function(C)
          & one_to_one(C)
          & relation_dom(C) = A
          & relation_rng(C) = B ) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_difference(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B] :
          ( B = relation_rng(A)
        <=> ! [C] :
              ( in(C,B)
            <=> ? [D] :
                  ( in(D,relation_dom(A))
                  & C = apply(A,D) ) ) ) ) ).

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

fof(d6_ordinal1,axiom,
    ! [A] :
      ( being_limit_ordinal(A)
    <=> A = union(A) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) ).

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

fof(d6_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( B = relation_inverse(A)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(D,C),A) ) ) ) ) ).

fof(d7_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
              <=> ( relation_dom(C) = relation_field(A)
                  & relation_rng(C) = relation_field(B)
                  & one_to_one(C)
                  & ! [D,E] :
                      ( in(ordered_pair(D,E),A)
                    <=> ( in(D,relation_field(A))
                        & in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B) ) ) ) ) ) ) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
    <=> set_intersection2(A,B) = empty_set ) ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
      <=> ! [B,C] :
            ( ( in(B,relation_dom(A))
              & in(C,relation_dom(A))
              & apply(A,B) = apply(A,C) )
           => B = C ) ) ) ).

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

fof(d8_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_transitive_in(A,B)
        <=> ! [C,D,E] :
              ( ( in(C,B)
                & in(D,B)
                & in(E,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,E),A) )
             => in(ordered_pair(C,E),A) ) ) ) ).

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

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => function_inverse(A) = relation_inverse(A) ) ) ).

fof(d9_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( reflexive(A)
      <=> is_reflexive_in(A,relation_field(A)) ) ) ).

fof(dt_k10_relat_1,axiom,
    $true ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(dt_k1_mcart_1,axiom,
    $true ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(dt_k1_wellord2,axiom,
    ! [A] : relation(inclusion_relation(A)) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( relation(function_inverse(A))
        & function(function_inverse(A)) ) ) ).

fof(dt_k2_mcart_1,axiom,
    $true ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

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

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation(relation_inverse(A)) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_dom_as_subset(A,B,C),powerset(A)) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(relation_composition(A,B)) ) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_rng_as_subset(A,B,C),powerset(B)) ) ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) ).

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(meet_of_subsets(A,B),powerset(A)) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => relation(relation_rng_restriction(A,B)) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( empty(A)
        & relation(B) )
     => ( empty(relation_composition(B,A))
        & relation(relation_composition(B,A)) ) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_inverse(A))
        & relation(relation_inverse(A)) ) ) ).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) ) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation_empty_yielding(A) )
     => ( relation(relation_dom_restriction(A,B))
        & relation_empty_yielding(relation_dom_restriction(A,B)) ) ) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & function(A)
        & relation(B)
        & function(B) )
     => ( relation(relation_composition(A,B))
        & function(relation_composition(A,B)) ) ) ).

fof(fc1_ordinal1,axiom,
    ! [A] : ~ empty(succ(A)) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(set_intersection2(A,B)) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( relation(identity_relation(A))
      & function(identity_relation(A)) ) ).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set) ) ).

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

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A)
        & one_to_one(A) )
     => ( relation(relation_inverse(A))
        & function(relation_inverse(A)) ) ) ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & ordinal(succ(A)) ) ) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(set_difference(A,B)) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & function(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(union(A))
        & epsilon_connected(union(A))
        & ordinal(union(A)) ) ) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( relation(relation_rng_restriction(A,B))
        & function(relation_rng_restriction(A,B)) ) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_rng(A))
        & relation(relation_rng(A)) ) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( empty(A)
        & relation(B) )
     => ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) ) ) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,A) = A ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => subset_complement(A,subset_complement(A,B)) = B ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation_inverse(relation_inverse(A)) = A ) ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(l1_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( reflexive(A)
      <=> ! [B] :
            ( in(B,relation_field(A))
           => in(ordered_pair(B,B),A) ) ) ) ).

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

fof(l29_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B)) ) ).

fof(l2_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( transitive(A)
      <=> ! [B,C,D] :
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,D),A) )
           => in(ordered_pair(B,D),A) ) ) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(l30_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( well_ordering(B)
          & equipotent(A,relation_field(B))
          & ! [C] :
              ( relation(C)
             => ~ well_orders(C,A) ) ) ) ).

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

fof(l3_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( antisymmetric(A)
      <=> ! [B,C] :
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,B),A) )
           => B = C ) ) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) ) ) ).

fof(l4_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( connected(A)
      <=> ! [B,C] :
            ~ ( in(B,relation_field(A))
              & in(C,relation_field(A))
              & B != C
              & ~ in(ordered_pair(B,C),A)
              & ~ in(ordered_pair(C,B),A) ) ) ) ).

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

fof(l82_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
      <=> ( in(B,relation_dom(C))
          & in(B,A) ) ) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

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

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & relation(A) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

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

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_dom_as_subset(A,B,C) = relation_dom(C) ) ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_rng_as_subset(A,B,C) = relation_rng(C) ) ).

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

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
      <=> subset(A,B) ) ) ).

fof(redefinition_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> are_equipotent(A,B) ) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & ordinal(B) )
     => ordinal_subset(A,A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(reflexivity_r2_wellord2,axiom,
    ! [A,B] : equipotent(A,A) ).

fof(s1_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(B,A)
            & C = singleton(B)
            & in(B,A)
            & D = singleton(B) )
         => C = D )
     => ? [B] :
          ( relation(B)
          & function(B)
          & ! [C,D] :
              ( in(ordered_pair(C,D),B)
            <=> ( in(C,A)
                & in(C,A)
                & D = singleton(C) ) ) ) ) ).

fof(s1_ordinal1__e8_6__wellord2,lemma,
    ! [A] :
      ( ? [B] :
          ( ordinal(B)
          & in(B,A) )
     => ? [B] :
          ( ordinal(B)
          & in(B,A)
          & ! [C] :
              ( ordinal(C)
             => ( in(C,A)
               => ordinal_subset(B,C) ) ) ) ) ).

fof(s1_relat_1__e6_21__wellord2,lemma,
    ! [A,B,C] :
      ( ( relation(B)
        & relation(C)
        & function(C) )
     => ? [D] :
          ( relation(D)
          & ! [E,F] :
              ( in(ordered_pair(E,F),D)
            <=> ( in(E,A)
                & in(F,A)
                & in(ordered_pair(apply(C,E),apply(C,F)),B) ) ) ) ) ).

fof(s1_tarski__e16_22__wellord2__1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(B,A)
            & C = singleton(B)
            & in(B,A)
            & D = singleton(B) )
         => C = D )
     => ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & in(D,A)
              & C = singleton(D) ) ) ) ).

fof(s1_tarski__e16_22__wellord2__2,axiom,
    ! [A,B] :
      ( ! [C,D,E] :
          ( ( C = D
            & ? [F,G] :
                ( ordered_pair(F,G) = D
                & in(F,A)
                & G = singleton(F) )
            & C = E
            & ? [H,I] :
                ( ordered_pair(H,I) = E
                & in(H,A)
                & I = singleton(H) ) )
         => D = E )
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ? [E] :
              ( in(E,cartesian_product2(A,B))
              & E = D
              & ? [J,K] :
                  ( ordered_pair(J,K) = D
                  & in(J,A)
                  & K = singleton(J) ) ) ) ) ).

fof(s1_tarski__e6_21__wellord2__1,axiom,
    ! [A,B,C] :
      ( ( relation(B)
        & relation(C)
        & function(C) )
     => ( ! [D,E,F] :
            ( ( D = E
              & ? [G,H] :
                  ( E = ordered_pair(G,H)
                  & in(ordered_pair(apply(C,G),apply(C,H)),B) )
              & D = F
              & ? [I,J] :
                  ( F = ordered_pair(I,J)
                  & in(ordered_pair(apply(C,I),apply(C,J)),B) ) )
           => E = F )
       => ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( in(F,cartesian_product2(A,A))
                & F = E
                & ? [K,L] :
                    ( E = ordered_pair(K,L)
                    & in(ordered_pair(apply(C,K),apply(C,L)),B) ) ) ) ) ) ).

fof(s1_tarski__e6_22__wellord2__1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( B = C
            & ordinal(C)
            & B = D
            & ordinal(D) )
         => C = D )
     => ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & D = C
              & ordinal(C) ) ) ) ).

fof(s1_tarski__e8_6__wellord2__1,axiom,
    ! [A,B] :
      ( ordinal(B)
     => ( ! [C,D,E] :
            ( ( C = D
              & ? [F] :
                  ( ordinal(F)
                  & D = F
                  & in(F,A) )
              & C = E
              & ? [G] :
                  ( ordinal(G)
                  & E = G
                  & in(G,A) ) )
           => D = E )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,succ(B))
                & E = D
                & ? [H] :
                    ( ordinal(H)
                    & D = H
                    & in(H,A) ) ) ) ) ) ).

fof(s1_xboole_0__e16_22__wellord2__1,lemma,
    ! [A,B] :
    ? [C] :
    ! [D] :
      ( in(D,C)
    <=> ( in(D,cartesian_product2(A,B))
        & ? [E,F] :
            ( ordered_pair(E,F) = D
            & in(E,A)
            & F = singleton(E) ) ) ) ).

fof(s1_xboole_0__e6_21__wellord2__1,lemma,
    ! [A,B,C] :
      ( ( relation(B)
        & relation(C)
        & function(C) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(E,cartesian_product2(A,A))
            & ? [F,G] :
                ( E = ordered_pair(F,G)
                & in(ordered_pair(apply(C,F),apply(C,G)),B) ) ) ) ) ).

fof(s1_xboole_0__e6_22__wellord2,lemma,
    ! [A] :
    ? [B] :
    ! [C] :
      ( in(C,B)
    <=> ( in(C,A)
        & ordinal(C) ) ) ).

fof(s1_xboole_0__e8_6__wellord2__1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,succ(B))
            & ? [E] :
                ( ordinal(E)
                & D = E
                & in(E,A) ) ) ) ) ).

fof(s2_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ( ! [B,C,D] :
            ( ( in(B,A)
              & C = singleton(B)
              & D = singleton(B) )
           => C = D )
        & ! [B] :
            ~ ( in(B,A)
              & ! [C] : C != singleton(B) ) )
     => ? [B] :
          ( relation(B)
          & function(B)
          & relation_dom(B) = A
          & ! [C] :
              ( in(C,A)
             => apply(B,C) = singleton(C) ) ) ) ).

fof(s3_funct_1__e16_22__wellord2,conjecture,
    ! [A] :
    ? [B] :
      ( relation(B)
      & function(B)
      & relation_dom(B) = A
      & ! [C] :
          ( in(C,A)
         => apply(B,C) = singleton(C) ) ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

fof(symmetry_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
     => equipotent(B,A) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(t10_ordinal1,lemma,
    ! [A] : in(A,succ(A)) ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( unordered_pair(A,B) = unordered_pair(C,D)
        & A != C
        & A != D ) ).

fof(t115_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_rng(relation_rng_restriction(B,C)))
      <=> ( in(A,B)
          & in(A,relation_rng(C)) ) ) ) ).

fof(t116_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_rng_restriction(A,B)),A) ) ).

fof(t117_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng_restriction(A,B),B) ) ).

fof(t118_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B)) ) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) ).

fof(t119_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_rng(relation_rng_restriction(A,B)) = set_intersection2(relation_rng(B),A) ) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( subset(A,B)
        & subset(C,D) )
     => subset(cartesian_product2(A,C),cartesian_product2(B,D)) ) ).

fof(t12_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) ) ) ).

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

fof(t140_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => relation_dom_restriction(relation_rng_restriction(A,C),B) = relation_rng_restriction(A,relation_dom_restriction(C,B)) ) ).

fof(t143_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_image(C,B))
      <=> ? [D] :
            ( in(D,relation_dom(C))
            & in(ordered_pair(D,A),C)
            & in(D,B) ) ) ) ).

fof(t144_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_image(B,A),relation_rng(B)) ) ).

fof(t145_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => subset(relation_image(B,relation_inverse_image(B,A)),A) ) ).

fof(t145_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_image(B,A) = relation_image(B,set_intersection2(relation_dom(B),A)) ) ).

fof(t146_funct_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) ).

fof(t146_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => relation_image(A,relation_dom(A)) = relation_rng(A) ) ).

fof(t147_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( subset(A,relation_rng(B))
       => relation_image(B,relation_inverse_image(B,A)) = A ) ) ).

fof(t14_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( subset(relation_rng(D),B)
       => relation_of2_as_subset(D,C,B) ) ) ).

fof(t160_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => relation_rng(relation_composition(A,B)) = relation_image(B,relation_rng(A)) ) ) ).

fof(t166_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_inverse_image(C,B))
      <=> ? [D] :
            ( in(D,relation_rng(C))
            & in(ordered_pair(A,D),C)
            & in(D,B) ) ) ) ).

fof(t167_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_inverse_image(B,A),relation_dom(B)) ) ).

fof(t16_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( subset(A,B)
       => relation_of2_as_subset(D,C,B) ) ) ).

fof(t16_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) ) ) ).

fof(t174_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( A != empty_set
          & subset(A,relation_rng(B))
          & relation_inverse_image(B,A) = empty_set ) ) ).

fof(t178_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( subset(A,B)
       => subset(relation_inverse_image(C,A),relation_inverse_image(C,B)) ) ) ).

fof(t17_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(t18_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_restriction(B,A) = relation_rng_restriction(A,relation_dom_restriction(B,A)) ) ).

fof(t19_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,relation_field(C))
          & in(A,B) ) ) ) ).

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

fof(t20_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),relation_field(B))
        & subset(relation_field(relation_restriction(B,A)),A) ) ) ).

fof(t21_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(relation_composition(C,B)))
          <=> ( in(A,relation_dom(C))
              & in(apply(C,A),relation_dom(B)) ) ) ) ) ).

fof(t21_ordinal1,lemma,
    ! [A] :
      ( epsilon_transitive(A)
     => ! [B] :
          ( ordinal(B)
         => ( proper_subset(A,B)
           => in(A,B) ) ) ) ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => subset(A,cartesian_product2(relation_dom(A),relation_rng(A))) ) ).

fof(t21_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => subset(fiber(relation_restriction(C,A),B),fiber(C,B)) ) ).

fof(t22_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(relation_composition(C,B)))
           => apply(relation_composition(C,B),A) = apply(B,apply(C,A)) ) ) ) ).

fof(t22_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,B,A)
     => ( ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(D,E),C) )
      <=> relation_dom_as_subset(B,A,C) = B ) ) ).

fof(t22_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( reflexive(B)
       => reflexive(relation_restriction(B,A)) ) ) ).

fof(t23_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(B))
           => apply(relation_composition(B,C),A) = apply(C,apply(B,A)) ) ) ) ).

fof(t23_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) ).

fof(t23_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(E,D),C) )
      <=> relation_rng_as_subset(A,B,C) = B ) ) ).

fof(t23_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( connected(B)
       => connected(relation_restriction(B,A)) ) ) ).

fof(t24_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ordinal(B)
         => ~ ( ~ in(A,B)
              & A != B
              & ~ in(B,A) ) ) ) ).

fof(t24_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( transitive(B)
       => transitive(relation_restriction(B,A)) ) ) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(A,B)
           => ( subset(relation_dom(A),relation_dom(B))
              & subset(relation_rng(A),relation_rng(B)) ) ) ) ) ).

fof(t25_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( antisymmetric(B)
       => antisymmetric(relation_restriction(B,A)) ) ) ).

fof(t25_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_orders(B,A)
       => ( relation_field(relation_restriction(B,A)) = A
          & well_ordering(relation_restriction(B,A)) ) ) ) ).

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

fof(t2_wellord2,lemma,
    ! [A] : reflexive(inclusion_relation(A)) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(t30_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(A,relation_field(C))
          & in(B,relation_field(C)) ) ) ) ).

fof(t31_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( in(B,A)
         => ( ordinal(B)
            & subset(B,A) ) )
     => ordinal(A) ) ).

fof(t31_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_founded_relation(B)
       => well_founded_relation(relation_restriction(B,A)) ) ) ).

fof(t32_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ~ ( subset(A,B)
          & A != empty_set
          & ! [C] :
              ( ordinal(C)
             => ~ ( in(C,A)
                  & ! [D] :
                      ( ordinal(D)
                     => ( in(D,A)
                       => ordinal_subset(C,D) ) ) ) ) ) ) ).

fof(t32_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_ordering(B)
       => well_ordering(relation_restriction(B,A)) ) ) ).

fof(t33_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ordinal(B)
         => ( in(A,B)
          <=> ordinal_subset(succ(A),B) ) ) ) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ordered_pair(A,B) = ordered_pair(C,D)
     => ( A = C
        & B = D ) ) ).

fof(t34_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( B = identity_relation(A)
      <=> ( relation_dom(B) = A
          & ! [C] :
              ( in(C,A)
             => apply(B,C) = C ) ) ) ) ).

fof(t35_funct_1,lemma,
    ! [A,B] :
      ( in(B,A)
     => apply(identity_relation(A),B) = B ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(t37_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( relation_rng(A) = relation_dom(relation_inverse(A))
        & relation_dom(A) = relation_rng(relation_inverse(A)) ) ) ).

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

fof(t39_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( ( well_ordering(B)
          & subset(A,relation_field(B)) )
       => relation_field(relation_restriction(B,A)) = A ) ) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( A = empty_set
        | A = singleton(B) ) ) ).

fof(t3_boole,axiom,
    ! [A] : set_difference(A,empty_set) = A ).

fof(t3_ordinal1,lemma,
    ! [A,B,C] :
      ~ ( in(A,B)
        & in(B,C)
        & in(C,A) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(t3_wellord2,lemma,
    ! [A] : transitive(inclusion_relation(A)) ).

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

fof(t41_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ( being_limit_ordinal(A)
      <=> ! [B] :
            ( ordinal(B)
           => ( in(B,A)
             => in(succ(B),A) ) ) ) ) ).

fof(t42_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ( ~ ( ~ being_limit_ordinal(A)
            & ! [B] :
                ( ordinal(B)
               => A != succ(B) ) )
        & ~ ( ? [B] :
                ( ordinal(B)
                & A = succ(B) )
            & being_limit_ordinal(A) ) ) ) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) ) ) ).

fof(t44_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => subset(relation_dom(relation_composition(A,B)),relation_dom(A)) ) ) ).

fof(t45_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => subset(relation_rng(relation_composition(A,B)),relation_rng(B)) ) ) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => B = set_union2(A,set_difference(B,A)) ) ).

fof(t46_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(relation_composition(A,B)) = relation_dom(A) ) ) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & complements_of_subsets(A,B) = empty_set ) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) ).

fof(t47_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(relation_dom(A),relation_rng(B))
           => relation_rng(relation_composition(B,A)) = relation_rng(A) ) ) ) ).

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

fof(t49_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
               => relation_isomorphism(B,A,function_inverse(C)) ) ) ) ) ).

fof(t4_boole,axiom,
    ! [A] : set_difference(empty_set,A) = empty_set ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) ).

fof(t4_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => connected(inclusion_relation(A)) ) ).

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

fof(t53_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
               => ( ( reflexive(A)
                   => reflexive(B) )
                  & ( transitive(A)
                   => transitive(B) )
                  & ( connected(A)
                   => connected(B) )
                  & ( antisymmetric(A)
                   => antisymmetric(B) )
                  & ( well_founded_relation(A)
                   => well_founded_relation(B) ) ) ) ) ) ) ).

fof(t54_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => ! [B] :
            ( ( relation(B)
              & function(B) )
           => ( B = function_inverse(A)
            <=> ( relation_dom(B) = relation_rng(A)
                & ! [C,D] :
                    ( ( ( in(C,relation_rng(A))
                        & D = apply(B,C) )
                     => ( in(D,relation_dom(A))
                        & C = apply(A,D) ) )
                    & ( ( in(D,relation_dom(A))
                        & C = apply(A,D) )
                     => ( in(C,relation_rng(A))
                        & D = apply(B,C) ) ) ) ) ) ) ) ) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( element(C,powerset(A))
     => ~ ( in(B,subset_complement(A,C))
          & in(B,C) ) ) ).

fof(t54_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( ( well_ordering(A)
                  & relation_isomorphism(A,B,C) )
               => well_ordering(B) ) ) ) ) ).

fof(t55_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => ( relation_rng(A) = relation_dom(function_inverse(A))
          & relation_dom(A) = relation_rng(function_inverse(A)) ) ) ) ).

fof(t56_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( ! [B,C] : ~ in(ordered_pair(B,C),A)
       => A = empty_set ) ) ).

fof(t57_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( ( one_to_one(B)
          & in(A,relation_rng(B)) )
       => ( A = apply(B,apply(function_inverse(B),A))
          & A = apply(relation_composition(function_inverse(B),B),A) ) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) ).

fof(t5_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( well_founded_relation(A)
      <=> is_well_founded_in(A,relation_field(A)) ) ) ).

fof(t5_wellord2,lemma,
    ! [A] : antisymmetric(inclusion_relation(A)) ).

fof(t60_relat_1,lemma,
    ( relation_dom(empty_set) = empty_set
    & relation_rng(empty_set) = empty_set ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( subset(A,B)
        & proper_subset(B,A) ) ).

fof(t62_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => one_to_one(function_inverse(A)) ) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & disjoint(B,C) )
     => disjoint(A,C) ) ).

fof(t64_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( ( relation_dom(A) = empty_set
          | relation_rng(A) = empty_set )
       => A = empty_set ) ) ).

fof(t65_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( relation_dom(A) = empty_set
      <=> relation_rng(A) = empty_set ) ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( set_difference(A,singleton(B)) = A
    <=> ~ in(B,A) ) ).

fof(t68_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( B = relation_dom_restriction(C,A)
          <=> ( relation_dom(B) = set_intersection2(relation_dom(C),A)
              & ! [D] :
                  ( in(D,relation_dom(B))
                 => apply(B,D) = apply(C,D) ) ) ) ) ) ).

fof(t69_enumset1,lemma,
    ! [A] : unordered_pair(A,A) = singleton(A) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => A = empty_set ) ).

fof(t6_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => well_founded_relation(inclusion_relation(A)) ) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),singleton(B))
     => A = B ) ).

fof(t70_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) ) ) ).

fof(t71_relat_1,lemma,
    ! [A] :
      ( relation_dom(identity_relation(A)) = A
      & relation_rng(identity_relation(A)) = A ) ).

fof(t72_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( in(B,A)
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) ) ) ).

fof(t74_relat_1,lemma,
    ! [A,B,C,D] :
      ( relation(D)
     => ( in(ordered_pair(A,B),relation_composition(identity_relation(C),D))
      <=> ( in(A,C)
          & in(ordered_pair(A,B),D) ) ) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t7_mcart_1,lemma,
    ! [A,B] :
      ( pair_first(ordered_pair(A,B)) = A
      & pair_second(ordered_pair(A,B)) = B ) ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & ! [C] :
            ~ ( in(C,B)
              & ! [D] :
                  ~ ( in(D,B)
                    & in(D,C) ) ) ) ).

fof(t7_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => well_ordering(inclusion_relation(A)) ) ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( disjoint(A,B)
    <=> set_difference(A,B) = A ) ).

fof(t86_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_dom(relation_dom_restriction(C,B)))
      <=> ( in(A,B)
          & in(A,relation_dom(C)) ) ) ) ).

fof(t88_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom_restriction(B,A),B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

fof(t8_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( in(ordered_pair(A,B),C)
      <=> ( in(A,relation_dom(C))
          & B = apply(C,A) ) ) ) ).

fof(t8_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( well_orders(A,relation_field(A))
      <=> well_ordering(A) ) ) ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(C,B) )
     => subset(set_union2(A,C),B) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( singleton(A) = unordered_pair(B,C)
     => A = B ) ).

fof(t90_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A) ) ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(t94_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom_restriction(B,A) = relation_composition(identity_relation(A),B) ) ).

fof(t99_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B)) ) ).

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
