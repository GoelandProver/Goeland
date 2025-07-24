fof(symmetry_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
     => equipotent(B,A) ) ).

fof(t26_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_intersection2(A,C),set_intersection2(B,C)) ) ).

fof(t167_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_inverse_image(B,A),relation_dom(B))
     <= relation(B) ) ).

fof(t34_lattice3,lemma,
    ! [A] :
      ( ( latt_str(A)
        & complete_latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( ! [D] :
                    ( ( latt_set_smaller(A,D,C)
                     => below_refl(A,D,B) )
                   <= element(D,the_carrier(A)) )
                & latt_set_smaller(A,B,C) )
            <=> meet_of_latt_set(A,C) = B ) ) ) ).

fof(l71_subset_1,lemma,
    ! [A,B] :
      ( element(A,powerset(B))
     <= ! [C] :
          ( in(C,B)
         <= in(C,A) ) ) ).

fof(cc6_funct_2,axiom,
    ! [A,B] :
      ( ( ~ empty(B)
        & ~ empty(A) )
     => ! [C] :
          ( relation_of2(C,A,B)
         => ( ( function(C)
              & quasi_total(C,A,B) )
           => ( function(C)
              & ~ empty(C)
              & quasi_total(C,A,B)
              & v1_partfun1(C,A,B) ) ) ) ) ).

fof(d13_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => ( lower_bounded_semilattstr(A)
      <=> ? [B] :
            ( element(B,the_carrier(A))
            & ! [C] :
                ( ( meet(A,C,B) = B
                  & meet(A,B,C) = B )
               <= element(C,the_carrier(A)) ) ) ) ) ).

fof(fc4_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ( antisymmetric_relstr(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & strict_rel_str(poset_of_lattice(A))
        & ~ empty_carrier(poset_of_lattice(A)) ) ) ).

fof(t40_xboole_1,lemma,
    ! [A,B] : set_difference(A,B) = set_difference(set_union2(A,B),B) ).

fof(d2_tex_2,axiom,
    ! [A,B] :
      ( ( B != union(A)
      <=> proper_element(B,A) )
     <= element(B,A) ) ).

fof(t20_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),relation_field(B))
        & subset(relation_field(relation_restriction(B,A)),A) ) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( relation(relation_inverse(A))
        & function(relation_inverse(A)) )
     <= ( function(A)
        & one_to_one(A)
        & relation(A) ) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(B,A))
     <= ~ empty(A) ) ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( in(ordered_pair(C,C),A)
             <= in(C,B) )
        <=> is_reflexive_in(A,B) ) ) ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(t22_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( B = subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t86_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_dom(relation_dom_restriction(C,B)))
      <=> ( in(A,relation_dom(C))
          & in(A,B) ) )
     <= relation(C) ) ).

fof(t69_enumset1,lemma,
    ! [A] : singleton(A) = unordered_pair(A,A) ).

fof(dt_k16_lattice3,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => element(meet_of_latt_set(A,B),the_carrier(A)) ) ).

fof(t64_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( ( relation_rng(A) = empty_set
          | empty_set = relation_dom(A) )
       => A = empty_set ) ) ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) )
      & ! [C] :
          ~ ( in(C,B)
            & ! [D] :
                ~ ( in(D,B)
                  & ! [E] :
                      ( in(E,D)
                     <= subset(E,C) ) ) )
      & ! [C,D] :
          ( in(D,B)
         <= ( subset(D,C)
            & in(C,B) ) )
      & in(A,B) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( B = A
     <= ! [C] :
          ( in(C,B)
        <=> in(C,A) ) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( ( finite(A)
        & finite(B) )
     => finite(cartesian_product2(A,B)) ) ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( function(function_inverse(A))
        & relation(function_inverse(A)) ) ) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_intersection2(A,B,C),powerset(A))
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(rc1_arytm_3,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & ordinal(A)
      & natural(A)
      & epsilon_connected(A)
      & ~ empty(A) ) ).

fof(s3_subset_1__e1_40__pre_topc,lemma,
    ! [A,B] :
      ( ( topological_space(A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) )
     => ? [C] :
          ( ! [D] :
              ( ( ? [E] :
                    ( D = E
                    & closed_subset(E,A)
                    & subset(B,D)
                    & element(E,powerset(the_carrier(A))) )
              <=> in(D,C) )
             <= element(D,powerset(the_carrier(A))) )
          & element(C,powerset(powerset(the_carrier(A)))) ) ) ).

fof(s1_tarski__e1_40__pre_topc__1,axiom,
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( E = D
           <= ( D = C
              & ? [F] :
                  ( element(F,powerset(the_carrier(A)))
                  & closed_subset(F,A)
                  & subset(B,D)
                  & F = D )
              & C = E
              & ? [G] :
                  ( element(G,powerset(the_carrier(A)))
                  & G = E
                  & subset(B,E)
                  & closed_subset(G,A) ) ) )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ? [H] :
                    ( H = D
                    & subset(B,D)
                    & closed_subset(H,A)
                    & element(H,powerset(the_carrier(A))) )
                & D = E
                & in(E,powerset(the_carrier(A))) ) ) )
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(B,A)
     <= disjoint(A,B) ) ).

fof(t118_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B))
     <= relation(B) ) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( relation(set_difference(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(d3_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ( below(A,B,C)
              <=> C = join(A,B,C) ) ) )
     <= ( join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t16_wellord1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_restriction(C,B))
      <=> ( in(A,C)
          & in(A,cartesian_product2(B,B)) ) )
     <= relation(C) ) ).

fof(dt_k2_yellow_0,axiom,
    ! [A,B] :
      ( element(meet_on_relstr(A,B),the_carrier(A))
     <= rel_str(A) ) ).

fof(t18_finset_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ~ ( B != empty_set
              & ! [C] :
                  ~ ( in(C,B)
                    & ! [D] :
                        ( ( in(D,B)
                          & subset(C,D) )
                       => C = D ) ) )
         <= element(B,powerset(powerset(A))) )
     <= finite(A) ) ).

fof(t14_relset_1,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,C,B)
       <= subset(relation_rng(D),B) )
     <= relation_of2_as_subset(D,C,A) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( B = A
    <=> ( subset(A,B)
        & subset(B,A) ) ) ).

fof(t22_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ! [C] :
          ( ( in(A,relation_dom(relation_composition(C,B)))
           => apply(relation_composition(C,B),A) = apply(B,apply(C,A)) )
         <= ( relation(C)
            & function(C) ) ) ) ).

fof(d13_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ( ! [D] :
                    ( ( ! [E] :
                          ( ~ ( in(D,E)
                              & disjoint(B,E)
                              & open_subset(E,A) )
                         <= element(E,powerset(the_carrier(A))) )
                    <=> in(D,C) )
                   <= in(D,the_carrier(A)) )
              <=> C = topstr_closure(A,B) ) )
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(d1_setfam_1,axiom,
    ! [A,B] :
      ( ( ( B = set_meet(A)
        <=> B = empty_set )
       <= A = empty_set )
      & ( A != empty_set
       => ( ! [C] :
              ( in(C,B)
            <=> ! [D] :
                  ( in(D,A)
                 => in(C,D) ) )
        <=> B = set_meet(A) ) ) ) ).

fof(fc1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty(empty_carrier_subset(A))
        & v1_membered(empty_carrier_subset(A))
        & v5_membered(empty_carrier_subset(A))
        & v4_membered(empty_carrier_subset(A))
        & v3_membered(empty_carrier_subset(A))
        & v2_membered(empty_carrier_subset(A)) ) ) ).

fof(t17_tops_2,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( open_subsets(B,A)
          <=> closed_subsets(complements_of_subsets(the_carrier(A),B),A) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(cc1_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     => ( cup_closed(A)
        & diff_closed(A) ) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(t6_wellord2,lemma,
    ! [A] :
      ( well_founded_relation(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( subset(A,B)
      <=> ordinal_subset(A,B) )
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(t35_funct_1,lemma,
    ! [A,B] :
      ( B = apply(identity_relation(A),B)
     <= in(B,A) ) ).

fof(fc6_membered,axiom,
    ( v4_membered(empty_set)
    & v5_membered(empty_set)
    & v3_membered(empty_set)
    & v2_membered(empty_set)
    & v1_membered(empty_set)
    & empty(empty_set) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( empty(A)
     => ( v1_membered(A)
        & v3_membered(A)
        & v5_membered(A)
        & v4_membered(A)
        & v2_membered(A) ) ) ).

fof(fc2_arytm_3,axiom,
    ! [A] :
      ( ( epsilon_transitive(succ(A))
        & ordinal(succ(A))
        & natural(succ(A))
        & epsilon_connected(succ(A))
        & ~ empty(succ(A)) )
     <= ( natural(A)
        & ordinal(A) ) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(rc1_partfun1,axiom,
    ? [A] :
      ( function(A)
      & one_to_one(A)
      & empty(A)
      & relation(A) ) ).

fof(l28_zfmisc_1,lemma,
    ! [A,B] :
      ( ~ in(A,B)
     => disjoint(singleton(A),B) ) ).

fof(rc9_lattices,axiom,
    ? [A] :
      ( latt_str(A)
      & join_associative(A)
      & meet_associative(A)
      & meet_absorbing(A)
      & join_absorbing(A)
      & lattice(A)
      & meet_commutative(A)
      & join_commutative(A)
      & strict_latt_str(A)
      & ~ empty_carrier(A) ) ).

fof(fc5_pre_topc,axiom,
    ! [A] :
      ( closed_subset(cast_as_carrier_subset(A),A)
     <= ( topological_space(A)
        & top_str(A) ) ) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= join_semilatt_str(A) ) ).

fof(d5_ordinal2,axiom,
    ! [A] :
      ( omega = A
    <=> ( in(empty_set,A)
        & being_limit_ordinal(A)
        & ordinal(A)
        & ! [B] :
            ( ordinal(B)
           => ( ( in(empty_set,B)
                & being_limit_ordinal(B) )
             => subset(A,B) ) ) ) ) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v5_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A)) ) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( ~ empty(A)
      & ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A) ) ).

fof(d8_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( is_a_cover_of_carrier(A,B)
          <=> union_of_subsets(the_carrier(A),B) = cast_as_carrier_subset(A) ) ) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(A) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( function(A)
      & epsilon_connected(A)
      & ordinal(A)
      & epsilon_transitive(A)
      & empty(A)
      & one_to_one(A)
      & relation(A) ) ).

fof(t32_filter_1,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( in(ordered_pair_as_product_element(the_carrier(A),the_carrier(A),B,C),relation_of_lattice(A))
              <=> below_refl(A,B,C) )
             <= element(C,the_carrier(A)) ) ) ) ).

fof(d8_lattices,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ( meet_absorbing(A)
      <=> ! [B] :
            ( ! [C] :
                ( element(C,the_carrier(A))
               => join(A,meet(A,B,C),C) = C )
           <= element(B,the_carrier(A)) ) ) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(t60_yellow_0,lemma,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ! [E] :
                      ( element(E,the_carrier(B))
                     => ! [F] :
                          ( element(F,the_carrier(B))
                         => ( ( F = D
                              & related(B,E,F)
                              & E = C )
                           => related(A,C,D) ) ) ) )
             <= element(C,the_carrier(A)) )
         <= subrelstr(B,A) ) ) ).

fof(t31_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,the_carrier(poset_of_lattice(B)))
         => ( relstr_set_smaller(poset_of_lattice(B),A,C)
          <=> latt_element_smaller(B,cast_to_el_of_lattice(B,C),A) ) )
     <= ( ~ empty_carrier(B)
        & latt_str(B)
        & lattice(B) ) ) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( function(relation_composition(A,B))
        & relation(relation_composition(A,B)) )
     <= ( relation(A)
        & function(A)
        & function(B)
        & relation(B) ) ) ).

fof(t146_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => relation_image(A,relation_dom(A)) = relation_rng(A) ) ).

fof(t21_funct_2,lemma,
    ! [A,B,C,D] :
      ( ! [E] :
          ( ( function(E)
            & relation(E) )
         => ( in(C,A)
           => ( apply(E,apply(D,C)) = apply(relation_composition(D,E),C)
              | empty_set = B ) ) )
     <= ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) ) ) ).

fof(s3_subset_1__e2_37_1_1__pre_topc,lemma,
    ! [A,B] :
      ( ? [C] :
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] :
              ( element(D,powerset(the_carrier(A)))
             => ( in(D,C)
              <=> in(set_difference(cast_as_carrier_subset(A),D),B) ) ) )
     <= ( topological_space(A)
        & top_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(dt_k6_partfun1,axiom,
    ! [A] :
      ( v1_partfun1(identity_as_relation_of(A),A,A)
      & relation_of2_as_subset(identity_as_relation_of(A),A,A) ) ).

fof(dt_k5_lattice3,axiom,
    ! [A,B] :
      ( element(cast_to_el_of_lattice(A,B),the_carrier(A))
     <= ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & element(B,the_carrier(poset_of_lattice(A))) ) ) ).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set)
    & relation_empty_yielding(empty_set) ) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(t21_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( in(A,relation_dom(relation_composition(C,B)))
          <=> ( in(A,relation_dom(C))
              & in(apply(C,A),relation_dom(B)) ) )
         <= ( function(C)
            & relation(C) ) )
     <= ( function(B)
        & relation(B) ) ) ).

fof(t4_boole,axiom,
    ! [A] : set_difference(empty_set,A) = empty_set ).

fof(redefinition_k1_toler_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation_restriction(A,B) = relation_restriction_as_relation_of(A,B) ) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( subset(cartesian_product2(C,A),cartesian_product2(C,B))
        & subset(cartesian_product2(A,C),cartesian_product2(B,C)) )
     <= subset(A,B) ) ).

fof(t37_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( relation_rng(A) = relation_dom(relation_inverse(A))
        & relation_rng(relation_inverse(A)) = relation_dom(A) ) ) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( ( subset(B,subset_complement(A,C))
          <=> disjoint(B,C) )
         <= element(C,powerset(A)) ) ) ).

fof(fc2_orders_2,axiom,
    ! [A] :
      ( ( relation(the_InternalRel(A))
        & reflexive(the_InternalRel(A))
        & transitive(the_InternalRel(A))
        & v1_partfun1(the_InternalRel(A),the_carrier(A),the_carrier(A))
        & antisymmetric(the_InternalRel(A)) )
     <= ( reflexive_relstr(A)
        & transitive_relstr(A)
        & rel_str(A)
        & antisymmetric_relstr(A) ) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => v1_membered(A) ) ).

fof(t46_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) )
     => ( ! [E] :
            ( in(E,relation_inverse_image(D,C))
          <=> ( in(apply(D,E),C)
              & in(E,A) ) )
       <= B != empty_set ) ) ).

fof(s1_tarski__e4_7_2__tops_2__1,axiom,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ! [C,D,E] :
            ( ( in(C,B)
              & ! [G] :
                  ( element(G,powerset(the_carrier(A)))
                 => ( E = subset_complement(the_carrier(A),G)
                   <= G = C ) )
              & in(C,B)
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( subset_complement(the_carrier(A),F) = D
                   <= F = C ) ) )
           => D = E )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,B)
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( H = E
                     => D = subset_complement(the_carrier(A),H) ) )
                & in(E,B) ) ) ) ) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( ! [C,D] :
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(C,D),A) )
          <=> A = B ) )
     <= relation(A) ) ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( relation(C)
      & function(C)
      & relation_of2(C,A,B) ) ).

fof(t1_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(B,C)
        & subset(A,B) )
     => subset(A,C) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(t5_wellord1,lemma,
    ! [A] :
      ( ( well_founded_relation(A)
      <=> is_well_founded_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_rng_as_subset(A,B,C),powerset(B)) ) ).

