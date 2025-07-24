fof(fc3_tops_1,axiom,
    ! [A,B] :
      ( open_subset(subset_complement(the_carrier(A),B),A)
     <= ( topological_space(A)
        & closed_subset(B,A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) ) ) ).

fof(rc1_ordinal2,axiom,
    ? [A] :
      ( epsilon_transitive(A)
      & epsilon_connected(A)
      & ordinal(A)
      & being_limit_ordinal(A) ) ).

fof(t37_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(dt_k2_lattices,axiom,
    ! [A,B,C] :
      ( element(meet(A,B,C),the_carrier(A))
     <= ( meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & ~ empty_carrier(A) ) ) ).

fof(dt_k3_tarski,axiom,
    $true ).

fof(t22_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => B = subset_difference(the_carrier(A),cast_as_carrier_subset(A),subset_difference(the_carrier(A),cast_as_carrier_subset(A),B)) )
     <= one_sorted_str(A) ) ).

fof(fc3_subset_1,axiom,
    ! [A,B] : ~ empty(unordered_pair(A,B)) ).

fof(t117_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng_restriction(A,B),B) ) ).

fof(cc2_arytm_3,axiom,
    ! [A] :
      ( ( ordinal(A)
        & empty(A) )
     => ( epsilon_transitive(A)
        & epsilon_connected(A)
        & ordinal(A)
        & natural(A) ) ) ).

fof(d1_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( function(B)
          & in(relation_dom(B),omega)
          & A = relation_rng(B)
          & relation(B) )
    <=> finite(A) ) ).

fof(d1_setfam_1,axiom,
    ! [A,B] :
      ( ( empty_set = A
       => ( empty_set = B
        <=> B = set_meet(A) ) )
      & ( ( set_meet(A) = B
        <=> ! [C] :
              ( in(C,B)
            <=> ! [D] :
                  ( in(C,D)
                 <= in(D,A) ) ) )
       <= A != empty_set ) ) ).

fof(d2_zfmisc_1,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( ? [E,F] :
              ( in(E,A)
              & in(F,B)
              & D = ordered_pair(E,F) )
        <=> in(D,C) )
    <=> cartesian_product2(A,B) = C ) ).

fof(t28_wellord2,lemma,
    ! [A] :
      ( ~ ( ! [B] :
              ( ( function(B)
                & relation(B) )
             => ~ ( ! [C] :
                      ( in(apply(B,C),C)
                     <= in(C,A) )
                  & relation_dom(B) = A ) )
          & ! [B] :
              ~ ( in(B,A)
                & B = empty_set ) )
     <= ~ empty(A) ) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A)
        & empty(A) )
     => ( relation(A)
        & function(A)
        & one_to_one(A) ) ) ).

fof(redefinition_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( apply_binary(D,E,F) = apply_binary_as_element(A,B,C,D,E,F)
     <= ( ~ empty(B)
        & quasi_total(D,cartesian_product2(A,B),C)
        & element(F,B)
        & element(E,A)
        & relation_of2(D,cartesian_product2(A,B),C)
        & function(D)
        & ~ empty(A) ) ) ).

fof(cc3_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => v2_membered(A) ) ).

fof(commutativity_k3_lattices,axiom,
    ! [A,B,C] :
      ( join_commut(A,C,B) = join_commut(A,B,C)
     <= ( ~ empty_carrier(A)
        & element(C,the_carrier(A))
        & element(B,the_carrier(A))
        & join_semilatt_str(A)
        & join_commutative(A) ) ) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & function(A) ) ).

fof(fc4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( epsilon_transitive(union(A))
        & epsilon_connected(union(A))
        & ordinal(union(A)) ) ) ).

fof(t8_zfmisc_1,lemma,
    ! [A,B,C] :
      ( B = A
     <= singleton(A) = unordered_pair(B,C) ) ).

fof(d2_tarski,axiom,
    ! [A,B,C] :
      ( C = unordered_pair(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( D = B
            | D = A ) ) ) ).

fof(d12_relat_1,axiom,
    ! [A,B] :
      ( relation(B)
     => ! [C] :
          ( ( relation_rng_restriction(A,B) = C
          <=> ! [D,E] :
                ( ( in(ordered_pair(D,E),B)
                  & in(E,A) )
              <=> in(ordered_pair(D,E),C) ) )
         <= relation(C) ) ) ).

fof(l3_zfmisc_1,lemma,
    ! [A,B,C] :
      ( ( in(C,A)
        | subset(A,set_difference(B,singleton(C))) )
     <= subset(A,B) ) ).

fof(t55_tops_1,lemma,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ! [B] :
          ( top_str(B)
         => ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ! [D] :
                  ( ( ( open_subset(C,A)
                     <= C = interior(A,C) )
                    & ( interior(B,D) = D
                     <= open_subset(D,B) ) )
                 <= element(D,powerset(the_carrier(B))) ) ) ) ) ).

fof(dt_k1_setfam_1,axiom,
    $true ).

fof(fc5_relat_1,axiom,
    ! [A] :
      ( ( ~ empty(A)
        & relation(A) )
     => ~ empty(relation_dom(A)) ) ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(t33_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( ordered_pair(A,B) = ordered_pair(C,D)
     => ( A = C
        & D = B ) ) ).

fof(dt_l2_lattices,axiom,
    ! [A] :
      ( join_semilatt_str(A)
     => one_sorted_str(A) ) ).

fof(fc12_relat_1,axiom,
    ( relation(empty_set)
    & relation_empty_yielding(empty_set)
    & empty(empty_set) ) ).

fof(fc39_membered,axiom,
    ! [A,B] :
      ( v3_membered(A)
     => ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) ) ) ).

fof(t55_funct_1,lemma,
    ! [A] :
      ( ( ( relation_dom(A) = relation_rng(function_inverse(A))
          & relation_rng(A) = relation_dom(function_inverse(A)) )
       <= one_to_one(A) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(dt_l1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => one_sorted_str(A) ) ).

fof(connectedness_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal_subset(B,A)
        | ordinal_subset(A,B) )
     <= ( ordinal(A)
        & ordinal(B) ) ) ).

fof(t31_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( in(B,A)
         => ( subset(B,A)
            & ordinal(B) ) )
     => ordinal(A) ) ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(d2_wellord1,axiom,
    ! [A] :
      ( ( well_founded_relation(A)
      <=> ! [B] :
            ~ ( ! [C] :
                  ~ ( in(C,B)
                    & disjoint(fiber(A,C),B) )
              & B != empty_set
              & subset(B,relation_field(A)) ) )
     <= relation(A) ) ).

fof(t5_tops_2,lemma,
    ! [A] :
      ( ! [B] :
          ( ~ ( is_a_cover_of_carrier(A,B)
              & empty_set = B )
         <= element(B,powerset(powerset(the_carrier(A)))) )
     <= ( one_sorted_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t19_wellord1,lemma,
    ! [A,B,C] :
      ( ( ( in(A,relation_field(C))
          & in(A,B) )
       <= in(A,relation_field(relation_restriction(C,B))) )
     <= relation(C) ) ).

fof(reflexivity_r2_wellord2,axiom,
    ! [A,B] : equipotent(A,A) ).

fof(t39_xboole_1,lemma,
    ! [A,B] : set_union2(A,set_difference(B,A)) = set_union2(A,B) ).

fof(t54_subset_1,lemma,
    ! [A,B,C] :
      ( element(C,powerset(A))
     => ~ ( in(B,C)
          & in(B,subset_complement(A,C)) ) ) ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) )
     <= ~ empty(A) ) ).

fof(t74_relat_1,lemma,
    ! [A,B,C,D] :
      ( relation(D)
     => ( ( in(ordered_pair(A,B),D)
          & in(A,C) )
      <=> in(ordered_pair(A,B),relation_composition(identity_relation(C),D)) ) ) ).

fof(cc12_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_rat_1(B) ) ) ) ).

fof(t36_xboole_1,lemma,
    ! [A,B] : subset(set_difference(A,B),A) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(fc10_relat_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & empty(A) )
     => ( relation(relation_composition(B,A))
        & empty(relation_composition(B,A)) ) ) ).

fof(t4_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ! [C] : ~ in(C,set_intersection2(A,B))
          & ~ disjoint(A,B) )
      & ~ ( ? [C] : in(C,set_intersection2(A,B))
          & disjoint(A,B) ) ) ).

fof(cc2_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     <= ( diff_closed(A)
        & cup_closed(A) ) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( relation(A)
     <= empty(A) ) ).

fof(rc1_funct_2,axiom,
    ! [A,B] :
    ? [C] :
      ( relation(C)
      & quasi_total(C,A,B)
      & function(C)
      & relation_of2(C,A,B) ) ).

fof(s1_tarski__e4_7_1__tops_2__2,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ! [D,E,F] :
              ( F = E
             <= ( ? [J,K] :
                    ( F = ordered_pair(J,K)
                    & in(J,complements_of_subsets(the_carrier(A),B))
                    & ! [L] :
                        ( ( J = L
                         => K = subset_complement(the_carrier(A),L) )
                       <= element(L,powerset(the_carrier(A))) ) )
                & F = D
                & ? [G,H] :
                    ( ordered_pair(G,H) = E
                    & ! [I] :
                        ( ( subset_complement(the_carrier(A),I) = H
                         <= G = I )
                       <= element(I,powerset(the_carrier(A))) )
                    & in(G,complements_of_subsets(the_carrier(A),B)) )
                & D = E ) )
         => ? [D] :
            ! [E] :
              ( ? [F] :
                  ( F = E
                  & ? [M,N] :
                      ( E = ordered_pair(M,N)
                      & ! [O] :
                          ( ( M = O
                           => subset_complement(the_carrier(A),O) = N )
                         <= element(O,powerset(the_carrier(A))) )
                      & in(M,complements_of_subsets(the_carrier(A),B)) )
                  & in(F,cartesian_product2(complements_of_subsets(the_carrier(A),B),C)) )
            <=> in(E,D) ) )
     <= ( one_sorted_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(t33_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_difference(A,C),set_difference(B,C)) ) ).

fof(fc2_funct_1,axiom,
    ! [A] :
      ( function(identity_relation(A))
      & relation(identity_relation(A)) ) ).

