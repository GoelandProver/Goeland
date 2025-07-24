fof(permutation,axiom,
    ! [I] :
      ( minus(s(n),I) = perm(I)
     <= ( le(s(n0),I)
        & le(I,n) ) ) ).

fof(queens_q,axiom,
    ( ! [I,J] :
        ( ( q(J) != q(I)
          & minus(q(I),I) != minus(q(J),J)
          & plus(q(I),I) != plus(q(J),J) )
       <= ( ( le(s(I),J)
          <=> le(s(perm(J)),perm(I)) )
          & le(J,n)
          & le(s(I),J)
          & le(I,n)
          & le(s(n0),I) ) )
   => queens_q ) ).

fof(le_trans,axiom,
    ! [X,Y,Z] :
      ( ( le(X,Y)
        & le(Y,Z) )
     => le(X,Z) ) ).

fof(minus1,axiom,
    ! [I,J,K,L] :
      ( minus(I,J) = minus(K,L)
    <=> minus(J,L) = minus(I,K) ) ).

fof(permutation_another_one,axiom,
    ! [J,I] : minus(I,J) = minus(perm(J),perm(I)) ).

fof(queens_sym,conjecture,
    ( queens_q
   <= ( ! [I] : p(perm(I)) = q(I)
      & queens_p ) ) ).

fof(permutation_range,axiom,
    ! [I] :
      ( ( le(s(n0),perm(I))
        & le(perm(I),n) )
     <= ( le(s(n0),I)
        & le(I,n) ) ) ).

fof(succ_le,axiom,
    ! [X] : le(X,s(X)) ).

fof(plus1,axiom,
    ! [I,J,K,L] :
      ( minus(L,J) = minus(I,K)
    <=> plus(I,J) = plus(K,L) ) ).

fof(queens_p,axiom,
    ( ! [I,J] :
        ( ( le(s(n0),I)
          & le(s(I),J)
          & le(J,n)
          & le(I,n) )
       => ( plus(p(I),I) != plus(p(J),J)
          & minus(p(J),J) != minus(p(I),I)
          & p(J) != p(I) ) )
   <= queens_p ) ).

