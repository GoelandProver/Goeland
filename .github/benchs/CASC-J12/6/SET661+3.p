fof(p18,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ! [D] :
                ( ilf_type(D,set_type)
               => ( member(D,B)
                <=> member(D,C) ) )
          <=> B = C )
         <= ilf_type(C,set_type) ) ) ).

fof(p9,axiom,
    ! [B] :
      ( ilf_type(domain_of(B),set_type)
     <= ilf_type(B,binary_relation_type) ) ).

fof(p37,axiom,
    ! [B] : ilf_type(B,set_type) ).

fof(p30,axiom,
    ! [B] :
      ( ( empty(B)
        & ilf_type(B,set_type) )
     => relation_like(B) ) ).

fof(p25,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( member(B,C)
          <=> ilf_type(B,member_type(C)) )
         <= ( ilf_type(C,set_type)
            & ~ empty(C) ) ) ) ).

fof(p26,axiom,
    ! [B] :
      ( ( ~ empty(B)
        & ilf_type(B,set_type) )
     => ? [C] : ilf_type(C,member_type(B)) ) ).

fof(p4,axiom,
    ! [B] :
      ( ! [C] :
          ( ! [D] :
              ( ilf_type(D,binary_relation_type)
             => ( member(ordered_pair(C,B),D)
              <=> member(ordered_pair(B,C),inverse(D)) ) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p28,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( ilf_type(D,subset_type(cross_product(B,C)))
             => relation_like(D) )
         <= ilf_type(C,set_type) ) ) ).

fof(p19,axiom,
    ! [B] :
      ( ! [C] :
          ( ( B = C
           <= C = B )
         <= ilf_type(C,binary_relation_type) )
     <= ilf_type(B,binary_relation_type) ) ).

fof(p17,axiom,
    ! [B] :
      ( ? [C] : ilf_type(C,subset_type(B))
     <= ilf_type(B,set_type) ) ).

fof(p36,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => ilf_type(inverse3(B,C,D),relation_type(C,B)) )
         <= ilf_type(C,set_type) ) ) ).

fof(p15,axiom,
    ? [B] : ilf_type(B,binary_relation_type) ).

fof(p6,axiom,
    ! [B] :
      ( ! [C] :
          ( ( ! [D] :
                ( ilf_type(D,subset_type(cross_product(B,C)))
               => ilf_type(D,relation_type(B,C)) )
            & ! [E] :
                ( ilf_type(E,subset_type(cross_product(B,C)))
               <= ilf_type(E,relation_type(B,C)) ) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p3,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( ( ( member(C,range_of(D))
                  & member(B,domain_of(D)) )
               <= member(ordered_pair(B,C),D) )
             <= ilf_type(D,binary_relation_type) )
         <= ilf_type(C,set_type) ) ) ).

fof(p20,axiom,
    ! [B] :
      ( ilf_type(B,binary_relation_type)
     => B = B ) ).

fof(p34,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => ilf_type(range(B,C,D),subset_type(C)) ) ) ) ).

fof(p33,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => range_of(D) = range(B,C,D) ) ) ) ).

fof(p31,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( domain(B,C,D) = domain_of(D)
             <= ilf_type(D,relation_type(B,C)) )
         <= ilf_type(C,set_type) ) ) ).

fof(p2,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( member(B,range_of(C))
          <=> ? [D] :
                ( member(ordered_pair(D,B),C)
                & ilf_type(D,set_type) ) )
         <= ilf_type(C,binary_relation_type) ) ) ).

fof(p29,axiom,
    ! [B] :
      ( ( ! [C] :
            ( ~ member(C,B)
           <= ilf_type(C,set_type) )
      <=> empty(B) )
     <= ilf_type(B,set_type) ) ).

fof(p21,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ( ! [D] :
                ( ilf_type(D,set_type)
               => ( member(D,B)
                 => member(D,C) ) )
          <=> subset(B,C) ) )
     <= ilf_type(B,set_type) ) ).

fof(prove_relset_1_24,conjecture,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ( domain(C,B,inverse3(B,C,D)) = range(B,C,D)
                & domain(B,C,D) = range(C,B,inverse3(B,C,D)) )
             <= ilf_type(D,relation_type(B,C)) ) ) ) ).

fof(p11,axiom,
    ! [B] :
      ( ilf_type(range_of(B),set_type)
     <= ilf_type(B,binary_relation_type) ) ).

fof(p8,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ( subset(C,B)
              & subset(B,C) )
          <=> C = B )
         <= ilf_type(C,set_type) ) ) ).

fof(p27,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ( relation_like(B)
      <=> ! [C] :
            ( ( member(C,B)
             => ? [D] :
                  ( ? [E] :
                      ( ordered_pair(D,E) = C
                      & ilf_type(E,set_type) )
                  & ilf_type(D,set_type) ) )
           <= ilf_type(C,set_type) ) ) ) ).

fof(p16,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ( ilf_type(C,subset_type(B))
          <=> ilf_type(C,member_type(power_set(B))) ) )
     <= ilf_type(B,set_type) ) ).

fof(p13,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ilf_type(ordered_pair(B,C),set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p5,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,set_type)
         => ( ! [D] :
                ( ( member(D,B)
                <=> member(D,C) )
               <= ilf_type(D,set_type) )
           => C = B ) ) ) ).

fof(p32,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,relation_type(B,C))
             => ilf_type(domain(B,C,D),subset_type(B)) ) )
     <= ilf_type(B,set_type) ) ).

fof(p24,axiom,
    ! [B] :
      ( ( ~ empty(power_set(B))
        & ilf_type(power_set(B),set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p14,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ( ( relation_like(B)
          & ilf_type(B,set_type) )
      <=> ilf_type(B,binary_relation_type) ) ) ).

fof(p7,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ? [D] : ilf_type(D,relation_type(C,B))
         <= ilf_type(C,set_type) ) ) ).

fof(p12,axiom,
    ! [B] :
      ( ilf_type(inverse(B),binary_relation_type)
     <= ilf_type(B,binary_relation_type) ) ).

fof(p22,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => subset(B,B) ) ).

fof(p10,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ilf_type(cross_product(B,C),set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p35,axiom,
    ! [B] :
      ( ! [C] :
          ( ! [D] :
              ( inverse3(B,C,D) = inverse(D)
             <= ilf_type(D,relation_type(B,C)) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p1,axiom,
    ! [B] :
      ( ! [C] :
          ( ( ? [D] :
                ( member(ordered_pair(B,D),C)
                & ilf_type(D,set_type) )
          <=> member(B,domain_of(C)) )
         <= ilf_type(C,binary_relation_type) )
     <= ilf_type(B,set_type) ) ).

fof(p23,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,set_type)
         => ( ! [D] :
                ( ( member(D,B)
                 => member(D,C) )
               <= ilf_type(D,set_type) )
          <=> member(B,power_set(C)) ) ) ) ).