fof(dt_u2_lattices,axiom,
    ! [A] :
      ( ( quasi_total(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_join(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & function(the_L_join(A)) )
     <= join_semilatt_str(A) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( in(A,B)
        & empty(C)
        & element(B,powerset(C)) ) ).

fof(dt_k1_pre_topc,axiom,
    ! [A] :
      ( element(empty_carrier_subset(A),powerset(the_carrier(A)))
     <= one_sorted_str(A) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(s1_xboole_0__e4_27_3_1__finset_1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( ? [E] :
                ( in(E,B)
                & D = set_difference(E,singleton(A)) )
            & in(D,powerset(A)) ) )
     <= ( element(B,powerset(powerset(succ(A))))
        & ordinal(A) ) ) ).

fof(t4_boole,axiom,
    ! [A] : empty_set = set_difference(empty_set,A) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(l23_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => B = set_union2(singleton(A),B) ) ).

fof(t174_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( subset(A,relation_rng(B))
          & relation_inverse_image(B,A) = empty_set
          & empty_set != A ) ) ).

fof(t48_xboole_1,lemma,
    ! [A,B] : set_intersection2(A,B) = set_difference(A,set_difference(A,B)) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(cc3_arytm_3,axiom,
    ! [A] :
      ( ( epsilon_connected(A)
        & ordinal(A)
        & natural(A)
        & epsilon_transitive(A) )
     <= element(A,omega) ) ).

fof(t5_wellord1,lemma,
    ! [A] :
      ( ( is_well_founded_in(A,relation_field(A))
      <=> well_founded_relation(A) )
     <= relation(A) ) ).

fof(t17_xboole_1,lemma,
    ! [A,B] : subset(set_intersection2(A,B),A) ).

fof(t99_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_rng(relation_dom_restriction(B,A)),relation_rng(B)) ) ).

fof(d3_ordinal1,axiom,
    ! [A] :
      ( epsilon_connected(A)
    <=> ! [B,C] :
          ~ ( in(C,A)
            & ~ in(B,C)
            & C != B
            & ~ in(C,B)
            & in(B,A) ) ) ).

fof(s1_ordinal2__e18_27__finset_1,lemma,
    ( ! [D] :
        ( ( in(D,omega)
         => ! [R] :
              ( element(R,powerset(powerset(D)))
             => ~ ( ! [S] :
                      ~ ( in(S,R)
                        & ! [T] :
                            ( ( subset(S,T)
                              & in(T,R) )
                           => T = S ) )
                  & empty_set != R ) ) )
       <= ordinal(D) )
   <= ( ( ! [A] :
            ( ~ ( empty_set != A
                & ! [B] :
                    ~ ( ! [C] :
                          ( ( in(C,A)
                            & subset(B,C) )
                         => C = B )
                      & in(B,A) ) )
           <= element(A,powerset(powerset(empty_set))) )
       <= in(empty_set,omega) )
      & ! [D] :
          ( ordinal(D)
         => ( ( D = empty_set
              | ( ! [O] :
                    ( ~ ( ! [P] :
                            ~ ( in(P,O)
                              & ! [Q] :
                                  ( P = Q
                                 <= ( in(Q,O)
                                    & subset(P,Q) ) ) )
                        & empty_set != O )
                   <= element(O,powerset(powerset(D))) )
               <= in(D,omega) ) )
           <= ( being_limit_ordinal(D)
              & ! [K] :
                  ( ordinal(K)
                 => ( ( ! [L] :
                          ( ~ ( ! [M] :
                                  ~ ( ! [N] :
                                        ( N = M
                                       <= ( subset(M,N)
                                          & in(N,L) ) )
                                    & in(M,L) )
                              & empty_set != L )
                         <= element(L,powerset(powerset(K))) )
                     <= in(K,omega) )
                   <= in(K,D) ) ) ) ) )
      & ! [D] :
          ( ( ( ! [H] :
                  ( element(H,powerset(powerset(succ(D))))
                 => ~ ( H != empty_set
                      & ! [I] :
                          ~ ( in(I,H)
                            & ! [J] :
                                ( ( subset(I,J)
                                  & in(J,H) )
                               => I = J ) ) ) )
             <= in(succ(D),omega) )
           <= ( ! [E] :
                  ( element(E,powerset(powerset(D)))
                 => ~ ( E != empty_set
                      & ! [F] :
                          ~ ( in(F,E)
                            & ! [G] :
                                ( ( in(G,E)
                                  & subset(F,G) )
                               => G = F ) ) ) )
             <= in(D,omega) ) )
         <= ordinal(D) ) ) ) ).

fof(t71_relat_1,lemma,
    ! [A] :
      ( A = relation_dom(identity_relation(A))
      & relation_rng(identity_relation(A)) = A ) ).

fof(t65_zfmisc_1,lemma,
    ! [A,B] :
      ( ~ in(B,A)
    <=> A = set_difference(A,singleton(B)) ) ).

fof(dt_k5_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_intersection2(A,B,C),powerset(A))
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(dt_k2_funct_1,axiom,
    ! [A] :
      ( ( relation(function_inverse(A))
        & function(function_inverse(A)) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
    <=> empty_set = set_intersection2(A,B) ) ).

fof(d2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => empty_set = empty_carrier_subset(A) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(B)
        & ~ empty(A) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(t23_wellord1,lemma,
    ! [A,B] :
      ( ( connected(B)
       => connected(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(rc2_tops_1,axiom,
    ! [A] :
      ( ( top_str(A)
        & topological_space(A) )
     => ? [B] :
          ( closed_subset(B,A)
          & open_subset(B,A)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(t50_subset_1,lemma,
    ! [A] :
      ( A != empty_set
     => ! [B] :
          ( ! [C] :
              ( element(C,A)
             => ( in(C,subset_complement(A,B))
               <= ~ in(C,B) ) )
         <= element(B,powerset(A)) ) ) ).

fof(t69_enumset1,lemma,
    ! [A] : unordered_pair(A,A) = singleton(A) ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(B,A) = set_union2(A,B) ).

fof(cc2_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => v3_membered(A) ) ).

fof(t31_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_founded_relation(relation_restriction(B,A))
       <= well_founded_relation(B) ) ) ).

fof(d1_mcart_1,axiom,
    ! [A] :
      ( ? [B,C] : A = ordered_pair(B,C)
     => ! [B] :
          ( B = pair_first(A)
        <=> ! [C,D] :
              ( B = C
             <= ordered_pair(C,D) = A ) ) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( in(A,B)
        | empty(B) )
     <= element(A,B) ) ).

fof(rc6_pre_topc,axiom,
    ! [A] :
      ( ? [B] :
          ( closed_subset(B,A)
          & element(B,powerset(the_carrier(A))) )
     <= ( top_str(A)
        & topological_space(A) ) ) ).

fof(t9_zfmisc_1,lemma,
    ! [A,B,C] :
      ( C = B
     <= unordered_pair(B,C) = singleton(A) ) ).

fof(d3_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( subset(A,B)
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
               <= in(ordered_pair(C,D),A) ) ) ) ) ).

fof(l2_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( transitive(A)
      <=> ! [B,C,D] :
            ( ( in(ordered_pair(C,D),A)
              & in(ordered_pair(B,C),A) )
           => in(ordered_pair(B,D),A) ) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> element(A,powerset(B)) ) ).

fof(cc18_membered,axiom,
    ! [A] :
      ( v3_membered(A)
     => ! [B] :
          ( ( v1_membered(B)
            & v3_membered(B)
            & v2_membered(B) )
         <= element(B,powerset(A)) ) ) ).

fof(d6_ordinal1,axiom,
    ! [A] :
      ( A = union(A)
    <=> being_limit_ordinal(A) ) ).

fof(d1_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ( in(ordered_pair(D,B),A)
                & B != D ) )
        <=> fiber(A,B) = C ) ) ).

fof(t3_xboole_0,lemma,
    ! [A,B] :
      ( ~ ( ! [C] :
              ~ ( in(C,B)
                & in(C,A) )
          & ~ disjoint(A,B) )
      & ~ ( ? [C] :
              ( in(C,B)
              & in(C,A) )
          & disjoint(A,B) ) ) ).

fof(idempotence_k5_subset_1,axiom,
    ! [A,B,C] :
      ( B = subset_intersection2(A,B,B)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         => in(C,B) )
    <=> subset(A,B) ) ).

fof(t90_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom(relation_dom_restriction(B,A)) = set_intersection2(relation_dom(B),A) ) ).

fof(d4_wellord2,axiom,
    ! [A,B] :
      ( ? [C] :
          ( function(C)
          & one_to_one(C)
          & relation_rng(C) = B
          & A = relation_dom(C)
          & relation(C) )
    <=> equipotent(A,B) ) ).

fof(d8_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D,E] :
              ( ( in(C,B)
                & in(D,B)
                & in(ordered_pair(C,D),A)
                & in(ordered_pair(D,E),A)
                & in(E,B) )
             => in(ordered_pair(C,E),A) )
        <=> is_transitive_in(A,B) )
     <= relation(A) ) ).

fof(t26_lattices,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & join_commutative(A) )
     => ! [B] :
          ( ! [C] :
              ( ( ( below(A,B,C)
                  & below(A,C,B) )
               => B = C )
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(dt_k3_subset_1,axiom,
    ! [A,B] :
      ( element(subset_complement(A,B),powerset(A))
     <= element(B,powerset(A)) ) ).

fof(t178_relat_1,lemma,
    ! [A,B,C] :
      ( ( subset(relation_inverse_image(C,A),relation_inverse_image(C,B))
       <= subset(A,B) )
     <= relation(C) ) ).

fof(t21_relat_1,lemma,
    ! [A] :
      ( subset(A,cartesian_product2(relation_dom(A),relation_rng(A)))
     <= relation(A) ) ).

fof(fc13_finset_1,axiom,
    ! [A,B] :
      ( ( function(A)
        & finite(B)
        & relation(A) )
     => finite(relation_image(A,B)) ) ).

fof(involutiveness_k3_subset_1,axiom,
    ! [A,B] :
      ( subset_complement(A,subset_complement(A,B)) = B
     <= element(B,powerset(A)) ) ).

fof(t32_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_ordering(relation_restriction(B,A))
       <= well_ordering(B) ) ) ).

fof(involutiveness_k4_relat_1,axiom,
    ! [A] :
      ( relation_inverse(relation_inverse(A)) = A
     <= relation(A) ) ).

fof(t20_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_dom(C))
          & in(B,relation_rng(C)) )
       <= in(ordered_pair(A,B),C) ) ) ).

fof(s1_tarski__e6_21__wellord2__1,axiom,
    ! [A,B,C] :
      ( ( ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( in(F,cartesian_product2(A,A))
                & ? [K,L] :
                    ( in(ordered_pair(apply(C,K),apply(C,L)),B)
                    & ordered_pair(K,L) = E )
                & F = E ) )
       <= ! [D,E,F] :
            ( F = E
           <= ( ? [G,H] :
                  ( ordered_pair(G,H) = E
                  & in(ordered_pair(apply(C,G),apply(C,H)),B) )
              & ? [I,J] :
                  ( in(ordered_pair(apply(C,I),apply(C,J)),B)
                  & F = ordered_pair(I,J) )
              & D = F
              & E = D ) ) )
     <= ( relation(B)
        & relation(C)
        & function(C) ) ) ).

fof(t26_wellord2,lemma,
    ! [A] :
    ? [B] :
      ( relation(B)
      & well_orders(B,A) ) ).

fof(s1_tarski__e10_24__wellord2__2,axiom,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ! [C] :
          ( ! [D,E,F] :
              ( ( ? [G,H] :
                    ( ? [I] :
                        ( I = G
                        & ! [J] :
                            ( in(J,I)
                           => in(ordered_pair(H,J),B) )
                        & in(H,I) )
                    & in(G,A)
                    & E = ordered_pair(G,H) )
                & D = F
                & ? [K,L] :
                    ( ordered_pair(K,L) = F
                    & in(K,A)
                    & ? [M] :
                        ( in(L,M)
                        & ! [N] :
                            ( in(ordered_pair(L,N),B)
                           <= in(N,M) )
                        & K = M ) )
                & D = E )
             => F = E )
         => ? [D] :
            ! [E] :
              ( ? [F] :
                  ( in(F,cartesian_product2(A,C))
                  & ? [O,P] :
                      ( ? [Q] :
                          ( ! [R] :
                              ( in(ordered_pair(P,R),B)
                             <= in(R,Q) )
                          & in(P,Q)
                          & Q = O )
                      & in(O,A)
                      & E = ordered_pair(O,P) )
                  & F = E )
            <=> in(E,D) ) ) ) ).

fof(t49_wellord1,lemma,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( ( relation(C)
                & function(C) )
             => ( relation_isomorphism(B,A,function_inverse(C))
               <= relation_isomorphism(A,B,C) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(t68_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ! [C] :
          ( ( function(C)
            & relation(C) )
         => ( relation_dom_restriction(C,A) = B
          <=> ( relation_dom(B) = set_intersection2(relation_dom(C),A)
              & ! [D] :
                  ( in(D,relation_dom(B))
                 => apply(B,D) = apply(C,D) ) ) ) ) ) ).

fof(d5_subset_1,axiom,
    ! [A,B] :
      ( element(B,powerset(A))
     => set_difference(A,B) = subset_complement(A,B) ) ).

fof(t30_relat_1,lemma,
    ! [A,B,C] :
      ( ( ( in(A,relation_field(C))
          & in(B,relation_field(C)) )
       <= in(ordered_pair(A,B),C) )
     <= relation(C) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(s1_tarski__e18_27__finset_1__1,axiom,
    ! [A] :
      ( ordinal(A)
     => ( ? [B] :
          ! [C] :
            ( ? [D] :
                ( in(D,succ(A))
                & ? [M] :
                    ( ( in(M,omega)
                     => ! [N] :
                          ( ~ ( empty_set != N
                              & ! [O] :
                                  ~ ( in(O,N)
                                    & ! [P] :
                                        ( ( in(P,N)
                                          & subset(O,P) )
                                       => P = O ) ) )
                         <= element(N,powerset(powerset(M))) ) )
                    & C = M
                    & ordinal(M) )
                & C = D )
          <=> in(C,B) )
       <= ! [B,C,D] :
            ( ( ? [I] :
                  ( ordinal(I)
                  & ( in(I,omega)
                   => ! [J] :
                        ( element(J,powerset(powerset(I)))
                       => ~ ( ! [K] :
                                ~ ( in(K,J)
                                  & ! [L] :
                                      ( ( in(L,J)
                                        & subset(K,L) )
                                     => K = L ) )
                            & J != empty_set ) ) )
                  & D = I )
              & D = B
              & ? [E] :
                  ( E = C
                  & ( in(E,omega)
                   => ! [F] :
                        ( ~ ( F != empty_set
                            & ! [G] :
                                ~ ( ! [H] :
                                      ( H = G
                                     <= ( in(H,F)
                                        & subset(G,H) ) )
                                  & in(G,F) ) )
                       <= element(F,powerset(powerset(E))) ) )
                  & ordinal(E) )
              & C = B )
           => D = C ) ) ) ).

fof(d3_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => the_carrier(A) = cast_as_carrier_subset(A) ) ).

fof(fc9_finset_1,axiom,
    ! [A,B] :
      ( finite(set_union2(A,B))
     <= ( finite(A)
        & finite(B) ) ) ).

fof(l50_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,union(B))
     <= in(A,B) ) ).

fof(t1_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(B,C) )
     => subset(A,C) ) ).

fof(d13_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B,C] :
          ( C = relation_inverse_image(A,B)
        <=> ! [D] :
              ( in(D,C)
            <=> ( in(apply(A,D),B)
                & in(D,relation_dom(A)) ) ) ) ) ).

