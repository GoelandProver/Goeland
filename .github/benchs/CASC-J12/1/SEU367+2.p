fof(t23_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( function(C)
            & relation(C) )
         => ( apply(C,apply(B,A)) = apply(relation_composition(B,C),A)
           <= in(A,relation_dom(B)) ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( connected(A)
      <=> is_connected_in(A,relation_field(A)) ) ) ).

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( function(relation_inverse(A))
        & relation(relation_inverse(A)) )
     <= ( relation(A)
        & one_to_one(A)
        & function(A) ) ) ).

fof(t46_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(relation_composition(A,B)) = relation_dom(A) ) ) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( relation(A)
     <= empty(A) ) ).

fof(t16_tops_2,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subsets(B,A)
          <=> open_subsets(complements_of_subsets(the_carrier(A),B),A) ) ) ) ).

fof(s1_tarski__e6_21__wellord2__1,axiom,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C)
        & relation(B) )
     => ( ! [D,E,F] :
            ( F = E
           <= ( ? [G,H] :
                  ( in(ordered_pair(apply(C,G),apply(C,H)),B)
                  & ordered_pair(G,H) = E )
              & D = F
              & ? [I,J] :
                  ( in(ordered_pair(apply(C,I),apply(C,J)),B)
                  & F = ordered_pair(I,J) )
              & E = D ) )
       => ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( in(F,cartesian_product2(A,A))
                & E = F
                & ? [K,L] :
                    ( E = ordered_pair(K,L)
                    & in(ordered_pair(apply(C,K),apply(C,L)),B) ) ) ) ) ) ).

fof(t44_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => related(A,bottom_of_relstr(A),B) )
     <= ( ~ empty_carrier(A)
        & lower_bounded_relstr(A)
        & rel_str(A)
        & antisymmetric_relstr(A) ) ) ).

fof(fc4_lattice2,axiom,
    ! [A] :
      ( ( meet_commutative(A)
        & meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ( relation(the_L_meet(A))
        & v1_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A)) ) ) ).

fof(t21_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) )
     => ! [E] :
          ( ( function(E)
            & relation(E) )
         => ( ( apply(relation_composition(D,E),C) = apply(E,apply(D,C))
              | empty_set = B )
           <= in(C,A) ) ) ) ).

fof(s1_funct_1__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ( ? [C] :
            ( relation(C)
            & function(C)
            & ! [D,E] :
                ( ( in(D,A)
                  & ? [J] :
                      ( ! [K] :
                          ( in(ordered_pair(E,K),B)
                         <= in(K,J) )
                      & in(E,J)
                      & J = D )
                  & in(D,A) )
              <=> in(ordered_pair(D,E),C) ) )
       <= ! [C,D,E] :
            ( ( ? [F] :
                  ( C = F
                  & in(D,F)
                  & ! [G] :
                      ( in(ordered_pair(D,G),B)
                     <= in(G,F) ) )
              & in(C,A)
              & ? [H] :
                  ( C = H
                  & in(E,H)
                  & ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) ) )
              & in(C,A) )
           => E = D ) ) ) ).

fof(l29_wellord1,lemma,
    ! [A,B] :
      ( subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B))
     <= relation(B) ) ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : top_str(A) ).

fof(dt_k1_tops_1,axiom,
    ! [A,B] :
      ( element(interior(A,B),powerset(the_carrier(A)))
     <= ( element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(s1_tarski__e16_22__wellord2__1,axiom,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & singleton(D) = C
              & in(D,A) ) )
     <= ! [B,C,D] :
          ( D = C
         <= ( singleton(B) = D
            & in(B,A)
            & C = singleton(B)
            & in(B,A) ) ) ) ).

fof(t88_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom_restriction(B,A),B) ) ).

fof(dt_k10_relat_1,axiom,
    $true ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(t12_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_union2(A,B) = B ) ).

fof(t21_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( in(A,B)
           <= proper_subset(A,B) )
         <= ordinal(B) )
     <= epsilon_transitive(A) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( subset(A,cartesian_product2(relation_dom(A),relation_rng(A)))
     <= relation(A) ) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(dt_k2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => element(cast_as_carrier_subset(A),powerset(the_carrier(A))) ) ).

fof(t7_mcart_1,lemma,
    ! [A,B] :
      ( B = pair_second(ordered_pair(A,B))
      & pair_first(ordered_pair(A,B)) = A ) ).

fof(t16_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( subset(A,B)
       => relation_of2_as_subset(D,C,B) ) ) ).

fof(t31_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( subset(B,A)
            & ordinal(B) )
         <= in(B,A) )
     => ordinal(A) ) ).

fof(t1_zfmisc_1,lemma,
    powerset(empty_set) = singleton(empty_set) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_intersection2(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ? [B] :
          ( closed_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(d2_pre_topc,axiom,
    ! [A] :
      ( empty_carrier_subset(A) = empty_set
     <= one_sorted_str(A) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty_set = A
     <= empty(A) ) ).

fof(d5_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ( transitive_relstr(A)
      <=> is_transitive_in(the_InternalRel(A),the_carrier(A)) ) ) ).

fof(t19_wellord1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,B)
          & in(A,relation_field(C)) ) )
     <= relation(C) ) ).

fof(t12_pre_topc,lemma,
    ! [A] :
      ( cast_as_carrier_subset(A) = the_carrier(A)
     <= one_sorted_str(A) ) ).

fof(t25_orders_2,lemma,
    ! [A] :
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ( B = C
               <= ( related(A,C,B)
                  & related(A,B,C) ) ) ) ) ) ).

fof(t25_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( antisymmetric(B)
       => antisymmetric(relation_restriction(B,A)) ) ) ).

fof(fc2_partfun1,axiom,
    ! [A] :
      ( relation(identity_relation(A))
      & symmetric(identity_relation(A))
      & antisymmetric(identity_relation(A))
      & transitive(identity_relation(A))
      & reflexive(identity_relation(A))
      & function(identity_relation(A)) ) ).

fof(reflexivity_r3_lattices,axiom,
    ! [A,B,C] :
      ( below_refl(A,B,B)
     <= ( meet_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & latt_str(A)
        & join_absorbing(A)
        & meet_absorbing(A)
        & ~ empty_carrier(A) ) ) ).

fof(s1_tarski__e16_22__wellord2__2,axiom,
    ! [A,B] :
      ( ! [C,D,E] :
          ( ( ? [H,I] :
                ( in(H,A)
                & singleton(H) = I
                & ordered_pair(H,I) = E )
            & C = E
            & ? [F,G] :
                ( in(F,A)
                & G = singleton(F)
                & D = ordered_pair(F,G) )
            & D = C )
         => D = E )
     => ? [C] :
        ! [D] :
          ( ? [E] :
              ( E = D
              & ? [J,K] :
                  ( ordered_pair(J,K) = D
                  & in(J,A)
                  & K = singleton(J) )
              & in(E,cartesian_product2(A,B)) )
        <=> in(D,C) ) ) ).

fof(d1_struct_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty(the_carrier(A))
      <=> empty_carrier(A) ) ) ).

fof(d3_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ~ ( subset(C,B)
                & ! [D] :
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) )
                & empty_set != C )
        <=> is_well_founded_in(A,B) ) ) ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_intersection2(A,B))
     <= v1_membered(A) ) ).

fof(l2_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( ! [B,C,D] :
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,D),A) )
           => in(ordered_pair(B,D),A) )
      <=> transitive(A) ) ) ).

fof(d1_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( ! [C] :
                ( element(C,the_carrier(A))
               => ! [D] :
                    ( ~ ( in(D,B)
                        & ! [E] :
                            ( element(E,the_carrier(A))
                           => ~ ( in(E,B)
                                & related(A,D,E)
                                & related(A,C,E) ) )
                        & in(C,B) )
                   <= element(D,the_carrier(A)) ) )
          <=> directed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

fof(rc3_partfun1,axiom,
    ! [A] :
    ? [B] :
      ( relation_of2(B,A,A)
      & symmetric(B)
      & antisymmetric(B)
      & v1_partfun1(B,A,A)
      & transitive(B)
      & reflexive(B)
      & relation(B) ) ).

fof(fc5_lattice2,axiom,
    ! [A] :
      ( ( quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v2_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A))
        & relation(the_L_meet(A)) )
     <= ( meet_semilatt_str(A)
        & meet_associative(A)
        & ~ empty_carrier(A) ) ) ).

fof(cc2_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( function(C)
          & quasi_total(C,A,B)
          & onto(C,A,B)
          & one_to_one(C) )
       <= ( function(C)
          & bijective(C,A,B)
          & quasi_total(C,A,B) ) )
     <= relation_of2(C,A,B) ) ).

fof(t174_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( empty_set != A
          & empty_set = relation_inverse_image(B,A)
          & subset(A,relation_rng(B)) ) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(t37_xboole_1,lemma,
    ! [A,B] :
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) ).

fof(t8_wellord1,lemma,
    ! [A] :
      ( ( well_orders(A,relation_field(A))
      <=> well_ordering(A) )
     <= relation(A) ) ).

fof(t65_relat_1,lemma,
    ! [A] :
      ( ( relation_rng(A) = empty_set
      <=> relation_dom(A) = empty_set )
     <= relation(A) ) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
    <=> ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( join_semilatt_str(A)
     => one_sorted_str(A) ) ).

fof(d9_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ( join_on_relstr(A,B) = C
            <=> ( relstr_set_smaller(A,B,C)
                & ! [D] :
                    ( element(D,the_carrier(A))
                   => ( related(A,C,D)
                     <= relstr_set_smaller(A,B,D) ) ) ) )
           <= ex_sup_of_relstr_set(A,B) ) ) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( set_intersection2(A,B) = empty_set
    <=> disjoint(A,B) ) ).

fof(t21_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => subset(fiber(relation_restriction(C,A),B),fiber(C,B)) ) ).

fof(rc7_pre_topc,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & top_str(A)
        & topological_space(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A)
          & ~ empty(B) ) ) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) ).

fof(t147_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( subset(A,relation_rng(B))
       => relation_image(B,relation_inverse_image(B,A)) = A ) ) ).

fof(l23_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) ).

fof(dt_k2_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( transitive(k2_lattice3(A))
        & relation_of2_as_subset(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & v1_partfun1(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & antisymmetric(k2_lattice3(A))
        & reflexive(k2_lattice3(A)) ) ) ).

fof(t15_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset_intersection2(the_carrier(A),B,cast_as_carrier_subset(A)) = B ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(t16_wellord1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) )
     <= relation(C) ) ).

fof(d8_lattice3,axiom,
    ! [A] :
      ( ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ! [D] :
                ( ( related(A,C,D)
                 <= in(D,B) )
               <= element(D,the_carrier(A)) )
          <=> relstr_element_smaller(A,B,C) ) )
     <= rel_str(A) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => v3_membered(A) ) ).

fof(t18_finset_1,lemma,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( ~ ( ! [C] :
                  ~ ( in(C,B)
                    & ! [D] :
                        ( D = C
                       <= ( in(D,B)
                          & subset(C,D) ) ) )
              & B != empty_set )
         <= element(B,powerset(powerset(A))) ) ) ).

fof(abstractness_v3_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( strict_latt_str(A)
       => latt_str_of(the_carrier(A),the_L_join(A),the_L_meet(A)) = A ) ) ).

fof(fc40_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v2_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) ) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(d6_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B)) ) ).

fof(fc37_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(set_difference(A,B)) ) ).

fof(dt_m1_connsp_2,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & element(B,the_carrier(A))
        & top_str(A) )
     => ! [C] :
          ( element(C,powerset(the_carrier(A)))
         <= point_neighbourhood(C,A,B) ) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( ! [B] : ~ in(B,A)
    <=> empty_set = A ) ).

fof(t44_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( subset(relation_dom(relation_composition(A,B)),relation_dom(A))
         <= relation(B) ) ) ).

fof(s1_tarski__e4_7_2__tops_2__1,axiom,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ! [C,D,E] :
            ( ( in(C,B)
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( subset_complement(the_carrier(A),F) = D
                   <= C = F ) )
              & in(C,B)
              & ! [G] :
                  ( element(G,powerset(the_carrier(A)))
                 => ( subset_complement(the_carrier(A),G) = E
                   <= C = G ) ) )
           => D = E )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,B)
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( subset_complement(the_carrier(A),H) = D
                     <= E = H ) )
                & in(E,B) ) ) ) ) ).

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(commutativity_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_union2(A,B,C) = subset_union2(A,C,B) ) ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( ( element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => element(meet(A,B,C),the_carrier(A)) ) ).

fof(s3_funct_1__e16_22__wellord2,lemma,
    ! [A] :
    ? [B] :
      ( function(B)
      & A = relation_dom(B)
      & ! [C] :
          ( singleton(C) = apply(B,C)
         <= in(C,A) )
      & relation(B) ) ).

fof(fc3_lattice2,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_associative(A)
        & join_semilatt_str(A) )
     => ( function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v2_binop_1(the_L_join(A),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation(the_L_join(A)) ) ) ).

fof(commutativity_k3_lattices,axiom,
    ! [A,B,C] :
      ( join_commut(A,B,C) = join_commut(A,C,B)
     <= ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & join_semilatt_str(A)
        & join_commutative(A) ) ) ).

fof(cc6_funct_2,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & ~ empty(B) )
     => ! [C] :
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & ~ empty(C)
              & quasi_total(C,A,B)
              & v1_partfun1(C,A,B) )
           <= ( function(C)
              & quasi_total(C,A,B) ) ) ) ) ).

fof(d1_wellord1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ( in(ordered_pair(D,B),A)
                & D != B ) )
        <=> C = fiber(A,B) )
     <= relation(A) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( ~ in(B,A)
     <= in(A,B) ) ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(s1_xboole_0__e1_40__pre_topc__1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(the_carrier(A)))
        & top_str(A)
        & topological_space(A) )
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,powerset(the_carrier(A)))
            & ? [E] :
                ( element(E,powerset(the_carrier(A)))
                & subset(B,D)
                & closed_subset(E,A)
                & E = D ) ) ) ) ).

fof(cc1_arytm_3,axiom,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( element(B,A)
         => ( epsilon_transitive(B)
            & epsilon_connected(B)
            & ordinal(B) ) ) ) ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(E,B)
                  & D = apply(A,E)
                  & in(E,relation_dom(A)) ) )
        <=> relation_image(A,B) = C ) ) ).

fof(l3_wellord1,lemma,
    ! [A] :
      ( ( ! [B,C] :
            ( ( in(ordered_pair(C,B),A)
              & in(ordered_pair(B,C),A) )
           => C = B )
      <=> antisymmetric(A) )
     <= relation(A) ) ).

fof(cc5_funct_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & quasi_total(C,A,B) )
           => ( function(C)
              & v1_partfun1(C,A,B)
              & quasi_total(C,A,B) ) ) )
     <= ~ empty(B) ) ).

fof(t91_tmap_1,lemma,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( apply_as_element(the_carrier(A),the_carrier(A),identity_on_carrier(A),B) = B
         <= element(B,the_carrier(A)) ) ) ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( B = subset_intersection2(A,B,B)
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(d13_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ( ( subset(the_InternalRel(B),the_InternalRel(A))
              & subset(the_carrier(B),the_carrier(A)) )
          <=> subrelstr(B,A) )
         <= rel_str(B) )
     <= rel_str(A) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(d1_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( relation(B)
          & function(B)
          & A = relation_rng(B)
          & in(relation_dom(B),omega) )
    <=> finite(A) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ~ empty(the_carrier(A))
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t90_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A) ) ).

fof(d11_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => bottom_of_relstr(A) = join_on_relstr(A,empty_set) ) ).

