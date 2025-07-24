fof(int_less_total,axiom,
    ! [I,J] :
      ( int_less(I,J)
      | int_leq(J,I) ) ).

fof(int_leq,axiom,
    ! [I,J] :
      ( ( int_less(I,J)
        | J = I )
    <=> int_leq(I,J) ) ).

fof(int_zero_one,axiom,
    int_less(int_zero,int_one) ).

fof(real_constants,axiom,
    real_zero != real_one ).

fof(plus_zero,axiom,
    ! [I] : plus(I,int_zero) = I ).

fof(id,conjecture,
    ! [I,J] :
      ( ( ( I = J
         => a(I,J) = real_one )
        & ( J != I
         => a(I,J) = real_zero ) )
     <= ( int_leq(int_one,I)
        & int_leq(I,n)
        & int_leq(J,n)
        & int_leq(int_one,J) ) ) ).

fof(int_less_transitive,axiom,
    ! [I,J,K] :
      ( int_less(I,K)
     <= ( int_less(I,J)
        & int_less(J,K) ) ) ).

fof(plus_and_inverse,axiom,
    ! [I,J] :
      ( ? [K] :
          ( int_less(int_zero,K)
          & plus(I,K) = J )
    <=> int_less(I,J) ) ).

fof(plus_and_order1,axiom,
    ! [I1,J1,I2,J2] :
      ( int_leq(plus(I1,I2),plus(J1,J2))
     <= ( int_leq(I2,J2)
        & int_less(I1,J1) ) ) ).

fof(qii,hypothesis,
    ! [I,J] :
      ( ( int_leq(I,n)
        & int_leq(J,n)
        & int_leq(int_one,J)
        & int_leq(int_one,I) )
     => ( ! [K] :
            ( a(K,K) = real_one
           <= ( int_leq(K,J)
              & int_leq(int_one,K) ) )
        & ! [C] :
            ( ( plus(I,C) = J
              & int_less(int_zero,C) )
           => ! [K] :
                ( real_zero = a(K,plus(K,C))
               <= ( int_leq(int_one,K)
                  & int_leq(K,I) ) ) )
        & ! [C] :
            ( ! [K] :
                ( ( int_leq(int_one,K)
                  & int_leq(K,J) )
               => real_zero = a(plus(K,C),K) )
           <= ( int_less(int_zero,C)
              & I = plus(J,C) ) ) ) ) ).

fof(plus_commutative,axiom,
    ! [I,J] : plus(I,J) = plus(J,I) ).

fof(one_successor_of_zero,axiom,
    ! [I] :
      ( int_less(int_zero,I)
    <=> int_leq(int_one,I) ) ).

fof(int_less_irreflexive,axiom,
    ! [I,J] :
      ( I != J
     <= int_less(I,J) ) ).

