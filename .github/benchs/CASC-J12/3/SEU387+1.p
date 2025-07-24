fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( in(A,B)
     => element(A,B) ) ).

fof(cc3_yellow_0,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & bounded_relstr(A) )
       <= ( ~ empty_carrier(A)
          & complete_relstr(A) ) )
     <= rel_str(A) ) ).

fof(dt_g1_orders_2,axiom,
    ! [A,B] :
      ( ( strict_rel_str(rel_str_of(A,B))
        & rel_str(rel_str_of(A,B)) )
     <= relation_of2(B,A,A) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( element(A,powerset(B))
    <=> subset(A,B) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( empty(C)
        & element(B,powerset(C))
        & in(A,B) ) ).

fof(cc1_relat_1,axiom,
    ! [A] :
      ( relation(A)
     <= empty(A) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) ).

fof(fc8_yellow_1,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & strict_rel_str(boole_POSet(A)) ) ).

fof(rc1_waybel_7,axiom,
    ? [A] :
      ( transitive_relstr(A)
      & antisymmetric_relstr(A)
      & upper_bounded_relstr(A)
      & heyting_relstr(A)
      & boolean_relstr(A)
      & with_infima_relstr(A)
      & with_suprema_relstr(A)
      & complemented_relstr(A)
      & distributive_relstr(A)
      & ~ v1_yellow_3(A)
      & bounded_relstr(A)
      & lower_bounded_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A)
      & ~ trivial_carrier(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(rc1_yellow_0,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & with_suprema_relstr(A)
      & with_infima_relstr(A)
      & trivial_carrier(A)
      & complete_relstr(A)
      & antisymmetric_relstr(A)
      & strict_rel_str(A) ) ).

fof(fc4_subset_1,axiom,
    ! [A,B] :
      ( ( ~ empty(B)
        & ~ empty(A) )
     => ~ empty(cartesian_product2(A,B)) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( finite(A)
     => ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) ) ) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(rc5_struct_0,axiom,
    ! [A] :
      ( ( one_sorted_str(A)
        & ~ empty_carrier(A) )
     => ? [B] :
          ( ~ empty(B)
          & element(B,powerset(the_carrier(A))) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(fc4_relat_1,axiom,
    ( empty(empty_set)
    & relation(empty_set) ) ).

fof(rc2_subset_1,axiom,
    ! [A] :
    ? [B] :
      ( empty(B)
      & element(B,powerset(A)) ) ).

fof(fc8_yellow_6,axiom,
    ! [A] :
      ( strict_rel_str(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & ~ v1_yellow_3(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & directed_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & ~ empty_carrier(boole_POSet(A)) ) ).

fof(cc2_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
       <= with_infima_relstr(A) )
     <= rel_str(A) ) ).

fof(abstractness_v1_orders_2,axiom,
    ! [A] :
      ( ( A = rel_str_of(the_carrier(A),the_InternalRel(A))
       <= strict_rel_str(A) )
     <= rel_str(A) ) ).

fof(fc1_subset_1,axiom,
    ! [A] : ~ empty(powerset(A)) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(cc9_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( with_suprema_relstr(A)
          & up_complete_relstr(A)
          & reflexive_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & with_suprema_relstr(A)
          & upper_bounded_relstr(A) ) ) ) ).

fof(rc1_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A) ) ).

fof(fc12_relat_1,axiom,
    ( empty(empty_set)
    & relation_empty_yielding(empty_set)
    & relation(empty_set) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( ( finite(B)
        & finite(A) )
     => finite(cartesian_product2(A,B)) ) ).

fof(dt_k3_yellow_1,axiom,
    ! [A] :
      ( strict_rel_str(boole_POSet(A))
      & rel_str(boole_POSet(A)) ) ).

fof(t2_yellow19,conjecture,
    ! [A] :
      ( ~ empty(A)
     => ! [B] :
          ( ! [C] :
              ~ ( in(C,B)
                & empty(C) )
         <= ( ~ empty(B)
            & proper_element(B,powerset(the_carrier(boole_POSet(A))))
            & element(B,powerset(the_carrier(boole_POSet(A))))
            & upper_relstr_subset(B,boole_POSet(A))
            & filtered_subset(B,boole_POSet(A)) ) ) ) ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => empty_set = A ) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & finite(B)
          & ~ empty(B) ) ) ).

fof(cc14_waybel_0,axiom,
    ! [A] :
      ( ( ( reflexive_relstr(A)
          & upper_bounded_relstr(A)
          & with_suprema_relstr(A)
          & antisymmetric_relstr(A)
          & ~ empty_carrier(A) )
       <= ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & antisymmetric_relstr(A)
          & upper_bounded_relstr(A)
          & join_complete_relstr(A) ) )
     <= rel_str(A) ) ).

fof(cc1_lattice3,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
       <= with_suprema_relstr(A) )
     <= rel_str(A) ) ).

