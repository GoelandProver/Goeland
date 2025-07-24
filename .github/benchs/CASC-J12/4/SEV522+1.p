include('Axioms/SET006+0.ax').
include('Axioms/SET006+2.ax').
fof(subset_is_non_overlapping,conjecture,
    ! [P,Q] :
      ( non_overlapping(P)
     <= ( subset(P,Q)
        & non_overlapping(Q) ) ) ).

fof(non_overlapping,axiom,
    ! [X] :
      ( non_overlapping(X)
    <=> ? [U] : partition(X,U) ) ).

fof(d4_tarski,axiom,
    ! [A,B] :
      ( ! [C] :
          ( ? [D] :
              ( member(C,D)
              & member(D,A) )
        <=> member(C,B) )
    <=> B = unaryUnion(A) ) ).

fof(insertIntoMember,axiom,
    ! [A,B,C] : union(union(B,singleton(A)),difference(C,singleton(B))) = insertIntoMember(A,B,C) ).

