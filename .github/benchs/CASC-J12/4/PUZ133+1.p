fof(queens_p,axiom,
    ( ! [I,J] :
        ( ( le(s(n0),I)
          & le(s(I),J)
          & le(J,n)
          & le(I,n) )
       => ( p(J) != p(I)
          & minus(p(J),J) != minus(p(I),I)
          & plus(p(J),J) != plus(p(I),I) ) )
   <= queens_p ) ).

fof(permutation,axiom,
    ! [I] : minus(s(n),I) = perm(I) ).

fof(queens_q,axiom,
    ( ! [I,J] :
        ( ( le(s(n0),I)
          & le(I,n)
          & le(J,n)
          & ( le(s(perm(J)),perm(I))
          <=> le(s(I),J) )
          & le(s(I),J) )
       => ( plus(q(I),I) != plus(q(J),J)
          & minus(q(I),I) != minus(q(J),J)
          & q(I) != q(J) ) )
   => queens_q ) ).

fof(plus1,axiom,
    ! [I,J,K,L] :
      ( plus(I,J) = plus(K,L)
    <=> minus(L,J) = minus(I,K) ) ).

fof(minus1,axiom,
    ! [I,J,K,L] :
      ( minus(I,J) = minus(K,L)
    <=> minus(J,L) = minus(I,K) ) ).

fof(queens_sym,conjecture,
    ( queens_q
   <= ( ! [I] : q(I) = p(perm(I))
      & queens_p ) ) ).

fof(succ_le,axiom,
    ! [X] : le(X,s(X)) ).

fof(le_trans,axiom,
    ! [X,Y,Z] :
      ( le(X,Z)
     <= ( le(Y,Z)
        & le(X,Y) ) ) ).

fof(permutation_another_one,axiom,
    ! [J,I] : minus(I,J) = minus(perm(J),perm(I)) ).

fof(permutation_range,axiom,
    ! [I] :
      ( ( le(perm(I),n)
        & le(s(n0),perm(I)) )
     <= ( le(s(n0),I)
        & le(I,n) ) ) ).