fof(fc5_pre_topc,axiom,
    ! [A] :
      ( closed_subset(cast_as_carrier_subset(A),A)
     <= ( topological_space(A)
        & top_str(A) ) ) ).

fof(s3_subset_1__e1_40__pre_topc,lemma,
    ! [A,B] :
      ( ? [C] :
          ( ! [D] :
              ( ( in(D,C)
              <=> ? [E] :
                    ( closed_subset(E,A)
                    & subset(B,D)
                    & D = E
                    & element(E,powerset(the_carrier(A))) ) )
             <= element(D,powerset(the_carrier(A))) )
          & element(C,powerset(powerset(the_carrier(A)))) )
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) ).

fof(d10_xboole_0,axiom,
    ! [A,B] :
      ( B = A
    <=> ( subset(B,A)
        & subset(A,B) ) ) ).

fof(fc6_tops_1,axiom,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) )
     => open_subset(interior(A,B),A) ) ).

fof(t38_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(unordered_pair(A,B),C)
    <=> ( in(A,C)
        & in(B,C) ) ) ).

fof(t25_wellord1,lemma,
    ! [A,B] :
      ( ( antisymmetric(B)
       => antisymmetric(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(t24_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ! [B] :
          ( ~ ( A != B
              & ~ in(B,A)
              & ~ in(A,B) )
         <= ordinal(B) ) ) ).

fof(t52_pre_topc,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( ( B = topstr_closure(A,B)
             <= closed_subset(B,A) )
            & ( closed_subset(B,A)
             <= ( topological_space(A)
                & topstr_closure(A,B) = B ) ) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(fc13_relat_1,axiom,
    ! [A,B] :
      ( ( relation_empty_yielding(A)
        & relation(A) )
     => ( relation(relation_dom_restriction(A,B))
        & relation_empty_yielding(relation_dom_restriction(A,B)) ) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(C,D)
              & in(D,A) ) )
    <=> B = union(A) ) ).

fof(t37_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
    <=> set_difference(A,B) = empty_set ) ).

fof(s1_tarski__e10_24__wellord2__1,axiom,
    ! [A,B] :
      ( ( ~ empty(A)
        & relation(B) )
     => ( ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,A)
                & ? [J] :
                    ( E = J
                    & in(D,J)
                    & ! [K] :
                        ( in(ordered_pair(D,K),B)
                       <= in(K,J) ) )
                & in(E,A) ) )
       <= ! [C,D,E] :
            ( ( in(C,A)
              & in(C,A)
              & ? [H] :
                  ( ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) )
                  & in(E,H)
                  & C = H )
              & ? [F] :
                  ( ! [G] :
                      ( in(ordered_pair(D,G),B)
                     <= in(G,F) )
                  & in(D,F)
                  & C = F ) )
           => D = E ) ) ) ).

fof(dt_k6_subset_1,axiom,
    ! [A,B,C] :
      ( element(subset_difference(A,B,C),powerset(A))
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(t160_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => relation_rng(relation_composition(A,B)) = relation_image(B,relation_rng(A)) )
     <= relation(A) ) ).

fof(d5_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( ( in(B,the_topology(A))
          <=> open_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) )
     <= top_str(A) ) ).

fof(s1_tarski__e4_27_3_1__finset_1__1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & element(B,powerset(powerset(succ(A)))) )
     => ( ! [C,D,E] :
            ( ( D = C
              & ? [G] :
                  ( E = set_difference(G,singleton(A))
                  & in(G,B) )
              & C = E
              & ? [F] :
                  ( D = set_difference(F,singleton(A))
                  & in(F,B) ) )
           => E = D )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( ? [H] :
                    ( in(H,B)
                    & set_difference(H,singleton(A)) = D )
                & E = D
                & in(E,powerset(A)) ) ) ) ) ).

fof(fc27_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(set_intersection2(A,B)) ) ).

fof(t136_zfmisc_1,lemma,
    ! [A] :
    ? [B] :
      ( in(A,B)
      & ! [C,D] :
          ( ( subset(D,C)
            & in(C,B) )
         => in(D,B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ in(C,B)
            & ~ are_equipotent(C,B) )
      & ! [C] :
          ( in(powerset(C),B)
         <= in(C,B) ) ) ).

fof(t42_ordinal1,lemma,
    ! [A] :
      ( ordinal(A)
     => ( ~ ( ~ being_limit_ordinal(A)
            & ! [B] :
                ( A != succ(B)
               <= ordinal(B) ) )
        & ~ ( being_limit_ordinal(A)
            & ? [B] :
                ( ordinal(B)
                & A = succ(B) ) ) ) ) ).

fof(fc35_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v5_membered(set_intersection2(A,B))
        & v4_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) )
     <= v5_membered(A) ) ).

fof(t48_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset(B,topstr_closure(A,B)) )
     <= top_str(A) ) ).

fof(t119_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_rng(relation_rng_restriction(A,B)) = set_intersection2(relation_rng(B),A) ) ).

fof(t51_tops_1,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( open_subset(interior(A,B),A)
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t23_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ! [C] :
          ( ( in(A,relation_dom(B))
           => apply(C,apply(B,A)) = apply(relation_composition(B,C),A) )
         <= ( function(C)
            & relation(C) ) ) ) ).

fof(reflexivity_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(B)
        & ordinal(A) )
     => ordinal_subset(A,A) ) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( empty_set = A
    <=> ! [B] : ~ in(B,A) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( empty(A)
      & relation(A) ) ).

fof(t21_ordinal1,lemma,
    ! [A] :
      ( epsilon_transitive(A)
     => ! [B] :
          ( ( proper_subset(A,B)
           => in(A,B) )
         <= ordinal(B) ) ) ).

fof(redefinition_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & join_semilatt_str(A)
        & join_commutative(A) )
     => join_commut(A,B,C) = join(A,B,C) ) ).

fof(t47_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( subset(relation_dom(A),relation_rng(B))
           => relation_rng(relation_composition(B,A)) = relation_rng(A) )
         <= relation(B) )
     <= relation(A) ) ).

fof(t12_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( subset(relation_dom(C),A)
        & subset(relation_rng(C),B) ) ) ).

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
                      ( ~ ( E != empty_set
                          & ! [F] :
                              ~ ( in(F,E)
                                & ! [G] :
                                    ( ( subset(F,G)
                                      & in(G,E) )
                                   => F = G ) ) )
                     <= element(E,powerset(powerset(D))) ) )
                & ordinal(D) ) ) )
     <= ordinal(A) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(t8_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(set_union2(A,C),B)
     <= ( subset(A,B)
        & subset(C,B) ) ) ).

fof(dt_k1_enumset1,axiom,
    $true ).

fof(t70_funct_1,lemma,
    ! [A,B,C] :
      ( ( apply(relation_dom_restriction(C,A),B) = apply(C,B)
       <= in(B,relation_dom(relation_dom_restriction(C,A))) )
     <= ( function(C)
        & relation(C) ) ) ).

fof(t118_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),relation_rng(B))
     <= relation(B) ) ).

fof(t44_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( subset(relation_dom(relation_composition(A,B)),relation_dom(A))
         <= relation(B) )
     <= relation(A) ) ).

fof(existence_l2_lattices,axiom,
    ? [A] : join_semilatt_str(A) ).

fof(d8_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( ( is_a_cover_of_carrier(A,B)
          <=> cast_as_carrier_subset(A) = union_of_subsets(the_carrier(A),B) )
         <= element(B,powerset(powerset(the_carrier(A)))) )
     <= one_sorted_str(A) ) ).

fof(rc2_partfun1,axiom,
    ! [A,B] :
    ? [C] :
      ( function(C)
      & relation(C)
      & relation_of2(C,A,B) ) ).

fof(d1_wellord2,axiom,
    ! [A,B] :
      ( relation(B)
     => ( ( ! [C,D] :
              ( ( in(D,A)
                & in(C,A) )
             => ( subset(C,D)
              <=> in(ordered_pair(C,D),B) ) )
          & A = relation_field(B) )
      <=> B = inclusion_relation(A) ) ) ).

fof(dt_k4_relat_1,axiom,
    ! [A] :
      ( relation(relation_inverse(A))
     <= relation(A) ) ).

fof(t45_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => set_union2(A,set_difference(B,A)) = B ) ).

fof(cc1_arytm_3,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,A)
         => ( epsilon_connected(B)
            & ordinal(B)
            & epsilon_transitive(B) ) )
     <= ordinal(A) ) ).

fof(t106_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(B,D)
        & in(A,C) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( A = empty_set
     <= empty(A) ) ).

fof(d5_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ! [B] :
          ( ! [C] :
              ( ? [D] :
                  ( in(D,relation_dom(A))
                  & C = apply(A,D) )
            <=> in(C,B) )
        <=> relation_rng(A) = B ) ) ).

fof(t143_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ? [D] :
            ( in(D,relation_dom(C))
            & in(D,B)
            & in(ordered_pair(D,A),C) )
      <=> in(A,relation_image(C,B)) ) ) ).

fof(t35_funct_1,lemma,
    ! [A,B] :
      ( B = apply(identity_relation(A),B)
     <= in(B,A) ) ).

fof(redefinition_r2_wellord2,axiom,
    ! [A,B] :
      ( are_equipotent(A,B)
    <=> equipotent(A,B) ) ).

fof(symmetry_r2_wellord2,axiom,
    ! [A,B] :
      ( equipotent(A,B)
     => equipotent(B,A) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) ).

fof(d1_funct_1,axiom,
    ! [A] :
      ( function(A)
    <=> ! [B,C,D] :
          ( D = C
         <= ( in(ordered_pair(B,D),A)
            & in(ordered_pair(B,C),A) ) ) ) ).

fof(redefinition_r1_ordinal1,axiom,
    ! [A,B] :
      ( ( ordinal(A)
        & ordinal(B) )
     => ( subset(A,B)
      <=> ordinal_subset(A,B) ) ) ).

fof(t7_mcart_1,lemma,
    ! [A,B] :
      ( pair_second(ordered_pair(A,B)) = B
      & A = pair_first(ordered_pair(A,B)) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(t44_pre_topc,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( element(B,powerset(powerset(the_carrier(A))))
         => ( closed_subset(meet_of_subsets(the_carrier(A),B),A)
           <= ! [C] :
                ( ( closed_subset(C,A)
                 <= in(C,B) )
               <= element(C,powerset(the_carrier(A))) ) ) ) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(t7_wellord2,lemma,
    ! [A] :
      ( well_ordering(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(t13_finset_1,lemma,
    ! [A,B] :
      ( finite(A)
     <= ( subset(A,B)
        & finite(B) ) ) ).

fof(dt_l3_lattices,axiom,
    ! [A] :
      ( latt_str(A)
     => ( meet_semilatt_str(A)
        & join_semilatt_str(A) ) ) ).

fof(fc1_finset_1,axiom,
    ! [A] :
      ( ~ empty(singleton(A))
      & finite(singleton(A)) ) ).

fof(t16_wellord1,lemma,
    ! [A,B,C] :
      ( ( ( in(A,C)
          & in(A,cartesian_product2(B,B)) )
      <=> in(A,relation_restriction(C,B)) )
     <= relation(C) ) ).

fof(t15_pre_topc,lemma,
    ! [A] :
      ( one_sorted_str(A)
     => ! [B] :
          ( B = subset_intersection2(the_carrier(A),B,cast_as_carrier_subset(A))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t145_relat_1,lemma,
    ! [A,B] :
      ( relation_image(B,set_intersection2(relation_dom(B),A)) = relation_image(B,A)
     <= relation(B) ) ).

fof(s1_tarski__e16_22__wellord2__1,axiom,
    ! [A] :
      ( ! [B,C,D] :
          ( ( C = singleton(B)
            & D = singleton(B)
            & in(B,A)
            & in(B,A) )
         => C = D )
     => ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & C = singleton(D)
              & in(D,A) ) ) ) ).

fof(dt_k2_mcart_1,axiom,
    $true ).

fof(rc1_membered,axiom,
    ? [A] :
      ( ~ empty(A)
      & v5_membered(A)
      & v4_membered(A)
      & v3_membered(A)
      & v2_membered(A)
      & v1_membered(A) ) ).

fof(fc10_finset_1,axiom,
    ! [A,B] :
      ( finite(B)
     => finite(set_intersection2(A,B)) ) ).

fof(cc10_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( v1_xcmplx_0(B)
         <= element(B,A) )
     <= v1_membered(A) ) ).

fof(t2_xboole_1,lemma,
    ! [A] : subset(empty_set,A) ).

fof(t166_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( in(A,relation_inverse_image(C,B))
      <=> ? [D] :
            ( in(ordered_pair(A,D),C)
            & in(D,B)
            & in(D,relation_rng(C)) ) ) ) ).

fof(t72_funct_1,lemma,
    ! [A,B,C] :
      ( ( apply(C,B) = apply(relation_dom_restriction(C,A),B)
       <= in(B,A) )
     <= ( relation(C)
        & function(C) ) ) ).

fof(s1_tarski__e1_40__pre_topc__1,axiom,
    ! [A,B] :
      ( ( topological_space(A)
        & element(B,powerset(the_carrier(A)))
        & top_str(A) )
     => ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( ? [H] :
                    ( element(H,powerset(the_carrier(A)))
                    & closed_subset(H,A)
                    & subset(B,D)
                    & D = H )
                & E = D
                & in(E,powerset(the_carrier(A))) )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( ( ? [F] :
                  ( D = F
                  & subset(B,D)
                  & closed_subset(F,A)
                  & element(F,powerset(the_carrier(A))) )
              & ? [G] :
                  ( element(G,powerset(the_carrier(A)))
                  & G = E
                  & closed_subset(G,A)
                  & subset(B,E) )
              & C = E
              & D = C )
           => D = E ) ) ) ).

fof(d2_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & meet_semilatt_str(A) )
     => ! [B] :
          ( ! [C] :
              ( meet(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_meet(A),B,C)
             <= element(C,the_carrier(A)) )
         <= element(B,the_carrier(A)) ) ) ).

fof(dt_k2_binop_1,axiom,
    ! [A,B,C,D,E,F] :
      ( element(apply_binary_as_element(A,B,C,D,E,F),C)
     <= ( ~ empty(B)
        & relation_of2(D,cartesian_product2(A,B),C)
        & element(E,A)
        & element(F,B)
        & quasi_total(D,cartesian_product2(A,B),C)
        & function(D)
        & ~ empty(A) ) ) ).

fof(d5_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( well_orders(A,B)
        <=> ( is_connected_in(A,B)
            & is_well_founded_in(A,B)
            & is_antisymmetric_in(A,B)
            & is_transitive_in(A,B)
            & is_reflexive_in(A,B) ) )
     <= relation(A) ) ).

