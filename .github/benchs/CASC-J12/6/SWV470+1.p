include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X] :
      ( ( ! [Y,Z] :
            ( host(Z) != host(Y)
           <= elem(m_Down(Z),queue(host(Y))) )
        & ! [Y,Z] :
            ( ( Z != Y
              & host(Y) = host(Z) )
           => ( ~ setIn(Y,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Y] :
            ( ( ( index(status,host(Y)) = elec_1
                | index(status,host(Y)) = elec_2 )
              & setIn(Y,alive) )
           => Y = index(elid,host(Y)) )
        & ! [Y,Z,Pid20,Pid0] :
            ( ~ ( setIn(Y,alive)
                & elem(m_Down(Z),queue(host(Y))) )
           <= ( index(status,host(Pid0)) = elec_1
              & nbr_proc = host(Pid0)
              & host(Z) = host(Pid0)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & ! [V0] :
                  ( ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) )
                 <= ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) ) ) ) )
        & cons(m_Halt(X),V) = queue(host(W))
        & ! [Y,Z,Pid20,Pid0] :
            ( ~ ( setIn(host(Z),index(down,host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Y))) )
           <= ( host(Y) = host(Z)
              & host(Pid20) = host(Pid0)
              & setIn(Pid20,alive)
              & setIn(Y,alive)
              & host(Pid20) != host(Y) ) )
        & ! [Y,Z,Pid20,Pid0] :
            ( ( host(Y) != host(Pid20)
              & setIn(Y,alive)
              & setIn(Pid20,alive)
              & host(Z) = host(Y)
              & host(Pid0) = host(Pid20) )
           => ~ ( elem(m_Down(Z),queue(host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Y))) ) )
        & ! [Y,Z,Pid0] :
            ( ( host(Pid0) != host(Z)
              & setIn(Pid0,alive)
              & wait = index(status,host(Pid0))
              & host(index(elid,host(Pid0))) = host(Z)
              & host(Y) = host(Pid0) )
           => ~ elem(m_Down(Y),queue(host(Z))) )
        & ! [Y,Z,Pid0] :
            ( ~ elem(m_Down(Y),queue(host(Z)))
           <= ( host(Pid0) != host(Z)
              & host(Pid0) = host(Y)
              & host(Z) = index(ldr,host(Pid0))
              & index(status,host(Pid0)) = norm
              & setIn(Pid0,alive) ) )
        & ! [Y,Z] :
            ( nbr_proc = host(Z)
           => ~ elem(m_NotNorm(Y),queue(host(Z))) )
        & ! [Y,Z] :
            ( elem(m_Ldr(Z),queue(host(Y)))
           => ~ leq(host(Y),host(Z)) ) )
     => ( setIn(W,alive)
       => ! [Y] :
            ( host(X) = host(Y)
           => ( ! [Z,X0,Y0] :
                  ( host(X) != host(Y0)
                 => ( ( ( ! [V0] :
                            ( ( ~ leq(host(Y0),V0)
                              & leq(s(zero),V0) )
                           => ( setIn(V0,index(down,host(Y0)))
                              | host(X0) = V0 ) )
                        & host(Y0) = host(Z)
                        & elec_1 = index(status,host(Y0))
                        & nbr_proc = host(Y0)
                        & elem(m_Down(X0),queue(host(Y0))) )
                     => ~ ( setIn(Y,alive)
                          & elem(m_Down(Z),snoc(V,m_Ack(X,W))) ) )
                   <= host(Y0) != host(W) ) )
             <= host(Y) = host(W) ) ) ) ) ).

