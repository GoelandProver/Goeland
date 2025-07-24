fof(t145_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_image(B,set_intersection2(relation_dom(B),A)) = relation_image(B,A) ) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) )
     <= element(B,powerset(A)) ) ).

fof(t70_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) ) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_xcmplx_0(B)
         <= element(B,A) )
     <= v1_membered(A) ) ).

fof(s1_tarski__e2_37_1_1__pre_topc__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & in(set_difference(cast_as_carrier_subset(A),D),B)
                & D = E )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( D = E
           <= ( D = C
              & in(set_difference(cast_as_carrier_subset(A),D),B)
              & E = C
              & in(set_difference(cast_as_carrier_subset(A),E),B) ) ) )
     <= ( topological_space(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & top_str(A) ) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & empty(A) ) ).

fof(d1_finset_1,axiom,
    ! [A] :
      ( finite(A)
    <=> ? [B] :
          ( relation(B)
          & function(B)
          & A = relation_rng(B)
          & in(relation_dom(B),omega) ) ) ).

fof(t54_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( well_ordering(B)
               <= ( well_ordering(A)
                  & relation_isomorphism(A,B,C) ) )
             <= ( function(C)
                & relation(C) ) ) ) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_intersection2(B,A))
     <= v1_membered(A) ) ).

fof(t46_pre_topc,lemma,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( ? [C] :
              ( element(C,powerset(powerset(the_carrier(A))))
              & ! [D] :
                  ( ( in(D,C)
                  <=> ( subset(B,D)
                      & closed_subset(D,A) ) )
                 <= element(D,powerset(the_carrier(A))) )
              & meet_of_subsets(the_carrier(A),C) = topstr_closure(A,B) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d3_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A) )
     => ! [B] :
          ( ! [C] :
              ( ( C = join(A,B,C)
              <=> below(A,B,C) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(commutativity_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => join_commut(A,C,B) = join_commut(A,B,C) ) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( relation(relation_composition(B,A))
        & empty(relation_composition(B,A)) )
     <= ( relation(B)
        & empty(A) ) ) ).

fof(dt_u1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => element(the_topology(A),powerset(powerset(the_carrier(A)))) ) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(A,B))
     <= ~ empty(A) ) ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ordinal_subset(A,A)
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & ordinal(B) )
     => ( ordinal_subset(A,B)
      <=> subset(A,B) ) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(C))
        & in(A,B) )
     => element(A,C) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(B) ) ).

fof(cc2_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     <= ( diff_closed(A)
        & cup_closed(A) ) ) ).

fof(t13_finset_1,lemma,
    ! [A,B] :
      ( finite(A)
     <= ( finite(B)
        & subset(A,B) ) ) ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( ! [C] :
            ~ ( ! [D] :
                  ~ ( in(D,B)
                    & in(D,C) )
              & in(C,B) )
        & in(A,B) ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ? [E,F] :
              ( in(E,A)
              & in(F,B)
              & D = ordered_pair(E,F) ) )
    <=> cartesian_product2(A,B) = C ) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
    <=> ( epsilon_connected(A)
        & epsilon_transitive(A) ) ) ).

fof(dt_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_commutative(A) )
     => element(join_commut(A,B,C),the_carrier(A)) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(rc1_partfun1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & empty(A)
      & function(A) ) ).

fof(s1_xboole_0__e6_22__wellord2,lemma,
    ! [A] :
    ? [B] :
    ! [C] :
      ( ( ordinal(C)
        & in(C,A) )
    <=> in(C,B) ) ).

fof(reflexivity_r2_wellord2,axiom,
    ! [A,B] : equipotent(A,A) ).

fof(t30_tops_1,conjecture,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( closed_subset(subset_complement(the_carrier(A),B),A)
          <=> open_subset(B,A) ) )
     <= top_str(A) ) ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(t145_funct_1,lemma,
    ! [A,B] :
      ( subset(relation_image(B,relation_inverse_image(B,A)),A)
     <= ( function(B)
        & relation(B) ) ) ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(set_intersection2(A,B)) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(fc6_membered,axiom,
    ( empty(empty_set)
    & v2_membered(empty_set)
    & v4_membered(empty_set)
    & v5_membered(empty_set)
    & v3_membered(empty_set)
    & v1_membered(empty_set) ) ).

fof(t147_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( subset(A,relation_rng(B))
       => A = relation_image(B,relation_inverse_image(B,A)) ) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
    <=> subset(singleton(A),B) ) ).

fof(l55_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( in(B,D)
        & in(A,C) )
    <=> in(ordered_pair(A,B),cartesian_product2(C,D)) ) ).

fof(fc39_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) ) ) ).

fof(t25_wellord2,lemma,
    ! [A,B] :
      ( ( well_orders(B,A)
       => ( well_ordering(relation_restriction(B,A))
          & A = relation_field(relation_restriction(B,A)) ) )
     <= relation(B) ) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) )
     <= subset(A,B) ) ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( subset(A,cartesian_product2(relation_dom(A),relation_rng(A)))
     <= relation(A) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(t144_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_image(B,A),relation_rng(B))
     <= relation(B) ) ).

fof(t1_zfmisc_1,lemma,
    singleton(empty_set) = powerset(empty_set) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( relation(set_difference(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( A = B
     <= subset(singleton(A),singleton(B)) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) )
     <= ( empty(A)
        & relation(B) ) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => v4_membered(A) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( relation(C)
     <= element(C,powerset(cartesian_product2(A,B))) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : latt_str(A) ).

fof(d12_relat_2,axiom,
    ! [A] :
      ( ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(ordered_pair(D,E),A)
                  & in(E,B) ) )
        <=> relation_inverse_image(A,B) = C ) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => v3_membered(A) ) ).

fof(t3_xboole_1,lemma,
    ! [A] :
      ( subset(A,empty_set)
     => empty_set = A ) ).

fof(s1_xboole_0__e8_6__wellord2__1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ? [C] :
        ! [D] :
          ( ( ? [E] :
                ( ordinal(E)
                & D = E
                & in(E,A) )
            & in(D,succ(B)) )
        <=> in(D,C) ) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( empty(B)
        | in(A,B) )
     <= element(A,B) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) )
     <= finite(A) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : A = set_intersection2(A,A) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( meet_commut(A,B,C) = meet_commut(A,C,B)
     <= ( meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A)
      & ~ empty(A) ) ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ! [D] :
              ( ? [E] :
                  ( in(E,relation_dom(A))
                  & apply(A,E) = D
                  & in(E,B) )
            <=> in(D,C) )
        <=> C = relation_image(A,B) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & epsilon_transitive(A) )
     <= ordinal(A) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(t178_relat_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_inverse_image(C,A),relation_inverse_image(C,B))
       <= subset(A,B) )
     <= relation(C) ) ).

fof(t146_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => relation_image(A,relation_dom(A)) = relation_rng(A) ) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & relation(A) )
     => relation(set_intersection2(A,B)) ) ).

fof(dt_k2_mcart_1,axiom,
    $true ).

fof(t56_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( A = empty_set
       <= ! [B,C] : ~ in(ordered_pair(B,C),A) ) ) ).

fof(fc37_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_difference(A,B))
     <= v1_membered(A) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(l29_wellord1,lemma,
    ! [A,B] :
      ( subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B))
     <= relation(B) ) ).

fof(d7_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( ( relation_field(A) = relation_dom(C)
                  & relation_rng(C) = relation_field(B)
                  & one_to_one(C)
                  & ! [D,E] :
                      ( in(ordered_pair(D,E),A)
                    <=> ( in(D,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B)
                        & in(E,relation_field(A)) ) ) )
              <=> relation_isomorphism(A,B,C) )
             <= ( relation(C)
                & function(C) ) ) ) ) ).

fof(dt_k1_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(join(A,B,C),the_carrier(A)) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( C = A
        & D = B )
     <= ordered_pair(C,D) = ordered_pair(A,B) ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( subset(A,B)
        & proper_subset(B,A) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v5_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) )
     <= v5_membered(A) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(fc1_ordinal2,axiom,
    ( epsilon_connected(omega)
    & ~ empty(omega)
    & ordinal(omega)
    & epsilon_transitive(omega) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( meet_commutative(A)
        & meet_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) )
     => meet_commut(A,B,C) = meet(A,B,C) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & element(B,powerset(A)) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(s3_subset_1__e2_37_1_1__pre_topc,lemma,
    ! [A,B] :
      ( ( topological_space(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & top_str(A) )
     => ? [C] :
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] :
              ( ( in(D,C)
              <=> in(set_difference(cast_as_carrier_subset(A),D),B) )
             <= element(D,powerset(the_carrier(A))) ) ) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_union2(A,set_difference(B,A)) = B ) ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => one_sorted_str(A) ) ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( is_reflexive_in(A,B)
        <=> ! [C] :
              ( in(ordered_pair(C,C),A)
             <= in(C,B) ) )
     <= relation(A) ) ).

fof(t6_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( in(C,A)
       => ( in(apply(D,C),relation_rng(D))
          | empty_set = B ) )
     <= ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) ) ) ).

fof(redefinition_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> are_equipotent(A,B) ) ).

fof(d5_ordinal2,axiom,
    ! [A] :
      ( A = omega
    <=> ( in(empty_set,A)
        & being_limit_ordinal(A)
        & ! [B] :
            ( ordinal(B)
           => ( ( in(empty_set,B)
                & being_limit_ordinal(B) )
             => subset(A,B) ) )
        & ordinal(A) ) ) ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(existence_l1_lattices,axiom,
    ? [A] : meet_semilatt_str(A) ).

fof(t17_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset_difference(the_carrier(A),cast_as_carrier_subset(A),B) = subset_complement(the_carrier(A),B) ) ) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => ( relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A)) ) ) ).

