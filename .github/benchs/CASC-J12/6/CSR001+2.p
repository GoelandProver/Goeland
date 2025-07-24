include('Axioms/CSR001+0.ax').
include('Axioms/CSR001+1.ax').
fof(less9,axiom,
    ! [X] :
      ( less_or_equal(X,n8)
    <=> less(X,n9) ) ).

fof(less7,axiom,
    ! [X] :
      ( less(X,n7)
    <=> less_or_equal(X,n6) ) ).

fof(less8,axiom,
    ! [X] :
      ( less(X,n8)
    <=> less_or_equal(X,n7) ) ).

fof(not_released_waterLevel_0,hypothesis,
    ! [Height] : ~ releasedAt(waterLevel(Height),n0) ).

fof(less2,axiom,
    ! [X] :
      ( less_or_equal(X,n1)
    <=> less(X,n2) ) ).

fof(plus0_0,axiom,
    n0 = plus(n0,n0) ).

fof(not_filling_0,hypothesis,
    ~ holdsAt(filling,n0) ).

fof(symmetry_of_plus,axiom,
    ! [X,Y] : plus(X,Y) = plus(Y,X) ).

fof(less3,axiom,
    ! [X] :
      ( less_or_equal(X,n2)
    <=> less(X,n3) ) ).

fof(less1,axiom,
    ! [X] :
      ( less(X,n1)
    <=> less_or_equal(X,n0) ) ).

fof(plus1_2,axiom,
    n3 = plus(n1,n2) ).

fof(plus1_3,axiom,
    plus(n1,n3) = n4 ).

fof(not_spilling_0,hypothesis,
    ~ holdsAt(spilling,n0) ).

fof(less_or_equal,axiom,
    ! [X,Y] :
      ( ( less(X,Y)
        | Y = X )
    <=> less_or_equal(X,Y) ) ).

fof(waterLevel_3,lemma,
    holdsAt(waterLevel(n3),n3) ).

fof(not_released_spilling_0,hypothesis,
    ~ releasedAt(spilling,n0) ).

fof(plus0_2,axiom,
    n2 = plus(n0,n2) ).

fof(less5,axiom,
    ! [X] :
      ( less(X,n5)
    <=> less_or_equal(X,n4) ) ).

fof(plus2_2,axiom,
    n4 = plus(n2,n2) ).

fof(waterLevel_0,hypothesis,
    holdsAt(waterLevel(n0),n0) ).

fof(plus1_1,axiom,
    n2 = plus(n1,n1) ).

fof(not_released_filling_0,hypothesis,
    ~ releasedAt(filling,n0) ).

fof(plus0_3,axiom,
    plus(n0,n3) = n3 ).

fof(less_property,axiom,
    ! [X,Y] :
      ( less(X,Y)
    <=> ( Y != X
        & ~ less(Y,X) ) ) ).

fof(less6,axiom,
    ! [X] :
      ( less_or_equal(X,n5)
    <=> less(X,n6) ) ).

fof(plus2_3,axiom,
    plus(n2,n3) = n5 ).

fof(plus3_3,axiom,
    n6 = plus(n3,n3) ).

fof(less0,axiom,
    ~ ? [X] : less(X,n0) ).

fof(plus0_1,axiom,
    plus(n0,n1) = n1 ).

fof(less4,axiom,
    ! [X] :
      ( less_or_equal(X,n3)
    <=> less(X,n4) ) ).

fof(waterLevel_4,conjecture,
    holdsAt(waterLevel(n3),n4) ).