fof(d4_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> ? [C] :
          ( B = relation_rng(C)
          & A = relation_dom(C)
          & one_to_one(C)
          & function(C)
          & relation(C) ) ) ).

fof(dt_k8_filter_1,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & latt_str(B)
        & ~ empty_carrier(B) )
     => ( strict_latt_str(k8_filter_1(A,B))
        & latt_str(k8_filter_1(A,B)) ) ) ).

fof(t28_lattice3,lemma,
    ! [A,B] :
      ( ( latt_str(B)
        & lattice(B)
        & ~ empty_carrier(B) )
     => ! [C] :
          ( element(C,the_carrier(B))
         => ( relstr_element_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C))
          <=> latt_set_smaller(B,C,A) ) ) ) ).

fof(t3_wellord2,lemma,
    ! [A] : transitive(inclusion_relation(A)) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) ).

fof(t55_funct_1,lemma,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( ( relation_dom(A) = relation_rng(function_inverse(A))
          & relation_rng(A) = relation_dom(function_inverse(A)) )
       <= one_to_one(A) ) ) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & relation(A) )
     => relation(set_intersection2(A,B)) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( disjoint(A,C)
     <= ( disjoint(B,C)
        & subset(A,B) ) ) ).

fof(d2_mcart_1,axiom,
    ! [A] :
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] :
          ( pair_second(A) = B
        <=> ! [C,D] :
              ( D = B
             <= ordered_pair(C,D) = A ) ) ) ).

fof(fc2_lattice3,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & lattice(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & strict_latt_str(boole_lattice(A)) ) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( empty(relation_composition(B,A))
        & relation(relation_composition(B,A)) )
     <= ( empty(A)
        & relation(B) ) ) ).

fof(t30_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( open_subset(B,A)
          <=> closed_subset(subset_complement(the_carrier(A),B),A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v5_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A)) ) ) ).

fof(s2_finset_1__e11_2_1__waybel_0,lemma,
    ! [A,B,C] :
      ( ( ? [I] :
            ( relstr_set_smaller(A,C,I)
            & in(I,B)
            & element(I,the_carrier(A)) )
       <= ( ? [D] :
              ( element(D,the_carrier(A))
              & in(D,B)
              & relstr_set_smaller(A,empty_set,D) )
          & ! [E,F] :
              ( ( in(E,C)
                & ? [G] :
                    ( in(G,B)
                    & relstr_set_smaller(A,F,G)
                    & element(G,the_carrier(A)) )
                & subset(F,C) )
             => ? [H] :
                  ( element(H,the_carrier(A))
                  & in(H,B)
                  & relstr_set_smaller(A,set_union2(F,singleton(E)),H) ) )
          & finite(C) ) )
     <= ( ~ empty_carrier(A)
        & rel_str(A)
        & finite(C)
        & element(C,powerset(B))
        & element(B,powerset(the_carrier(A)))
        & transitive_relstr(A) ) ) ).

fof(t18_wellord1,lemma,
    ! [A,B] :
      ( relation_rng_restriction(A,relation_dom_restriction(B,A)) = relation_restriction(B,A)
     <= relation(B) ) ).

fof(fc5_pre_topc,axiom,
    ! [A] :
      ( closed_subset(cast_as_carrier_subset(A),A)
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) )
     <= ~ empty(A) ) ).

fof(t24_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ~ ( A != B
              & ~ in(B,A)
              & ~ in(A,B) )
         <= ordinal(B) ) ) ).

fof(d8_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C,D,E] :
              ( in(ordered_pair(C,E),A)
             <= ( in(C,B)
                & in(E,B)
                & in(ordered_pair(D,E),A)
                & in(ordered_pair(C,D),A)
                & in(D,B) ) )
        <=> is_transitive_in(A,B) ) ) ).

fof(redefinition_k2_struct_0,axiom,
    ! [A,B,C] :
      ( unordered_pair(B,C) = unordered_pair_as_carrier_subset(A,B,C)
     <= ( ~ empty_carrier(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & one_sorted_str(A) ) ) ).

fof(t42_yellow_0,lemma,
    ! [A] :
      ( ( ex_inf_of_relstr_set(A,the_carrier(A))
        & ex_sup_of_relstr_set(A,empty_set) )
     <= ( lower_bounded_relstr(A)
        & rel_str(A)
        & antisymmetric_relstr(A)
        & ~ empty_carrier(A) ) ) ).

fof(d13_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ( topstr_closure(A,B) = C
              <=> ! [D] :
                    ( ( in(D,C)
                    <=> ! [E] :
                          ( element(E,powerset(the_carrier(A)))
                         => ~ ( open_subset(E,A)
                              & in(D,E)
                              & disjoint(B,E) ) ) )
                   <= in(D,the_carrier(A)) ) ) ) ) ) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,A) = A ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(t34_lattice3,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( latt_set_smaller(A,B,C)
                & ! [D] :
                    ( element(D,the_carrier(A))
                   => ( latt_set_smaller(A,D,C)
                     => below_refl(A,D,B) ) ) )
            <=> B = meet_of_latt_set(A,C) )
         <= element(B,the_carrier(A)) )
     <= ( latt_str(A)
        & complete_latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : latt_str(A) ).

fof(fc2_pre_topc,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B] :
          ( ! [C] :
              ( ? [D] :
                  ( apply(A,D) = C
                  & in(D,relation_dom(A)) )
            <=> in(C,B) )
        <=> relation_rng(A) = B ) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_rng(A))
        & relation(relation_rng(A)) ) ) ).

fof(t23_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( connected(relation_restriction(B,A))
       <= connected(B) ) ) ).

fof(t55_tops_1,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( top_str(B)
         => ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ! [D] :
                  ( ( ( open_subset(D,B)
                     => D = interior(B,D) )
                    & ( open_subset(C,A)
                     <= interior(A,C) = C ) )
                 <= element(D,powerset(the_carrier(B))) ) ) ) ) ).

fof(s1_funct_1__e4_7_1__tops_2__1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ( ! [C,D,E] :
            ( ( ! [G] :
                  ( ( C = G
                   => E = subset_complement(the_carrier(A),G) )
                 <= element(G,powerset(the_carrier(A))) )
              & in(C,complements_of_subsets(the_carrier(A),B))
              & ! [F] :
                  ( ( D = subset_complement(the_carrier(A),F)
                   <= F = C )
                 <= element(F,powerset(the_carrier(A))) )
              & in(C,complements_of_subsets(the_carrier(A),B)) )
           => D = E )
       => ? [C] :
            ( relation(C)
            & function(C)
            & ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( ! [H] :
                      ( element(H,powerset(the_carrier(A)))
                     => ( H = D
                       => subset_complement(the_carrier(A),H) = E ) )
                  & in(D,complements_of_subsets(the_carrier(A),B))
                  & in(D,complements_of_subsets(the_carrier(A),B)) ) ) ) ) ) ).

fof(t6_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => well_founded_relation(inclusion_relation(A)) ) ).

fof(fc1_ordinal2,axiom,
    ( epsilon_transitive(omega)
    & ~ empty(omega)
    & ordinal(omega)
    & epsilon_connected(omega) ) ).

fof(s1_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(B,A)
            & D = singleton(B)
            & in(B,A)
            & singleton(B) = C )
         => C = D )
     => ? [B] :
          ( ! [C,D] :
              ( ( in(C,A)
                & in(C,A)
                & D = singleton(C) )
            <=> in(ordered_pair(C,D),B) )
          & function(B)
          & relation(B) ) ) ).

fof(t26_finset_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( finite(relation_rng(A))
       <= finite(relation_dom(A)) ) ) ).

fof(l4_zfmisc_1,lemma,
    ! [A,B] :
      ( ( empty_set = A
        | A = singleton(B) )
    <=> subset(A,singleton(B)) ) ).

fof(t61_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( ! [E] :
                      ( element(E,the_carrier(B))
                     => ! [F] :
                          ( ( ( C = E
                              & in(E,the_carrier(B))
                              & in(F,the_carrier(B))
                              & related(A,C,D)
                              & D = F )
                           => related(B,E,F) )
                         <= element(F,the_carrier(B)) ) )
                 <= element(D,the_carrier(A)) )
             <= element(C,the_carrier(A)) )
         <= ( subrelstr(B,A)
            & full_subrelstr(B,A) ) )
     <= rel_str(A) ) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(t32_ordinal1,lemma,
    ! [A,B] :
      ( ~ ( empty_set != A
          & ! [C] :
              ( ~ ( ! [D] :
                      ( ( ordinal_subset(C,D)
                       <= in(D,A) )
                     <= ordinal(D) )
                  & in(C,A) )
             <= ordinal(C) )
          & subset(A,B) )
     <= ordinal(B) ) ).

fof(t26_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_intersection2(A,C),set_intersection2(B,C))
     <= subset(A,B) ) ).

fof(l1_wellord1,lemma,
    ! [A] :
      ( ( ! [B] :
            ( in(ordered_pair(B,B),A)
           <= in(B,relation_field(A)) )
      <=> reflexive(A) )
     <= relation(A) ) ).

fof(t53_wellord1,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
               => ( ( transitive(B)
                   <= transitive(A) )
                  & ( connected(A)
                   => connected(B) )
                  & ( well_founded_relation(A)
                   => well_founded_relation(B) )
                  & ( antisymmetric(B)
                   <= antisymmetric(A) )
                  & ( reflexive(A)
                   => reflexive(B) ) ) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(t31_wellord1,lemma,
    ! [A,B] :
      ( ( well_founded_relation(B)
       => well_founded_relation(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) )
     <= v4_membered(A) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & finite(B)
          & element(B,powerset(A)) )
     <= ~ empty(A) ) ).

fof(t60_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ! [E] :
                      ( element(E,the_carrier(B))
                     => ! [F] :
                          ( ( related(A,C,D)
                           <= ( D = F
                              & related(B,E,F)
                              & E = C ) )
                         <= element(F,the_carrier(B)) ) ) )
             <= element(C,the_carrier(A)) ) )
     <= rel_str(A) ) ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( is_reflexive_in(A,B)
        <=> ! [C] :
              ( in(C,B)
             => in(ordered_pair(C,C),A) ) )
     <= relation(A) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_rat_1(B)
            & v1_xreal_0(B) ) ) ) ).

fof(t31_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( relstr_set_smaller(poset_of_lattice(B),A,C)
          <=> latt_element_smaller(B,cast_to_el_of_lattice(B,C),A) )
         <= element(C,the_carrier(poset_of_lattice(B))) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) ) ) ).

fof(t20_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(B,relation_rng(C))
          & in(A,relation_dom(C)) )
       <= in(ordered_pair(A,B),C) ) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A) ) ).

fof(d2_tex_2,axiom,
    ! [A,B] :
      ( element(B,A)
     => ( proper_element(B,A)
      <=> union(A) != B ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,B)
         <= in(C,A) ) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( ~ proper_subset(B,A)
     <= proper_subset(A,B) ) ).

fof(dt_m1_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => rel_str(B) )
     <= rel_str(A) ) ).

fof(d16_lattices,axiom,
    ! [A] :
      ( ( ! [B] :
            ( ( B = bottom_of_semilattstr(A)
            <=> ! [C] :
                  ( ( meet(A,B,C) = B
                    & B = meet(A,C,B) )
                 <= element(C,the_carrier(A)) ) )
           <= element(B,the_carrier(A)) )
       <= lower_bounded_semilattstr(A) )
     <= ( meet_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(d11_grcat_1,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => identity_as_relation_of(the_carrier(A)) = identity_on_carrier(A) ) ).

fof(d1_binop_1,axiom,
    ! [A] :
      ( ! [B,C] : apply(A,ordered_pair(B,C)) = apply_binary(A,B,C)
     <= ( function(A)
        & relation(A) ) ) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) )
     <= element(B,powerset(A)) ) ).

fof(cc4_funct_2,axiom,
    ! [A,B] :
      ( ( ( bijective(B,A,A)
          & onto(B,A,A)
          & quasi_total(B,A,A)
          & one_to_one(B)
          & function(B) )
       <= ( function(B)
          & quasi_total(B,A,A)
          & reflexive(B)
          & v1_partfun1(B,A,A) ) )
     <= relation_of2(B,A,A) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( element(A,C)
     <= ( in(A,B)
        & element(B,powerset(C)) ) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : set_union2(A,singleton(A)) = succ(A) ).

fof(d8_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ? [C] :
              ( element(C,the_carrier(A))
              & relstr_element_smaller(A,B,C)
              & ! [D] :
                  ( ( D = C
                   <= ( ! [E] :
                          ( ( relstr_element_smaller(A,B,E)
                           => related(A,E,D) )
                         <= element(E,the_carrier(A)) )
                      & relstr_element_smaller(A,B,D) ) )
                 <= element(D,the_carrier(A)) )
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( related(A,D,C)
                   <= relstr_element_smaller(A,B,D) ) ) )
        <=> ex_inf_of_relstr_set(A,B) ) ) ).

fof(d1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ( ( in(the_carrier(A),the_topology(A))
          & ! [B] :
              ( element(B,powerset(powerset(the_carrier(A))))
             => ( in(union_of_subsets(the_carrier(A),B),the_topology(A))
               <= subset(B,the_topology(A)) ) )
          & ! [B] :
              ( ! [C] :
                  ( element(C,powerset(the_carrier(A)))
                 => ( in(subset_intersection2(the_carrier(A),B,C),the_topology(A))
                   <= ( in(C,the_topology(A))
                      & in(B,the_topology(A)) ) ) )
             <= element(B,powerset(the_carrier(A))) ) )
      <=> topological_space(A) ) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> relation_of2_as_subset(C,A,B) ) ).

fof(s1_xboole_0__e2_37_1_1__pre_topc__1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & top_str(A)
        & topological_space(A) )
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(set_difference(cast_as_carrier_subset(A),D),B)
            & in(D,powerset(the_carrier(A))) ) ) ) ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => one_sorted_str(A) ) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( subset_complement(A,B) = set_difference(A,B)
     <= element(B,powerset(A)) ) ).

fof(l40_tops_1,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ! [C] :
              ( ( in(C,subset_complement(the_carrier(A),B))
              <=> ~ in(C,B) )
             <= element(C,the_carrier(A)) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t94_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom_restriction(B,A) = relation_composition(identity_relation(A),B) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( element(B,A)
         => v1_xcmplx_0(B) ) ) ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(union_of_subsets(A,B),powerset(A))
     <= element(B,powerset(powerset(A))) ) ).

fof(s1_tarski__e4_27_3_1__finset_1__1,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) )
     => ( ! [C,D,E] :
            ( ( ? [F] :
                  ( D = set_difference(F,singleton(A))
                  & in(F,B) )
              & ? [G] :
                  ( E = set_difference(G,singleton(A))
                  & in(G,B) )
              & C = E
              & D = C )
           => E = D )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,powerset(A))
                & D = E
                & ? [H] :
                    ( in(H,B)
                    & D = set_difference(H,singleton(A)) ) ) ) ) ) ).

fof(t52_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( ( closed_subset(B,A)
             <= ( topological_space(A)
                & topstr_closure(A,B) = B ) )
            & ( closed_subset(B,A)
             => B = topstr_closure(A,B) ) ) )
     <= top_str(A) ) ).

fof(t74_relat_1,lemma,
    ! [A,B,C,D] :
      ( relation(D)
     => ( ( in(ordered_pair(A,B),D)
          & in(A,C) )
      <=> in(ordered_pair(A,B),relation_composition(identity_relation(C),D)) ) ) ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(t33_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ordinal(B)
         => ( in(A,B)
          <=> ordinal_subset(succ(A),B) ) )
     <= ordinal(A) ) ).