fof(d4_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_antisymmetric_in(A,B)
        <=> ! [C,D] :
              ( ( in(C,B)
                & in(D,B)
                & in(ordered_pair(D,C),A)
                & in(ordered_pair(C,D),A) )
             => C = D ) ) ) ).

fof(t117_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng_restriction(A,B),B)
     <= relation(B) ) ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( ! [B,C] :
            ( B = C
           <= ( in(B,relation_dom(A))
              & in(C,relation_dom(A))
              & apply(A,C) = apply(A,B) ) )
      <=> one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_rng_restriction(A,B))
     <= relation(B) ) ).

fof(t5_wellord2,lemma,
    ! [A] : antisymmetric(inclusion_relation(A)) ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( is_connected_in(A,B)
        <=> ! [C,D] :
              ~ ( in(C,B)
                & D != C
                & ~ in(ordered_pair(D,C),A)
                & ~ in(ordered_pair(C,D),A)
                & in(D,B) ) )
     <= relation(A) ) ).

fof(d8_lattices,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ( meet_absorbing(A)
      <=> ! [B] :
            ( ! [C] :
                ( C = join(A,meet(A,B,C),C)
               <= element(C,the_carrier(A)) )
           <= element(B,the_carrier(A)) ) ) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     <= in(A,B) ) ).

fof(t18_finset_1,lemma,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( element(B,powerset(powerset(A)))
         => ~ ( B != empty_set
              & ! [C] :
                  ~ ( ! [D] :
                        ( ( subset(C,D)
                          & in(D,B) )
                       => C = D )
                    & in(C,B) ) ) ) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( finite(B)
          & ~ empty(B)
          & element(B,powerset(A)) ) ) ).

fof(s2_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ( ! [B] :
            ~ ( in(B,A)
              & ! [C] : C != singleton(B) )
        & ! [B,C,D] :
            ( D = C
           <= ( in(B,A)
              & singleton(B) = D
              & singleton(B) = C ) ) )
     => ? [B] :
          ( function(B)
          & ! [C] :
              ( singleton(C) = apply(B,C)
             <= in(C,A) )
          & A = relation_dom(B)
          & relation(B) ) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & element(B,powerset(A)) )
     <= ~ empty(A) ) ).

fof(t143_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ? [D] :
            ( in(D,relation_dom(C))
            & in(D,B)
            & in(ordered_pair(D,A),C) )
      <=> in(A,relation_image(C,B)) ) ) ).

fof(t60_relat_1,lemma,
    ( empty_set = relation_rng(empty_set)
    & empty_set = relation_dom(empty_set) ) ).

fof(t140_relat_1,lemma,
    ! [A,B,C] :
      ( relation_rng_restriction(A,relation_dom_restriction(C,B)) = relation_dom_restriction(relation_rng_restriction(A,C),B)
     <= relation(C) ) ).

fof(dt_k10_relat_1,axiom,
    $true ).

fof(t44_pre_topc,lemma,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subset(meet_of_subsets(the_carrier(A),B),A)
           <= ! [C] :
                ( element(C,powerset(the_carrier(A)))
               => ( in(C,B)
                 => closed_subset(C,A) ) ) ) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) )
     <= v2_membered(A) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> element(A,powerset(B)) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_dom_as_subset(A,B,C) = relation_dom(C)
     <= relation_of2(C,A,B) ) ).

fof(d1_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => join(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_join(A),B,C) ) )
     <= ( ~ empty_carrier(A)
        & join_semilatt_str(A) ) ) ).

fof(s3_subset_1__e1_40__pre_topc,lemma,
    ! [A,B] :
      ( ? [C] :
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] :
              ( element(D,powerset(the_carrier(A)))
             => ( ? [E] :
                    ( element(E,powerset(the_carrier(A)))
                    & D = E
                    & subset(B,D)
                    & closed_subset(E,A) )
              <=> in(D,C) ) ) )
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ? [B] :
          ( closed_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(cc1_arytm_3,axiom,
    ! [A] :
      ( ! [B] :
          ( ( epsilon_transitive(B)
            & ordinal(B)
            & epsilon_connected(B) )
         <= element(B,A) )
     <= ordinal(A) ) ).

fof(t166_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ? [D] :
            ( in(D,B)
            & in(ordered_pair(A,D),C)
            & in(D,relation_rng(C)) )
      <=> in(A,relation_inverse_image(C,B)) ) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(union(A))
        & ordinal(union(A))
        & epsilon_connected(union(A)) )
     <= ordinal(A) ) ).

fof(t62_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => one_to_one(function_inverse(A)) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(l2_wellord1,lemma,
    ! [A] :
      ( ( transitive(A)
      <=> ! [B,C,D] :
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,D),A) )
           => in(ordered_pair(B,D),A) ) )
     <= relation(A) ) ).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & one_to_one(empty_set)
    & empty(empty_set)
    & ordinal(empty_set)
    & epsilon_connected(empty_set)
    & epsilon_transitive(empty_set)
    & function(empty_set)
    & relation_empty_yielding(empty_set) ) ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(t21_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( ( in(apply(C,A),relation_dom(B))
              & in(A,relation_dom(C)) )
          <=> in(A,relation_dom(relation_composition(C,B))) )
         <= ( function(C)
            & relation(C) ) )
     <= ( function(B)
        & relation(B) ) ) ).

fof(t53_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( ( relation_isomorphism(A,B,C)
               => ( ( well_founded_relation(B)
                   <= well_founded_relation(A) )
                  & ( antisymmetric(B)
                   <= antisymmetric(A) )
                  & ( connected(B)
                   <= connected(A) )
                  & ( transitive(A)
                   => transitive(B) )
                  & ( reflexive(B)
                   <= reflexive(A) ) ) )
             <= ( relation(C)
                & function(C) ) )
         <= relation(B) ) ) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(cc3_arytm_3,axiom,
    ! [A] :
      ( element(A,omega)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & natural(A)
        & ordinal(A) ) ) ).

fof(fc38_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v2_membered(A) ) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(succ(A))
        & ordinal(succ(A))
        & epsilon_transitive(succ(A))
        & ~ empty(succ(A)) )
     <= ordinal(A) ) ).

fof(d13_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ! [C] :
              ( ( topstr_closure(A,B) = C
              <=> ! [D] :
                    ( in(D,the_carrier(A))
                   => ( ! [E] :
                          ( element(E,powerset(the_carrier(A)))
                         => ~ ( in(D,E)
                              & disjoint(B,E)
                              & open_subset(E,A) ) )
                    <=> in(D,C) ) ) )
             <= element(C,powerset(the_carrier(A))) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(A,B)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
               <= in(ordered_pair(C,D),A) ) ) ) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( element(relation_dom_as_subset(A,B,C),powerset(A))
     <= relation_of2(C,A,B) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => empty_set = A ) ).

fof(s2_ordinal1__e18_27__finset_1__1,lemma,
    ( ! [A] :
        ( ( ! [I] :
              ( element(I,powerset(powerset(A)))
             => ~ ( empty_set != I
                  & ! [J] :
                      ~ ( in(J,I)
                        & ! [K] :
                            ( ( subset(J,K)
                              & in(K,I) )
                           => K = J ) ) ) )
         <= in(A,omega) )
       <= ordinal(A) )
   <= ! [A] :
        ( ( ! [B] :
              ( ( in(B,A)
               => ( in(B,omega)
                 => ! [C] :
                      ( ~ ( ! [D] :
                              ~ ( ! [E] :
                                    ( E = D
                                   <= ( subset(D,E)
                                      & in(E,C) ) )
                                & in(D,C) )
                          & C != empty_set )
                     <= element(C,powerset(powerset(B))) ) ) )
             <= ordinal(B) )
         => ( ! [F] :
                ( ~ ( empty_set != F
                    & ! [G] :
                        ~ ( in(G,F)
                          & ! [H] :
                              ( G = H
                             <= ( subset(G,H)
                                & in(H,F) ) ) ) )
               <= element(F,powerset(powerset(A))) )
           <= in(A,omega) ) )
       <= ordinal(A) ) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( relation_inverse_image(A,B) = C
        <=> ! [D] :
              ( in(D,C)
            <=> ( in(D,relation_dom(A))
                & in(apply(A,D),B) ) ) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( subset(cartesian_product2(A,C),cartesian_product2(B,D))
     <= ( subset(C,D)
        & subset(A,B) ) ) ).

fof(t3_ordinal1,lemma,
    ! [A,B,C] :
      ~ ( in(C,A)
        & in(B,C)
        & in(A,B) ) ).

fof(t22_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( function(C)
            & relation(C) )
         => ( apply(B,apply(C,A)) = apply(relation_composition(C,B),A)
           <= in(A,relation_dom(relation_composition(C,B))) ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_difference(A,C),set_difference(B,C))
     <= subset(A,B) ) ).

fof(redefinition_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => union(B) = union_of_subsets(A,B) ) ).

fof(t52_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( ( ( closed_subset(B,A)
             <= ( B = topstr_closure(A,B)
                & topological_space(A) ) )
            & ( B = topstr_closure(A,B)
             <= closed_subset(B,A) ) )
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(fc40_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B)) )
     <= v4_membered(A) ) ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) ).

