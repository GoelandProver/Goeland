include('Axioms/SET006+0.ax').
include('Axioms/SET006+2.ax').
fof(d4_tarski,axiom,
    ! [A,B] :
      ( B = unaryUnion(A)
    <=> ! [C] :
          ( ? [D] :
              ( member(C,D)
              & member(D,A) )
        <=> member(C,B) ) ) ).

fof(insertIntoMember,axiom,
    ! [A,B,C] : insertIntoMember(A,B,C) = union(union(B,singleton(A)),difference(C,singleton(B))) ).

fof(diff_elem_in_partition,conjecture,
    ! [X,A,B,P] :
      ( ( partition(P,A)
        & member(X,difference(A,B)) )
     => ? [S] :
          ( member(S,difference(P,singleton(B)))
          & member(X,S) ) ) ).

fof(non_overlapping,axiom,
    ! [X] :
      ( ? [U] : partition(X,U)
    <=> non_overlapping(X) ) ).

