fof(t106_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ( in(ordered_pair(A,B),cartesian_product2(C,D))
    <=> ( in(A,C)
        & in(B,D) ) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : A = set_union2(A,A) ).

fof(l1_wellord1,axiom,
    ! [A] :
      ( ( ! [B] :
            ( in(B,relation_field(A))
           => in(ordered_pair(B,B),A) )
      <=> reflexive(A) )
     <= relation(A) ) ).

fof(t1_boole,axiom,
    ! [A] : set_union2(A,empty_set) = A ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(B,A) = set_union2(A,B) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & empty(B)
        & B != A ) ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( in(A,B)
        & empty(B) ) ).

fof(t19_wellord1,axiom,
    ! [A,B,C] :
      ( ( in(A,relation_field(relation_restriction(C,B)))
       => ( in(A,B)
          & in(A,relation_field(C)) ) )
     <= relation(C) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty(A)
     => empty_set = A ) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( relation(A)
     => relation_field(A) = set_union2(relation_dom(A),relation_rng(A)) ) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A)
        & empty(A) )
     => ( function(A)
        & one_to_one(A)
        & relation(A) ) ) ).

fof(dt_k2_wellord1,axiom,
    ! [A,B] :
      ( relation(A)
     => relation(relation_restriction(A,B)) ) ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( in(A,B)
        | empty(B) )
     <= element(A,B) ) ).

fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(t2_boole,axiom,
    ! [A] : empty_set = set_intersection2(A,empty_set) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     <= in(A,B) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( function(A)
      & one_to_one(A)
      & relation(A) ) ).

fof(dt_k2_zfmisc_1,axiom,
    $true ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(B,A) = unordered_pair(A,B) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( ~ in(B,A)
     <= in(A,B) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(set_union2(B,A))
     <= ~ empty(A) ) ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(B,A) = set_intersection2(A,B) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & empty(A) ) ).

fof(d6_wellord1,axiom,
    ! [A] :
      ( ! [B] : set_intersection2(A,cartesian_product2(B,B)) = relation_restriction(A,B)
     <= relation(A) ) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(t22_wellord1,conjecture,
    ! [A,B] :
      ( relation(B)
     => ( reflexive(B)
       => reflexive(relation_restriction(B,A)) ) ) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : A = set_intersection2(A,A) ).

fof(t16_wellord1,axiom,
    ! [A,B,C] :
      ( ( ( in(A,cartesian_product2(B,B))
          & in(A,C) )
      <=> in(A,relation_restriction(C,B)) )
     <= relation(C) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : unordered_pair(unordered_pair(A,B),singleton(A)) = ordered_pair(A,B) ).