fof(t22_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( B = subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(fc1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty(empty_carrier_subset(A))
        & v1_membered(empty_carrier_subset(A))
        & v5_membered(empty_carrier_subset(A))
        & v4_membered(empty_carrier_subset(A))
        & v3_membered(empty_carrier_subset(A))
        & v2_membered(empty_carrier_subset(A)) ) ) ).

fof(s1_tarski__e18_27__finset_1__1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( ! [B,C,D] :
            ( ( ? [E] :
                  ( ordinal(E)
                  & E = C
                  & ( ! [F] :
                        ( ~ ( ! [G] :
                                ~ ( ! [H] :
                                      ( ( in(H,F)
                                        & subset(G,H) )
                                     => G = H )
                                  & in(G,F) )
                            & empty_set != F )
                       <= element(F,powerset(powerset(E))) )
                   <= in(E,omega) ) )
              & ? [I] :
                  ( ordinal(I)
                  & ( ! [J] :
                        ( element(J,powerset(powerset(I)))
                       => ~ ( J != empty_set
                            & ! [K] :
                                ~ ( ! [L] :
                                      ( L = K
                                     <= ( subset(K,L)
                                        & in(L,J) ) )
                                  & in(K,J) ) ) )
                   <= in(I,omega) )
                  & I = D )
              & B = D
              & B = C )
           => C = D )
       => ? [B] :
          ! [C] :
            ( ? [D] :
                ( in(D,succ(A))
                & ? [M] :
                    ( M = C
                    & ( ! [N] :
                          ( element(N,powerset(powerset(M)))
                         => ~ ( ! [O] :
                                  ~ ( in(O,N)
                                    & ! [P] :
                                        ( ( subset(O,P)
                                          & in(P,N) )
                                       => P = O ) )
                              & N != empty_set ) )
                     <= in(M,omega) )
                    & ordinal(M) )
                & C = D )
          <=> in(C,B) ) ) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( ~ ( B != empty_set
          & complements_of_subsets(A,B) = empty_set )
     <= element(B,powerset(powerset(A))) ) ).

fof(t31_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_founded_relation(B)
       => well_founded_relation(relation_restriction(B,A)) ) ) ).

fof(l28_zfmisc_1,lemma,
    ! [A,B] :
      ( disjoint(singleton(A),B)
     <= ~ in(A,B) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => A = relation_inverse(relation_inverse(A)) ) ).

fof(s1_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ! [B,C,D] :
          ( ( singleton(B) = D
            & in(B,A)
            & C = singleton(B)
            & in(B,A) )
         => D = C )
     => ? [B] :
          ( function(B)
          & ! [C,D] :
              ( in(ordered_pair(C,D),B)
            <=> ( in(C,A)
                & in(C,A)
                & D = singleton(C) ) )
          & relation(B) ) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ( ! [C,D] :
                ( in(ordered_pair(D,C),A)
              <=> in(ordered_pair(C,D),B) )
          <=> B = relation_inverse(A) )
         <= relation(B) ) ) ).

fof(fc9_finset_1,axiom,
    ! [A,B] :
      ( ( finite(A)
        & finite(B) )
     => finite(set_union2(A,B)) ) ).

fof(t26_wellord2,lemma,
    ! [A] :
    ? [B] :
      ( relation(B)
      & well_orders(B,A) ) ).

fof(symmetry_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
     => equipotent(B,A) ) ).

fof(t46_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(relation_composition(A,B)) = relation_dom(A) ) )
     <= relation(A) ) ).

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( relation(relation_inverse(A))
        & function(relation_inverse(A)) )
     <= ( one_to_one(A)
        & function(A)
        & relation(A) ) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & one_sorted_str(A) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & empty(A)
      & epsilon_connected(A)
      & ordinal(A)
      & epsilon_transitive(A)
      & one_to_one(A) ) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( relation(C)
             => ( relation_composition(A,B) = C
              <=> ! [D,E] :
                    ( ? [F] :
                        ( in(ordered_pair(D,F),A)
                        & in(ordered_pair(F,E),B) )
                  <=> in(ordered_pair(D,E),C) ) ) ) ) ) ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( relation_of2(C,A,B)
      & relation(C)
      & function(C) ) ).

fof(l71_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         => in(C,B) )
     => element(A,powerset(B)) ) ).

fof(t19_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,relation_field(C))
          & in(A,B) ) ) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v2_membered(B) )
         <= element(B,powerset(A)) )
     <= v4_membered(A) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_membered(B)
            & v2_membered(B)
            & v3_membered(B)
            & v5_membered(B)
            & v4_membered(B) )
         <= element(B,powerset(A)) )
     <= v5_membered(A) ) ).

fof(s1_tarski__e16_22__wellord2__2,axiom,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ? [E] :
              ( D = E
              & ? [J,K] :
                  ( in(J,A)
                  & K = singleton(J)
                  & D = ordered_pair(J,K) )
              & in(E,cartesian_product2(A,B)) ) )
     <= ! [C,D,E] :
          ( ( ? [F,G] :
                ( ordered_pair(F,G) = D
                & G = singleton(F)
                & in(F,A) )
            & ? [H,I] :
                ( I = singleton(H)
                & in(H,A)
                & E = ordered_pair(H,I) )
            & C = E
            & C = D )
         => E = D ) ) ).

fof(l25_zfmisc_1,lemma,
    ! [A,B] :
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) ).

fof(t26_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_intersection2(A,C),set_intersection2(B,C))
     <= subset(A,B) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( finite(singleton(A))
      & ~ empty(singleton(A)) ) ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) ).

fof(s2_funct_1__e10_24__wellord2,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( relation_dom(C) = A
            & ! [D] :
                ( ? [L] :
                    ( L = D
                    & in(apply(C,D),L)
                    & ! [M] :
                        ( in(M,L)
                       => in(ordered_pair(apply(C,D),M),B) ) )
               <= in(D,A) )
            & function(C)
            & relation(C) )
       <= ( ! [C,D,E] :
              ( E = D
             <= ( in(C,A)
                & ? [F] :
                    ( ! [G] :
                        ( in(ordered_pair(D,G),B)
                       <= in(G,F) )
                    & in(D,F)
                    & F = C )
                & ? [H] :
                    ( H = C
                    & in(E,H)
                    & ! [I] :
                        ( in(ordered_pair(E,I),B)
                       <= in(I,H) ) ) ) )
          & ! [C] :
              ~ ( ! [D] :
                    ~ ? [J] :
                        ( in(D,J)
                        & ! [K] :
                            ( in(ordered_pair(D,K),B)
                           <= in(K,J) )
                        & J = C )
                & in(C,A) ) ) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(t15_finset_1,lemma,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(A) ) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= join_semilatt_str(A) ) ).

fof(s1_xboole_0__e16_22__wellord2__1,lemma,
    ! [A,B] :
    ? [C] :
    ! [D] :
      ( ( in(D,cartesian_product2(A,B))
        & ? [E,F] :
            ( in(E,A)
            & F = singleton(E)
            & ordered_pair(E,F) = D ) )
    <=> in(D,C) ) ).

fof(t45_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( ( in(C,topstr_closure(A,B))
              <=> ! [D] :
                    ( ( ( subset(B,D)
                        & closed_subset(D,A) )
                     => in(C,D) )
                   <= element(D,powerset(the_carrier(A))) ) )
             <= in(C,the_carrier(A)) ) )
     <= top_str(A) ) ).

fof(t37_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
    <=> empty_set = set_difference(A,B) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
    <=> set_intersection2(A,B) = empty_set ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( relation_of2(C,A,B)
      & quasi_total(C,A,B)
      & function(C)
      & relation(C) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_xcmplx_0(B)
            & natural(B)
            & v1_rat_1(B)
            & v1_int_1(B)
            & v1_xreal_0(B) )
         <= element(B,A) )
     <= v5_membered(A) ) ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(l82_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
      <=> ( in(B,relation_dom(C))
          & in(B,A) ) ) ) ).

fof(d6_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] : set_intersection2(A,cartesian_product2(B,B)) = relation_restriction(A,B) ) ).

fof(t1_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) ).

fof(fc41_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) ) ) ).

fof(d8_setfam_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ( ! [D] :
                ( element(D,powerset(A))
               => ( in(subset_complement(A,D),B)
                <=> in(D,C) ) )
          <=> complements_of_subsets(A,B) = C )
         <= element(C,powerset(powerset(A))) )
     <= element(B,powerset(powerset(A))) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( set_union2(singleton(A),B) = B
     <= in(A,B) ) ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,B)
        <=> A = C )
    <=> singleton(A) = B ) ).

