fof(p7,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ! [D] :
              ( ilf_type(D,set_type)
             => ! [E] :
                  ( ilf_type(E,set_type)
                 => ! [F] :
                      ( ilf_type(F,relation_type(B,C))
                     => ( ( member(D,B)
                          & member(E,C) )
                       <= member(ordered_pair(D,E),F) ) ) ) )
         <= ilf_type(C,set_type) ) ) ).

fof(p22,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( member(B,C)
          <=> ilf_type(B,member_type(C)) )
         <= ( ~ empty(C)
            & ilf_type(C,set_type) ) ) ) ).

fof(p20,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ! [D] :
                ( ( member(D,C)
                 <= member(D,B) )
               <= ilf_type(D,set_type) )
          <=> member(B,power_set(C)) )
         <= ilf_type(C,set_type) ) ) ).

fof(p13,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ilf_type(C,subset_type(B))
          <=> ilf_type(C,member_type(power_set(B))) )
         <= ilf_type(C,set_type) ) ) ).

fof(p5,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ( ! [D] :
                ( ilf_type(D,relation_type(B,C))
               <= ilf_type(D,subset_type(cross_product(B,C))) )
            & ! [E] :
                ( ilf_type(E,relation_type(B,C))
               => ilf_type(E,subset_type(cross_product(B,C))) ) )
         <= ilf_type(C,set_type) ) ) ).

fof(p3,axiom,
    ! [B] :
      ( ! [C] :
          ( ! [D] :
              ( ! [E] :
                  ( ( member(ordered_pair(C,D),restrict(B,E))
                  <=> ( member(ordered_pair(C,D),E)
                      & member(D,B) ) )
                 <= ilf_type(E,binary_relation_type) )
             <= ilf_type(D,set_type) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p6,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ? [D] : ilf_type(D,relation_type(C,B)) )
     <= ilf_type(B,set_type) ) ).

fof(p1,axiom,
    ! [B] :
      ( ! [C] :
          ( ( subset(B,C)
          <=> ! [D] :
                ( ! [E] :
                    ( ilf_type(E,set_type)
                   => ( member(ordered_pair(D,E),B)
                     => member(ordered_pair(D,E),C) ) )
               <= ilf_type(D,set_type) ) )
         <= ilf_type(C,binary_relation_type) )
     <= ilf_type(B,binary_relation_type) ) ).

fof(p11,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ( ilf_type(B,binary_relation_type)
      <=> ( relation_like(B)
          & ilf_type(B,set_type) ) ) ) ).

fof(p19,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( relation_like(D)
             <= ilf_type(D,subset_type(cross_product(B,C))) ) )
     <= ilf_type(B,set_type) ) ).

fof(p21,axiom,
    ! [B] :
      ( ( ~ empty(power_set(B))
        & ilf_type(power_set(B),set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p26,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ilf_type(D,set_type)
             => ! [E] :
                  ( restrict4(B,C,D,E) = restrict(D,E)
                 <= ilf_type(E,relation_type(B,C)) ) ) ) ) ).

fof(p15,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,binary_relation_type)
         => ( B = C
           => C = B ) )
     <= ilf_type(B,binary_relation_type) ) ).

fof(p8,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ilf_type(cross_product(B,C),set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p10,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(restrict(B,C),binary_relation_type)
         <= ilf_type(C,binary_relation_type) )
     <= ilf_type(B,set_type) ) ).

fof(p28,axiom,
    ! [B] : ilf_type(B,set_type) ).

fof(p27,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ! [E] :
                  ( ilf_type(E,relation_type(B,C))
                 => ilf_type(restrict4(B,C,D,E),relation_type(B,C)) )
             <= ilf_type(D,set_type) ) )
     <= ilf_type(B,set_type) ) ).

fof(p24,axiom,
    ! [B] :
      ( ( ! [C] :
            ( ~ member(C,B)
           <= ilf_type(C,set_type) )
      <=> empty(B) )
     <= ilf_type(B,set_type) ) ).

fof(p4,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ! [D] :
              ( ! [E] :
                  ( ilf_type(E,set_type)
                 => ( member(ordered_pair(B,C),cross_product(D,E))
                  <=> ( member(C,E)
                      & member(B,D) ) ) )
             <= ilf_type(D,set_type) ) )
     <= ilf_type(B,set_type) ) ).

fof(p18,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ( relation_like(B)
      <=> ! [C] :
            ( ilf_type(C,set_type)
           => ( member(C,B)
             => ? [D] :
                  ( ? [E] :
                      ( ilf_type(E,set_type)
                      & ordered_pair(D,E) = C )
                  & ilf_type(D,set_type) ) ) ) ) ) ).

fof(p9,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => ilf_type(ordered_pair(B,C),set_type) )
     <= ilf_type(B,set_type) ) ).

fof(prove_relset_1_35,conjecture,
    ! [B] :
      ( ! [C] :
          ( ! [D] :
              ( ilf_type(D,set_type)
             => ! [E] :
                  ( ilf_type(E,relation_type(D,B))
                 => ilf_type(restrict4(D,B,C,E),relation_type(D,C)) ) )
         <= ilf_type(C,set_type) )
     <= ilf_type(B,set_type) ) ).

fof(p14,axiom,
    ! [B] :
      ( ilf_type(B,set_type)
     => ? [C] : ilf_type(C,subset_type(B)) ) ).

fof(p25,axiom,
    ! [B] :
      ( ( ilf_type(B,set_type)
        & empty(B) )
     => relation_like(B) ) ).

fof(p16,axiom,
    ! [B] :
      ( ilf_type(B,binary_relation_type)
     => B = B ) ).

fof(p17,axiom,
    ! [B] :
      ( subset(B,B)
     <= ilf_type(B,binary_relation_type) ) ).

fof(p12,axiom,
    ? [B] : ilf_type(B,binary_relation_type) ).

fof(p23,axiom,
    ! [B] :
      ( ( ~ empty(B)
        & ilf_type(B,set_type) )
     => ? [C] : ilf_type(C,member_type(B)) ) ).

fof(p2,axiom,
    ! [B] :
      ( ! [C] :
          ( ilf_type(C,set_type)
         => relation_like(cross_product(B,C)) )
     <= ilf_type(B,set_type) ) ).

