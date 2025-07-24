fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(fc14_finset_1,axiom,
    ! [A,B] :
      ( finite(cartesian_product2(A,B))
     <= ( finite(B)
        & finite(A) ) ) ).

fof(t3_subset,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> element(A,powerset(B)) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & empty(B)
        & A != B ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(dt_l1_orders_2,axiom,
    ! [A] :
      ( one_sorted_str(A)
     <= rel_str(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(rc1_finset_1,axiom,
    ? [A] :
      ( finite(A)
      & ~ empty(A) ) ).

fof(dt_m1_relset_1,axiom,
    $true ).

fof(existence_l1_orders_2,axiom,
    ? [A] : rel_str(A) ).

fof(dt_m1_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( subrelstr(B,A)
         => rel_str(B) )
     <= rel_str(A) ) ).

fof(existence_m1_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2(C,A,B) ).

fof(t60_yellow_0,conjecture,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( ! [C] :
              ( ! [D] :
                  ( ! [E] :
                      ( element(E,the_carrier(B))
                     => ! [F] :
                          ( ( ( F = D
                              & related(B,E,F)
                              & C = E )
                           => related(A,C,D) )
                         <= element(F,the_carrier(B)) ) )
                 <= element(D,the_carrier(A)) )
             <= element(C,the_carrier(A)) )
         <= subrelstr(B,A) ) ) ).

fof(dt_u1_orders_2,axiom,
    ! [A] :
      ( relation_of2_as_subset(the_InternalRel(A),the_carrier(A),the_carrier(A))
     <= rel_str(A) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     <= in(A,B) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(rc3_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) ).

fof(t4_subset,axiom,
    ! [A,B,C] :
      ( ( in(A,B)
        & element(B,powerset(C)) )
     => element(A,C) ) ).

fof(d13_yellow_0,axiom,
    ! [A] :
      ( ! [B] :
          ( rel_str(B)
         => ( ( subset(the_carrier(B),the_carrier(A))
              & subset(the_InternalRel(B),the_InternalRel(A)) )
          <=> subrelstr(B,A) ) )
     <= rel_str(A) ) ).

fof(t5_subset,axiom,
    ! [A,B,C] :
      ~ ( element(B,powerset(C))
        & empty(C)
        & in(A,B) ) ).

fof(redefinition_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2(C,A,B)
    <=> relation_of2_as_subset(C,A,B) ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(cc1_relset_1,axiom,
    ! [A,B,C] :
      ( element(C,powerset(cartesian_product2(A,B)))
     => relation(C) ) ).

fof(existence_m1_yellow_0,axiom,
    ! [A] :
      ( ? [B] : subrelstr(B,A)
     <= rel_str(A) ) ).

fof(cc2_finset_1,axiom,
    ! [A] :
      ( ! [B] :
          ( finite(B)
         <= element(B,powerset(A)) )
     <= finite(A) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(dt_u1_struct_0,axiom,
    $true ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( empty(B)
        | in(A,B) )
     <= element(A,B) ) ).

fof(existence_l1_struct_0,axiom,
    ? [A] : one_sorted_str(A) ).

fof(rc4_finset_1,axiom,
    ! [A] :
      ( ~ empty(A)
     => ? [B] :
          ( element(B,powerset(A))
          & ~ empty(B)
          & finite(B) ) ) ).

fof(dt_l1_struct_0,axiom,
    $true ).

fof(existence_m2_relset_1,axiom,
    ! [A,B] :
    ? [C] : relation_of2_as_subset(C,A,B) ).

fof(cc1_finset_1,axiom,
    ! [A] :
      ( empty(A)
     => finite(A) ) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => empty_set = A ) ).

fof(dt_m2_relset_1,axiom,
    ! [A,B,C] :
      ( relation_of2_as_subset(C,A,B)
     => element(C,powerset(cartesian_product2(A,B))) ) ).

fof(d9_orders_2,axiom,
    ! [A] :
      ( rel_str(A)
     => ! [B] :
          ( element(B,the_carrier(A))
         => ! [C] :
              ( ( related(A,B,C)
              <=> in(ordered_pair(B,C),the_InternalRel(A)) )
             <= element(C,the_carrier(A)) ) ) ) ).

fof(dt_k1_zfmisc_1,axiom,
    $true ).