fof(t18_wellord1,lemma,
    ! [A,B] :
      ( relation_restriction(B,A) = relation_rng_restriction(A,relation_dom_restriction(B,A))
     <= relation(B) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( finite(A)
      & ~ empty(A) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(t6_wellord2,lemma,
    ! [A] :
      ( well_founded_relation(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(s1_funct_1__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( E = D
           <= ( ? [F] :
                  ( F = C
                  & ! [G] :
                      ( in(ordered_pair(D,G),B)
                     <= in(G,F) )
                  & in(D,F) )
              & in(C,A)
              & ? [H] :
                  ( C = H
                  & in(E,H)
                  & ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) ) )
              & in(C,A) ) )
       => ? [C] :
            ( relation(C)
            & ! [D,E] :
                ( ( in(D,A)
                  & ? [J] :
                      ( J = D
                      & in(E,J)
                      & ! [K] :
                          ( in(ordered_pair(E,K),B)
                         <= in(K,J) ) )
                  & in(D,A) )
              <=> in(ordered_pair(D,E),C) )
            & function(C) ) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(t23_wellord1,lemma,
    ! [A,B] :
      ( ( connected(relation_restriction(B,A))
       <= connected(B) )
     <= relation(B) ) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( subset_complement(A,subset_complement(A,B)) = B
     <= element(B,powerset(A)) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(dt_k5_ordinal2,axiom,
    $true ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( ( v3_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) )
     <= v4_membered(A) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( relation(relation_rng(A))
        & empty(relation_rng(A)) ) ) ).

fof(t146_funct_1,lemma,
    ! [A,B] :
      ( ( subset(A,relation_inverse_image(B,relation_image(B,A)))
       <= subset(A,relation_dom(B)) )
     <= relation(B) ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A)) )
     <= v3_membered(A) ) ).

fof(t50_subset_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ! [C] :
              ( element(C,A)
             => ( ~ in(C,B)
               => in(C,subset_complement(A,B)) ) ) )
     <= empty_set != A ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v3_membered(B)
            & v2_membered(B)
            & v1_membered(B) )
         <= element(B,powerset(A)) )
     <= v3_membered(A) ) ).

fof(t32_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ~ ( ! [C] :
              ( ~ ( in(C,A)
                  & ! [D] :
                      ( ( in(D,A)
                       => ordinal_subset(C,D) )
                     <= ordinal(D) ) )
             <= ordinal(C) )
          & empty_set != A
          & subset(A,B) ) ) ).

fof(t1_boole,axiom,
    ! [A] : set_union2(A,empty_set) = A ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) ) ) ).

fof(t119_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => set_intersection2(relation_rng(B),A) = relation_rng(relation_rng_restriction(A,B)) ) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( subset(C,cartesian_product2(A,B))
    <=> relation_of2(C,A,B) ) ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( ! [C] :
          ~ ( ! [D] :
                ~ ( ! [E] :
                      ( in(E,D)
                     <= subset(E,C) )
                  & in(D,B) )
            & in(C,B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) )
      & ! [C,D] :
          ( in(D,B)
         <= ( in(C,B)
            & subset(D,C) ) )
      & in(A,B) ) ).

fof(t21_ordinal1,lemma,
    ! [A] :
      ( epsilon_transitive(A)
     => ! [B] :
          ( ordinal(B)
         => ( proper_subset(A,B)
           => in(A,B) ) ) ) ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(B,A) = set_union2(A,B) ).

fof(l1_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( reflexive(A)
      <=> ! [B] :
            ( in(ordered_pair(B,B),A)
           <= in(B,relation_field(A)) ) ) ) ).

fof(fc5_pre_topc,axiom,
    ! [A] :
      ( closed_subset(cast_as_carrier_subset(A),A)
     <= ( topological_space(A)
        & top_str(A) ) ) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( proper_subset(A,B)
    <=> ( B != A
        & subset(A,B) ) ) ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) ).

fof(redefinition_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => set_meet(B) = meet_of_subsets(A,B) ) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( proper_subset(A,B)
     => ~ proper_subset(B,A) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & in(C,D) ) )
    <=> B = union(A) ) ).

fof(t99_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B)) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) ) ) ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(C,B)
        & subset(A,B) )
     => subset(set_union2(A,C),B) ) ).

fof(t31_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( in(B,A)
         => ( subset(B,A)
            & ordinal(B) ) )
     => ordinal(A) ) ).

fof(dt_k1_wellord2,axiom,
    ! [A] : relation(inclusion_relation(A)) ).

fof(t17_wellord1,lemma,
    ! [A,B] :
      ( relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A)
     <= relation(B) ) ).

fof(l1_zfmisc_1,lemma,
    ! [A] : empty_set != singleton(A) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(d2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => empty_set = empty_carrier_subset(A) ) ).

fof(t68_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( B = relation_dom_restriction(C,A)
          <=> ( ! [D] :
                  ( apply(C,D) = apply(B,D)
                 <= in(D,relation_dom(B)) )
              & relation_dom(B) = set_intersection2(relation_dom(C),A) ) )
         <= ( function(C)
            & relation(C) ) ) ) ).

fof(s1_tarski__e10_24__wellord2__1,axiom,
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( D = E
           <= ( ? [F] :
                  ( F = C
                  & ! [G] :
                      ( in(G,F)
                     => in(ordered_pair(D,G),B) )
                  & in(D,F) )
              & in(C,A)
              & ? [H] :
                  ( ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) )
                  & in(E,H)
                  & C = H )
              & in(C,A) ) )
       => ? [C] :
          ! [D] :
            ( ? [E] :
                ( in(E,A)
                & in(E,A)
                & ? [J] :
                    ( in(D,J)
                    & ! [K] :
                        ( in(K,J)
                       => in(ordered_pair(D,K),B) )
                    & J = E ) )
          <=> in(D,C) ) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(t17_finset_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( finite(relation_image(B,A))
       <= finite(A) ) ) ).

fof(t47_setfam_1,lemma,
    ! [A,B] :
      ( ( B != empty_set
       => subset_difference(A,cast_to_subset(A),union_of_subsets(A,B)) = meet_of_subsets(A,complements_of_subsets(A,B)) )
     <= element(B,powerset(powerset(A))) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(fc12_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_difference(A,B)) ) ).

fof(d16_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( is_transitive_in(A,relation_field(A))
      <=> transitive(A) ) ) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v2_membered(B)
            & v1_membered(B) ) )
     <= v2_membered(A) ) ).

fof(s1_xboole_0__e2_37_1_1__pre_topc__1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,powerset(the_carrier(A)))
            & in(set_difference(cast_as_carrier_subset(A),D),B) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & top_str(A)
        & topological_space(A) ) ) ).

fof(s1_ordinal2__e18_27__finset_1,lemma,
    ( ( ( in(empty_set,omega)
       => ! [A] :
            ( element(A,powerset(powerset(empty_set)))
           => ~ ( ! [B] :
                    ~ ( ! [C] :
                          ( B = C
                         <= ( subset(B,C)
                            & in(C,A) ) )
                      & in(B,A) )
                & A != empty_set ) ) )
      & ! [D] :
          ( ordinal(D)
         => ( ( D = empty_set
              | ( in(D,omega)
               => ! [O] :
                    ( ~ ( ! [P] :
                            ~ ( in(P,O)
                              & ! [Q] :
                                  ( Q = P
                                 <= ( in(Q,O)
                                    & subset(P,Q) ) ) )
                        & O != empty_set )
                   <= element(O,powerset(powerset(D))) ) ) )
           <= ( being_limit_ordinal(D)
              & ! [K] :
                  ( ordinal(K)
                 => ( in(K,D)
                   => ( in(K,omega)
                     => ! [L] :
                          ( ~ ( ! [M] :
                                  ~ ( ! [N] :
                                        ( N = M
                                       <= ( subset(M,N)
                                          & in(N,L) ) )
                                    & in(M,L) )
                              & empty_set != L )
                         <= element(L,powerset(powerset(K))) ) ) ) ) ) ) )
      & ! [D] :
          ( ordinal(D)
         => ( ( ! [E] :
                  ( ~ ( E != empty_set
                      & ! [F] :
                          ~ ( ! [G] :
                                ( ( in(G,E)
                                  & subset(F,G) )
                               => F = G )
                            & in(F,E) ) )
                 <= element(E,powerset(powerset(D))) )
             <= in(D,omega) )
           => ( ! [H] :
                  ( ~ ( H != empty_set
                      & ! [I] :
                          ~ ( in(I,H)
                            & ! [J] :
                                ( I = J
                               <= ( in(J,H)
                                  & subset(I,J) ) ) ) )
                 <= element(H,powerset(powerset(succ(D)))) )
             <= in(succ(D),omega) ) ) ) )
   => ! [D] :
        ( ordinal(D)
       => ( ! [R] :
              ( ~ ( R != empty_set
                  & ! [S] :
                      ~ ( in(S,R)
                        & ! [T] :
                            ( ( subset(S,T)
                              & in(T,R) )
                           => S = T ) ) )
             <= element(R,powerset(powerset(D))) )
         <= in(D,omega) ) ) ) ).

fof(t48_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset(B,topstr_closure(A,B)) )
     <= top_str(A) ) ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => set_intersection2(B,C) = subset_intersection2(A,B,C) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( ( relation(relation_dom(A))
        & empty(relation_dom(A)) )
     <= empty(A) ) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( subset_complement(A,B) = set_difference(A,B)
     <= element(B,powerset(A)) ) ).

fof(t3_wellord2,lemma,
    ! [A] : transitive(inclusion_relation(A)) ).

fof(t20_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(B,relation_rng(C))
          & in(A,relation_dom(C)) )
       <= in(ordered_pair(A,B),C) ) ) ).

fof(s1_tarski__e4_27_3_1__finset_1__1,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) )
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ? [H] :
                    ( in(H,B)
                    & D = set_difference(H,singleton(A)) )
                & E = D
                & in(E,powerset(A)) ) )
       <= ! [C,D,E] :
            ( ( C = D
              & ? [F] :
                  ( set_difference(F,singleton(A)) = D
                  & in(F,B) )
              & E = C
              & ? [G] :
                  ( E = set_difference(G,singleton(A))
                  & in(G,B) ) )
           => D = E ) ) ) ).

