fof(abstractness_v3_lattices,axiom,
    ! [A] :
      ( ( A = latt_str_of(the_carrier(A),the_L_join(A),the_L_meet(A))
       <= strict_latt_str(A) )
     <= latt_str(A) ) ).

fof(t22_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( B = subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(cc6_lattices,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & boolean_lattstr(A) )
       <= ( distributive_lattstr(A)
          & complemented_lattstr(A)
          & bounded_lattstr(A)
          & ~ empty_carrier(A) ) )
     <= latt_str(A) ) ).

fof(dt_k4_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_union2(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(t26_lattices,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( ( below(A,C,B)
                  & below(A,B,C) )
               => B = C )
             <= element(C,the_carrier(A)) ) )
     <= ( ~ empty_carrier(A)
        & join_commutative(A)
        & join_semilatt_str(A) ) ) ).

fof(s1_funct_1__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( function(C)
            & ! [D,E] :
                ( ( in(D,A)
                  & in(D,A)
                  & ? [J] :
                      ( J = D
                      & ! [K] :
                          ( in(K,J)
                         => in(ordered_pair(E,K),B) )
                      & in(E,J) ) )
              <=> in(ordered_pair(D,E),C) )
            & relation(C) )
       <= ! [C,D,E] :
            ( E = D
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
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) )
                  & C = H ) ) ) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(fc6_membered,axiom,
    ( empty(empty_set)
    & v1_membered(empty_set)
    & v3_membered(empty_set)
    & v5_membered(empty_set)
    & v4_membered(empty_set)
    & v2_membered(empty_set) ) ).

fof(d1_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( ( in(ordered_pair(D,B),A)
                & B != D )
            <=> in(D,C) )
        <=> C = fiber(A,B) ) ) ).

fof(t143_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_image(C,B))
      <=> ? [D] :
            ( in(D,B)
            & in(ordered_pair(D,A),C)
            & in(D,relation_dom(C)) ) )
     <= relation(C) ) ).

fof(fc6_yellow_1,axiom,
    ! [A] :
      ( ( ~ empty_carrier(incl_POSet(A))
        & reflexive_relstr(incl_POSet(A))
        & antisymmetric_relstr(incl_POSet(A))
        & transitive_relstr(incl_POSet(A))
        & strict_rel_str(incl_POSet(A)) )
     <= ~ empty(A) ) ).

fof(t15_finset_1,lemma,
    ! [A,B] :
      ( finite(A)
     => finite(set_intersection2(A,B)) ) ).

fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( ! [E] :
          ( ~ ( E != C
              & E != B
              & A != E )
        <=> in(E,D) )
    <=> D = unordered_triple(A,B,C) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(dt_k15_lattice3,axiom,
    ! [A,B] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => element(join_of_latt_set(A,B),the_carrier(A)) ) ).

fof(t24_wellord1,lemma,
    ! [A,B] :
      ( ( transitive(B)
       => transitive(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(t6_wellord2,lemma,
    ! [A] :
      ( well_founded_relation(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(t56_relat_1,lemma,
    ! [A] :
      ( ( A = empty_set
       <= ! [B,C] : ~ in(ordered_pair(B,C),A) )
     <= relation(A) ) ).

fof(t22_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( reflexive(B)
       => reflexive(relation_restriction(B,A)) ) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(t136_zfmisc_1,lemma,
    ! [A] :
    ? [B] :
      ( ! [C] :
          ( in(C,B)
         => in(powerset(C),B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) )
      & ! [C,D] :
          ( in(D,B)
         <= ( in(C,B)
            & subset(D,C) ) )
      & in(A,B) ) ).

fof(t44_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( subset(interior(A,B),B)
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(s1_xboole_0__e6_27__finset_1,lemma,
    ! [A,B,C] :
      ( ? [D] :
        ! [E] :
          ( ( in(relation_image(C,E),B)
            & in(E,powerset(relation_dom(C))) )
        <=> in(E,D) )
     <= ( element(B,powerset(powerset(A)))
        & function(C)
        & relation(C) ) ) ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( cartesian_product2(A,B) = C
    <=> ! [D] :
          ( in(D,C)
        <=> ? [E,F] :
              ( ordered_pair(E,F) = D
              & in(F,B)
              & in(E,A) ) ) ) ).

fof(redefinition_k3_yellow_6,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & function(C)
        & quasi_total(C,A,the_carrier(B))
        & relation_of2(C,A,the_carrier(B))
        & element(D,A)
        & rel_str(B)
        & ~ empty_carrier(B) )
     => apply_on_set_and_struct(A,B,C,D) = apply(C,D) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : latt_str(A) ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( ( A = singleton(B)
        | A = empty_set )
    <=> subset(A,singleton(B)) ) ).

fof(d3_compts_1,axiom,
    ! [A] :
      ( top_str(A)
     => ( ! [B] :
            ( element(B,powerset(powerset(the_carrier(A))))
           => ~ ( is_a_cover_of_carrier(A,B)
                & open_subsets(B,A)
                & ! [C] :
                    ( ~ ( is_a_cover_of_carrier(A,C)
                        & finite(C)
                        & subset(C,B) )
                   <= element(C,powerset(powerset(the_carrier(A)))) ) ) )
      <=> compact_top_space(A) ) ) ).

fof(t4_waybel_7,lemma,
    ! [A] : powerset(A) = the_carrier(boole_POSet(A)) ).

fof(cc1_partfun1,axiom,
    ! [A] :
      ( ( relation(A)
        & reflexive(A) )
     <= ( symmetric(A)
        & transitive(A)
        & relation(A) ) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(B,A) = unordered_pair(A,B) ).

fof(fc41_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B)) ) ) ).

fof(cc1_yellow_2,axiom,
    ! [A] :
      ( ( ( transitive_relstr(A)
          & bounded_relstr(A)
          & complete_relstr(A)
          & with_infima_relstr(A)
          & with_suprema_relstr(A)
          & join_complete_relstr(A)
          & up_complete_relstr(A)
          & upper_bounded_relstr(A)
          & lower_bounded_relstr(A)
          & antisymmetric_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A)
          & upper_bounded_relstr(A)
          & transitive_relstr(A)
          & ~ empty_carrier(A) ) )
     <= rel_str(A) ) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(s1_tarski__e4_7_2__tops_2__2,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ! [C] :
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
                      & E = ordered_pair(M,N) )
                  & in(F,cartesian_product2(B,C)) )
            <=> in(E,D) )
         <= ! [D,E,F] :
              ( E = F
             <= ( D = E
                & ? [G,H] :
                    ( ! [I] :
                        ( element(I,powerset(the_carrier(A)))
                       => ( G = I
                         => subset_complement(the_carrier(A),I) = H ) )
                    & in(G,B)
                    & E = ordered_pair(G,H) )
                & ? [J,K] :
                    ( ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( J = L
                         => K = subset_complement(the_carrier(A),L) ) )
                    & in(J,B)
                    & F = ordered_pair(J,K) )
                & D = F ) ) ) ) ).

fof(commutativity_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_union2(A,B,C) = subset_union2(A,C,B) ) ).

fof(cc14_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & upper_bounded_relstr(A)
          & reflexive_relstr(A) )
       <= ( reflexive_relstr(A)
          & join_complete_relstr(A)
          & upper_bounded_relstr(A)
          & antisymmetric_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(t1_zfmisc_1,lemma,
    singleton(empty_set) = powerset(empty_set) ).

fof(free_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A) )
     => ! [D,E,F] :
          ( latt_str_of(D,E,F) = latt_str_of(A,B,C)
         => ( E = B
            & F = C
            & A = D ) ) ) ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(subset_complement(A,B),powerset(A))
     <= element(B,powerset(A)) ) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),singleton(B))
     => A = B ) ).

fof(cc3_waybel_3,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & trivial_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & v2_waybel_3(A) ) )
     <= rel_str(A) ) ).

fof(fc6_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ( one_sorted_str(A)
        & quasi_total(D,B,the_carrier(A))
        & relation_of2(D,B,the_carrier(A))
        & function(D)
        & relation_of2(C,B,B)
        & ~ empty(B) )
     => ( ~ empty_carrier(net_str_of(A,B,C,D))
        & strict_net_str(net_str_of(A,B,C,D),A) ) ) ).

fof(redefinition_k6_setfam_1,axiom,
    ! [A,B] :
      ( set_meet(B) = meet_of_subsets(A,B)
     <= element(B,powerset(powerset(A))) ) ).

fof(t2_boole,axiom,
    ! [A] : set_intersection2(A,empty_set) = empty_set ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : top_str(A) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(t116_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),A)
     <= relation(B) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation_empty_yielding(A)
      & relation(A) ) ).

fof(s1_xboole_0__e4_7_2__tops_2__1,lemma,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( ( ? [F,G] :
                ( ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( subset_complement(the_carrier(A),H) = G
                     <= F = H ) )
                & in(F,B)
                & ordered_pair(F,G) = E )
            & in(E,cartesian_product2(B,C)) )
        <=> in(E,D) ) ) ).

fof(fc1_finsub_1,axiom,
    ! [A] :
      ( preboolean(powerset(A))
      & diff_closed(powerset(A))
      & cup_closed(powerset(A))
      & ~ empty(powerset(A)) ) ).

fof(cc2_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
       <= with_infima_relstr(A) )
     <= rel_str(A) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     <= ( epsilon_connected(A)
        & epsilon_transitive(A) ) ) ).

fof(t32_yellow_6,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ! [C,D] :
              ( subnet(D,A,B)
             => ( is_eventually_in(A,D,C)
               <= preimage_subnetstr(A,B,C) = D ) )
         <= ( ~ empty_carrier(B)
            & transitive_relstr(B)
            & directed_relstr(B)
            & net_str(B,A) ) ) ) ).

fof(fc37_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_difference(A,B))
     <= v1_membered(A) ) ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( subset(A,cartesian_product2(relation_dom(A),relation_rng(A)))
     <= relation(A) ) ).

fof(s1_tarski__e6_21__wellord2__1,axiom,
    ! [A,B,C] :
      ( ( ? [D] :
          ! [E] :
            ( ? [F] :
                ( in(F,cartesian_product2(A,A))
                & F = E
                & ? [K,L] :
                    ( in(ordered_pair(apply(C,K),apply(C,L)),B)
                    & ordered_pair(K,L) = E ) )
          <=> in(E,D) )
       <= ! [D,E,F] :
            ( ( ? [G,H] :
                  ( ordered_pair(G,H) = E
                  & in(ordered_pair(apply(C,G),apply(C,H)),B) )
              & F = D
              & ? [I,J] :
                  ( ordered_pair(I,J) = F
                  & in(ordered_pair(apply(C,I),apply(C,J)),B) )
              & D = E )
           => F = E ) )
     <= ( function(C)
        & relation(C)
        & relation(B) ) ) ).

fof(fc3_lattices,axiom,
    ! [A,B,C] :
      ( ( strict_latt_str(latt_str_of(A,B,C))
        & ~ empty_carrier(latt_str_of(A,B,C)) )
     <= ( quasi_total(B,cartesian_product2(A,A),A)
        & function(C)
        & relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(B)
        & ~ empty(A) ) ) ).

fof(cc3_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( function(C)
          & quasi_total(C,A,B)
          & onto(C,A,B)
          & one_to_one(C) )
       => ( bijective(C,A,B)
          & quasi_total(C,A,B)
          & function(C) ) )
     <= relation_of2(C,A,B) ) ).

fof(d5_orders_2,axiom,
    ! [A] :
      ( ( transitive_relstr(A)
      <=> is_transitive_in(the_InternalRel(A),the_carrier(A)) )
     <= rel_str(A) ) ).

fof(l3_wellord1,lemma,
    ! [A] :
      ( ( ! [B,C] :
            ( B = C
           <= ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,B),A) ) )
      <=> antisymmetric(A) )
     <= relation(A) ) ).

fof(rc1_pboole,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & relation_empty_yielding(A) ) ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => one_sorted_str(A) ) ).

fof(dt_k3_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( strict_rel_str(poset_of_lattice(A))
        & rel_str(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A)) ) ) ).

fof(t8_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(ordered_pair(A,B),C)
      <=> ( in(A,relation_dom(C))
          & apply(C,A) = B ) ) ) ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(set_intersection2(A,B)) ) ).

fof(s1_tarski__e4_27_3_1__finset_1__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ? [H] :
                    ( set_difference(H,singleton(A)) = D
                    & in(H,B) )
                & E = D
                & in(E,powerset(A)) ) )
       <= ! [C,D,E] :
            ( ( ? [F] :
                  ( in(F,B)
                  & set_difference(F,singleton(A)) = D )
              & ? [G] :
                  ( in(G,B)
                  & E = set_difference(G,singleton(A)) )
              & C = E
              & C = D )
           => E = D ) )
     <= ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) ) ) ).

fof(rc1_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ? [B] :
          ( filtered_subset(B,A)
          & directed_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(t3_boole,axiom,
    ! [A] : A = set_difference(A,empty_set) ).

fof(t16_yellow_0,lemma,
    ! [A] :
      ( ( rel_str(A)
        & antisymmetric_relstr(A) )
     => ! [B] :
          ( ex_inf_of_relstr_set(A,B)
        <=> ? [C] :
              ( element(C,the_carrier(A))
              & relstr_element_smaller(A,B,C)
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( relstr_element_smaller(A,B,D)
                   => related(A,D,C) ) ) ) ) ) ).

fof(s1_ordinal1__e8_6__wellord2,lemma,
    ! [A] :
      ( ? [B] :
          ( ordinal(B)
          & in(B,A)
          & ! [C] :
              ( ( in(C,A)
               => ordinal_subset(B,C) )
             <= ordinal(C) ) )
     <= ? [B] :
          ( ordinal(B)
          & in(B,A) ) ) ).

fof(t5_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ~ ( B = empty_set
              & is_a_cover_of_carrier(A,B) )
         <= element(B,powerset(powerset(the_carrier(A)))) )
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(s1_funct_1__e4_7_1__tops_2__1,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( ! [D,E] :
                ( ( in(D,complements_of_subsets(the_carrier(A),B))
                  & in(D,complements_of_subsets(the_carrier(A),B))
                  & ! [H] :
                      ( ( D = H
                       => E = subset_complement(the_carrier(A),H) )
                     <= element(H,powerset(the_carrier(A))) ) )
              <=> in(ordered_pair(D,E),C) )
            & function(C)
            & relation(C) )
       <= ! [C,D,E] :
            ( ( ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( C = F
                   => D = subset_complement(the_carrier(A),F) ) )
              & ! [G] :
                  ( element(G,powerset(the_carrier(A)))
                 => ( E = subset_complement(the_carrier(A),G)
                   <= C = G ) )
              & in(C,complements_of_subsets(the_carrier(A),B))
              & in(C,complements_of_subsets(the_carrier(A),B)) )
           => D = E ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(t119_relat_1,lemma,
    ! [A,B] :
      ( relation_rng(relation_rng_restriction(A,B)) = set_intersection2(relation_rng(B),A)
     <= relation(B) ) ).

fof(dt_m1_yellow_6,axiom,
    ! [A,B] :
      ( ( net_str(B,A)
        & one_sorted_str(A) )
     => ! [C] :
          ( net_str(C,A)
         <= subnetstr(C,A,B) ) ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( relation(C)
      & quasi_total(C,A,B)
      & function(C)
      & relation_of2(C,A,B) ) ).

fof(dt_m1_connsp_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( element(C,powerset(the_carrier(A)))
         <= point_neighbourhood(C,A,B) )
     <= ( topological_space(A)
        & element(B,the_carrier(A))
        & top_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(s2_funct_1__e4_7_2__tops_2,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( relation(C)
            & function(C)
            & ! [D] :
                ( ! [I] :
                    ( ( I = D
                     => subset_complement(the_carrier(A),I) = apply(C,D) )
                   <= element(I,powerset(the_carrier(A))) )
               <= in(D,B) )
            & B = relation_dom(C) )
       <= ( ! [C,D,E] :
              ( D = E
             <= ( ! [G] :
                    ( ( subset_complement(the_carrier(A),G) = E
                     <= C = G )
                   <= element(G,powerset(the_carrier(A))) )
                & ! [F] :
                    ( element(F,powerset(the_carrier(A)))
                   => ( D = subset_complement(the_carrier(A),F)
                     <= C = F ) )
                & in(C,B) ) )
          & ! [C] :
              ~ ( in(C,B)
                & ! [D] :
                    ~ ! [H] :
                        ( element(H,powerset(the_carrier(A)))
                       => ( H = C
                         => subset_complement(the_carrier(A),H) = D ) ) ) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) )
     <= v3_membered(A) ) ).

fof(d4_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
    <=> ? [C] :
          ( one_to_one(C)
          & B = relation_rng(C)
          & A = relation_dom(C)
          & function(C)
          & relation(C) ) ) ).

fof(t8_waybel_7,conjecture,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & antisymmetric_relstr(A)
        & lower_bounded_relstr(A)
        & rel_str(A) )
     => ! [B] :
          ( ( ~ in(bottom_of_relstr(A),B)
          <=> proper_element(B,powerset(the_carrier(A))) )
         <= ( ~ empty(B)
            & filtered_subset(B,A)
            & element(B,powerset(the_carrier(A)))
            & upper_relstr_subset(B,A) ) ) ) ).

fof(cc4_waybel_3,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & up_complete_relstr(A)
          & v2_waybel_3(A) )
       <= ( ~ empty_carrier(A)
          & v3_waybel_3(A)
          & reflexive_relstr(A) ) )
     <= rel_str(A) ) ).

fof(cc4_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lower_bounded_semilattstr(A)
          & upper_bounded_semilattstr(A) )
       <= ( ~ empty_carrier(A)
          & bounded_lattstr(A) ) ) ) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => set_difference(A,B) = subset_complement(A,B) ) ).

fof(dt_g1_orders_2,axiom,
    ! [A,B] :
      ( ( strict_rel_str(rel_str_of(A,B))
        & rel_str(rel_str_of(A,B)) )
     <= relation_of2(B,A,A) ) ).

fof(t37_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
    <=> empty_set = set_difference(A,B) ) ).

fof(t9_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( subset(B,C)
       => ( ( A != empty_set
            & empty_set = B )
          | ( function(D)
            & relation_of2_as_subset(D,A,C)
            & quasi_total(D,A,C) ) ) )
     <= ( quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B)
        & function(D) ) ) ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( ! [B,C] :
            ( C = B
           <= ( apply(A,C) = apply(A,B)
              & in(C,relation_dom(A))
              & in(B,relation_dom(A)) ) )
      <=> one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => v4_membered(A) ) ).

fof(fc40_membered,axiom,
    ! [A,B] :
      ( ( v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v4_membered(A) ) ).

fof(fc1_ordinal2,axiom,
    ( epsilon_transitive(omega)
    & ordinal(omega)
    & ~ empty(omega)
    & epsilon_connected(omega) ) ).

fof(d5_ordinal2,axiom,
    ! [A] :
      ( omega = A
    <=> ( ordinal(A)
        & ! [B] :
            ( ordinal(B)
           => ( subset(A,B)
             <= ( being_limit_ordinal(B)
                & in(empty_set,B) ) ) )
        & being_limit_ordinal(A)
        & in(empty_set,A) ) ) ).

fof(existence_m1_yellow_6,axiom,
    ! [A,B] :
      ( ( net_str(B,A)
        & one_sorted_str(A) )
     => ? [C] : subnetstr(C,A,B) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(B,A))
     <= ~ empty(A) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) )
     <= v2_membered(A) ) ).

fof(d1_mcart_1,axiom,
    ! [A] :
      ( ! [B] :
          ( B = pair_first(A)
        <=> ! [C,D] :
              ( B = C
             <= A = ordered_pair(C,D) ) )
     <= ? [B,C] : A = ordered_pair(B,C) ) ).

fof(d11_grcat_1,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => identity_as_relation_of(the_carrier(A)) = identity_on_carrier(A) ) ).

fof(redefinition_r2_wellord2,axiom,
    ! [A,B] :
      ( are_equipotent(A,B)
    <=> equipotent(A,B) ) ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( relation(C)
         => ( relation_dom_restriction(A,B) = C
          <=> ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(ordered_pair(D,E),A)
                  & in(D,B) ) ) ) )
     <= relation(A) ) ).

fof(d2_tex_2,axiom,
    ! [A,B] :
      ( element(B,A)
     => ( proper_element(B,A)
      <=> union(A) != B ) ) ).

fof(d1_pre_topc,axiom,
    ! [A] :
      ( ( ( ! [B] :
              ( ( in(union_of_subsets(the_carrier(A),B),the_topology(A))
               <= subset(B,the_topology(A)) )
             <= element(B,powerset(powerset(the_carrier(A)))) )
          & ! [B] :
              ( ! [C] :
                  ( ( ( in(B,the_topology(A))
                      & in(C,the_topology(A)) )
                   => in(subset_intersection2(the_carrier(A),B,C),the_topology(A)) )
                 <= element(C,powerset(the_carrier(A))) )
             <= element(B,powerset(the_carrier(A))) )
          & in(the_carrier(A),the_topology(A)) )
      <=> topological_space(A) )
     <= top_str(A) ) ).