fof(cc2_yellow_0,axiom,
    ! [A] :
      ( ( ( trivial_carrier(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & transitive_relstr(A)
          & antisymmetric_relstr(A)
          & complete_relstr(A) ) )
     <= rel_str(A) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(rc1_subset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B) )
     <= ~ empty(A) ) ).

fof(rc1_lattice3,axiom,
    ? [A] :
      ( rel_str(A)
      & reflexive_relstr(A)
      & transitive_relstr(A)
      & complete_relstr(A)
      & antisymmetric_relstr(A)
      & strict_rel_str(A)
      & ~ empty_carrier(A) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

fof(fc2_waybel_7,axiom,
    ! [A] :
      ( ~ empty(A)
     => ( ~ empty_carrier(boole_POSet(A))
        & strict_rel_str(boole_POSet(A))
        & reflexive_relstr(boole_POSet(A))
        & transitive_relstr(boole_POSet(A))
        & upper_bounded_relstr(boole_POSet(A))
        & bounded_relstr(boole_POSet(A))
        & up_complete_relstr(boole_POSet(A))
        & heyting_relstr(boole_POSet(A))
        & with_suprema_relstr(boole_POSet(A))
        & with_infima_relstr(boole_POSet(A))
        & complete_relstr(boole_POSet(A))
        & boolean_relstr(boole_POSet(A))
        & complemented_relstr(boole_POSet(A))
        & distributive_relstr(boole_POSet(A))
        & ~ v1_yellow_3(boole_POSet(A))
        & join_complete_relstr(boole_POSet(A))
        & lower_bounded_relstr(boole_POSet(A))
        & antisymmetric_relstr(boole_POSet(A))
        & ~ trivial_carrier(boole_POSet(A)) ) ) ).

fof(cc5_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & trivial_carrier(A)
          & reflexive_relstr(A) )
       => ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & connected_relstr(A) ) ) ) ).

fof(free_g1_orders_2,axiom,
    ! [A,B] :
      ( ! [C,D] :
          ( rel_str_of(A,B) = rel_str_of(C,D)
         => ( B = D
            & C = A ) )
     <= relation_of2(B,A,A) ) ).

fof(rc3_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & relation_empty_yielding(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(cc11_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & lower_bounded_relstr(A)
          & reflexive_relstr(A) )
       <= ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & join_complete_relstr(A) ) ) ) ).

fof(t8_waybel_7,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & transitive_relstr(A)
        & lower_bounded_relstr(A)
        & rel_str(A)
        & antisymmetric_relstr(A) )
     => ! [B] :
          ( ( proper_element(B,powerset(the_carrier(A)))
          <=> ~ in(bottom_of_relstr(A),B) )
         <= ( ~ empty(B)
            & filtered_subset(B,A)
            & element(B,powerset(the_carrier(A)))
            & upper_relstr_subset(B,A) ) ) ) ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(dt_k3_yellow_0,axiom,
    ! [A] :
      ( element(bottom_of_relstr(A),the_carrier(A))
     <= rel_str(A) ) ).

fof(cc10_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( join_complete_relstr(A)
          & up_complete_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) )
       <= ( reflexive_relstr(A)
          & complete_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( element(A,C)
     <= ( element(B,powerset(C))
        & in(A,B) ) ) ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) )
     <= ~ empty(A) ) ).

fof(existence_l1_orders_2,axiom,
    ? [A] : rel_str(A) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & B != A
        & empty(B) ) ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( relation(C)
     <= element(C,powerset(cartesian_product2(A,B))) ) ).

fof(rc4_waybel_7,axiom,
    ! [A] :
      ( ( ~ empty_carrier(A)
        & reflexive_relstr(A)
        & antisymmetric_relstr(A)
        & rel_str(A)
        & upper_bounded_relstr(A)
        & transitive_relstr(A)
        & ~ trivial_carrier(A) )
     => ? [B] :
          ( element(B,powerset(the_carrier(A)))
          & ~ empty(B)
          & proper_element(B,powerset(the_carrier(A)))
          & filtered_subset(B,A)
          & upper_relstr_subset(B,A) ) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( ~ empty(A)
      & finite(A) ) ).

fof(rc12_waybel_0,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & connected_relstr(A)
      & antisymmetric_relstr(A)
      & transitive_relstr(A)
      & reflexive_relstr(A) ) ).

fof(fc1_struct_0,axiom,
    ! [A] :
      ( ~ empty(the_carrier(A))
     <= ( ~ empty_carrier(A)
        & one_sorted_str(A) ) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
    <=> relation_of2(C,A,B) ) ).

fof(cc12_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & transitive_relstr(A)
          & with_suprema_relstr(A)
          & lower_bounded_relstr(A)
          & up_complete_relstr(A)
          & antisymmetric_relstr(A)
          & reflexive_relstr(A) )
       => ( transitive_relstr(A)
          & antisymmetric_relstr(A)
          & complete_relstr(A)
          & bounded_relstr(A)
          & upper_bounded_relstr(A)
          & lower_bounded_relstr(A)
          & with_infima_relstr(A)
          & with_suprema_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(rc3_waybel_7,axiom,
    ! [A] :
      ( one_sorted_str(A)
     => ? [B] :
          ( ~ empty(B)
          & finite(B)
          & element(B,powerset(powerset(the_carrier(A)))) ) ) ).

fof(cc13_waybel_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( ( ~ empty_carrier(A)
          & reflexive_relstr(A)
          & with_infima_relstr(A)
          & antisymmetric_relstr(A) )
       <= ( antisymmetric_relstr(A)
          & join_complete_relstr(A)
          & reflexive_relstr(A)
          & ~ empty_carrier(A) ) ) ) ).