fof(d5_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( well_orders(A,B)
        <=> ( is_reflexive_in(A,B)
            & is_connected_in(A,B)
            & is_well_founded_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_transitive_in(A,B) ) ) ) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(d3_ordinal1,axiom,
    ! [A] :
      ( epsilon_connected(A)
    <=> ! [B,C] :
          ~ ( in(B,A)
            & B != C
            & ~ in(C,B)
            & ~ in(B,C)
            & in(C,A) ) ) ).

fof(dt_u2_lattices,axiom,
    ! [A] :
      ( join_semilatt_str(A)
     => ( function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & epsilon_transitive(A) )
     => ordinal(A) ) ).

fof(t4_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( disjoint(A,B)
          & ? [C] : in(C,set_intersection2(A,B)) )
      & ~ ( ! [C] : ~ in(C,set_intersection2(A,B))
          & ~ disjoint(A,B) ) ) ).

fof(t65_relat_1,lemma,
    ! [A] :
      ( ( empty_set = relation_rng(A)
      <=> empty_set = relation_dom(A) )
     <= relation(A) ) ).

fof(fc1_ordinal1,axiom,
    ! [A] : ~ empty(succ(A)) ).

fof(t86_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_dom(C))
          & in(A,B) )
      <=> in(A,relation_dom(relation_dom_restriction(C,B))) ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(l4_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( ! [B,C] :
            ~ ( C != B
              & ~ in(ordered_pair(C,B),A)
              & ~ in(ordered_pair(B,C),A)
              & in(C,relation_field(A))
              & in(B,relation_field(A)) )
      <=> connected(A) ) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation_dom(A) = B
        <=> ! [C] :
              ( ? [D] : in(ordered_pair(C,D),A)
            <=> in(C,B) ) ) ) ).

fof(t24_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ordinal(B)
         => ~ ( ~ in(B,A)
              & B != A
              & ~ in(A,B) ) )
     <= ordinal(A) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( set_intersection2(A,B) = C
    <=> ! [D] :
          ( ( in(D,A)
            & in(D,B) )
        <=> in(D,C) ) ) ).

fof(s1_relat_1__e6_21__wellord2,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C)
        & relation(B) )
     => ? [D] :
          ( ! [E,F] :
              ( in(ordered_pair(E,F),D)
            <=> ( in(F,A)
                & in(ordered_pair(apply(C,E),apply(C,F)),B)
                & in(E,A) ) )
          & relation(D) ) ) ).

fof(t12_relset_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) )
     <= relation_of2_as_subset(C,A,B) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( function(A)
        & relation(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) ).

fof(t4_wellord2,lemma,
    ! [A] :
      ( connected(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & one_to_one(A)
        & relation(A) )
     <= ( empty(A)
        & function(A)
        & relation(A) ) ) ).

fof(d2_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( well_founded_relation(A)
      <=> ! [B] :
            ~ ( subset(B,relation_field(A))
              & ! [C] :
                  ~ ( disjoint(fiber(A,C),B)
                    & in(C,B) )
              & B != empty_set ) ) ) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : A = set_union2(A,A) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( relation(set_union2(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> relation_of2_as_subset(C,A,B) ) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( relation_empty_yielding(relation_dom_restriction(A,B))
        & relation(relation_dom_restriction(A,B)) )
     <= ( relation(A)
        & relation_empty_yielding(A) ) ) ).

fof(t24_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( transitive(relation_restriction(B,A))
       <= transitive(B) ) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B)) )
     <= v4_membered(A) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & function(A) ) ).

fof(t39_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( relation_field(relation_restriction(B,A)) = A
       <= ( well_ordering(B)
          & subset(A,relation_field(B)) ) ) ) ).

fof(d4_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( ( reflexive(A)
          & well_founded_relation(A)
          & connected(A)
          & antisymmetric(A)
          & transitive(A) )
      <=> well_ordering(A) ) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( A = B
     <= ! [C] :
          ( in(C,A)
        <=> in(C,B) ) ) ).

fof(l3_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( in(C,B)
         => in(C,A) ) ) ).

fof(dt_k6_pre_topc,axiom,
    ! [A,B] :
      ( element(topstr_closure(A,B),powerset(the_carrier(A)))
     <= ( element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(meet_of_subsets(A,B),powerset(A))
     <= element(B,powerset(powerset(A))) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( A != B
        & empty(B)
        & empty(A) ) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(B,A) = set_intersection2(A,B) ).

fof(d3_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => cast_as_carrier_subset(A) = the_carrier(A) ) ).

fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( ~ empty(A)
        & ~ empty(B)
        & function(D)
        & element(F,B)
        & element(E,A)
        & relation_of2(D,cartesian_product2(A,B),C)
        & quasi_total(D,cartesian_product2(A,B),C) )
     => element(apply_binary_as_element(A,B,C,D,E,F),C) ) ).

fof(t94_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom_restriction(B,A) = relation_composition(identity_relation(A),B) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( ( disjoint(B,C)
        & subset(A,B) )
     => disjoint(A,C) ) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( subset_intersection2(A,C,B) = subset_intersection2(A,B,C)
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ( B = identity_relation(A)
      <=> ! [C,D] :
            ( in(ordered_pair(C,D),B)
          <=> ( C = D
              & in(C,A) ) ) ) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( ~ ( in(B,C)
          & in(B,subset_complement(A,C)) )
     <= element(C,powerset(A)) ) ).

fof(t41_ordinal1,lemma,
    ! [A] :
      ( ( being_limit_ordinal(A)
      <=> ! [B] :
            ( ordinal(B)
           => ( in(succ(B),A)
             <= in(B,A) ) ) )
     <= ordinal(A) ) ).

fof(t116_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),A)
     <= relation(B) ) ).

fof(t12_xboole_1,lemma,
    ! [A,B] :
      ( set_union2(A,B) = B
     <= subset(A,B) ) ).

fof(t26_finset_1,lemma,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( finite(relation_rng(A))
       <= finite(relation_dom(A)) ) ) ).

fof(s1_xboole_0__e1_40__pre_topc__1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( ( ? [E] :
                ( E = D
                & subset(B,D)
                & closed_subset(E,A)
                & element(E,powerset(the_carrier(A))) )
            & in(D,powerset(the_carrier(A))) )
        <=> in(D,C) )
     <= ( topological_space(A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : top_str(A) ).

fof(t22_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,B,A)
     => ( ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(D,E),C) )
      <=> B = relation_dom_as_subset(B,A,C) ) ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(d1_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( ( ( empty_set = B
           => A = empty_set )
         => ( quasi_total(C,A,B)
          <=> relation_dom_as_subset(A,B,C) = A ) )
        & ( ( ( quasi_total(C,A,B)
            <=> C = empty_set )
            | A = empty_set )
         <= B = empty_set ) ) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A)
      & epsilon_transitive(A) ) ).

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( function_inverse(A) = relation_inverse(A)
       <= one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(s1_tarski__e16_22__wellord2__1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(B,A)
            & D = singleton(B)
            & C = singleton(B)
            & in(B,A) )
         => C = D )
     => ? [B] :
        ! [C] :
          ( ? [D] :
              ( in(D,A)
              & in(D,A)
              & C = singleton(D) )
        <=> in(C,B) ) ) ).

fof(t28_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_intersection2(A,B) = A ) ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( unordered_pair(A,B) = unordered_pair(C,D)
        & A != C
        & D != A ) ).

fof(t12_pre_topc,lemma,
    ! [A] :
      ( the_carrier(A) = cast_as_carrier_subset(A)
     <= one_sorted_str(A) ) ).

fof(t115_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_rng(relation_rng_restriction(B,C)))
      <=> ( in(A,B)
          & in(A,relation_rng(C)) ) ) ) ).

fof(d2_mcart_1,axiom,
    ! [A] :
      ( ! [B] :
          ( B = pair_second(A)
        <=> ! [C,D] :
              ( ordered_pair(C,D) = A
             => B = D ) )
     <= ? [B,C] : A = ordered_pair(B,C) ) ).

fof(t37_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( relation_rng(relation_inverse(A)) = relation_dom(A)
        & relation_rng(A) = relation_dom(relation_inverse(A)) ) ) ).

fof(d4_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> ? [C] :
          ( relation(C)
          & relation_dom(C) = A
          & B = relation_rng(C)
          & one_to_one(C)
          & function(C) ) ) ).

fof(t71_relat_1,lemma,
    ! [A] :
      ( relation_rng(identity_relation(A)) = A
      & A = relation_dom(identity_relation(A)) ) ).

fof(t90_relat_1,lemma,
    ! [A,B] :
      ( set_intersection2(relation_dom(B),A) = relation_dom(relation_dom_restriction(B,A))
     <= relation(B) ) ).

fof(s1_tarski__e8_6__wellord2__1,axiom,
    ! [A,B] :
      ( ordinal(B)
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,succ(B))
                & D = E
                & ? [H] :
                    ( ordinal(H)
                    & H = D
                    & in(H,A) ) ) )
       <= ! [C,D,E] :
            ( D = E
           <= ( C = D
              & E = C
              & ? [G] :
                  ( in(G,A)
                  & G = E
                  & ordinal(G) )
              & ? [F] :
                  ( in(F,A)
                  & D = F
                  & ordinal(F) ) ) ) ) ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( A = set_difference(A,singleton(B))
    <=> ~ in(B,A) ) ).

fof(fc1_finsub_1,axiom,
    ! [A] :
      ( cup_closed(powerset(A))
      & diff_closed(powerset(A))
      & preboolean(powerset(A))
      & ~ empty(powerset(A)) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => one_sorted_str(A) ) ).

