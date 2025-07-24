fof(fc2_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(A,B)) ) ).

fof(dt_k2_xboole_0,axiom,
    $true ).

fof(t6_boole,axiom,
    ! [A] :
      ( empty_set = A
     <= empty(A) ) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(d6_relat_1,axiom,
    ! [A] :
      ( set_union2(relation_dom(A),relation_rng(A)) = relation_field(A)
     <= relation(A) ) ).

fof(fc3_xboole_0,axiom,
    ! [A,B] :
      ( ~ empty(A)
     => ~ empty(set_union2(B,A)) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(dt_k1_relat_1,axiom,
    $true ).

fof(d14_relat_2,axiom,
    ! [A] :
      ( ( is_connected_in(A,relation_field(A))
      <=> connected(A) )
     <= relation(A) ) ).

fof(dt_k3_relat_1,axiom,
    $true ).

fof(commutativity_k2_xboole_0,axiom,
    ! [A,B] : set_union2(B,A) = set_union2(A,B) ).

fof(idempotence_k2_xboole_0,axiom,
    ! [A,B] : set_union2(A,A) = A ).

fof(dt_k4_tarski,axiom,
    $true ).

fof(d6_relat_2,axiom,
    ! [A] :
      ( ! [B] :
          ( ! [C,D] :
              ~ ( in(D,B)
                & D != C
                & ~ in(ordered_pair(D,C),A)
                & ~ in(ordered_pair(C,D),A)
                & in(C,B) )
        <=> is_connected_in(A,B) )
     <= relation(A) ) ).

fof(dt_m1_subset_1,axiom,
    $true ).

fof(rc2_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & empty(A)
      & function(A) ) ).

fof(existence_m1_subset_1,axiom,
    ! [A] :
    ? [B] : element(B,A) ).

fof(dt_k1_tarski,axiom,
    $true ).

fof(t7_boole,axiom,
    ! [A,B] :
      ~ ( empty(B)
        & in(A,B) ) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(dt_k2_relat_1,axiom,
    $true ).

fof(rc3_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A)
      & one_to_one(A) ) ).

fof(l4_wellord1,conjecture,
    ! [A] :
      ( relation(A)
     => ( ! [B,C] :
            ~ ( ~ in(ordered_pair(B,C),A)
              & ~ in(ordered_pair(C,B),A)
              & C != B
              & in(C,relation_field(A))
              & in(B,relation_field(A)) )
      <=> connected(A) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

fof(t2_subset,axiom,
    ! [A,B] :
      ( ( in(A,B)
        | empty(B) )
     <= element(A,B) ) ).

fof(t8_boole,axiom,
    ! [A,B] :
      ~ ( empty(A)
        & A != B
        & empty(B) ) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( ~ in(B,A)
     <= in(A,B) ) ).

fof(t1_subset,axiom,
    ! [A,B] :
      ( element(A,B)
     <= in(A,B) ) ).

fof(t1_boole,axiom,
    ! [A] : set_union2(A,empty_set) = A ).

fof(d5_tarski,axiom,
    ! [A,B] : ordered_pair(A,B) = unordered_pair(unordered_pair(A,B),singleton(A)) ).

fof(cc2_funct_1,axiom,
    ! [A] :
      ( ( relation(A)
        & function(A)
        & one_to_one(A) )
     <= ( relation(A)
        & empty(A)
        & function(A) ) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(cc1_funct_1,axiom,
    ! [A] :
      ( empty(A)
     => function(A) ) ).

fof(dt_k2_tarski,axiom,
    $true ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(rc1_funct_1,axiom,
    ? [A] :
      ( relation(A)
      & function(A) ) ).