fof(fc3_relat_1,axiom,
    ! [A,B] :
      ( relation(set_difference(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(t37_relat_1,lemma,
    ! [A] :
      ( ( relation_dom(relation_inverse(A)) = relation_rng(A)
        & relation_dom(A) = relation_rng(relation_inverse(A)) )
     <= relation(A) ) ).

fof(fc6_relat_1,axiom,
    ! [A] :
      ( ~ empty(relation_rng(A))
     <= ( relation(A)
        & ~ empty(A) ) ) ).

fof(s2_funct_1__e10_24__wellord2,lemma,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ( ( ! [C,D,E] :
              ( ( in(C,A)
                & ? [H] :
                    ( C = H
                    & in(E,H)
                    & ! [I] :
                        ( in(ordered_pair(E,I),B)
                       <= in(I,H) ) )
                & ? [F] :
                    ( in(D,F)
                    & ! [G] :
                        ( in(G,F)
                       => in(ordered_pair(D,G),B) )
                    & F = C ) )
             => D = E )
          & ! [C] :
              ~ ( ! [D] :
                    ~ ? [J] :
                        ( J = C
                        & ! [K] :
                            ( in(ordered_pair(D,K),B)
                           <= in(K,J) )
                        & in(D,J) )
                & in(C,A) ) )
       => ? [C] :
            ( relation(C)
            & A = relation_dom(C)
            & ! [D] :
                ( in(D,A)
               => ? [L] :
                    ( D = L
                    & ! [M] :
                        ( in(ordered_pair(apply(C,D),M),B)
                       <= in(M,L) )
                    & in(apply(C,D),L) ) )
            & function(C) ) ) ) ).

fof(t10_tops_2,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( ~ ( empty_set = complements_of_subsets(A,B)
            & empty_set != B )
        & ~ ( complements_of_subsets(A,B) != empty_set
            & empty_set = B ) ) ) ).

fof(d4_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(C,D),A) )
        <=> relation_dom(A) = B )
     <= relation(A) ) ).

fof(t48_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( union_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),meet_of_subsets(A,B))
       <= empty_set != B ) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( finite(A)
     <= empty(A) ) ).

fof(s2_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ? [B] :
          ( function(B)
          & relation_dom(B) = A
          & ! [C] :
              ( singleton(C) = apply(B,C)
             <= in(C,A) )
          & relation(B) )
     <= ( ! [B] :
            ~ ( in(B,A)
              & ! [C] : C != singleton(B) )
        & ! [B,C,D] :
            ( C = D
           <= ( singleton(B) = C
              & singleton(B) = D
              & in(B,A) ) ) ) ) ).

fof(d1_relset_1,axiom,
    ! [A,B,C] :
      ( subset(C,cartesian_product2(A,B))
    <=> relation_of2(C,A,B) ) ).

fof(t86_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_dom(C))
          & in(A,B) )
      <=> in(A,relation_dom(relation_dom_restriction(C,B))) ) ) ).

fof(rc4_funct_1,axiom,
    ? [A] :
      ( function(A)
      & relation_empty_yielding(A)
      & relation(A) ) ).

fof(d4_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D] :
              ( C = D
             <= ( in(D,B)
                & in(ordered_pair(D,C),A)
                & in(ordered_pair(C,D),A)
                & in(C,B) ) )
        <=> is_antisymmetric_in(A,B) )
     <= relation(A) ) ).

fof(s1_xboole_0__e16_22__wellord2__1,lemma,
    ! [A,B] :
    ? [C] :
    ! [D] :
      ( in(D,C)
    <=> ( in(D,cartesian_product2(A,B))
        & ? [E,F] :
            ( D = ordered_pair(E,F)
            & F = singleton(E)
            & in(E,A) ) ) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(d1_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( in(C,B)
             => in(ordered_pair(C,C),A) )
        <=> is_reflexive_in(A,B) ) ) ).

fof(t46_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( function(D)
        & relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B) )
     => ( ! [E] :
            ( in(E,relation_inverse_image(D,C))
          <=> ( in(E,A)
              & in(apply(D,E),C) ) )
       <= B != empty_set ) ) ).

fof(fc11_finset_1,axiom,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(A) ) ).

fof(cc13_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B) )
         <= element(B,A) ) ) ).

fof(t57_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ( ( apply(B,apply(function_inverse(B),A)) = A
          & apply(relation_composition(function_inverse(B),B),A) = A )
       <= ( in(A,relation_rng(B))
          & one_to_one(B) ) ) ) ).

fof(t39_wellord1,lemma,
    ! [A,B] :
      ( ( A = relation_field(relation_restriction(B,A))
       <= ( subset(A,relation_field(B))
          & well_ordering(B) ) )
     <= relation(B) ) ).

fof(t26_xboole_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => subset(set_intersection2(A,C),set_intersection2(B,C)) ) ).

fof(rc1_tops_1,axiom,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & open_subset(B,A) ) ) ).

fof(redefinition_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( meet_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & ~ empty_carrier(A) )
     => meet_commut(A,B,C) = meet(A,B,C) ) ).

fof(dt_k1_funct_1,axiom,
    $true ).

fof(t7_xboole_1,lemma,
    ! [A,B] : subset(A,set_union2(A,B)) ).

fof(t88_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom_restriction(B,A),B) ) ).

fof(s3_subset_1__e2_37_1_1__pre_topc,lemma,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & topological_space(A) )
     => ? [C] :
          ( element(C,powerset(powerset(the_carrier(A))))
          & ! [D] :
              ( ( in(D,C)
              <=> in(set_difference(cast_as_carrier_subset(A),D),B) )
             <= element(D,powerset(the_carrier(A))) ) ) ) ).

fof(t46_zfmisc_1,lemma,
    ! [A,B] :
      ( B = set_union2(singleton(A),B)
     <= in(A,B) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(dt_u1_lattices,axiom,
    ! [A] :
      ( meet_semilatt_str(A)
     => ( function(the_L_meet(A))
        & quasi_total(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A))
        & relation_of2_as_subset(the_L_meet(A),cartesian_product2(the_carrier(A),the_carrier(A)),the_carrier(A)) ) ) ).

fof(dt_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(complements_of_subsets(A,B),powerset(powerset(A)))
     <= element(B,powerset(powerset(A))) ) ).

fof(d7_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( relation_isomorphism(A,B,C)
              <=> ( relation_dom(C) = relation_field(A)
                  & one_to_one(C)
                  & ! [D,E] :
                      ( in(ordered_pair(D,E),A)
                    <=> ( in(E,relation_field(A))
                        & in(ordered_pair(apply(C,D),apply(C,E)),B)
                        & in(D,relation_field(A)) ) )
                  & relation_field(B) = relation_rng(C) ) )
             <= ( relation(C)
                & function(C) ) ) ) ) ).

fof(t94_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => relation_dom_restriction(B,A) = relation_composition(identity_relation(A),B) ) ).

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

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(t43_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( element(C,powerset(A))
         => ( subset(B,subset_complement(A,C))
          <=> disjoint(B,C) ) )
     <= element(B,powerset(A)) ) ).

fof(t33_ordinal1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( in(A,B)
          <=> ordinal_subset(succ(A),B) )
         <= ordinal(B) )
     <= ordinal(A) ) ).

fof(d12_funct_1,axiom,
    ! [A] :
      ( ( function(A)
        & relation(A) )
     => ! [B,C] :
          ( ! [D] :
              ( in(D,C)
            <=> ? [E] :
                  ( in(E,relation_dom(A))
                  & apply(A,E) = D
                  & in(E,B) ) )
        <=> C = relation_image(A,B) ) ) ).

fof(d8_xboole_0,axiom,
    ! [A,B] :
      ( ( A != B
        & subset(A,B) )
    <=> proper_subset(A,B) ) ).

fof(rc1_partfun1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & empty(A)
      & function(A) ) ).

fof(existence_l3_lattices,axiom,
    ? [A] : latt_str(A) ).

fof(t118_zfmisc_1,lemma,
    ! [A,B,C] :
      ( subset(A,B)
     => ( subset(cartesian_product2(A,C),cartesian_product2(B,C))
        & subset(cartesian_product2(C,A),cartesian_product2(C,B)) ) ) ).

fof(t63_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & disjoint(B,C) )
     => disjoint(A,C) ) ).

fof(t17_finset_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( finite(relation_image(B,A))
       <= finite(A) ) ) ).

fof(d12_relat_2,axiom,
    ! [A] :
      ( ( antisymmetric(A)
      <=> is_antisymmetric_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(s1_xboole_0__e8_6__wellord2__1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( ( in(D,succ(B))
            & ? [E] :
                ( D = E
                & in(E,A)
                & ordinal(E) ) )
        <=> in(D,C) )
     <= ordinal(B) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(s1_relat_1__e6_21__wellord2,lemma,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C)
        & relation(B) )
     => ? [D] :
          ( ! [E,F] :
              ( in(ordered_pair(E,F),D)
            <=> ( in(E,A)
                & in(F,A)
                & in(ordered_pair(apply(C,E),apply(C,F)),B) ) )
          & relation(D) ) ) ).

fof(dt_k6_relat_1,axiom,
    ! [A] : relation(identity_relation(A)) ).

fof(fc36_membered,axiom,
    ! [A,B] :
      ( v5_membered(A)
     => ( v1_membered(set_intersection2(B,A))
        & v2_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v5_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A)) ) ) ).

fof(t7_tarski,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & ! [C] :
            ~ ( in(C,B)
              & ! [D] :
                  ~ ( in(D,C)
                    & in(D,B) ) ) ) ).

fof(s1_ordinal1__e8_6__wellord2,lemma,
    ! [A] :
      ( ? [B] :
          ( in(B,A)
          & ordinal(B) )
     => ? [B] :
          ( ordinal(B)
          & in(B,A)
          & ! [C] :
              ( ordinal(C)
             => ( in(C,A)
               => ordinal_subset(B,C) ) ) ) ) ).

fof(dt_k1_binop_1,axiom,
    $true ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(B,A)
     <= disjoint(A,B) ) ).

fof(t145_funct_1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => subset(relation_image(B,relation_inverse_image(B,A)),A) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) ).

fof(t2_boole,axiom,
    ! [A] : empty_set = set_intersection2(A,empty_set) ).

fof(t140_relat_1,lemma,
    ! [A,B,C] :
      ( relation_dom_restriction(relation_rng_restriction(A,C),B) = relation_rng_restriction(A,relation_dom_restriction(C,B))
     <= relation(C) ) ).

fof(cc4_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     <= v2_membered(A) ) ).

fof(t9_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( subset(B,C)
       => ( ( relation_of2_as_subset(D,A,C)
            & quasi_total(D,A,C)
            & function(D) )
          | ( empty_set != A
            & empty_set = B ) ) )
     <= ( quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B)
        & function(D) ) ) ).

fof(d7_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ( ! [C,D] :
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(D,C),A) )
          <=> B = relation_inverse(A) ) ) ) ).

fof(t4_wellord2,lemma,
    ! [A] :
      ( connected(inclusion_relation(A))
     <= ordinal(A) ) ).