fof(t88_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_dom_restriction(B,A),B)
     <= relation(B) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( in(A,C)
        & in(B,D) )
    <=> in(ordered_pair(A,B),cartesian_product2(C,D)) ) ).

fof(dt_k1_pre_topc,axiom,
    ! [A] :
      ( element(empty_carrier_subset(A),powerset(the_carrier(A)))
     <= one_sorted_str(A) ) ).

fof(t44_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => subset(relation_dom(relation_composition(A,B)),relation_dom(A)) )
     <= relation(A) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & element(B,powerset(C))
        & empty(C) ) ).

fof(t7_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => well_ordering(inclusion_relation(A)) ) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B)
        & function(B)
        & function(A) )
     => ( function(relation_composition(A,B))
        & relation(relation_composition(A,B)) ) ) ).

fof(t26_lattices,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( C = B
               <= ( below(A,C,B)
                  & below(A,B,C) ) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) )
     <= ( join_commutative(A)
        & join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t136_zfmisc_1,lemma,
    ! [A] :
    ? [B] :
      ( ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) )
      & ! [C] :
          ( in(powerset(C),B)
         <= in(C,B) )
      & ! [C,D] :
          ( ( subset(D,C)
            & in(C,B) )
         => in(D,B) )
      & in(A,B) ) ).

fof(s1_xboole_0__e4_27_3_1__finset_1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) )
     => ? [C] :
        ! [D] :
          ( ( ? [E] :
                ( in(E,B)
                & D = set_difference(E,singleton(A)) )
            & in(D,powerset(A)) )
        <=> in(D,C) ) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(t21_wellord1,lemma,
    ! [A,B,C] :
      ( subset(fiber(relation_restriction(C,A),B),fiber(C,B))
     <= relation(C) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ( D = A
            | B = D )
        <=> in(D,C) )
    <=> C = unordered_pair(A,B) ) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( ( subset(relation_dom(A),relation_dom(B))
              & subset(relation_rng(A),relation_rng(B)) )
           <= subset(A,B) ) )
     <= relation(A) ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( ~ empty(A)
      & v1_membered(A)
      & v2_membered(A)
      & v5_membered(A)
      & v4_membered(A)
      & v3_membered(A) ) ).

fof(fc2_arytm_3,axiom,
    ! [A] :
      ( ( natural(A)
        & ordinal(A) )
     => ( epsilon_transitive(succ(A))
        & natural(succ(A))
        & ordinal(succ(A))
        & epsilon_connected(succ(A))
        & ~ empty(succ(A)) ) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(B,A))
     <= ~ empty(A) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( ( v1_rat_1(B)
            & v1_int_1(B)
            & v1_xreal_0(B)
            & v1_xcmplx_0(B) )
         <= element(B,A) ) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(d6_ordinal1,axiom,
    ! [A] :
      ( being_limit_ordinal(A)
    <=> union(A) = A ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(D,C),A) )
        <=> B = relation_rng(A) )
     <= relation(A) ) ).

fof(t19_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(A,C) )
     => subset(A,set_intersection2(B,C)) ) ).

fof(t2_boole,axiom,
    ! [A] : set_intersection2(A,empty_set) = empty_set ).

fof(t167_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_inverse_image(B,A),relation_dom(B)) ) ).

fof(t9_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( function(D)
        & relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B) )
     => ( subset(B,C)
       => ( ( relation_of2_as_subset(D,A,C)
            & quasi_total(D,A,C)
            & function(D) )
          | ( A != empty_set
            & empty_set = B ) ) ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         => in(C,B) )
    <=> subset(A,B) ) ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(relation_restriction(A,B))
     <= relation(A) ) ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation(relation_inverse(A)) ) ).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) ) ).

fof(t34_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( ( ! [C] :
              ( in(C,A)
             => apply(B,C) = C )
          & A = relation_dom(B) )
      <=> B = identity_relation(A) ) ) ).

fof(d4_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B,C] :
          ( ( ( C = empty_set
            <=> C = apply(A,B) )
           <= ~ in(B,relation_dom(A)) )
          & ( ( C = apply(A,B)
            <=> in(ordered_pair(B,C),A) )
           <= in(B,relation_dom(A)) ) ) ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B)
      & relation(B)
      & epsilon_transitive(B)
      & natural(B)
      & finite(B)
      & ordinal(B)
      & epsilon_connected(B)
      & one_to_one(B)
      & function(B) ) ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( element(meet_commut(A,B,C),the_carrier(A))
     <= ( element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & meet_semilatt_str(A)
        & meet_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(t72_funct_1,lemma,
    ! [A,B,C] :
      ( ( apply(C,B) = apply(relation_dom_restriction(C,A),B)
       <= in(B,A) )
     <= ( relation(C)
        & function(C) ) ) ).

fof(s1_xboole_0__e18_27__finset_1__1,lemma,
    ! [A] :
      ( ordinal(A)
     => ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ( in(C,succ(A))
            & ? [D] :
                ( C = D
                & ( in(D,omega)
                 => ! [E] :
                      ( element(E,powerset(powerset(D)))
                     => ~ ( E != empty_set
                          & ! [F] :
                              ~ ( ! [G] :
                                    ( ( in(G,E)
                                      & subset(F,G) )
                                   => G = F )
                                & in(F,E) ) ) ) )
                & ordinal(D) ) ) ) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,A)
         => ( v1_rat_1(B)
            & v1_xreal_0(B)
            & v1_xcmplx_0(B) ) )
     <= v3_membered(A) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( A = B
     <= singleton(A) = unordered_pair(B,C) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ( ~ in(D,B)
            & in(D,A) ) )
    <=> C = set_difference(A,B) ) ).

fof(s1_ordinal1__e8_6__wellord2,lemma,
    ! [A] :
      ( ? [B] :
          ( in(B,A)
          & ! [C] :
              ( ordinal(C)
             => ( ordinal_subset(B,C)
               <= in(C,A) ) )
          & ordinal(B) )
     <= ? [B] :
          ( ordinal(B)
          & in(B,A) ) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_intersection2(A,B)) ) ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ( empty(B)
        <=> element(B,A) )
       <= empty(A) )
      & ( ~ empty(A)
       => ( in(B,A)
        <=> element(B,A) ) ) ) ).

fof(t2_wellord2,lemma,
    ! [A] : reflexive(inclusion_relation(A)) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ! [B] :
          ( relation_rng(A) = B
        <=> ! [C] :
              ( ? [D] :
                  ( C = apply(A,D)
                  & in(D,relation_dom(A)) )
            <=> in(C,B) ) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(dt_k1_mcart_1,axiom,
    $true ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( powerset(A) = B
    <=> ! [C] :
          ( in(C,B)
        <=> subset(C,A) ) ) ).

fof(d3_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( is_well_founded_in(A,B)
        <=> ! [C] :
              ~ ( empty_set != C
                & ! [D] :
                    ~ ( disjoint(fiber(A,D),C)
                      & in(D,C) )
                & subset(C,B) ) )
     <= relation(A) ) ).

fof(d1_mcart_1,axiom,
    ! [A] :
      ( ! [B] :
          ( pair_first(A) = B
        <=> ! [C,D] :
              ( A = ordered_pair(C,D)
             => C = B ) )
     <= ? [B,C] : ordered_pair(B,C) = A ) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(t74_relat_1,lemma,
    ! [A,B,C,D] :
      ( relation(D)
     => ( in(ordered_pair(A,B),relation_composition(identity_relation(C),D))
      <=> ( in(ordered_pair(A,B),D)
          & in(A,C) ) ) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( subset_difference(A,B,C) = set_difference(B,C)
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( element(relation_rng_as_subset(A,B,C),powerset(B))
     <= relation_of2(C,A,B) ) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ~ ( in(B,A)
            & ! [C,D] : ordered_pair(C,D) != B )
    <=> relation(A) ) ).

fof(t57_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( ( A = apply(relation_composition(function_inverse(B),B),A)
          & A = apply(B,apply(function_inverse(B),A)) )
       <= ( one_to_one(B)
          & in(A,relation_rng(B)) ) ) ) ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( relation(function_inverse(A))
        & function(function_inverse(A)) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(t15_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( subset_intersection2(the_carrier(A),B,cast_as_carrier_subset(A)) = B
         <= element(B,powerset(the_carrier(A))) )
     <= one_sorted_str(A) ) ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => subset_intersection2(A,B,B) = B ) ).

fof(t10_ordinal1,lemma,
    ! [A] : in(A,succ(A)) ).

fof(t54_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( ! [B] :
            ( ( ( ! [C,D] :
                    ( ( ( in(C,relation_rng(A))
                        & D = apply(B,C) )
                     <= ( in(D,relation_dom(A))
                        & C = apply(A,D) ) )
                    & ( ( C = apply(A,D)
                        & in(D,relation_dom(A)) )
                     <= ( in(C,relation_rng(A))
                        & apply(B,C) = D ) ) )
                & relation_dom(B) = relation_rng(A) )
            <=> function_inverse(A) = B )
           <= ( relation(B)
              & function(B) ) )
       <= one_to_one(A) ) ) ).

fof(t23_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(E,D),C) )
      <=> B = relation_rng_as_subset(A,B,C) ) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & relation(A) ) ).

fof(l3_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( antisymmetric(A)
      <=> ! [B,C] :
            ( ( in(ordered_pair(C,B),A)
              & in(ordered_pair(B,C),A) )
           => B = C ) ) ) ).

