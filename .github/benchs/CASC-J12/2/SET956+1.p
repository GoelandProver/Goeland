fof(t109_zfmisc_1,conjecture,
    ! [A,B,C,D] :
      ( ( subset(A,cartesian_product2(B,C))
        & ! [E,F] :
            ( in(ordered_pair(E,F),A)
           => in(ordered_pair(E,F),D) ) )
     => subset(A,D) ) ).

fof(d5_tarski,axiom,
    ! [A,B] : unordered_pair(unordered_pair(A,B),singleton(A)) = ordered_pair(A,B) ).

fof(antisymmetry_r2_hidden,axiom,
    ! [A,B] :
      ( in(A,B)
     => ~ in(B,A) ) ).

fof(commutativity_k2_tarski,axiom,
    ! [A,B] : unordered_pair(A,B) = unordered_pair(B,A) ).

fof(fc1_zfmisc_1,axiom,
    ! [A,B] : ~ empty(ordered_pair(A,B)) ).

fof(d3_tarski,axiom,
    ! [A,B] :
      ( subset(A,B)
    <=> ! [C] :
          ( in(C,B)
         <= in(C,A) ) ) ).

fof(t103_zfmisc_1,axiom,
    ! [A,B,C,D] :
      ~ ( in(D,A)
        & ! [E,F] :
            ~ ( D = ordered_pair(E,F)
              & in(F,C)
              & in(E,B) )
        & subset(A,cartesian_product2(B,C)) ) ).

fof(rc2_xboole_0,axiom,
    ? [A] : ~ empty(A) ).

fof(reflexivity_r1_tarski,axiom,
    ! [A,B] : subset(A,A) ).

fof(rc1_xboole_0,axiom,
    ? [A] : empty(A) ).

