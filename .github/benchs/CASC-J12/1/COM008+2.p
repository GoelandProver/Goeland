fof(goal_to_be_proved,conjecture,
    goal ).

fof(lo_cfl,axiom,
    ! [A,B,C] :
      ( ( rewrite(A,B)
        & rewrite(A,C) )
     => ? [D] :
          ( transitive_reflexive_rewrite(B,D)
          & transitive_reflexive_rewrite(C,D) ) ) ).

fof(assumption,axiom,
    ( transitive_reflexive_rewrite(a,c)
    & transitive_reflexive_rewrite(a,b) ) ).

fof(found,axiom,
    ! [A] :
      ( goal
     <= ( transitive_reflexive_rewrite(b,A)
        & transitive_reflexive_rewrite(c,A) ) ) ).

fof(transitivity_of_transitive_reflexive_rewrite,axiom,
    ! [A,B,C] :
      ( ( transitive_reflexive_rewrite(A,B)
        & transitive_reflexive_rewrite(B,C) )
     => transitive_reflexive_rewrite(A,C) ) ).

fof(equality_in_transitive_reflexive_rewrite,axiom,
    ! [A,B] :
      ( B = A
     => transitive_reflexive_rewrite(A,B) ) ).

fof(rewrite_in_transitive_reflexive_rewrite,axiom,
    ! [A,B] :
      ( transitive_reflexive_rewrite(A,B)
     <= rewrite(A,B) ) ).

fof(ih_cfl,axiom,
    ! [A,B,C] :
      ( ( transitive_reflexive_rewrite(A,C)
        & transitive_reflexive_rewrite(A,B)
        & rewrite(a,A) )
     => ? [D] :
          ( transitive_reflexive_rewrite(B,D)
          & transitive_reflexive_rewrite(C,D) ) ) ).

fof(equal_or_rewrite,axiom,
    ! [A,B] :
      ( transitive_reflexive_rewrite(A,B)
     => ( ? [C] :
            ( transitive_reflexive_rewrite(C,B)
            & rewrite(A,C) )
        | B = A ) ) ).