fof(cc2_arytm_3,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & ordinal(A)
        & natural(A)
        & epsilon_transitive(A) )
     <= ( empty(A)
        & ordinal(A) ) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(cc11_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_xcmplx_0(B)
            & v1_xreal_0(B) )
         <= element(B,A) )
     <= v2_membered(A) ) ).

fof(s3_funct_1__e16_22__wellord2,lemma,
    ! [A] :
    ? [B] :
      ( function(B)
      & ! [C] :
          ( in(C,A)
         => apply(B,C) = singleton(C) )
      & A = relation_dom(B)
      & relation(B) ) ).

fof(t33_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ( ordinal_subset(succ(A),B)
          <=> in(A,B) )
         <= ordinal(B) ) ) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(t38_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(B,C)
        & in(A,C) ) ) ).

fof(s1_tarski__e6_22__wellord2__1,axiom,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( ? [D] :
              ( in(D,A)
              & C = D
              & ordinal(C) )
        <=> in(C,B) )
     <= ! [B,C,D] :
          ( C = D
         <= ( ordinal(D)
            & B = D
            & ordinal(C)
            & C = B ) ) ) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_meet(A),B,C) = meet(A,B,C) ) )
     <= ( ~ empty_carrier(A)
        & meet_semilatt_str(A) ) ) ).

fof(l23_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => B = set_union2(singleton(A),B) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(E,B)
                  & in(ordered_pair(E,D),A) ) )
        <=> C = relation_image(A,B) )
     <= relation(A) ) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal_subset(A,B)
        | ordinal_subset(B,A) )
     <= ( ordinal(B)
        & ordinal(A) ) ) ).

fof(d8_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_transitive_in(A,B)
        <=> ! [C,D,E] :
              ( ( in(D,B)
                & in(ordered_pair(D,E),A)
                & in(ordered_pair(C,D),A)
                & in(E,B)
                & in(C,B) )
             => in(ordered_pair(C,E),A) ) ) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_membered(B)
         <= element(B,powerset(A)) )
     <= v1_membered(A) ) ).

fof(t35_funct_1,lemma,
    ! [A,B] :
      ( apply(identity_relation(A),B) = B
     <= in(B,A) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( ( ~ empty(B)
        & function(D)
        & element(E,A)
        & element(F,B)
        & relation_of2(D,cartesian_product2(A,B),C)
        & quasi_total(D,cartesian_product2(A,B),C)
        & ~ empty(A) )
     => apply_binary(D,E,F) = apply_binary_as_element(A,B,C,D,E,F) ) ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( A = singleton(B)
        | A = empty_set ) ) ).

fof(t30_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_field(C))
          & in(B,relation_field(C)) )
       <= in(ordered_pair(A,B),C) ) ) ).

fof(l4_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( A = singleton(B)
        | empty_set = A ) ) ).

fof(rc1_arytm_3,axiom,
    ? [A] :
      ( epsilon_connected(A)
      & natural(A)
      & ordinal(A)
      & epsilon_transitive(A)
      & ~ empty(A) ) ).

fof(t118_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B))
     <= relation(B) ) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,B) = set_union2(A,set_difference(B,A)) ).

fof(s1_tarski__e6_27__finset_1__1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(powerset(A)))
        & relation(C)
        & function(C) )
     => ( ? [D] :
          ! [E] :
            ( ? [F] :
                ( in(F,powerset(relation_dom(C)))
                & in(relation_image(C,E),B)
                & F = E )
          <=> in(E,D) )
       <= ! [D,E,F] :
            ( ( D = E
              & F = D
              & in(relation_image(C,F),B)
              & in(relation_image(C,E),B) )
           => F = E ) ) ) ).

fof(t23_ordinal1,lemma,
    ! [A,B] :
      ( ( ordinal(A)
       <= in(A,B) )
     <= ordinal(B) ) ).

fof(t25_wellord1,lemma,
    ! [A,B] :
      ( ( antisymmetric(B)
       => antisymmetric(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(s1_tarski__e10_24__wellord2__2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ! [D,E,F] :
              ( F = E
             <= ( D = E
                & F = D
                & ? [K,L] :
                    ( ? [M] :
                        ( in(L,M)
                        & ! [N] :
                            ( in(ordered_pair(L,N),B)
                           <= in(N,M) )
                        & K = M )
                    & in(K,A)
                    & ordered_pair(K,L) = F )
                & ? [G,H] :
                    ( ? [I] :
                        ( G = I
                        & in(H,I)
                        & ! [J] :
                            ( in(ordered_pair(H,J),B)
                           <= in(J,I) ) )
                    & in(G,A)
                    & ordered_pair(G,H) = E ) ) )
         => ? [D] :
            ! [E] :
              ( ? [F] :
                  ( in(F,cartesian_product2(A,C))
                  & F = E
                  & ? [O,P] :
                      ( in(O,A)
                      & ? [Q] :
                          ( ! [R] :
                              ( in(ordered_pair(P,R),B)
                             <= in(R,Q) )
                          & in(P,Q)
                          & O = Q )
                      & E = ordered_pair(O,P) ) )
            <=> in(E,D) ) )
     <= ( ~ empty(A)
        & relation(B) ) ) ).

fof(s1_xboole_0__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(E,cartesian_product2(A,C))
            & ? [F,G] :
                ( ? [H] :
                    ( H = F
                    & in(G,H)
                    & ! [I] :
                        ( in(ordered_pair(G,I),B)
                       <= in(I,H) ) )
                & in(F,A)
                & E = ordered_pair(F,G) ) ) ) ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_composition(A,B))
     <= ( relation(B)
        & relation(A) ) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(d1_wellord2,axiom,
    ! [A,B] :
      ( ( B = inclusion_relation(A)
      <=> ( ! [C,D] :
              ( ( subset(C,D)
              <=> in(ordered_pair(C,D),B) )
             <= ( in(D,A)
                & in(C,A) ) )
          & relation_field(B) = A ) )
     <= relation(B) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( B = A
    <=> ( subset(B,A)
        & subset(A,B) ) ) ).

fof(t28_wellord2,lemma,
    ! [A] :
      ( ~ ( ! [B] :
              ( ~ ( relation_dom(B) = A
                  & ! [C] :
                      ( in(apply(B,C),C)
                     <= in(C,A) ) )
             <= ( relation(B)
                & function(B) ) )
          & ! [B] :
              ~ ( in(B,A)
                & empty_set = B ) )
     <= ~ empty(A) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(t45_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => subset(relation_rng(relation_composition(A,B)),relation_rng(B)) ) ) ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( relation(relation_rng_restriction(A,B))
        & function(relation_rng_restriction(A,B)) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : succ(A) = set_union2(A,singleton(A)) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( ( v4_membered(A)
        & v5_membered(A)
        & v3_membered(A)
        & v2_membered(A)
        & v1_membered(A) )
     <= empty(A) ) ).

fof(t42_ordinal1,lemma,
    ! [A] :
      ( ( ~ ( being_limit_ordinal(A)
            & ? [B] :
                ( ordinal(B)
                & A = succ(B) ) )
        & ~ ( ! [B] :
                ( ordinal(B)
               => succ(B) != A )
            & ~ being_limit_ordinal(A) ) )
     <= ordinal(A) ) ).

fof(t55_funct_1,lemma,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( ( relation_dom(A) = relation_rng(function_inverse(A))
          & relation_dom(function_inverse(A)) = relation_rng(A) )
       <= one_to_one(A) ) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v2_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) ) ) ).

fof(d1_setfam_1,axiom,
    ! [A,B] :
      ( ( ( set_meet(A) = B
        <=> B = empty_set )
       <= A = empty_set )
      & ( ( ! [C] :
              ( ! [D] :
                  ( in(C,D)
                 <= in(D,A) )
            <=> in(C,B) )
        <=> B = set_meet(A) )
       <= empty_set != A ) ) ).

fof(t99_zfmisc_1,lemma,
    ! [A] : union(powerset(A)) = A ).

fof(t4_boole,axiom,
    ! [A] : set_difference(empty_set,A) = empty_set ).

fof(t16_relset_1,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,C,B)
       <= subset(A,B) )
     <= relation_of2_as_subset(D,C,A) ) ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( meet_semilatt_str(A)
        & join_semilatt_str(A) ) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_inverse(A))
        & relation(relation_inverse(A)) ) ) ).

fof(t8_wellord1,lemma,
    ! [A] :
      ( ( well_ordering(A)
      <=> well_orders(A,relation_field(A)) )
     <= relation(A) ) ).

fof(l50_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,union(B))
     <= in(A,B) ) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( relation(identity_relation(A))
      & function(identity_relation(A)) ) ).

fof(t3_boole,axiom,
    ! [A] : A = set_difference(A,empty_set) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( epsilon_transitive(A)
    <=> ! [B] :
          ( in(B,A)
         => subset(B,A) ) ) ).

fof(t47_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ( subset(relation_dom(A),relation_rng(B))
           => relation_rng(relation_composition(B,A)) = relation_rng(A) )
         <= relation(B) ) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( ! [B] : ~ in(B,A)
    <=> A = empty_set ) ).

fof(t48_setfam_1,lemma,
    ! [A,B] :
      ( ( B != empty_set
       => subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B)) = union_of_subsets(A,complements_of_subsets(A,B)) )
     <= element(B,powerset(powerset(A))) ) ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(t37_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
    <=> subset(singleton(A),B) ) ).

