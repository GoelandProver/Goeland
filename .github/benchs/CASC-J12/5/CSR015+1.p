include('Axioms/CSR001+0.ax').
include('Axioms/CSR001+2.ax').
fof(less4,axiom,
    ! [X] :
      ( less(X,n4)
    <=> less_or_equal(X,n3) ) ).

fof(plus0_1,axiom,
    n1 = plus(n0,n1) ).

fof(not_backwards_1,conjecture,
    ~ holdsAt(backwards,n1) ).

fof(less7,axiom,
    ! [X] :
      ( less_or_equal(X,n6)
    <=> less(X,n7) ) ).

fof(plus0_3,axiom,
    plus(n0,n3) = n3 ).

fof(symmetry_of_plus,axiom,
    ! [X,Y] : plus(Y,X) = plus(X,Y) ).

fof(plus1_1,axiom,
    n2 = plus(n1,n1) ).

fof(plus0_0,axiom,
    n0 = plus(n0,n0) ).

fof(not_releasedAt,hypothesis,
    ! [Fluent,Time] : ~ releasedAt(Fluent,Time) ).

fof(less5,axiom,
    ! [X] :
      ( less_or_equal(X,n4)
    <=> less(X,n5) ) ).

fof(less9,axiom,
    ! [X] :
      ( less(X,n9)
    <=> less_or_equal(X,n8) ) ).

fof(plus3_3,axiom,
    plus(n3,n3) = n6 ).

fof(not_forwards_0,hypothesis,
    ~ holdsAt(forwards,n0) ).

fof(less_or_equal,axiom,
    ! [X,Y] :
      ( less_or_equal(X,Y)
    <=> ( less(X,Y)
        | X = Y ) ) ).

fof(plus2_3,axiom,
    plus(n2,n3) = n5 ).

fof(less_property,axiom,
    ! [X,Y] :
      ( less(X,Y)
    <=> ( Y != X
        & ~ less(Y,X) ) ) ).

fof(less1,axiom,
    ! [X] :
      ( less(X,n1)
    <=> less_or_equal(X,n0) ) ).

fof(less6,axiom,
    ! [X] :
      ( less(X,n6)
    <=> less_or_equal(X,n5) ) ).

fof(less0,axiom,
    ~ ? [X] : less(X,n0) ).

fof(plus1_3,axiom,
    n4 = plus(n1,n3) ).

fof(plus2_2,axiom,
    plus(n2,n2) = n4 ).

fof(less2,axiom,
    ! [X] :
      ( less_or_equal(X,n1)
    <=> less(X,n2) ) ).

fof(less8,axiom,
    ! [X] :
      ( less_or_equal(X,n7)
    <=> less(X,n8) ) ).

fof(less3,axiom,
    ! [X] :
      ( less_or_equal(X,n2)
    <=> less(X,n3) ) ).

fof(plus1_2,axiom,
    n3 = plus(n1,n2) ).

fof(plus0_2,axiom,
    n2 = plus(n0,n2) ).

fof(not_splinning_0,hypothesis,
    ~ holdsAt(spinning,n0) ).

fof(not_backwards_0,hypothesis,
    ~ holdsAt(backwards,n0) ).