fof(t3_lattice3,lemma,
    ! [A] :
      ( empty_set = bottom_of_semilattstr(boole_lattice(A))
      & lower_bounded_semilattstr(boole_lattice(A)) ) ).

fof(cc10_waybel_1,axiom,
    ! [A] :
      ( ( ( boolean_relstr(A)
          & ~ empty_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & with_infima_relstr(A)
          & heyting_relstr(A)
          & distributive_relstr(A)
          & upper_bounded_relstr(A)
          & with_suprema_relstr(A)
          & antisymmetric_relstr(A) ) )
     <= rel_str(A) ) ).

fof(fc3_lattice2,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & join_associative(A) )
     => ( function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v2_binop_1(the_L_join(A),the_carrier(A))
        & relation(the_L_join(A)) ) ) ).

fof(t21_funct_2,lemma,
    ! [A,B,C,D] :
      ( ! [E] :
          ( ( ( apply(relation_composition(D,E),C) = apply(E,apply(D,C))
              | B = empty_set )
           <= in(C,A) )
         <= ( relation(E)
            & function(E) ) )
     <= ( function(D)
        & quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B) ) ) ).

fof(redefinition_k1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( apply_on_structs(A,B,C,D) = apply(C,D)
     <= ( ~ empty_carrier(B)
        & one_sorted_str(B)
        & function(C)
        & quasi_total(C,the_carrier(A),the_carrier(B))
        & relation_of2(C,the_carrier(A),the_carrier(B))
        & element(D,the_carrier(A))
        & one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t13_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( finite(complements_of_subsets(the_carrier(A),B))
          <=> finite(B) ) )
     <= one_sorted_str(A) ) ).

fof(dt_k5_lattice3,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & element(B,the_carrier(poset_of_lattice(A)))
        & lattice(A) )
     => element(cast_to_el_of_lattice(A,B),the_carrier(A)) ) ).

fof(d1_struct_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty(the_carrier(A))
      <=> empty_carrier(A) ) ) ).

fof(fc39_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v3_membered(A) ) ).

fof(d9_yellow_0,axiom,
    ! [A] :
      ( ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ( ( relstr_set_smaller(A,B,C)
                & ! [D] :
                    ( ( related(A,C,D)
                     <= relstr_set_smaller(A,B,D) )
                   <= element(D,the_carrier(A)) ) )
            <=> C = join_on_relstr(A,B) )
           <= ex_sup_of_relstr_set(A,B) ) )
     <= rel_str(A) ) ).

fof(dt_k3_waybel_0,axiom,
    ! [A,B,C] :
      ( element(apply_netmap(A,B,C),the_carrier(A))
     <= ( net_str(B,A)
        & element(C,the_carrier(B))
        & ~ empty_carrier(B)
        & one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t178_relat_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_inverse_image(C,A),relation_inverse_image(C,B))
       <= subset(A,B) )
     <= relation(C) ) ).

fof(rc10_lattices,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & strict_latt_str(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & modular_lattstr(A)
      & distributive_lattstr(A)
      & lattice(A)
      & join_absorbing(A)
      & join_associative(A)
      & join_commutative(A)
      & latt_str(A) ) ).

fof(s1_tarski__e11_2_1__waybel_0__1,axiom,
    ! [A,B,C] :
      ( ( transitive_relstr(A)
        & rel_str(A)
        & element(B,powerset(the_carrier(A)))
        & finite(C)
        & element(C,powerset(B))
        & ~ empty_carrier(A) )
     => ( ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( ? [K] :
                    ( ? [L] :
                        ( element(L,the_carrier(A))
                        & relstr_set_smaller(A,K,L)
                        & in(L,B) )
                    & E = K )
                & F = E
                & in(F,powerset(C)) ) )
       <= ! [D,E,F] :
            ( ( ? [I] :
                  ( F = I
                  & ? [J] :
                      ( in(J,B)
                      & relstr_set_smaller(A,I,J)
                      & element(J,the_carrier(A)) ) )
              & D = F
              & ? [G] :
                  ( ? [H] :
                      ( element(H,the_carrier(A))
                      & relstr_set_smaller(A,G,H)
                      & in(H,B) )
                  & E = G )
              & E = D )
           => F = E ) ) ) ).

fof(t12_pre_topc,lemma,
    ! [A] :
      ( the_carrier(A) = cast_as_carrier_subset(A)
     <= one_sorted_str(A) ) ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ( element(B,A)
        <=> in(B,A) )
       <= ~ empty(A) )
      & ( ( element(B,A)
        <=> empty(B) )
       <= empty(A) ) ) ).

fof(fc2_partfun1,axiom,
    ! [A] :
      ( relation(identity_relation(A))
      & function(identity_relation(A))
      & symmetric(identity_relation(A))
      & transitive(identity_relation(A))
      & antisymmetric(identity_relation(A))
      & reflexive(identity_relation(A)) ) ).

fof(dt_k5_pre_topc,axiom,
    ! [A,B,C,D] :
      ( element(function_invverse_img_as_carrier_subset(A,B,C,D),powerset(the_carrier(A)))
     <= ( one_sorted_str(A)
        & one_sorted_str(B)
        & function(C)
        & quasi_total(C,the_carrier(A),the_carrier(B))
        & relation_of2(C,the_carrier(A),the_carrier(B)) ) ) ).

fof(t26_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_intersection2(A,C),set_intersection2(B,C))
     <= subset(A,B) ) ).

fof(l3_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( in(C,A)
         <= in(C,B) ) ) ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= rel_str(A) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> relation_of2_as_subset(C,A,B) ) ).

fof(l23_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => B = set_union2(singleton(A),B) ) ).

fof(l40_tops_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => ( ~ in(C,B)
              <=> in(C,subset_complement(the_carrier(A),B)) ) )
         <= element(B,powerset(the_carrier(A))) )
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(d1_lattice3,axiom,
    ! [A,B] :
      ( ( boole_lattice(A) = B
      <=> ( ! [C] :
              ( ! [D] :
                  ( ( subset_union2(A,C,D) = apply_binary(the_L_join(B),C,D)
                    & subset_intersection2(A,C,D) = apply_binary(the_L_meet(B),C,D) )
                 <= element(D,powerset(A)) )
             <= element(C,powerset(A)) )
          & powerset(A) = the_carrier(B) ) )
     <= ( latt_str(B)
        & strict_latt_str(B) ) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( B = union(A)
    <=> ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(C,D)
              & in(D,A) ) ) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => one_sorted_str(A) ) ).

fof(rc2_waybel_7,axiom,
    ! [A] :
    ? [B] :
      ( ~ empty(B)
      & finite(B)
      & element(B,powerset(powerset(A))) ) ).

fof(redefinition_k1_domain_1,axiom,
    ! [A,B,C,D] :
      ( ( element(D,B)
        & element(C,A)
        & ~ empty(B)
        & ~ empty(A) )
     => ordered_pair_as_product_element(A,B,C,D) = ordered_pair(C,D) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(fc17_yellow_6,axiom,
    ! [A,B,C] :
      ( ( one_sorted_str(A)
        & net_str(B,A)
        & transitive_relstr(B) )
     => ( transitive_relstr(preimage_subnetstr(A,B,C))
        & strict_net_str(preimage_subnetstr(A,B,C),A)
        & full_subnetstr(preimage_subnetstr(A,B,C),A,B) ) ) ).

fof(t9_zfmisc_1,lemma,
    ! [A,B,C] :
      ( singleton(A) = unordered_pair(B,C)
     => C = B ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(B)
        & ~ empty(A) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(t10_tops_2,lemma,
    ! [A,B] :
      ( ( ~ ( empty_set = complements_of_subsets(A,B)
            & empty_set != B )
        & ~ ( complements_of_subsets(A,B) != empty_set
            & B = empty_set ) )
     <= element(B,powerset(powerset(A))) ) ).

fof(cc1_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & quasi_total(C,A,B) )
       <= ( function(C)
          & v1_partfun1(C,A,B) ) ) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) )
     <= subset(A,B) ) ).

fof(rc2_tex_2,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & ~ proper_element(B,powerset(A)) ) ).

fof(rc1_arytm_3,axiom,
    ? [A] :
      ( ~ empty(A)
      & epsilon_connected(A)
      & natural(A)
      & ordinal(A)
      & epsilon_transitive(A) ) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( ( B = identity_relation(A)
      <=> ! [C,D] :
            ( ( D = C
              & in(C,A) )
          <=> in(ordered_pair(C,D),B) ) )
     <= relation(B) ) ).

fof(t3_wellord2,lemma,
    ! [A] : transitive(inclusion_relation(A)) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( subset(A,B)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
               <= in(ordered_pair(C,D),A) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(d8_filter_1,axiom,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => relation_of_lattice(A) = a_1_0_filter_1(A) ) ).

fof(d1_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( ( B = empty_set
           => A = empty_set )
         => ( quasi_total(C,A,B)
          <=> A = relation_dom_as_subset(A,B,C) ) )
        & ( ( A = empty_set
            | ( quasi_total(C,A,B)
            <=> empty_set = C ) )
         <= B = empty_set ) )
     <= relation_of2_as_subset(C,A,B) ) ).

fof(t22_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( in(A,relation_dom(relation_composition(C,B)))
           => apply(relation_composition(C,B),A) = apply(B,apply(C,A)) )
         <= ( function(C)
            & relation(C) ) )
     <= ( function(B)
        & relation(B) ) ) ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(d13_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ( topstr_closure(A,B) = C
              <=> ! [D] :
                    ( in(D,the_carrier(A))
                   => ( ! [E] :
                          ( element(E,powerset(the_carrier(A)))
                         => ~ ( disjoint(B,E)
                              & in(D,E)
                              & open_subset(E,A) ) )
                    <=> in(D,C) ) ) ) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( ? [E] :
                  ( in(ordered_pair(D,E),A)
                  & in(E,B) )
            <=> in(D,C) )
        <=> relation_inverse_image(A,B) = C ) ) ).

fof(t21_yellow_6,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( ! [C] :
              ( ( subnetstr(C,A,B)
                & full_subnetstr(C,A,B)
                & ~ empty_carrier(C) )
             => ! [D] :
                  ( ! [E] :
                      ( ! [F] :
                          ( element(F,the_carrier(C))
                         => ! [G] :
                              ( element(G,the_carrier(C))
                             => ( ( D = F
                                  & related(B,D,E)
                                  & G = E )
                               => related(C,F,G) ) ) )
                     <= element(E,the_carrier(B)) )
                 <= element(D,the_carrier(B)) ) )
         <= ( net_str(B,A)
            & ~ empty_carrier(B) ) ) ) ).

fof(cc1_arytm_3,axiom,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ( epsilon_transitive(B)
            & ordinal(B)
            & epsilon_connected(B) )
         <= element(B,A) ) ) ).

fof(s1_tarski__e8_6__wellord2__1,axiom,
    ! [A,B] :
      ( ordinal(B)
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,succ(B))
                & ? [H] :
                    ( ordinal(H)
                    & H = D
                    & in(H,A) )
                & D = E ) )
       <= ! [C,D,E] :
            ( ( ? [F] :
                  ( D = F
                  & in(F,A)
                  & ordinal(F) )
              & E = C
              & ? [G] :
                  ( ordinal(G)
                  & in(G,A)
                  & E = G )
              & D = C )
           => D = E ) ) ) ).

fof(t1_waybel_0,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & rel_str(A)
        & transitive_relstr(A) )
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( ( ~ empty(B)
              & directed_subset(B,A) )
          <=> ! [C] :
                ( ? [D] :
                    ( element(D,the_carrier(A))
                    & relstr_set_smaller(A,C,D)
                    & in(D,B) )
               <= ( element(C,powerset(B))
                  & finite(C) ) ) ) ) ) ).

fof(dt_k8_filter_1,axiom,
    ! [A,B] :
      ( ( strict_latt_str(k8_filter_1(A,B))
        & latt_str(k8_filter_1(A,B)) )
     <= ( latt_str(B)
        & ~ empty_carrier(B)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_m2_yellow_6,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ( ~ empty_carrier(C)
            & net_str(C,A)
            & directed_relstr(C)
            & transitive_relstr(C) )
         <= subnet(C,A,B) )
     <= ( transitive_relstr(B)
        & net_str(B,A)
        & directed_relstr(B)
        & ~ empty_carrier(B)
        & one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t174_relat_1,lemma,
    ! [A,B] :
      ( ~ ( A != empty_set
          & subset(A,relation_rng(B))
          & relation_inverse_image(B,A) = empty_set )
     <= relation(B) ) ).

fof(free_g1_orders_2,axiom,
    ! [A,B] :
      ( relation_of2(B,A,A)
     => ! [C,D] :
          ( ( D = B
            & A = C )
         <= rel_str_of(A,B) = rel_str_of(C,D) ) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(complements_of_subsets(A,B),powerset(powerset(A)))
     <= element(B,powerset(powerset(A))) ) ).

fof(cc6_waybel_1,axiom,
    ! [A] :
      ( ( ( distributive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( ~ empty_carrier(A)
          & heyting_relstr(A) ) )
     <= rel_str(A) ) ).

fof(t41_yellow_6,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( ( transitive_relstr(B)
            & directed_relstr(B)
            & net_str(B,A)
            & ~ empty_carrier(B) )
         => ! [C] :
              ( subset(lim_points_of_net(A,B),lim_points_of_net(A,C))
             <= subnet(C,A,B) ) ) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( function(relation_rng_restriction(A,B))
        & relation(relation_rng_restriction(A,B)) ) ) ).

fof(dt_k1_domain_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(B)
        & element(C,A)
        & element(D,B)
        & ~ empty(A) )
     => element(ordered_pair_as_product_element(A,B,C,D),cartesian_product2(A,B)) ) ).

fof(t18_wellord1,lemma,
    ! [A,B] :
      ( relation_restriction(B,A) = relation_rng_restriction(A,relation_dom_restriction(B,A))
     <= relation(B) ) ).

fof(free_g1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ! [E,F,G,H] :
          ( net_str_of(E,F,G,H) = net_str_of(A,B,C,D)
         => ( F = B
            & C = G
            & D = H
            & E = A ) )
     <= ( one_sorted_str(A)
        & relation_of2(C,B,B)
        & quasi_total(D,B,the_carrier(A))
        & relation_of2(D,B,the_carrier(A))
        & function(D) ) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( function(A)
        & relation(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) ).

fof(dt_k3_yellow_0,axiom,
    ! [A] :
      ( element(bottom_of_relstr(A),the_carrier(A))
     <= rel_str(A) ) ).

fof(d9_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ! [C] :
              ( ( related(A,B,C)
              <=> in(ordered_pair(B,C),the_InternalRel(A)) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(d8_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( is_a_cover_of_carrier(A,B)
          <=> cast_as_carrier_subset(A) = union_of_subsets(the_carrier(A),B) ) )
     <= one_sorted_str(A) ) ).

fof(dt_k8_relset_1,axiom,
    ! [A,B,C,D] :
      ( relation_of2(C,A,B)
     => relation_of2_as_subset(relation_dom_restr_as_relation_of(A,B,C,D),A,B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(B)
        & B != A
        & empty(A) ) ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(t5_wellord2,lemma,
    ! [A] : antisymmetric(inclusion_relation(A)) ).

fof(dt_k6_pre_topc,axiom,
    ! [A,B] :
      ( element(topstr_closure(A,B),powerset(the_carrier(A)))
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A))) ) ) ).

fof(t30_tops_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( open_subset(B,A)
          <=> closed_subset(subset_complement(the_carrier(A),B),A) ) )
     <= top_str(A) ) ).

fof(d1_binop_1,axiom,
    ! [A] :
      ( ! [B,C] : apply_binary(A,B,C) = apply(A,ordered_pair(B,C))
     <= ( function(A)
        & relation(A) ) ) ).

fof(s1_xboole_0__e6_21__wellord2__1,lemma,
    ! [A,B,C] :
      ( ? [D] :
        ! [E] :
          ( ( ? [F,G] :
                ( in(ordered_pair(apply(C,F),apply(C,G)),B)
                & ordered_pair(F,G) = E )
            & in(E,cartesian_product2(A,A)) )
        <=> in(E,D) )
     <= ( relation(B)
        & function(C)
        & relation(C) ) ) ).

fof(t15_yellow_0,lemma,
    ! [A] :
      ( ( antisymmetric_relstr(A)
        & rel_str(A) )
     => ! [B] :
          ( ex_sup_of_relstr_set(A,B)
        <=> ? [C] :
              ( element(C,the_carrier(A))
              & ! [D] :
                  ( ( relstr_set_smaller(A,B,D)
                   => related(A,C,D) )
                 <= element(D,the_carrier(A)) )
              & relstr_set_smaller(A,B,C) ) ) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

fof(dt_k2_yellow_1,axiom,
    ! [A] :
      ( rel_str(incl_POSet(A))
      & strict_rel_str(incl_POSet(A)) ) ).

fof(t28_yellow_6,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ! [C] :
              ( is_eventually_in(A,B,C)
             => is_often_in(A,B,C) )
         <= ( transitive_relstr(B)
            & net_str(B,A)
            & directed_relstr(B)
            & ~ empty_carrier(B) ) ) ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( v2_membered(A)
      & v3_membered(A)
      & v5_membered(A)
      & v4_membered(A)
      & v1_membered(A)
      & ~ empty(A) ) ).

fof(cc2_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & complete_relstr(A)
          & reflexive_relstr(A) )
       <= ( trivial_carrier(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(t44_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( related(A,bottom_of_relstr(A),B)
         <= element(B,the_carrier(A)) )
     <= ( ~ empty_carrier(A)
        & antisymmetric_relstr(A)
        & rel_str(A)
        & lower_bounded_relstr(A) ) ) ).

fof(dt_k2_pre_topc,axiom,
    ! [A] :
      ( element(cast_as_carrier_subset(A),powerset(the_carrier(A)))
     <= one_sorted_str(A) ) ).

fof(rc5_waybel_1,axiom,
    ? [A] :
      ( transitive_relstr(A)
      & with_suprema_relstr(A)
      & upper_bounded_relstr(A)
      & heyting_relstr(A)
      & distributive_relstr(A)
      & with_infima_relstr(A)
      & antisymmetric_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(t32_filter_1,lemma,
    ! [A] :
      ( ( lattice(A)
        & latt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => ( in(ordered_pair_as_product_element(the_carrier(A),the_carrier(A),B,C),relation_of_lattice(A))
              <=> below_refl(A,B,C) ) )
         <= element(B,the_carrier(A)) ) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( in(A,B)
        | empty(B) ) ) ).

fof(fc3_orders_2,axiom,
    ! [A,B] :
      ( ( transitive_relstr(rel_str_of(A,B))
        & antisymmetric_relstr(rel_str_of(A,B))
        & reflexive_relstr(rel_str_of(A,B))
        & strict_rel_str(rel_str_of(A,B)) )
     <= ( antisymmetric(B)
        & transitive(B)
        & relation_of2(B,A,A)
        & v1_partfun1(B,A,A)
        & reflexive(B) ) ) ).

fof(existence_m1_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ? [B] : subrelstr(B,A) ) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ( ! [C,D] :
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(C,D),A) )
          <=> A = B )
         <= relation(B) ) ) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( subset(cartesian_product2(A,C),cartesian_product2(B,D))
     <= ( subset(C,D)
        & subset(A,B) ) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

fof(fc3_lattice3,axiom,
    ! [A] :
      ( join_commutative(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & lower_bounded_semilattstr(boole_lattice(A))
      & boolean_lattstr(boole_lattice(A))
      & complemented_lattstr(boole_lattice(A))
      & bounded_lattstr(boole_lattice(A))
      & upper_bounded_semilattstr(boole_lattice(A))
      & modular_lattstr(boole_lattice(A))
      & distributive_lattstr(boole_lattice(A))
      & lattice(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & strict_latt_str(boole_lattice(A))
      & ~ empty_carrier(boole_lattice(A)) ) ).

fof(d8_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( is_transitive_in(A,B)
        <=> ! [C,D,E] :
              ( in(ordered_pair(C,E),A)
             <= ( in(E,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,E),A)
                & in(D,B)
                & in(C,B) ) ) )
     <= relation(A) ) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( subset_intersection2(A,C,B) = subset_intersection2(A,B,C)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(rc2_funct_2,axiom,
    ! [A] :
    ? [B] :
      ( relation(B)
      & function(B)
      & one_to_one(B)
      & quasi_total(B,A,A)
      & bijective(B,A,A)
      & onto(B,A,A)
      & relation_of2(B,A,A) ) ).

fof(d13_lattices,axiom,
    ! [A] :
      ( ( meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ( lower_bounded_semilattstr(A)
      <=> ? [B] :
            ( element(B,the_carrier(A))
            & ! [C] :
                ( ( meet(A,C,B) = B
                  & meet(A,B,C) = B )
               <= element(C,the_carrier(A)) ) ) ) ) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => ( function(the_L_meet(A))
        & relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) ).

fof(t32_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_ordering(B)
       => well_ordering(relation_restriction(B,A)) ) ) ).

fof(d5_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( in(B,the_topology(A))
          <=> open_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_intersection2(B,A))
     <= v1_membered(A) ) ).

fof(t99_zfmisc_1,lemma,
    ! [A] : union(powerset(A)) = A ).

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(fc5_pre_topc,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => closed_subset(cast_as_carrier_subset(A),A) ) ).

