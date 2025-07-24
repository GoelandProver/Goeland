fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(symmetry_r1_xboole_0,axiom,
    ! [A,B] :
      ( disjoint(A,B)
     => disjoint(B,A) ) ).

fof(fc1_xboole_0,axiom,
    empty(empty_set) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

fof(d1_xboole_0,axiom,
    ! [A] :
      ( empty_set = A
    <=> ! [B] : ~ in(B,A) ) ).

fof(dt_k3_xboole_0,axiom,
    $true ).

fof(d3_xboole_0,axiom,
    ! [A,B,C] :
      ( ! [D] :
          ( in(D,C)
        <=> ( in(D,A)
            & in(D,B) ) )
    <=> C = set_intersection2(A,B) ) ).

fof(idempotence_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,A) = A ).

fof(commutativity_k3_xboole_0,axiom,
    ! [A,B] : set_intersection2(A,B) = set_intersection2(B,A) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(d7_xboole_0,axiom,
    ! [A,B] :
      ( empty_set = set_intersection2(A,B)
    <=> disjoint(A,B) ) ).

fof(t3_xboole_0,conjecture,
    ! [A,B] :
      ( ~ ( ? [C] :
              ( in(C,A)
              & in(C,B) )
          & disjoint(A,B) )
      & ~ ( ! [C] :
              ~ ( in(C,A)
                & in(C,B) )
          & ~ disjoint(A,B) ) ) ).

fof(dt_k1_xboole_0,axiom,
    $true ).