fof(l30_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( well_ordering(B)
          & equipotent(A,relation_field(B))
          & ! [C] :
              ( ~ well_orders(C,A)
             <= relation(C) ) ) ) ).

fof(t69_enumset1,lemma,
    ! [A] : singleton(A) = unordered_pair(A,A) ).

fof(d12_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ! [C] :
          ( ( ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(E,A)
                  & in(ordered_pair(D,E),B) ) )
          <=> C = relation_rng_restriction(A,B) )
         <= relation(C) ) ) ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_rng(C) = relation_rng_as_subset(A,B,C)
     <= relation_of2(C,A,B) ) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_intersection2(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(t40_xboole_1,lemma,
    ! [A,B] : set_difference(A,B) = set_difference(set_union2(A,B),B) ).

fof(t49_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation_isomorphism(A,B,C)
               => relation_isomorphism(B,A,function_inverse(C)) )
             <= ( relation(C)
                & function(C) ) ) ) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( ( ordinal(A)
        & epsilon_connected(A)
        & epsilon_transitive(A) )
     <= empty(A) ) ).

fof(d1_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( ( in(ordered_pair(D,B),A)
                & B != D )
            <=> in(D,C) )
        <=> fiber(A,B) = C ) ) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( A = B
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(C,D),A) ) ) )
     <= relation(A) ) ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(meet(A,B,C),the_carrier(A)) ) ).

fof(t174_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( empty_set = relation_inverse_image(B,A)
          & subset(A,relation_rng(B))
          & A != empty_set ) ) ).

fof(t7_mcart_1,lemma,
    ! [A,B] :
      ( pair_second(ordered_pair(A,B)) = B
      & A = pair_first(ordered_pair(A,B)) ) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( disjoint(A,B)
    <=> A = set_difference(A,B) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_union2(A,B)
    <=> ! [D] :
          ( ( in(D,A)
            | in(D,B) )
        <=> in(D,C) ) ) ).

fof(t5_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( is_well_founded_in(A,relation_field(A))
      <=> well_founded_relation(A) ) ) ).

fof(t3_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ~ disjoint(A,B)
          & ! [C] :
              ~ ( in(C,B)
                & in(C,A) ) )
      & ~ ( ? [C] :
              ( in(C,B)
              & in(C,A) )
          & disjoint(A,B) ) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     <= v2_membered(A) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(ordered_pair(B,D),A)
            & in(ordered_pair(B,C),A) )
         => D = C )
    <=> function(A) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) ).

fof(cc1_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     => ( cup_closed(A)
        & diff_closed(A) ) ) ).

fof(t20_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),relation_field(B))
        & subset(relation_field(relation_restriction(B,A)),A) ) ) ).

fof(t23_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( function(C)
            & relation(C) )
         => ( apply(C,apply(B,A)) = apply(relation_composition(B,C),A)
           <= in(A,relation_dom(B)) ) ) ) ).

fof(s1_tarski__e6_21__wellord2__1,axiom,
    ! [A,B,C] :
      ( ( ! [D,E,F] :
            ( ( ? [I,J] :
                  ( ordered_pair(I,J) = F
                  & in(ordered_pair(apply(C,I),apply(C,J)),B) )
              & D = F
              & ? [G,H] :
                  ( E = ordered_pair(G,H)
                  & in(ordered_pair(apply(C,G),apply(C,H)),B) )
              & D = E )
           => E = F )
       => ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( ? [K,L] :
                    ( E = ordered_pair(K,L)
                    & in(ordered_pair(apply(C,K),apply(C,L)),B) )
                & F = E
                & in(F,cartesian_product2(A,A)) ) ) )
     <= ( relation(C)
        & function(C)
        & relation(B) ) ) ).

fof(t48_xboole_1,lemma,
    ! [A,B] : set_difference(A,set_difference(A,B)) = set_intersection2(A,B) ).

fof(l32_xboole_1,lemma,
    ! [A,B] :
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) ).

fof(d5_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( open_subset(B,A)
          <=> in(B,the_topology(A)) ) )
     <= top_str(A) ) ).

fof(t16_wellord1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) )
     <= relation(C) ) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v5_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) ) ) ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ~ empty(the_carrier(A)) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_difference(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(d4_subset_1,axiom,
    ! [A] : cast_to_subset(A) = A ).

fof(t8_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(ordered_pair(A,B),C)
      <=> ( in(A,relation_dom(C))
          & B = apply(C,A) ) ) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B) )
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( relation(C)
         => ( relation_dom_restriction(A,B) = C
          <=> ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,B)
                  & in(ordered_pair(D,E),A) ) ) ) ) ) ).

fof(t29_tops_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( closed_subset(B,A)
          <=> open_subset(subset_complement(the_carrier(A),B),A) ) )
     <= top_str(A) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) ).

fof(s1_xboole_0__e6_27__finset_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C)
        & element(B,powerset(powerset(A))) )
     => ? [D] :
        ! [E] :
          ( ( in(relation_image(C,E),B)
            & in(E,powerset(relation_dom(C))) )
        <=> in(E,D) ) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ~ empty(relation_rng(A))
     <= ( relation(A)
        & ~ empty(A) ) ) ).

fof(t32_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_ordering(relation_restriction(B,A))
       <= well_ordering(B) ) ) ).

fof(existence_l2_lattices,axiom,
    ? [A] : join_semilatt_str(A) ).

fof(t21_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( function(D)
        & relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B) )
     => ! [E] :
          ( ( ( empty_set = B
              | apply(E,apply(D,C)) = apply(relation_composition(D,E),C) )
           <= in(C,A) )
         <= ( relation(E)
            & function(E) ) ) ) ).

fof(d9_relat_2,axiom,
    ! [A] :
      ( ( is_reflexive_in(A,relation_field(A))
      <=> reflexive(A) )
     <= relation(A) ) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( finite(relation_image(A,B))
     <= ( finite(B)
        & function(A)
        & relation(A) ) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(t22_wellord1,lemma,
    ! [A,B] :
      ( ( reflexive(relation_restriction(B,A))
       <= reflexive(B) )
     <= relation(B) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     <= relation_of2_as_subset(C,A,B) ) ).

fof(s1_tarski__e1_40__pre_topc__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & E = D
                & ? [H] :
                    ( element(H,powerset(the_carrier(A)))
                    & closed_subset(H,A)
                    & subset(B,D)
                    & D = H ) )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( ( ? [F] :
                  ( closed_subset(F,A)
                  & subset(B,D)
                  & F = D
                  & element(F,powerset(the_carrier(A))) )
              & ? [G] :
                  ( element(G,powerset(the_carrier(A)))
                  & G = E
                  & closed_subset(G,A)
                  & subset(B,E) )
              & E = C
              & C = D )
           => D = E ) )
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(t23_lattices,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & meet_absorbing(A)
        & latt_str(A)
        & meet_commutative(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => below(A,meet_commut(A,B,C),B) )
         <= element(B,the_carrier(A)) ) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(redefinition_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A)) )
     => join(A,B,C) = join_commut(A,B,C) ) ).

fof(s1_xboole_0__e6_21__wellord2__1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C)
        & relation(B) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(E,cartesian_product2(A,A))
            & ? [F,G] :
                ( E = ordered_pair(F,G)
                & in(ordered_pair(apply(C,F),apply(C,G)),B) ) ) ) ) ).

fof(t160_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => relation_rng(relation_composition(A,B)) = relation_image(B,relation_rng(A)) )
     <= relation(A) ) ).

fof(t9_zfmisc_1,lemma,
    ! [A,B,C] :
      ( B = C
     <= unordered_pair(B,C) = singleton(A) ) ).

fof(dt_k2_pre_topc,axiom,
    ! [A] :
      ( element(cast_as_carrier_subset(A),powerset(the_carrier(A)))
     <= one_sorted_str(A) ) ).

fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( ! [E] :
          ( in(E,D)
        <=> ~ ( A != E
              & E != C
              & B != E ) )
    <=> D = unordered_triple(A,B,C) ) ).

fof(d1_pre_topc,axiom,
    ! [A] :
      ( ( topological_space(A)
      <=> ( ! [B] :
              ( element(B,powerset(powerset(the_carrier(A))))
             => ( in(union_of_subsets(the_carrier(A),B),the_topology(A))
               <= subset(B,the_topology(A)) ) )
          & ! [B] :
              ( element(B,powerset(the_carrier(A)))
             => ! [C] :
                  ( element(C,powerset(the_carrier(A)))
                 => ( ( in(B,the_topology(A))
                      & in(C,the_topology(A)) )
                   => in(subset_intersection2(the_carrier(A),B,C),the_topology(A)) ) ) )
          & in(the_carrier(A),the_topology(A)) ) )
     <= top_str(A) ) ).

fof(d6_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( ( open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A)
          <=> closed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(t46_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) )
     => ( empty_set != B
       => ! [E] :
            ( ( in(apply(D,E),C)
              & in(E,A) )
          <=> in(E,relation_inverse_image(D,C)) ) ) ) ).

fof(t14_relset_1,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,C,B)
       <= subset(relation_rng(D),B) )
     <= relation_of2_as_subset(D,C,A) ) ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( connected(A)
      <=> is_connected_in(A,relation_field(A)) ) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( complements_of_subsets(A,complements_of_subsets(A,B)) = B
     <= element(B,powerset(powerset(A))) ) ).

fof(t64_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( A = empty_set
       <= ( relation_rng(A) = empty_set
          | relation_dom(A) = empty_set ) ) ) ).