fof(dt_k1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty_carrier(A)
        & ~ empty_carrier(B)
        & one_sorted_str(B)
        & function(C)
        & element(D,the_carrier(A))
        & relation_of2(C,the_carrier(A),the_carrier(B))
        & quasi_total(C,the_carrier(A),the_carrier(B))
        & one_sorted_str(A) )
     => element(apply_on_structs(A,B,C,D),the_carrier(B)) ) ).

fof(dt_k5_lattices,axiom,
    ! [A] :
      ( element(bottom_of_semilattstr(A),the_carrier(A))
     <= ( meet_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(s1_tarski__e16_22__wellord2__2,axiom,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( ? [E] :
              ( ? [J,K] :
                  ( D = ordered_pair(J,K)
                  & in(J,A)
                  & K = singleton(J) )
              & D = E
              & in(E,cartesian_product2(A,B)) )
        <=> in(D,C) )
     <= ! [C,D,E] :
          ( E = D
         <= ( D = C
            & ? [F,G] :
                ( in(F,A)
                & singleton(F) = G
                & ordered_pair(F,G) = D )
            & ? [H,I] :
                ( in(H,A)
                & singleton(H) = I
                & ordered_pair(H,I) = E )
            & C = E ) ) ) ).

fof(l32_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
    <=> empty_set = set_difference(A,B) ) ).

fof(t1_boole,axiom,
    ! [A] : set_union2(A,empty_set) = A ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> subset(C,cartesian_product2(A,B)) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( ! [C,D] :
                ( in(ordered_pair(D,C),A)
              <=> in(ordered_pair(C,D),B) )
          <=> B = relation_inverse(A) )
         <= relation(B) )
     <= relation(A) ) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation_empty_yielding(A) )
     => ( relation_empty_yielding(relation_dom_restriction(A,B))
        & relation(relation_dom_restriction(A,B)) ) ) ).

fof(t117_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng_restriction(A,B),B) ) ).

fof(t44_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subset(meet_of_subsets(the_carrier(A),B),A)
           <= ! [C] :
                ( element(C,powerset(the_carrier(A)))
               => ( closed_subset(C,A)
                 <= in(C,B) ) ) ) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(fc2_orders_2,axiom,
    ! [A] :
      ( ( reflexive_relstr(A)
        & rel_str(A)
        & antisymmetric_relstr(A)
        & transitive_relstr(A) )
     => ( relation(the_InternalRel(A))
        & antisymmetric(the_InternalRel(A))
        & transitive(the_InternalRel(A))
        & v1_partfun1(the_InternalRel(A),the_carrier(A),the_carrier(A))
        & reflexive(the_InternalRel(A)) ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         => in(C,B) )
    <=> subset(A,B) ) ).

fof(t90_relat_1,lemma,
    ! [A,B] :
      ( relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A)
     <= relation(B) ) ).

fof(cc5_lattices,axiom,
    ! [A] :
      ( ( ( boolean_lattstr(A)
          & ~ empty_carrier(A) )
       => ( ~ empty_carrier(A)
          & complemented_lattstr(A)
          & bounded_lattstr(A)
          & upper_bounded_semilattstr(A)
          & lower_bounded_semilattstr(A)
          & distributive_lattstr(A) ) )
     <= latt_str(A) ) ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_dom_restriction(A,B))
     <= relation(A) ) ).

fof(s1_tarski__e6_22__wellord2__1,axiom,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( C = D
              & ordinal(C)
              & in(D,A) ) )
     <= ! [B,C,D] :
          ( ( B = C
            & ordinal(C)
            & ordinal(D)
            & B = D )
         => C = D ) ) ).

fof(fraenkel_a_1_0_filter_1,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ( ? [C,D] :
            ( below_refl(B,C,D)
            & ordered_pair_as_product_element(the_carrier(B),the_carrier(B),C,D) = A
            & element(D,the_carrier(B))
            & element(C,the_carrier(B)) )
      <=> in(A,a_1_0_filter_1(B)) ) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_k3_lattices,axiom,
    ! [A,B,C] :
      ( element(join_commut(A,B,C),the_carrier(A))
     <= ( join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(s1_xboole_0__e18_27__finset_1__1,lemma,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( ( ? [D] :
                ( ordinal(D)
                & C = D
                & ( ! [E] :
                      ( element(E,powerset(powerset(D)))
                     => ~ ( E != empty_set
                          & ! [F] :
                              ~ ( in(F,E)
                                & ! [G] :
                                    ( G = F
                                   <= ( subset(F,G)
                                      & in(G,E) ) ) ) ) )
                 <= in(D,omega) ) )
            & in(C,succ(A)) )
        <=> in(C,B) )
     <= ordinal(A) ) ).

fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( element(apply_binary_as_element(A,B,C,D,E,F),C)
     <= ( ~ empty(B)
        & function(D)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(F,B)
        & element(E,A)
        & quasi_total(D,cartesian_product2(A,B),C)
        & ~ empty(A) ) ) ).

fof(t45_pre_topc,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( ( in(C,topstr_closure(A,B))
              <=> ! [D] :
                    ( element(D,powerset(the_carrier(A)))
                   => ( ( subset(B,D)
                        & closed_subset(D,A) )
                     => in(C,D) ) ) )
             <= in(C,the_carrier(A)) ) ) ) ).

fof(s2_funct_1__e4_7_1__tops_2,lemma,
    ! [A,B] :
      ( ( ( ! [C,D,E] :
              ( ( ! [F] :
                    ( ( subset_complement(the_carrier(A),F) = D
                     <= C = F )
                   <= element(F,powerset(the_carrier(A))) )
                & ! [G] :
                    ( element(G,powerset(the_carrier(A)))
                   => ( subset_complement(the_carrier(A),G) = E
                     <= G = C ) )
                & in(C,complements_of_subsets(the_carrier(A),B)) )
             => E = D )
          & ! [C] :
              ~ ( ! [D] :
                    ~ ! [H] :
                        ( element(H,powerset(the_carrier(A)))
                       => ( D = subset_complement(the_carrier(A),H)
                         <= C = H ) )
                & in(C,complements_of_subsets(the_carrier(A),B)) ) )
       => ? [C] :
            ( relation(C)
            & ! [D] :
                ( in(D,complements_of_subsets(the_carrier(A),B))
               => ! [I] :
                    ( element(I,powerset(the_carrier(A)))
                   => ( D = I
                     => apply(C,D) = subset_complement(the_carrier(A),I) ) ) )
            & complements_of_subsets(the_carrier(A),B) = relation_dom(C)
            & function(C) ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(t10_ordinal1,lemma,
    ! [A] : in(A,succ(A)) ).

fof(dt_k3_yellow_6,axiom,
    ! [A,B,C,D] :
      ( element(apply_on_set_and_struct(A,B,C,D),the_carrier(B))
     <= ( rel_str(B)
        & function(C)
        & quasi_total(C,A,the_carrier(B))
        & element(D,A)
        & relation_of2(C,A,the_carrier(B))
        & ~ empty_carrier(B)
        & ~ empty(A) ) ) ).

fof(cc1_waybel_3,axiom,
    ! [A] :
      ( ! [B] :
          ( ( filtered_subset(B,A)
            & directed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) )
     <= ( ~ empty_carrier(A)
        & rel_str(A)
        & connected_relstr(A) ) ) ).

fof(t86_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_dom(C))
          & in(A,B) )
      <=> in(A,relation_dom(relation_dom_restriction(C,B))) ) ) ).

fof(fc1_waybel_1,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & distributive_relstr(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & strict_rel_str(boole_POSet(A)) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(d4_lattice3,axiom,
    ! [A] :
      ( ! [B] :
          ( B = cast_to_el_of_lattice(A,B)
         <= element(B,the_carrier(poset_of_lattice(A))) )
     <= ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( finite(B)
          & ~ empty(B)
          & element(B,powerset(A)) ) ) ).

fof(t25_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( antisymmetric(B)
       => antisymmetric(relation_restriction(B,A)) ) ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => A = relation_inverse(relation_inverse(A)) ) ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_rng(C) = relation_rng_as_subset(A,B,C) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( epsilon_connected(A)
      & being_limit_ordinal(A)
      & ordinal(A)
      & epsilon_transitive(A) ) ).

fof(d1_tops_1,axiom,
    ! [A] :
      ( ! [B] :
          ( interior(A,B) = subset_complement(the_carrier(A),topstr_closure(A,subset_complement(the_carrier(A),B)))
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(s1_tarski__e10_24__wellord2__1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ( ! [C,D,E] :
            ( ( ? [H] :
                  ( H = C
                  & ! [I] :
                      ( in(ordered_pair(E,I),B)
                     <= in(I,H) )
                  & in(E,H) )
              & in(C,A)
              & ? [F] :
                  ( C = F
                  & in(D,F)
                  & ! [G] :
                      ( in(ordered_pair(D,G),B)
                     <= in(G,F) ) )
              & in(C,A) )
           => D = E )
       => ? [C] :
          ! [D] :
            ( ? [E] :
                ( in(E,A)
                & ? [J] :
                    ( in(D,J)
                    & ! [K] :
                        ( in(ordered_pair(D,K),B)
                       <= in(K,J) )
                    & E = J )
                & in(E,A) )
          <=> in(D,C) ) ) ) ).

fof(fc2_waybel_7,axiom,
    ! [A] :
      ( ~ empty(A)
     => ( strict_rel_str(boole_POSet(A))
        & reflexive_relstr(boole_POSet(A))
        & upper_bounded_relstr(boole_POSet(A))
        & ~ v1_yellow_3(boole_POSet(A))
        & distributive_relstr(boole_POSet(A))
        & heyting_relstr(boole_POSet(A))
        & with_infima_relstr(boole_POSet(A))
        & complete_relstr(boole_POSet(A))
        & with_suprema_relstr(boole_POSet(A))
        & boolean_relstr(boole_POSet(A))
        & complemented_relstr(boole_POSet(A))
        & join_complete_relstr(boole_POSet(A))
        & up_complete_relstr(boole_POSet(A))
        & bounded_relstr(boole_POSet(A))
        & lower_bounded_relstr(boole_POSet(A))
        & antisymmetric_relstr(boole_POSet(A))
        & transitive_relstr(boole_POSet(A))
        & ~ trivial_carrier(boole_POSet(A))
        & ~ empty_carrier(boole_POSet(A)) ) ) ).

fof(dt_u2_lattices,axiom,
    ! [A] :
      ( join_semilatt_str(A)
     => ( quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_join(A)) ) ) ).

fof(rc2_waybel_3,axiom,
    ? [A] :
      ( antisymmetric_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & v3_waybel_3(A)
      & v2_waybel_3(A)
      & lower_bounded_relstr(A)
      & with_suprema_relstr(A)
      & transitive_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(s1_tarski__e16_22__wellord2__1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(B,A)
            & singleton(B) = D
            & C = singleton(B)
            & in(B,A) )
         => C = D )
     => ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & in(D,A)
              & singleton(D) = C ) ) ) ).

fof(cc5_waybel_1,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & with_infima_relstr(A)
          & with_suprema_relstr(A)
          & antisymmetric_relstr(A)
          & transitive_relstr(A) )
       <= ( ~ empty_carrier(A)
          & heyting_relstr(A) ) ) ) ).

fof(rc10_waybel_0,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & rel_str(A) )
     => ? [B] :
          ( ~ empty(B)
          & filtered_subset(B,A)
          & upper_relstr_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( relation(A)
        & ~ empty(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(cc3_arytm_3,axiom,
    ! [A] :
      ( element(A,omega)
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & natural(A)
        & ordinal(A) ) ) ).

fof(t34_lattice3,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( B = meet_of_latt_set(A,C)
            <=> ( ! [D] :
                    ( ( below_refl(A,D,B)
                     <= latt_set_smaller(A,D,C) )
                   <= element(D,the_carrier(A)) )
                & latt_set_smaller(A,B,C) ) )
         <= element(B,the_carrier(A)) )
     <= ( ~ empty_carrier(A)
        & complete_latt_str(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( one_to_one(A)
       => function_inverse(A) = relation_inverse(A) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(dt_k6_yellow_6,axiom,
    ! [A,B,C] :
      ( ( strict_net_str(preimage_subnetstr(A,B,C),A)
        & subnetstr(preimage_subnetstr(A,B,C),A,B) )
     <= ( one_sorted_str(A)
        & net_str(B,A) ) ) ).

fof(t45_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( subset(relation_rng(relation_composition(A,B)),relation_rng(B))
         <= relation(B) ) ) ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( ! [C] :
            ~ ( ! [D] :
                  ~ ( in(D,C)
                    & in(D,B) )
              & in(C,B) )
        & in(A,B) ) ).

fof(s1_tarski__e6_27__finset_1__1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(powerset(A)))
        & function(C)
        & relation(C) )
     => ( ! [D,E,F] :
            ( F = E
           <= ( E = D
              & in(relation_image(C,E),B)
              & in(relation_image(C,F),B)
              & D = F ) )
       => ? [D] :
          ! [E] :
            ( ? [F] :
                ( in(relation_image(C,E),B)
                & E = F
                & in(F,powerset(relation_dom(C))) )
          <=> in(E,D) ) ) ) ).

fof(d2_compts_1,axiom,
    ! [A] :
      ( centered(A)
    <=> ( A != empty_set
        & ! [B] :
            ~ ( B != empty_set
              & empty_set = set_meet(B)
              & finite(B)
              & subset(B,A) ) ) ) ).

fof(t145_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_image(B,A) = relation_image(B,set_intersection2(relation_dom(B),A)) ) ).

fof(cc3_lattices,axiom,
    ! [A] :
      ( ( ( bounded_lattstr(A)
          & ~ empty_carrier(A) )
       <= ( upper_bounded_semilattstr(A)
          & lower_bounded_semilattstr(A)
          & ~ empty_carrier(A) ) )
     <= latt_str(A) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ! [D] :
              ( ? [E] :
                  ( in(ordered_pair(E,D),A)
                  & in(E,B) )
            <=> in(D,C) )
        <=> C = relation_image(A,B) )
     <= relation(A) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => B = subset_intersection2(A,B,B) ) ).

fof(rc7_yellow_6,axiom,
    ! [A,B] :
      ( ? [C] :
          ( subnetstr(C,A,B)
          & full_subnetstr(C,A,B)
          & strict_net_str(C,A)
          & ~ empty_carrier(C) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(B)
        & net_str(B,A) ) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A)) )
     <= v4_membered(A) ) ).

fof(cc7_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => ( ( full_subrelstr(B,A)
              & transitive_relstr(B) )
           <= full_subrelstr(B,A) ) )
     <= ( transitive_relstr(A)
        & rel_str(A) ) ) ).

fof(s1_xboole_0__e8_6__wellord2__1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ? [C] :
        ! [D] :
          ( ( ? [E] :
                ( E = D
                & in(E,A)
                & ordinal(E) )
            & in(D,succ(B)) )
        <=> in(D,C) ) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( ( empty(relation_rng(A))
        & relation(relation_rng(A)) )
     <= empty(A) ) ).

fof(t62_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(function_inverse(A))
       <= one_to_one(A) ) ) ).

fof(cc5_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & trivial_carrier(A)
          & reflexive_relstr(A) )
       => ( reflexive_relstr(A)
          & connected_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(redefinition_r3_lattices,axiom,
    ! [A,B,C] :
      ( ( meet_commutative(A)
        & join_absorbing(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & latt_str(A)
        & meet_absorbing(A)
        & ~ empty_carrier(A) )
     => ( below_refl(A,B,C)
      <=> below(A,B,C) ) ) ).

fof(t46_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(relation_composition(A,B)) = relation_dom(A) )
         <= relation(B) )
     <= relation(A) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( ( v1_xreal_0(B)
            & v1_rat_1(B)
            & v1_xcmplx_0(B) )
         <= element(B,A) ) ) ).

fof(t2_yellow_1,lemma,
    ! [A,B] :
      ( element(B,the_carrier(boole_POSet(A)))
     => ! [C] :
          ( element(C,the_carrier(boole_POSet(A)))
         => ( related_reflexive(boole_POSet(A),B,C)
          <=> subset(B,C) ) ) ) ).

fof(dt_m1_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( subrelstr(B,A)
         => rel_str(B) ) ) ).

fof(rc4_waybel_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ? [B] :
          ( strict_net_str(B,A)
          & net_str(B,A) ) ) ).

fof(t32_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ~ ( ! [C] :
              ( ordinal(C)
             => ~ ( ! [D] :
                      ( ordinal(D)
                     => ( in(D,A)
                       => ordinal_subset(C,D) ) )
                  & in(C,A) ) )
          & empty_set != A
          & subset(A,B) ) ) ).

fof(t4_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ~ disjoint(A,B)
          & ! [C] : ~ in(C,set_intersection2(A,B)) )
      & ~ ( ? [C] : in(C,set_intersection2(A,B))
          & disjoint(A,B) ) ) ).

fof(d3_pre_topc,axiom,
    ! [A] :
      ( cast_as_carrier_subset(A) = the_carrier(A)
     <= one_sorted_str(A) ) ).

fof(t146_funct_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) ).

fof(t25_orders_2,lemma,
    ! [A] :
      ( ( rel_str(A)
        & antisymmetric_relstr(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ( B = C
               <= ( related(A,B,C)
                  & related(A,C,B) ) ) ) ) ) ).

fof(fc5_lattice2,axiom,
    ! [A] :
      ( ( relation(the_L_meet(A))
        & function(the_L_meet(A))
        & v2_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) )
     <= ( ~ empty_carrier(A)
        & meet_semilatt_str(A)
        & meet_associative(A) ) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ordered_pair(A,B) = ordered_pair(C,D)
     => ( A = C
        & B = D ) ) ).

fof(s1_tarski__e2_37_1_1__pre_topc__1,axiom,
    ! [A,B] :
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & in(set_difference(cast_as_carrier_subset(A),D),B)
                & D = E ) )
       <= ! [C,D,E] :
            ( ( D = C
              & in(set_difference(cast_as_carrier_subset(A),D),B)
              & E = C
              & in(set_difference(cast_as_carrier_subset(A),E),B) )
           => E = D ) ) ) ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( in(ordered_pair(C,C),A)
             <= in(C,B) )
        <=> is_reflexive_in(A,B) ) ) ).

fof(cc2_finsub_1,axiom,
    ! [A] :
      ( ( diff_closed(A)
        & cup_closed(A) )
     => preboolean(A) ) ).

fof(d8_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ? [C] :
              ( element(C,the_carrier(A))
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( D = C
                   <= ( ! [E] :
                          ( ( related(A,E,D)
                           <= relstr_element_smaller(A,B,E) )
                         <= element(E,the_carrier(A)) )
                      & relstr_element_smaller(A,B,D) ) ) )
              & ! [D] :
                  ( ( relstr_element_smaller(A,B,D)
                   => related(A,D,C) )
                 <= element(D,the_carrier(A)) )
              & relstr_element_smaller(A,B,C) )
        <=> ex_inf_of_relstr_set(A,B) )
     <= rel_str(A) ) ).

fof(t28_wellord2,lemma,
    ! [A] :
      ( ~ ( ! [B] :
              ( ( function(B)
                & relation(B) )
             => ~ ( relation_dom(B) = A
                  & ! [C] :
                      ( in(C,A)
                     => in(apply(B,C),C) ) ) )
          & ! [B] :
              ~ ( in(B,A)
                & B = empty_set ) )
     <= ~ empty(A) ) ).

fof(t19_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(A,C) )
     => subset(A,set_intersection2(B,C)) ) ).

fof(t28_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => A = set_intersection2(A,B) ) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,B) = set_union2(A,set_difference(B,A)) ).

fof(t13_compts_1,lemma,
    ! [A] :
      ( ( compact_top_space(A)
      <=> ! [B] :
            ( element(B,powerset(powerset(the_carrier(A))))
           => ~ ( centered(B)
                & empty_set = meet_of_subsets(the_carrier(A),B)
                & closed_subsets(B,A) ) ) )
     <= ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) ) ) ).

fof(d7_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation_isomorphism(A,B,C)
              <=> ( relation_field(A) = relation_dom(C)
                  & one_to_one(C)
                  & ! [D,E] :
                      ( ( in(D,relation_field(A))
                        & in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B) )
                    <=> in(ordered_pair(D,E),A) )
                  & relation_rng(C) = relation_field(B) ) )
             <= ( relation(C)
                & function(C) ) ) ) ) ).