fof(s2_funct_1__e4_7_1__tops_2,lemma,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ( ! [C,D,E] :
              ( ( in(C,complements_of_subsets(the_carrier(A),B))
                & ! [F] :
                    ( ( F = C
                     => subset_complement(the_carrier(A),F) = D )
                   <= element(F,powerset(the_carrier(A))) )
                & ! [G] :
                    ( element(G,powerset(the_carrier(A)))
                   => ( G = C
                     => E = subset_complement(the_carrier(A),G) ) ) )
             => E = D )
          & ! [C] :
              ~ ( ! [D] :
                    ~ ! [H] :
                        ( element(H,powerset(the_carrier(A)))
                       => ( H = C
                         => D = subset_complement(the_carrier(A),H) ) )
                & in(C,complements_of_subsets(the_carrier(A),B)) ) )
       => ? [C] :
            ( relation(C)
            & ! [D] :
                ( in(D,complements_of_subsets(the_carrier(A),B))
               => ! [I] :
                    ( element(I,powerset(the_carrier(A)))
                   => ( I = D
                     => apply(C,D) = subset_complement(the_carrier(A),I) ) ) )
            & complements_of_subsets(the_carrier(A),B) = relation_dom(C)
            & function(C) ) ) ) ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(t23_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( B = relation_rng_as_subset(A,B,C)
      <=> ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(E,D),C) ) ) ) ).

fof(t61_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( ( subrelstr(B,A)
            & full_subrelstr(B,A) )
         => ! [C] :
              ( element(C,the_carrier(A))
             => ! [D] :
                  ( ! [E] :
                      ( ! [F] :
                          ( element(F,the_carrier(B))
                         => ( ( C = E
                              & F = D
                              & related(A,C,D)
                              & in(F,the_carrier(B))
                              & in(E,the_carrier(B)) )
                           => related(B,E,F) ) )
                     <= element(E,the_carrier(B)) )
                 <= element(D,the_carrier(A)) ) ) )
     <= rel_str(A) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => subset_difference(A,B,C) = set_difference(B,C) ) ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( element(meet(A,B,C),the_carrier(A))
     <= ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A) ) ) ).

fof(t29_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( join_of_latt_set(A,B) = join_on_relstr(poset_of_lattice(A),B)
          & meet_of_latt_set(A,B) = meet_on_relstr(poset_of_lattice(A),B) )
     <= ( lattice(A)
        & complete_latt_str(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t26_lattices,lemma,
    ! [A] :
      ( ( join_semilatt_str(A)
        & join_commutative(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ! [C] :
              ( ( ( below(A,C,B)
                  & below(A,B,C) )
               => B = C )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(dt_k2_lattice3,axiom,
    ! [A] :
      ( ( reflexive(k2_lattice3(A))
        & relation_of2_as_subset(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & v1_partfun1(k2_lattice3(A),the_carrier(A),the_carrier(A))
        & transitive(k2_lattice3(A))
        & antisymmetric(k2_lattice3(A)) )
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(t174_relat_1,lemma,
    ! [A,B] :
      ( ~ ( subset(A,relation_rng(B))
          & empty_set = relation_inverse_image(B,A)
          & empty_set != A )
     <= relation(B) ) ).

fof(s1_ordinal2__e18_27__finset_1,lemma,
    ( ! [D] :
        ( ordinal(D)
       => ( ! [R] :
              ( element(R,powerset(powerset(D)))
             => ~ ( empty_set != R
                  & ! [S] :
                      ~ ( ! [T] :
                            ( ( in(T,R)
                              & subset(S,T) )
                           => S = T )
                        & in(S,R) ) ) )
         <= in(D,omega) ) )
   <= ( ! [D] :
          ( ( ( ! [E] :
                  ( element(E,powerset(powerset(D)))
                 => ~ ( ! [F] :
                          ~ ( in(F,E)
                            & ! [G] :
                                ( ( subset(F,G)
                                  & in(G,E) )
                               => G = F ) )
                      & empty_set != E ) )
             <= in(D,omega) )
           => ( ! [H] :
                  ( element(H,powerset(powerset(succ(D))))
                 => ~ ( H != empty_set
                      & ! [I] :
                          ~ ( in(I,H)
                            & ! [J] :
                                ( I = J
                               <= ( in(J,H)
                                  & subset(I,J) ) ) ) ) )
             <= in(succ(D),omega) ) )
         <= ordinal(D) )
      & ! [D] :
          ( ( ( being_limit_ordinal(D)
              & ! [K] :
                  ( ordinal(K)
                 => ( in(K,D)
                   => ( ! [L] :
                          ( element(L,powerset(powerset(K)))
                         => ~ ( L != empty_set
                              & ! [M] :
                                  ~ ( ! [N] :
                                        ( M = N
                                       <= ( in(N,L)
                                          & subset(M,N) ) )
                                    & in(M,L) ) ) )
                     <= in(K,omega) ) ) ) )
           => ( empty_set = D
              | ( ! [O] :
                    ( element(O,powerset(powerset(D)))
                   => ~ ( ! [P] :
                            ~ ( in(P,O)
                              & ! [Q] :
                                  ( P = Q
                                 <= ( in(Q,O)
                                    & subset(P,Q) ) ) )
                        & empty_set != O ) )
               <= in(D,omega) ) ) )
         <= ordinal(D) )
      & ( ! [A] :
            ( ~ ( ! [B] :
                    ~ ( in(B,A)
                      & ! [C] :
                          ( ( in(C,A)
                            & subset(B,C) )
                         => B = C ) )
                & A != empty_set )
           <= element(A,powerset(powerset(empty_set))) )
       <= in(empty_set,omega) ) ) ) ).

fof(fc2_ordinal1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & function(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set)
    & empty(empty_set)
    & one_to_one(empty_set) ) ).

fof(d8_filter_1,axiom,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => relation_of_lattice(A) = a_1_0_filter_1(A) ) ).

fof(rc2_tops_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A)
          & closed_subset(B,A) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(t39_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( ( subset(A,relation_field(B))
          & well_ordering(B) )
       => relation_field(relation_restriction(B,A)) = A ) ) ).

fof(d4_lattice3,axiom,
    ! [A] :
      ( ! [B] :
          ( B = cast_to_el_of_lattice(A,B)
         <= element(B,the_carrier(poset_of_lattice(A))) )
     <= ( lattice(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t3_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( disjoint(A,B)
          & ? [C] :
              ( in(C,B)
              & in(C,A) ) )
      & ~ ( ~ disjoint(A,B)
          & ! [C] :
              ~ ( in(C,B)
                & in(C,A) ) ) ) ).

fof(t42_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ( ~ ( being_limit_ordinal(A)
            & ? [B] :
                ( ordinal(B)
                & succ(B) = A ) )
        & ~ ( ! [B] :
                ( succ(B) != A
               <= ordinal(B) )
            & ~ being_limit_ordinal(A) ) ) ) ).

fof(dt_k1_wellord2,axiom,
    ! [A] : relation(inclusion_relation(A)) ).

fof(l25_zfmisc_1,lemma,
    ! [A,B] :
      ~ ( in(A,B)
        & disjoint(singleton(A),B) ) ).

fof(cc2_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( onto(C,A,B)
          & quasi_total(C,A,B)
          & one_to_one(C)
          & function(C) )
       <= ( function(C)
          & bijective(C,A,B)
          & quasi_total(C,A,B) ) )
     <= relation_of2(C,A,B) ) ).

fof(s1_xboole_0__e4_7_2__tops_2__1,lemma,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ! [C] :
        ? [D] :
        ! [E] :
          ( ( ? [F,G] :
                ( in(F,B)
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( G = subset_complement(the_carrier(A),H)
                     <= H = F ) )
                & E = ordered_pair(F,G) )
            & in(E,cartesian_product2(B,C)) )
        <=> in(E,D) ) ) ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( C = relation_image(A,B)
        <=> ! [D] :
              ( ? [E] :
                  ( in(E,relation_dom(A))
                  & in(E,B)
                  & D = apply(A,E) )
            <=> in(D,C) ) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( one_to_one(A)
      & function(A)
      & relation(A) ) ).

fof(s1_xboole_0__e6_22__wellord2,lemma,
    ! [A] :
    ? [B] :
    ! [C] :
      ( in(C,B)
    <=> ( ordinal(C)
        & in(C,A) ) ) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & ordinal(B) )
     => ordinal_subset(A,A) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( disjoint(A,C)
     <= ( subset(A,B)
        & disjoint(B,C) ) ) ).

fof(s1_tarski__e10_24__wellord2__2,axiom,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ! [C] :
          ( ? [D] :
            ! [E] :
              ( in(E,D)
            <=> ? [F] :
                  ( ? [O,P] :
                      ( in(O,A)
                      & ? [Q] :
                          ( O = Q
                          & ! [R] :
                              ( in(R,Q)
                             => in(ordered_pair(P,R),B) )
                          & in(P,Q) )
                      & E = ordered_pair(O,P) )
                  & E = F
                  & in(F,cartesian_product2(A,C)) ) )
         <= ! [D,E,F] :
              ( F = E
             <= ( F = D
                & ? [K,L] :
                    ( in(K,A)
                    & ? [M] :
                        ( K = M
                        & ! [N] :
                            ( in(ordered_pair(L,N),B)
                           <= in(N,M) )
                        & in(L,M) )
                    & ordered_pair(K,L) = F )
                & ? [G,H] :
                    ( in(G,A)
                    & ? [I] :
                        ( ! [J] :
                            ( in(ordered_pair(H,J),B)
                           <= in(J,I) )
                        & in(H,I)
                        & I = G )
                    & ordered_pair(G,H) = E )
                & E = D ) ) ) ) ).

fof(s3_funct_1__e16_22__wellord2,lemma,
    ! [A] :
    ? [B] :
      ( function(B)
      & ! [C] :
          ( singleton(C) = apply(B,C)
         <= in(C,A) )
      & A = relation_dom(B)
      & relation(B) ) ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( is_connected_in(A,relation_field(A))
      <=> connected(A) ) ) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_intersection2(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) ).

fof(redefinition_k6_partfun1,axiom,
    ! [A] : identity_as_relation_of(A) = identity_relation(A) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(B,A) = unordered_pair(A,B) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( function(A)
      & empty(A)
      & relation(A) ) ).

fof(s2_funct_1__e10_24__wellord2,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( relation(C)
            & relation_dom(C) = A
            & ! [D] :
                ( in(D,A)
               => ? [L] :
                    ( in(apply(C,D),L)
                    & ! [M] :
                        ( in(M,L)
                       => in(ordered_pair(apply(C,D),M),B) )
                    & L = D ) )
            & function(C) )
       <= ( ! [C,D,E] :
              ( D = E
             <= ( ? [H] :
                    ( C = H
                    & in(E,H)
                    & ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(E,I),B) ) )
                & ? [F] :
                    ( C = F
                    & ! [G] :
                        ( in(G,F)
                       => in(ordered_pair(D,G),B) )
                    & in(D,F) )
                & in(C,A) ) )
          & ! [C] :
              ~ ( in(C,A)
                & ! [D] :
                    ~ ? [J] :
                        ( J = C
                        & ! [K] :
                            ( in(K,J)
                           => in(ordered_pair(D,K),B) )
                        & in(D,J) ) ) ) )
     <= ( ~ empty(A)
        & relation(B) ) ) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

fof(t15_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( subset_intersection2(the_carrier(A),B,cast_as_carrier_subset(A)) = B
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(s1_tarski__e4_7_2__tops_2__2,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) )
     => ! [C] :
          ( ? [D] :
            ! [E] :
              ( in(E,D)
            <=> ? [F] :
                  ( in(F,cartesian_product2(B,C))
                  & E = F
                  & ? [M,N] :
                      ( E = ordered_pair(M,N)
                      & ! [O] :
                          ( ( M = O
                           => subset_complement(the_carrier(A),O) = N )
                         <= element(O,powerset(the_carrier(A))) )
                      & in(M,B) ) ) )
         <= ! [D,E,F] :
              ( E = F
             <= ( ? [G,H] :
                    ( in(G,B)
                    & ! [I] :
                        ( ( H = subset_complement(the_carrier(A),I)
                         <= I = G )
                       <= element(I,powerset(the_carrier(A))) )
                    & E = ordered_pair(G,H) )
                & ? [J,K] :
                    ( in(J,B)
                    & ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( K = subset_complement(the_carrier(A),L)
                         <= L = J ) )
                    & F = ordered_pair(J,K) )
                & F = D
                & D = E ) ) ) ) ).

fof(rc6_lattices,axiom,
    ? [A] :
      ( latt_str(A)
      & ~ empty_carrier(A)
      & strict_latt_str(A) ) ).

fof(l2_wellord1,lemma,
    ! [A] :
      ( ( transitive(A)
      <=> ! [B,C,D] :
            ( ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,D),A) )
           => in(ordered_pair(B,D),A) ) )
     <= relation(A) ) ).

fof(t50_lattice3,lemma,
    ! [A] :
      ( ( lattice(A)
        & latt_str(A)
        & complete_latt_str(A)
        & ~ empty_carrier(A) )
     => ( latt_str(A)
        & bottom_of_semilattstr(A) = join_of_latt_set(A,empty_set)
        & lower_bounded_semilattstr(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_k1_tops_1,axiom,
    ! [A,B] :
      ( element(interior(A,B),powerset(the_carrier(A)))
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A))) ) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v5_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B)) )
     <= v5_membered(A) ) ).

fof(t37_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
    <=> subset(singleton(A),B) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A) )
     <= empty(A) ) ).

fof(t116_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_rng_restriction(A,B)),A) ) ).

fof(t68_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( relation_dom_restriction(C,A) = B
          <=> ( ! [D] :
                  ( apply(C,D) = apply(B,D)
                 <= in(D,relation_dom(B)) )
              & set_intersection2(relation_dom(C),A) = relation_dom(B) ) )
         <= ( function(C)
            & relation(C) ) ) ) ).

fof(t32_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ~ ( empty_set != A
          & ! [C] :
              ( ~ ( in(C,A)
                  & ! [D] :
                      ( ( ordinal_subset(C,D)
                       <= in(D,A) )
                     <= ordinal(D) ) )
             <= ordinal(C) )
          & subset(A,B) ) ) ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( C = A
        <=> in(C,B) )
    <=> B = singleton(A) ) ).

fof(s1_tarski__e8_6__wellord2__1,axiom,
    ! [A,B] :
      ( ordinal(B)
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( E = D
                & ? [H] :
                    ( ordinal(H)
                    & in(H,A)
                    & D = H )
                & in(E,succ(B)) ) )
       <= ! [C,D,E] :
            ( ( E = C
              & ? [G] :
                  ( ordinal(G)
                  & in(G,A)
                  & E = G )
              & ? [F] :
                  ( D = F
                  & in(F,A)
                  & ordinal(F) )
              & C = D )
           => E = D ) ) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ( ! [D,E] :
                ( ( in(ordered_pair(D,E),A)
                  & in(D,B) )
              <=> in(ordered_pair(D,E),C) )
          <=> C = relation_dom_restriction(A,B) )
         <= relation(C) )
     <= relation(A) ) ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( ( ordinal(succ(A))
        & epsilon_connected(succ(A))
        & epsilon_transitive(succ(A))
        & ~ empty(succ(A)) )
     <= ordinal(A) ) ).

fof(t55_funct_1,lemma,
    ! [A] :
      ( ( ( relation_dom(function_inverse(A)) = relation_rng(A)
          & relation_dom(A) = relation_rng(function_inverse(A)) )
       <= one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ).

fof(t3_boole,axiom,
    ! [A] : A = set_difference(A,empty_set) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( ! [B] :
          ( subset(B,A)
         <= in(B,A) )
    <=> epsilon_transitive(A) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( ( v1_xreal_0(B)
            & v1_rat_1(B)
            & v1_xcmplx_0(B) )
         <= element(B,A) ) ) ).

fof(d6_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ( is_antisymmetric_in(the_InternalRel(A),the_carrier(A))
      <=> antisymmetric_relstr(A) ) ) ).

fof(d5_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( open_subset(B,A)
          <=> in(B,the_topology(A)) ) ) ) ).