fof(dt_k1_wellord1,axiom,
    $true ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(s3_funct_1__e16_22__wellord2,lemma,
    ! [A] :
    ? [B] :
      ( relation(B)
      & ! [C] :
          ( in(C,A)
         => singleton(C) = apply(B,C) )
      & A = relation_dom(B)
      & function(B) ) ).

fof(t60_relat_1,lemma,
    ( relation_dom(empty_set) = empty_set
    & empty_set = relation_rng(empty_set) ) ).

fof(s1_funct_1__e16_22__wellord2__1,lemma,
    ! [A] :
      ( ? [B] :
          ( relation(B)
          & ! [C,D] :
              ( ( in(C,A)
                & singleton(C) = D
                & in(C,A) )
            <=> in(ordered_pair(C,D),B) )
          & function(B) )
     <= ! [B,C,D] :
          ( D = C
         <= ( in(B,A)
            & singleton(B) = C
            & D = singleton(B)
            & in(B,A) ) ) ) ).

fof(l2_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),B)
    <=> in(A,B) ) ).

fof(d1_enumset1,axiom,
    ! [A,B,C,D] :
      ( ! [E] :
          ( ~ ( A != E
              & E != C
              & B != E )
        <=> in(E,D) )
    <=> D = unordered_triple(A,B,C) ) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(d1_funct_2,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( ( ( quasi_total(C,A,B)
          <=> A = relation_dom_as_subset(A,B,C) )
         <= ( empty_set = B
           => empty_set = A ) )
        & ( empty_set = B
         => ( ( quasi_total(C,A,B)
            <=> C = empty_set )
            | A = empty_set ) ) ) ) ).

fof(t54_funct_1,lemma,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( one_to_one(A)
       => ! [B] :
            ( ( ( relation_rng(A) = relation_dom(B)
                & ! [C,D] :
                    ( ( ( apply(A,D) = C
                        & in(D,relation_dom(A)) )
                     <= ( D = apply(B,C)
                        & in(C,relation_rng(A)) ) )
                    & ( ( apply(A,D) = C
                        & in(D,relation_dom(A)) )
                     => ( D = apply(B,C)
                        & in(C,relation_rng(A)) ) ) ) )
            <=> B = function_inverse(A) )
           <= ( function(B)
              & relation(B) ) ) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( ~ in(B,A)
     <= in(A,B) ) ).

fof(d13_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( C = relation_image(A,B)
        <=> ! [D] :
              ( ? [E] :
                  ( in(E,B)
                  & in(ordered_pair(E,D),A) )
            <=> in(D,C) ) )
     <= relation(A) ) ).

fof(dt_l1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= top_str(A) ) ).

fof(fc2_relat_1,axiom,
    ! [A,B] :
      ( relation(set_union2(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(d1_lattices,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( join(A,B,C) = apply_binary_as_element(the_carrier(A),the_carrier(A),the_carrier(A),the_L_join(A),B,C)
             <= element(C,the_carrier(A)) ) )
     <= ( join_semilatt_str(A)
        & ~ empty_carrier(A) ) ) ).

fof(t32_ordinal1,lemma,
    ! [A,B] :
      ( ~ ( subset(A,B)
          & A != empty_set
          & ! [C] :
              ( ordinal(C)
             => ~ ( ! [D] :
                      ( ordinal(D)
                     => ( ordinal_subset(C,D)
                       <= in(D,A) ) )
                  & in(C,A) ) ) )
     <= ordinal(B) ) ).

fof(t40_xboole_1,lemma,
    ! [A,B] : set_difference(set_union2(A,B),B) = set_difference(A,B) ).

fof(l1_wellord1,lemma,
    ! [A] :
      ( ( reflexive(A)
      <=> ! [B] :
            ( in(B,relation_field(A))
           => in(ordered_pair(B,B),A) ) )
     <= relation(A) ) ).

fof(t9_tarski,axiom,
    ! [A] :
    ? [B] :
      ( ! [C] :
          ~ ( ! [D] :
                ~ ( in(D,B)
                  & ! [E] :
                      ( subset(E,C)
                     => in(E,D) ) )
            & in(C,B) )
      & ! [C] :
          ~ ( subset(C,B)
            & ~ are_equipotent(C,B)
            & ~ in(C,B) )
      & ! [C,D] :
          ( in(D,B)
         <= ( in(C,B)
            & subset(D,C) ) )
      & in(A,B) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & ~ empty(A) ) ).

fof(cc1_ordinal1,axiom,
    ! [A] :
      ( ( epsilon_transitive(A)
        & epsilon_connected(A) )
     <= ordinal(A) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(d2_xboole_0,axiom,
    ! [A,B,C] :
      ( set_union2(A,B) = C
    <=> ! [D] :
          ( ( in(D,B)
            | in(D,A) )
        <=> in(D,C) ) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(fc31_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B)) )
     <= v3_membered(A) ) ).

fof(t34_funct_1,lemma,
    ! [A,B] :
      ( ( identity_relation(A) = B
      <=> ( ! [C] :
              ( C = apply(B,C)
             <= in(C,A) )
          & relation_dom(B) = A ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(t116_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_rng(relation_rng_restriction(A,B)),A)
     <= relation(B) ) ).

fof(l28_zfmisc_1,lemma,
    ! [A,B] :
      ( ~ in(A,B)
     => disjoint(singleton(A),B) ) ).

fof(d2_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ( A = B
          <=> ! [C,D] :
                ( in(ordered_pair(C,D),B)
              <=> in(ordered_pair(C,D),A) ) )
         <= relation(B) ) ) ).

fof(t18_finset_1,lemma,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( ~ ( ! [C] :
                  ~ ( in(C,B)
                    & ! [D] :
                        ( ( subset(C,D)
                          & in(D,B) )
                       => D = C ) )
              & empty_set != B )
         <= element(B,powerset(powerset(A))) ) ) ).

fof(d9_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A) )
     => ( function_inverse(A) = relation_inverse(A)
       <= one_to_one(A) ) ) ).

fof(t12_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
     => B = set_union2(A,B) ) ).

fof(d1_ordinal1,axiom,
    ! [A] : succ(A) = set_union2(A,singleton(A)) ).

fof(d4_wellord1,axiom,
    ! [A] :
      ( relation(A)
     => ( well_ordering(A)
      <=> ( reflexive(A)
          & connected(A)
          & well_founded_relation(A)
          & antisymmetric(A)
          & transitive(A) ) ) ) ).

fof(t20_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(relation_field(relation_restriction(B,A)),A)
        & subset(relation_field(relation_restriction(B,A)),relation_field(B)) ) ) ).

fof(s1_tarski__e2_37_1_1__pre_topc__1,axiom,
    ! [A,B] :
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(powerset(the_carrier(A)))) )
     => ( ! [C,D,E] :
            ( ( C = E
              & in(set_difference(cast_as_carrier_subset(A),E),B)
              & in(set_difference(cast_as_carrier_subset(A),D),B)
              & D = C )
           => D = E )
       => ? [C] :
          ! [D] :
            ( in(D,C)
          <=> ? [E] :
                ( in(E,powerset(the_carrier(A)))
                & E = D
                & in(set_difference(cast_as_carrier_subset(A),D),B) ) ) ) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) ).

fof(t30_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( open_subset(B,A)
          <=> closed_subset(subset_complement(the_carrier(A),B),A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(redefinition_k5_subset_1,axiom,
    ! [A,B,C] :
      ( subset_intersection2(A,B,C) = set_intersection2(B,C)
     <= ( element(C,powerset(A))
        & element(B,powerset(A)) ) ) ).

fof(existence_l1_pre_topc,axiom,
    ? [A] : top_str(A) ).

fof(dt_u1_pre_topc,axiom,
    ! [A] :
      ( element(the_topology(A),powerset(powerset(the_carrier(A))))
     <= top_str(A) ) ).

fof(dt_k10_relat_1,axiom,
    $true ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D] :
              ~ ( D != C
                & ~ in(ordered_pair(C,D),A)
                & ~ in(ordered_pair(D,C),A)
                & in(D,B)
                & in(C,B) )
        <=> is_connected_in(A,B) )
     <= relation(A) ) ).

fof(cc20_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v2_membered(B)
            & v3_membered(B)
            & v5_membered(B)
            & v4_membered(B)
            & v1_membered(B) ) )
     <= v5_membered(A) ) ).

fof(t23_lattices,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & meet_commutative(A)
        & latt_str(A)
        & meet_absorbing(A) )
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( below(A,meet_commut(A,B,C),B)
             <= element(C,the_carrier(A)) ) ) ) ).

fof(d11_relat_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ( C = relation_dom_restriction(A,B)
          <=> ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,B)
                  & in(ordered_pair(D,E),A) ) ) )
         <= relation(C) )
     <= relation(A) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(t144_relat_1,lemma,
    ! [A,B] :
      ( subset(relation_image(B,A),relation_rng(B))
     <= relation(B) ) ).

fof(s1_xboole_0__e6_22__wellord2,lemma,
    ! [A] :
    ? [B] :
    ! [C] :
      ( in(C,B)
    <=> ( in(C,A)
        & ordinal(C) ) ) ).

fof(cc1_finsub_1,axiom,
    ! [A] :
      ( preboolean(A)
     => ( cup_closed(A)
        & diff_closed(A) ) ) ).

fof(l3_subset_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
         <= in(C,B) )
     <= element(B,powerset(A)) ) ).

fof(t1_zfmisc_1,lemma,
    powerset(empty_set) = singleton(empty_set) ).

fof(fc12_finset_1,axiom,
    ! [A,B] :
      ( finite(A)
     => finite(set_difference(A,B)) ) ).

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

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(A))
      & empty(B) ) ).

fof(rc2_finset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & relation(B)
      & finite(B)
      & natural(B)
      & ordinal(B)
      & epsilon_connected(B)
      & epsilon_transitive(B)
      & one_to_one(B)
      & function(B)
      & element(B,powerset(A)) ) ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

fof(l29_wellord1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_dom(relation_rng_restriction(A,B)),relation_dom(B)) ) ).

fof(t1_boole,axiom,
    ! [A] : A = set_union2(A,empty_set) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(fc8_relat_1,axiom,
    ! [A] :
      ( ( relation(relation_rng(A))
        & empty(relation_rng(A)) )
     <= empty(A) ) ).

fof(t3_ordinal1,lemma,
    ! [A,B,C] :
      ~ ( in(C,A)
        & in(B,C)
        & in(A,B) ) ).

fof(dt_k2_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => element(cast_as_carrier_subset(A),powerset(the_carrier(A))) ) ).

fof(rc1_ordinal1,axiom,
    ? [A] :
      ( ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A) ) ).

fof(t11_tops_2,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( B != empty_set
       => meet_of_subsets(A,complements_of_subsets(A,B)) = subset_complement(A,union_of_subsets(A,B)) ) ) ).

fof(t62_funct_1,lemma,
    ! [A] :
      ( ( one_to_one(A)
       => one_to_one(function_inverse(A)) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(d8_lattices,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & latt_str(A) )
     => ( meet_absorbing(A)
      <=> ! [B] :
            ( element(B,the_carrier(A))
           => ! [C] :
                ( C = join(A,meet(A,B,C),C)
               <= element(C,the_carrier(A)) ) ) ) ) ).

fof(fc3_ordinal1,axiom,
    ! [A] :
      ( ( ~ empty(succ(A))
        & ordinal(succ(A))
        & epsilon_connected(succ(A))
        & epsilon_transitive(succ(A)) )
     <= ordinal(A) ) ).

fof(d1_struct_0,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( empty_carrier(A)
      <=> empty(the_carrier(A)) ) ) ).

fof(t16_relset_1,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,C,B)
       <= subset(A,B) )
     <= relation_of2_as_subset(D,C,A) ) ).

fof(commutativity_k4_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_semilatt_str(A)
        & meet_commutative(A) )
     => meet_commut(A,C,B) = meet_commut(A,B,C) ) ).

fof(d8_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ! [C] :
          ( ( complements_of_subsets(A,B) = C
          <=> ! [D] :
                ( element(D,powerset(A))
               => ( in(subset_complement(A,D),B)
                <=> in(D,C) ) ) )
         <= element(C,powerset(powerset(A))) ) ) ).

fof(fc11_relat_1,axiom,
    ! [A] :
      ( ( relation(relation_inverse(A))
        & empty(relation_inverse(A)) )
     <= empty(A) ) ).

fof(dt_k4_xboole_0,axiom,
    $true ).

fof(d1_relat_1,axiom,
    ! [A] :
      ( relation(A)
    <=> ! [B] :
          ~ ( ! [C,D] : ordered_pair(C,D) != B
            & in(B,A) ) ) ).

fof(cc3_ordinal1,axiom,
    ! [A] :
      ( ( ordinal(A)
        & epsilon_connected(A)
        & epsilon_transitive(A) )
     <= empty(A) ) ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(B,A) = set_intersection2(A,B) ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( set_intersection2(A,B) = C
    <=> ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) ) ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & finite(B)
          & element(B,powerset(A)) )
     <= ~ empty(A) ) ).