fof(s1_tarski__e18_27__finset_1__1,axiom,
    ! [A] :
      ( ( ? [B] :
          ! [C] :
            ( in(C,B)
          <=> ? [D] :
                ( C = D
                & ? [M] :
                    ( ( ! [N] :
                          ( element(N,powerset(powerset(M)))
                         => ~ ( ! [O] :
                                  ~ ( in(O,N)
                                    & ! [P] :
                                        ( ( in(P,N)
                                          & subset(O,P) )
                                       => P = O ) )
                              & empty_set != N ) )
                     <= in(M,omega) )
                    & M = C
                    & ordinal(M) )
                & in(D,succ(A)) ) )
       <= ! [B,C,D] :
            ( ( ? [E] :
                  ( ordinal(E)
                  & ( ! [F] :
                        ( element(F,powerset(powerset(E)))
                       => ~ ( ! [G] :
                                ~ ( in(G,F)
                                  & ! [H] :
                                      ( H = G
                                     <= ( in(H,F)
                                        & subset(G,H) ) ) )
                            & empty_set != F ) )
                   <= in(E,omega) )
                  & C = E )
              & ? [I] :
                  ( ordinal(I)
                  & ( in(I,omega)
                   => ! [J] :
                        ( element(J,powerset(powerset(I)))
                       => ~ ( J != empty_set
                            & ! [K] :
                                ~ ( ! [L] :
                                      ( L = K
                                     <= ( subset(K,L)
                                        & in(L,J) ) )
                                  & in(K,J) ) ) ) )
                  & I = D )
              & D = B
              & C = B )
           => C = D ) )
     <= ordinal(A) ) ).

fof(rc2_orders_2,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & antisymmetric_relstr(A)
      & transitive_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A) ) ).

fof(fc2_ordinal1,axiom,
    ( relation_empty_yielding(empty_set)
    & epsilon_transitive(empty_set)
    & ordinal(empty_set)
    & epsilon_connected(empty_set)
    & empty(empty_set)
    & one_to_one(empty_set)
    & function(empty_set)
    & relation(empty_set) ) ).

fof(t54_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( function(C)
                & relation(C) )
             => ( ( well_ordering(A)
                  & relation_isomorphism(A,B,C) )
               => well_ordering(B) ) ) ) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( apply_binary(D,E,F) = apply_binary_as_element(A,B,C,D,E,F)
     <= ( ~ empty(B)
        & function(D)
        & quasi_total(D,cartesian_product2(A,B),C)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B)
        & ~ empty(A) ) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & epsilon_transitive(A) )
     <= ordinal(A) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(B,A) = unordered_pair(A,B) ).

fof(t23_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( ! [D] :
            ~ ( ! [E] : ~ in(ordered_pair(E,D),C)
              & in(D,B) )
      <=> relation_rng_as_subset(A,B,C) = B ) ) ).

fof(d2_compts_1,axiom,
    ! [A] :
      ( ( empty_set != A
        & ! [B] :
            ~ ( B != empty_set
              & subset(B,A)
              & finite(B)
              & set_meet(B) = empty_set ) )
    <=> centered(A) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( meet(A,B,C) = meet_commut(A,B,C)
     <= ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & meet_commutative(A) ) ) ).

fof(t144_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_image(B,A),relation_rng(B)) ) ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B)) ) ) ).

fof(t51_tops_1,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => open_subset(interior(A,B),A) ) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( relation_inverse_image(A,B) = C
        <=> ! [D] :
              ( ? [E] :
                  ( in(E,B)
                  & in(ordered_pair(D,E),A) )
            <=> in(D,C) ) ) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( ( v1_membered(B)
            & v2_membered(B) )
         <= element(B,powerset(A)) ) ) ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(t45_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( subset(relation_rng(relation_composition(A,B)),relation_rng(B))
         <= relation(B) ) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( ? [D] : in(ordered_pair(C,D),A)
            <=> in(C,B) )
        <=> B = relation_dom(A) ) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(t1_lattice3,lemma,
    ! [A,B] :
      ( element(B,the_carrier(boole_lattice(A)))
     => ! [C] :
          ( ( set_union2(B,C) = join(boole_lattice(A),B,C)
            & set_intersection2(B,C) = meet(boole_lattice(A),B,C) )
         <= element(C,the_carrier(boole_lattice(A))) ) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= meet_semilatt_str(A) ) ).

fof(t28_wellord2,lemma,
    ! [A] :
      ( ~ empty(A)
     => ~ ( ! [B] :
              ~ ( B = empty_set
                & in(B,A) )
          & ! [B] :
              ( ~ ( relation_dom(B) = A
                  & ! [C] :
                      ( in(apply(B,C),C)
                     <= in(C,A) ) )
             <= ( relation(B)
                & function(B) ) ) ) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( element(relation_dom_as_subset(A,B,C),powerset(A))
     <= relation_of2(C,A,B) ) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( ( B = identity_relation(A)
      <=> ! [C,D] :
            ( ( C = D
              & in(C,A) )
          <=> in(ordered_pair(C,D),B) ) )
     <= relation(B) ) ).

fof(fc1_orders_2,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation_of2(B,A,A) )
     => ( strict_rel_str(rel_str_of(A,B))
        & ~ empty_carrier(rel_str_of(A,B)) ) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( relation_image(A,B) = C
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(ordered_pair(E,D),A)
                  & in(E,B) ) ) )
     <= relation(A) ) ).

fof(d9_orders_2,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ( in(ordered_pair(B,C),the_InternalRel(A))
              <=> related(A,B,C) ) ) )
     <= rel_str(A) ) ).

fof(dt_u2_lattices,axiom,
    ! [A] :
      ( join_semilatt_str(A)
     => ( function(the_L_join(A))
        & relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(t70_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
       => apply(C,B) = apply(relation_dom_restriction(C,A),B) ) ) ).

fof(d4_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( ( well_founded_relation(A)
          & connected(A)
          & antisymmetric(A)
          & transitive(A)
          & reflexive(A) )
      <=> well_ordering(A) ) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_intersection2(B,A))
     <= v1_membered(A) ) ).

fof(t23_ordinal1,lemma,
    ! [A,B] :
      ( ( ordinal(A)
       <= in(A,B) )
     <= ordinal(B) ) ).

fof(d4_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( ( ( empty_set = C
            <=> apply(A,B) = C )
           <= ~ in(B,relation_dom(A)) )
          & ( in(B,relation_dom(A))
           => ( in(ordered_pair(B,C),A)
            <=> C = apply(A,B) ) ) ) ) ).

fof(d7_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(A,B,C)
              <=> ( one_to_one(C)
                  & ! [D,E] :
                      ( ( in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B)
                        & in(D,relation_field(A)) )
                    <=> in(ordered_pair(D,E),A) )
                  & relation_rng(C) = relation_field(B)
                  & relation_dom(C) = relation_field(A) ) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) ) ) ).

fof(t5_wellord2,lemma,
    ! [A] : antisymmetric(inclusion_relation(A)) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(t167_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_inverse_image(B,A),relation_dom(B)) ) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( relation(set_union2(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(t60_relat_1,lemma,
    ( relation_rng(empty_set) = empty_set
    & relation_dom(empty_set) = empty_set ) ).

fof(t118_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B)) ) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation_composition(A,B) = C
              <=> ! [D,E] :
                    ( ? [F] :
                        ( in(ordered_pair(D,F),A)
                        & in(ordered_pair(F,E),B) )
                  <=> in(ordered_pair(D,E),C) ) )
             <= relation(C) )
         <= relation(B) )
     <= relation(A) ) ).

fof(s1_xboole_0__e6_21__wellord2__1,lemma,
    ! [A,B,C] :
      ( ? [D] :
        ! [E] :
          ( ( in(E,cartesian_product2(A,A))
            & ? [F,G] :
                ( in(ordered_pair(apply(C,F),apply(C,G)),B)
                & E = ordered_pair(F,G) ) )
        <=> in(E,D) )
     <= ( function(C)
        & relation(C)
        & relation(B) ) ) ).

fof(d5_ordinal2,axiom,
    ! [A] :
      ( A = omega
    <=> ( ! [B] :
            ( ordinal(B)
           => ( ( being_limit_ordinal(B)
                & in(empty_set,B) )
             => subset(A,B) ) )
        & ordinal(A)
        & being_limit_ordinal(A)
        & in(empty_set,A) ) ) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( set_union2(A,set_difference(B,A)) = B
     <= subset(A,B) ) ).

fof(t37_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( relation_rng(A) = relation_dom(relation_inverse(A))
        & relation_rng(relation_inverse(A)) = relation_dom(A) ) ) ).

fof(l71_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( in(C,B)
         <= in(C,A) )
     => element(A,powerset(B)) ) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(fraenkel_a_1_0_filter_1,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ( ? [C,D] :
            ( element(D,the_carrier(B))
            & A = ordered_pair_as_product_element(the_carrier(B),the_carrier(B),C,D)
            & below_refl(B,C,D)
            & element(C,the_carrier(B)) )
      <=> in(A,a_1_0_filter_1(B)) ) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( empty(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v5_membered(A)
        & v4_membered(A) ) ) ).

fof(dt_k1_wellord2,axiom,
    ! [A] : relation(inclusion_relation(A)) ).

fof(s1_tarski__e1_40__pre_topc__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & ? [H] :
                    ( subset(B,D)
                    & closed_subset(H,A)
                    & D = H
                    & element(H,powerset(the_carrier(A))) )
                & D = E ) )
       <= ! [C,D,E] :
            ( ( C = E
              & ? [G] :
                  ( element(G,powerset(the_carrier(A)))
                  & subset(B,E)
                  & closed_subset(G,A)
                  & E = G )
              & ? [F] :
                  ( subset(B,D)
                  & closed_subset(F,A)
                  & F = D
                  & element(F,powerset(the_carrier(A))) )
              & D = C )
           => D = E ) )
     <= ( element(B,powerset(the_carrier(A)))
        & top_str(A)
        & topological_space(A) ) ) ).

fof(d12_relat_2,axiom,
    ! [A] :
      ( ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t32_filter_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( below_refl(A,B,C)
              <=> in(ordered_pair_as_product_element(the_carrier(A),the_carrier(A),B,C),relation_of_lattice(A)) )
             <= element(C,the_carrier(A)) ) )
     <= ( lattice(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(fc3_orders_2,axiom,
    ! [A,B] :
      ( ( reflexive_relstr(rel_str_of(A,B))
        & transitive_relstr(rel_str_of(A,B))
        & antisymmetric_relstr(rel_str_of(A,B))
        & strict_rel_str(rel_str_of(A,B)) )
     <= ( relation_of2(B,A,A)
        & v1_partfun1(B,A,A)
        & transitive(B)
        & antisymmetric(B)
        & reflexive(B) ) ) ).

fof(d11_waybel_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ( ~ empty_carrier(B)
            & net_str(B,A) )
         => ! [C] :
              ( ? [D] :
                  ( element(D,the_carrier(B))
                  & ! [E] :
                      ( ( related(B,D,E)
                       => in(apply_netmap(A,B,E),C) )
                     <= element(E,the_carrier(B)) ) )
            <=> is_eventually_in(A,B,C) ) )
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(fc2_orders_2,axiom,
    ! [A] :
      ( ( relation(the_InternalRel(A))
        & reflexive(the_InternalRel(A))
        & transitive(the_InternalRel(A))
        & v1_partfun1(the_InternalRel(A),the_carrier(A),the_carrier(A))
        & antisymmetric(the_InternalRel(A)) )
     <= ( antisymmetric_relstr(A)
        & rel_str(A)
        & transitive_relstr(A)
        & reflexive_relstr(A) ) ) ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) ).

fof(d13_lattices,axiom,
    ! [A] :
      ( ( meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ( ? [B] :
            ( element(B,the_carrier(A))
            & ! [C] :
                ( element(C,the_carrier(A))
               => ( B = meet(A,B,C)
                  & meet(A,C,B) = B ) ) )
      <=> lower_bounded_semilattstr(A) ) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

fof(rc3_lattices,axiom,
    ? [A] :
      ( latt_str(A)
      & strict_latt_str(A) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     <= v3_membered(A) ) ).

fof(t5_tex_2,lemma,
    ! [A,B] :
      ( ( proper_element(B,powerset(A))
      <=> A != B )
     <= element(B,powerset(A)) ) ).

fof(t24_wellord1,lemma,
    ! [A,B] :
      ( ( transitive(relation_restriction(B,A))
       <= transitive(B) )
     <= relation(B) ) ).

fof(cc1_lattices,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & meet_associative(A)
          & meet_commutative(A) )
       <= ( lattice(A)
          & ~ empty_carrier(A) ) )
     <= latt_str(A) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( C = A
        & D = B )
     <= ordered_pair(A,B) = ordered_pair(C,D) ) ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_union2(A,C),B)
     <= ( subset(C,B)
        & subset(A,B) ) ) ).

fof(dt_k4_lattice3,axiom,
    ! [A,B] :
      ( element(cast_to_el_of_LattPOSet(A,B),the_carrier(poset_of_lattice(A)))
     <= ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & element(B,the_carrier(A)) ) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(commutativity_k2_struct_0,axiom,
    ! [A,B,C] :
      ( unordered_pair_as_carrier_subset(A,B,C) = unordered_pair_as_carrier_subset(A,C,B)
     <= ( element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(t119_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_rng(relation_rng_restriction(A,B)) = set_intersection2(relation_rng(B),A) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(redefinition_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( apply_as_element(A,B,C,D) = apply(C,D)
     <= ( ~ empty(A)
        & element(D,A)
        & relation_of2(C,A,B)
        & quasi_total(C,A,B)
        & function(C) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & empty(C)
        & element(B,powerset(C)) ) ).

fof(dt_k7_grcat_1,axiom,
    ! [A] :
      ( ( relation_of2_as_subset(identity_on_carrier(A),the_carrier(A),the_carrier(A))
        & quasi_total(identity_on_carrier(A),the_carrier(A),the_carrier(A))
        & function(identity_on_carrier(A)) )
     <= one_sorted_str(A) ) ).

fof(t38_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(B,C)
        & in(A,C) ) ) ).

fof(t143_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_image(C,B))
      <=> ? [D] :
            ( in(D,relation_dom(C))
            & in(ordered_pair(D,A),C)
            & in(D,B) ) )
     <= relation(C) ) ).

fof(redefinition_k2_lattice3,axiom,
    ! [A] :
      ( k2_lattice3(A) = relation_of_lattice(A)
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(t49_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( ( relation_isomorphism(B,A,function_inverse(C))
               <= relation_isomorphism(A,B,C) )
             <= ( relation(C)
                & function(C) ) )
         <= relation(B) ) ) ).

fof(existence_l1_lattices,axiom,
    ? [A] : meet_semilatt_str(A) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(dt_k1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => element(empty_carrier_subset(A),powerset(the_carrier(A))) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( function(A)
     <= empty(A) ) ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ).

fof(t12_tops_2,lemma,
    ! [A,B] :
      ( ( subset_complement(A,meet_of_subsets(A,B)) = union_of_subsets(A,complements_of_subsets(A,B))
       <= B != empty_set )
     <= element(B,powerset(powerset(A))) ) ).

fof(s1_tarski__e10_24__wellord2__1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ( ! [C,D,E] :
            ( D = E
           <= ( in(C,A)
              & ? [F] :
                  ( ! [G] :
                      ( in(ordered_pair(D,G),B)
                     <= in(G,F) )
                  & in(D,F)
                  & F = C )
              & in(C,A)
              & ? [H] :
                  ( in(E,H)
                  & ! [I] :
                      ( in(ordered_pair(E,I),B)
                     <= in(I,H) )
                  & C = H ) ) )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ? [J] :
                    ( ! [K] :
                        ( in(ordered_pair(D,K),B)
                       <= in(K,J) )
                    & in(D,J)
                    & J = E )
                & in(E,A)
                & in(E,A) ) ) ) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( relation(C)
         => ( C = relation_dom_restriction(A,B)
          <=> ! [D,E] :
                ( ( in(D,B)
                  & in(ordered_pair(D,E),A) )
              <=> in(ordered_pair(D,E),C) ) ) ) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( B != A
        & empty(B)
        & empty(A) ) ).