fof(t48_xboole_1,lemma,
    ! [A,B] : set_difference(A,set_difference(A,B)) = set_intersection2(A,B) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => set_difference(A,B) = subset_complement(A,B) ) ).

fof(cc3_arytm_3,axiom,
    ! [A] :
      ( element(A,omega)
     => ( epsilon_connected(A)
        & natural(A)
        & ordinal(A)
        & epsilon_transitive(A) ) ) ).

fof(commutativity_k4_subset_1,axiom,
    ! [A,B,C] :
      ( subset_union2(A,C,B) = subset_union2(A,B,C)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & function(A)
        & finite(B) )
     => finite(relation_image(A,B)) ) ).

fof(s1_tarski__e6_22__wellord2__1,axiom,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( ? [D] :
              ( ordinal(C)
              & C = D
              & in(D,A) )
        <=> in(C,B) )
     <= ! [B,C,D] :
          ( C = D
         <= ( C = B
            & ordinal(C)
            & D = B
            & ordinal(D) ) ) ) ).

fof(redefinition_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) ).

fof(d1_tops_2,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( open_subsets(B,A)
          <=> ! [C] :
                ( element(C,powerset(the_carrier(A)))
               => ( open_subset(C,A)
                 <= in(C,B) ) ) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ~ ( ! [C,D] : ordered_pair(C,D) != B
            & in(B,A) )
    <=> relation(A) ) ).

fof(t3_lattice3,lemma,
    ! [A] :
      ( lower_bounded_semilattstr(boole_lattice(A))
      & empty_set = bottom_of_semilattstr(boole_lattice(A)) ) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(fc1_orders_2,axiom,
    ! [A,B] :
      ( ( strict_rel_str(rel_str_of(A,B))
        & ~ empty_carrier(rel_str_of(A,B)) )
     <= ( ~ empty(A)
        & relation_of2(B,A,A) ) ) ).

fof(s1_xboole_0__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ! [C] :
        ? [D] :
        ! [E] :
          ( ( ? [F,G] :
                ( in(F,A)
                & ? [H] :
                    ( ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(G,I),B) )
                    & in(G,H)
                    & F = H )
                & E = ordered_pair(F,G) )
            & in(E,cartesian_product2(A,C)) )
        <=> in(E,D) )
     <= ( relation(B)
        & ~ empty(A) ) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( A = C
        & B = D )
     <= ordered_pair(C,D) = ordered_pair(A,B) ) ).

fof(l40_tops_1,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,the_carrier(A))
             => ( in(C,subset_complement(the_carrier(A),B))
              <=> ~ in(C,B) ) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t9_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) )
     => ( subset(B,C)
       => ( ( relation_of2_as_subset(D,A,C)
            & quasi_total(D,A,C)
            & function(D) )
          | ( A != empty_set
            & B = empty_set ) ) ) ) ).

fof(l29_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B)) ) ).

fof(redefinition_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => meet_of_subsets(A,B) = set_meet(B) ) ).

fof(d4_wellord1,axiom,
    ! [A] :
      ( ( well_ordering(A)
      <=> ( connected(A)
          & well_founded_relation(A)
          & antisymmetric(A)
          & transitive(A)
          & reflexive(A) ) )
     <= relation(A) ) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => ( quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A)) ) ) ).

fof(dt_k1_pcomps_1,axiom,
    ! [A] : element(k1_pcomps_1(A),powerset(powerset(A))) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) ).

fof(d1_binop_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] : apply_binary(A,B,C) = apply(A,ordered_pair(B,C)) ) ).

fof(dt_k4_lattice3,axiom,
    ! [A,B] :
      ( element(cast_to_el_of_LattPOSet(A,B),the_carrier(poset_of_lattice(A)))
     <= ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A)
        & element(B,the_carrier(A)) ) ) ).

fof(t144_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_image(B,A),relation_rng(B)) ) ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(union_of_subsets(A,B),powerset(A)) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => element(subset_difference(A,B,C),powerset(A)) ) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) ).

fof(l32_xboole_1,lemma,
    ! [A,B] :
      ( set_difference(A,B) = empty_set
    <=> subset(A,B) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ( in(B,D)
        & in(A,C) )
    <=> in(ordered_pair(A,B),cartesian_product2(C,D)) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_rng(A)) ) ).

fof(t2_lattice3,lemma,
    ! [A,B] :
      ( element(B,the_carrier(boole_lattice(A)))
     => ! [C] :
          ( element(C,the_carrier(boole_lattice(A)))
         => ( subset(B,C)
          <=> below(boole_lattice(A),B,C) ) ) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( apply_binary(D,E,F) = apply_binary_as_element(A,B,C,D,E,F)
     <= ( ~ empty(B)
        & quasi_total(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B)
        & relation_of2(D,cartesian_product2(A,B),C)
        & function(D)
        & ~ empty(A) ) ) ).

fof(t23_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ! [C] :
          ( ( apply(C,apply(B,A)) = apply(relation_composition(B,C),A)
           <= in(A,relation_dom(B)) )
         <= ( function(C)
            & relation(C) ) ) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) )
     <= v4_membered(A) ) ).

fof(fc3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(latt_str_of(A,B,C))
        & strict_latt_str(latt_str_of(A,B,C)) )
     <= ( ~ empty(A)
        & function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & function(C)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A) ) ) ).

fof(t5_tops_2,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( ~ ( B = empty_set
              & is_a_cover_of_carrier(A,B) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(d22_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ! [B] : meet_of_latt_set(A,B) = join_of_latt_set(A,a_2_2_lattice3(A,B)) ) ).

fof(d2_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( well_founded_relation(A)
      <=> ! [B] :
            ~ ( ! [C] :
                  ~ ( in(C,B)
                    & disjoint(fiber(A,C),B) )
              & B != empty_set
              & subset(B,relation_field(A)) ) ) ) ).

fof(d1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ( topological_space(A)
      <=> ( ! [B] :
              ( ( subset(B,the_topology(A))
               => in(union_of_subsets(the_carrier(A),B),the_topology(A)) )
             <= element(B,powerset(powerset(the_carrier(A)))) )
          & ! [B] :
              ( element(B,powerset(the_carrier(A)))
             => ! [C] :
                  ( ( ( in(C,the_topology(A))
                      & in(B,the_topology(A)) )
                   => in(subset_intersection2(the_carrier(A),B,C),the_topology(A)) )
                 <= element(C,powerset(the_carrier(A))) ) )
          & in(the_carrier(A),the_topology(A)) ) ) ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => A = relation_inverse(relation_inverse(A)) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(t12_tops_2,lemma,
    ! [A,B] :
      ( ( B != empty_set
       => union_of_subsets(A,complements_of_subsets(A,B)) = subset_complement(A,meet_of_subsets(A,B)) )
     <= element(B,powerset(powerset(A))) ) ).

fof(d4_subset_1,axiom,
    ! [A] : cast_to_subset(A) = A ).

fof(t146_funct_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,set_difference(B,singleton(C)))
        | in(C,A) )
     <= subset(A,B) ) ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( relation(relation_rng(A))
        & empty(relation_rng(A)) ) ) ).

fof(dt_u2_lattices,axiom,
    ! [A] :
      ( join_semilatt_str(A)
     => ( relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_join(A)) ) ) ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( meet_commutative(A)
        & meet_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & ~ empty_carrier(A) )
     => meet_commut(A,C,B) = meet_commut(A,B,C) ) ).

fof(t41_ordinal1,lemma,
    ! [A] :
      ( ( ! [B] :
            ( ( in(succ(B),A)
             <= in(B,A) )
           <= ordinal(B) )
      <=> being_limit_ordinal(A) )
     <= ordinal(A) ) ).

fof(redefinition_r3_lattices,axiom,
    ! [A,B,C] :
      ( ( meet_commutative(A)
        & latt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_absorbing(A)
        & meet_absorbing(A)
        & ~ empty_carrier(A) )
     => ( below(A,B,C)
      <=> below_refl(A,B,C) ) ) ).

fof(d1_struct_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty(the_carrier(A))
      <=> empty_carrier(A) ) ) ).

fof(t5_tex_2,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ( proper_element(B,powerset(A))
      <=> A != B ) ) ).

fof(abstractness_v1_orders_2,axiom,
    ! [A] :
      ( ( A = rel_str_of(the_carrier(A),the_InternalRel(A))
       <= strict_rel_str(A) )
     <= rel_str(A) ) ).

fof(t26_finset_1,lemma,
    ! [A] :
      ( ( finite(relation_rng(A))
       <= finite(relation_dom(A)) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(rc2_funct_2,axiom,
    ! [A] :
    ? [B] :
      ( relation(B)
      & one_to_one(B)
      & quasi_total(B,A,A)
      & bijective(B,A,A)
      & onto(B,A,A)
      & function(B)
      & relation_of2(B,A,A) ) ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(A))
        & element(C,powerset(A)) )
     => subset_intersection2(A,B,B) = B ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_dom(C) = relation_dom_as_subset(A,B,C) ) ).

fof(fc12_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_difference(A,B)) ) ).

fof(t13_finset_1,lemma,
    ! [A,B] :
      ( ( subset(A,B)
        & finite(B) )
     => finite(A) ) ).

fof(s1_xboole_0__e18_27__finset_1__1,lemma,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ( in(C,succ(A))
            & ? [D] :
                ( D = C
                & ( in(D,omega)
                 => ! [E] :
                      ( ~ ( empty_set != E
                          & ! [F] :
                              ~ ( in(F,E)
                                & ! [G] :
                                    ( F = G
                                   <= ( in(G,E)
                                      & subset(F,G) ) ) ) )
                     <= element(E,powerset(powerset(D))) ) )
                & ordinal(D) ) ) )
     <= ordinal(A) ) ).

fof(existence_m1_connsp_2,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & top_str(A)
        & topological_space(A) )
     => ? [C] : point_neighbourhood(C,A,B) ) ).

fof(t38_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(B,C)
        & in(A,C) ) ) ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> subset(C,cartesian_product2(A,B)) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( relation_inverse_image(A,B) = C
        <=> ! [D] :
              ( in(D,C)
            <=> ( in(D,relation_dom(A))
                & in(apply(A,D),B) ) ) ) ) ).

fof(fc2_pre_topc,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( C = relation_composition(A,B)
              <=> ! [D,E] :
                    ( ? [F] :
                        ( in(ordered_pair(F,E),B)
                        & in(ordered_pair(D,F),A) )
                  <=> in(ordered_pair(D,E),C) ) )
             <= relation(C) ) )
     <= relation(A) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(complements_of_subsets(A,B),powerset(powerset(A))) ) ).

fof(fc5_lattice2,axiom,
    ! [A] :
      ( ( relation(the_L_meet(A))
        & v2_binop_1(the_L_meet(A),the_carrier(A))
        & v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A)) )
     <= ( ~ empty_carrier(A)
        & meet_semilatt_str(A)
        & meet_associative(A) ) ) ).

fof(dt_k4_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_union2(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(d16_lattices,axiom,
    ! [A] :
      ( ( lower_bounded_semilattstr(A)
       => ! [B] :
            ( element(B,the_carrier(A))
           => ( B = bottom_of_semilattstr(A)
            <=> ! [C] :
                  ( element(C,the_carrier(A))
                 => ( meet(A,B,C) = B
                    & meet(A,C,B) = B ) ) ) ) )
     <= ( meet_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ! [B] :
          ( B = relation_rng(A)
        <=> ! [C] :
              ( ? [D] :
                  ( in(D,relation_dom(A))
                  & apply(A,D) = C )
            <=> in(C,B) ) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(t145_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_image(B,set_intersection2(relation_dom(B),A)) = relation_image(B,A) ) ).

fof(fc3_orders_2,axiom,
    ! [A,B] :
      ( ( strict_rel_str(rel_str_of(A,B))
        & reflexive_relstr(rel_str_of(A,B))
        & transitive_relstr(rel_str_of(A,B))
        & antisymmetric_relstr(rel_str_of(A,B)) )
     <= ( antisymmetric(B)
        & transitive(B)
        & v1_partfun1(B,A,A)
        & relation_of2(B,A,A)
        & reflexive(B) ) ) ).

fof(fraenkel_a_2_3_lattice3,axiom,
    ! [A,B,C] :
      ( ( ? [D] :
            ( element(D,the_carrier(B))
            & latt_set_smaller(B,D,C)
            & D = A )
      <=> in(A,a_2_3_lattice3(B,C)) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & complete_latt_str(B)
        & latt_str(B) ) ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v3_membered(B)
            & v2_membered(B)
            & v1_membered(B) ) )
     <= v3_membered(A) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( meet_commut(A,B,C) = meet(A,B,C)
     <= ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & meet_commutative(A) ) ) ).

fof(t46_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( ? [C] :
              ( element(C,powerset(powerset(the_carrier(A))))
              & ! [D] :
                  ( element(D,powerset(the_carrier(A)))
                 => ( in(D,C)
                  <=> ( subset(B,D)
                      & closed_subset(D,A) ) ) )
              & meet_of_subsets(the_carrier(A),C) = topstr_closure(A,B) )
         <= element(B,powerset(the_carrier(A))) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(s1_xboole_0__e1_40__pre_topc__1,lemma,
    ! [A,B] :
      ( ( topological_space(A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) )
     => ? [C] :
        ! [D] :
          ( ( in(D,powerset(the_carrier(A)))
            & ? [E] :
                ( element(E,powerset(the_carrier(A)))
                & E = D
                & subset(B,D)
                & closed_subset(E,A) ) )
        <=> in(D,C) ) ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(t117_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng_restriction(A,B),B) ) ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_union2(A,B)
    <=> ! [D] :
          ( ( in(D,B)
            | in(D,A) )
        <=> in(D,C) ) ) ).

fof(d12_relat_2,axiom,
    ! [A] :
      ( ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(s1_xboole_0__e11_2_1__waybel_0__1,conjecture,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & transitive_relstr(A)
        & rel_str(A)
        & element(C,powerset(B))
        & finite(C)
        & element(B,powerset(the_carrier(A))) )
     => ? [D] :
        ! [E] :
          ( ( in(E,powerset(C))
            & ? [F] :
                ( E = F
                & ? [G] :
                    ( relstr_set_smaller(A,F,G)
                    & in(G,B)
                    & element(G,the_carrier(A)) ) ) )
        <=> in(E,D) ) ) ).

fof(t25_wellord1,lemma,
    ! [A,B] :
      ( ( antisymmetric(relation_restriction(B,A))
       <= antisymmetric(B) )
     <= relation(B) ) ).

fof(s1_xboole_0__e4_7_1__tops_2__1,lemma,
    ! [A,B] :
      ( ! [C] :
        ? [D] :
        ! [E] :
          ( ( in(E,cartesian_product2(complements_of_subsets(the_carrier(A),B),C))
            & ? [F,G] :
                ( ! [H] :
                    ( ( subset_complement(the_carrier(A),H) = G
                     <= F = H )
                   <= element(H,powerset(the_carrier(A))) )
                & in(F,complements_of_subsets(the_carrier(A),B))
                & ordered_pair(F,G) = E ) )
        <=> in(E,D) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( B = set_union2(A,set_difference(B,A))
     <= subset(A,B) ) ).

fof(t145_funct_1,lemma,
    ! [A,B] :
      ( subset(relation_image(B,relation_inverse_image(B,A)),A)
     <= ( function(B)
        & relation(B) ) ) ).

fof(redefinition_k1_domain_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & ~ empty(B)
        & element(D,B)
        & element(C,A) )
     => ordered_pair(C,D) = ordered_pair_as_product_element(A,B,C,D) ) ).

fof(t65_relat_1,lemma,
    ! [A] :
      ( ( relation_dom(A) = empty_set
      <=> empty_set = relation_rng(A) )
     <= relation(A) ) ).

fof(s1_xboole_0__e6_27__finset_1,lemma,
    ! [A,B,C] :
      ( ( element(B,powerset(powerset(A)))
        & relation(C)
        & function(C) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( in(relation_image(C,E),B)
            & in(E,powerset(relation_dom(C))) ) ) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = relation_inverse_image(A,B)
        <=> ! [D] :
              ( ? [E] :
                  ( in(E,B)
                  & in(ordered_pair(D,E),A) )
            <=> in(D,C) ) ) ) ).

fof(t4_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( disjoint(A,B)
          & ? [C] : in(C,set_intersection2(A,B)) )
      & ~ ( ~ disjoint(A,B)
          & ! [C] : ~ in(C,set_intersection2(A,B)) ) ) ).

fof(s1_relat_1__e6_21__wellord2,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C)
        & relation(B) )
     => ? [D] :
          ( ! [E,F] :
              ( in(ordered_pair(E,F),D)
            <=> ( in(ordered_pair(apply(C,E),apply(C,F)),B)
                & in(F,A)
                & in(E,A) ) )
          & relation(D) ) ) ).

