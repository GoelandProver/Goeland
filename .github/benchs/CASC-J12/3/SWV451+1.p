include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( host(Z) != host(Pid0)
           <= elem(m_Down(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( elem(m_Halt(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid20,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ack(Pid0,Z),queue(host(Pid20))) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( host(Pid20) != host(Z)
              & host(Pid0) = host(Pid20)
              & host(Z) = host(Pid30)
              & setIn(Pid20,alive)
              & setIn(Z,alive) )
           => ~ ( elem(m_Down(Pid30),queue(host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) ) )
        & cons(m_NotNorm(X),V) = queue(host(Y))
        & ! [Z,Pid0] :
            ( ( Z != Pid0
              & host(Z) = host(Pid0) )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ~ setIn(Pid0,alive)
           <= ( ~ setIn(Z,alive)
              & leq(Pid0,Z)
              & host(Pid0) = host(Z) ) )
        & ! [Z,Pid0] :
            ( ~ setIn(Pid0,alive)
           <= elem(m_Down(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( ~ elem(m_Down(Pid0),queue(host(Z)))
           <= setIn(Pid0,alive) ) )
     => ( ( ( host(Y) = index(ldr,host(Y))
            & index(status,host(Y)) = norm
            & X = index(elid,host(Y)) )
         => ( ( host(Y) = host(W)
              & ~ setIn(W,pids)
              & ! [Z] :
                  ( host(Y) = host(Z)
                 => leq(Z,W) ) )
           => ( host(W) = s(zero)
             => ( ! [Z] :
                    ( s(host(W)) = host(Z)
                   => ( ! [X0,Y0] :
                          ( ( ! [Z0] :
                                ( ~ ( elem(m_Down(Z0),snoc(queue(host(Z)),m_Halt(W)))
                                    & elem(m_Down(X0),V) )
                               <= ( host(Y0) != host(Z)
                                  & host(X0) = host(Z)
                                  & host(Y0) = host(Z0)
                                  & ( Y0 = W
                                    | ( Y0 != Y
                                      & setIn(Y0,alive) ) )
                                  & ( ( Y != Z
                                      & setIn(Z,alive) )
                                    | Z = W ) ) )
                           <= host(Y0) = host(Y) )
                         <= s(host(W)) != host(Y0) )
                     <= host(Z) != host(Y) ) )
               <= ~ leq(nbr_proc,host(W)) ) ) ) )
       <= setIn(Y,alive) ) ) ).

