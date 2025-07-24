include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( ~ elem(m_Down(Pid0),queue(host(Z)))
           <= setIn(Pid0,alive) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => host(Pid0) != host(Z) )
        & ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Halt(Pid0),queue(host(Z))) )
        & ! [Z,Pid20,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ack(Pid0,Z),queue(host(Pid20))) )
        & queue(host(X)) = cons(m_Down(Y),V)
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( host(Pid0) = host(Pid20)
              & host(Z) = host(Pid30)
              & setIn(Pid20,alive)
              & setIn(Z,alive)
              & host(Z) != host(Pid20) )
           => ~ ( elem(m_Down(Pid30),queue(host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) ) )
        & ! [Z,Pid0] :
            ( ( Z != Pid0
              & host(Pid0) = host(Z) )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ~ setIn(Pid0,alive)
           <= ( ~ setIn(Z,alive)
              & leq(Pid0,Z)
              & host(Z) = host(Pid0) ) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => ~ setIn(Pid0,alive) ) )
     => ( setIn(X,alive)
       => ( ( ~ ( ( host(index(elid,host(X))) = host(Y)
                  & wait = index(status,host(X)) )
                | ( index(status,host(X)) = norm
                  & index(ldr,host(X)) = host(Y) ) )
           => ( ( elec_1 = index(status,host(X))
                & ! [Z] :
                    ( ( Z = host(Y)
                      | setIn(Z,index(down,host(X))) )
                   <= ( leq(s(zero),Z)
                      & ~ leq(host(X),Z) ) ) )
             => ( ~ leq(nbr_proc,host(X))
               => ! [Z] :
                    ( s(host(X)) != host(Z)
                   => ( host(Z) = host(X)
                     => ! [W0,X0] :
                          ( host(X0) != s(host(X))
                         => ( ! [Y0] :
                                ( ( host(Z) = host(W0)
                                  & host(Y0) = host(X0)
                                  & setIn(X0,alive)
                                  & setIn(Z,alive)
                                  & host(X0) != host(Z) )
                               => ~ ( elem(m_Down(Y0),V)
                                    & elem(m_Down(W0),queue(host(X0))) ) )
                           <= host(X0) != host(X) ) ) ) ) ) ) )
         <= ~ leq(host(X),host(Y)) ) ) ) ).