fof(cc13_waybel_0,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & with_infima_relstr(A)
          & antisymmetric_relstr(A) )
       <= ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & join_complete_relstr(A) ) )
     <= rel_str(A) ) ).

fof(t68_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation_dom_restriction(C,A) = B
          <=> ( ! [D] :
                  ( in(D,relation_dom(B))
                 => apply(B,D) = apply(C,D) )
              & relation_dom(B) = set_intersection2(relation_dom(C),A) ) )
         <= ( function(C)
            & relation(C) ) ) ) ).

fof(dt_k1_yellow_0,axiom,
    ! [A,B] :
      ( rel_str(A)
     => element(join_on_relstr(A,B),the_carrier(A)) ) ).

fof(d6_ordinal1,axiom,
    ! [A] :
      ( A = union(A)
    <=> being_limit_ordinal(A) ) ).

fof(d3_ordinal1,axiom,
    ! [A] :
      ( ! [B,C] :
          ~ ( ~ in(B,C)
            & B != C
            & ~ in(C,B)
            & in(C,A)
            & in(B,A) )
    <=> epsilon_connected(A) ) ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(union_of_subsets(A,B),powerset(A))
     <= element(B,powerset(powerset(A))) ) ).

fof(fc1_yellow_1,axiom,
    ! [A] :
      ( ( strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & ~ empty_carrier(poset_of_lattice(A)) )
     <= ( lattice(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t26_wellord2,lemma,
    ! [A] :
    ? [B] :
      ( well_orders(B,A)
      & relation(B) ) ).

fof(fc9_finset_1,axiom,
    ! [A,B] :
      ( finite(set_union2(A,B))
     <= ( finite(A)
        & finite(B) ) ) ).

fof(cc6_waybel_3,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( v2_waybel_3(A)
          & connected_relstr(A)
          & antisymmetric_relstr(A)
          & transitive_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & complete_relstr(A)
          & connected_relstr(A) ) ) ) ).

fof(d4_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( well_ordering(A)
      <=> ( connected(A)
          & well_founded_relation(A)
          & antisymmetric(A)
          & transitive(A)
          & reflexive(A) ) ) ) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(fc4_yellow_1,axiom,
    ! [A] :
      ( ( strict_rel_str(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & bounded_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A))
        & complete_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & upper_bounded_relstr(poset_of_lattice(A))
        & lower_bounded_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & ~ empty_carrier(poset_of_lattice(A)) )
     <= ( complete_latt_str(A)
        & latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(redefinition_k5_pre_topc,axiom,
    ! [A,B,C,D] :
      ( function_invverse_img_as_carrier_subset(A,B,C,D) = relation_inverse_image(C,D)
     <= ( one_sorted_str(B)
        & quasi_total(C,the_carrier(A),the_carrier(B))
        & relation_of2(C,the_carrier(A),the_carrier(B))
        & function(C)
        & one_sorted_str(A) ) ) ).

fof(dt_k1_lattice3,axiom,
    ! [A] :
      ( strict_latt_str(boole_lattice(A))
      & latt_str(boole_lattice(A)) ) ).

fof(t20_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),relation_field(B))
        & subset(relation_field(relation_restriction(B,A)),A) ) ) ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation(relation_inverse(A)) ) ).

fof(cc1_knaster,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & join_commutative(A)
          & join_associative(A)
          & meet_associative(A)
          & join_absorbing(A)
          & bounded_lattstr(A)
          & upper_bounded_semilattstr(A)
          & lower_bounded_semilattstr(A)
          & lattice(A)
          & meet_absorbing(A)
          & meet_commutative(A) )
       <= ( ~ empty_carrier(A)
          & lattice(A)
          & complete_latt_str(A) ) )
     <= latt_str(A) ) ).

fof(rc4_waybel_1,axiom,
    ? [A] :
      ( transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complemented_relstr(A)
      & boolean_relstr(A)
      & heyting_relstr(A)
      & distributive_relstr(A)
      & bounded_relstr(A)
      & upper_bounded_relstr(A)
      & lower_bounded_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(t144_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_image(B,A),relation_rng(B))
     <= relation(B) ) ).

fof(t8_waybel_0,lemma,
    ! [A] :
      ( ! [B] :
          ( ( net_str(B,A)
            & ~ empty_carrier(B) )
         => ! [C,D] :
              ( ( ( is_often_in(A,B,C)
                 => is_often_in(A,B,D) )
                & ( is_eventually_in(A,B,D)
                 <= is_eventually_in(A,B,C) ) )
             <= subset(C,D) ) )
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(rc1_tops_1,axiom,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A) ) ) ).

fof(l4_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( empty_set = A
        | A = singleton(B) ) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( element(B,A)
         => v1_xcmplx_0(B) ) ) ).

fof(t70_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( apply(C,B) = apply(relation_dom_restriction(C,A),B)
       <= in(B,relation_dom(relation_dom_restriction(C,A))) ) ) ).

fof(dt_k7_grcat_1,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( function(identity_on_carrier(A))
        & quasi_total(identity_on_carrier(A),the_carrier(A),the_carrier(A))
        & relation_of2_as_subset(identity_on_carrier(A),the_carrier(A),the_carrier(A)) ) ) ).

fof(redefinition_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => union(B) = union_of_subsets(A,B) ) ).

fof(fc4_lattice2,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A)
        & meet_commutative(A) )
     => ( relation(the_L_meet(A))
        & v1_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A)) ) ) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(t71_relat_1,lemma,
    ! [A] :
      ( A = relation_dom(identity_relation(A))
      & A = relation_rng(identity_relation(A)) ) ).

fof(t20_yellow_6,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( net_str(B,A)
         => ! [C] :
              ( ! [D] :
                  ( ! [E] :
                      ( ! [F] :
                          ( ! [G] :
                              ( ( related(B,D,E)
                               <= ( D = F
                                  & E = G
                                  & related(C,F,G) ) )
                             <= element(G,the_carrier(C)) )
                         <= element(F,the_carrier(C)) )
                     <= element(E,the_carrier(B)) )
                 <= element(D,the_carrier(B)) )
             <= subnetstr(C,A,B) ) ) ) ).

fof(fraenkel_a_2_2_lattice3,axiom,
    ! [A,B,C] :
      ( ( latt_str(B)
        & ~ empty_carrier(B) )
     => ( ? [D] :
            ( latt_set_smaller(B,D,C)
            & A = D
            & element(D,the_carrier(B)) )
      <=> in(A,a_2_2_lattice3(B,C)) ) ) ).

fof(cc1_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     => ( diff_closed(A)
        & cup_closed(A) ) ) ).

fof(t37_relat_1,lemma,
    ! [A] :
      ( ( relation_rng(relation_inverse(A)) = relation_dom(A)
        & relation_rng(A) = relation_dom(relation_inverse(A)) )
     <= relation(A) ) ).

fof(cc3_yellow_3,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & ~ v1_yellow_3(A) )
       <= ( reflexive_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(t11_waybel_7,lemma,
    ! [A,B] :
      ( ( upper_relstr_subset(B,boole_POSet(A))
      <=> ! [C,D] :
            ( ( in(C,B)
              & subset(D,A)
              & subset(C,D) )
           => in(D,B) ) )
     <= element(B,powerset(the_carrier(boole_POSet(A)))) ) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & finite(B)
        & function(A) )
     => finite(relation_image(A,B)) ) ).

fof(s1_tarski__e4_7_2__tops_2__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( E = H
                     => D = subset_complement(the_carrier(A),H) ) )
                & in(E,B)
                & in(E,B) ) )
       <= ! [C,D,E] :
            ( ( in(C,B)
              & in(C,B)
              & ! [G] :
                  ( ( C = G
                   => subset_complement(the_carrier(A),G) = E )
                 <= element(G,powerset(the_carrier(A))) )
              & ! [F] :
                  ( ( subset_complement(the_carrier(A),F) = D
                   <= C = F )
                 <= element(F,powerset(the_carrier(A))) ) )
           => D = E ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(rc1_lattice3,axiom,
    ? [A] :
      ( strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & complete_relstr(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(t65_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( empty_set = relation_rng(A)
      <=> relation_dom(A) = empty_set ) ) ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( subset_intersection2(A,B,C) = set_intersection2(B,C)
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( subset(cartesian_product2(C,A),cartesian_product2(C,B))
        & subset(cartesian_product2(A,C),cartesian_product2(B,C)) )
     <= subset(A,B) ) ).

fof(t3_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ? [C] :
              ( in(C,A)
              & in(C,B) )
          & disjoint(A,B) )
      & ~ ( ~ disjoint(A,B)
          & ! [C] :
              ~ ( in(C,B)
                & in(C,A) ) ) ) ).

fof(fc13_yellow_3,axiom,
    ! [A] :
      ( ( ~ v1_yellow_3(A)
        & rel_str(A) )
     => ( ~ empty(the_InternalRel(A))
        & relation(the_InternalRel(A)) ) ) ).

fof(d3_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( is_well_founded_in(A,B)
        <=> ! [C] :
              ~ ( subset(C,B)
                & empty_set != C
                & ! [D] :
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) ) ) )
     <= relation(A) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( ( ordinal(A)
        & epsilon_connected(A)
        & epsilon_transitive(A) )
     <= empty(A) ) ).

fof(rc7_pre_topc,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A)
        & ~ empty_carrier(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A)
          & ~ empty(B) ) ) ).

fof(t18_finset_1,lemma,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( element(B,powerset(powerset(A)))
         => ~ ( ! [C] :
                  ~ ( ! [D] :
                        ( C = D
                       <= ( subset(C,D)
                          & in(D,B) ) )
                    & in(C,B) )
              & empty_set != B ) ) ) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : A = set_union2(A,A) ).

fof(t55_funct_1,lemma,
    ! [A] :
      ( ( one_to_one(A)
       => ( relation_rng(function_inverse(A)) = relation_dom(A)
          & relation_dom(function_inverse(A)) = relation_rng(A) ) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(t23_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( connected(B)
       => connected(relation_restriction(B,A)) ) ) ).

fof(t17_finset_1,lemma,
    ! [A,B] :
      ( ( finite(A)
       => finite(relation_image(B,A)) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(s1_xboole_0__e2_37_1_1__pre_topc__1,lemma,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & topological_space(A) )
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,powerset(the_carrier(A)))
            & in(set_difference(cast_as_carrier_subset(A),D),B) ) ) ) ).

fof(d2_wellord1,axiom,
    ! [A] :
      ( ( well_founded_relation(A)
      <=> ! [B] :
            ~ ( subset(B,relation_field(A))
              & ! [C] :
                  ~ ( disjoint(fiber(A,C),B)
                    & in(C,B) )
              & B != empty_set ) )
     <= relation(A) ) ).

fof(cc5_funct_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ( ( function(C)
              & quasi_total(C,A,B)
              & v1_partfun1(C,A,B) )
           <= ( function(C)
              & quasi_total(C,A,B) ) )
         <= relation_of2(C,A,B) )
     <= ~ empty(B) ) ).

fof(t31_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( relstr_set_smaller(poset_of_lattice(B),A,C)
          <=> latt_element_smaller(B,cast_to_el_of_lattice(B,C),A) )
         <= element(C,the_carrier(poset_of_lattice(B))) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) ) ) ).

fof(rc12_lattices,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & join_associative(A)
      & meet_associative(A)
      & lattice(A)
      & lower_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & complemented_lattstr(A)
      & upper_bounded_semilattstr(A)
      & join_absorbing(A)
      & meet_absorbing(A)
      & meet_commutative(A)
      & join_commutative(A)
      & strict_latt_str(A)
      & latt_str(A) ) ).

fof(dt_k1_pre_topc,axiom,
    ! [A] :
      ( element(empty_carrier_subset(A),powerset(the_carrier(A)))
     <= one_sorted_str(A) ) ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( connected(A)
      <=> is_connected_in(A,relation_field(A)) ) ) ).

fof(d13_yellow_6,axiom,
    ! [A] :
      ( ! [B] :
          ( net_str(B,A)
         => ! [C,D] :
              ( ( subnetstr(D,A,B)
                & strict_net_str(D,A) )
             => ( preimage_subnetstr(A,B,C) = D
              <=> ( subrelstr(D,B)
                  & the_carrier(D) = function_invverse_img_as_carrier_subset(B,A,the_mapping(A,B),C)
                  & full_subrelstr(D,B) ) ) ) )
     <= one_sorted_str(A) ) ).

fof(t48_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( union_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B))
       <= empty_set != B ) ) ).

fof(s1_tarski__e18_27__finset_1__1,axiom,
    ! [A] :
      ( ( ? [B] :
          ! [C] :
            ( in(C,B)
          <=> ? [D] :
                ( in(D,succ(A))
                & ? [M] :
                    ( ordinal(M)
                    & ( ! [N] :
                          ( ~ ( empty_set != N
                              & ! [O] :
                                  ~ ( in(O,N)
                                    & ! [P] :
                                        ( P = O
                                       <= ( subset(O,P)
                                          & in(P,N) ) ) ) )
                         <= element(N,powerset(powerset(M))) )
                     <= in(M,omega) )
                    & C = M )
                & C = D ) )
       <= ! [B,C,D] :
            ( C = D
           <= ( C = B
              & ? [I] :
                  ( D = I
                  & ( in(I,omega)
                   => ! [J] :
                        ( ~ ( ! [K] :
                                ~ ( in(K,J)
                                  & ! [L] :
                                      ( L = K
                                     <= ( subset(K,L)
                                        & in(L,J) ) ) )
                            & J != empty_set )
                       <= element(J,powerset(powerset(I))) ) )
                  & ordinal(I) )
              & B = D
              & ? [E] :
                  ( ( ! [F] :
                        ( element(F,powerset(powerset(E)))
                       => ~ ( ! [G] :
                                ~ ( ! [H] :
                                      ( ( in(H,F)
                                        & subset(G,H) )
                                     => H = G )
                                  & in(G,F) )
                            & F != empty_set ) )
                   <= in(E,omega) )
                  & C = E
                  & ordinal(E) ) ) ) )
     <= ordinal(A) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ? [B] :
          ( ~ empty(B)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(t18_yellow_1,lemma,
    ! [A] : bottom_of_relstr(boole_POSet(A)) = empty_set ).

fof(s1_xboole_0__e16_22__wellord2__1,lemma,
    ! [A,B] :
    ? [C] :
    ! [D] :
      ( ( ? [E,F] :
            ( in(E,A)
            & singleton(E) = F
            & D = ordered_pair(E,F) )
        & in(D,cartesian_product2(A,B)) )
    <=> in(D,C) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) ).

fof(t29_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( open_subset(subset_complement(the_carrier(A),B),A)
          <=> closed_subset(B,A) ) ) ) ).

fof(fc3_tops_1,axiom,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & closed_subset(B,A)
        & topological_space(A) )
     => open_subset(subset_complement(the_carrier(A),B),A) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( v1_membered(B)
         <= element(B,powerset(A)) ) ) ).

fof(cc5_waybel_3,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( reflexive_relstr(A)
          & transitive_relstr(A)
          & v3_waybel_3(A)
          & lower_bounded_relstr(A)
          & with_suprema_relstr(A)
          & antisymmetric_relstr(A)
          & ~ empty_carrier(A) )
       <= ( transitive_relstr(A)
          & antisymmetric_relstr(A)
          & up_complete_relstr(A)
          & v2_waybel_3(A)
          & lower_bounded_relstr(A)
          & with_suprema_relstr(A)
          & reflexive_relstr(A) ) ) ) ).

fof(t160_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => relation_image(B,relation_rng(A)) = relation_rng(relation_composition(A,B)) )
     <= relation(A) ) ).

fof(d2_lattice3,axiom,
    ! [A] :
      ( poset_of_lattice(A) = rel_str_of(the_carrier(A),k2_lattice3(A))
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(meet_of_subsets(A,B),powerset(A)) ) ).

fof(s1_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ! [B,C,D] :
          ( D = C
         <= ( in(B,A)
            & singleton(B) = D
            & C = singleton(B)
            & in(B,A) ) )
     => ? [B] :
          ( relation(B)
          & ! [C,D] :
              ( in(ordered_pair(C,D),B)
            <=> ( in(C,A)
                & in(C,A)
                & D = singleton(C) ) )
          & function(B) ) ) ).

fof(t19_yellow_6,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( subset(the_carrier(C),the_carrier(B))
             <= subnetstr(C,A,B) )
         <= net_str(B,A) )
     <= one_sorted_str(A) ) ).

fof(t147_funct_1,lemma,
    ! [A,B] :
      ( ( A = relation_image(B,relation_inverse_image(B,A))
       <= subset(A,relation_rng(B)) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(t17_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( subset_complement(the_carrier(A),B) = subset_difference(the_carrier(A),cast_as_carrier_subset(A),B)
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d4_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B,C] :
          ( ( ( apply(A,B) = C
            <=> in(ordered_pair(B,C),A) )
           <= in(B,relation_dom(A)) )
          & ( ( empty_set = C
            <=> apply(A,B) = C )
           <= ~ in(B,relation_dom(A)) ) ) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation_field(A) = set_union2(relation_dom(A),relation_rng(A))
     <= relation(A) ) ).

fof(t7_mcart_1,lemma,
    ! [A,B] :
      ( A = pair_first(ordered_pair(A,B))
      & pair_second(ordered_pair(A,B)) = B ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(t23_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ! [C] :
          ( ( relation(C)
            & function(C) )
         => ( apply(relation_composition(B,C),A) = apply(C,apply(B,A))
           <= in(A,relation_dom(B)) ) ) ) ).

fof(d6_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( closed_subset(B,A)
          <=> open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(fc7_yellow_1,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & strict_rel_str(boole_POSet(A)) ) ).

fof(fc12_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_difference(A,B)) ) ).

fof(t33_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ordinal(B)
         => ( ordinal_subset(succ(A),B)
          <=> in(A,B) ) )
     <= ordinal(A) ) ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_dom_as_subset(A,B,C),powerset(A)) ) ).

fof(t30_lattice3,lemma,
    ! [A,B] :
      ( ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) )
     => ! [C] :
          ( ( relstr_set_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C))
          <=> latt_element_smaller(B,C,A) )
         <= element(C,the_carrier(B)) ) ) ).

fof(t7_wellord2,lemma,
    ! [A] :
      ( well_ordering(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(t118_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B))
     <= relation(B) ) ).

fof(fc2_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(topstr_closure(A,B),A)
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A)
      & empty(A)
      & one_to_one(A)
      & function(A)
      & relation(A) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( relation_empty_yielding(A)
      & function(A)
      & relation(A) ) ).

fof(d13_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( rel_str(B)
         => ( subrelstr(B,A)
          <=> ( subset(the_InternalRel(B),the_InternalRel(A))
              & subset(the_carrier(B),the_carrier(A)) ) ) )
     <= rel_str(A) ) ).

fof(rc13_waybel_0,axiom,
    ? [A] :
      ( transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_infima_relstr(A)
      & lower_bounded_relstr(A)
      & bounded_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & upper_bounded_relstr(A)
      & complete_relstr(A)
      & with_suprema_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            | in(D,B) ) )
    <=> set_union2(A,B) = C ) ).

fof(fc1_knaster,axiom,
    ! [A] :
      ( strict_latt_str(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & lower_bounded_semilattstr(boole_lattice(A))
      & bounded_lattstr(boole_lattice(A))
      & boolean_lattstr(boole_lattice(A))
      & complete_latt_str(boole_lattice(A))
      & complemented_lattstr(boole_lattice(A))
      & upper_bounded_semilattstr(boole_lattice(A))
      & modular_lattstr(boole_lattice(A))
      & distributive_lattstr(boole_lattice(A))
      & lattice(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & ~ empty_carrier(boole_lattice(A)) ) ).

fof(t5_connsp_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( point_neighbourhood(B,A,C)
               <= ( open_subset(B,A)
                  & in(C,B) ) )
             <= element(C,the_carrier(A)) )
         <= element(B,powerset(the_carrier(A))) )
     <= ( ~ empty_carrier(A)
        & top_str(A)
        & topological_space(A) ) ) ).

fof(t16_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( relation_of2_as_subset(D,C,B)
       <= subset(A,B) ) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & ~ empty(A) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( finite(cartesian_product2(A,B))
     <= ( finite(A)
        & finite(B) ) ) ).

fof(l1_zfmisc_1,lemma,
    ! [A] : empty_set != singleton(A) ).

fof(d2_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ! [B] :
            ( element(B,the_carrier(A))
           => ! [C] :
                ( element(C,the_carrier(A))
               => ! [D] :
                    ( ( ( related(A,B,C)
                        & related(A,C,D) )
                     => related(A,B,D) )
                   <= element(D,the_carrier(A)) ) ) )
      <=> transitive_relstr(A) ) ) ).

fof(fc2_yellow_1,axiom,
    ! [A] :
      ( ( upper_bounded_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & ~ empty_carrier(poset_of_lattice(A)) )
     <= ( ~ empty_carrier(A)
        & lattice(A)
        & upper_bounded_semilattstr(A)
        & latt_str(A) ) ) ).