fof(fc1_ordinal2,axiom,
    ( epsilon_connected(omega)
    & ~ empty(omega)
    & ordinal(omega)
    & epsilon_transitive(omega) ) ).

fof(t13_tops_2,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( ( finite(complements_of_subsets(the_carrier(A),B))
          <=> finite(B) )
         <= element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(t12_xboole_1,lemma,
    ! [A,B] :
      ( set_union2(A,B) = B
     <= subset(A,B) ) ).

fof(s1_tarski__e4_7_1__tops_2__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( E = H
                     => D = subset_complement(the_carrier(A),H) ) )
                & in(E,complements_of_subsets(the_carrier(A),B))
                & in(E,complements_of_subsets(the_carrier(A),B)) ) )
       <= ! [C,D,E] :
            ( E = D
           <= ( ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( F = C
                   => subset_complement(the_carrier(A),F) = D ) )
              & ! [G] :
                  ( ( E = subset_complement(the_carrier(A),G)
                   <= G = C )
                 <= element(G,powerset(the_carrier(A))) )
              & in(C,complements_of_subsets(the_carrier(A),B))
              & in(C,complements_of_subsets(the_carrier(A),B)) ) ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(fc3_lattice2,axiom,
    ! [A] :
      ( ( join_associative(A)
        & join_semilatt_str(A)
        & ~ empty_carrier(A) )
     => ( function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v2_binop_1(the_L_join(A),the_carrier(A))
        & relation(the_L_join(A)) ) ) ).

fof(t99_zfmisc_1,lemma,
    ! [A] : union(powerset(A)) = A ).

fof(s1_tarski__e6_27__finset_1__1,axiom,
    ! [A,B,C] :
      ( ( ! [D,E,F] :
            ( ( E = D
              & in(relation_image(C,F),B)
              & D = F
              & in(relation_image(C,E),B) )
           => E = F )
       => ? [D] :
          ! [E] :
            ( ? [F] :
                ( in(F,powerset(relation_dom(C)))
                & in(relation_image(C,E),B)
                & F = E )
          <=> in(E,D) ) )
     <= ( function(C)
        & relation(C)
        & element(B,powerset(powerset(A))) ) ) ).

fof(t10_tops_2,lemma,
    ! [A,B] :
      ( ( ~ ( complements_of_subsets(A,B) = empty_set
            & B != empty_set )
        & ~ ( B = empty_set
            & empty_set != complements_of_subsets(A,B) ) )
     <= element(B,powerset(powerset(A))) ) ).

fof(t166_relat_1,lemma,
    ! [A,B,C] :
      ( ( in(A,relation_inverse_image(C,B))
      <=> ? [D] :
            ( in(D,relation_rng(C))
            & in(D,B)
            & in(ordered_pair(A,D),C) ) )
     <= relation(C) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) ) ) ).

fof(dt_u1_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => element(the_topology(A),powerset(powerset(the_carrier(A)))) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : succ(A) = set_union2(A,singleton(A)) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(t44_yellow_0,lemma,
    ! [A] :
      ( ( rel_str(A)
        & lower_bounded_relstr(A)
        & antisymmetric_relstr(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( related(A,bottom_of_relstr(A),B)
         <= element(B,the_carrier(A)) ) ) ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(dt_g1_orders_2,axiom,
    ! [A,B] :
      ( relation_of2(B,A,A)
     => ( rel_str(rel_str_of(A,B))
        & strict_rel_str(rel_str_of(A,B)) ) ) ).

fof(t45_pre_topc,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ! [C] :
              ( ( in(C,topstr_closure(A,B))
              <=> ! [D] :
                    ( element(D,powerset(the_carrier(A)))
                   => ( in(C,D)
                     <= ( subset(B,D)
                        & closed_subset(D,A) ) ) ) )
             <= in(C,the_carrier(A)) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d8_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ex_inf_of_relstr_set(A,B)
        <=> ? [C] :
              ( relstr_element_smaller(A,B,C)
              & ! [D] :
                  ( ( relstr_element_smaller(A,B,D)
                   => related(A,D,C) )
                 <= element(D,the_carrier(A)) )
              & ! [D] :
                  ( ( D = C
                   <= ( ! [E] :
                          ( ( relstr_element_smaller(A,B,E)
                           => related(A,E,D) )
                         <= element(E,the_carrier(A)) )
                      & relstr_element_smaller(A,B,D) ) )
                 <= element(D,the_carrier(A)) )
              & element(C,the_carrier(A)) ) ) ) ).

fof(t1_boole,axiom,
    ! [A] : set_union2(A,empty_set) = A ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( empty(A)
      & relation(A) ) ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ? [E,F] :
              ( in(F,B)
              & D = ordered_pair(E,F)
              & in(E,A) ) )
    <=> C = cartesian_product2(A,B) ) ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= top_str(A) ) ).

fof(redefinition_k10_filter_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & ~ empty_carrier(B)
        & lattice(B)
        & element(D,the_carrier(B))
        & element(C,the_carrier(A))
        & latt_str(B)
        & latt_str(A) )
     => ordered_pair(C,D) = k10_filter_1(A,B,C,D) ) ).

fof(existence_l1_lattices,axiom,
    ? [A] : meet_semilatt_str(A) ).

fof(t6_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ( relstr_set_smaller(A,empty_set,B)
            & relstr_element_smaller(A,empty_set,B) ) )
     <= rel_str(A) ) ).

fof(dt_k9_filter_1,axiom,
    ! [A] :
      ( relation(relation_of_lattice(A))
     <= ( lattice(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t136_zfmisc_1,lemma,
    ! [A] :
    ? [B] :
      ( in(A,B)
      & ! [C] :
          ( in(powerset(C),B)
         <= in(C,B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) )
      & ! [C,D] :
          ( in(D,B)
         <= ( subset(D,C)
            & in(C,B) ) ) ) ).

fof(l50_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(t10_ordinal1,lemma,
    ! [A] : in(A,succ(A)) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_xcmplx_0(B)
         <= element(B,A) )
     <= v1_membered(A) ) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( proper_subset(A,B)
     => ~ proper_subset(B,A) ) ).

fof(s1_tarski__e2_37_1_1__pre_topc__1,axiom,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & topological_space(A) )
     => ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & D = E
                & in(set_difference(cast_as_carrier_subset(A),D),B) )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( D = E
           <= ( C = D
              & C = E
              & in(set_difference(cast_as_carrier_subset(A),E),B)
              & in(set_difference(cast_as_carrier_subset(A),D),B) ) ) ) ) ).

fof(d2_mcart_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D] :
              ( A = ordered_pair(C,D)
             => B = D )
        <=> pair_second(A) = B )
     <= ? [B,C] : A = ordered_pair(B,C) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(meet_of_subsets(A,B),powerset(A))
     <= element(B,powerset(powerset(A))) ) ).

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

fof(d6_wellord1,axiom,
    ! [A] :
      ( ! [B] : relation_restriction(A,B) = set_intersection2(A,cartesian_product2(B,B))
     <= relation(A) ) ).

fof(s1_funct_1__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ( ! [C,D,E] :
            ( ( ? [F] :
                  ( in(D,F)
                  & ! [G] :
                      ( in(G,F)
                     => in(ordered_pair(D,G),B) )
                  & F = C )
              & ? [H] :
                  ( C = H
                  & ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) )
                  & in(E,H) )
              & in(C,A)
              & in(C,A) )
           => E = D )
       => ? [C] :
            ( relation(C)
            & function(C)
            & ! [D,E] :
                ( ( in(D,A)
                  & ? [J] :
                      ( in(E,J)
                      & ! [K] :
                          ( in(ordered_pair(E,K),B)
                         <= in(K,J) )
                      & D = J )
                  & in(D,A) )
              <=> in(ordered_pair(D,E),C) ) ) ) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     <= relation_of2_as_subset(C,A,B) ) ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( empty(relation_composition(B,A))
        & relation(relation_composition(B,A)) )
     <= ( relation(B)
        & empty(A) ) ) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( ( v1_membered(B)
            & v2_membered(B) )
         <= element(B,powerset(A)) ) ) ).

fof(t3_xboole_1,lemma,
    ! [A] :
      ( empty_set = A
     <= subset(A,empty_set) ) ).

fof(d5_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ( transitive_relstr(A)
      <=> is_transitive_in(the_InternalRel(A),the_carrier(A)) ) ) ).

fof(t119_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => set_intersection2(relation_rng(B),A) = relation_rng(relation_rng_restriction(A,B)) ) ).

fof(dt_k1_toler_1,axiom,
    ! [A,B] :
      ( relation_of2_as_subset(relation_restriction_as_relation_of(A,B),B,B)
     <= relation(A) ) ).

fof(fc2_lattice2,axiom,
    ! [A] :
      ( ( join_semilatt_str(A)
        & join_commutative(A)
        & ~ empty_carrier(A) )
     => ( relation(the_L_join(A))
        & function(the_L_join(A))
        & quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_binop_1(the_L_join(A),the_carrier(A))
        & v1_partfun1(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) ).

fof(s1_tarski__e11_2_1__waybel_0__1,axiom,
    ! [A,B,C] :
      ( ( ? [D] :
          ! [E] :
            ( ? [F] :
                ( E = F
                & ? [K] :
                    ( E = K
                    & ? [L] :
                        ( relstr_set_smaller(A,K,L)
                        & in(L,B)
                        & element(L,the_carrier(A)) ) )
                & in(F,powerset(C)) )
          <=> in(E,D) )
       <= ! [D,E,F] :
            ( ( ? [G] :
                  ( G = E
                  & ? [H] :
                      ( relstr_set_smaller(A,G,H)
                      & in(H,B)
                      & element(H,the_carrier(A)) ) )
              & ? [I] :
                  ( I = F
                  & ? [J] :
                      ( element(J,the_carrier(A))
                      & in(J,B)
                      & relstr_set_smaller(A,I,J) ) )
              & D = F
              & D = E )
           => E = F ) )
     <= ( element(B,powerset(the_carrier(A)))
        & finite(C)
        & element(C,powerset(B))
        & rel_str(A)
        & transitive_relstr(A)
        & ~ empty_carrier(A) ) ) ).

fof(t56_relat_1,lemma,
    ! [A] :
      ( ( empty_set = A
       <= ! [B,C] : ~ in(ordered_pair(B,C),A) )
     <= relation(A) ) ).

fof(s1_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ? [B] :
          ( function(B)
          & ! [C,D] :
              ( in(ordered_pair(C,D),B)
            <=> ( in(C,A)
                & D = singleton(C)
                & in(C,A) ) )
          & relation(B) )
     <= ! [B,C,D] :
          ( ( in(B,A)
            & in(B,A)
            & D = singleton(B)
            & singleton(B) = C )
         => D = C ) ) ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( is_connected_in(A,B)
        <=> ! [C,D] :
              ~ ( in(C,B)
                & in(D,B)
                & ~ in(ordered_pair(D,C),A)
                & ~ in(ordered_pair(C,D),A)
                & C != D ) )
     <= relation(A) ) ).

fof(d4_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D] :
              ( ( in(C,B)
                & in(ordered_pair(D,C),A)
                & in(ordered_pair(C,D),A)
                & in(D,B) )
             => C = D )
        <=> is_antisymmetric_in(A,B) )
     <= relation(A) ) ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(d7_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation_isomorphism(A,B,C)
              <=> ( one_to_one(C)
                  & ! [D,E] :
                      ( ( in(D,relation_field(A))
                        & in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B) )
                    <=> in(ordered_pair(D,E),A) )
                  & relation_field(B) = relation_rng(C)
                  & relation_dom(C) = relation_field(A) ) )
             <= ( function(C)
                & relation(C) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(reflexivity_r3_lattices,axiom,
    ! [A,B,C] :
      ( below_refl(A,B,B)
     <= ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & latt_str(A)
        & join_absorbing(A)
        & meet_absorbing(A)
        & meet_commutative(A) ) ) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & relation(A) )
     => relation(set_union2(A,B)) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & ~ empty(A) ) ).

fof(dt_k3_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) )
     => ( strict_rel_str(poset_of_lattice(A))
        & reflexive_relstr(poset_of_lattice(A))
        & antisymmetric_relstr(poset_of_lattice(A))
        & rel_str(poset_of_lattice(A))
        & transitive_relstr(poset_of_lattice(A)) ) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(d1_lattice3,axiom,
    ! [A,B] :
      ( ( ( ! [C] :
              ( element(C,powerset(A))
             => ! [D] :
                  ( element(D,powerset(A))
                 => ( subset_union2(A,C,D) = apply_binary(the_L_join(B),C,D)
                    & apply_binary(the_L_meet(B),C,D) = subset_intersection2(A,C,D) ) ) )
          & the_carrier(B) = powerset(A) )
      <=> B = boole_lattice(A) )
     <= ( strict_latt_str(B)
        & latt_str(B) ) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= meet_semilatt_str(A) ) ).

fof(dt_k3_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => element(bottom_of_relstr(A),the_carrier(A)) ) ).

fof(d16_relat_2,axiom,
    ! [A] :
      ( ( transitive(A)
      <=> is_transitive_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(idempotence_k4_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => B = subset_union2(A,B,B) ) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( A = B
     <= subset(singleton(A),singleton(B)) ) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_intersection2(A,B))
     <= v1_membered(A) ) ).

fof(t99_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B)) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(abstractness_v3_lattices,axiom,
    ! [A] :
      ( ( A = latt_str_of(the_carrier(A),the_L_join(A),the_L_meet(A))
       <= strict_latt_str(A) )
     <= latt_str(A) ) ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation(relation_inverse(A)) ) ).

fof(t19_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,B)
          & in(A,relation_field(C)) ) ) ) ).

fof(d2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => empty_carrier_subset(A) = empty_set ) ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(rc7_pre_topc,axiom,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A)
        & ~ empty_carrier(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & closed_subset(B,A) ) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => set_union2(relation_dom(A),relation_rng(A)) = relation_field(A) ) ).

fof(dt_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & quasi_total(C,A,B)
        & element(D,A)
        & relation_of2(C,A,B)
        & function(C) )
     => element(apply_as_element(A,B,C,D),B) ) ).

fof(fc2_partfun1,axiom,
    ! [A] :
      ( relation(identity_relation(A))
      & function(identity_relation(A))
      & reflexive(identity_relation(A))
      & antisymmetric(identity_relation(A))
      & transitive(identity_relation(A))
      & symmetric(identity_relation(A)) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ( D = B
            | D = A )
        <=> in(D,C) )
    <=> unordered_pair(A,B) = C ) ).

fof(t47_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( subset_difference(A,cast_to_subset(A),union_of_subsets(A,B)) = meet_of_subsets(A,complements_of_subsets(A,B))
       <= empty_set != B ) ) ).

