fof(fc2_ordinal1,axiom,
    ( one_to_one(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set)
    & function(empty_set)
    & relation_empty_yielding(empty_set)
    & relation(empty_set) ) ).

fof(t17_finset_1,axiom,
    ! [A,B] :
      ( ( finite(A)
       => finite(relation_image(B,A)) )
     <= ( function(B)
        & relation(B) ) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( finite(relation_image(A,B))
     <= ( relation(A)
        & function(A)
        & finite(B) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( relation(relation_dom(A))
        & empty(relation_dom(A)) ) ) ).

fof(redefinition_k9_funct_3,axiom,
    ! [A,B] : first_projection(A,B) = first_projection_as_func_of(A,B) ).

fof(rc2_arytm_3,axiom,
    ? [A] :
      ( element(A,positive_rationals)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & ~ empty(A) ) ).

fof(rc5_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_non_empty(A)
      & function(A) ) ).

fof(dt_k2_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & function(C) )
     => element(function_image(A,B,C,D),powerset(B)) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(B)
        & ~ empty(A) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & function(B)
      & epsilon_transitive(B)
      & epsilon_connected(B)
      & finite(B)
      & natural(B)
      & ordinal(B)
      & one_to_one(B)
      & relation(B)
      & element(B,powerset(A)) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(B)
        & A != B
        & empty(A) ) ).

fof(t100_funct_3,axiom,
    ! [A] :
      ( function_image(cartesian_product2(relation_dom(A),relation_rng(A)),relation_dom(A),first_projection_as_func_of(relation_dom(A),relation_rng(A)),A) = relation_dom(A)
     <= ( function(A)
        & relation(A) ) ) ).

fof(fc8_arytm_3,axiom,
    ~ empty(positive_rationals) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( ~ in(B,A)
     <= in(A,B) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(t26_finset_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( finite(relation_rng(A))
       <= finite(relation_dom(A)) ) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A) ) ).

fof(fc5_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(relation_dom(A))
        & ordinal(relation_dom(A))
        & epsilon_transitive(relation_dom(A)) )
     <= ( relation(A)
        & transfinite_sequence(A)
        & function(A) ) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( element(A,C)
     <= ( element(B,powerset(C))
        & in(A,B) ) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & empty(A)
      & epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & function(A) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & finite(B)
          & ~ empty(B) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> element(A,powerset(B)) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(A)
        & ordinal(A)
        & epsilon_connected(A) )
     <= empty(A) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( empty(B)
        & in(A,B) ) ).

fof(rc1_arytm_3,axiom,
    ? [A] :
      ( natural(A)
      & ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A)
      & ~ empty(A) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) ) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & ~ empty(A) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( finite(A)
      & ~ empty(A) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty_set = A
     <= empty(A) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( empty(A)
      & relation(A) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(fc4_relat_1,axiom,
    ( relation(empty_set)
    & empty(empty_set) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & ~ empty(A) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A)
        & empty(A) )
     => ( one_to_one(A)
        & function(A)
        & relation(A) ) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & epsilon_transitive(A) )
     <= ordinal(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(t19_finset_1,axiom,
    ! [A,B] :
      ( finite(cartesian_product2(A,B))
     <= ( finite(B)
        & finite(A) ) ) ).

fof(cc4_arytm_3,axiom,
    ! [A] :
      ( element(A,positive_rationals)
     => ( ordinal(A)
       => ( natural(A)
          & ordinal(A)
          & epsilon_connected(A)
          & epsilon_transitive(A) ) ) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( empty(A)
      & function(A)
      & relation(A) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( epsilon_connected(A)
      & ordinal(A)
      & epsilon_transitive(A) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     <= ( epsilon_connected(A)
        & epsilon_transitive(A) ) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & element(B,powerset(A)) ) ).

fof(rc3_arytm_3,axiom,
    ? [A] :
      ( element(A,positive_rationals)
      & epsilon_connected(A)
      & ordinal(A)
      & natural(A)
      & epsilon_transitive(A)
      & empty(A) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & function(A) ) ).

fof(t21_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => subset(A,cartesian_product2(relation_dom(A),relation_rng(A))) ) ).

fof(fc6_funct_1,axiom,
    ! [A] :
      ( ( relation_non_empty(A)
        & function(A)
        & relation(A) )
     => with_non_empty_elements(relation_rng(A)) ) ).

fof(rc2_ordinal2,axiom,
    ? [A] :
      ( ordinal_yielding(A)
      & transfinite_sequence(A)
      & function(A)
      & relation(A) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( finite(cartesian_product2(A,B))
     <= ( finite(A)
        & finite(B) ) ) ).

fof(redefinition_k2_funct_2,axiom,
    ! [A,B,C,D] :
      ( function_image(A,B,C,D) = relation_image(C,D)
     <= ( quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & function(C) ) ) ).

fof(cc2_arytm_3,axiom,
    ! [A] :
      ( ( ordinal(A)
        & natural(A)
        & epsilon_connected(A)
        & epsilon_transitive(A) )
     <= ( ordinal(A)
        & empty(A) ) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( relation(C)
     <= element(C,powerset(cartesian_product2(A,B))) ) ).

fof(fc12_relat_1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & empty(empty_set) ) ).

fof(t13_finset_1,axiom,
    ! [A,B] :
      ( ( subset(A,B)
        & finite(B) )
     => finite(A) ) ).

fof(rc4_ordinal1,axiom,
    ? [A] :
      ( relation(A)
      & transfinite_sequence(A)
      & function(A) ) ).

fof(dt_k7_funct_3,axiom,
    ! [A,B] :
      ( function(first_projection(A,B))
      & relation(first_projection(A,B)) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( ( empty(relation_rng(A))
        & relation(relation_rng(A)) )
     <= empty(A) ) ).

fof(t29_finset_1,conjecture,
    ! [A] :
      ( ( finite(A)
      <=> finite(relation_dom(A)) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     <= relation_of2_as_subset(C,A,B) ) ).

fof(dt_k9_funct_3,axiom,
    ! [A,B] :
      ( function(first_projection_as_func_of(A,B))
      & quasi_total(first_projection_as_func_of(A,B),cartesian_product2(A,B),A)
      & relation_of2_as_subset(first_projection_as_func_of(A,B),cartesian_product2(A,B),A) ) ).

fof(cc1_arytm_3,axiom,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ( epsilon_transitive(B)
            & ordinal(B)
            & epsilon_connected(B) )
         <= element(B,A) ) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( relation(A)
        & ~ empty(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(rc1_funcop_1,axiom,
    ? [A] :
      ( relation(A)
      & function_yielding(A)
      & function(A) ) ).