fof(fc4_relat_1,axiom,
    ( relation(empty_set)
    & empty(empty_set) ) ).

fof(dt_k9_filter_1,axiom,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => relation(relation_of_lattice(A)) ) ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & closed_subset(B,A) ) ) ).

fof(rc1_partfun1,axiom,
    ? [A] :
      ( function(A)
      & one_to_one(A)
      & empty(A)
      & relation(A) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( C != A
        & A != D
        & unordered_pair(A,B) = unordered_pair(C,D) ) ).

fof(t1_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) ).

fof(t54_wellord1,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( well_ordering(B)
               <= ( relation_isomorphism(A,B,C)
                  & well_ordering(A) ) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B)
      & epsilon_transitive(B)
      & epsilon_connected(B)
      & finite(B)
      & natural(B)
      & ordinal(B)
      & one_to_one(B)
      & function(B)
      & relation(B) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty_set = A
     <= empty(A) ) ).

fof(l1_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( reflexive(A)
      <=> ! [B] :
            ( in(ordered_pair(B,B),A)
           <= in(B,relation_field(A)) ) ) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( function(A)
    <=> ! [B,C,D] :
          ( ( in(ordered_pair(B,D),A)
            & in(ordered_pair(B,C),A) )
         => C = D ) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(dt_k6_partfun1,axiom,
    ! [A] :
      ( v1_partfun1(identity_as_relation_of(A),A,A)
      & relation_of2_as_subset(identity_as_relation_of(A),A,A) ) ).

fof(fc1_pre_topc,axiom,
    ! [A] :
      ( ( v2_membered(empty_carrier_subset(A))
        & v4_membered(empty_carrier_subset(A))
        & v5_membered(empty_carrier_subset(A))
        & v3_membered(empty_carrier_subset(A))
        & v1_membered(empty_carrier_subset(A))
        & empty(empty_carrier_subset(A)) )
     <= one_sorted_str(A) ) ).

fof(d22_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ! [B] : join_of_latt_set(A,a_2_2_lattice3(A,B)) = meet_of_latt_set(A,B) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A) ) ).

fof(l55_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(B,D)
        & in(A,C) ) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ( ordinal(union(A))
        & epsilon_connected(union(A))
        & epsilon_transitive(union(A)) )
     <= ordinal(A) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( element(meet(A,B,C),the_carrier(A))
     <= ( element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t5_tex_2,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ( proper_element(B,powerset(A))
      <=> B != A ) ) ).

fof(t50_subset_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ! [C] :
              ( ( ~ in(C,B)
               => in(C,subset_complement(A,B)) )
             <= element(C,A) ) )
     <= A != empty_set ) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( ( subset(A,B)
        & B != A )
    <=> proper_subset(A,B) ) ).

fof(cc9_waybel_1,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & transitive_relstr(A)
          & with_suprema_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & bounded_relstr(A)
          & distributive_relstr(A)
          & boolean_relstr(A)
          & complemented_relstr(A)
          & with_infima_relstr(A)
          & antisymmetric_relstr(A)
          & reflexive_relstr(A) )
       <= ( transitive_relstr(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & bounded_relstr(A)
          & complemented_relstr(A)
          & distributive_relstr(A)
          & antisymmetric_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) ) )
     <= rel_str(A) ) ).

fof(cc7_lattices,axiom,
    ! [A] :
      ( ( ( lattice(A)
          & distributive_lattstr(A)
          & ~ empty_carrier(A) )
       => ( meet_commutative(A)
          & meet_absorbing(A)
          & modular_lattstr(A)
          & lattice(A)
          & join_absorbing(A)
          & meet_associative(A)
          & join_associative(A)
          & join_commutative(A)
          & ~ empty_carrier(A) ) )
     <= latt_str(A) ) ).

fof(t1_lattice3,lemma,
    ! [A,B] :
      ( element(B,the_carrier(boole_lattice(A)))
     => ! [C] :
          ( ( meet(boole_lattice(A),B,C) = set_intersection2(B,C)
            & set_union2(B,C) = join(boole_lattice(A),B,C) )
         <= element(C,the_carrier(boole_lattice(A))) ) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( singleton(A) = unordered_pair(B,C)
     => B = A ) ).

fof(d10_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ( ( relstr_element_smaller(A,B,C)
                & ! [D] :
                    ( element(D,the_carrier(A))
                   => ( related(A,D,C)
                     <= relstr_element_smaller(A,B,D) ) ) )
            <=> meet_on_relstr(A,B) = C )
           <= ex_inf_of_relstr_set(A,B) ) ) ) ).

fof(l25_zfmisc_1,lemma,
    ! [A,B] :
      ~ ( in(A,B)
        & disjoint(singleton(A),B) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( function(A)
      & empty(A)
      & relation(A) ) ).

fof(l82_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
      <=> ( in(B,relation_dom(C))
          & in(B,A) ) ) ) ).

fof(t55_tops_1,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ! [D] :
                  ( element(D,powerset(the_carrier(B)))
                 => ( ( C = interior(A,C)
                     => open_subset(C,A) )
                    & ( open_subset(D,B)
                     => D = interior(B,D) ) ) ) )
         <= top_str(B) ) ) ).

fof(t28_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( latt_set_smaller(B,C,A)
          <=> relstr_element_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C)) )
         <= element(C,the_carrier(B)) )
     <= ( ~ empty_carrier(B)
        & latt_str(B)
        & lattice(B) ) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => set_union2(singleton(A),B) = B ) ).

fof(d12_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( is_antisymmetric_in(A,relation_field(A))
      <=> antisymmetric(A) ) ) ).

fof(cc2_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( function(C)
          & bijective(C,A,B)
          & quasi_total(C,A,B) )
       => ( onto(C,A,B)
          & quasi_total(C,A,B)
          & one_to_one(C)
          & function(C) ) )
     <= relation_of2(C,A,B) ) ).

fof(fc2_pre_topc,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) ) ) ).

fof(cc5_yellow_0,axiom,
    ! [A] :
      ( ( bounded_relstr(A)
       <= ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) ) )
     <= rel_str(A) ) ).

fof(t61_yellow_0,lemma,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( subrelstr(B,A)
            & full_subrelstr(B,A) )
         => ! [C] :
              ( ! [D] :
                  ( ! [E] :
                      ( ! [F] :
                          ( element(F,the_carrier(B))
                         => ( ( E = C
                              & D = F
                              & in(F,the_carrier(B))
                              & in(E,the_carrier(B))
                              & related(A,C,D) )
                           => related(B,E,F) ) )
                     <= element(E,the_carrier(B)) )
                 <= element(D,the_carrier(A)) )
             <= element(C,the_carrier(A)) ) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     <= v2_membered(A) ) ).

fof(t44_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( subset(relation_dom(relation_composition(A,B)),relation_dom(A))
         <= relation(B) )
     <= relation(A) ) ).

fof(s3_subset_1__e2_37_1_1__pre_topc,lemma,
    ! [A,B] :
      ( ( topological_space(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & top_str(A) )
     => ? [C] :
          ( ! [D] :
              ( ( in(D,C)
              <=> in(set_difference(cast_as_carrier_subset(A),D),B) )
             <= element(D,powerset(the_carrier(A))) )
          & element(C,powerset(powerset(the_carrier(A)))) ) ) ).

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & epsilon_transitive(A) )
    <=> ordinal(A) ) ).

fof(dt_k1_lattices,axiom,
    ! [A,B,C] :
      ( ( join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) )
     => element(join(A,B,C),the_carrier(A)) ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(s1_xboole_0__e4_7_1__tops_2__1,lemma,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( ( in(E,cartesian_product2(complements_of_subsets(the_carrier(A),B),C))
            & ? [F,G] :
                ( ordered_pair(F,G) = E
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( F = H
                     => subset_complement(the_carrier(A),H) = G ) )
                & in(F,complements_of_subsets(the_carrier(A),B)) ) )
        <=> in(E,D) ) ) ).

fof(t4_wellord2,lemma,
    ! [A] :
      ( connected(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(rc1_waybel_7,axiom,
    ? [A] :
      ( rel_str(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & antisymmetric_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & ~ v1_yellow_3(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & boolean_relstr(A)
      & complemented_relstr(A)
      & heyting_relstr(A)
      & distributive_relstr(A)
      & lower_bounded_relstr(A)
      & transitive_relstr(A)
      & ~ trivial_carrier(A)
      & ~ empty_carrier(A) ) ).

fof(d8_yellow_6,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( net_str(C,A)
             => ( subnetstr(C,A,B)
              <=> ( subrelstr(C,B)
                  & relation_dom_restr_as_relation_of(the_carrier(B),the_carrier(A),the_mapping(A,B),the_carrier(C)) = the_mapping(A,C) ) ) )
         <= net_str(B,A) )
     <= one_sorted_str(A) ) ).

fof(t99_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B))
     <= relation(B) ) ).

fof(t5_wellord1,lemma,
    ! [A] :
      ( ( is_well_founded_in(A,relation_field(A))
      <=> well_founded_relation(A) )
     <= relation(A) ) ).

fof(dt_k1_pcomps_1,axiom,
    ! [A] : element(k1_pcomps_1(A),powerset(powerset(A))) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( subset_complement(A,subset_complement(A,B)) = B
     <= element(B,powerset(A)) ) ).

fof(dt_k10_filter_1,axiom,
    ! [A,B,C,D] :
      ( element(k10_filter_1(A,B,C,D),the_carrier(k8_filter_1(A,B)))
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & ~ empty_carrier(B)
        & element(D,the_carrier(B))
        & element(C,the_carrier(A))
        & latt_str(B)
        & lattice(B)
        & lattice(A) ) ) ).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(t166_relat_1,lemma,
    ! [A,B,C] :
      ( ( ? [D] :
            ( in(D,relation_rng(C))
            & in(D,B)
            & in(ordered_pair(A,D),C) )
      <=> in(A,relation_inverse_image(C,B)) )
     <= relation(C) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(A) ) ).

fof(fc1_ordinal1,axiom,
    ! [A] : ~ empty(succ(A)) ).

fof(t6_yellow_0,lemma,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( relstr_set_smaller(A,empty_set,B)
            & relstr_element_smaller(A,empty_set,B) )
         <= element(B,the_carrier(A)) ) ) ).

fof(t6_yellow_6,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( in(C,topstr_closure(A,B))
              <=> ! [D] :
                    ( ~ disjoint(D,B)
                   <= point_neighbourhood(D,A,C) ) )
             <= element(C,the_carrier(A)) )
         <= element(B,powerset(the_carrier(A))) )
     <= ( top_str(A)
        & topological_space(A)
        & ~ empty_carrier(A) ) ) ).

fof(t20_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_dom(C))
          & in(B,relation_rng(C)) )
       <= in(ordered_pair(A,B),C) ) ) ).

fof(t91_tmap_1,lemma,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( B = apply_as_element(the_carrier(A),the_carrier(A),identity_on_carrier(A),B)
         <= element(B,the_carrier(A)) ) ) ).

fof(dt_k2_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) )
     => ( relation_of2_as_subset(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & v1_partfun1(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & transitive(k2_lattice3(A))
        & antisymmetric(k2_lattice3(A))
        & reflexive(k2_lattice3(A)) ) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( finite(singleton(A))
      & ~ empty(singleton(A)) ) ).

fof(fc3_yellow_1,axiom,
    ! [A] :
      ( ( ~ empty_carrier(poset_of_lattice(A))
        & lower_bounded_relstr(poset_of_lattice(A))
        & with_infima_relstr(poset_of_lattice(A))
        & with_suprema_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A)) )
     <= ( latt_str(A)
        & lower_bounded_semilattstr(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(A,B)
           => ( subset(relation_rng(A),relation_rng(B))
              & subset(relation_dom(A),relation_dom(B)) ) ) ) ) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( A = set_difference(A,B)
    <=> disjoint(A,B) ) ).

fof(t15_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( B = subset_intersection2(the_carrier(A),B,cast_as_carrier_subset(A))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(B,A) = set_union2(A,B) ).

fof(cc9_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & with_suprema_relstr(A)
          & upper_bounded_relstr(A)
          & reflexive_relstr(A) )
       <= ( with_suprema_relstr(A)
          & up_complete_relstr(A)
          & reflexive_relstr(A) ) ) ) ).

fof(t23_lattices,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => below(A,meet_commut(A,B,C),B) ) )
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & meet_absorbing(A)
        & meet_commutative(A) ) ) ).

fof(t26_orders_2,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( ( related(A,B,C)
                      & related(A,C,D) )
                   => related(A,B,D) ) )
             <= element(C,the_carrier(A)) ) )
     <= ( rel_str(A)
        & transitive_relstr(A) ) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( relation(relation_composition(A,B))
        & empty(relation_composition(A,B)) )
     <= ( empty(A)
        & relation(B) ) ) ).

fof(t7_lattice3,lemma,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => ( related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C))
              <=> below_refl(A,B,C) ) )
         <= element(B,the_carrier(A)) ) ) ).

fof(t16_wellord1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) )
     <= relation(C) ) ).

fof(dt_l1_waybel_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( rel_str(B)
         <= net_str(B,A) ) ) ).

fof(t2_wellord2,lemma,
    ! [A] : reflexive(inclusion_relation(A)) ).

fof(t57_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( ( in(A,relation_rng(B))
          & one_to_one(B) )
       => ( apply(B,apply(function_inverse(B),A)) = A
          & A = apply(relation_composition(function_inverse(B),B),A) ) ) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_dom(C) = relation_dom_as_subset(A,B,C) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(l50_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(t39_wellord1,lemma,
    ! [A,B] :
      ( ( ( well_ordering(B)
          & subset(A,relation_field(B)) )
       => relation_field(relation_restriction(B,A)) = A )
     <= relation(B) ) ).

fof(cc1_yellow_3,axiom,
    ! [A] :
      ( rel_str(A)
     => ( v1_yellow_3(A)
       <= empty_carrier(A) ) ) ).

fof(cc10_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( join_complete_relstr(A)
          & up_complete_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & complete_relstr(A) ) ) ) ).

fof(t24_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ~ ( B != A
              & ~ in(B,A)
              & ~ in(A,B) )
         <= ordinal(B) ) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( set_intersection2(A,B) = empty_set
    <=> disjoint(A,B) ) ).

fof(d6_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ( antisymmetric_relstr(A)
      <=> is_antisymmetric_in(the_InternalRel(A),the_carrier(A)) ) ) ).

fof(cc2_waybel_3,axiom,
    ! [A] :
      ( ( ( reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & with_suprema_relstr(A)
          & upper_bounded_relstr(A)
          & up_complete_relstr(A)
          & join_complete_relstr(A)
          & connected_relstr(A)
          & bounded_relstr(A)
          & lower_bounded_relstr(A)
          & complete_relstr(A)
          & with_infima_relstr(A)
          & transitive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( antisymmetric_relstr(A)
          & connected_relstr(A)
          & up_complete_relstr(A)
          & lower_bounded_relstr(A)
          & transitive_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) ) )
     <= rel_str(A) ) ).

fof(s2_finset_1__e11_2_1__waybel_0,lemma,
    ! [A,B,C] :
      ( ( ? [I] :
            ( element(I,the_carrier(A))
            & in(I,B)
            & relstr_set_smaller(A,C,I) )
       <= ( finite(C)
          & ? [D] :
              ( element(D,the_carrier(A))
              & in(D,B)
              & relstr_set_smaller(A,empty_set,D) )
          & ! [E,F] :
              ( ? [H] :
                  ( relstr_set_smaller(A,set_union2(F,singleton(E)),H)
                  & in(H,B)
                  & element(H,the_carrier(A)) )
             <= ( in(E,C)
                & subset(F,C)
                & ? [G] :
                    ( in(G,B)
                    & relstr_set_smaller(A,F,G)
                    & element(G,the_carrier(A)) ) ) ) ) )
     <= ( ~ empty_carrier(A)
        & transitive_relstr(A)
        & rel_str(A)
        & finite(C)
        & element(C,powerset(B))
        & element(B,powerset(the_carrier(A))) ) ) ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(t31_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_founded_relation(relation_restriction(B,A))
       <= well_founded_relation(B) ) ) ).

fof(d1_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( ! [C] :
                ( element(C,the_carrier(A))
               => ! [D] :
                    ( ~ ( in(C,B)
                        & in(D,B)
                        & ! [E] :
                            ( ~ ( in(E,B)
                                & related(A,C,E)
                                & related(A,D,E) )
                           <= element(E,the_carrier(A)) ) )
                   <= element(D,the_carrier(A)) ) )
          <=> directed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t38_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( in(A,C)
        & in(B,C) )
    <=> subset(unordered_pair(A,B),C) ) ).

fof(idempotence_k4_subset_1,axiom,
    ! [A,B,C] :
      ( B = subset_union2(A,B,B)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(d11_waybel_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( is_eventually_in(A,B,C)
            <=> ? [D] :
                  ( element(D,the_carrier(B))
                  & ! [E] :
                      ( element(E,the_carrier(B))
                     => ( related(B,D,E)
                       => in(apply_netmap(A,B,E),C) ) ) ) )
         <= ( net_str(B,A)
            & ~ empty_carrier(B) ) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(d3_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A) )
     => ! [B] :
          ( ! [C] :
              ( ( join(A,B,C) = C
              <=> below(A,B,C) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & ordinal(succ(A)) ) ) ).

fof(t53_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation_isomorphism(A,B,C)
               => ( ( transitive(A)
                   => transitive(B) )
                  & ( well_founded_relation(B)
                   <= well_founded_relation(A) )
                  & ( antisymmetric(B)
                   <= antisymmetric(A) )
                  & ( connected(A)
                   => connected(B) )
                  & ( reflexive(B)
                   <= reflexive(A) ) ) )
             <= ( function(C)
                & relation(C) ) ) ) ) ).

fof(t26_finset_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( finite(relation_rng(A))
       <= finite(relation_dom(A)) ) ) ).

fof(t49_wellord1,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation_isomorphism(B,A,function_inverse(C))
               <= relation_isomorphism(A,B,C) )
             <= ( relation(C)
                & function(C) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(dt_k1_toler_1,axiom,
    ! [A,B] :
      ( relation_of2_as_subset(relation_restriction_as_relation_of(A,B),B,B)
     <= relation(A) ) ).

fof(d20_waybel_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ( upper_relstr_subset(B,A)
          <=> ! [C] :
                ( element(C,the_carrier(A))
               => ! [D] :
                    ( ( ( in(C,B)
                        & related(A,C,D) )
                     => in(D,B) )
                   <= element(D,the_carrier(A)) ) ) )
         <= element(B,powerset(the_carrier(A))) )
     <= rel_str(A) ) ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D] :
              ~ ( in(C,B)
                & D != C
                & ~ in(ordered_pair(C,D),A)
                & ~ in(ordered_pair(D,C),A)
                & in(D,B) )
        <=> is_connected_in(A,B) )
     <= relation(A) ) ).

fof(rc11_lattices,axiom,
    ? [A] :
      ( strict_latt_str(A)
      & join_commutative(A)
      & meet_associative(A)
      & lower_bounded_semilattstr(A)
      & upper_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & lattice(A)
      & join_absorbing(A)
      & meet_absorbing(A)
      & meet_commutative(A)
      & join_associative(A)
      & ~ empty_carrier(A)
      & latt_str(A) ) ).

fof(d16_lattice3,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( in(D,C)
                   => below(A,B,D) ) )
            <=> latt_set_smaller(A,B,C) ) )
     <= ( latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(rc1_yellow_0,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & trivial_carrier(A)
      & complete_relstr(A)
      & with_infima_relstr(A)
      & with_suprema_relstr(A)
      & strict_rel_str(A) ) ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( ( meet_semilatt_str(A)
        & join_semilatt_str(A) )
     <= latt_str(A) ) ).

fof(rc2_orders_2,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & antisymmetric_relstr(A)
      & transitive_relstr(A)
      & rel_str(A) ) ).

fof(t11_tops_2,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( meet_of_subsets(A,complements_of_subsets(A,B)) = subset_complement(A,union_of_subsets(A,B))
       <= empty_set != B ) ) ).

fof(s1_tarski__e4_7_1__tops_2__2,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ! [C] :
          ( ? [D] :
            ! [E] :
              ( ? [F] :
                  ( in(F,cartesian_product2(complements_of_subsets(the_carrier(A),B),C))
                  & F = E
                  & ? [M,N] :
                      ( E = ordered_pair(M,N)
                      & ! [O] :
                          ( element(O,powerset(the_carrier(A)))
                         => ( subset_complement(the_carrier(A),O) = N
                           <= M = O ) )
                      & in(M,complements_of_subsets(the_carrier(A),B)) ) )
            <=> in(E,D) )
         <= ! [D,E,F] :
              ( F = E
             <= ( ? [G,H] :
                    ( in(G,complements_of_subsets(the_carrier(A),B))
                    & ! [I] :
                        ( element(I,powerset(the_carrier(A)))
                       => ( subset_complement(the_carrier(A),I) = H
                         <= I = G ) )
                    & E = ordered_pair(G,H) )
                & F = D
                & ? [J,K] :
                    ( F = ordered_pair(J,K)
                    & ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( subset_complement(the_carrier(A),L) = K
                         <= L = J ) )
                    & in(J,complements_of_subsets(the_carrier(A),B)) )
                & E = D ) ) ) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ~ empty(relation_rng(A))
     <= ( ~ empty(A)
        & relation(A) ) ) ).