fof(d9_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( related(A,B,C)
              <=> in(ordered_pair(B,C),the_InternalRel(A)) )
             <= element(C,the_carrier(A)) ) ) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : unordered_pair(unordered_pair(A,B),singleton(A)) = ordered_pair(A,B) ).

fof(dt_k7_grcat_1,axiom,
    ! [A] :
      ( ( quasi_total(identity_on_carrier(A),the_carrier(A),the_carrier(A))
        & relation_of2_as_subset(identity_on_carrier(A),the_carrier(A),the_carrier(A))
        & function(identity_on_carrier(A)) )
     <= one_sorted_str(A) ) ).

fof(t24_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( transitive(B)
       => transitive(relation_restriction(B,A)) ) ) ).

fof(t160_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation_image(B,relation_rng(A)) = relation_rng(relation_composition(A,B))
         <= relation(B) ) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(dt_k10_filter_1,axiom,
    ! [A,B,C,D] :
      ( element(k10_filter_1(A,B,C,D),the_carrier(k8_filter_1(A,B)))
     <= ( lattice(A)
        & ~ empty_carrier(B)
        & lattice(B)
        & element(C,the_carrier(A))
        & element(D,the_carrier(B))
        & latt_str(B)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & meet_commutative(A)
        & ~ empty_carrier(A) )
     => element(meet_commut(A,B,C),the_carrier(A)) ) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( subset(cartesian_product2(A,C),cartesian_product2(B,D))
     <= ( subset(A,B)
        & subset(C,D) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( ( singleton(B) = A
        | A = empty_set )
    <=> subset(A,singleton(B)) ) ).

fof(t16_relset_1,lemma,
    ! [A,B,C,D] :
      ( ( subset(A,B)
       => relation_of2_as_subset(D,C,B) )
     <= relation_of2_as_subset(D,C,A) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ~ ( empty_set = complements_of_subsets(A,B)
          & empty_set != B ) ) ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & element(B,powerset(A)) ) ).

fof(d1_finset_1,axiom,
    ! [A] :
      ( finite(A)
    <=> ? [B] :
          ( relation(B)
          & relation_rng(B) = A
          & in(relation_dom(B),omega)
          & function(B) ) ) ).

fof(redefinition_r3_orders_2,axiom,
    ! [A,B,C] :
      ( ( element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & rel_str(A)
        & reflexive_relstr(A)
        & ~ empty_carrier(A) )
     => ( related(A,B,C)
      <=> related_reflexive(A,B,C) ) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(t25_orders_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( C = B
               <= ( related(A,C,B)
                  & related(A,B,C) ) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) )
     <= ( antisymmetric_relstr(A)
        & rel_str(A) ) ) ).

fof(dt_m1_connsp_2,axiom,
    ! [A,B] :
      ( ( ~ empty_carrier(A)
        & top_str(A)
        & element(B,the_carrier(A))
        & topological_space(A) )
     => ! [C] :
          ( element(C,powerset(the_carrier(A)))
         <= point_neighbourhood(C,A,B) ) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( B = relation_dom(A)
        <=> ! [C] :
              ( ? [D] : in(ordered_pair(C,D),A)
            <=> in(C,B) ) ) ) ).

fof(t3_wellord2,lemma,
    ! [A] : transitive(inclusion_relation(A)) ).

fof(fc41_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) ) ) ).

fof(fc3_tops_1,axiom,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & closed_subset(B,A)
        & topological_space(A) )
     => open_subset(subset_complement(the_carrier(A),B),A) ) ).

fof(t4_wellord2,lemma,
    ! [A] :
      ( connected(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(s1_tarski__e16_22__wellord2__2,axiom,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( ? [E] :
              ( in(E,cartesian_product2(A,B))
              & D = E
              & ? [J,K] :
                  ( ordered_pair(J,K) = D
                  & in(J,A)
                  & singleton(J) = K ) )
        <=> in(D,C) )
     <= ! [C,D,E] :
          ( E = D
         <= ( C = D
            & C = E
            & ? [H,I] :
                ( ordered_pair(H,I) = E
                & I = singleton(H)
                & in(H,A) )
            & ? [F,G] :
                ( singleton(F) = G
                & in(F,A)
                & ordered_pair(F,G) = D ) ) ) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( in(ordered_pair(B,C),A)
            & in(ordered_pair(B,D),A) )
         => C = D )
    <=> function(A) ) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( A = set_difference(A,B)
    <=> disjoint(A,B) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) ).

fof(d11_grcat_1,axiom,
    ! [A] :
      ( identity_as_relation_of(the_carrier(A)) = identity_on_carrier(A)
     <= one_sorted_str(A) ) ).

fof(t13_compts_1,lemma,
    ! [A] :
      ( ( compact_top_space(A)
      <=> ! [B] :
            ( ~ ( closed_subsets(B,A)
                & meet_of_subsets(the_carrier(A),B) = empty_set
                & centered(B) )
           <= element(B,powerset(powerset(the_carrier(A)))) ) )
     <= ( ~ empty_carrier(A)
        & topological_space(A)
        & top_str(A) ) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( ( join_semilatt_str(A)
        & meet_semilatt_str(A) )
     <= latt_str(A) ) ).

fof(t19_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,set_intersection2(B,C))
     <= ( subset(A,C)
        & subset(A,B) ) ) ).

fof(t74_relat_1,lemma,
    ! [A,B,C,D] :
      ( ( in(ordered_pair(A,B),relation_composition(identity_relation(C),D))
      <=> ( in(A,C)
          & in(ordered_pair(A,B),D) ) )
     <= relation(D) ) ).

fof(dt_m1_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => rel_str(B) )
     <= rel_str(A) ) ).

fof(rc3_lattices,axiom,
    ? [A] :
      ( strict_latt_str(A)
      & latt_str(A) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( ! [B] : ~ in(B,A)
    <=> A = empty_set ) ).

fof(t30_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_field(C))
          & in(B,relation_field(C)) )
       <= in(ordered_pair(A,B),C) ) ) ).

fof(t60_relat_1,lemma,
    ( empty_set = relation_rng(empty_set)
    & relation_dom(empty_set) = empty_set ) ).

fof(cc11_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,A)
         => ( v1_xreal_0(B)
            & v1_xcmplx_0(B) ) )
     <= v2_membered(A) ) ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_rng(C) = relation_rng_as_subset(A,B,C)
     <= relation_of2(C,A,B) ) ).

fof(t17_finset_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( finite(relation_image(B,A))
       <= finite(A) ) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

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

fof(free_g1_orders_2,axiom,
    ! [A,B] :
      ( ! [C,D] :
          ( rel_str_of(C,D) = rel_str_of(A,B)
         => ( D = B
            & C = A ) )
     <= relation_of2(B,A,A) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) )
     <= ~ empty(A) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => empty_set = A ) ).

fof(t54_wellord1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( ( well_ordering(A)
                  & relation_isomorphism(A,B,C) )
               => well_ordering(B) ) ) )
     <= relation(A) ) ).

fof(dt_k5_ordinal2,axiom,
    $true ).

fof(t17_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset_complement(the_carrier(A),B) = subset_difference(the_carrier(A),cast_as_carrier_subset(A),B) ) ) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ( identity_relation(A) = B
      <=> ! [C,D] :
            ( in(ordered_pair(C,D),B)
          <=> ( in(C,A)
              & C = D ) ) ) ) ).

fof(l3_wellord1,lemma,
    ! [A] :
      ( ( antisymmetric(A)
      <=> ! [B,C] :
            ( ( in(ordered_pair(C,B),A)
              & in(ordered_pair(B,C),A) )
           => C = B ) )
     <= relation(A) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
    <=> subset(singleton(A),B) ) ).

fof(existence_l2_lattices,axiom,
    ? [A] : join_semilatt_str(A) ).

fof(s1_tarski__e4_7_1__tops_2__2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ! [D,E,F] :
              ( E = F
             <= ( E = D
                & F = D
                & ? [J,K] :
                    ( in(J,complements_of_subsets(the_carrier(A),B))
                    & ! [L] :
                        ( element(L,powerset(the_carrier(A)))
                       => ( subset_complement(the_carrier(A),L) = K
                         <= L = J ) )
                    & F = ordered_pair(J,K) )
                & ? [G,H] :
                    ( ! [I] :
                        ( ( G = I
                         => subset_complement(the_carrier(A),I) = H )
                       <= element(I,powerset(the_carrier(A))) )
                    & in(G,complements_of_subsets(the_carrier(A),B))
                    & ordered_pair(G,H) = E ) ) )
         => ? [D] :
            ! [E] :
              ( in(E,D)
            <=> ? [F] :
                  ( in(F,cartesian_product2(complements_of_subsets(the_carrier(A),B),C))
                  & E = F
                  & ? [M,N] :
                      ( in(M,complements_of_subsets(the_carrier(A),B))
                      & ! [O] :
                          ( ( N = subset_complement(the_carrier(A),O)
                           <= M = O )
                         <= element(O,powerset(the_carrier(A))) )
                      & ordered_pair(M,N) = E ) ) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(existence_m1_yellow_0,axiom,
    ! [A] :
      ( ? [B] : subrelstr(B,A)
     <= rel_str(A) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,A)
         => in(C,B) ) ) ).

fof(t31_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( in(B,A)
         => ( ordinal(B)
            & subset(B,A) ) )
     => ordinal(A) ) ).

fof(t16_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( open_subsets(complements_of_subsets(the_carrier(A),B),A)
          <=> closed_subsets(B,A) ) )
     <= top_str(A) ) ).

fof(t8_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(ordered_pair(A,B),C)
      <=> ( in(A,relation_dom(C))
          & B = apply(C,A) ) ) ) ).

fof(rc1_tops_1,axiom,
    ! [A] :
      ( ? [B] :
          ( open_subset(B,A)
          & element(B,powerset(the_carrier(A))) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : latt_str(A) ).

fof(redefinition_k1_pcomps_1,axiom,
    ! [A] : k1_pcomps_1(A) = powerset(A) ).

fof(t29_tops_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( closed_subset(B,A)
          <=> open_subset(subset_complement(the_carrier(A),B),A) )
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(t48_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset(B,topstr_closure(A,B)) )
     <= top_str(A) ) ).

fof(t52_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( ( closed_subset(B,A)
             => topstr_closure(A,B) = B )
            & ( ( topological_space(A)
                & topstr_closure(A,B) = B )
             => closed_subset(B,A) ) ) )
     <= top_str(A) ) ).

fof(dt_k1_domain_1,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & element(D,B)
        & element(C,A)
        & ~ empty(B) )
     => element(ordered_pair_as_product_element(A,B,C,D),cartesian_product2(A,B)) ) ).

fof(l3_subset_1,lemma,
    ! [A,B] :
      ( element(B,powerset(A))
     => ! [C] :
          ( in(C,A)
         <= in(C,B) ) ) ).

fof(l4_wellord1,lemma,
    ! [A] :
      ( ( ! [B,C] :
            ~ ( in(C,relation_field(A))
              & ~ in(ordered_pair(C,B),A)
              & ~ in(ordered_pair(B,C),A)
              & C != B
              & in(B,relation_field(A)) )
      <=> connected(A) )
     <= relation(A) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_intersection2(B,A))
     <= v1_membered(A) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation(B) )
     => relation(relation_composition(A,B)) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(d1_mcart_1,axiom,
    ! [A] :
      ( ! [B] :
          ( pair_first(A) = B
        <=> ! [C,D] :
              ( C = B
             <= A = ordered_pair(C,D) ) )
     <= ? [B,C] : A = ordered_pair(B,C) ) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(t7_wellord2,lemma,
    ! [A] :
      ( well_ordering(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_dom_restriction(A,B))
     <= relation(A) ) ).

fof(d3_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ~ ( subset(C,B)
                & empty_set != C
                & ! [D] :
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) ) )
        <=> is_well_founded_in(A,B) ) ) ).

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => function_inverse(A) = relation_inverse(A) ) ) ).

fof(d3_lattice3,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => cast_to_el_of_LattPOSet(A,B) = B )
     <= ( ~ empty_carrier(A)
        & latt_str(A)
        & lattice(A) ) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(s2_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ? [B] :
          ( function(B)
          & A = relation_dom(B)
          & ! [C] :
              ( singleton(C) = apply(B,C)
             <= in(C,A) )
          & relation(B) )
     <= ( ! [B,C,D] :
            ( ( singleton(B) = C
              & singleton(B) = D
              & in(B,A) )
           => C = D )
        & ! [B] :
            ~ ( in(B,A)
              & ! [C] : singleton(B) != C ) ) ) ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : top_str(A) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : A = set_union2(A,A) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & element(B,powerset(the_carrier(A))) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(cc2_arytm_3,axiom,
    ! [A] :
      ( ( empty(A)
        & ordinal(A) )
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A) ) ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( subset(A,B)
        & proper_subset(B,A) ) ).

fof(t55_tops_1,lemma,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ! [D] :
                  ( element(D,powerset(the_carrier(B)))
                 => ( ( open_subset(D,B)
                     => interior(B,D) = D )
                    & ( C = interior(A,C)
                     => open_subset(C,A) ) ) ) )
         <= top_str(B) ) ) ).

fof(existence_l1_orders_2,axiom,
    ? [A] : rel_str(A) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(s1_xboole_0__e6_21__wellord2__1,lemma,
    ! [A,B,C] :
      ( ( relation(B)
        & function(C)
        & relation(C) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( ? [F,G] :
                ( E = ordered_pair(F,G)
                & in(ordered_pair(apply(C,F),apply(C,G)),B) )
            & in(E,cartesian_product2(A,A)) ) ) ) ).

fof(d13_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ( ( subset(the_InternalRel(B),the_InternalRel(A))
              & subset(the_carrier(B),the_carrier(A)) )
          <=> subrelstr(B,A) )
         <= rel_str(B) ) ) ).

fof(t12_pre_topc,lemma,
    ! [A] :
      ( cast_as_carrier_subset(A) = the_carrier(A)
     <= one_sorted_str(A) ) ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( D = unordered_triple(A,B,C)
    <=> ! [E] :
          ( ~ ( A != E
              & E != C
              & E != B )
        <=> in(E,D) ) ) ).

fof(redefinition_k8_funct_2,axiom,
    ! [A,B,C,D] :
      ( ( ~ empty(A)
        & function(C)
        & quasi_total(C,A,B)
        & relation_of2(C,A,B)
        & element(D,A) )
     => apply_as_element(A,B,C,D) = apply(C,D) ) ).

fof(s1_tarski__e18_27__finset_1__1,axiom,
    ! [A] :
      ( ( ! [B,C,D] :
            ( ( ? [I] :
                  ( ( ! [J] :
                        ( element(J,powerset(powerset(I)))
                       => ~ ( ! [K] :
                                ~ ( ! [L] :
                                      ( ( in(L,J)
                                        & subset(K,L) )
                                     => K = L )
                                  & in(K,J) )
                            & J != empty_set ) )
                   <= in(I,omega) )
                  & I = D
                  & ordinal(I) )
              & D = B
              & ? [E] :
                  ( ordinal(E)
                  & E = C
                  & ( in(E,omega)
                   => ! [F] :
                        ( ~ ( ! [G] :
                                ~ ( ! [H] :
                                      ( G = H
                                     <= ( subset(G,H)
                                        & in(H,F) ) )
                                  & in(G,F) )
                            & F != empty_set )
                       <= element(F,powerset(powerset(E))) ) ) )
              & B = C )
           => D = C )
       => ? [B] :
          ! [C] :
            ( in(C,B)
          <=> ? [D] :
                ( ? [M] :
                    ( ordinal(M)
                    & ( ! [N] :
                          ( element(N,powerset(powerset(M)))
                         => ~ ( N != empty_set
                              & ! [O] :
                                  ~ ( in(O,N)
                                    & ! [P] :
                                        ( O = P
                                       <= ( in(P,N)
                                          & subset(O,P) ) ) ) ) )
                     <= in(M,omega) )
                    & M = C )
                & C = D
                & in(D,succ(A)) ) ) )
     <= ordinal(A) ) ).