fof(t16_yellow_0,lemma,
    ! [A] :
      ( ( rel_str(A)
        & antisymmetric_relstr(A) )
     => ! [B] :
          ( ? [C] :
              ( relstr_element_smaller(A,B,C)
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( related(A,D,C)
                   <= relstr_element_smaller(A,B,D) ) )
              & element(C,the_carrier(A)) )
        <=> ex_inf_of_relstr_set(A,B) ) ) ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( element(meet_commut(A,B,C),the_carrier(A))
     <= ( element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & meet_semilatt_str(A)
        & meet_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(d22_lattice3,axiom,
    ! [A] :
      ( ! [B] : meet_of_latt_set(A,B) = join_of_latt_set(A,a_2_2_lattice3(A,B))
     <= ( ~ empty_carrier(A)
        & latt_str(A) ) ) ).

fof(t3_lattice3,lemma,
    ! [A] :
      ( lower_bounded_semilattstr(boole_lattice(A))
      & empty_set = bottom_of_semilattstr(boole_lattice(A)) ) ).

fof(dt_u1_waybel_0,axiom,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ( function(the_mapping(A,B))
        & quasi_total(the_mapping(A,B),the_carrier(B),the_carrier(A))
        & relation_of2_as_subset(the_mapping(A,B),the_carrier(B),the_carrier(A)) ) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( empty(A)
      & function(A)
      & relation(A) ) ).

fof(t14_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( relation_of2_as_subset(D,C,B)
       <= subset(relation_rng(D),B) ) ) ).

fof(fc6_tops_1,axiom,
    ! [A,B] :
      ( ( element(B,powerset(the_carrier(A)))
        & top_str(A)
        & topological_space(A) )
     => open_subset(interior(A,B),A) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & one_to_one(A)
        & function(A) )
     <= ( function(A)
        & empty(A)
        & relation(A) ) ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( set_difference(A,singleton(B)) = A
    <=> ~ in(B,A) ) ).

fof(d4_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ? [B] :
            ( element(B,the_carrier(A))
            & relstr_element_smaller(A,the_carrier(A),B) )
      <=> lower_bounded_relstr(A) ) ) ).

fof(d1_lattices,axiom,
    ! [A] :
      ( ( join_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_join(A),B,C) = join(A,B,C)
             <= element(C,the_carrier(A)) ) ) ) ).

fof(reflexivity_r3_orders_2,axiom,
    ! [A,B,C] :
      ( related_reflexive(A,B,B)
     <= ( ~ empty_carrier(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & rel_str(A)
        & reflexive_relstr(A) ) ) ).

fof(dt_k3_lattice3,axiom,
    ! [A] :
      ( ( strict_rel_str(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & rel_str(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A)) )
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(t41_ordinal1,lemma,
    ! [A] :
      ( ( being_limit_ordinal(A)
      <=> ! [B] :
            ( ordinal(B)
           => ( in(succ(B),A)
             <= in(B,A) ) ) )
     <= ordinal(A) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & element(B,powerset(A)) ) ).

fof(cc3_arytm_3,axiom,
    ! [A] :
      ( ( ordinal(A)
        & natural(A)
        & epsilon_connected(A)
        & epsilon_transitive(A) )
     <= element(A,omega) ) ).

fof(free_g3_lattices,axiom,
    ! [A,B,C] :
      ( ! [D,E,F] :
          ( latt_str_of(D,E,F) = latt_str_of(A,B,C)
         => ( D = A
            & E = B
            & F = C ) )
     <= ( quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & function(C)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(B) ) ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & element(B,powerset(the_carrier(A))) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t3_xboole_1,lemma,
    ! [A] :
      ( empty_set = A
     <= subset(A,empty_set) ) ).

fof(dt_k1_lattices,axiom,
    ! [A,B,C] :
      ( ( join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) )
     => element(join(A,B,C),the_carrier(A)) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( in(A,B)
        | empty(B) )
     <= element(A,B) ) ).

fof(t1_waybel_0,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( ! [C] :
                ( ? [D] :
                    ( in(D,B)
                    & relstr_set_smaller(A,C,D)
                    & element(D,the_carrier(A)) )
               <= ( finite(C)
                  & element(C,powerset(B)) ) )
          <=> ( ~ empty(B)
              & directed_subset(B,A) ) ) )
     <= ( transitive_relstr(A)
        & rel_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(union(A))
        & ordinal(union(A))
        & epsilon_connected(union(A)) ) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( B = set_union2(singleton(A),B)
     <= in(A,B) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_rat_1(B)
            & v1_int_1(B)
            & v1_xreal_0(B)
            & v1_xcmplx_0(B) ) ) ) ).

fof(d12_waybel_0,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ( net_str(B,A)
            & ~ empty_carrier(B) )
         => ! [C] :
              ( is_often_in(A,B,C)
            <=> ! [D] :
                  ( element(D,the_carrier(B))
                 => ? [E] :
                      ( element(E,the_carrier(B))
                      & in(apply_netmap(A,B,E),C)
                      & related(B,D,E) ) ) ) ) ) ).

fof(redefinition_k1_toler_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation_restriction_as_relation_of(A,B) = relation_restriction(A,B) ) ).

fof(t146_funct_1,lemma,
    ! [A,B] :
      ( ( subset(A,relation_inverse_image(B,relation_image(B,A)))
       <= subset(A,relation_dom(B)) )
     <= relation(B) ) ).

fof(s1_tarski__e2_37_1_1__pre_topc__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & D = E
                & in(set_difference(cast_as_carrier_subset(A),D),B) ) )
       <= ! [C,D,E] :
            ( ( D = C
              & in(set_difference(cast_as_carrier_subset(A),E),B)
              & E = C
              & in(set_difference(cast_as_carrier_subset(A),D),B) )
           => D = E ) )
     <= ( topological_space(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & top_str(A) ) ) ).

fof(l28_zfmisc_1,lemma,
    ! [A,B] :
      ( disjoint(singleton(A),B)
     <= ~ in(A,B) ) ).

fof(dt_k2_mcart_1,axiom,
    $true ).

fof(t13_compts_1,lemma,
    ! [A] :
      ( ( ! [B] :
            ( ~ ( meet_of_subsets(the_carrier(A),B) = empty_set
                & closed_subsets(B,A)
                & centered(B) )
           <= element(B,powerset(powerset(the_carrier(A)))) )
      <=> compact_top_space(A) )
     <= ( topological_space(A)
        & top_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(free_g1_orders_2,axiom,
    ! [A,B] :
      ( ! [C,D] :
          ( ( C = A
            & D = B )
         <= rel_str_of(A,B) = rel_str_of(C,D) )
     <= relation_of2(B,A,A) ) ).

fof(t64_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( empty_set = A
       <= ( relation_rng(A) = empty_set
          | empty_set = relation_dom(A) ) ) ) ).

fof(cc2_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     <= ( cup_closed(A)
        & diff_closed(A) ) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A)
      & function(A) ) ).

fof(dt_g1_orders_2,axiom,
    ! [A,B] :
      ( relation_of2(B,A,A)
     => ( rel_str(rel_str_of(A,B))
        & strict_rel_str(rel_str_of(A,B)) ) ) ).

fof(t6_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B)
        & function(D) )
     => ( ( in(apply(D,C),relation_rng(D))
          | empty_set = B )
       <= in(C,A) ) ) ).

fof(d2_tops_2,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( ! [C] :
                ( ( closed_subset(C,A)
                 <= in(C,B) )
               <= element(C,powerset(the_carrier(A))) )
          <=> closed_subsets(B,A) ) ) ) ).

fof(s1_xboole_0__e6_22__wellord2,lemma,
    ! [A] :
    ? [B] :
    ! [C] :
      ( ( in(C,A)
        & ordinal(C) )
    <=> in(C,B) ) ).

fof(fc39_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v3_membered(A) ) ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( function(function_inverse(A))
        & relation(function_inverse(A)) ) ) ).

fof(t178_relat_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
       => subset(relation_inverse_image(C,A),relation_inverse_image(C,B)) )
     <= relation(C) ) ).

fof(d9_relat_2,axiom,
    ! [A] :
      ( ( is_reflexive_in(A,relation_field(A))
      <=> reflexive(A) )
     <= relation(A) ) ).

fof(fc3_lattices,axiom,
    ! [A,B,C] :
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & function(C)
        & relation_of2(B,cartesian_product2(A,A),A)
        & ~ empty(A) )
     => ( strict_latt_str(latt_str_of(A,B,C))
        & ~ empty_carrier(latt_str_of(A,B,C)) ) ) ).

fof(d8_waybel_0,axiom,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ( net_str(B,A)
            & ~ empty_carrier(B) )
         => ! [C] :
              ( apply_netmap(A,B,C) = apply_on_structs(B,A,the_mapping(A,B),C)
             <= element(C,the_carrier(B)) ) ) ) ).

fof(existence_m1_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ? [B] : subrelstr(B,A) ) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( A = set_difference(A,B)
    <=> disjoint(A,B) ) ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(d8_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ( meet_absorbing(A)
      <=> ! [B] :
            ( ! [C] :
                ( C = join(A,meet(A,B,C),C)
               <= element(C,the_carrier(A)) )
           <= element(B,the_carrier(A)) ) ) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) )
     <= subset(A,B) ) ).

fof(d1_tops_1,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset_complement(the_carrier(A),topstr_closure(A,subset_complement(the_carrier(A),B))) = interior(A,B) )
     <= top_str(A) ) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(s1_xboole_0__e4_7_1__tops_2__1,lemma,
    ! [A,B] :
      ( ! [C] :
        ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(E,cartesian_product2(complements_of_subsets(the_carrier(A),B),C))
            & ? [F,G] :
                ( in(F,complements_of_subsets(the_carrier(A),B))
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( G = subset_complement(the_carrier(A),H)
                     <= F = H ) )
                & E = ordered_pair(F,G) ) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( function(C)
      & relation(C)
      & relation_of2(C,A,B) ) ).

fof(t25_wellord2,lemma,
    ! [A,B] :
      ( ( ( A = relation_field(relation_restriction(B,A))
          & well_ordering(relation_restriction(B,A)) )
       <= well_orders(B,A) )
     <= relation(B) ) ).

fof(t29_yellow_0,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & complete_latt_str(A)
        & latt_str(A) )
     => ! [B] :
          ( meet_on_relstr(poset_of_lattice(A),B) = meet_of_latt_set(A,B)
          & join_of_latt_set(A,B) = join_on_relstr(poset_of_lattice(A),B) ) ) ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= top_str(A) ) ).

fof(d4_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_antisymmetric_in(A,B)
        <=> ! [C,D] :
              ( D = C
             <= ( in(C,B)
                & in(D,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,C),A) ) ) ) ) ).

fof(d1_lattice3,axiom,
    ! [A,B] :
      ( ( boole_lattice(A) = B
      <=> ( ! [C] :
              ( ! [D] :
                  ( element(D,powerset(A))
                 => ( subset_intersection2(A,C,D) = apply_binary(the_L_meet(B),C,D)
                    & subset_union2(A,C,D) = apply_binary(the_L_join(B),C,D) ) )
             <= element(C,powerset(A)) )
          & the_carrier(B) = powerset(A) ) )
     <= ( strict_latt_str(B)
        & latt_str(B) ) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => relation(relation_rng_restriction(A,B)) ) ).

fof(idempotence_k4_subset_1,axiom,
    ! [A,B,C] :
      ( B = subset_union2(A,B,B)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( unordered_triple(A,B,C) = D
    <=> ! [E] :
          ( ~ ( E != A
              & B != E
              & C != E )
        <=> in(E,D) ) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( subset(A,B)
      <=> ordinal_subset(A,B) )
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) ).

fof(existence_l1_waybel_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ? [B] : net_str(B,A) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(t5_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( is_well_founded_in(A,relation_field(A))
      <=> well_founded_relation(A) ) ) ).

fof(rc2_tex_2,axiom,
    ! [A] :
    ? [B] :
      ( ~ proper_element(B,powerset(A))
      & element(B,powerset(A)) ) ).

fof(rc6_lattices,axiom,
    ? [A] :
      ( latt_str(A)
      & strict_latt_str(A)
      & ~ empty_carrier(A) ) ).

fof(d8_filter_1,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) )
     => relation_of_lattice(A) = a_1_0_filter_1(A) ) ).

fof(redefinition_k4_subset_1,axiom,
    ! [A,B,C] :
      ( subset_union2(A,B,C) = set_union2(B,C)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(s1_xboole_0__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ! [C] :
        ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( ? [F,G] :
                ( ordered_pair(F,G) = E
                & ? [H] :
                    ( ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(G,I),B) )
                    & in(G,H)
                    & H = F )
                & in(F,A) )
            & in(E,cartesian_product2(A,C)) ) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(fc4_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(subset_complement(the_carrier(A),B),A)
     <= ( topological_space(A)
        & top_str(A)
        & open_subset(B,A)
        & element(B,powerset(the_carrier(A))) ) ) ).

fof(t44_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subset(meet_of_subsets(the_carrier(A),B),A)
           <= ! [C] :
                ( ( closed_subset(C,A)
                 <= in(C,B) )
               <= element(C,powerset(the_carrier(A))) ) ) )
     <= ( topological_space(A)
        & top_str(A) ) ) ).

fof(cc3_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => ( ( quasi_total(C,A,B)
          & onto(C,A,B)
          & one_to_one(C)
          & function(C) )
       => ( function(C)
          & bijective(C,A,B)
          & quasi_total(C,A,B) ) ) ) ).

fof(d10_yellow_0,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ( ex_inf_of_relstr_set(A,B)
           => ( meet_on_relstr(A,B) = C
            <=> ( ! [D] :
                    ( ( relstr_element_smaller(A,B,D)
                     => related(A,D,C) )
                   <= element(D,the_carrier(A)) )
                & relstr_element_smaller(A,B,C) ) ) )
         <= element(C,the_carrier(A)) )
     <= rel_str(A) ) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(d17_lattice3,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( below(A,D,B)
                   <= in(D,C) ) )
            <=> latt_element_smaller(A,B,C) )
         <= element(B,the_carrier(A)) )
     <= ( latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(rc1_orders_2,axiom,
    ? [A] :
      ( strict_rel_str(A)
      & rel_str(A) ) ).

fof(t5_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ~ ( is_a_cover_of_carrier(A,B)
              & B = empty_set )
         <= element(B,powerset(powerset(the_carrier(A)))) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(fc2_lattice2,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & join_commutative(A) )
     => ( relation(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_binop_1(the_L_join(A),the_carrier(A))
        & function(the_L_join(A)) ) ) ).

fof(t30_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( ( relstr_set_smaller(A,C,B)
                  & ! [D] :
                      ( ( related(A,B,D)
                       <= relstr_set_smaller(A,C,D) )
                     <= element(D,the_carrier(A)) ) )
               => ( B = join_on_relstr(A,C)
                  & ex_sup_of_relstr_set(A,C) ) )
              & ( ( B = join_on_relstr(A,C)
                  & ex_sup_of_relstr_set(A,C) )
               => ( relstr_set_smaller(A,C,B)
                  & ! [D] :
                      ( element(D,the_carrier(A))
                     => ( relstr_set_smaller(A,C,D)
                       => related(A,B,D) ) ) ) ) ) )
     <= ( antisymmetric_relstr(A)
        & rel_str(A) ) ) ).

