fof(p5,axiom,
    ! [B] :
      ( ( ilf_type(B,set_type)
        & ~ empty(B) )
     => ? [C] : ilf_type(C,member_type(B)) ) ).

fof(p22,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => range(B,C,D) = range_of(D) ) )
     <= ilf_type(B,set_type) ) ).

fof(p23,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => ilf_type(range(B,C,D),subset_type(C)) ) )
     <= ilf_type(B,set_type) ) ).

fof(p9,axiom,
    ! [B] :
      ( ilf_type(B,binary_relation_type)
     => ilf_type(range_of(B),set_type) ) ).

fof(p1,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,binary_relation_type)
         => ( ? [D] :
                ( ilf_type(D,set_type)
                & member(D,range_of(C)) )
           <= member(B,domain_of(C)) ) ) ) ).

fof(p12,axiom,
    ! [B] :
      ( ! [C] :
          ( ( ilf_type(C,subset_type(B))
          <=> ilf_type(C,member_type(power_set(B))) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(prove_relset_1_49,conjecture,
    ! [B] :
      ( ! [C] :
          ( ! [D] :
              ( ! [E] :
                  ( ilf_type(E,member_type(B))
                 => ( member(E,domain(B,C,D))
                   => ? [F] :
                        ( ilf_type(F,member_type(C))
                        & member(F,range(B,C,D)) ) ) )
             <= ilf_type(D,relation_type(B,C)) )
         <= ( ~ empty(C)
            & ilf_type(C,set_type) ) )
     <= ( ~ empty(B)
        & ilf_type(B,set_type) ) ) ).

fof(p17,axiom,
    ! [B] :
      ( relation_like(B)
     <= ( empty(B)
        & ilf_type(B,set_type) ) ) ).

fof(p10,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ( ilf_type(B,binary_relation_type)
      <=> ( relation_like(B)
          & ilf_type(B,set_type) ) ) ) ).

fof(p24,axiom,
    ! [B] : ilf_type(B,set_type) ).

fof(p6,axiom,
    ! [B] :
      ( ( ! [C] :
            ( ilf_type(C,set_type)
           => ~ member(C,B) )
      <=> empty(B) )
     <= ilf_type(B,set_type) ) ).

fof(p14,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ! [D] :
                ( ilf_type(D,set_type)
               => ( member(D,B)
                 => member(D,C) ) )
          <=> member(B,power_set(C)) )
         <= ilf_type(C,set_type) ) ) ).

fof(p2,axiom,
    ! [B] :
      ( ! [C] :
          ( ( ! [D] :
                ( ilf_type(D,relation_type(B,C))
               <= ilf_type(D,subset_type(cross_product(B,C))) )
            & ! [E] :
                ( ilf_type(E,relation_type(B,C))
               => ilf_type(E,subset_type(cross_product(B,C))) ) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p18,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,subset_type(cross_product(B,C)))
             => relation_like(D) ) )
     <= ilf_type(B,set_type) ) ).

fof(p11,axiom,
    ? [B] : ilf_type(B,binary_relation_type) ).

fof(p8,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(cross_product(B,C),set_type)
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p4,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ilf_type(B,member_type(C))
          <=> member(B,C) )
         <= ( ~ empty(C)
            & ilf_type(C,set_type) ) ) ) ).

fof(p21,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => ilf_type(domain(B,C,D),subset_type(B)) )
         <= ilf_type(C,set_type) ) ) ).

fof(p7,axiom,
    ! [B] :
      ( ilf_type(B,binary_relation_type)
     => ilf_type(domain_of(B),set_type) ) ).

fof(p13,axiom,
    ! [B] :
      ( ? [C] : ilf_type(C,subset_type(B))
     <= ilf_type(B,set_type) ) ).

fof(p15,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ( ilf_type(power_set(B),set_type)
        & ~ empty(power_set(B)) ) ) ).

fof(p3,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ? [D] : ilf_type(D,relation_type(C,B)) )
     <= ilf_type(B,set_type) ) ).

fof(p16,axiom,
    ! [B] :
      ( ( ! [C] :
            ( ( member(C,B)
             => ? [D] :
                  ( ilf_type(D,set_type)
                  & ? [E] :
                      ( C = ordered_pair(D,E)
                      & ilf_type(E,set_type) ) ) )
           <= ilf_type(C,set_type) )
      <=> relation_like(B) )
     <= ilf_type(B,set_type) ) ).

fof(p20,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => domain_of(D) = domain(B,C,D) )
         <= ilf_type(C,set_type) ) ) ).

fof(p19,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ilf_type(ordered_pair(B,C),set_type) )
     <= ilf_type(B,set_type) ) ).

