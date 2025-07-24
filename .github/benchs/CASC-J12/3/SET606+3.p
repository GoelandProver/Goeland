fof(reflexivity_of_subset,axiom,
    ! [B] : subset(B,B) ).

fof(commutativity_of_intersection,axiom,
    ! [B,C] : intersection(C,B) = intersection(B,C) ).

fof(difference_defn,axiom,
    ! [B,C,D] :
      ( ( member(D,B)
        & ~ member(D,C) )
    <=> member(D,difference(B,C)) ) ).

fof(prove_difference_into_intersection,conjecture,
    ! [B,C] : difference(B,C) = difference(B,intersection(B,C)) ).

fof(equal_member_defn,axiom,
    ! [B,C] :
      ( ! [D] :
          ( member(D,B)
        <=> member(D,C) )
    <=> B = C ) ).

fof(member_equal,axiom,
    ! [B,C] :
      ( ! [D] :
          ( member(D,B)
        <=> member(D,C) )
     => B = C ) ).

fof(subset_defn,axiom,
    ! [B,C] :
      ( subset(B,C)
    <=> ! [D] :
          ( member(D,C)
         <= member(D,B) ) ) ).

fof(equal_defn,axiom,
    ! [B,C] :
      ( ( subset(B,C)
        & subset(C,B) )
    <=> B = C ) ).

fof(intersection_defn,axiom,
    ! [B,C,D] :
      ( member(D,intersection(B,C))
    <=> ( member(D,B)
        & member(D,C) ) ) ).