fof(involutiveness_k7_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => complements_of_subsets(A,complements_of_subsets(A,B)) = B ) ).

fof(dt_k1_tops_1,axiom,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => element(interior(A,B),powerset(the_carrier(A))) ) ).

fof(redefinition_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_dom_as_subset(A,B,C) = relation_dom(C)
     <= relation_of2(C,A,B) ) ).

fof(s1_tarski__e6_27__finset_1__1,axiom,
    ! [A,B,C] :
      ( ( relation(C)
        & function(C)
        & element(B,powerset(powerset(A))) )
     => ( ! [D,E,F] :
            ( ( D = E
              & in(relation_image(C,E),B)
              & F = D
              & in(relation_image(C,F),B) )
           => F = E )
       => ? [D] :
          ! [E] :
            ( in(E,D)
          <=> ? [F] :
                ( E = F
                & in(relation_image(C,E),B)
                & in(F,powerset(relation_dom(C))) ) ) ) ) ).

fof(t46_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ( subset(relation_rng(A),relation_dom(B))
           => relation_dom(A) = relation_dom(relation_composition(A,B)) )
         <= relation(B) ) ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) ).

fof(dt_k8_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_rng_restriction(A,B))
     <= relation(B) ) ).

fof(d4_xboole_0,axiom,
    ! [A,B,C] :
      ( C = set_difference(A,B)
    <=> ! [D] :
          ( in(D,C)
        <=> ( ~ in(D,B)
            & in(D,A) ) ) ) ).

fof(t23_ordinal1,lemma,
    ! [A,B] :
      ( ordinal(B)
     => ( in(A,B)
       => ordinal(A) ) ) ).

fof(t3_boole,axiom,
    ! [A] : set_difference(A,empty_set) = A ).

fof(s1_xboole_0__e1_40__pre_topc__1,lemma,
    ! [A,B] :
      ( ( topological_space(A)
        & top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => ? [C] :
        ! [D] :
          ( in(D,C)
        <=> ( ? [E] :
                ( element(E,powerset(the_carrier(A)))
                & D = E
                & subset(B,D)
                & closed_subset(E,A) )
            & in(D,powerset(the_carrier(A))) ) ) ) ).

fof(t3_wellord2,lemma,
    ! [A] : transitive(inclusion_relation(A)) ).

fof(t23_relset_1,lemma,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => ( relation_rng_as_subset(A,B,C) = B
      <=> ! [D] :
            ~ ( in(D,B)
              & ! [E] : ~ in(ordered_pair(E,D),C) ) ) ) ).

fof(fc28_membered,axiom,
    ! [A,B] :
      ( v1_membered(A)
     => v1_membered(set_intersection2(B,A)) ) ).

fof(l55_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => finite(B) )
     <= finite(A) ) ).

fof(dt_k1_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A)) )
     => element(join(A,B,C),the_carrier(A)) ) ).

fof(dt_k2_subset_1,axiom,
    ! [A] : element(cast_to_subset(A),powerset(A)) ).

fof(dt_k5_ordinal2,axiom,
    $true ).

fof(dt_k7_relat_1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_dom_restriction(A,B)) ) ).

fof(d8_funct_1,axiom,
    ! [A] :
      ( ( ! [B,C] :
            ( B = C
           <= ( apply(A,B) = apply(A,C)
              & in(C,relation_dom(A))
              & in(B,relation_dom(A)) ) )
      <=> one_to_one(A) )
     <= ( function(A)
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
                    ( F = H
                    & ! [I] :
                        ( in(I,H)
                       => in(ordered_pair(G,I),B) )
                    & in(G,H) )
                & in(F,A)
                & E = ordered_pair(F,G) )
            & in(E,cartesian_product2(A,C)) )
        <=> in(E,D) ) ) ).

fof(fc5_funct_1,axiom,
    ! [A,B] :
      ( ( relation(B)
        & function(B) )
     => ( function(relation_rng_restriction(A,B))
        & relation(relation_rng_restriction(A,B)) ) ) ).

fof(cc11_membered,axiom,
    ! [A] :
      ( v2_membered(A)
     => ! [B] :
          ( element(B,A)
         => ( v1_xcmplx_0(B)
            & v1_xreal_0(B) ) ) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

fof(dt_k5_relat_1,axiom,
    ! [A,B] :
      ( relation(relation_composition(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(fc38_membered,axiom,
    ! [A,B] :
      ( ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B)) )
     <= v2_membered(A) ) ).

fof(fc40_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v1_membered(set_difference(A,B))
        & v2_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B)) ) ) ).

fof(fc33_membered,axiom,
    ! [A,B] :
      ( ( v4_membered(set_intersection2(A,B))
        & v3_membered(set_intersection2(A,B))
        & v2_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) )
     <= v4_membered(A) ) ).

fof(d2_mcart_1,axiom,
    ! [A] :
      ( ? [B,C] : ordered_pair(B,C) = A
     => ! [B] :
          ( ! [C,D] :
              ( B = D
             <= ordered_pair(C,D) = A )
        <=> pair_second(A) = B ) ) ).

fof(dt_k1_ordinal1,axiom,
    $true ).

fof(redefinition_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => relation_rng_as_subset(A,B,C) = relation_rng(C) ) ).

fof(cc15_membered,axiom,
    ! [A] :
      ( ( v1_membered(A)
        & v2_membered(A)
        & v4_membered(A)
        & v5_membered(A)
        & v3_membered(A) )
     <= empty(A) ) ).

fof(redefinition_k6_subset_1,axiom,
    ! [A,B,C] :
      ( subset_difference(A,B,C) = set_difference(B,C)
     <= ( element(B,powerset(A))
        & element(C,powerset(A)) ) ) ).

fof(s1_xboole_0__e2_37_1_1__pre_topc__1,lemma,
    ! [A,B] :
      ( ? [C] :
        ! [D] :
          ( ( in(set_difference(cast_as_carrier_subset(A),D),B)
            & in(D,powerset(the_carrier(A))) )
        <=> in(D,C) )
     <= ( top_str(A)
        & element(B,powerset(powerset(the_carrier(A))))
        & topological_space(A) ) ) ).

fof(t45_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( relation(B)
         => subset(relation_rng(relation_composition(A,B)),relation_rng(B)) )
     <= relation(A) ) ).

fof(dt_k1_wellord2,axiom,
    ! [A] : relation(inclusion_relation(A)) ).

fof(t22_relset_1,lemma,
    ! [A,B,C] :
      ( ( relation_dom_as_subset(B,A,C) = B
      <=> ! [D] :
            ~ ( ! [E] : ~ in(ordered_pair(D,E),C)
              & in(D,B) ) )
     <= relation_of2_as_subset(C,B,A) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

fof(t26_finset_1,lemma,
    ! [A] :
      ( ( finite(relation_dom(A))
       => finite(relation_rng(A)) )
     <= ( relation(A)
        & function(A) ) ) ).

fof(cc19_membered,axiom,
    ! [A] :
      ( v4_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => ( v4_membered(B)
            & v3_membered(B)
            & v2_membered(B)
            & v1_membered(B) ) ) ) ).

fof(fc29_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(A,B))
        & v1_membered(set_intersection2(A,B)) )
     <= v2_membered(A) ) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(s1_xboole_0__e6_27__finset_1,lemma,
    ! [A,B,C] :
      ( ? [D] :
        ! [E] :
          ( ( in(E,powerset(relation_dom(C)))
            & in(relation_image(C,E),B) )
        <=> in(E,D) )
     <= ( function(C)
        & relation(C)
        & element(B,powerset(powerset(A))) ) ) ).

fof(d6_wellord1,axiom,
    ! [A] :
      ( ! [B] : set_intersection2(A,cartesian_product2(B,B)) = relation_restriction(A,B)
     <= relation(A) ) ).

fof(l3_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( ! [B,C] :
            ( C = B
           <= ( in(ordered_pair(B,C),A)
              & in(ordered_pair(C,B),A) ) )
      <=> antisymmetric(A) ) ) ).

fof(fc2_pre_topc,axiom,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ~ empty(cast_as_carrier_subset(A)) ) ).

fof(t8_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ( well_ordering(A)
      <=> well_orders(A,relation_field(A)) ) ) ).

fof(l82_funct_1,lemma,
    ! [A,B,C] :
      ( ( ( in(B,A)
          & in(B,relation_dom(C)) )
      <=> in(B,relation_dom(relation_dom_restriction(C,A))) )
     <= ( relation(C)
        & function(C) ) ) ).

fof(t46_setfam_1,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ~ ( empty_set = complements_of_subsets(A,B)
          & empty_set != B ) ) ).

fof(t2_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( in(C,A)
        <=> in(C,B) )
     => A = B ) ).

fof(fc32_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) )
     <= v3_membered(A) ) ).

fof(t2_wellord2,lemma,
    ! [A] : reflexive(inclusion_relation(A)) ).

fof(t8_funct_1,lemma,
    ! [A,B,C] :
      ( ( ( B = apply(C,A)
          & in(A,relation_dom(C)) )
      <=> in(ordered_pair(A,B),C) )
     <= ( function(C)
        & relation(C) ) ) ).