fof(s1_xboole_0__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( ( ? [F,G] :
                ( ? [H] :
                    ( in(G,H)
                    & ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(G,I),B) )
                    & F = H )
                & in(F,A)
                & ordered_pair(F,G) = E )
            & in(E,cartesian_product2(A,C)) )
        <=> in(E,D) ) ) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & finite(B)
          & element(B,powerset(A)) )
     <= ~ empty(A) ) ).

fof(t16_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( open_subsets(complements_of_subsets(the_carrier(A),B),A)
          <=> closed_subsets(B,A) ) )
     <= top_str(A) ) ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(rc1_waybel_6,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & antisymmetric_relstr(A)
      & upper_bounded_relstr(A)
      & join_complete_relstr(A)
      & with_suprema_relstr(A)
      & complete_relstr(A)
      & distributive_relstr(A)
      & v2_waybel_3(A)
      & v3_waybel_3(A)
      & with_infima_relstr(A)
      & up_complete_relstr(A)
      & bounded_relstr(A)
      & lower_bounded_relstr(A)
      & transitive_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A) ) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(set_intersection2(A,B)) ) ).

fof(rc2_yellow_0,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & with_suprema_relstr(A)
      & complete_relstr(A)
      & upper_bounded_relstr(A)
      & bounded_relstr(A)
      & lower_bounded_relstr(A)
      & with_infima_relstr(A)
      & antisymmetric_relstr(A)
      & transitive_relstr(A) ) ).

fof(d4_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( lower_bounded_relstr(A)
      <=> ? [B] :
            ( relstr_element_smaller(A,the_carrier(A),B)
            & element(B,the_carrier(A)) ) ) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( C = unordered_pair(A,B)
    <=> ! [D] :
          ( ( D = B
            | D = A )
        <=> in(D,C) ) ) ).

fof(t14_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( relation_of2_as_subset(D,C,B)
       <= subset(relation_rng(D),B) ) ) ).

fof(symmetry_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(B,A)
     <= equipotent(A,B) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => v3_membered(A) ) ).

fof(t23_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) ).

fof(abstractness_v1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ( strict_rel_str(A)
       => rel_str_of(the_carrier(A),the_InternalRel(A)) = A ) ) ).

fof(fc4_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(subset_complement(the_carrier(A),B),A)
     <= ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A)))
        & open_subset(B,A) ) ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(B,A)
     <= disjoint(A,B) ) ).

fof(t64_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( ( empty_set = relation_rng(A)
          | relation_dom(A) = empty_set )
       => empty_set = A ) ) ).

fof(t88_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_dom_restriction(B,A),B)
     <= relation(B) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( disjoint(A,C)
     <= ( disjoint(B,C)
        & subset(A,B) ) ) ).

fof(d1_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( relation(B)
          & in(relation_dom(B),omega)
          & relation_rng(B) = A
          & function(B) )
    <=> finite(A) ) ).

fof(s2_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ( ! [B] :
            ~ ( in(B,A)
              & ! [C] : C != singleton(B) )
        & ! [B,C,D] :
            ( D = C
           <= ( in(B,A)
              & singleton(B) = C
              & singleton(B) = D ) ) )
     => ? [B] :
          ( function(B)
          & ! [C] :
              ( apply(B,C) = singleton(C)
             <= in(C,A) )
          & A = relation_dom(B)
          & relation(B) ) ) ).

fof(d17_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ! [C] :
              ( latt_element_smaller(A,B,C)
            <=> ! [D] :
                  ( ( in(D,C)
                   => below(A,D,B) )
                 <= element(D,the_carrier(A)) ) )
         <= element(B,the_carrier(A)) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(t30_yellow_0,lemma,
    ! [A] :
      ( ( rel_str(A)
        & antisymmetric_relstr(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( ( ! [D] :
                      ( element(D,the_carrier(A))
                     => ( related(A,B,D)
                       <= relstr_set_smaller(A,C,D) ) )
                  & relstr_set_smaller(A,C,B) )
               <= ( join_on_relstr(A,C) = B
                  & ex_sup_of_relstr_set(A,C) ) )
              & ( ( ! [D] :
                      ( element(D,the_carrier(A))
                     => ( related(A,B,D)
                       <= relstr_set_smaller(A,C,D) ) )
                  & relstr_set_smaller(A,C,B) )
               => ( join_on_relstr(A,C) = B
                  & ex_sup_of_relstr_set(A,C) ) ) ) ) ) ).

fof(t52_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( ( closed_subset(B,A)
             => B = topstr_closure(A,B) )
            & ( closed_subset(B,A)
             <= ( topological_space(A)
                & topstr_closure(A,B) = B ) ) ) )
     <= top_str(A) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_rng_restriction(A,B))
     <= relation(B) ) ).

fof(abstractness_v6_waybel_0,axiom,
    ! [A,B] :
      ( ( strict_net_str(B,A)
       => net_str_of(A,the_carrier(B),the_InternalRel(B),the_mapping(A,B)) = B )
     <= ( one_sorted_str(A)
        & net_str(B,A) ) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(s1_xboole_0__e11_2_1__waybel_0__1,lemma,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & transitive_relstr(A)
        & rel_str(A)
        & element(B,powerset(the_carrier(A)))
        & element(C,powerset(B))
        & finite(C) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( ? [F] :
                ( ? [G] :
                    ( element(G,the_carrier(A))
                    & in(G,B)
                    & relstr_set_smaller(A,F,G) )
                & E = F )
            & in(E,powerset(C)) ) ) ) ).

fof(existence_l1_orders_2,axiom,
    ? [A] : rel_str(A) ).

fof(t37_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
    <=> subset(singleton(A),B) ) ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( in(A,B)
      & ! [C] :
          ~ ( ~ in(C,B)
            & ~ are_equipotent(C,B)
            & subset(C,B) )
      & ! [C] :
          ~ ( ! [D] :
                ~ ( ! [E] :
                      ( in(E,D)
                     <= subset(E,C) )
                  & in(D,B) )
            & in(C,B) )
      & ! [C,D] :
          ( ( subset(D,C)
            & in(C,B) )
         => in(D,B) ) ) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( empty(A)
        & relation(B) )
     => ( relation(relation_composition(B,A))
        & empty(relation_composition(B,A)) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : unordered_pair(unordered_pair(A,B),singleton(A)) = ordered_pair(A,B) ).

fof(d6_wellord1,axiom,
    ! [A] :
      ( ! [B] : set_intersection2(A,cartesian_product2(B,B)) = relation_restriction(A,B)
     <= relation(A) ) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( function(C)
      & relation(C)
      & relation_of2(C,A,B) ) ).

fof(cc2_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( ( join_commutative(A)
          & join_associative(A)
          & meet_associative(A)
          & meet_absorbing(A)
          & join_absorbing(A)
          & meet_commutative(A)
          & ~ empty_carrier(A) )
       => ( ~ empty_carrier(A)
          & lattice(A) ) ) ) ).

fof(dt_k3_yellow_1,axiom,
    ! [A] :
      ( rel_str(boole_POSet(A))
      & strict_rel_str(boole_POSet(A)) ) ).

fof(d21_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ( ! [B,C] :
            ( ( ( ! [D] :
                    ( ( latt_element_smaller(A,D,B)
                     => below(A,C,D) )
                   <= element(D,the_carrier(A)) )
                & latt_element_smaller(A,C,B) )
            <=> C = join_of_latt_set(A,B) )
           <= element(C,the_carrier(A)) )
       <= ( ~ empty_carrier(A)
          & lattice(A)
          & complete_latt_str(A)
          & latt_str(A) ) ) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( relation(C)
     <= element(C,powerset(cartesian_product2(A,B))) ) ).

fof(rc13_lattices,axiom,
    ? [A] :
      ( latt_str(A)
      & strict_latt_str(A)
      & join_commutative(A)
      & join_associative(A)
      & meet_commutative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & lower_bounded_semilattstr(A)
      & bounded_lattstr(A)
      & boolean_lattstr(A)
      & complemented_lattstr(A)
      & upper_bounded_semilattstr(A)
      & distributive_lattstr(A)
      & ~ empty_carrier(A) ) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(A,B))
     <= ~ empty(A) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & one_sorted_str(A) ) ).

fof(fc1_lattice3,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_lattice(A))
      & strict_latt_str(boole_lattice(A)) ) ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( B = powerset(A)
    <=> ! [C] :
          ( subset(C,A)
        <=> in(C,B) ) ) ).

fof(t1_yellow_1,lemma,
    ! [A] :
      ( the_carrier(incl_POSet(A)) = A
      & inclusion_order(A) = the_InternalRel(incl_POSet(A)) ) ).

fof(t74_relat_1,lemma,
    ! [A,B,C,D] :
      ( ( ( in(ordered_pair(A,B),D)
          & in(A,C) )
      <=> in(ordered_pair(A,B),relation_composition(identity_relation(C),D)) )
     <= relation(D) ) ).

fof(fc6_tops_1,axiom,
    ! [A,B] :
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => open_subset(interior(A,B),A) ) ).

fof(t140_relat_1,lemma,
    ! [A,B,C] :
      ( relation_dom_restriction(relation_rng_restriction(A,C),B) = relation_rng_restriction(A,relation_dom_restriction(C,B))
     <= relation(C) ) ).

fof(d4_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C,D] :
              ( ( in(ordered_pair(C,D),A)
                & in(ordered_pair(D,C),A)
                & in(D,B)
                & in(C,B) )
             => D = C )
        <=> is_antisymmetric_in(A,B) ) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : set_union2(A,singleton(A)) = succ(A) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( ! [B] : ~ in(B,A)
    <=> A = empty_set ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_difference(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( ( relation(relation_inverse(A))
        & empty(relation_inverse(A)) )
     <= empty(A) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( ( v3_membered(B)
            & v4_membered(B)
            & v2_membered(B)
            & v1_membered(B) )
         <= element(B,powerset(A)) ) ) ).

fof(d9_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( is_reflexive_in(A,relation_field(A))
      <=> reflexive(A) ) ) ).

fof(t21_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ordinal(B)
         => ( proper_subset(A,B)
           => in(A,B) ) )
     <= epsilon_transitive(A) ) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) ).

fof(cc2_yellow_3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
       <= ~ v1_yellow_3(A) )
     <= rel_str(A) ) ).

fof(t34_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( ( relation_dom(B) = A
          & ! [C] :
              ( in(C,A)
             => apply(B,C) = C ) )
      <=> identity_relation(A) = B ) ) ).

fof(cc1_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
       <= with_suprema_relstr(A) )
     <= rel_str(A) ) ).

fof(dt_k4_lattice3,axiom,
    ! [A,B] :
      ( ( element(B,the_carrier(A))
        & latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => element(cast_to_el_of_LattPOSet(A,B),the_carrier(poset_of_lattice(A))) ) ).

fof(cc6_funct_2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ( ( function(C)
              & ~ empty(C)
              & quasi_total(C,A,B)
              & v1_partfun1(C,A,B) )
           <= ( function(C)
              & quasi_total(C,A,B) ) )
         <= relation_of2(C,A,B) )
     <= ( ~ empty(B)
        & ~ empty(A) ) ) ).

fof(t6_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( in(C,A)
       => ( in(apply(D,C),relation_rng(D))
          | B = empty_set ) )
     <= ( function(D)
        & relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B) ) ) ).

fof(cc4_yellow_0,axiom,
    ! [A] :
      ( ( ( upper_bounded_relstr(A)
          & lower_bounded_relstr(A) )
       <= bounded_relstr(A) )
     <= rel_str(A) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & ordinal(A)
      & epsilon_connected(A)
      & ~ empty(A) ) ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( function(function_inverse(A))
        & relation(function_inverse(A)) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(t21_wellord1,lemma,
    ! [A,B,C] :
      ( subset(fiber(relation_restriction(C,A),B),fiber(C,B))
     <= relation(C) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation_dom(A) = B
        <=> ! [C] :
              ( ? [D] : in(ordered_pair(C,D),A)
            <=> in(C,B) ) ) ) ).

fof(l71_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         => in(C,B) )
     => element(A,powerset(B)) ) ).

fof(redefinition_k8_relset_1,axiom,
    ! [A,B,C,D] :
      ( relation_dom_restr_as_relation_of(A,B,C,D) = relation_dom_restriction(C,D)
     <= relation_of2(C,A,B) ) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(set_union2(A,B)) ) ).

fof(d16_lattices,axiom,
    ! [A] :
      ( ( meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ( ! [B] :
            ( element(B,the_carrier(A))
           => ( bottom_of_semilattstr(A) = B
            <=> ! [C] :
                  ( element(C,the_carrier(A))
                 => ( B = meet(A,B,C)
                    & meet(A,C,B) = B ) ) ) )
       <= lower_bounded_semilattstr(A) ) ) ).

fof(t94_relat_1,lemma,
    ! [A,B] :
      ( relation_dom_restriction(B,A) = relation_composition(identity_relation(A),B)
     <= relation(B) ) ).

fof(t145_funct_1,lemma,
    ! [A,B] :
      ( subset(relation_image(B,relation_inverse_image(B,A)),A)
     <= ( relation(B)
        & function(B) ) ) ).

fof(redefinition_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_union2(A,B,C) = set_union2(B,C) ) ).

fof(t22_relset_1,lemma,
    ! [A,B,C] :
      ( ( ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(D,E),C) )
      <=> B = relation_dom_as_subset(B,A,C) )
     <= relation_of2_as_subset(C,B,A) ) ).

fof(rc6_lattices,axiom,
    ? [A] :
      ( strict_latt_str(A)
      & ~ empty_carrier(A)
      & latt_str(A) ) ).

fof(reflexivity_r3_orders_2,axiom,
    ! [A,B,C] :
      ( ( element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & rel_str(A)
        & reflexive_relstr(A)
        & ~ empty_carrier(A) )
     => related_reflexive(A,B,B) ) ).

fof(d12_waybel_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( ? [E] :
                      ( related(B,D,E)
                      & in(apply_netmap(A,B,E),C)
                      & element(E,the_carrier(B)) )
                 <= element(D,the_carrier(B)) )
            <=> is_often_in(A,B,C) )
         <= ( ~ empty_carrier(B)
            & net_str(B,A) ) )
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( function(identity_relation(A))
      & relation(identity_relation(A)) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( function(A)
     <= empty(A) ) ).

fof(l2_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( ! [B,C,D] :
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,D),A) )
           => in(ordered_pair(B,D),A) )
      <=> transitive(A) ) ) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= join_semilatt_str(A) ) ).

fof(s1_xboole_0__e1_40__pre_topc__1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( ( ? [E] :
                ( element(E,powerset(the_carrier(A)))
                & closed_subset(E,A)
                & subset(B,D)
                & E = D )
            & in(D,powerset(the_carrier(A))) )
        <=> in(D,C) )
     <= ( element(B,powerset(the_carrier(A)))
        & top_str(A)
        & topological_space(A) ) ) ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( C = relation_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(E,B)
                  & D = apply(A,E)
                  & in(E,relation_dom(A)) ) ) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(fc4_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( transitive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & ~ empty_carrier(poset_of_lattice(A)) ) ) ).

fof(d2_mcart_1,axiom,
    ! [A] :
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] :
          ( B = pair_second(A)
        <=> ! [C,D] :
              ( A = ordered_pair(C,D)
             => B = D ) ) ) ).

fof(d18_yellow_6,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( ! [D] :
                    ( ( in(D,C)
                    <=> ! [E] :
                          ( is_eventually_in(A,B,E)
                         <= point_neighbourhood(E,A,D) ) )
                   <= element(D,the_carrier(A)) )
              <=> C = lim_points_of_net(A,B) )
             <= element(C,powerset(the_carrier(A))) )
         <= ( directed_relstr(B)
            & net_str(B,A)
            & transitive_relstr(B)
            & ~ empty_carrier(B) ) )
     <= ( top_str(A)
        & topological_space(A)
        & ~ empty_carrier(A) ) ) ).

fof(t40_xboole_1,lemma,
    ! [A,B] : set_difference(set_union2(A,B),B) = set_difference(A,B) ).

fof(t48_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( subset(B,topstr_closure(A,B))
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(rc6_yellow_6,axiom,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & net_str(B,A) )
     => ? [C] :
          ( full_subnetstr(C,A,B)
          & strict_net_str(C,A)
          & subnetstr(C,A,B) ) ) ).

fof(l4_wellord1,lemma,
    ! [A] :
      ( ( connected(A)
      <=> ! [B,C] :
            ~ ( in(B,relation_field(A))
              & B != C
              & ~ in(ordered_pair(B,C),A)
              & ~ in(ordered_pair(C,B),A)
              & in(C,relation_field(A)) ) )
     <= relation(A) ) ).

fof(redefinition_r3_orders_2,axiom,
    ! [A,B,C] :
      ( ( related_reflexive(A,B,C)
      <=> related(A,B,C) )
     <= ( reflexive_relstr(A)
        & rel_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) ) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(B) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(reflexivity_r3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & meet_absorbing(A)
        & latt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_absorbing(A)
        & meet_commutative(A) )
     => below_refl(A,B,B) ) ).

fof(fc15_yellow_6,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(B)
        & net_str(B,A)
        & one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ( function(the_mapping(A,B))
        & quasi_total(the_mapping(A,B),the_carrier(B),the_carrier(A))
        & relation(the_mapping(A,B))
        & ~ empty(the_mapping(A,B)) ) ) ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(d14_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ( full_subrelstr(B,A)
          <=> the_InternalRel(B) = relation_restriction_as_relation_of(the_InternalRel(A),the_carrier(B)) )
         <= subrelstr(B,A) )
     <= rel_str(A) ) ).

fof(s2_funct_1__e10_24__wellord2,lemma,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ( ? [C] :
            ( relation(C)
            & relation_dom(C) = A
            & ! [D] :
                ( in(D,A)
               => ? [L] :
                    ( ! [M] :
                        ( in(ordered_pair(apply(C,D),M),B)
                       <= in(M,L) )
                    & in(apply(C,D),L)
                    & D = L ) )
            & function(C) )
       <= ( ! [C] :
              ~ ( in(C,A)
                & ! [D] :
                    ~ ? [J] :
                        ( J = C
                        & ! [K] :
                            ( in(ordered_pair(D,K),B)
                           <= in(K,J) )
                        & in(D,J) ) )
          & ! [C,D,E] :
              ( ( in(C,A)
                & ? [H] :
                    ( in(E,H)
                    & ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(E,I),B) )
                    & H = C )
                & ? [F] :
                    ( ! [G] :
                        ( in(G,F)
                       => in(ordered_pair(D,G),B) )
                    & in(D,F)
                    & F = C ) )
             => E = D ) ) ) ) ).

fof(t46_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ? [C] :
              ( meet_of_subsets(the_carrier(A),C) = topstr_closure(A,B)
              & ! [D] :
                  ( ( ( closed_subset(D,A)
                      & subset(B,D) )
                  <=> in(D,C) )
                 <= element(D,powerset(the_carrier(A))) )
              & element(C,powerset(powerset(the_carrier(A)))) ) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(d1_yellow_1,axiom,
    ! [A] : incl_POSet(A) = rel_str_of(A,inclusion_order(A)) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : A = set_intersection2(A,A) ).

fof(t3_xboole_1,lemma,
    ! [A] :
      ( empty_set = A
     <= subset(A,empty_set) ) ).

fof(redefinition_k2_struct_0,axiom,
    ! [A,B,C] :
      ( ( one_sorted_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & ~ empty_carrier(A) )
     => unordered_pair(B,C) = unordered_pair_as_carrier_subset(A,B,C) ) ).

fof(d4_subset_1,axiom,
    ! [A] : A = cast_to_subset(A) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ( meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => meet(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_meet(A),B,C) ) ) ) ).

fof(t46_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( ! [E] :
            ( in(E,relation_inverse_image(D,C))
          <=> ( in(E,A)
              & in(apply(D,E),C) ) )
       <= B != empty_set )
     <= ( function(D)
        & relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B) ) ) ).