fof(d1_mcart_1,axiom,
    ! [A] :
      ( ! [B] :
          ( B = pair_first(A)
        <=> ! [C,D] :
              ( A = ordered_pair(C,D)
             => C = B ) )
     <= ? [B,C] : A = ordered_pair(B,C) ) ).

fof(fc12_relat_1,axiom,
    ( relation_empty_yielding(empty_set)
    & relation(empty_set)
    & empty(empty_set) ) ).

fof(s1_xboole_0__e6_27__finset_1,lemma,
    ! [A,B,C] :
      ( ( element(B,powerset(powerset(A)))
        & function(C)
        & relation(C) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(relation_image(C,E),B)
            & in(E,powerset(relation_dom(C))) ) ) ) ).

fof(dt_k2_yellow_0,axiom,
    ! [A,B] :
      ( element(meet_on_relstr(A,B),the_carrier(A))
     <= rel_str(A) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     <= in(A,B) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A) ) ).

fof(t40_xboole_1,lemma,
    ! [A,B] : set_difference(A,B) = set_difference(set_union2(A,B),B) ).

fof(t17_finset_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( finite(relation_image(B,A))
       <= finite(A) ) ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( relation(C)
      & quasi_total(C,A,B)
      & function(C)
      & relation_of2(C,A,B) ) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(t6_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ( relstr_set_smaller(A,empty_set,B)
            & relstr_element_smaller(A,empty_set,B) ) )
     <= rel_str(A) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( finite(B)
     => finite(set_intersection2(A,B)) ) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal_subset(A,B)
        | ordinal_subset(B,A) )
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(t32_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_ordering(B)
       => well_ordering(relation_restriction(B,A)) ) ) ).

fof(t30_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( latt_element_smaller(B,C,A)
          <=> relstr_set_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C)) )
         <= element(C,the_carrier(B)) )
     <= ( ~ empty_carrier(B)
        & latt_str(B)
        & lattice(B) ) ) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( B = A
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),A)
              <=> in(ordered_pair(C,D),B) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( ordinal(succ(A))
        & epsilon_connected(succ(A))
        & epsilon_transitive(succ(A))
        & ~ empty(succ(A)) ) ) ).

fof(redefinition_k6_partfun1,axiom,
    ! [A] : identity_as_relation_of(A) = identity_relation(A) ).

fof(s3_subset_1__e1_40__pre_topc,lemma,
    ! [A,B] :
      ( ? [C] :
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] :
              ( ( ? [E] :
                    ( closed_subset(E,A)
                    & subset(B,D)
                    & D = E
                    & element(E,powerset(the_carrier(A))) )
              <=> in(D,C) )
             <= element(D,powerset(the_carrier(A))) ) )
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
       => ( in(B,A)
        <=> element(B,A) ) )
      & ( empty(A)
       => ( empty(B)
        <=> element(B,A) ) ) ) ).

fof(reflexivity_r2_wellord2,axiom,
    ! [A,B] : equipotent(A,A) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v3_membered(B)
            & v2_membered(B)
            & v1_membered(B) ) )
     <= v3_membered(A) ) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_meet(A),B,C) = meet(A,B,C) ) ) ) ).

fof(l55_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( in(B,D)
        & in(A,C) )
    <=> in(ordered_pair(A,B),cartesian_product2(C,D)) ) ).

fof(d7_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ? [C] :
              ( element(C,the_carrier(A))
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( ( ! [E] :
                          ( ( relstr_set_smaller(A,B,E)
                           => related(A,D,E) )
                         <= element(E,the_carrier(A)) )
                      & relstr_set_smaller(A,B,D) )
                   => C = D ) )
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( related(A,C,D)
                   <= relstr_set_smaller(A,B,D) ) )
              & relstr_set_smaller(A,B,C) )
        <=> ex_sup_of_relstr_set(A,B) ) ) ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( meet_semilatt_str(A)
        & join_semilatt_str(A) ) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v2_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) ) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( function(A)
      & relation(A) ) ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C,D] :
              ~ ( in(D,B)
                & D != C
                & ~ in(ordered_pair(C,D),A)
                & ~ in(ordered_pair(D,C),A)
                & in(C,B) )
        <=> is_connected_in(A,B) ) ) ).

fof(t72_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( in(B,A)
       => apply(C,B) = apply(relation_dom_restriction(C,A),B) ) ) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(set_difference(A,B)) ) ).

fof(t71_relat_1,lemma,
    ! [A] :
      ( A = relation_dom(identity_relation(A))
      & relation_rng(identity_relation(A)) = A ) ).

fof(t62_funct_1,lemma,
    ! [A] :
      ( ( one_to_one(function_inverse(A))
       <= one_to_one(A) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(t145_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => subset(relation_image(B,relation_inverse_image(B,A)),A) ) ).

fof(d4_subset_1,axiom,
    ! [A] : A = cast_to_subset(A) ).

fof(t8_waybel_0,conjecture,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ( ~ empty_carrier(B)
            & net_str(B,A) )
         => ! [C,D] :
              ( subset(C,D)
             => ( ( is_eventually_in(A,B,C)
                 => is_eventually_in(A,B,D) )
                & ( is_often_in(A,B,D)
                 <= is_often_in(A,B,C) ) ) ) ) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( v1_membered(B)
         <= element(B,powerset(A)) ) ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(t5_connsp_2,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => ( point_neighbourhood(B,A,C)
               <= ( open_subset(B,A)
                  & in(C,B) ) ) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(B,A) = set_intersection2(A,B) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( ( subset(A,B)
        & B != A )
    <=> proper_subset(A,B) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( C = relation_inverse_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ( in(apply(A,D),B)
                & in(D,relation_dom(A)) ) ) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(rc9_lattices,axiom,
    ? [A] :
      ( strict_latt_str(A)
      & join_associative(A)
      & meet_commutative(A)
      & lattice(A)
      & join_absorbing(A)
      & meet_absorbing(A)
      & meet_associative(A)
      & join_commutative(A)
      & ~ empty_carrier(A)
      & latt_str(A) ) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ordinal_subset(A,A)
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( ( subset(relation_rng(A),relation_rng(B))
              & subset(relation_dom(A),relation_dom(B)) )
           <= subset(A,B) )
         <= relation(B) )
     <= relation(A) ) ).

fof(s1_tarski__e4_7_2__tops_2__2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ? [D] :
            ! [E] :
              ( ? [F] :
                  ( F = E
                  & ? [M,N] :
                      ( in(M,B)
                      & ! [O] :
                          ( ( O = M
                           => subset_complement(the_carrier(A),O) = N )
                         <= element(O,powerset(the_carrier(A))) )
                      & ordered_pair(M,N) = E )
                  & in(F,cartesian_product2(B,C)) )
            <=> in(E,D) )
         <= ! [D,E,F] :
              ( F = E
             <= ( D = E
                & ? [G,H] :
                    ( in(G,B)
                    & ! [I] :
                        ( ( subset_complement(the_carrier(A),I) = H
                         <= I = G )
                       <= element(I,powerset(the_carrier(A))) )
                    & E = ordered_pair(G,H) )
                & ? [J,K] :
                    ( ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( J = L
                         => K = subset_complement(the_carrier(A),L) ) )
                    & in(J,B)
                    & ordered_pair(J,K) = F )
                & D = F ) ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(t19_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(A,C) )
     => subset(A,set_intersection2(B,C)) ) ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( ! [B,C] :
            ( C = B
           <= ( in(C,relation_dom(A))
              & apply(A,C) = apply(A,B)
              & in(B,relation_dom(A)) ) )
      <=> one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(t46_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( ? [C] :
              ( element(C,powerset(powerset(the_carrier(A))))
              & ! [D] :
                  ( ( in(D,C)
                  <=> ( closed_subset(D,A)
                      & subset(B,D) ) )
                 <= element(D,powerset(the_carrier(A))) )
              & topstr_closure(A,B) = meet_of_subsets(the_carrier(A),C) )
         <= element(B,powerset(the_carrier(A))) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : unordered_pair(unordered_pair(A,B),singleton(A)) = ordered_pair(A,B) ).

fof(l1_zfmisc_1,lemma,
    ! [A] : empty_set != singleton(A) ).

fof(dt_k2_struct_0,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & one_sorted_str(A) )
     => element(unordered_pair_as_carrier_subset(A,B,C),powerset(the_carrier(A))) ) ).

fof(rc2_funct_2,axiom,
    ! [A] :
    ? [B] :
      ( relation(B)
      & function(B)
      & onto(B,A,A)
      & bijective(B,A,A)
      & quasi_total(B,A,A)
      & one_to_one(B)
      & relation_of2(B,A,A) ) ).

fof(redefinition_r3_lattices,axiom,
    ! [A,B,C] :
      ( ( join_absorbing(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & latt_str(A)
        & meet_absorbing(A)
        & meet_commutative(A)
        & ~ empty_carrier(A) )
     => ( below_refl(A,B,C)
      <=> below(A,B,C) ) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(B,A))
     <= ~ empty(A) ) ).

fof(t17_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset_difference(the_carrier(A),cast_as_carrier_subset(A),B) = subset_complement(the_carrier(A),B) )
     <= one_sorted_str(A) ) ).

fof(l3_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( in(C,B)
         => in(C,A) )
     <= element(B,powerset(A)) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(s1_tarski__e10_24__wellord2__2,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ! [C] :
          ( ! [D,E,F] :
              ( E = F
             <= ( D = E
                & ? [G,H] :
                    ( ? [I] :
                        ( in(H,I)
                        & ! [J] :
                            ( in(ordered_pair(H,J),B)
                           <= in(J,I) )
                        & I = G )
                    & in(G,A)
                    & E = ordered_pair(G,H) )
                & F = D
                & ? [K,L] :
                    ( ordered_pair(K,L) = F
                    & ? [M] :
                        ( K = M
                        & ! [N] :
                            ( in(N,M)
                           => in(ordered_pair(L,N),B) )
                        & in(L,M) )
                    & in(K,A) ) ) )
         => ? [D] :
            ! [E] :
              ( in(E,D)
            <=> ? [F] :
                  ( in(F,cartesian_product2(A,C))
                  & F = E
                  & ? [O,P] :
                      ( ordered_pair(O,P) = E
                      & in(O,A)
                      & ? [Q] :
                          ( in(P,Q)
                          & ! [R] :
                              ( in(ordered_pair(P,R),B)
                             <= in(R,Q) )
                          & Q = O ) ) ) ) ) ) ).

fof(s1_tarski__e4_7_1__tops_2__2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ? [D] :
            ! [E] :
              ( ? [F] :
                  ( E = F
                  & ? [M,N] :
                      ( ordered_pair(M,N) = E
                      & ! [O] :
                          ( element(O,powerset(the_carrier(A)))
                         => ( M = O
                           => subset_complement(the_carrier(A),O) = N ) )
                      & in(M,complements_of_subsets(the_carrier(A),B)) )
                  & in(F,cartesian_product2(complements_of_subsets(the_carrier(A),B),C)) )
            <=> in(E,D) )
         <= ! [D,E,F] :
              ( E = F
             <= ( ? [G,H] :
                    ( in(G,complements_of_subsets(the_carrier(A),B))
                    & ! [I] :
                        ( ( G = I
                         => H = subset_complement(the_carrier(A),I) )
                       <= element(I,powerset(the_carrier(A))) )
                    & E = ordered_pair(G,H) )
                & ? [J,K] :
                    ( ordered_pair(J,K) = F
                    & in(J,complements_of_subsets(the_carrier(A),B))
                    & ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( L = J
                         => subset_complement(the_carrier(A),L) = K ) ) )
                & F = D
                & D = E ) ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(t56_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( empty_set = A
       <= ! [B,C] : ~ in(ordered_pair(B,C),A) ) ) ).

fof(dt_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( latt_str(latt_str_of(A,B,C))
        & strict_latt_str(latt_str_of(A,B,C)) )
     <= ( function(B)
        & function(C)
        & relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & quasi_total(B,cartesian_product2(A,A),A) ) ) ).

fof(t4_boole,axiom,
    ! [A] : set_difference(empty_set,A) = empty_set ).

fof(existence_l1_orders_2,axiom,
    ? [A] : rel_str(A) ).

fof(d1_setfam_1,axiom,
    ! [A,B] :
      ( ( empty_set != A
       => ( ! [C] :
              ( ! [D] :
                  ( in(C,D)
                 <= in(D,A) )
            <=> in(C,B) )
        <=> B = set_meet(A) ) )
      & ( ( B = empty_set
        <=> B = set_meet(A) )
       <= A = empty_set ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(fc2_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(topstr_closure(A,B),A)
     <= ( topological_space(A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(s1_xboole_0__e16_22__wellord2__1,lemma,
    ! [A,B] :
    ? [C] :
    ! [D] :
      ( ( ? [E,F] :
            ( D = ordered_pair(E,F)
            & in(E,A)
            & F = singleton(E) )
        & in(D,cartesian_product2(A,B)) )
    <=> in(D,C) ) ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation(relation_inverse(A)) ) ).

fof(t35_funct_1,lemma,
    ! [A,B] :
      ( in(B,A)
     => B = apply(identity_relation(A),B) ) ).

fof(dt_k6_pre_topc,axiom,
    ! [A,B] :
      ( element(topstr_closure(A,B),powerset(the_carrier(A)))
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A))) ) ) ).

fof(l50_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,union(B))
     <= in(A,B) ) ).

fof(cc1_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     => ( diff_closed(A)
        & cup_closed(A) ) ) ).

fof(s1_xboole_0__e18_27__finset_1__1,lemma,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ( ? [D] :
                ( ( in(D,omega)
                 => ! [E] :
                      ( ~ ( ! [F] :
                              ~ ( in(F,E)
                                & ! [G] :
                                    ( G = F
                                   <= ( subset(F,G)
                                      & in(G,E) ) ) )
                          & empty_set != E )
                     <= element(E,powerset(powerset(D))) ) )
                & C = D
                & ordinal(D) )
            & in(C,succ(A)) ) )
     <= ordinal(A) ) ).

fof(t23_lattices,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & meet_absorbing(A)
        & meet_commutative(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => below(A,meet_commut(A,B,C),B) )
         <= element(B,the_carrier(A)) ) ) ).