fof(t22_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,B,A)
     => ( B = relation_dom_as_subset(B,A,C)
      <=> ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(D,E),C) ) ) ) ).

fof(d5_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( well_orders(A,B)
        <=> ( is_connected_in(A,B)
            & is_well_founded_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_transitive_in(A,B)
            & is_reflexive_in(A,B) ) ) ) ).

fof(redefinition_r2_wellord2,axiom,
    ! [A,B] :
      ( are_equipotent(A,B)
    <=> equipotent(A,B) ) ).

fof(t8_wellord1,lemma,
    ! [A] :
      ( ( well_ordering(A)
      <=> well_orders(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( B = set_union2(singleton(A),B)
     <= in(A,B) ) ).

fof(t33_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( in(A,B)
          <=> ordinal_subset(succ(A),B) )
         <= ordinal(B) )
     <= ordinal(A) ) ).

fof(t44_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( subset(relation_dom(relation_composition(A,B)),relation_dom(A))
         <= relation(B) ) ) ).

fof(d9_yellow_0,axiom,
    ! [A] :
      ( ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ( ( relstr_set_smaller(A,B,C)
                & ! [D] :
                    ( element(D,the_carrier(A))
                   => ( relstr_set_smaller(A,B,D)
                     => related(A,C,D) ) ) )
            <=> join_on_relstr(A,B) = C )
           <= ex_sup_of_relstr_set(A,B) ) )
     <= rel_str(A) ) ).

fof(s1_xboole_0__e8_6__wellord2__1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( ? [E] :
                ( ordinal(E)
                & E = D
                & in(E,A) )
            & in(D,succ(B)) ) ) ) ).

fof(cc1_arytm_3,axiom,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ( epsilon_transitive(B)
            & ordinal(B)
            & epsilon_connected(B) )
         <= element(B,A) ) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_inverse(A))
        & relation(relation_inverse(A)) ) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

fof(t26_wellord2,lemma,
    ! [A] :
    ? [B] :
      ( well_orders(B,A)
      & relation(B) ) ).

fof(dt_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & function(C)
        & function(B) )
     => ( latt_str(latt_str_of(A,B,C))
        & strict_latt_str(latt_str_of(A,B,C)) ) ) ).

fof(t7_lattice3,lemma,
    ! [A] :
      ( ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) )
     => ! [B] :
          ( ! [C] :
              ( ( related_reflexive(poset_of_lattice(A),cast_to_el_of_LattPOSet(A,B),cast_to_el_of_LattPOSet(A,C))
              <=> below_refl(A,B,C) )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(t34_funct_1,lemma,
    ! [A,B] :
      ( ( B = identity_relation(A)
      <=> ( relation_dom(B) = A
          & ! [C] :
              ( C = apply(B,C)
             <= in(C,A) ) ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(d1_funct_2,axiom,
    ! [A,B,C] :
      ( ( ( ( relation_dom_as_subset(A,B,C) = A
          <=> quasi_total(C,A,B) )
         <= ( B = empty_set
           => A = empty_set ) )
        & ( ( ( quasi_total(C,A,B)
            <=> empty_set = C )
            | empty_set = A )
         <= empty_set = B ) )
     <= relation_of2_as_subset(C,A,B) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(l1_zfmisc_1,lemma,
    ! [A] : singleton(A) != empty_set ).

fof(t24_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ordinal(B)
         => ~ ( ~ in(B,A)
              & B != A
              & ~ in(A,B) ) )
     <= ordinal(A) ) ).

fof(s1_funct_1__e4_7_2__tops_2__1,lemma,
    ! [A,B] :
      ( ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ! [C,D,E] :
            ( D = E
           <= ( in(C,B)
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( subset_complement(the_carrier(A),F) = D
                   <= C = F ) )
              & in(C,B)
              & ! [G] :
                  ( ( E = subset_complement(the_carrier(A),G)
                   <= C = G )
                 <= element(G,powerset(the_carrier(A))) ) ) )
       => ? [C] :
            ( relation(C)
            & function(C)
            & ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( ! [H] :
                      ( element(H,powerset(the_carrier(A)))
                     => ( D = H
                       => E = subset_complement(the_carrier(A),H) ) )
                  & in(D,B)
                  & in(D,B) ) ) ) ) ) ).

fof(d4_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B,C] :
          ( ( ~ in(B,relation_dom(A))
           => ( C = empty_set
            <=> apply(A,B) = C ) )
          & ( in(B,relation_dom(A))
           => ( in(ordered_pair(B,C),A)
            <=> apply(A,B) = C ) ) ) ) ).

fof(redefinition_k2_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & lattice(A)
        & latt_str(A) )
     => k2_lattice3(A) = relation_of_lattice(A) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     <= ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(t18_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_restriction(B,A) = relation_rng_restriction(A,relation_dom_restriction(B,A)) ) ).

fof(fc4_lattice2,axiom,
    ! [A] :
      ( ( v1_partfun1(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & v1_binop_1(the_L_meet(A),the_carrier(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_meet(A))
        & relation(the_L_meet(A)) )
     <= ( meet_semilatt_str(A)
        & meet_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(cc1_lattices,axiom,
    ! [A] :
      ( ( ( lattice(A)
          & ~ empty_carrier(A) )
       => ( ~ empty_carrier(A)
          & join_absorbing(A)
          & meet_absorbing(A)
          & meet_associative(A)
          & meet_commutative(A)
          & join_associative(A)
          & join_commutative(A) ) )
     <= latt_str(A) ) ).

fof(t50_subset_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ! [C] :
              ( ( in(C,subset_complement(A,B))
               <= ~ in(C,B) )
             <= element(C,A) ) )
     <= empty_set != A ) ).

fof(rc1_membered,axiom,
    ? [A] :
      ( ~ empty(A)
      & v2_membered(A)
      & v3_membered(A)
      & v5_membered(A)
      & v4_membered(A)
      & v1_membered(A) ) ).

fof(fc37_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(set_difference(A,B)) ) ).

fof(l4_zfmisc_1,lemma,
    ! [A,B] :
      ( ( empty_set = A
        | singleton(B) = A )
    <=> subset(A,singleton(B)) ) ).

fof(t51_tops_1,lemma,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => open_subset(interior(A,B),A) ) ) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( ( subset(relation_dom(A),relation_dom(B))
              & subset(relation_rng(A),relation_rng(B)) )
           <= subset(A,B) )
         <= relation(B) )
     <= relation(A) ) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( meet(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_meet(A),B,C)
             <= element(C,the_carrier(A)) ) )
     <= ( ~ empty_carrier(A)
        & meet_semilatt_str(A) ) ) ).

fof(fraenkel_a_1_0_filter_1,axiom,
    ! [A,B] :
      ( ( ? [C,D] :
            ( element(C,the_carrier(B))
            & below_refl(B,C,D)
            & ordered_pair_as_product_element(the_carrier(B),the_carrier(B),C,D) = A
            & element(D,the_carrier(B)) )
      <=> in(A,a_1_0_filter_1(B)) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) ) ) ).

fof(t17_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_restriction(B,A) = relation_dom_restriction(relation_rng_restriction(A,B),A) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( finite(singleton(A))
      & ~ empty(singleton(A)) ) ).

fof(rc3_partfun1,axiom,
    ! [A] :
    ? [B] :
      ( reflexive(B)
      & symmetric(B)
      & transitive(B)
      & v1_partfun1(B,A,A)
      & antisymmetric(B)
      & relation(B)
      & relation_of2(B,A,A) ) ).

fof(t44_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset(interior(A,B),B) ) ) ).

fof(t11_tops_2,lemma,
    ! [A,B] :
      ( ( meet_of_subsets(A,complements_of_subsets(A,B)) = subset_complement(A,union_of_subsets(A,B))
       <= B != empty_set )
     <= element(B,powerset(powerset(A))) ) ).

fof(t23_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( ! [C] :
            ~ ( in(C,B)
              & ! [D] :
                  ~ ( in(D,B)
                    & in(D,C) ) )
        & in(A,B) ) ).

fof(cc4_funct_2,axiom,
    ! [A,B] :
      ( relation_of2(B,A,A)
     => ( ( function(B)
          & v1_partfun1(B,A,A)
          & quasi_total(B,A,A)
          & reflexive(B) )
       => ( one_to_one(B)
          & onto(B,A,A)
          & bijective(B,A,A)
          & quasi_total(B,A,A)
          & function(B) ) ) ) ).

fof(s1_tarski__e10_24__wellord2__1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ( ! [C,D,E] :
            ( E = D
           <= ( ? [H] :
                  ( C = H
                  & ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) )
                  & in(E,H) )
              & in(C,A)
              & ? [F] :
                  ( in(D,F)
                  & ! [G] :
                      ( in(G,F)
                     => in(ordered_pair(D,G),B) )
                  & C = F )
              & in(C,A) ) )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ? [J] :
                    ( in(D,J)
                    & ! [K] :
                        ( in(K,J)
                       => in(ordered_pair(D,K),B) )
                    & J = E )
                & in(E,A)
                & in(E,A) ) ) ) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & ~ in(D,B) ) )
    <=> C = set_difference(A,B) ) ).

fof(d16_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( in(D,C)
                   => below(A,B,D) ) )
            <=> latt_set_smaller(A,B,C) ) ) ) ).

fof(t1_zfmisc_1,lemma,
    singleton(empty_set) = powerset(empty_set) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) )
     <= finite(A) ) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal_subset(B,A)
        | ordinal_subset(A,B) )
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(d17_lattice3,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( in(D,C)
                   => below(A,D,B) ) )
            <=> latt_element_smaller(A,B,C) )
         <= element(B,the_carrier(A)) )
     <= ( ~ empty_carrier(A)
        & latt_str(A) ) ) ).

fof(t15_yellow_0,lemma,
    ! [A] :
      ( ( rel_str(A)
        & antisymmetric_relstr(A) )
     => ! [B] :
          ( ? [C] :
              ( relstr_set_smaller(A,B,C)
              & ! [D] :
                  ( element(D,the_carrier(A))
                 => ( relstr_set_smaller(A,B,D)
                   => related(A,C,D) ) )
              & element(C,the_carrier(A)) )
        <=> ex_sup_of_relstr_set(A,B) ) ) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     <= v4_membered(A) ) ).

fof(d8_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( is_transitive_in(A,B)
        <=> ! [C,D,E] :
              ( ( in(C,B)
                & in(ordered_pair(D,E),A)
                & in(ordered_pair(C,D),A)
                & in(E,B)
                & in(D,B) )
             => in(ordered_pair(C,E),A) ) ) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(t25_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_orders(B,A)
       => ( well_ordering(relation_restriction(B,A))
          & relation_field(relation_restriction(B,A)) = A ) ) ) ).

fof(t29_lattice3,lemma,
    ! [A,B] :
      ( ( lattice(B)
        & latt_str(B)
        & ~ empty_carrier(B) )
     => ! [C] :
          ( element(C,the_carrier(poset_of_lattice(B)))
         => ( relstr_element_smaller(poset_of_lattice(B),A,C)
          <=> latt_set_smaller(B,cast_to_el_of_lattice(B,C),A) ) ) ) ).

fof(s1_tarski__e4_27_3_1__finset_1__1,axiom,
    ! [A,B] :
      ( ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) )
     => ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( ? [H] :
                    ( in(H,B)
                    & D = set_difference(H,singleton(A)) )
                & D = E
                & in(E,powerset(A)) )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( D = E
           <= ( D = C
              & ? [F] :
                  ( D = set_difference(F,singleton(A))
                  & in(F,B) )
              & ? [G] :
                  ( in(G,B)
                  & E = set_difference(G,singleton(A)) )
              & C = E ) ) ) ) ).

fof(t44_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( ( ! [C] :
                ( element(C,powerset(the_carrier(A)))
               => ( closed_subset(C,A)
                 <= in(C,B) ) )
           => closed_subset(meet_of_subsets(the_carrier(A),B),A) )
         <= element(B,powerset(powerset(the_carrier(A)))) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(dt_k8_filter_1,axiom,
    ! [A,B] :
      ( ( latt_str(k8_filter_1(A,B))
        & strict_latt_str(k8_filter_1(A,B)) )
     <= ( latt_str(B)
        & ~ empty_carrier(B)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_k2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => element(cast_as_carrier_subset(A),powerset(the_carrier(A))) ) ).

fof(fc40_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v4_membered(A) ) ).

fof(t2_boole,axiom,
    ! [A] : set_intersection2(A,empty_set) = empty_set ).

fof(cc2_finsub_1,axiom,
    ! [A] :
      ( ( diff_closed(A)
        & cup_closed(A) )
     => preboolean(A) ) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( proper_subset(A,B)
    <=> ( subset(A,B)
        & A != B ) ) ).

fof(t178_relat_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_inverse_image(C,A),relation_inverse_image(C,B))
       <= subset(A,B) )
     <= relation(C) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & empty(A)
        & relation(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) ).

fof(dt_k6_pre_topc,axiom,
    ! [A,B] :
      ( ( element(B,powerset(the_carrier(A)))
        & top_str(A) )
     => element(topstr_closure(A,B),powerset(the_carrier(A))) ) ).

fof(t26_orders_2,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ! [D] :
                  ( element(D,the_carrier(A))
                 => ( related(A,B,D)
                   <= ( related(A,B,C)
                      & related(A,C,D) ) ) ) ) )
     <= ( transitive_relstr(A)
        & rel_str(A) ) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( function(A)
      & relation_empty_yielding(A)
      & relation(A) ) ).

fof(fc1_finsub_1,axiom,
    ! [A] :
      ( cup_closed(powerset(A))
      & preboolean(powerset(A))
      & diff_closed(powerset(A))
      & ~ empty(powerset(A)) ) ).

fof(d4_wellord2,axiom,
    ! [A,B] :
      ( ? [C] :
          ( function(C)
          & one_to_one(C)
          & A = relation_dom(C)
          & relation_rng(C) = B
          & relation(C) )
    <=> equipotent(A,B) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( relation(B)
      & function(B)
      & natural(B)
      & finite(B)
      & ordinal(B)
      & epsilon_connected(B)
      & epsilon_transitive(B)
      & one_to_one(B)
      & empty(B)
      & element(B,powerset(A)) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( in(A,B)
        | empty(B) )
     <= element(A,B) ) ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(B,A) = set_union2(A,B) ).

fof(t45_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( subset(relation_rng(relation_composition(A,B)),relation_rng(B))
         <= relation(B) )
     <= relation(A) ) ).

fof(s1_ordinal1__e8_6__wellord2,lemma,
    ! [A] :
      ( ? [B] :
          ( ordinal(B)
          & in(B,A) )
     => ? [B] :
          ( in(B,A)
          & ! [C] :
              ( ( ordinal_subset(B,C)
               <= in(C,A) )
             <= ordinal(C) )
          & ordinal(B) ) ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( relation(C)
      & quasi_total(C,A,B)
      & function(C)
      & relation_of2(C,A,B) ) ).

fof(d1_wellord2,axiom,
    ! [A,B] :
      ( ( B = inclusion_relation(A)
      <=> ( A = relation_field(B)
          & ! [C,D] :
              ( ( in(D,A)
                & in(C,A) )
             => ( in(ordered_pair(C,D),B)
              <=> subset(C,D) ) ) ) )
     <= relation(B) ) ).

fof(t21_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => subset(fiber(relation_restriction(C,A),B),fiber(C,B)) ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) ) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_connected(union(A))
        & ordinal(union(A))
        & epsilon_transitive(union(A)) ) ) ).

fof(t9_zfmisc_1,lemma,
    ! [A,B,C] :
      ( B = C
     <= singleton(A) = unordered_pair(B,C) ) ).