fof(t18_yellow_1,axiom,
    ! [A] : bottom_of_relstr(boole_POSet(A)) = empty_set ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => one_sorted_str(A) ) ).

fof(rc4_yellow_6,axiom,
    ? [A] :
      ( strict_rel_str(A)
      & transitive_relstr(A)
      & directed_relstr(A)
      & ~ empty_carrier(A)
      & rel_str(A) ) ).

fof(cc1_yellow_0,axiom,
    ! [A] :
      ( ( ( ~ empty_carrier(A)
          & complete_relstr(A) )
       => ( with_suprema_relstr(A)
          & with_infima_relstr(A)
          & ~ empty_carrier(A) ) )
     <= rel_str(A) ) ).

fof(rc2_yellow_0,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & reflexive_relstr(A)
      & antisymmetric_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & bounded_relstr(A)
      & upper_bounded_relstr(A)
      & lower_bounded_relstr(A)
      & with_suprema_relstr(A)
      & transitive_relstr(A)
      & rel_str(A) ) ).

fof(rc2_waybel_7,axiom,
    ! [A] :
    ? [B] :
      ( element(B,powerset(powerset(A)))
      & finite(B)
      & ~ empty(B) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A)) ) ).

fof(rc13_waybel_0,axiom,
    ? [A] :
      ( rel_str(A)
      & ~ empty_carrier(A)
      & with_suprema_relstr(A)
      & lower_bounded_relstr(A)
      & up_complete_relstr(A)
      & join_complete_relstr(A)
      & bounded_relstr(A)
      & upper_bounded_relstr(A)
      & complete_relstr(A)
      & with_infima_relstr(A)
      & antisymmetric_relstr(A)
      & transitive_relstr(A)
      & reflexive_relstr(A)
      & strict_rel_str(A) ) ).

fof(fc7_yellow_1,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & strict_rel_str(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A)) ) ).

fof(cc5_yellow_0,axiom,
    ! [A] :
      ( ( bounded_relstr(A)
       <= ( lower_bounded_relstr(A)
          & upper_bounded_relstr(A) ) )
     <= rel_str(A) ) ).

fof(rc3_struct_0,axiom,
    ? [A] :
      ( one_sorted_str(A)
      & ~ empty_carrier(A) ) ).

fof(rc2_relat_1,axiom,
    ? [A] :
      ( relation(A)
      & ~ empty(A) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     => ( empty(B)
        | in(A,B) ) ) ).

fof(cc4_yellow_0,axiom,
    ! [A] :
      ( rel_str(A)
     => ( bounded_relstr(A)
       => ( upper_bounded_relstr(A)
          & lower_bounded_relstr(A) ) ) ) ).

fof(rc2_lattice3,axiom,
    ? [A] :
      ( ~ empty_carrier(A)
      & strict_rel_str(A)
      & transitive_relstr(A)
      & with_infima_relstr(A)
      & complete_relstr(A)
      & with_suprema_relstr(A)
      & antisymmetric_relstr(A)
      & reflexive_relstr(A)
      & rel_str(A) ) ).

fof(rc10_waybel_0,axiom,
    ! [A] :
      ( ? [B] :
          ( ~ empty(B)
          & upper_relstr_subset(B,A)
          & filtered_subset(B,A)
          & element(B,powerset(the_carrier(A))) )
     <= ( ~ empty_carrier(A)
        & transitive_relstr(A)
        & rel_str(A)
        & reflexive_relstr(A) ) ) ).

fof(fc1_waybel_7,axiom,
    ! [A] :
      ( ~ empty_carrier(boole_POSet(A))
      & antisymmetric_relstr(boole_POSet(A))
      & lower_bounded_relstr(boole_POSet(A))
      & upper_bounded_relstr(boole_POSet(A))
      & bounded_relstr(boole_POSet(A))
      & up_complete_relstr(boole_POSet(A))
      & complete_relstr(boole_POSet(A))
      & with_infima_relstr(boole_POSet(A))
      & with_suprema_relstr(boole_POSet(A))
      & boolean_relstr(boole_POSet(A))
      & complemented_relstr(boole_POSet(A))
      & heyting_relstr(boole_POSet(A))
      & distributive_relstr(boole_POSet(A))
      & ~ v1_yellow_3(boole_POSet(A))
      & join_complete_relstr(boole_POSet(A))
      & transitive_relstr(boole_POSet(A))
      & reflexive_relstr(boole_POSet(A))
      & strict_rel_str(boole_POSet(A)) ) ).