fof(s2_funct_1__e10_24__wellord2,lemma,
    ! [A,B] :
      ( ( ( ! [C,D,E] :
              ( ( in(C,A)
                & ? [F] :
                    ( ! [G] :
                        ( in(ordered_pair(D,G),B)
                       <= in(G,F) )
                    & in(D,F)
                    & C = F )
                & ? [H] :
                    ( H = C
                    & in(E,H)
                    & ! [I] :
                        ( in(ordered_pair(E,I),B)
                       <= in(I,H) ) ) )
             => E = D )
          & ! [C] :
              ~ ( ! [D] :
                    ~ ? [J] :
                        ( ! [K] :
                            ( in(ordered_pair(D,K),B)
                           <= in(K,J) )
                        & in(D,J)
                        & J = C )
                & in(C,A) ) )
       => ? [C] :
            ( function(C)
            & A = relation_dom(C)
            & ! [D] :
                ( in(D,A)
               => ? [L] :
                    ( ! [M] :
                        ( in(ordered_pair(apply(C,D),M),B)
                       <= in(M,L) )
                    & in(apply(C,D),L)
                    & D = L ) )
            & relation(C) ) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(s2_funct_1__e4_7_2__tops_2,lemma,
    ! [A,B] :
      ( ( ( ! [C,D,E] :
              ( ( in(C,B)
                & ! [G] :
                    ( ( G = C
                     => E = subset_complement(the_carrier(A),G) )
                   <= element(G,powerset(the_carrier(A))) )
                & ! [F] :
                    ( element(F,powerset(the_carrier(A)))
                   => ( subset_complement(the_carrier(A),F) = D
                     <= C = F ) ) )
             => E = D )
          & ! [C] :
              ~ ( in(C,B)
                & ! [D] :
                    ~ ! [H] :
                        ( ( subset_complement(the_carrier(A),H) = D
                         <= H = C )
                       <= element(H,powerset(the_carrier(A))) ) ) )
       => ? [C] :
            ( relation(C)
            & ! [D] :
                ( in(D,B)
               => ! [I] :
                    ( ( I = D
                     => subset_complement(the_carrier(A),I) = apply(C,D) )
                   <= element(I,powerset(the_carrier(A))) ) )
            & B = relation_dom(C)
            & function(C) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(fc2_arytm_3,axiom,
    ! [A] :
      ( ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & natural(succ(A))
        & ordinal(succ(A))
        & epsilon_connected(succ(A)) )
     <= ( natural(A)
        & ordinal(A) ) ) ).

fof(t11_tops_2,lemma,
    ! [A,B] :
      ( ( subset_complement(A,union_of_subsets(A,B)) = meet_of_subsets(A,complements_of_subsets(A,B))
       <= B != empty_set )
     <= element(B,powerset(powerset(A))) ) ).

fof(t9_zfmisc_1,lemma,
    ! [A,B,C] :
      ( B = C
     <= singleton(A) = unordered_pair(B,C) ) ).

fof(dt_u1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => element(the_topology(A),powerset(powerset(the_carrier(A)))) ) ).

fof(t26_wellord2,lemma,
    ! [A] :
    ? [B] :
      ( relation(B)
      & well_orders(B,A) ) ).

fof(d3_ordinal1,axiom,
    ! [A] :
      ( ! [B,C] :
          ~ ( in(B,A)
            & in(C,A)
            & ~ in(B,C)
            & ~ in(C,B)
            & B != C )
    <=> epsilon_connected(A) ) ).

fof(t10_ordinal1,lemma,
    ! [A] : in(A,succ(A)) ).

fof(d5_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( is_transitive_in(A,B)
            & is_connected_in(A,B)
            & is_well_founded_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_reflexive_in(A,B) )
        <=> well_orders(A,B) )
     <= relation(A) ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_composition(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(t3_ordinal1,lemma,
    ! [A,B,C] :
      ~ ( in(A,B)
        & in(C,A)
        & in(B,C) ) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( subset(A,B)
        & subset(C,D) )
     => subset(cartesian_product2(A,C),cartesian_product2(B,D)) ) ).

fof(l32_xboole_1,lemma,
    ! [A,B] :
      ( empty_set = set_difference(A,B)
    <=> subset(A,B) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( set_difference(A,B) = C
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) ) ) ).

fof(redefinition_k1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( apply(C,D) = apply_on_structs(A,B,C,D)
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & one_sorted_str(B)
        & function(C)
        & quasi_total(C,the_carrier(A),the_carrier(B))
        & relation_of2(C,the_carrier(A),the_carrier(B))
        & element(D,the_carrier(A))
        & ~ empty_carrier(B) ) ) ).

fof(t48_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B)) = union_of_subsets(A,complements_of_subsets(A,B))
       <= B != empty_set ) ) ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( in(A,B)
      & ! [C,D] :
          ( ( in(C,B)
            & subset(D,C) )
         => in(D,B) )
      & ! [C] :
          ~ ( ! [D] :
                ~ ( ! [E] :
                      ( subset(E,C)
                     => in(E,D) )
                  & in(D,B) )
            & in(C,B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) ) ) ).

fof(redefinition_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> are_equipotent(A,B) ) ).

fof(t12_relset_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) )
     <= relation_of2_as_subset(C,A,B) ) ).

fof(t3_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( disjoint(A,B)
          & ? [C] :
              ( in(C,B)
              & in(C,A) ) )
      & ~ ( ! [C] :
              ~ ( in(C,A)
                & in(C,B) )
          & ~ disjoint(A,B) ) ) ).

fof(t136_zfmisc_1,lemma,
    ! [A] :
    ? [B] :
      ( ! [C,D] :
          ( in(D,B)
         <= ( subset(D,C)
            & in(C,B) ) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) )
      & ! [C] :
          ( in(powerset(C),B)
         <= in(C,B) )
      & in(A,B) ) ).

fof(s1_xboole_0__e4_27_3_1__finset_1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) )
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,powerset(A))
            & ? [E] :
                ( in(E,B)
                & D = set_difference(E,singleton(A)) ) ) ) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B)) ) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ? [D] :
              ( in(C,D)
              & in(D,A) )
        <=> in(C,B) )
    <=> union(A) = B ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) )
     <= ( relation(B)
        & empty(A) ) ) ).

fof(t57_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( ( in(A,relation_rng(B))
          & one_to_one(B) )
       => ( apply(relation_composition(function_inverse(B),B),A) = A
          & A = apply(B,apply(function_inverse(B),A)) ) ) ) ).

fof(fc38_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) )
     <= v2_membered(A) ) ).

fof(t44_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset(interior(A,B),B) ) ) ).

fof(t116_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),A)
     <= relation(B) ) ).

fof(s1_xboole_0__e11_2_1__waybel_0__1,lemma,
    ! [A,B,C] :
      ( ( rel_str(A)
        & element(C,powerset(B))
        & finite(C)
        & element(B,powerset(the_carrier(A)))
        & transitive_relstr(A)
        & ~ empty_carrier(A) )
     => ? [D] :
        ! [E] :
          ( ( in(E,powerset(C))
            & ? [F] :
                ( ? [G] :
                    ( element(G,the_carrier(A))
                    & in(G,B)
                    & relstr_set_smaller(A,F,G) )
                & F = E ) )
        <=> in(E,D) ) ) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( epsilon_transitive(A)
    <=> ! [B] :
          ( in(B,A)
         => subset(B,A) ) ) ).

fof(t166_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ? [D] :
            ( in(D,relation_rng(C))
            & in(ordered_pair(A,D),C)
            & in(D,B) )
      <=> in(A,relation_inverse_image(C,B)) ) ) ).

fof(dt_k5_ordinal2,axiom,
    $true ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,union(B))
     <= in(A,B) ) ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( B = complements_of_subsets(A,complements_of_subsets(A,B))
     <= element(B,powerset(powerset(A))) ) ).

fof(t7_lattice3,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( below_refl(A,B,C)
              <=> related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C)) )
             <= element(C,the_carrier(A)) ) )
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(dt_k1_domain_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(B)
        & element(D,B)
        & element(C,A)
        & ~ empty(A) )
     => element(ordered_pair_as_product_element(A,B,C,D),cartesian_product2(A,B)) ) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(s1_tarski__e6_22__wellord2__1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( D = C
         <= ( B = D
            & ordinal(D)
            & ordinal(C)
            & C = B ) )
     => ? [B] :
        ! [C] :
          ( ? [D] :
              ( D = C
              & ordinal(C)
              & in(D,A) )
        <=> in(C,B) ) ) ).

fof(dt_k1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & ~ empty_carrier(B)
        & function(C)
        & element(D,the_carrier(A))
        & relation_of2(C,the_carrier(A),the_carrier(B))
        & quasi_total(C,the_carrier(A),the_carrier(B))
        & one_sorted_str(B) )
     => element(apply_on_structs(A,B,C,D),the_carrier(B)) ) ).

fof(rc1_partfun1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & empty(A)
      & function(A) ) ).

fof(s2_ordinal1__e18_27__finset_1__1,lemma,
    ( ! [A] :
        ( ( in(A,omega)
         => ! [I] :
              ( element(I,powerset(powerset(A)))
             => ~ ( ! [J] :
                      ~ ( in(J,I)
                        & ! [K] :
                            ( ( in(K,I)
                              & subset(J,K) )
                           => J = K ) )
                  & empty_set != I ) ) )
       <= ordinal(A) )
   <= ! [A] :
        ( ordinal(A)
       => ( ( in(A,omega)
           => ! [F] :
                ( element(F,powerset(powerset(A)))
               => ~ ( empty_set != F
                    & ! [G] :
                        ~ ( ! [H] :
                              ( ( in(H,F)
                                & subset(G,H) )
                             => H = G )
                          & in(G,F) ) ) ) )
         <= ! [B] :
              ( ordinal(B)
             => ( ( in(B,omega)
                 => ! [C] :
                      ( element(C,powerset(powerset(B)))
                     => ~ ( ! [D] :
                              ~ ( in(D,C)
                                & ! [E] :
                                    ( D = E
                                   <= ( subset(D,E)
                                      & in(E,C) ) ) )
                          & C != empty_set ) ) )
               <= in(B,A) ) ) ) ) ) ).

fof(dt_k6_partfun1,axiom,
    ! [A] :
      ( relation_of2_as_subset(identity_as_relation_of(A),A,A)
      & v1_partfun1(identity_as_relation_of(A),A,A) ) ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( ( A = empty_set
        | A = singleton(B) )
    <=> subset(A,singleton(B)) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
        <=> in(C,B) )
     => B = A ) ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & ! [C] :
            ~ ( in(C,B)
              & ! [D] :
                  ~ ( in(D,C)
                    & in(D,B) ) ) ) ).

fof(t3_boole,axiom,
    ! [A] : set_difference(A,empty_set) = A ).

fof(d12_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ! [C] :
          ( relation(C)
         => ( ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(E,A)
                  & in(ordered_pair(D,E),B) ) )
          <=> C = relation_rng_restriction(A,B) ) ) ) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( ( finite(B)
        & function(A)
        & relation(A) )
     => finite(relation_image(A,B)) ) ).

fof(fraenkel_a_2_2_lattice3,axiom,
    ! [A,B,C] :
      ( ( in(A,a_2_2_lattice3(B,C))
      <=> ? [D] :
            ( element(D,the_carrier(B))
            & latt_set_smaller(B,D,C)
            & D = A ) )
     <= ( ~ empty_carrier(B)
        & latt_str(B) ) ) ).

fof(t1_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) ).

fof(dt_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & element(D,A)
        & function(C) )
     => element(apply_as_element(A,B,C,D),B) ) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(meet_of_subsets(A,B),powerset(A))
     <= element(B,powerset(powerset(A))) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( function(A)
    <=> ! [B,C,D] :
          ( D = C
         <= ( in(ordered_pair(B,C),A)
            & in(ordered_pair(B,D),A) ) ) ) ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( function(relation_rng_restriction(A,B))
        & relation(relation_rng_restriction(A,B)) ) ) ).

fof(fc4_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( reflexive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & ~ empty_carrier(poset_of_lattice(A)) ) ) ).

fof(redefinition_k1_pcomps_1,axiom,
    ! [A] : powerset(A) = k1_pcomps_1(A) ).

fof(t99_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B))
     <= relation(B) ) ).

fof(dt_k3_waybel_0,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & net_str(B,A)
        & element(C,the_carrier(B))
        & ~ empty_carrier(B) )
     => element(apply_netmap(A,B,C),the_carrier(A)) ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

fof(t86_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_dom(relation_dom_restriction(C,B)))
      <=> ( in(A,relation_dom(C))
          & in(A,B) ) )
     <= relation(C) ) ).

fof(d5_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( in(B,the_topology(A))
          <=> open_subset(B,A) ) ) ) ).

fof(t115_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,B)
          & in(A,relation_rng(C)) )
      <=> in(A,relation_rng(relation_rng_restriction(B,C))) ) ) ).

fof(rc2_tops_1,axiom,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] :
          ( open_subset(B,A)
          & closed_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( C = unordered_pair(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( D = B
            | D = A ) ) ) ).

fof(dt_l1_waybel_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( rel_str(B)
         <= net_str(B,A) ) ) ).

fof(t2_wellord2,lemma,
    ! [A] : reflexive(inclusion_relation(A)) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),singleton(B))
     => B = A ) ).

fof(fc1_ordinal1,axiom,
    ! [A] : ~ empty(succ(A)) ).

fof(t34_funct_1,lemma,
    ! [A,B] :
      ( ( ( ! [C] :
              ( in(C,A)
             => apply(B,C) = C )
          & relation_dom(B) = A )
      <=> B = identity_relation(A) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(d14_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( the_InternalRel(B) = relation_restriction_as_relation_of(the_InternalRel(A),the_carrier(B))
          <=> full_subrelstr(B,A) )
         <= subrelstr(B,A) ) ) ).

fof(dt_k16_lattice3,axiom,
    ! [A,B] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => element(meet_of_latt_set(A,B),the_carrier(A)) ) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_intersection2(A,C,B) = subset_intersection2(A,B,C) ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation_rng(A) = B
        <=> ! [C] :
              ( ? [D] : in(ordered_pair(D,C),A)
            <=> in(C,B) ) ) ) ).

fof(d16_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( is_transitive_in(A,relation_field(A))
      <=> transitive(A) ) ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v2_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) ) ) ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_rng_as_subset(A,B,C) = relation_rng(C) ) ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => set_intersection2(B,C) = subset_intersection2(A,B,C) ) ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) )
    <=> set_union2(A,B) = C ) ).

fof(cc1_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( quasi_total(C,A,B)
          & function(C) )
       <= ( function(C)
          & v1_partfun1(C,A,B) ) )
     <= relation_of2(C,A,B) ) ).

fof(d21_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ( ! [B,C] :
            ( element(C,the_carrier(A))
           => ( join_of_latt_set(A,B) = C
            <=> ( latt_element_smaller(A,C,B)
                & ! [D] :
                    ( element(D,the_carrier(A))
                   => ( below(A,C,D)
                     <= latt_element_smaller(A,D,B) ) ) ) ) )
       <= ( ~ empty_carrier(A)
          & complete_latt_str(A)
          & latt_str(A)
          & lattice(A) ) ) ) ).

fof(t26_lattices,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( B = C
               <= ( below(A,C,B)
                  & below(A,B,C) ) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) )
     <= ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A) ) ) ).

fof(t146_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => relation_image(A,relation_dom(A)) = relation_rng(A) ) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( finite(B)
          & ~ empty(B)
          & element(B,powerset(A)) ) ) ).

fof(fc3_tops_1,axiom,
    ! [A,B] :
      ( open_subset(subset_complement(the_carrier(A),B),A)
     <= ( top_str(A)
        & closed_subset(B,A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(redefinition_r3_orders_2,axiom,
    ! [A,B,C] :
      ( ( related(A,B,C)
      <=> related_reflexive(A,B,C) )
     <= ( rel_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & reflexive_relstr(A)
        & ~ empty_carrier(A) ) ) ).

fof(t50_lattice3,lemma,
    ! [A] :
      ( ( bottom_of_semilattstr(A) = join_of_latt_set(A,empty_set)
        & latt_str(A)
        & lower_bounded_semilattstr(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     <= ( complete_latt_str(A)
        & latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(fc1_finsub_1,axiom,
    ! [A] :
      ( ~ empty(powerset(A))
      & cup_closed(powerset(A))
      & diff_closed(powerset(A))
      & preboolean(powerset(A)) ) ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( meet_commut(A,B,C) = meet_commut(A,C,B)
     <= ( meet_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & meet_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(t22_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,B,A)
     => ( ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(D,E),C) )
      <=> B = relation_dom_as_subset(B,A,C) ) ) ).

fof(t117_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng_restriction(A,B),B)
     <= relation(B) ) ).

fof(t28_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => A = set_intersection2(A,B) ) ).

fof(t47_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( meet_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),union_of_subsets(A,B))
       <= empty_set != B ) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( ( subset(A,B)
        & subset(B,A) )
    <=> B = A ) ).

fof(t4_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( disjoint(A,B)
          & ? [C] : in(C,set_intersection2(A,B)) )
      & ~ ( ~ disjoint(A,B)
          & ! [C] : ~ in(C,set_intersection2(A,B)) ) ) ).

fof(s3_subset_1__e2_37_1_1__pre_topc,lemma,
    ! [A,B] :
      ( ? [C] :
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] :
              ( element(D,powerset(the_carrier(A)))
             => ( in(set_difference(cast_as_carrier_subset(A),D),B)
              <=> in(D,C) ) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & top_str(A)
        & topological_space(A) ) ) ).

fof(d1_wellord2,axiom,
    ! [A,B] :
      ( ( ( ! [C,D] :
              ( ( subset(C,D)
              <=> in(ordered_pair(C,D),B) )
             <= ( in(C,A)
                & in(D,A) ) )
          & relation_field(B) = A )
      <=> inclusion_relation(A) = B )
     <= relation(B) ) ).

fof(t22_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( reflexive(B)
       => reflexive(relation_restriction(B,A)) ) ) ).

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( function_inverse(A) = relation_inverse(A)
       <= one_to_one(A) ) ) ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( D != A
        & A != C
        & unordered_pair(A,B) = unordered_pair(C,D) ) ).