fof(fc8_yellow_1,axiom,
    ! [A] :
      ( strict_rel_str(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & ~ empty_carrier(boole_POSet(A)) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( element(A,C)
     <= ( in(A,B)
        & element(B,powerset(C)) ) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(the_carrier(A)) ) ).

fof(s1_tarski__e10_24__wellord2__2,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ! [C] :
          ( ? [D] :
            ! [E] :
              ( in(E,D)
            <=> ? [F] :
                  ( ? [O,P] :
                      ( ? [Q] :
                          ( in(P,Q)
                          & ! [R] :
                              ( in(R,Q)
                             => in(ordered_pair(P,R),B) )
                          & O = Q )
                      & in(O,A)
                      & E = ordered_pair(O,P) )
                  & E = F
                  & in(F,cartesian_product2(A,C)) ) )
         <= ! [D,E,F] :
              ( F = E
             <= ( E = D
                & ? [G,H] :
                    ( ? [I] :
                        ( ! [J] :
                            ( in(ordered_pair(H,J),B)
                           <= in(J,I) )
                        & in(H,I)
                        & G = I )
                    & in(G,A)
                    & ordered_pair(G,H) = E )
                & ? [K,L] :
                    ( ? [M] :
                        ( in(L,M)
                        & ! [N] :
                            ( in(ordered_pair(L,N),B)
                           <= in(N,M) )
                        & M = K )
                    & in(K,A)
                    & ordered_pair(K,L) = F )
                & F = D ) ) ) ) ).

fof(dt_u1_waybel_0,axiom,
    ! [A,B] :
      ( ( net_str(B,A)
        & one_sorted_str(A) )
     => ( quasi_total(the_mapping(A,B),the_carrier(B),the_carrier(A))
        & relation_of2_as_subset(the_mapping(A,B),the_carrier(B),the_carrier(A))
        & function(the_mapping(A,B)) ) ) ).

fof(t30_yellow_6,lemma,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ( ~ empty_carrier(B)
            & transitive_relstr(B)
            & directed_relstr(B)
            & net_str(B,A) )
         => ! [C] :
              ( ( directed_relstr(preimage_subnetstr(A,B,C))
                & ~ empty_carrier(preimage_subnetstr(A,B,C)) )
             <= is_often_in(A,B,C) ) ) ) ).

fof(redefinition_k1_toler_1,axiom,
    ! [A,B] :
      ( relation_restriction_as_relation_of(A,B) = relation_restriction(A,B)
     <= relation(A) ) ).

fof(t60_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => ! [C] :
              ( element(C,the_carrier(A))
             => ! [D] :
                  ( element(D,the_carrier(A))
                 => ! [E] :
                      ( ! [F] :
                          ( element(F,the_carrier(B))
                         => ( ( C = E
                              & F = D
                              & related(B,E,F) )
                           => related(A,C,D) ) )
                     <= element(E,the_carrier(B)) ) ) ) )
     <= rel_str(A) ) ).

fof(redefinition_k2_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => relation_of_lattice(A) = k2_lattice3(A) ) ).

fof(t4_yellow_1,lemma,
    ! [A] : incl_POSet(powerset(A)) = boole_POSet(A) ).

fof(dt_k1_yellow_1,axiom,
    ! [A] :
      ( reflexive(inclusion_order(A))
      & relation_of2_as_subset(inclusion_order(A),A,A)
      & v1_partfun1(inclusion_order(A),A,A)
      & transitive(inclusion_order(A))
      & antisymmetric(inclusion_order(A)) ) ).

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

fof(t4_boole,axiom,
    ! [A] : empty_set = set_difference(empty_set,A) ).

fof(d8_lattices,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ( ! [B] :
            ( ! [C] :
                ( element(C,the_carrier(A))
               => join(A,meet(A,B,C),C) = C )
           <= element(B,the_carrier(A)) )
      <=> meet_absorbing(A) ) ) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(B)
        & ordinal(A) )
     => ( ordinal_subset(B,A)
        | ordinal_subset(A,B) ) ) ).

fof(dt_u1_pre_topc,axiom,
    ! [A] :
      ( element(the_topology(A),powerset(powerset(the_carrier(A))))
     <= top_str(A) ) ).

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A)
        & one_to_one(A) )
     => ( relation(relation_inverse(A))
        & function(relation_inverse(A)) ) ) ).

fof(t41_ordinal1,lemma,
    ! [A] :
      ( ( being_limit_ordinal(A)
      <=> ! [B] :
            ( ( in(B,A)
             => in(succ(B),A) )
           <= ordinal(B) ) )
     <= ordinal(A) ) ).

fof(d3_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( cast_to_el_of_LattPOSet(A,B) = B
         <= element(B,the_carrier(A)) ) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( subset(A,B)
      <=> ordinal_subset(A,B) )
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( in(A,C)
        & in(B,D) )
    <=> in(ordered_pair(A,B),cartesian_product2(C,D)) ) ).

fof(d12_yellow_6,axiom,
    ! [A] :
      ( ! [B] :
          ( ( ~ empty_carrier(B)
            & net_str(B,A)
            & directed_relstr(B)
            & transitive_relstr(B) )
         => ! [C] :
              ( ( net_str(C,A)
                & directed_relstr(C)
                & transitive_relstr(C)
                & ~ empty_carrier(C) )
             => ( ? [D] :
                    ( function(D)
                    & quasi_total(D,the_carrier(C),the_carrier(B))
                    & relation_of2_as_subset(D,the_carrier(C),the_carrier(B))
                    & the_mapping(A,C) = function_of_composition(the_carrier(C),the_carrier(B),the_carrier(A),D,the_mapping(A,B))
                    & ! [E] :
                        ( element(E,the_carrier(B))
                       => ? [F] :
                            ( element(F,the_carrier(C))
                            & ! [G] :
                                ( ( related(B,E,apply_on_set_and_struct(the_carrier(C),B,D,G))
                                 <= related(C,F,G) )
                               <= element(G,the_carrier(C)) ) ) ) )
              <=> subnet(C,A,B) ) ) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t23_relset_1,lemma,
    ! [A,B,C] :
      ( ( ! [D] :
            ~ ( ! [E] : ~ in(ordered_pair(E,D),C)
              & in(D,B) )
      <=> B = relation_rng_as_subset(A,B,C) )
     <= relation_of2_as_subset(C,A,B) ) ).

fof(d1_setfam_1,axiom,
    ! [A,B] :
      ( ( ( B = set_meet(A)
        <=> ! [C] :
              ( ! [D] :
                  ( in(C,D)
                 <= in(D,A) )
            <=> in(C,B) ) )
       <= A != empty_set )
      & ( ( set_meet(A) = B
        <=> empty_set = B )
       <= empty_set = A ) ) ).

fof(s1_tarski__e1_40__pre_topc__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & D = E
                & ? [H] :
                    ( element(H,powerset(the_carrier(A)))
                    & H = D
                    & subset(B,D)
                    & closed_subset(H,A) ) )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( ( ? [G] :
                  ( element(G,powerset(the_carrier(A)))
                  & subset(B,E)
                  & closed_subset(G,A)
                  & E = G )
              & C = E
              & ? [F] :
                  ( element(F,powerset(the_carrier(A)))
                  & closed_subset(F,A)
                  & subset(B,D)
                  & F = D )
              & D = C )
           => E = D ) )
     <= ( element(B,powerset(the_carrier(A)))
        & top_str(A)
        & topological_space(A) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ~ ( in(B,A)
            & ! [C,D] : ordered_pair(C,D) != B )
    <=> relation(A) ) ).

fof(cc1_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( ( ~ empty_carrier(A)
          & lattice(A) )
       => ( meet_associative(A)
          & join_absorbing(A)
          & meet_absorbing(A)
          & meet_commutative(A)
          & join_associative(A)
          & join_commutative(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(d9_yellow_6,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( net_str(B,A)
         => ! [C] :
              ( ( ( full_subrelstr(C,B)
                  & subrelstr(C,B) )
              <=> full_subnetstr(C,A,B) )
             <= subnetstr(C,A,B) ) ) ) ).

fof(redefinition_k3_lattices,axiom,
    ! [A,B,C] :
      ( join(A,B,C) = join_commut(A,B,C)
     <= ( ~ empty_carrier(A)
        & join_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & join_semilatt_str(A) ) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( meet(A,B,C) = meet_commut(A,B,C)
     <= ( ~ empty_carrier(A)
        & meet_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A) ) ) ).

fof(dt_k2_yellow_0,axiom,
    ! [A,B] :
      ( element(meet_on_relstr(A,B),the_carrier(A))
     <= rel_str(A) ) ).

fof(d8_waybel_0,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(B))
             => apply_on_structs(B,A,the_mapping(A,B),C) = apply_netmap(A,B,C) )
         <= ( net_str(B,A)
            & ~ empty_carrier(B) ) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v1_membered(B)
            & v2_membered(B) ) ) ) ).

fof(s3_funct_1__e16_22__wellord2,lemma,
    ! [A] :
    ? [B] :
      ( function(B)
      & A = relation_dom(B)
      & ! [C] :
          ( in(C,A)
         => apply(B,C) = singleton(C) )
      & relation(B) ) ).

fof(s1_relat_1__e6_21__wellord2,lemma,
    ! [A,B,C] :
      ( ? [D] :
          ( relation(D)
          & ! [E,F] :
              ( ( in(ordered_pair(apply(C,E),apply(C,F)),B)
                & in(F,A)
                & in(E,A) )
            <=> in(ordered_pair(E,F),D) ) )
     <= ( relation(B)
        & function(C)
        & relation(C) ) ) ).

fof(existence_l2_lattices,axiom,
    ? [A] : join_semilatt_str(A) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v5_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) )
     <= v5_membered(A) ) ).

fof(t29_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,the_carrier(poset_of_lattice(B)))
         => ( latt_set_smaller(B,cast_to_el_of_lattice(B,C),A)
          <=> relstr_element_smaller(poset_of_lattice(B),A,C) ) )
     <= ( latt_str(B)
        & lattice(B)
        & ~ empty_carrier(B) ) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) ).

fof(t31_yellow_6,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( is_often_in(A,B,C)
             => subnet(preimage_subnetstr(A,B,C),A,B) )
         <= ( ~ empty_carrier(B)
            & net_str(B,A)
            & directed_relstr(B)
            & transitive_relstr(B) ) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,powerset(A))
         => ( disjoint(B,C)
          <=> subset(B,subset_complement(A,C)) ) )
     <= element(B,powerset(A)) ) ).

fof(fc9_waybel_1,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & distributive_relstr(boole_POSet(A))
      & complemented_relstr(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A)) ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ? [D] : in(ordered_pair(D,C),A)
            <=> in(C,B) )
        <=> B = relation_rng(A) )
     <= relation(A) ) ).

fof(existence_m2_yellow_6,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A)
        & directed_relstr(B)
        & net_str(B,A)
        & transitive_relstr(B)
        & ~ empty_carrier(B) )
     => ? [C] : subnet(C,A,B) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( C = relation_composition(A,B)
              <=> ! [D,E] :
                    ( ? [F] :
                        ( in(ordered_pair(F,E),B)
                        & in(ordered_pair(D,F),A) )
                  <=> in(ordered_pair(D,E),C) ) )
             <= relation(C) )
         <= relation(B) )
     <= relation(A) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( apply_binary(D,E,F) = apply_binary_as_element(A,B,C,D,E,F)
     <= ( ~ empty(A)
        & function(D)
        & quasi_total(D,cartesian_product2(A,B),C)
        & element(F,B)
        & element(E,A)
        & relation_of2(D,cartesian_product2(A,B),C)
        & ~ empty(B) ) ) ).

fof(t47_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => meet_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),union_of_subsets(A,B)) ) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ( in(apply(A,D),B)
                & in(D,relation_dom(A)) ) )
        <=> C = relation_inverse_image(A,B) ) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( empty(A)
     => ( v1_membered(A)
        & v2_membered(A)
        & v3_membered(A)
        & v5_membered(A)
        & v4_membered(A) ) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & one_to_one(A)
        & relation(A) )
     <= ( relation(A)
        & empty(A)
        & function(A) ) ) ).

fof(t25_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_orders(B,A)
       => ( A = relation_field(relation_restriction(B,A))
          & well_ordering(relation_restriction(B,A)) ) ) ) ).

fof(rc2_lattice3,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & transitive_relstr(A)
      & strict_rel_str(A) ) ).

fof(d1_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => join(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_join(A),B,C) ) )
     <= ( join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(fc5_yellow_1,axiom,
    ! [A] :
      ( strict_rel_str(incl_POSet(A))
      & transitive_relstr(incl_POSet(A))
      & antisymmetric_relstr(incl_POSet(A))
      & reflexive_relstr(incl_POSet(A)) ) ).

fof(fc1_waybel_7,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & ~ v1_yellow_3(boole_POSet(A))
      & heyting_relstr(boole_POSet(A))
      & complemented_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & boolean_relstr(boole_POSet(A))
      & distributive_relstr(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A)) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ( in(D,B)
            & in(D,A) ) )
    <=> C = set_intersection2(A,B) ) ).

fof(fc2_lattice2,axiom,
    ! [A] :
      ( ( quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_binop_1(the_L_join(A),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_join(A))
        & relation(the_L_join(A)) )
     <= ( join_commutative(A)
        & join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( proper_subset(B,A)
        & subset(A,B) ) ).

fof(t30_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(ordered_pair(A,B),C)
       => ( in(A,relation_field(C))
          & in(B,relation_field(C)) ) )
     <= relation(C) ) ).

fof(d8_setfam_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( element(C,powerset(powerset(A)))
         => ( ! [D] :
                ( ( in(subset_complement(A,D),B)
                <=> in(D,C) )
               <= element(D,powerset(A)) )
          <=> C = complements_of_subsets(A,B) ) )
     <= element(B,powerset(powerset(A))) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( A = B
     <= ! [C] :
          ( in(C,A)
        <=> in(C,B) ) ) ).

fof(cc2_arytm_3,axiom,
    ! [A] :
      ( ( empty(A)
        & ordinal(A) )
     => ( epsilon_transitive(A)
        & natural(A)
        & ordinal(A)
        & epsilon_connected(A) ) ) ).

fof(t31_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( in(B,A)
         => ( subset(B,A)
            & ordinal(B) ) )
     => ordinal(A) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(t72_funct_1,lemma,
    ! [A,B,C] :
      ( ( in(B,A)
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) )
     <= ( relation(C)
        & function(C) ) ) ).

fof(d2_yellow_1,axiom,
    ! [A] : boole_POSet(A) = poset_of_lattice(boole_lattice(A)) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( empty(C)
        & element(B,powerset(C))
        & in(A,B) ) ).

fof(t51_tops_1,lemma,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => open_subset(interior(A,B),A) ) ) ).

fof(s3_subset_1__e1_40__pre_topc,lemma,
    ! [A,B] :
      ( ? [C] :
          ( ! [D] :
              ( element(D,powerset(the_carrier(A)))
             => ( ? [E] :
                    ( closed_subset(E,A)
                    & subset(B,D)
                    & E = D
                    & element(E,powerset(the_carrier(A))) )
              <=> in(D,C) ) )
          & element(C,powerset(powerset(the_carrier(A)))) )
     <= ( topological_space(A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(cc7_waybel_1,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & upper_bounded_relstr(A) )
       <= ( ~ empty_carrier(A)
          & heyting_relstr(A) ) )
     <= rel_str(A) ) ).

fof(dt_k1_tops_1,axiom,
    ! [A,B] :
      ( element(interior(A,B),powerset(the_carrier(A)))
     <= ( element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(dt_k1_mcart_1,axiom,
    $true ).

fof(commutativity_k2_struct_0,axiom,
    ! [A,B,C] :
      ( ( one_sorted_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) )
     => unordered_pair_as_carrier_subset(A,B,C) = unordered_pair_as_carrier_subset(A,C,B) ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( A = set_difference(A,singleton(B))
    <=> ~ in(B,A) ) ).

fof(existence_m1_connsp_2,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & top_str(A)
        & topological_space(A) )
     => ? [C] : point_neighbourhood(C,A,B) ) ).

fof(rc1_orders_2,axiom,
    ? [A] :
      ( rel_str(A)
      & strict_rel_str(A) ) ).

fof(l29_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B)) ) ).

fof(s1_xboole_0__e6_22__wellord2,lemma,
    ! [A] :
    ? [B] :
    ! [C] :
      ( in(C,B)
    <=> ( in(C,A)
        & ordinal(C) ) ) ).

fof(s1_tarski__e4_7_1__tops_2__1,axiom,
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( D = E
           <= ( ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( D = subset_complement(the_carrier(A),F)
                   <= C = F ) )
              & ! [G] :
                  ( ( G = C
                   => E = subset_complement(the_carrier(A),G) )
                 <= element(G,powerset(the_carrier(A))) )
              & in(C,complements_of_subsets(the_carrier(A),B))
              & in(C,complements_of_subsets(the_carrier(A),B)) ) )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,complements_of_subsets(the_carrier(A),B))
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( subset_complement(the_carrier(A),H) = D
                     <= H = E ) )
                & in(E,complements_of_subsets(the_carrier(A),B)) ) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(dt_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & function(C)
        & relation_of2(B,cartesian_product2(A,A),A)
        & quasi_total(B,cartesian_product2(A,A),A)
        & function(B) )
     => ( latt_str(latt_str_of(A,B,C))
        & strict_latt_str(latt_str_of(A,B,C)) ) ) ).

fof(t13_finset_1,lemma,
    ! [A,B] :
      ( finite(A)
     <= ( finite(B)
        & subset(A,B) ) ) ).

fof(dt_k7_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( ( function(D)
        & relation_of2(D,A,B)
        & function(E)
        & relation_of2(E,B,C)
        & quasi_total(E,B,C)
        & quasi_total(D,A,B)
        & ~ empty(B) )
     => ( quasi_total(function_of_composition(A,B,C,D,E),A,C)
        & relation_of2_as_subset(function_of_composition(A,B,C,D,E),A,C)
        & function(function_of_composition(A,B,C,D,E)) ) ) ).

fof(redefinition_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & element(D,A)
        & function(C) )
     => apply_as_element(A,B,C,D) = apply(C,D) ) ).

fof(t2_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,the_carrier(boole_lattice(A)))
         => ( subset(B,C)
          <=> below(boole_lattice(A),B,C) ) )
     <= element(B,the_carrier(boole_lattice(A))) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v3_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v5_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) ) ) ).

fof(cc4_funct_2,axiom,
    ! [A,B] :
      ( relation_of2(B,A,A)
     => ( ( function(B)
          & quasi_total(B,A,A)
          & bijective(B,A,A)
          & onto(B,A,A)
          & one_to_one(B) )
       <= ( v1_partfun1(B,A,A)
          & reflexive(B)
          & quasi_total(B,A,A)
          & function(B) ) ) ) ).

fof(dt_k10_relat_1,axiom,
    $true ).

fof(cc1_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( ~ empty_carrier(A)
          & with_infima_relstr(A)
          & with_suprema_relstr(A) ) ) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,A)
         => ( v1_int_1(B)
            & v1_rat_1(B)
            & v1_xreal_0(B)
            & v1_xcmplx_0(B) ) )
     <= v4_membered(A) ) ).

fof(fc2_finset_1,axiom,
    ! [A,B] :
      ( ~ empty(unordered_pair(A,B))
      & finite(unordered_pair(A,B)) ) ).

