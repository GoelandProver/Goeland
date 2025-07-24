fof(int_less_total,axiom,
    ! [I,J] :
      ( int_less(I,J)
      | int_leq(J,I) ) ).

fof(d,conjecture,
    ! [I,J] :
      ( ( int_leq(int_one,I)
        & int_leq(I,n)
        & int_leq(int_one,J)
        & J != I
        & int_leq(J,n) )
     => a(I,J) = real_zero ) ).

fof(plus_and_inverse,axiom,
    ! [I,J] :
      ( int_less(I,J)
    <=> ? [K] :
          ( int_less(int_zero,K)
          & plus(I,K) = J ) ) ).

fof(qii,hypothesis,
    ! [I,J] :
      ( ( int_leq(J,n)
        & int_leq(int_one,J)
        & int_leq(I,n)
        & int_leq(int_one,I) )
     => ( ! [C] :
            ( ! [K] :
                ( ( int_leq(K,J)
                  & int_leq(int_one,K) )
               => a(plus(K,C),K) = real_zero )
           <= ( plus(J,C) = I
              & int_less(int_zero,C) ) )
        & ! [C] :
            ( ( int_less(int_zero,C)
              & J = plus(I,C) )
           => ! [K] :
                ( a(K,plus(K,C)) = real_zero
               <= ( int_leq(K,I)
                  & int_leq(int_one,K) ) ) )
        & ! [K] :
            ( a(K,K) = real_one
           <= ( int_leq(int_one,K)
              & int_leq(K,J) ) ) ) ) ).

fof(plus_commutative,axiom,
    ! [I,J] : plus(I,J) = plus(J,I) ).

fof(plus_and_order1,axiom,
    ! [I1,J1,I2,J2] :
      ( ( int_leq(I2,J2)
        & int_less(I1,J1) )
     => int_leq(plus(I1,I2),plus(J1,J2)) ) ).

fof(plus_zero,axiom,
    ! [I] : I = plus(I,int_zero) ).

fof(int_leq,axiom,
    ! [I,J] :
      ( ( int_less(I,J)
        | J = I )
    <=> int_leq(I,J) ) ).

fof(int_zero_one,axiom,
    int_less(int_zero,int_one) ).

fof(int_less_irreflexive,axiom,
    ! [I,J] :
      ( J != I
     <= int_less(I,J) ) ).

fof(int_less_transitive,axiom,
    ! [I,J,K] :
      ( int_less(I,K)
     <= ( int_less(J,K)
        & int_less(I,J) ) ) ).

fof(one_successor_of_zero,axiom,
    ! [I] :
      ( int_less(int_zero,I)
    <=> int_leq(int_one,I) ) ).

fof(real_constants,axiom,
    real_zero != real_one ).