fof(t71_relat_1,lemma,
    ! [A] :
      ( A = relation_dom(identity_relation(A))
      & A = relation_rng(identity_relation(A)) ) ).

fof(dt_k1_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(join(A,B,C),the_carrier(A)) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ~ empty(the_carrier(A))
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(d1_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( C = fiber(A,B)
        <=> ! [D] :
              ( ( in(ordered_pair(D,B),A)
                & D != B )
            <=> in(D,C) ) ) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( unordered_pair(B,C) = singleton(A)
     => B = A ) ).

fof(t147_funct_1,lemma,
    ! [A,B] :
      ( ( A = relation_image(B,relation_inverse_image(B,A))
       <= subset(A,relation_rng(B)) )
     <= ( function(B)
        & relation(B) ) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B)
            & v1_xcmplx_0(B) )
         <= element(B,A) )
     <= v4_membered(A) ) ).

fof(l1_wellord1,lemma,
    ! [A] :
      ( ( ! [B] :
            ( in(B,relation_field(A))
           => in(ordered_pair(B,B),A) )
      <=> reflexive(A) )
     <= relation(A) ) ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( function(identity_relation(A))
      & relation(identity_relation(A)) ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( empty(relation_dom(A))
        & relation(relation_dom(A)) ) ) ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => subset(A,cartesian_product2(relation_dom(A),relation_rng(A))) ) ).

fof(d10_yellow_0,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ( ( ( relstr_element_smaller(A,B,C)
                & ! [D] :
                    ( element(D,the_carrier(A))
                   => ( relstr_element_smaller(A,B,D)
                     => related(A,D,C) ) ) )
            <=> C = meet_on_relstr(A,B) )
           <= ex_inf_of_relstr_set(A,B) )
         <= element(C,the_carrier(A)) )
     <= rel_str(A) ) ).

fof(t16_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( ex_inf_of_relstr_set(A,B)
        <=> ? [C] :
              ( relstr_element_smaller(A,B,C)
              & ! [D] :
                  ( ( relstr_element_smaller(A,B,D)
                   => related(A,D,C) )
                 <= element(D,the_carrier(A)) )
              & element(C,the_carrier(A)) ) )
     <= ( antisymmetric_relstr(A)
        & rel_str(A) ) ) ).

fof(cc1_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & v1_partfun1(C,A,B) )
       => ( quasi_total(C,A,B)
          & function(C) ) ) ) ).

fof(dt_k1_yellow_0,axiom,
    ! [A,B] :
      ( rel_str(A)
     => element(join_on_relstr(A,B),the_carrier(A)) ) ).

fof(t15_finset_1,lemma,
    ! [A,B] :
      ( finite(A)
     => finite(set_intersection2(A,B)) ) ).

fof(s2_ordinal1__e18_27__finset_1__1,lemma,
    ( ! [A] :
        ( ordinal(A)
       => ( in(A,omega)
         => ! [I] :
              ( ~ ( empty_set != I
                  & ! [J] :
                      ~ ( ! [K] :
                            ( K = J
                           <= ( in(K,I)
                              & subset(J,K) ) )
                        & in(J,I) ) )
             <= element(I,powerset(powerset(A))) ) ) )
   <= ! [A] :
        ( ordinal(A)
       => ( ! [B] :
              ( ( ( in(B,omega)
                 => ! [C] :
                      ( ~ ( empty_set != C
                          & ! [D] :
                              ~ ( in(D,C)
                                & ! [E] :
                                    ( D = E
                                   <= ( subset(D,E)
                                      & in(E,C) ) ) ) )
                     <= element(C,powerset(powerset(B))) ) )
               <= in(B,A) )
             <= ordinal(B) )
         => ( ! [F] :
                ( element(F,powerset(powerset(A)))
               => ~ ( F != empty_set
                    & ! [G] :
                        ~ ( in(G,F)
                          & ! [H] :
                              ( G = H
                             <= ( subset(G,H)
                                & in(H,F) ) ) ) ) )
           <= in(A,omega) ) ) ) ) ).

fof(t28_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,the_carrier(B))
         => ( latt_set_smaller(B,C,A)
          <=> relstr_element_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C)) ) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) ) ) ).

fof(t1_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,the_carrier(boole_lattice(A)))
         => ( join(boole_lattice(A),B,C) = set_union2(B,C)
            & meet(boole_lattice(A),B,C) = set_intersection2(B,C) ) )
     <= element(B,the_carrier(boole_lattice(A))) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( function(A)
      & relation(A) ) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(A)
        & epsilon_connected(A) )
    <=> ordinal(A) ) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( ~ ( in(B,subset_complement(A,C))
          & in(B,C) )
     <= element(C,powerset(A)) ) ).

fof(commutativity_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( join_semilatt_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_commutative(A)
        & ~ empty_carrier(A) )
     => join_commut(A,B,C) = join_commut(A,C,B) ) ).

fof(fc4_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(subset_complement(the_carrier(A),B),A)
     <= ( topological_space(A)
        & open_subset(B,A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( A != C
        & A != D
        & unordered_pair(A,B) = unordered_pair(C,D) ) ).

fof(d4_yellow_0,axiom,
    ! [A] :
      ( ( ? [B] :
            ( relstr_element_smaller(A,the_carrier(A),B)
            & element(B,the_carrier(A)) )
      <=> lower_bounded_relstr(A) )
     <= rel_str(A) ) ).

fof(cc2_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( ( lattice(A)
          & ~ empty_carrier(A) )
       <= ( meet_commutative(A)
          & join_absorbing(A)
          & meet_absorbing(A)
          & meet_associative(A)
          & join_associative(A)
          & join_commutative(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(d8_setfam_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ( ! [D] :
                ( ( in(D,C)
                <=> in(subset_complement(A,D),B) )
               <= element(D,powerset(A)) )
          <=> C = complements_of_subsets(A,B) )
         <= element(C,powerset(powerset(A))) )
     <= element(B,powerset(powerset(A))) ) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => subset_intersection2(A,B,C) = subset_intersection2(A,C,B) ) ).

fof(l30_wellord2,lemma,
    ! [A,B] :
      ( ~ ( equipotent(A,relation_field(B))
          & ! [C] :
              ( ~ well_orders(C,A)
             <= relation(C) )
          & well_ordering(B) )
     <= relation(B) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(fc2_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(topstr_closure(A,B),A)
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A) ) ).

fof(cc5_funct_2,axiom,
    ! [A,B] :
      ( ~ empty(B)
     => ! [C] :
          ( relation_of2(C,A,B)
         => ( ( quasi_total(C,A,B)
              & v1_partfun1(C,A,B)
              & function(C) )
           <= ( function(C)
              & quasi_total(C,A,B) ) ) ) ) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     <= v5_membered(A) ) ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ( one_to_one(A)
      <=> ! [B,C] :
            ( ( in(B,relation_dom(A))
              & in(C,relation_dom(A))
              & apply(A,C) = apply(A,B) )
           => C = B ) ) ) ).

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

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(s1_xboole_0__e16_22__wellord2__1,lemma,
    ! [A,B] :
    ? [C] :
    ! [D] :
      ( in(D,C)
    <=> ( ? [E,F] :
            ( singleton(E) = F
            & in(E,A)
            & ordered_pair(E,F) = D )
        & in(D,cartesian_product2(A,B)) ) ) ).

fof(l23_zfmisc_1,lemma,
    ! [A,B] :
      ( set_union2(singleton(A),B) = B
     <= in(A,B) ) ).

fof(fc39_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v3_membered(A) ) ).

fof(t94_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_composition(identity_relation(A),B) = relation_dom_restriction(B,A) ) ).

fof(t32_wellord1,lemma,
    ! [A,B] :
      ( ( well_ordering(relation_restriction(B,A))
       <= well_ordering(B) )
     <= relation(B) ) ).

fof(d3_compts_1,axiom,
    ! [A] :
      ( ( ! [B] :
            ( ~ ( is_a_cover_of_carrier(A,B)
                & ! [C] :
                    ( ~ ( subset(C,B)
                        & is_a_cover_of_carrier(A,C)
                        & finite(C) )
                   <= element(C,powerset(powerset(the_carrier(A)))) )
                & open_subsets(B,A) )
           <= element(B,powerset(powerset(the_carrier(A)))) )
      <=> compact_top_space(A) )
     <= top_str(A) ) ).

fof(t47_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ( relation_rng(relation_composition(B,A)) = relation_rng(A)
           <= subset(relation_dom(A),relation_rng(B)) )
         <= relation(B) ) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & empty(C)
        & element(B,powerset(C)) ) ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A)) )
     <= v4_membered(A) ) ).

fof(d11_yellow_0,axiom,
    ! [A] :
      ( bottom_of_relstr(A) = join_on_relstr(A,empty_set)
     <= rel_str(A) ) ).

fof(t7_mcart_1,lemma,
    ! [A,B] :
      ( B = pair_second(ordered_pair(A,B))
      & pair_first(ordered_pair(A,B)) = A ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( B = relation_rng(A)
        <=> ! [C] :
              ( ? [D] : in(ordered_pair(D,C),A)
            <=> in(C,B) ) )
     <= relation(A) ) ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ? [B] :
          ( closed_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(rc2_orders_2,axiom,
    ? [A] :
      ( strict_rel_str(A)
      & transitive_relstr(A)
      & antisymmetric_relstr(A)
      & reflexive_relstr(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( function(A)
     <= empty(A) ) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= rel_str(A) ) ).

fof(t23_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( connected(B)
       => connected(relation_restriction(B,A)) ) ) ).

fof(d1_tops_1,axiom,
    ! [A] :
      ( ! [B] :
          ( subset_complement(the_carrier(A),topstr_closure(A,subset_complement(the_carrier(A),B))) = interior(A,B)
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(dt_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_semilatt_str(A)
        & join_commutative(A)
        & ~ empty_carrier(A) )
     => element(join_commut(A,B,C),the_carrier(A)) ) ).

fof(t28_xboole_1,lemma,
    ! [A,B] :
      ( A = set_intersection2(A,B)
     <= subset(A,B) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( element(B,powerset(C))
        & in(A,B) )
     => element(A,C) ) ).

fof(reflexivity_r2_wellord2,axiom,
    ! [A,B] : equipotent(A,A) ).

fof(reflexivity_r3_orders_2,axiom,
    ! [A,B,C] :
      ( related_reflexive(A,B,B)
     <= ( rel_str(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & reflexive_relstr(A)
        & ~ empty_carrier(A) ) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => relation(relation_rng_restriction(A,B)) ) ).

fof(fraenkel_a_2_2_lattice3,axiom,
    ! [A,B,C] :
      ( ( latt_str(B)
        & ~ empty_carrier(B) )
     => ( ? [D] :
            ( latt_set_smaller(B,D,C)
            & A = D
            & element(D,the_carrier(B)) )
      <=> in(A,a_2_2_lattice3(B,C)) ) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) )
     <= ( empty(A)
        & relation(B) ) ) ).

fof(t48_setfam_1,lemma,
    ! [A,B] :
      ( ( subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B)) = union_of_subsets(A,complements_of_subsets(A,B))
       <= empty_set != B )
     <= element(B,powerset(powerset(A))) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v2_membered(B)
            & v4_membered(B)
            & v5_membered(B)
            & v3_membered(B)
            & v1_membered(B) ) )
     <= v5_membered(A) ) ).

fof(t70_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
       => apply(relation_dom_restriction(C,A),B) = apply(C,B) ) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( v1_membered(B)
         <= element(B,powerset(A)) ) ) ).

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
          ( ( singleton(B) = D
            & in(B,A)
            & singleton(B) = C
            & in(B,A) )
         => D = C ) ) ).

fof(d2_tops_2,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subsets(B,A)
          <=> ! [C] :
                ( ( closed_subset(C,A)
                 <= in(C,B) )
               <= element(C,powerset(the_carrier(A))) ) ) ) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_dom_as_subset(A,B,C),powerset(A)) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( ? [E] :
                  ( in(E,B)
                  & in(ordered_pair(E,D),A) )
            <=> in(D,C) )
        <=> relation_image(A,B) = C ) ) ).

fof(fc1_ordinal1,axiom,
    ! [A] : ~ empty(succ(A)) ).

fof(t5_wellord2,lemma,
    ! [A] : antisymmetric(inclusion_relation(A)) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( B != A
        & empty(B)
        & empty(A) ) ).

fof(t57_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( ( apply(B,apply(function_inverse(B),A)) = A
          & apply(relation_composition(function_inverse(B),B),A) = A )
       <= ( one_to_one(B)
          & in(A,relation_rng(B)) ) ) ) ).

fof(d1_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A) )
     => ! [B] :
          ( ! [C] :
              ( join(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_join(A),B,C)
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ( subset(A,B)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
               <= in(ordered_pair(C,D),A) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( empty_set = set_intersection2(A,B)
    <=> disjoint(A,B) ) ).

fof(t6_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( ( in(apply(D,C),relation_rng(D))
          | empty_set = B )
       <= in(C,A) )
     <= ( quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B)
        & function(D) ) ) ).

fof(t28_wellord2,lemma,
    ! [A] :
      ( ~ ( ! [B] :
              ( ( relation(B)
                & function(B) )
             => ~ ( ! [C] :
                      ( in(apply(B,C),C)
                     <= in(C,A) )
                  & relation_dom(B) = A ) )
          & ! [B] :
              ~ ( in(B,A)
                & B = empty_set ) )
     <= ~ empty(A) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( ~ in(B,A)
     <= in(A,B) ) ).

fof(d7_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ex_sup_of_relstr_set(A,B)
        <=> ? [C] :
              ( ! [D] :
                  ( element(D,the_carrier(A))
                 => ( relstr_set_smaller(A,B,D)
                   => related(A,C,D) ) )
              & ! [D] :
                  ( ( ( relstr_set_smaller(A,B,D)
                      & ! [E] :
                          ( element(E,the_carrier(A))
                         => ( relstr_set_smaller(A,B,E)
                           => related(A,D,E) ) ) )
                   => D = C )
                 <= element(D,the_carrier(A)) )
              & relstr_set_smaller(A,B,C)
              & element(C,the_carrier(A)) ) ) ) ).

fof(dt_k1_lattice3,axiom,
    ! [A] :
      ( strict_latt_str(boole_lattice(A))
      & latt_str(boole_lattice(A)) ) ).

fof(rc1_orders_2,axiom,
    ? [A] :
      ( strict_rel_str(A)
      & rel_str(A) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( v2_membered(A)
     => ( v2_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) ) ) ).

fof(s1_funct_1__e4_7_1__tops_2__1,lemma,
    ! [A,B] :
      ( ( ! [C,D,E] :
            ( ( in(C,complements_of_subsets(the_carrier(A),B))
              & ! [F] :
                  ( element(F,powerset(the_carrier(A)))
                 => ( subset_complement(the_carrier(A),F) = D
                   <= F = C ) )
              & ! [G] :
                  ( ( G = C
                   => E = subset_complement(the_carrier(A),G) )
                 <= element(G,powerset(the_carrier(A))) )
              & in(C,complements_of_subsets(the_carrier(A),B)) )
           => D = E )
       => ? [C] :
            ( function(C)
            & ! [D,E] :
                ( ( in(D,complements_of_subsets(the_carrier(A),B))
                  & ! [H] :
                      ( ( H = D
                       => E = subset_complement(the_carrier(A),H) )
                     <= element(H,powerset(the_carrier(A))) )
                  & in(D,complements_of_subsets(the_carrier(A),B)) )
              <=> in(ordered_pair(D,E),C) )
            & relation(C) ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & finite(B)
          & ~ empty(B) ) ) ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => relation(A) ) ).

fof(fc9_finset_1,axiom,
    ! [A,B] :
      ( ( finite(B)
        & finite(A) )
     => finite(set_union2(A,B)) ) ).