fof(d1_tops_1,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( interior(A,B) = subset_complement(the_carrier(A),topstr_closure(A,subset_complement(the_carrier(A),B)))
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(l25_zfmisc_1,lemma,
    ! [A,B] :
      ~ ( disjoint(singleton(A),B)
        & in(A,B) ) ).

fof(d16_relat_2,axiom,
    ! [A] :
      ( ( transitive(A)
      <=> is_transitive_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t60_xboole_1,lemma,
    ! [A,B] :
      ~ ( proper_subset(B,A)
        & subset(A,B) ) ).

fof(dt_k6_pre_topc,axiom,
    ! [A,B] :
      ( ( top_str(A)
        & element(B,powerset(the_carrier(A))) )
     => element(topstr_closure(A,B),powerset(the_carrier(A))) ) ).

fof(t25_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ( well_orders(B,A)
       => ( well_ordering(relation_restriction(B,A))
          & relation_field(relation_restriction(B,A)) = A ) ) ) ).

fof(fc37_membered,axiom,
    ! [A,B] :
      ( v1_membered(set_difference(A,B))
     <= v1_membered(A) ) ).

fof(t24_wellord1,lemma,
    ! [A,B] :
      ( ( transitive(relation_restriction(B,A))
       <= transitive(B) )
     <= relation(B) ) ).

fof(fc2_ordinal1,axiom,
    ( relation_empty_yielding(empty_set)
    & function(empty_set)
    & empty(empty_set)
    & epsilon_transitive(empty_set)
    & epsilon_connected(empty_set)
    & ordinal(empty_set)
    & one_to_one(empty_set)
    & relation(empty_set) ) ).

fof(l4_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(A,singleton(B))
    <=> ( empty_set = A
        | singleton(B) = A ) ) ).

fof(l71_subset_1,lemma,
    ! [A,B] :
      ( element(A,powerset(B))
     <= ! [C] :
          ( in(C,B)
         <= in(C,A) ) ) ).

fof(t19_xboole_1,lemma,
    ! [A,B,C] :
      ( ( subset(A,B)
        & subset(A,C) )
     => subset(A,set_intersection2(B,C)) ) ).

fof(t46_pre_topc,lemma,
    ! [A] :
      ( ( topological_space(A)
        & top_str(A) )
     => ! [B] :
          ( ? [C] :
              ( element(C,powerset(powerset(the_carrier(A))))
              & ! [D] :
                  ( element(D,powerset(the_carrier(A)))
                 => ( in(D,C)
                  <=> ( subset(B,D)
                      & closed_subset(D,A) ) ) )
              & meet_of_subsets(the_carrier(A),C) = topstr_closure(A,B) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d1_pre_topc,axiom,
    ! [A] :
      ( ( ( in(the_carrier(A),the_topology(A))
          & ! [B] :
              ( element(B,powerset(the_carrier(A)))
             => ! [C] :
                  ( element(C,powerset(the_carrier(A)))
                 => ( ( in(C,the_topology(A))
                      & in(B,the_topology(A)) )
                   => in(subset_intersection2(the_carrier(A),B,C),the_topology(A)) ) ) )
          & ! [B] :
              ( ( subset(B,the_topology(A))
               => in(union_of_subsets(the_carrier(A),B),the_topology(A)) )
             <= element(B,powerset(powerset(the_carrier(A)))) ) )
      <=> topological_space(A) )
     <= top_str(A) ) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : A = set_union2(A,A) ).

fof(t115_relat_1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => ( ( in(A,relation_rng(C))
          & in(A,B) )
      <=> in(A,relation_rng(relation_rng_restriction(B,C))) ) ) ).

fof(t83_xboole_1,lemma,
    ! [A,B] :
      ( set_difference(A,B) = A
    <=> disjoint(A,B) ) ).

fof(t29_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( open_subset(subset_complement(the_carrier(A),B),A)
          <=> closed_subset(B,A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(t167_relat_1,lemma,
    ! [A,B] :
      ( relation(B)
     => subset(relation_inverse_image(B,A),relation_dom(B)) ) ).

fof(rc1_arytm_3,axiom,
    ? [A] :
      ( ~ empty(A)
      & epsilon_transitive(A)
      & natural(A)
      & ordinal(A)
      & epsilon_connected(A) ) ).

fof(s1_xboole_0__e6_21__wellord2__1,lemma,
    ! [A,B,C] :
      ( ( function(C)
        & relation(C)
        & relation(B) )
     => ? [D] :
        ! [E] :
          ( in(E,D)
        <=> ( ? [F,G] :
                ( in(ordered_pair(apply(C,F),apply(C,G)),B)
                & ordered_pair(F,G) = E )
            & in(E,cartesian_product2(A,A)) ) ) ) ).

fof(s1_funct_1__e10_24__wellord2__1,lemma,
    ! [A,B] :
      ( ( relation(B)
        & ~ empty(A) )
     => ( ! [C,D,E] :
            ( ( in(C,A)
              & ? [H] :
                  ( H = C
                  & in(E,H)
                  & ! [I] :
                      ( in(I,H)
                     => in(ordered_pair(E,I),B) ) )
              & in(C,A)
              & ? [F] :
                  ( ! [G] :
                      ( in(ordered_pair(D,G),B)
                     <= in(G,F) )
                  & in(D,F)
                  & F = C ) )
           => D = E )
       => ? [C] :
            ( relation(C)
            & ! [D,E] :
                ( in(ordered_pair(D,E),C)
              <=> ( in(D,A)
                  & ? [J] :
                      ( ! [K] :
                          ( in(ordered_pair(E,K),B)
                         <= in(K,J) )
                      & in(E,J)
                      & D = J )
                  & in(D,A) ) )
            & function(C) ) ) ) ).

fof(fc2_arytm_3,axiom,
    ! [A] :
      ( ( natural(A)
        & ordinal(A) )
     => ( ~ empty(succ(A))
        & epsilon_transitive(succ(A))
        & epsilon_connected(succ(A))
        & natural(succ(A))
        & ordinal(succ(A)) ) ) ).

fof(t21_funct_1,lemma,
    ! [A,B] :
      ( ( function(B)
        & relation(B) )
     => ! [C] :
          ( ( in(A,relation_dom(relation_composition(C,B)))
          <=> ( in(apply(C,A),relation_dom(B))
              & in(A,relation_dom(C)) ) )
         <= ( function(C)
            & relation(C) ) ) ) ).

fof(fc2_subset_1,axiom,
    ! [A] : ~ empty(singleton(A)) ).

fof(t92_zfmisc_1,lemma,
    ! [A,B] :
      ( in(A,B)
     => subset(A,union(B)) ) ).

fof(t12_pre_topc,lemma,
    ! [A] :
      ( the_carrier(A) = cast_as_carrier_subset(A)
     <= one_sorted_str(A) ) ).

fof(d4_funct_1,axiom,
    ! [A] :
      ( ! [B,C] :
          ( ( ( empty_set = C
            <=> C = apply(A,B) )
           <= ~ in(B,relation_dom(A)) )
          & ( ( in(ordered_pair(B,C),A)
            <=> C = apply(A,B) )
           <= in(B,relation_dom(A)) ) )
     <= ( function(A)
        & relation(A) ) ) ).

fof(l32_xboole_1,lemma,
    ! [A,B] :
      ( subset(A,B)
    <=> empty_set = set_difference(A,B) ) ).

fof(fc4_funct_1,axiom,
    ! [A,B] :
      ( ( relation(A)
        & function(A) )
     => ( function(relation_dom_restriction(A,B))
        & relation(relation_dom_restriction(A,B)) ) ) ).

fof(t99_zfmisc_1,lemma,
    ! [A] : union(powerset(A)) = A ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ? [B] :
          ( ~ empty(B)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(t22_wellord1,lemma,
    ! [A,B] :
      ( ( reflexive(B)
       => reflexive(relation_restriction(B,A)) )
     <= relation(B) ) ).

fof(t54_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( ! [C] :
              ( ( well_ordering(B)
               <= ( relation_isomorphism(A,B,C)
                  & well_ordering(A) ) )
             <= ( relation(C)
                & function(C) ) )
         <= relation(B) ) ) ).

fof(t10_ordinal1,lemma,
    ! [A] : in(A,succ(A)) ).

fof(t17_pre_topc,lemma,
    ! [A] :
      ( ! [B] :
          ( subset_complement(the_carrier(A),B) = subset_difference(the_carrier(A),cast_as_carrier_subset(A),B)
         <= element(B,powerset(the_carrier(A))) )
     <= one_sorted_str(A) ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     <= relation_of2_as_subset(C,A,B) ) ).

fof(dt_k1_mcart_1,axiom,
    $true ).

fof(t22_funct_1,lemma,
    ! [A,B] :
      ( ! [C] :
          ( ( function(C)
            & relation(C) )
         => ( apply(relation_composition(C,B),A) = apply(B,apply(C,A))
           <= in(A,relation_dom(relation_composition(C,B))) ) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(d1_zfmisc_1,axiom,
    ! [A,B] :
      ( B = powerset(A)
    <=> ! [C] :
          ( subset(C,A)
        <=> in(C,B) ) ) ).

fof(t15_finset_1,lemma,
    ! [A,B] :
      ( finite(set_intersection2(A,B))
     <= finite(A) ) ).

fof(d14_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => ! [B,C] :
          ( ! [D] :
              ( ? [E] :
                  ( in(ordered_pair(D,E),A)
                  & in(E,B) )
            <=> in(D,C) )
        <=> C = relation_inverse_image(A,B) ) ) ).

fof(t21_wellord1,lemma,
    ! [A,B,C] :
      ( relation(C)
     => subset(fiber(relation_restriction(C,A),B),fiber(C,B)) ) ).

fof(t18_wellord1,lemma,
    ! [A,B] :
      ( relation_rng_restriction(A,relation_dom_restriction(B,A)) = relation_restriction(B,A)
     <= relation(B) ) ).

fof(cc2_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
     <= ( epsilon_transitive(A)
        & epsilon_connected(A) ) ) ).

fof(d2_subset_1,axiom,
    ! [A,B] :
      ( ( ( in(B,A)
        <=> element(B,A) )
       <= ~ empty(A) )
      & ( empty(A)
       => ( element(B,A)
        <=> empty(B) ) ) ) ).

fof(dt_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(union_of_subsets(A,B),powerset(A))
     <= element(B,powerset(powerset(A))) ) ).

fof(fc6_membered,axiom,
    ( v2_membered(empty_set)
    & v3_membered(empty_set)
    & v4_membered(empty_set)
    & v5_membered(empty_set)
    & v1_membered(empty_set)
    & empty(empty_set) ) ).

fof(s2_ordinal1__e18_27__finset_1__1,lemma,
    ( ! [A] :
        ( ( in(A,omega)
         => ! [I] :
              ( element(I,powerset(powerset(A)))
             => ~ ( ! [J] :
                      ~ ( ! [K] :
                            ( ( subset(J,K)
                              & in(K,I) )
                           => J = K )
                        & in(J,I) )
                  & I != empty_set ) ) )
       <= ordinal(A) )
   <= ! [A] :
        ( ( ! [B] :
              ( ordinal(B)
             => ( ( in(B,omega)
                 => ! [C] :
                      ( element(C,powerset(powerset(B)))
                     => ~ ( ! [D] :
                              ~ ( in(D,C)
                                & ! [E] :
                                    ( ( in(E,C)
                                      & subset(D,E) )
                                   => D = E ) )
                          & C != empty_set ) ) )
               <= in(B,A) ) )
         => ( ! [F] :
                ( ~ ( ! [G] :
                        ~ ( ! [H] :
                              ( ( subset(G,H)
                                & in(H,F) )
                             => G = H )
                          & in(G,F) )
                    & F != empty_set )
               <= element(F,powerset(powerset(A))) )
           <= in(A,omega) ) )
       <= ordinal(A) ) ) ).

fof(cc17_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(A))
         => ( v2_membered(B)
            & v1_membered(B) ) )
     <= v2_membered(A) ) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & empty(A) ) ).

fof(fc4_tops_1,axiom,
    ! [A,B] :
      ( ( topological_space(A)
        & top_str(A)
        & open_subset(B,A)
        & element(B,powerset(the_carrier(A))) )
     => closed_subset(subset_complement(the_carrier(A),B),A) ) ).

fof(s1_xboole_0__e4_7_1__tops_2__1,conjecture,
    ! [A,B] :
      ( ! [C] :
        ? [D] :
        ! [E] :
          ( ( in(E,cartesian_product2(complements_of_subsets(the_carrier(A),B),C))
            & ? [F,G] :
                ( in(F,complements_of_subsets(the_carrier(A),B))
                & ! [H] :
                    ( element(H,powerset(the_carrier(A)))
                   => ( H = F
                     => subset_complement(the_carrier(A),H) = G ) )
                & ordered_pair(F,G) = E ) )
        <=> in(E,D) )
     <= ( element(B,powerset(powerset(the_carrier(A))))
        & one_sorted_str(A) ) ) ).

fof(rc2_ordinal1,axiom,
    ? [A] :
      ( relation(A)
      & one_to_one(A)
      & empty(A)
      & ordinal(A)
      & epsilon_connected(A)
      & epsilon_transitive(A)
      & function(A) ) ).

fof(irreflexivity_r2_xboole_0,axiom,
    ! [A,B] : ~ proper_subset(A,A) ).

fof(d8_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( relation(C)
             => ( ! [D,E] :
                    ( in(ordered_pair(D,E),C)
                  <=> ? [F] :
                        ( in(ordered_pair(F,E),B)
                        & in(ordered_pair(D,F),A) ) )
              <=> relation_composition(A,B) = C ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(t21_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( function(D)
        & quasi_total(D,A,B)
        & relation_of2_as_subset(D,A,B) )
     => ! [E] :
          ( ( function(E)
            & relation(E) )
         => ( in(C,A)
           => ( apply(relation_composition(D,E),C) = apply(E,apply(D,C))
              | B = empty_set ) ) ) ) ).

fof(s1_tarski__e6_22__wellord2__1,axiom,
    ! [A] :
      ( ? [B] :
        ! [C] :
          ( in(C,B)
        <=> ? [D] :
              ( in(D,A)
              & ordinal(C)
              & C = D ) )
     <= ! [B,C,D] :
          ( D = C
         <= ( D = B
            & ordinal(D)
            & ordinal(C)
            & B = C ) ) ) ).

fof(d3_wellord1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ~ ( subset(C,B)
                & ! [D] :
                    ~ ( in(D,C)
                      & disjoint(fiber(A,D),C) )
                & C != empty_set )
        <=> is_well_founded_in(A,B) )
     <= relation(A) ) ).

fof(fc1_ordinal2,axiom,
    ( epsilon_connected(omega)
    & ~ empty(omega)
    & ordinal(omega)
    & epsilon_transitive(omega) ) ).

fof(t3_xboole_1,lemma,
    ! [A] :
      ( subset(A,empty_set)
     => A = empty_set ) ).

fof(t64_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( ( empty_set = relation_dom(A)
          | empty_set = relation_rng(A) )
       => A = empty_set ) ) ).

fof(t44_tops_1,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => subset(interior(A,B),B) ) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(d9_relat_2,axiom,
    ! [A] :
      ( ( reflexive(A)
      <=> is_reflexive_in(A,relation_field(A)) )
     <= relation(A) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(d13_pre_topc,axiom,
    ! [A] :
      ( ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( element(C,powerset(the_carrier(A)))
             => ( topstr_closure(A,B) = C
              <=> ! [D] :
                    ( ( ! [E] :
                          ( element(E,powerset(the_carrier(A)))
                         => ~ ( open_subset(E,A)
                              & in(D,E)
                              & disjoint(B,E) ) )
                    <=> in(D,C) )
                   <= in(D,the_carrier(A)) ) ) ) )
     <= top_str(A) ) ).

fof(t6_zfmisc_1,lemma,
    ! [A,B] :
      ( subset(singleton(A),singleton(B))
     => A = B ) ).

fof(fc1_ordinal1,axiom,
    ! [A] : ~ empty(succ(A)) ).

fof(fc1_funct_1,axiom,
    ! [A,B] :
      ( ( relation(relation_composition(A,B))
        & function(relation_composition(A,B)) )
     <= ( function(B)
        & relation(B)
        & function(A)
        & relation(A) ) ) ).

fof(d5_ordinal2,axiom,
    ! [A] :
      ( ( in(empty_set,A)
        & ! [B] :
            ( ordinal(B)
           => ( subset(A,B)
             <= ( in(empty_set,B)
                & being_limit_ordinal(B) ) ) )
        & ordinal(A)
        & being_limit_ordinal(A) )
    <=> A = omega ) ).

fof(fc7_relat_1,axiom,
    ! [A] :
      ( empty(A)
     => ( relation(relation_dom(A))
        & empty(relation_dom(A)) ) ) ).

fof(cc14_membered,axiom,
    ! [A] :
      ( ! [B] :
          ( ( v1_xcmplx_0(B)
            & v1_xreal_0(B)
            & v1_int_1(B)
            & v1_rat_1(B)
            & natural(B) )
         <= element(B,A) )
     <= v5_membered(A) ) ).

fof(d5_relat_1,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C] :
              ( in(C,B)
            <=> ? [D] : in(ordered_pair(D,C),A) )
        <=> B = relation_rng(A) )
     <= relation(A) ) ).

fof(fc1_relat_1,axiom,
    ! [A,B] :
      ( relation(set_intersection2(A,B))
     <= ( relation(A)
        & relation(B) ) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(l40_tops_1,lemma,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & one_sorted_str(A) )
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( ( ~ in(C,B)
              <=> in(C,subset_complement(the_carrier(A),B)) )
             <= element(C,the_carrier(A)) ) ) ) ).