fof(dt_k5_lattices,axiom,
    ! [A] :
      ( element(bottom_of_semilattstr(A),the_carrier(A))
     <= ( ~ empty_carrier(A)
        & meet_semilatt_str(A) ) ) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( subset(A,B)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),A)
               => in(ordered_pair(C,D),B) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( relation(relation_inverse(A))
        & empty(relation_inverse(A)) ) ) ).

fof(t2_boole,axiom,
    ! [A] : set_intersection2(A,empty_set) = empty_set ).

fof(d3_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => cast_as_carrier_subset(A) = the_carrier(A) ) ).

fof(s1_tarski__e4_7_1__tops_2__1,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,complements_of_subsets(the_carrier(A),B))
                & in(E,complements_of_subsets(the_carrier(A),B))
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( D = subset_complement(the_carrier(A),H)
                     <= H = E ) ) ) )
       <= ! [C,D,E] :
            ( ( in(C,complements_of_subsets(the_carrier(A),B))
              & ! [G] :
                  ( ( subset_complement(the_carrier(A),G) = E
                   <= G = C )
                 <= element(G,powerset(the_carrier(A))) )
              & in(C,complements_of_subsets(the_carrier(A),B))
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( C = F
                   => subset_complement(the_carrier(A),F) = D ) ) )
           => D = E ) ) ) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( ( function(the_L_meet(A))
        & relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) )
     <= meet_semilatt_str(A) ) ).

fof(t29_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,the_carrier(poset_of_lattice(B)))
         => ( relstr_element_smaller(poset_of_lattice(B),A,C)
          <=> latt_set_smaller(B,cast_to_el_of_lattice(B,C),A) ) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) ) ) ).

fof(d8_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( union_of_subsets(the_carrier(A),B) = cast_as_carrier_subset(A)
          <=> is_a_cover_of_carrier(A,B) ) )
     <= one_sorted_str(A) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & ordinal(A)
      & epsilon_connected(A)
      & ~ empty(A) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( C = cartesian_product2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ? [E,F] :
              ( in(F,B)
              & D = ordered_pair(E,F)
              & in(E,A) ) ) ) ).

fof(t140_relat_1,lemma,
    ! [A,B,C] :
      ( relation_dom_restriction(relation_rng_restriction(A,C),B) = relation_rng_restriction(A,relation_dom_restriction(C,B))
     <= relation(C) ) ).

fof(t145_relat_1,lemma,
    ! [A,B] :
      ( relation_image(B,set_intersection2(relation_dom(B),A)) = relation_image(B,A)
     <= relation(B) ) ).

fof(s1_ordinal2__e18_27__finset_1,lemma,
    ( ! [D] :
        ( ( ! [R] :
              ( ~ ( ! [S] :
                      ~ ( ! [T] :
                            ( S = T
                           <= ( in(T,R)
                              & subset(S,T) ) )
                        & in(S,R) )
                  & R != empty_set )
             <= element(R,powerset(powerset(D))) )
         <= in(D,omega) )
       <= ordinal(D) )
   <= ( ( ! [A] :
            ( element(A,powerset(powerset(empty_set)))
           => ~ ( ! [B] :
                    ~ ( in(B,A)
                      & ! [C] :
                          ( B = C
                         <= ( subset(B,C)
                            & in(C,A) ) ) )
                & empty_set != A ) )
       <= in(empty_set,omega) )
      & ! [D] :
          ( ordinal(D)
         => ( ( ( in(D,omega)
               => ! [O] :
                    ( ~ ( empty_set != O
                        & ! [P] :
                            ~ ( in(P,O)
                              & ! [Q] :
                                  ( ( in(Q,O)
                                    & subset(P,Q) )
                                 => Q = P ) ) )
                   <= element(O,powerset(powerset(D))) ) )
              | empty_set = D )
           <= ( ! [K] :
                  ( ordinal(K)
                 => ( ( in(K,omega)
                     => ! [L] :
                          ( ~ ( ! [M] :
                                  ~ ( ! [N] :
                                        ( ( in(N,L)
                                          & subset(M,N) )
                                       => N = M )
                                    & in(M,L) )
                              & empty_set != L )
                         <= element(L,powerset(powerset(K))) ) )
                   <= in(K,D) ) )
              & being_limit_ordinal(D) ) ) )
      & ! [D] :
          ( ( ( ! [E] :
                  ( element(E,powerset(powerset(D)))
                 => ~ ( E != empty_set
                      & ! [F] :
                          ~ ( ! [G] :
                                ( ( subset(F,G)
                                  & in(G,E) )
                               => F = G )
                            & in(F,E) ) ) )
             <= in(D,omega) )
           => ( ! [H] :
                  ( ~ ( ! [I] :
                          ~ ( in(I,H)
                            & ! [J] :
                                ( J = I
                               <= ( subset(I,J)
                                  & in(J,H) ) ) )
                      & H != empty_set )
                 <= element(H,powerset(powerset(succ(D)))) )
             <= in(succ(D),omega) ) )
         <= ordinal(D) ) ) ) ).

fof(t50_subset_1,lemma,
    ! [A] :
      ( empty_set != A
     => ! [B] :
          ( ! [C] :
              ( ( in(C,subset_complement(A,B))
               <= ~ in(C,B) )
             <= element(C,A) )
         <= element(B,powerset(A)) ) ) ).

fof(d3_compts_1,axiom,
    ! [A] :
      ( ( compact_top_space(A)
      <=> ! [B] :
            ( element(B,powerset(powerset(the_carrier(A))))
           => ~ ( open_subsets(B,A)
                & ! [C] :
                    ( ~ ( finite(C)
                        & is_a_cover_of_carrier(A,C)
                        & subset(C,B) )
                   <= element(C,powerset(powerset(the_carrier(A)))) )
                & is_a_cover_of_carrier(A,B) ) ) )
     <= top_str(A) ) ).

fof(t46_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B)
        & function(D) )
     => ( B != empty_set
       => ! [E] :
            ( ( in(apply(D,E),C)
              & in(E,A) )
          <=> in(E,relation_inverse_image(D,C)) ) ) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( relation(relation_dom(A))
        & empty(relation_dom(A)) ) ) ).

fof(d1_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( ( ( quasi_total(C,A,B)
          <=> A = relation_dom_as_subset(A,B,C) )
         <= ( empty_set = B
           => empty_set = A ) )
        & ( ( empty_set = A
            | ( quasi_total(C,A,B)
            <=> C = empty_set ) )
         <= empty_set = B ) ) ) ).

fof(cc2_arytm_3,axiom,
    ! [A] :
      ( ( empty(A)
        & ordinal(A) )
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & natural(A)
        & ordinal(A) ) ) ).

fof(s2_funct_1__e4_7_1__tops_2,lemma,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ( ! [C,D,E] :
              ( ( ! [G] :
                    ( ( subset_complement(the_carrier(A),G) = E
                     <= C = G )
                   <= element(G,powerset(the_carrier(A))) )
                & ! [F] :
                    ( element(F,powerset(the_carrier(A)))
                   => ( C = F
                     => subset_complement(the_carrier(A),F) = D ) )
                & in(C,complements_of_subsets(the_carrier(A),B)) )
             => D = E )
          & ! [C] :
              ~ ( ! [D] :
                    ~ ! [H] :
                        ( element(H,powerset(the_carrier(A)))
                       => ( H = C
                         => D = subset_complement(the_carrier(A),H) ) )
                & in(C,complements_of_subsets(the_carrier(A),B)) ) )
       => ? [C] :
            ( complements_of_subsets(the_carrier(A),B) = relation_dom(C)
            & ! [D] :
                ( in(D,complements_of_subsets(the_carrier(A),B))
               => ! [I] :
                    ( ( D = I
                     => apply(C,D) = subset_complement(the_carrier(A),I) )
                   <= element(I,powerset(the_carrier(A))) ) )
            & function(C)
            & relation(C) ) ) ) ).

fof(dt_k10_filter_1,axiom,
    ! [A,B,C,D] :
      ( element(k10_filter_1(A,B,C,D),the_carrier(k8_filter_1(A,B)))
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & latt_str(B)
        & element(D,the_carrier(B))
        & element(C,the_carrier(A))
        & lattice(B)
        & ~ empty_carrier(B)
        & lattice(A) ) ) ).

fof(t15_finset_1,lemma,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(A) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(d16_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( in(D,C)
                   => below(A,B,D) ) )
            <=> latt_set_smaller(A,B,C) ) ) ) ).

fof(dt_k9_filter_1,axiom,
    ! [A] :
      ( relation(relation_of_lattice(A))
     <= ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) ) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & relation(A) ) ).

fof(t7_wellord2,lemma,
    ! [A] :
      ( well_ordering(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( ~ empty(singleton(A))
      & finite(singleton(A)) ) ).

fof(s1_tarski__e8_6__wellord2__1,axiom,
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( D = E
           <= ( ? [F] :
                  ( in(F,A)
                  & F = D
                  & ordinal(F) )
              & ? [G] :
                  ( ordinal(G)
                  & G = E
                  & in(G,A) )
              & C = E
              & C = D ) )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( D = E
                & ? [H] :
                    ( in(H,A)
                    & H = D
                    & ordinal(H) )
                & in(E,succ(B)) ) ) )
     <= ordinal(B) ) ).

fof(d1_tops_2,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( ! [C] :
                ( element(C,powerset(the_carrier(A)))
               => ( open_subset(C,A)
                 <= in(C,B) ) )
          <=> open_subsets(B,A) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(d1_connsp_2,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( point_neighbourhood(C,A,B)
              <=> in(B,interior(A,C)) )
             <= element(C,powerset(the_carrier(A))) ) )
     <= ( topological_space(A)
        & top_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t13_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ( finite(complements_of_subsets(the_carrier(A),B))
          <=> finite(B) )
         <= element(B,powerset(powerset(the_carrier(A)))) )
     <= one_sorted_str(A) ) ).

fof(t29_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( open_subset(subset_complement(the_carrier(A),B),A)
          <=> closed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d3_lattice3,axiom,
    ! [A] :
      ( ( lattice(A)
        & latt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => B = cast_to_el_of_LattPOSet(A,B) ) ) ).

fof(d2_lattice3,axiom,
    ! [A] :
      ( poset_of_lattice(A) = rel_str_of(the_carrier(A),k2_lattice3(A))
     <= ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) ) ) ).

fof(l4_wellord1,lemma,
    ! [A] :
      ( ( ! [B,C] :
            ~ ( ~ in(ordered_pair(C,B),A)
              & ~ in(ordered_pair(B,C),A)
              & B != C
              & in(C,relation_field(A))
              & in(B,relation_field(A)) )
      <=> connected(A) )
     <= relation(A) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v2_membered(B)
            & v3_membered(B)
            & v4_membered(B)
            & v5_membered(B)
            & v1_membered(B) ) ) ) ).

fof(t22_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B)) = B )
     <= one_sorted_str(A) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( relation_inverse(A) = B
          <=> ! [C,D] :
                ( in(ordered_pair(D,C),A)
              <=> in(ordered_pair(C,D),B) ) ) )
     <= relation(A) ) ).

fof(cc11_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) ).

fof(fc9_finset_1,axiom,
    ! [A,B] :
      ( ( finite(B)
        & finite(A) )
     => finite(set_union2(A,B)) ) ).

fof(dt_k1_lattice3,axiom,
    ! [A] :
      ( strict_latt_str(boole_lattice(A))
      & latt_str(boole_lattice(A)) ) ).

fof(t17_tops_2,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subsets(complements_of_subsets(the_carrier(A),B),A)
          <=> open_subsets(B,A) ) ) ) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => B = subset_complement(A,subset_complement(A,B)) ) ).

fof(redefinition_k3_lattices,axiom,
    ! [A,B,C] :
      ( join_commut(A,B,C) = join(A,B,C)
     <= ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_commutative(A) ) ) ).

fof(t20_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),A)
        & subset(relation_field(relation_restriction(B,A)),relation_field(B)) ) ) ).

fof(fc12_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_difference(A,B)) ) ).

fof(d3_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( below(A,B,C)
              <=> join(A,B,C) = C )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) )
     <= ( join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A)
      & epsilon_transitive(A) ) ).

fof(t2_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( below(boole_lattice(A),B,C)
          <=> subset(B,C) )
         <= element(C,the_carrier(boole_lattice(A))) )
     <= element(B,the_carrier(boole_lattice(A))) ) ).

fof(d9_lattice3,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( ( relstr_set_smaller(A,B,C)
          <=> ! [D] :
                ( ( in(D,B)
                 => related(A,D,C) )
               <= element(D,the_carrier(A)) ) )
         <= element(C,the_carrier(A)) ) ) ).

fof(t48_xboole_1,lemma,
    ! [A,B] : set_intersection2(A,B) = set_difference(A,set_difference(A,B)) ).

fof(s1_tarski__e11_2_1__waybel_0__1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(the_carrier(A)))
        & element(C,powerset(B))
        & finite(C)
        & rel_str(A)
        & transitive_relstr(A)
        & ~ empty_carrier(A) )
     => ( ? [D] :
          ! [E] :
            ( ? [F] :
                ( in(F,powerset(C))
                & E = F
                & ? [K] :
                    ( E = K
                    & ? [L] :
                        ( relstr_set_smaller(A,K,L)
                        & in(L,B)
                        & element(L,the_carrier(A)) ) ) )
          <=> in(E,D) )
       <= ! [D,E,F] :
            ( E = F
           <= ( ? [I] :
                  ( ? [J] :
                      ( element(J,the_carrier(A))
                      & in(J,B)
                      & relstr_set_smaller(A,I,J) )
                  & F = I )
              & F = D
              & ? [G] :
                  ( G = E
                  & ? [H] :
                      ( in(H,B)
                      & relstr_set_smaller(A,G,H)
                      & element(H,the_carrier(A)) ) )
              & E = D ) ) ) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,B) = set_union2(B,A) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation_empty_yielding(A) )
     => ( relation_empty_yielding(relation_dom_restriction(A,B))
        & relation(relation_dom_restriction(A,B)) ) ) ).

fof(t47_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( relation_rng(relation_composition(B,A)) = relation_rng(A)
           <= subset(relation_dom(A),relation_rng(B)) ) ) ) ).

fof(dt_k15_lattice3,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => element(join_of_latt_set(A,B),the_carrier(A)) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v2_membered(B)
            & v4_membered(B)
            & v3_membered(B)
            & v1_membered(B) )
         <= element(B,powerset(A)) )
     <= v4_membered(A) ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( subset(A,B)
        & proper_subset(B,A) ) ).

fof(symmetry_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
     => equipotent(B,A) ) ).

fof(t99_zfmisc_1,lemma,
    ! [A] : union(powerset(A)) = A ).

