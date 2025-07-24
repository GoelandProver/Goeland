fof(intersection_is_subset,axiom,
    ! [B,C] : subset(intersection(B,C),B) ).

fof(subset_difference,axiom,
    ! [B,C,D] :
      ( subset(B,C)
     => subset(difference(D,C),difference(D,B)) ) ).

fof(prove_difference_and_intersection_and_union,conjecture,
    ! [B,C,D] : difference(B,intersection(C,D)) = union(difference(B,C),difference(B,D)) ).

fof(equal_defn,axiom,
    ! [B,C] :
      ( ( subset(C,B)
        & subset(B,C) )
    <=> B = C ) ).

fof(commutativity_of_union,axiom,
    ! [B,C] : union(C,B) = union(B,C) ).

fof(union_defn,axiom,
    ! [B,C,D] :
      ( ( member(D,C)
        | member(D,B) )
    <=> member(D,union(B,C)) ) ).

fof(difference_defn,axiom,
    ! [B,C,D] :
      ( member(D,difference(B,C))
    <=> ( member(D,B)
        & ~ member(D,C) ) ) ).

fof(commutativity_of_intersection,axiom,
    ! [B,C] : intersection(C,B) = intersection(B,C) ).

fof(equal_member_defn,axiom,
    ! [B,C] :
      ( C = B
    <=> ! [D] :
          ( member(D,C)
        <=> member(D,B) ) ) ).

fof(intersection_defn,axiom,
    ! [B,C,D] :
      ( ( member(D,C)
        & member(D,B) )
    <=> member(D,intersection(B,C)) ) ).

fof(subset_defn,axiom,
    ! [B,C] :
      ( subset(B,C)
    <=> ! [D] :
          ( member(D,C)
         <= member(D,B) ) ) ).

fof(reflexivity_of_subset,axiom,
    ! [B] : subset(B,B) ).

fof(union_subset,axiom,
    ! [B,C,D] :
      ( ( subset(B,C)
        & subset(D,C) )
     => subset(union(B,D),C) ) ).