fof(cc1_partfun1,axiom,
    ! [A] :
      ( ( transitive(A)
        & symmetric(A)
        & relation(A) )
     => ( reflexive(A)
        & relation(A) ) ) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(d21_lattice3,axiom,
    ! [A] :
      ( ( latt_str(A)
        & ~ empty_carrier(A) )
     => ( ( ~ empty_carrier(A)
          & lattice(A)
          & latt_str(A)
          & complete_latt_str(A) )
       => ! [B,C] :
            ( element(C,the_carrier(A))
           => ( join_of_latt_set(A,B) = C
            <=> ( ! [D] :
                    ( element(D,the_carrier(A))
                   => ( below(A,C,D)
                     <= latt_element_smaller(A,D,B) ) )
                & latt_element_smaller(A,C,B) ) ) ) ) ) ).

fof(t88_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_dom_restriction(B,A),B)
     <= relation(B) ) ).

fof(t31_wellord1,lemma,
    ! [A,B] :
      ( ( well_founded_relation(relation_restriction(B,A))
       <= well_founded_relation(B) )
     <= relation(B) ) ).

fof(t143_relat_1,lemma,
    ! [A,B,C] :
      ( ( ? [D] :
            ( in(D,relation_dom(C))
            & in(ordered_pair(D,A),C)
            & in(D,B) )
      <=> in(A,relation_image(C,B)) )
     <= relation(C) ) ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,B)
        <=> subset(C,A) )
    <=> B = powerset(A) ) ).

fof(t30_yellow_0,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( ( relstr_set_smaller(A,C,B)
                  & ! [D] :
                      ( element(D,the_carrier(A))
                     => ( relstr_set_smaller(A,C,D)
                       => related(A,B,D) ) ) )
               <= ( ex_sup_of_relstr_set(A,C)
                  & B = join_on_relstr(A,C) ) )
              & ( ( ex_sup_of_relstr_set(A,C)
                  & join_on_relstr(A,C) = B )
               <= ( ! [D] :
                      ( ( relstr_set_smaller(A,C,D)
                       => related(A,B,D) )
                     <= element(D,the_carrier(A)) )
                  & relstr_set_smaller(A,C,B) ) ) )
         <= element(B,the_carrier(A)) )
     <= ( antisymmetric_relstr(A)
        & rel_str(A) ) ) ).

fof(d3_pre_topc,axiom,
    ! [A] :
      ( cast_as_carrier_subset(A) = the_carrier(A)
     <= one_sorted_str(A) ) ).

fof(t49_wellord1,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation_isomorphism(A,B,C)
               => relation_isomorphism(B,A,function_inverse(C)) )
             <= ( relation(C)
                & function(C) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(fc38_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) )
     <= v2_membered(A) ) ).

fof(dt_k15_lattice3,axiom,
    ! [A,B] :
      ( element(join_of_latt_set(A,B),the_carrier(A))
     <= ( latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t2_wellord2,lemma,
    ! [A] : reflexive(inclusion_relation(A)) ).

fof(t54_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( ! [B] :
            ( ( ( relation_rng(A) = relation_dom(B)
                & ! [C,D] :
                    ( ( ( apply(A,D) = C
                        & in(D,relation_dom(A)) )
                     <= ( in(C,relation_rng(A))
                        & apply(B,C) = D ) )
                    & ( ( apply(A,D) = C
                        & in(D,relation_dom(A)) )
                     => ( in(C,relation_rng(A))
                        & apply(B,C) = D ) ) ) )
            <=> B = function_inverse(A) )
           <= ( function(B)
              & relation(B) ) )
       <= one_to_one(A) ) ) ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v1_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) ) ) ).

fof(dt_k5_lattices,axiom,
    ! [A] :
      ( element(bottom_of_semilattstr(A),the_carrier(A))
     <= ( meet_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(d2_compts_1,axiom,
    ! [A] :
      ( centered(A)
    <=> ( ! [B] :
            ~ ( finite(B)
              & set_meet(B) = empty_set
              & subset(B,A)
              & B != empty_set )
        & empty_set != A ) ) ).

fof(t30_tops_1,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ( closed_subset(subset_complement(the_carrier(A),B),A)
          <=> open_subset(B,A) ) )
     <= top_str(A) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(fc2_lattice3,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_lattice(A))
      & join_commutative(boole_lattice(A))
      & join_associative(boole_lattice(A))
      & lattice(boole_lattice(A))
      & join_absorbing(boole_lattice(A))
      & meet_absorbing(boole_lattice(A))
      & meet_associative(boole_lattice(A))
      & meet_commutative(boole_lattice(A))
      & strict_latt_str(boole_lattice(A)) ) ).

fof(t42_yellow_0,lemma,
    ! [A] :
      ( ( lower_bounded_relstr(A)
        & rel_str(A)
        & antisymmetric_relstr(A)
        & ~ empty_carrier(A) )
     => ( ex_inf_of_relstr_set(A,the_carrier(A))
        & ex_sup_of_relstr_set(A,empty_set) ) ) ).

fof(t140_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => relation_rng_restriction(A,relation_dom_restriction(C,B)) = relation_dom_restriction(relation_rng_restriction(A,C),B) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) )
     <= ~ empty(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(t21_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( proper_subset(A,B)
           => in(A,B) )
         <= ordinal(B) )
     <= epsilon_transitive(A) ) ).

fof(dt_k2_mcart_1,axiom,
    $true ).

fof(t46_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(relation_composition(A,B)) = relation_dom(A) ) )
     <= relation(A) ) ).

fof(d8_lattice3,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( ( ! [D] :
                ( element(D,the_carrier(A))
               => ( related(A,C,D)
                 <= in(D,B) ) )
          <=> relstr_element_smaller(A,B,C) )
         <= element(C,the_carrier(A)) ) ) ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ( in(B,A)
        <=> element(B,A) )
       <= ~ empty(A) )
      & ( empty(A)
       => ( empty(B)
        <=> element(B,A) ) ) ) ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(C,B)
        & subset(A,B) )
     => subset(set_union2(A,C),B) ) ).

fof(d2_lattice3,axiom,
    ! [A] :
      ( poset_of_lattice(A) = rel_str_of(the_carrier(A),k2_lattice3(A))
     <= ( latt_str(A)
        & lattice(A)
        & ~ empty_carrier(A) ) ) ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( relation(relation_rng_restriction(A,B))
        & function(relation_rng_restriction(A,B)) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( A = set_difference(A,singleton(B))
    <=> ~ in(B,A) ) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( subset_complement(A,subset_complement(A,B)) = B
     <= element(B,powerset(A)) ) ).

fof(t23_lattices,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( below(A,meet_commut(A,B,C),B)
             <= element(C,the_carrier(A)) ) )
     <= ( meet_commutative(A)
        & meet_absorbing(A)
        & latt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(d9_relat_2,axiom,
    ! [A] :
      ( ( reflexive(A)
      <=> is_reflexive_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(d3_ordinal1,axiom,
    ! [A] :
      ( ! [B,C] :
          ~ ( in(B,A)
            & ~ in(B,C)
            & B != C
            & ~ in(C,B)
            & in(C,A) )
    <=> epsilon_connected(A) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( finite(B)
     => finite(set_intersection2(A,B)) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => ( relation_inverse(A) = B
          <=> ! [C,D] :
                ( in(ordered_pair(D,C),A)
              <=> in(ordered_pair(C,D),B) ) ) )
     <= relation(A) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ~ empty(cartesian_product2(A,B))
     <= ( ~ empty(A)
        & ~ empty(B) ) ) ).

fof(t20_relat_1,lemma,
    ! [A,B,C] :
      ( ( ( in(A,relation_dom(C))
          & in(B,relation_rng(C)) )
       <= in(ordered_pair(A,B),C) )
     <= relation(C) ) ).

fof(t72_funct_1,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C) )
     => ( apply(relation_dom_restriction(C,A),B) = apply(C,B)
       <= in(B,A) ) ) ).

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
                  & ( antisymmetric(B)
                   <= antisymmetric(A) )
                  & ( well_founded_relation(A)
                   => well_founded_relation(B) ) ) ) ) ) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( function(A)
        & relation(A) )
     => ( relation(relation_dom_restriction(A,B))
        & function(relation_dom_restriction(A,B)) ) ) ).

fof(t12_relset_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) )
     <= relation_of2_as_subset(C,A,B) ) ).

fof(fc1_lattice3,axiom,
    ! [A] :
      ( strict_latt_str(boole_lattice(A))
      & ~ empty_carrier(boole_lattice(A)) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v4_membered(B)
            & v3_membered(B)
            & v2_membered(B)
            & v1_membered(B) ) )
     <= v4_membered(A) ) ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => element(subset_complement(A,B),powerset(A)) ) ).

fof(redefinition_k3_lattices,axiom,
    ! [A,B,C] :
      ( join(A,B,C) = join_commut(A,B,C)
     <= ( join_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(s1_tarski__e6_21__wellord2__1,axiom,
    ! [A,B,C] :
      ( ( ? [D] :
          ! [E] :
            ( ? [F] :
                ( in(F,cartesian_product2(A,A))
                & E = F
                & ? [K,L] :
                    ( E = ordered_pair(K,L)
                    & in(ordered_pair(apply(C,K),apply(C,L)),B) ) )
          <=> in(E,D) )
       <= ! [D,E,F] :
            ( ( E = D
              & ? [G,H] :
                  ( ordered_pair(G,H) = E
                  & in(ordered_pair(apply(C,G),apply(C,H)),B) )
              & D = F
              & ? [I,J] :
                  ( ordered_pair(I,J) = F
                  & in(ordered_pair(apply(C,I),apply(C,J)),B) ) )
           => E = F ) )
     <= ( relation(B)
        & function(C)
        & relation(C) ) ) ).

fof(t22_wellord1,lemma,
    ! [A,B] :
      ( ( reflexive(B)
       => reflexive(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) ).

fof(dt_k1_mcart_1,axiom,
    $true ).

fof(t62_funct_1,lemma,
    ! [A] :
      ( ( one_to_one(function_inverse(A))
       <= one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & natural(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) ) )
     <= v5_membered(A) ) ).

fof(d9_lattice3,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B,C] :
          ( element(C,the_carrier(A))
         => ( ! [D] :
                ( element(D,the_carrier(A))
               => ( related(A,D,C)
                 <= in(D,B) ) )
          <=> relstr_set_smaller(A,B,C) ) ) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(redefinition_k4_subset_1,axiom,
    ! [A,B,C] :
      ( subset_union2(A,B,C) = set_union2(B,C)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(fc6_tops_1,axiom,
    ! [A,B] :
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => open_subset(interior(A,B),A) ) ).

fof(free_g3_lattices,axiom,
    ! [A,B,C] :
      ( ( function(B)
        & quasi_total(B,cartesian_product2(A,A),A)
        & relation_of2(B,cartesian_product2(A,A),A)
        & quasi_total(C,cartesian_product2(A,A),A)
        & relation_of2(C,cartesian_product2(A,A),A)
        & function(C) )
     => ! [D,E,F] :
          ( latt_str_of(D,E,F) = latt_str_of(A,B,C)
         => ( F = C
            & E = B
            & D = A ) ) ) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( relation(set_intersection2(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(t5_connsp_2,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( element(C,the_carrier(A))
             => ( point_neighbourhood(B,A,C)
               <= ( in(C,B)
                  & open_subset(B,A) ) ) ) ) ) ).

fof(dt_k1_pre_topc,axiom,
    ! [A] :
      ( element(empty_carrier_subset(A),powerset(the_carrier(A)))
     <= one_sorted_str(A) ) ).

fof(t30_lattice3,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( relstr_set_smaller(poset_of_lattice(B),A,cast_to_el_of_LattPOSet(B,C))
          <=> latt_element_smaller(B,C,A) )
         <= element(C,the_carrier(B)) )
     <= ( ~ empty_carrier(B)
        & lattice(B)
        & latt_str(B) ) ) ).

fof(dt_k10_relat_1,axiom,
    $true ).

fof(t3_ordinal1,lemma,
    ! [A,B,C] :
      ~ ( in(C,A)
        & in(B,C)
        & in(A,B) ) ).

fof(d6_ordinal1,axiom,
    ! [A] :
      ( A = union(A)
    <=> being_limit_ordinal(A) ) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & relation_empty_yielding(A) )
     => ( relation(relation_dom_restriction(A,B))
        & relation_empty_yielding(relation_dom_restriction(A,B)) ) ) ).

fof(rc2_tex_2,axiom,
    ! [A] :
    ? [B] :
      ( ~ proper_element(B,powerset(A))
      & element(B,powerset(A)) ) ).

fof(d14_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => ( the_InternalRel(B) = relation_restriction_as_relation_of(the_InternalRel(A),the_carrier(B))
          <=> full_subrelstr(B,A) ) )
     <= rel_str(A) ) ).

fof(d6_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( ( open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A)
          <=> closed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(l82_funct_1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C) )
     => ( in(B,relation_dom(relation_dom_restriction(C,A)))
      <=> ( in(B,relation_dom(C))
          & in(B,A) ) ) ) ).

fof(t90_relat_1,lemma,
    ! [A,B] :
      ( relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A)
     <= relation(B) ) ).

fof(t91_tmap_1,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( apply_as_element(the_carrier(A),the_carrier(A),identity_on_carrier(A),B) = B
         <= element(B,the_carrier(A)) ) ) ).

fof(s1_xboole_0__e4_27_3_1__finset_1,lemma,
    ! [A,B] :
      ( ( ordinal(A)
        & element(B,powerset(powerset(succ(A)))) )
     => ? [C] :
        ! [D] :
          ( ( ? [E] :
                ( in(E,B)
                & D = set_difference(E,singleton(A)) )
            & in(D,powerset(A)) )
        <=> in(D,C) ) ) ).

fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( element(apply_binary_as_element(A,B,C,D,E,F),C)
     <= ( ~ empty(A)
        & quasi_total(D,cartesian_product2(A,B),C)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B)
        & function(D)
        & ~ empty(B) ) ) ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( subset_intersection2(A,B,C) = set_intersection2(B,C)
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(t115_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,B)
          & in(A,relation_rng(C)) )
      <=> in(A,relation_rng(relation_rng_restriction(B,C))) ) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ? [D] :
              ( in(D,A)
              & in(C,D) )
        <=> in(C,B) )
    <=> union(A) = B ) ).

fof(t37_xboole_1,lemma,
    ! [A,B] :
      ( empty_set = set_difference(A,B)
    <=> subset(A,B) ) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(cc3_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => ( ( function(C)
          & quasi_total(C,A,B)
          & onto(C,A,B)
          & one_to_one(C) )
       => ( function(C)
          & quasi_total(C,A,B)
          & bijective(C,A,B) ) ) ) ).

fof(l55_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(s2_funct_1__e4_7_2__tops_2,lemma,
    ! [A,B] :
      ( ( ? [C] :
            ( relation_dom(C) = B
            & ! [D] :
                ( ! [I] :
                    ( element(I,powerset(the_carrier(A)))
                   => ( D = I
                     => subset_complement(the_carrier(A),I) = apply(C,D) ) )
               <= in(D,B) )
            & function(C)
            & relation(C) )
       <= ( ! [C] :
              ~ ( in(C,B)
                & ! [D] :
                    ~ ! [H] :
                        ( element(H,powerset(the_carrier(A)))
                       => ( subset_complement(the_carrier(A),H) = D
                         <= C = H ) ) )
          & ! [C,D,E] :
              ( E = D
             <= ( ! [F] :
                    ( element(F,powerset(the_carrier(A)))
                   => ( D = subset_complement(the_carrier(A),F)
                     <= C = F ) )
                & ! [G] :
                    ( ( subset_complement(the_carrier(A),G) = E
                     <= G = C )
                   <= element(G,powerset(the_carrier(A))) )
                & in(C,B) ) ) ) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