fof(t54_funct_1,lemma,
    ! [A] :
      ( ( one_to_one(A)
       => ! [B] :
            ( ( function(B)
              & relation(B) )
           => ( ( ! [C,D] :
                    ( ( ( D = apply(B,C)
                        & in(C,relation_rng(A)) )
                     <= ( in(D,relation_dom(A))
                        & C = apply(A,D) ) )
                    & ( ( apply(B,C) = D
                        & in(C,relation_rng(A)) )
                     => ( in(D,relation_dom(A))
                        & apply(A,D) = C ) ) )
                & relation_rng(A) = relation_dom(B) )
            <=> B = function_inverse(A) ) ) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(d2_tops_2,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( ! [C] :
                ( ( in(C,B)
                 => closed_subset(C,A) )
               <= element(C,powerset(the_carrier(A))) )
          <=> closed_subsets(B,A) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(d5_yellow_6,axiom,
    ! [A] :
      ( ( rel_str(A)
        & ~ empty_carrier(A) )
     => ( ! [B] :
            ( element(B,the_carrier(A))
           => ! [C] :
                ( element(C,the_carrier(A))
               => ? [D] :
                    ( related(A,B,D)
                    & related(A,C,D)
                    & element(D,the_carrier(A)) ) ) )
      <=> directed_relstr(A) ) ) ).

fof(dt_k5_ordinal2,axiom,
    $true ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(t17_tops_2,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( closed_subsets(complements_of_subsets(the_carrier(A),B),A)
          <=> open_subsets(B,A) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(fc1_orders_2,axiom,
    ! [A,B] :
      ( ( strict_rel_str(rel_str_of(A,B))
        & ~ empty_carrier(rel_str_of(A,B)) )
     <= ( relation_of2(B,A,A)
        & ~ empty(A) ) ) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( ! [B] :
          ( subset(B,A)
         <= in(B,A) )
    <=> epsilon_transitive(A) ) ).

fof(commutativity_k3_lattices,axiom,
    ! [A,B,C] :
      ( join_commut(A,B,C) = join_commut(A,C,B)
     <= ( join_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t69_enumset1,lemma,
    ! [A] : unordered_pair(A,A) = singleton(A) ).

fof(fraenkel_a_2_3_lattice3,axiom,
    ! [A,B,C] :
      ( ( in(A,a_2_3_lattice3(B,C))
      <=> ? [D] :
            ( D = A
            & latt_set_smaller(B,D,C)
            & element(D,the_carrier(B)) ) )
     <= ( ~ empty_carrier(B)
        & latt_str(B)
        & complete_latt_str(B)
        & lattice(B) ) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(cc8_waybel_1,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( boolean_relstr(A)
          & ~ empty_carrier(A) )
       => ( ~ empty_carrier(A)
          & antisymmetric_relstr(A)
          & lower_bounded_relstr(A)
          & upper_bounded_relstr(A)
          & distributive_relstr(A)
          & complemented_relstr(A)
          & bounded_relstr(A)
          & with_infima_relstr(A)
          & with_suprema_relstr(A)
          & transitive_relstr(A)
          & reflexive_relstr(A) ) ) ) ).

fof(d9_lattice3,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ! [D] :
                ( ( in(D,B)
                 => related(A,D,C) )
               <= element(D,the_carrier(A)) )
          <=> relstr_set_smaller(A,B,C) ) ) ) ).

fof(t12_tops_2,lemma,
    ! [A,B] :
      ( ( empty_set != B
       => subset_complement(A,meet_of_subsets(A,B)) = union_of_subsets(A,complements_of_subsets(A,B)) )
     <= element(B,powerset(powerset(A))) ) ).

fof(t12_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( subset(relation_rng(C),B)
        & subset(relation_dom(C),A) ) ) ).

fof(s1_xboole_0__e4_27_3_1__finset_1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( in(D,powerset(A))
            & ? [E] :
                ( set_difference(E,singleton(A)) = D
                & in(E,B) ) ) )
     <= ( ordinal(A)
        & element(B,powerset(powerset(succ(A)))) ) ) ).

fof(t35_funct_1,lemma,
    ! [A,B] :
      ( in(B,A)
     => B = apply(identity_relation(A),B) ) ).

fof(redefinition_k7_funct_2,axiom,
    ! [A,B,C,D,E] :
      ( function_of_composition(A,B,C,D,E) = relation_composition(D,E)
     <= ( ~ empty(B)
        & function(D)
        & relation_of2(D,A,B)
        & relation_of2(E,B,C)
        & quasi_total(E,B,C)
        & function(E)
        & quasi_total(D,A,B) ) ) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( function(A)
        & function(B)
        & relation(B)
        & relation(A) )
     => ( function(relation_composition(A,B))
        & relation(relation_composition(A,B)) ) ) ).

fof(rc2_waybel_0,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & finite(B)
          & directed_subset(B,A)
          & filtered_subset(B,A)
          & element(B,powerset(the_carrier(A))) )
     <= ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & rel_str(A) ) ) ).

fof(l30_wellord2,lemma,
    ! [A,B] :
      ( ~ ( equipotent(A,relation_field(B))
          & ! [C] :
              ( ~ well_orders(C,A)
             <= relation(C) )
          & well_ordering(B) )
     <= relation(B) ) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_union2(A,set_difference(B,A)) = B ) ).

fof(t115_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_rng(relation_rng_restriction(B,C)))
      <=> ( in(A,B)
          & in(A,relation_rng(C)) ) )
     <= relation(C) ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( ( v1_membered(B)
            & v3_membered(B)
            & v2_membered(B) )
         <= element(B,powerset(A)) ) ) ).

fof(fc2_ordinal1,axiom,
    ( relation_empty_yielding(empty_set)
    & function(empty_set)
    & one_to_one(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set)
    & empty(empty_set)
    & relation(empty_set) ) ).

fof(d7_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ex_sup_of_relstr_set(A,B)
        <=> ? [C] :
              ( element(C,the_carrier(A))
              & ! [D] :
                  ( ( ( relstr_set_smaller(A,B,D)
                      & ! [E] :
                          ( ( relstr_set_smaller(A,B,E)
                           => related(A,D,E) )
                         <= element(E,the_carrier(A)) ) )
                   => C = D )
                 <= element(D,the_carrier(A)) )
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( related(A,C,D)
                   <= relstr_set_smaller(A,B,D) ) )
              & relstr_set_smaller(A,B,C) ) ) ) ).

fof(t8_wellord1,lemma,
    ! [A] :
      ( ( well_ordering(A)
      <=> well_orders(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t47_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( relation_rng(A) = relation_rng(relation_composition(B,A))
           <= subset(relation_dom(A),relation_rng(B)) )
         <= relation(B) )
     <= relation(A) ) ).

fof(rc1_waybel_3,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & connected_relstr(A)
      & bounded_relstr(A)
      & upper_bounded_relstr(A)
      & lower_bounded_relstr(A)
      & reflexive_relstr(A)
      & rel_str(A) ) ).

fof(t48_xboole_1,lemma,
    ! [A,B] : set_intersection2(A,B) = set_difference(A,set_difference(A,B)) ).

fof(dt_k2_struct_0,axiom,
    ! [A,B,C] :
      ( element(unordered_pair_as_carrier_subset(A,B,C),powerset(the_carrier(A)))
     <= ( element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(rc1_yellow_3,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & strict_rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & ~ v1_yellow_3(A)
      & antisymmetric_relstr(A) ) ).

fof(dt_k1_wellord2,axiom,
    ! [A] : relation(inclusion_relation(A)) ).

fof(existence_l1_waybel_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ? [B] : net_str(B,A) ) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( element(relation_rng_as_subset(A,B,C),powerset(B))
     <= relation_of2(C,A,B) ) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( element(C,powerset(A))
     => ~ ( in(B,subset_complement(A,C))
          & in(B,C) ) ) ).

fof(d16_relat_2,axiom,
    ! [A] :
      ( ( transitive(A)
      <=> is_transitive_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t42_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ( ~ ( ? [B] :
                ( ordinal(B)
                & succ(B) = A )
            & being_limit_ordinal(A) )
        & ~ ( ~ being_limit_ordinal(A)
            & ! [B] :
                ( succ(B) != A
               <= ordinal(B) ) ) ) ) ).

fof(t60_relat_1,lemma,
    ( empty_set = relation_rng(empty_set)
    & relation_dom(empty_set) = empty_set ) ).

fof(d8_lattice3,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( element(C,the_carrier(A))
         => ( relstr_element_smaller(A,B,C)
          <=> ! [D] :
                ( ( related(A,C,D)
                 <= in(D,B) )
               <= element(D,the_carrier(A)) ) ) ) ) ).

fof(dt_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & quasi_total(C,A,B)
        & element(D,A)
        & relation_of2(C,A,B)
        & function(C) )
     => element(apply_as_element(A,B,C,D),B) ) ).

fof(redefinition_k6_partfun1,axiom,
    ! [A] : identity_as_relation_of(A) = identity_relation(A) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( ~ proper_subset(B,A)
     <= proper_subset(A,B) ) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => element(subset_intersection2(A,B,C),powerset(A)) ) ).

fof(rc3_lattices,axiom,
    ? [A] :
      ( strict_latt_str(A)
      & latt_str(A) ) ).

fof(fc2_arytm_3,axiom,
    ! [A] :
      ( ( ~ empty(succ(A))
        & ordinal(succ(A))
        & natural(succ(A))
        & epsilon_connected(succ(A))
        & epsilon_transitive(succ(A)) )
     <= ( ordinal(A)
        & natural(A) ) ) ).

fof(rc3_partfun1,axiom,
    ! [A] :
    ? [B] :
      ( relation(B)
      & reflexive(B)
      & symmetric(B)
      & antisymmetric(B)
      & transitive(B)
      & v1_partfun1(B,A,A)
      & relation_of2(B,A,A) ) ).

fof(existence_l1_lattices,axiom,
    ? [A] : meet_semilatt_str(A) ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & meet_semilatt_str(A) )
     => meet_commut(A,B,C) = meet_commut(A,C,B) ) ).

fof(cc3_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( bounded_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(d5_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( is_transitive_in(A,B)
            & is_well_founded_in(A,B)
            & is_connected_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_reflexive_in(A,B) )
        <=> well_orders(A,B) )
     <= relation(A) ) ).

fof(d12_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ! [C] :
          ( relation(C)
         => ( ! [D,E] :
                ( ( in(E,A)
                  & in(ordered_pair(D,E),B) )
              <=> in(ordered_pair(D,E),C) )
          <=> C = relation_rng_restriction(A,B) ) ) ) ).

fof(rc2_tops_1,axiom,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] :
          ( open_subset(B,A)
          & closed_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(t42_yellow_0,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & rel_str(A)
        & lower_bounded_relstr(A)
        & antisymmetric_relstr(A) )
     => ( ex_inf_of_relstr_set(A,the_carrier(A))
        & ex_sup_of_relstr_set(A,empty_set) ) ) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(B)
        & ordinal(A) )
     => ordinal_subset(A,A) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(t167_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_inverse_image(B,A),relation_dom(B))
     <= relation(B) ) ).

fof(reflexivity_r2_wellord2,axiom,
    ! [A,B] : equipotent(A,A) ).

fof(d1_wellord2,axiom,
    ! [A,B] :
      ( ( inclusion_relation(A) = B
      <=> ( ! [C,D] :
              ( ( in(D,A)
                & in(C,A) )
             => ( in(ordered_pair(C,D),B)
              <=> subset(C,D) ) )
          & A = relation_field(B) ) )
     <= relation(B) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & one_to_one(A) ) ).

fof(s1_funct_1__e4_7_2__tops_2__1,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,B)
                  & in(D,B)
                  & ! [H] :
                      ( ( E = subset_complement(the_carrier(A),H)
                       <= H = D )
                     <= element(H,powerset(the_carrier(A))) ) ) )
            & function(C)
            & relation(C) )
       <= ! [C,D,E] :
            ( ( in(C,B)
              & ! [G] :
                  ( ( C = G
                   => E = subset_complement(the_carrier(A),G) )
                 <= element(G,powerset(the_carrier(A))) )
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( D = subset_complement(the_carrier(A),F)
                   <= F = C ) )
              & in(C,B) )
           => D = E ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v2_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) ) ) ).

fof(dt_g1_waybel_0,axiom,
    ! [A,B,C,D] :
      ( ( one_sorted_str(A)
        & relation_of2(C,B,B)
        & function(D)
        & relation_of2(D,B,the_carrier(A))
        & quasi_total(D,B,the_carrier(A)) )
     => ( strict_net_str(net_str_of(A,B,C,D),A)
        & net_str(net_str_of(A,B,C,D),A) ) ) ).

fof(fc38_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) )
     <= v2_membered(A) ) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( relation(set_difference(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(d1_connsp_2,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( point_neighbourhood(C,A,B)
              <=> in(B,interior(A,C)) )
             <= element(C,powerset(the_carrier(A))) ) )
     <= ( top_str(A)
        & topological_space(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_k16_lattice3,axiom,
    ! [A,B] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => element(meet_of_latt_set(A,B),the_carrier(A)) ) ).

fof(d11_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => bottom_of_relstr(A) = join_on_relstr(A,empty_set) ) ).

fof(t50_lattice3,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & join_of_latt_set(A,empty_set) = bottom_of_semilattstr(A)
        & latt_str(A)
        & lower_bounded_semilattstr(A) )
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & complete_latt_str(A)
        & lattice(A) ) ) ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( meet_commutative(A)
        & meet_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) )
     => element(meet_commut(A,B,C),the_carrier(A)) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(d2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => empty_carrier_subset(A) = empty_set ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(fc1_yellow_0,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(rel_str_of(singleton(A),B))
        & trivial_carrier(rel_str_of(singleton(A),B))
        & strict_rel_str(rel_str_of(singleton(A),B)) )
     <= relation_of2(B,singleton(A),singleton(A)) ) ).

fof(t146_relat_1,lemma,
    ! [A] :
      ( relation_rng(A) = relation_image(A,relation_dom(A))
     <= relation(A) ) ).

fof(t12_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => B = set_union2(A,B) ) ).

fof(cc4_waybel_4,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( antisymmetric_relstr(A)
          & upper_bounded_relstr(A)
          & ~ v1_yellow_3(A)
          & v1_waybel_2(A)
          & v2_waybel_2(A)
          & with_suprema_relstr(A)
          & complete_relstr(A)
          & with_infima_relstr(A)
          & join_complete_relstr(A)
          & up_complete_relstr(A)
          & bounded_relstr(A)
          & lower_bounded_relstr(A)
          & transitive_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( reflexive_relstr(A)
          & transitive_relstr(A)
          & lower_bounded_relstr(A)
          & v3_waybel_3(A)
          & with_suprema_relstr(A)
          & with_infima_relstr(A)
          & antisymmetric_relstr(A) ) ) ) ).

fof(redefinition_k1_yellow_1,axiom,
    ! [A] : inclusion_relation(A) = inclusion_order(A) ).

fof(l28_zfmisc_1,lemma,
    ! [A,B] :
      ( disjoint(singleton(A),B)
     <= ~ in(A,B) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) ) ) ).

fof(rc9_lattices,axiom,
    ? [A] :
      ( strict_latt_str(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & meet_associative(A)
      & meet_commutative(A)
      & join_associative(A)
      & join_commutative(A)
      & ~ empty_carrier(A)
      & latt_str(A) ) ).

fof(dt_k2_mcart_1,axiom,
    $true ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) ) ) ).

fof(redefinition_k1_pcomps_1,axiom,
    ! [A] : k1_pcomps_1(A) = powerset(A) ).

fof(t29_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( join_of_latt_set(A,B) = join_on_relstr(poset_of_lattice(A),B)
          & meet_on_relstr(poset_of_lattice(A),B) = meet_of_latt_set(A,B) )
     <= ( lattice(A)
        & complete_latt_str(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( ~ ( empty_set != B
          & complements_of_subsets(A,B) = empty_set )
     <= element(B,powerset(powerset(A))) ) ).

fof(rc3_waybel_7,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ? [B] :
          ( finite(B)
          & ~ empty(B)
          & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(fc2_lattice3,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & lattice(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & strict_latt_str(boole_lattice(A)) ) ).

fof(s2_ordinal1__e18_27__finset_1__1,lemma,
    ( ! [A] :
        ( ordinal(A)
       => ( in(A,omega)
         => ! [I] :
              ( element(I,powerset(powerset(A)))
             => ~ ( I != empty_set
                  & ! [J] :
                      ~ ( in(J,I)
                        & ! [K] :
                            ( J = K
                           <= ( subset(J,K)
                              & in(K,I) ) ) ) ) ) ) )
   <= ! [A] :
        ( ( ! [B] :
              ( ( ( ! [C] :
                      ( ~ ( empty_set != C
                          & ! [D] :
                              ~ ( ! [E] :
                                    ( D = E
                                   <= ( in(E,C)
                                      & subset(D,E) ) )
                                & in(D,C) ) )
                     <= element(C,powerset(powerset(B))) )
                 <= in(B,omega) )
               <= in(B,A) )
             <= ordinal(B) )
         => ( in(A,omega)
           => ! [F] :
                ( element(F,powerset(powerset(A)))
               => ~ ( empty_set != F
                    & ! [G] :
                        ~ ( in(G,F)
                          & ! [H] :
                              ( G = H
                             <= ( in(H,F)
                                & subset(G,H) ) ) ) ) ) ) )
       <= ordinal(A) ) ) ).

fof(dt_k11_yellow_6,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A)
        & directed_relstr(B)
        & net_str(B,A)
        & transitive_relstr(B)
        & ~ empty_carrier(B) )
     => element(lim_points_of_net(A,B),powerset(the_carrier(A))) ) ).

fof(rc12_waybel_0,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & transitive_relstr(A)
      & connected_relstr(A)
      & antisymmetric_relstr(A)
      & reflexive_relstr(A)
      & rel_str(A) ) ).

fof(cc11_waybel_0,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & lower_bounded_relstr(A) )
       <= ( join_complete_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) ) )
     <= rel_str(A) ) ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) ).

fof(s1_ordinal2__e18_27__finset_1,lemma,
    ( ! [D] :
        ( ( ! [R] :
              ( element(R,powerset(powerset(D)))
             => ~ ( ! [S] :
                      ~ ( in(S,R)
                        & ! [T] :
                            ( ( subset(S,T)
                              & in(T,R) )
                           => S = T ) )
                  & R != empty_set ) )
         <= in(D,omega) )
       <= ordinal(D) )
   <= ( ! [D] :
          ( ordinal(D)
         => ( ( in(succ(D),omega)
             => ! [H] :
                  ( element(H,powerset(powerset(succ(D))))
                 => ~ ( H != empty_set
                      & ! [I] :
                          ~ ( in(I,H)
                            & ! [J] :
                                ( ( subset(I,J)
                                  & in(J,H) )
                               => J = I ) ) ) ) )
           <= ( ! [E] :
                  ( element(E,powerset(powerset(D)))
                 => ~ ( E != empty_set
                      & ! [F] :
                          ~ ( ! [G] :
                                ( ( in(G,E)
                                  & subset(F,G) )
                               => F = G )
                            & in(F,E) ) ) )
             <= in(D,omega) ) ) )
      & ! [D] :
          ( ordinal(D)
         => ( ( being_limit_ordinal(D)
              & ! [K] :
                  ( ( in(K,D)
                   => ( in(K,omega)
                     => ! [L] :
                          ( ~ ( L != empty_set
                              & ! [M] :
                                  ~ ( ! [N] :
                                        ( ( subset(M,N)
                                          & in(N,L) )
                                       => M = N )
                                    & in(M,L) ) )
                         <= element(L,powerset(powerset(K))) ) ) )
                 <= ordinal(K) ) )
           => ( D = empty_set
              | ( ! [O] :
                    ( element(O,powerset(powerset(D)))
                   => ~ ( empty_set != O
                        & ! [P] :
                            ~ ( in(P,O)
                              & ! [Q] :
                                  ( ( in(Q,O)
                                    & subset(P,Q) )
                                 => P = Q ) ) ) )
               <= in(D,omega) ) ) ) )
      & ( in(empty_set,omega)
       => ! [A] :
            ( element(A,powerset(powerset(empty_set)))
           => ~ ( ! [B] :
                    ~ ( in(B,A)
                      & ! [C] :
                          ( ( in(C,A)
                            & subset(B,C) )
                         => B = C ) )
                & A != empty_set ) ) ) ) ) ).

fof(redefinition_k10_filter_1,axiom,
    ! [A,B,C,D] :
      ( ( lattice(B)
        & element(C,the_carrier(A))
        & element(D,the_carrier(B))
        & latt_str(B)
        & ~ empty_carrier(B)
        & latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => ordered_pair(C,D) = k10_filter_1(A,B,C,D) ) ).

fof(t19_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,B)
          & in(A,relation_field(C)) ) ) ) ).

fof(cc11_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( ( v1_xreal_0(B)
            & v1_xcmplx_0(B) )
         <= element(B,A) ) ) ).

fof(t3_ordinal1,lemma,
    ! [A,B,C] :
      ~ ( in(B,C)
        & in(C,A)
        & in(A,B) ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(relation_composition(A,B)) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( ( subset(B,A)
        & subset(A,B) )
    <=> B = A ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_difference(A,B)
    <=> ! [D] :
          ( ( ~ in(D,B)
            & in(D,A) )
        <=> in(D,C) ) ) ).

fof(t21_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( ( in(apply(C,A),relation_dom(B))
              & in(A,relation_dom(C)) )
          <=> in(A,relation_dom(relation_composition(C,B))) )
         <= ( relation(C)
            & function(C) ) ) ) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B] :
          ( B = relation_rng(A)
        <=> ! [C] :
              ( ? [D] :
                  ( in(D,relation_dom(A))
                  & apply(A,D) = C )
            <=> in(C,B) ) ) ) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(t17_wellord1,lemma,
    ! [A,B] :
      ( relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A)
     <= relation(B) ) ).

fof(d1_tops_2,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( open_subsets(B,A)
          <=> ! [C] :
                ( ( in(C,B)
                 => open_subset(C,A) )
               <= element(C,powerset(the_carrier(A))) ) ) ) ) ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( singleton(A) = B
    <=> ! [C] :
          ( in(C,B)
        <=> C = A ) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => ! [B] :
          ( ( v1_membered(B)
            & v4_membered(B)
            & v5_membered(B)
            & v3_membered(B)
            & v2_membered(B) )
         <= element(B,powerset(A)) ) ) ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_union2(A,C),B)
     <= ( subset(A,B)
        & subset(C,B) ) ) ).

fof(cc12_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( antisymmetric_relstr(A)
          & lower_bounded_relstr(A)
          & up_complete_relstr(A)
          & with_suprema_relstr(A)
          & transitive_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       => ( reflexive_relstr(A)
          & transitive_relstr(A)
          & with_infima_relstr(A)
          & lower_bounded_relstr(A)
          & bounded_relstr(A)
          & upper_bounded_relstr(A)
          & complete_relstr(A)
          & with_suprema_relstr(A)
          & antisymmetric_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) )
     <= v3_membered(A) ) ).