fof(existence_m1_connsp_2,axiom,
    ! [A,B] :
      ( ? [C] : point_neighbourhood(C,A,B)
     <= ( ~ empty_carrier(A)
        & top_str(A)
        & element(B,the_carrier(A))
        & topological_space(A) ) ) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( relation(identity_relation(A))
      & function(identity_relation(A)) ) ).

fof(t9_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) )
     => ( subset(B,C)
       => ( ( function(D)
            & relation_of2_as_subset(D,A,C)
            & quasi_total(D,A,C) )
          | ( B = empty_set
            & empty_set != A ) ) ) ) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => v4_membered(A) ) ).

fof(t22_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( in(A,relation_dom(relation_composition(C,B)))
           => apply(B,apply(C,A)) = apply(relation_composition(C,B),A) ) ) ) ).

fof(d4_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( element(B,the_carrier(poset_of_lattice(A)))
         => cast_to_el_of_lattice(A,B) = B ) ) ).

fof(t42_ordinal1,lemma,
    ! [A] :
      ( ( ~ ( ~ being_limit_ordinal(A)
            & ! [B] :
                ( ordinal(B)
               => succ(B) != A ) )
        & ~ ( being_limit_ordinal(A)
            & ? [B] :
                ( ordinal(B)
                & A = succ(B) ) ) )
     <= ordinal(A) ) ).

fof(l30_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( well_ordering(B)
          & ! [C] :
              ( relation(C)
             => ~ well_orders(C,A) )
          & equipotent(A,relation_field(B)) ) ) ).

fof(s1_xboole_0__e8_6__wellord2__1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,succ(B))
            & ? [E] :
                ( ordinal(E)
                & in(E,A)
                & D = E ) ) ) ) ).

fof(d8_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ! [C] :
          ( element(C,powerset(powerset(A)))
         => ( ! [D] :
                ( element(D,powerset(A))
               => ( in(D,C)
                <=> in(subset_complement(A,D),B) ) )
          <=> complements_of_subsets(A,B) = C ) ) ) ).

fof(t21_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( ( in(apply(C,A),relation_dom(B))
              & in(A,relation_dom(C)) )
          <=> in(A,relation_dom(relation_composition(C,B))) ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(t54_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => ! [B] :
            ( ( function(B)
              & relation(B) )
           => ( ( relation_dom(B) = relation_rng(A)
                & ! [C,D] :
                    ( ( ( apply(B,C) = D
                        & in(C,relation_rng(A)) )
                     => ( C = apply(A,D)
                        & in(D,relation_dom(A)) ) )
                    & ( ( in(C,relation_rng(A))
                        & apply(B,C) = D )
                     <= ( in(D,relation_dom(A))
                        & C = apply(A,D) ) ) ) )
            <=> function_inverse(A) = B ) ) ) ) ).

fof(t4_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => connected(inclusion_relation(A)) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_intersection2(A,B)) ) ).

fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( element(apply_binary_as_element(A,B,C,D,E,F),C)
     <= ( ~ empty(A)
        & ~ empty(B)
        & function(D)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B)
        & quasi_total(D,cartesian_product2(A,B),C) ) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(redefinition_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => set_meet(B) = meet_of_subsets(A,B) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ( in(D,A)
            & in(D,B) )
        <=> in(D,C) )
    <=> set_intersection2(A,B) = C ) ).

fof(s1_relat_1__e6_21__wellord2,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C)
        & relation(B) )
     => ? [D] :
          ( relation(D)
          & ! [E,F] :
              ( ( in(E,A)
                & in(ordered_pair(apply(C,E),apply(C,F)),B)
                & in(F,A) )
            <=> in(ordered_pair(E,F),D) ) ) ) ).

fof(redefinition_k10_filter_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & ~ empty_carrier(B)
        & latt_str(B)
        & element(C,the_carrier(A))
        & element(D,the_carrier(B))
        & lattice(B)
        & lattice(A) )
     => ordered_pair(C,D) = k10_filter_1(A,B,C,D) ) ).

fof(dt_k3_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => element(bottom_of_relstr(A),the_carrier(A)) ) ).

fof(dt_k1_pcomps_1,axiom,
    ! [A] : element(k1_pcomps_1(A),powerset(powerset(A))) ).

fof(fc2_finset_1,axiom,
    ! [A,B] :
      ( finite(unordered_pair(A,B))
      & ~ empty(unordered_pair(A,B)) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & epsilon_transitive(A) )
     => ordinal(A) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_xcmplx_0(B)
            & natural(B)
            & v1_int_1(B)
            & v1_rat_1(B)
            & v1_xreal_0(B) )
         <= element(B,A) )
     <= v5_membered(A) ) ).

fof(dt_k5_lattice3,axiom,
    ! [A,B] :
      ( ( latt_str(A)
        & element(B,the_carrier(poset_of_lattice(A)))
        & lattice(A)
        & ~ empty_carrier(A) )
     => element(cast_to_el_of_lattice(A,B),the_carrier(A)) ) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( function(relation_composition(A,B))
        & relation(relation_composition(A,B)) )
     <= ( relation(B)
        & function(B)
        & function(A)
        & relation(A) ) ) ).

fof(rc1_tops_1,axiom,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A) ) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( ( finite(B)
        & finite(A) )
     => finite(cartesian_product2(A,B)) ) ).

fof(dt_k1_toler_1,axiom,
    ! [A,B] :
      ( relation_of2_as_subset(relation_restriction_as_relation_of(A,B),B,B)
     <= relation(A) ) ).

fof(s1_funct_1__e4_7_2__tops_2__1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ( ? [C] :
            ( ! [D,E] :
                ( ( in(D,B)
                  & ! [H] :
                      ( ( H = D
                       => E = subset_complement(the_carrier(A),H) )
                     <= element(H,powerset(the_carrier(A))) )
                  & in(D,B) )
              <=> in(ordered_pair(D,E),C) )
            & function(C)
            & relation(C) )
       <= ! [C,D,E] :
            ( ( in(C,B)
              & ! [G] :
                  ( ( E = subset_complement(the_carrier(A),G)
                   <= G = C )
                 <= element(G,powerset(the_carrier(A))) )
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( D = subset_complement(the_carrier(A),F)
                   <= C = F ) )
              & in(C,B) )
           => D = E ) ) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) ).

fof(t48_pre_topc,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( subset(B,topstr_closure(A,B))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t160_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation_image(B,relation_rng(A)) = relation_rng(relation_composition(A,B))
         <= relation(B) )
     <= relation(A) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(t8_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( ( in(A,relation_dom(C))
          & B = apply(C,A) )
      <=> in(ordered_pair(A,B),C) ) ) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(t37_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
    <=> subset(singleton(A),B) ) ).

fof(fc6_membered,axiom,
    ( v2_membered(empty_set)
    & v3_membered(empty_set)
    & v4_membered(empty_set)
    & v5_membered(empty_set)
    & v1_membered(empty_set)
    & empty(empty_set) ) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ~ ( ! [C,D] : B != ordered_pair(C,D)
            & in(B,A) )
    <=> relation(A) ) ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> subset(C,cartesian_product2(A,B)) ) ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( B = singleton(A)
    <=> ! [C] :
          ( in(C,B)
        <=> A = C ) ) ).

fof(t17_wellord1,lemma,
    ! [A,B] :
      ( relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A)
     <= relation(B) ) ).

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

fof(t45_pre_topc,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ! [C] :
              ( in(C,the_carrier(A))
             => ( ! [D] :
                    ( ( ( subset(B,D)
                        & closed_subset(D,A) )
                     => in(C,D) )
                   <= element(D,powerset(the_carrier(A))) )
              <=> in(C,topstr_closure(A,B)) ) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( unordered_pair(B,C) = singleton(A)
     => A = B ) ).

fof(s1_tarski__e6_27__finset_1__1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(powerset(A)))
        & function(C)
        & relation(C) )
     => ( ! [D,E,F] :
            ( E = F
           <= ( D = E
              & in(relation_image(C,E),B)
              & in(relation_image(C,F),B)
              & D = F ) )
       => ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( in(relation_image(C,E),B)
                & F = E
                & in(F,powerset(relation_dom(C))) ) ) ) ) ).

fof(abstractness_v1_orders_2,axiom,
    ! [A] :
      ( ( A = rel_str_of(the_carrier(A),the_InternalRel(A))
       <= strict_rel_str(A) )
     <= rel_str(A) ) ).

fof(redefinition_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( one_to_one(A)
      & function(A)
      & relation(A) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => v1_membered(A) ) ).

fof(t30_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(ordered_pair(A,B),C)
       => ( in(B,relation_field(C))
          & in(A,relation_field(C)) ) ) ) ).

fof(fc41_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) )
     <= v5_membered(A) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) )
     <= empty(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(cc2_lattices,axiom,
    ! [A] :
      ( ( ( lattice(A)
          & ~ empty_carrier(A) )
       <= ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_absorbing(A)
          & meet_absorbing(A)
          & meet_associative(A)
          & meet_commutative(A)
          & join_associative(A) ) )
     <= latt_str(A) ) ).

fof(rc1_arytm_3,axiom,
    ? [A] :
      ( ~ empty(A)
      & natural(A)
      & ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A) ) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( element(relation_rng_as_subset(A,B,C),powerset(B))
     <= relation_of2(C,A,B) ) ).

fof(t1_boole,axiom,
    ! [A] : A = set_union2(A,empty_set) ).

fof(t13_finset_1,lemma,
    ! [A,B] :
      ( finite(A)
     <= ( subset(A,B)
        & finite(B) ) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v3_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v5_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) ) ) ).

fof(s1_xboole_0__e4_7_2__tops_2__1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( ? [F,G] :
                ( ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( F = H
                     => subset_complement(the_carrier(A),H) = G ) )
                & in(F,B)
                & ordered_pair(F,G) = E )
            & in(E,cartesian_product2(B,C)) ) ) ) ).

fof(s2_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ( ! [B] :
            ~ ( in(B,A)
              & ! [C] : singleton(B) != C )
        & ! [B,C,D] :
            ( ( singleton(B) = C
              & singleton(B) = D
              & in(B,A) )
           => C = D ) )
     => ? [B] :
          ( function(B)
          & ! [C] :
              ( in(C,A)
             => apply(B,C) = singleton(C) )
          & relation_dom(B) = A
          & relation(B) ) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_dom_as_subset(A,B,C) = relation_dom(C) ) ).

fof(d6_ordinal1,axiom,
    ! [A] :
      ( union(A) = A
    <=> being_limit_ordinal(A) ) ).

fof(t15_yellow_0,lemma,
    ! [A] :
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] :
          ( ? [C] :
              ( element(C,the_carrier(A))
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( related(A,C,D)
                   <= relstr_set_smaller(A,B,D) ) )
              & relstr_set_smaller(A,B,C) )
        <=> ex_sup_of_relstr_set(A,B) ) ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( v3_membered(A)
      & v5_membered(A)
      & v4_membered(A)
      & v2_membered(A)
      & v1_membered(A)
      & ~ empty(A) ) ).

fof(fc1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty(empty_carrier_subset(A))
        & v3_membered(empty_carrier_subset(A))
        & v4_membered(empty_carrier_subset(A))
        & v5_membered(empty_carrier_subset(A))
        & v2_membered(empty_carrier_subset(A))
        & v1_membered(empty_carrier_subset(A)) ) ) ).

fof(dt_k4_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_union2(A,B,C),powerset(A))
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ~ ( B != empty_set
          & empty_set = complements_of_subsets(A,B) ) ) ).

fof(fraenkel_a_2_3_lattice3,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(B)
        & latt_str(B)
        & complete_latt_str(B)
        & lattice(B) )
     => ( ? [D] :
            ( A = D
            & latt_set_smaller(B,D,C)
            & element(D,the_carrier(B)) )
      <=> in(A,a_2_3_lattice3(B,C)) ) ) ).

fof(dt_k1_yellow_0,axiom,
    ! [A,B] :
      ( element(join_on_relstr(A,B),the_carrier(A))
     <= rel_str(A) ) ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(cc1_partfun1,axiom,
    ! [A] :
      ( ( transitive(A)
        & symmetric(A)
        & relation(A) )
     => ( reflexive(A)
        & relation(A) ) ) ).

fof(t39_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( relation_field(relation_restriction(B,A)) = A
       <= ( subset(A,relation_field(B))
          & well_ordering(B) ) ) ) ).

fof(fc1_lattice3,axiom,
    ! [A] :
      ( strict_latt_str(boole_lattice(A))
      & ~ empty_carrier(boole_lattice(A)) ) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( one_to_one(A)
      & ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A)
      & empty(A)
      & function(A)
      & relation(A) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B)
      & function(B)
      & epsilon_transitive(B)
      & epsilon_connected(B)
      & finite(B)
      & natural(B)
      & ordinal(B)
      & one_to_one(B)
      & relation(B) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation_empty_yielding(A)
      & relation(A) ) ).

fof(t10_tops_2,lemma,
    ! [A,B] :
      ( ( ~ ( complements_of_subsets(A,B) != empty_set
            & B = empty_set )
        & ~ ( B != empty_set
            & empty_set = complements_of_subsets(A,B) ) )
     <= element(B,powerset(powerset(A))) ) ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( subset(C,A)
        <=> in(C,B) )
    <=> B = powerset(A) ) ).

fof(l25_zfmisc_1,lemma,
    ! [A,B] :
      ~ ( in(A,B)
        & disjoint(singleton(A),B) ) ).

fof(s1_ordinal1__e8_6__wellord2,lemma,
    ! [A] :
      ( ? [B] :
          ( ordinal(B)
          & in(B,A)
          & ! [C] :
              ( ordinal(C)
             => ( ordinal_subset(B,C)
               <= in(C,A) ) ) )
     <= ? [B] :
          ( in(B,A)
          & ordinal(B) ) ) ).

fof(d6_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( closed_subset(B,A)
          <=> open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A) ) )
     <= top_str(A) ) ).

fof(t26_orders_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => ! [D] :
                  ( ( related(A,B,D)
                   <= ( related(A,C,D)
                      & related(A,B,C) ) )
                 <= element(D,the_carrier(A)) ) )
         <= element(B,the_carrier(A)) )
     <= ( rel_str(A)
        & transitive_relstr(A) ) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation_field(A) = set_union2(relation_dom(A),relation_rng(A))
     <= relation(A) ) ).

fof(t68_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( function(C)
            & relation(C) )
         => ( ( ! [D] :
                  ( apply(C,D) = apply(B,D)
                 <= in(D,relation_dom(B)) )
              & set_intersection2(relation_dom(C),A) = relation_dom(B) )
          <=> B = relation_dom_restriction(C,A) ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(existence_l2_lattices,axiom,
    ? [A] : join_semilatt_str(A) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( element(C,powerset(A))
     => ~ ( in(B,subset_complement(A,C))
          & in(B,C) ) ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( A = relation_inverse(relation_inverse(A))
     <= relation(A) ) ).

fof(t69_enumset1,lemma,
    ! [A] : singleton(A) = unordered_pair(A,A) ).

fof(d6_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ( is_antisymmetric_in(the_InternalRel(A),the_carrier(A))
      <=> antisymmetric_relstr(A) ) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(B)
        & ~ empty(A) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) )
     <= v2_membered(A) ) ).

fof(l82_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
      <=> ( in(B,relation_dom(C))
          & in(B,A) ) ) ) ).

fof(dt_k3_lattices,axiom,
    ! [A,B,C] :
      ( element(join_commut(A,B,C),the_carrier(A))
     <= ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_commutative(A) ) ) ).

fof(dt_k1_mcart_1,axiom,
    $true ).

fof(redefinition_k1_domain_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & element(C,A)
        & element(D,B)
        & ~ empty(B) )
     => ordered_pair(C,D) = ordered_pair_as_product_element(A,B,C,D) ) ).