fof(dt_k3_lattices,axiom,
    ! [A,B,C] :
      ( ( ~ empty_carrier(A)
        & join_commutative(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & join_semilatt_str(A) )
     => element(join_commut(A,B,C),the_carrier(A)) ) ).

fof(redefinition_k6_setfam_1,axiom,
    ! [A,B] :
      ( meet_of_subsets(A,B) = set_meet(B)
     <= element(B,powerset(powerset(A))) ) ).

fof(t119_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ( subset(cartesian_product2(A,C),cartesian_product2(B,D))
     <= ( subset(A,B)
        & subset(C,D) ) ) ).

fof(fc34_membered,axiom,
    ! [A,B] :
      ( v4_membered(A)
     => ( v2_membered(set_intersection2(B,A))
        & v4_membered(set_intersection2(B,A))
        & v3_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) ) ) ).

fof(dt_k6_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => element(meet_of_subsets(A,B),powerset(A)) ) ).

fof(fc9_relat_1,axiom,
    ! [A,B] :
      ( ( empty(relation_composition(A,B))
        & relation(relation_composition(A,B)) )
     <= ( relation(B)
        & empty(A) ) ) ).

fof(commutativity_k5_subset_1,axiom,
    ! [A,B,C] :
      ( ( element(C,powerset(A))
        & element(B,powerset(A)) )
     => subset_intersection2(A,B,C) = subset_intersection2(A,C,B) ) ).

fof(t5_wellord2,lemma,
    ! [A] : antisymmetric(inclusion_relation(A)) ).

fof(cc1_membered,axiom,
    ! [A] :
      ( v5_membered(A)
     => v4_membered(A) ) ).

fof(dt_k9_relat_1,axiom,
    $true ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ~ empty(the_carrier(A))
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(t41_ordinal1,lemma,
    ! [A] :
      ( ( being_limit_ordinal(A)
      <=> ! [B] :
            ( ordinal(B)
           => ( in(succ(B),A)
             <= in(B,A) ) ) )
     <= ordinal(A) ) ).

fof(l30_wellord2,lemma,
    ! [A,B] :
      ( relation(B)
     => ~ ( ! [C] :
              ( relation(C)
             => ~ well_orders(C,A) )
          & equipotent(A,relation_field(B))
          & well_ordering(B) ) ) ).

fof(rc3_ordinal1,axiom,
    ? [A] :
      ( epsilon_connected(A)
      & ordinal(A)
      & epsilon_transitive(A)
      & ~ empty(A) ) ).

fof(fc2_tops_1,axiom,
    ! [A,B] :
      ( closed_subset(topstr_closure(A,B),A)
     <= ( top_str(A)
        & element(B,powerset(the_carrier(A)))
        & topological_space(A) ) ) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(A,B))
     <= ~ empty(A) ) ).

fof(t39_zfmisc_1,lemma,
    ! [A,B] :
      ( ( empty_set = A
        | singleton(B) = A )
    <=> subset(A,singleton(B)) ) ).

fof(s1_tarski__e16_22__wellord2__2,axiom,
    ! [A,B] :
      ( ! [C,D,E] :
          ( ( C = D
            & ? [F,G] :
                ( singleton(F) = G
                & in(F,A)
                & D = ordered_pair(F,G) )
            & ? [H,I] :
                ( ordered_pair(H,I) = E
                & in(H,A)
                & singleton(H) = I )
            & C = E )
         => D = E )
     => ? [C] :
        ! [D] :
          ( ? [E] :
              ( in(E,cartesian_product2(A,B))
              & D = E
              & ? [J,K] :
                  ( ordered_pair(J,K) = D
                  & K = singleton(J)
                  & in(J,A) ) )
        <=> in(D,C) ) ) ).

fof(t56_relat_1,lemma,
    ! [A] :
      ( ( empty_set = A
       <= ! [B,C] : ~ in(ordered_pair(B,C),A) )
     <= relation(A) ) ).

fof(s1_tarski__e8_6__wellord2__1,axiom,
    ! [A,B] :
      ( ( ? [C] :
          ! [D] :
            ( ? [E] :
                ( ? [H] :
                    ( ordinal(H)
                    & H = D
                    & in(H,A) )
                & E = D
                & in(E,succ(B)) )
          <=> in(D,C) )
       <= ! [C,D,E] :
            ( ( ? [F] :
                  ( D = F
                  & in(F,A)
                  & ordinal(F) )
              & C = E
              & ? [G] :
                  ( G = E
                  & in(G,A)
                  & ordinal(G) )
              & C = D )
           => D = E ) )
     <= ordinal(B) ) ).

fof(cc16_membered,axiom,
    ! [A] :
      ( v1_membered(A)
     => ! [B] :
          ( element(B,powerset(A))
         => v1_membered(B) ) ) ).

fof(fc1_pre_topc,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ( v3_membered(empty_carrier_subset(A))
        & v5_membered(empty_carrier_subset(A))
        & v4_membered(empty_carrier_subset(A))
        & v2_membered(empty_carrier_subset(A))
        & v1_membered(empty_carrier_subset(A))
        & empty(empty_carrier_subset(A)) ) ) ).

fof(fc1_finsub_1,axiom,
    ! [A] :
      ( ~ empty(powerset(A))
      & diff_closed(powerset(A))
      & preboolean(powerset(A))
      & cup_closed(powerset(A)) ) ).

fof(t146_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => relation_image(A,relation_dom(A)) = relation_rng(A) ) ).

fof(d6_pre_topc,axiom,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( ( closed_subset(B,A)
          <=> open_subset(subset_difference(the_carrier(A),cast_as_carrier_subset(A),B),A) )
         <= element(B,powerset(the_carrier(A))) ) ) ).

fof(d4_subset_1,axiom,
    ! [A] : A = cast_to_subset(A) ).

fof(redefinition_k5_setfam_1,axiom,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => union_of_subsets(A,B) = union(B) ) ).

fof(d4_ordinal1,axiom,
    ! [A] :
      ( ordinal(A)
    <=> ( epsilon_connected(A)
        & epsilon_transitive(A) ) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( function(A)
      & relation(A) ) ).

fof(t6_funct_2,lemma,
    ! [A,B,C,D] :
      ( ( relation_of2_as_subset(D,A,B)
        & quasi_total(D,A,B)
        & function(D) )
     => ( ( in(apply(D,C),relation_rng(D))
          | empty_set = B )
       <= in(C,A) ) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(t25_relat_1,lemma,
    ! [A] :
      ( ! [B] :
          ( ( subset(A,B)
           => ( subset(relation_dom(A),relation_dom(B))
              & subset(relation_rng(A),relation_rng(B)) ) )
         <= relation(B) )
     <= relation(A) ) ).

fof(t146_funct_1,lemma,
    ! [A,B] :
      ( relation(B)
     => ( subset(A,relation_dom(B))
       => subset(A,relation_inverse_image(B,relation_image(B,A))) ) ) ).

fof(d2_ordinal1,axiom,
    ! [A] :
      ( epsilon_transitive(A)
    <=> ! [B] :
          ( subset(B,A)
         <= in(B,A) ) ) ).

fof(t53_wellord1,lemma,
    ! [A] :
      ( relation(A)
     => ! [B] :
          ( relation(B)
         => ! [C] :
              ( ( ( ( reflexive(B)
                   <= reflexive(A) )
                  & ( antisymmetric(A)
                   => antisymmetric(B) )
                  & ( well_founded_relation(B)
                   <= well_founded_relation(A) )
                  & ( connected(A)
                   => connected(B) )
                  & ( transitive(A)
                   => transitive(B) ) )
               <= relation_isomorphism(A,B,C) )
             <= ( function(C)
                & relation(C) ) ) ) ) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(dt_k4_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_dom_as_subset(A,B,C),powerset(A)) ) ).

fof(t28_xboole_1,lemma,
    ! [A,B] :
      ( A = set_intersection2(A,B)
     <= subset(A,B) ) ).

fof(antisymmetry_r2_xboole_0,axiom,
    ! [A,B] :
      ( ~ proper_subset(B,A)
     <= proper_subset(A,B) ) ).

fof(t6_wellord2,lemma,
    ! [A] :
      ( ordinal(A)
     => well_founded_relation(inclusion_relation(A)) ) ).

fof(t65_relat_1,lemma,
    ! [A] :
      ( relation(A)
     => ( relation_rng(A) = empty_set
      <=> relation_dom(A) = empty_set ) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(d1_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( C = A
        <=> in(C,B) )
    <=> singleton(A) = B ) ).

fof(existence_l1_lattices,axiom,
    ? [A] : meet_semilatt_str(A) ).

fof(t10_zfmisc_1,lemma,
    ! [A,B,C,D] :
      ~ ( unordered_pair(C,D) = unordered_pair(A,B)
        & C != A
        & D != A ) ).

fof(dt_k5_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
     => element(relation_rng_as_subset(A,B,C),powerset(B)) ) ).

fof(dt_k4_lattices,axiom,
    ! [A,B,C] :
      ( element(meet_commut(A,B,C),the_carrier(A))
     <= ( meet_semilatt_str(A)
        & element(B,the_carrier(A))
        & element(C,the_carrier(A))
        & meet_commutative(A)
        & ~ empty_carrier(A) ) ) ).

fof(t147_funct_1,lemma,
    ! [A,B] :
      ( ( A = relation_image(B,relation_inverse_image(B,A))
       <= subset(A,relation_rng(B)) )
     <= ( relation(B)
        & function(B) ) ) ).

fof(fc30_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_intersection2(B,A))
        & v1_membered(set_intersection2(B,A)) )
     <= v2_membered(A) ) ).

fof(t12_tops_2,lemma,
    ! [A,B] :
      ( element(B,powerset(powerset(A)))
     => ( empty_set != B
       => subset_complement(A,meet_of_subsets(A,B)) = union_of_subsets(A,complements_of_subsets(A,B)) ) ) ).

fof(d10_relat_1,axiom,
    ! [A,B] :
      ( ( ! [C,D] :
            ( ( in(C,A)
              & C = D )
          <=> in(ordered_pair(C,D),B) )
      <=> B = identity_relation(A) )
     <= relation(B) ) ).

fof(fc41_membered,axiom,
    ! [A,B] :
      ( ( v2_membered(set_difference(A,B))
        & v3_membered(set_difference(A,B))
        & v4_membered(set_difference(A,B))
        & v5_membered(set_difference(A,B))
        & v1_membered(set_difference(A,B)) )
     <= v5_membered(A) ) ).

fof(l1_zfmisc_1,lemma,
    ! [A] : empty_set != singleton(A) ).

fof(t47_setfam_1,lemma,
    ! [A,B] :
      ( ( meet_of_subsets(A,complements_of_subsets(A,B)) = subset_difference(A,cast_to_subset(A),union_of_subsets(A,B))
       <= empty_set != B )
     <= element(B,powerset(powerset(A))) ) ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( relation(A)
     => ( connected(A)
      <=> is_connected_in(A,relation_field(A)) ) ) ).

fof(t45_pre_topc,lemma,
    ! [A] :
      ( top_str(A)
     => ! [B] :
          ( element(B,powerset(the_carrier(A)))
         => ! [C] :
              ( in(C,the_carrier(A))
             => ( in(C,topstr_closure(A,B))
              <=> ! [D] :
                    ( ( in(C,D)
                     <= ( closed_subset(D,A)
                        & subset(B,D) ) )
                   <= element(D,powerset(the_carrier(A))) ) ) ) ) ) ).

fof(t17_wellord1,lemma,
    ! [A,B] :
      ( relation_dom_restriction(relation_rng_restriction(A,B),A) = relation_restriction(B,A)
     <= relation(B) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(t14_relset_1,lemma,
    ! [A,B,C,D] :
      ( relation_of2_as_subset(D,C,A)
     => ( relation_of2_as_subset(D,C,B)
       <= subset(relation_rng(D),B) ) ) ).

fof(fc3_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & one_to_one(A)
        & function(A) )
     => ( relation(relation_inverse(A))
        & function(relation_inverse(A)) ) ) ).

