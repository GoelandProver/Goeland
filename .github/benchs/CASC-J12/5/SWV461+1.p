include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W] :
      ( ( ! [X] :
            ( host(X) = host(W)
           => ~ setIn(X,alive) )
        & ! [X,Y] :
            ( elem(m_Ldr(Y),queue(host(X)))
           => ~ leq(host(X),host(Y)) )
        & ! [X,Y] :
            ( ~ leq(host(X),host(Y))
           <= elem(m_Halt(Y),queue(host(X))) )
        & ! [X,Y] :
            ( ( ~ leq(host(X),host(Y))
              & setIn(Y,alive)
              & index(status,host(X)) = elec_2
              & index(status,host(Y)) = elec_2
              & setIn(X,alive) )
           => ~ leq(index(pendack,host(X)),index(pendack,host(Y))) )
        & ! [X,Y,Z] :
            ( ( ~ leq(index(pendack,host(Z)),host(X))
              & setIn(Z,alive)
              & elem(m_Halt(Z),queue(host(Y)))
              & elec_2 = index(status,host(Z)) )
           => ~ ( host(X) = index(ldr,host(X))
                & index(status,host(X)) = norm
                & setIn(X,alive) ) )
        & ! [X,Y,Z,Pid0] :
            ( ~ ( index(status,host(X)) = norm
                & host(X) = index(ldr,host(X))
                & setIn(X,alive) )
           <= ( elem(m_Ack(Pid0,Y),queue(host(Pid0)))
              & index(pendack,host(Pid0)) = host(Y)
              & s(index(pendack,host(Pid0))) = host(Z)
              & index(status,host(Pid0)) = elec_2
              & leq(nbr_proc,s(index(pendack,host(Pid0))))
              & elem(m_Down(Z),queue(host(Pid0)))
              & setIn(Pid0,alive) ) )
        & ! [X,Y,Z,Pid0] :
            ( ~ ( elem(m_Down(Y),queue(host(X)))
                & setIn(X,alive) )
           <= ( ! [V0] :
                  ( ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) )
                 => ( setIn(V0,index(down,host(Pid0)))
                    | host(Z) = V0 ) )
              & host(Pid0) = host(Y)
              & index(status,host(Pid0)) = elec_1
              & nbr_proc = host(Pid0)
              & elem(m_Down(Z),queue(host(Pid0))) ) )
        & ! [X,Y] :
            ( leq(index(pendack,host(Y)),host(X))
           <= ( ~ leq(host(X),host(Y))
              & setIn(X,alive)
              & elec_2 = index(status,host(Y))
              & elec_2 = index(status,host(X))
              & setIn(Y,alive) ) )
        & ! [X,Y,Z] :
            ( ~ elem(m_Ack(X,Y),queue(host(X)))
           <= ( setIn(X,alive)
              & host(Y) = host(Z)
              & index(status,host(X)) = elec_2
              & index(status,host(Z)) = elec_2
              & setIn(Z,alive) ) )
        & ! [X,Y,Z] :
            ( ( elem(m_Down(Y),queue(host(Z)))
              & host(Y) = host(X)
              & setIn(Z,alive) )
           => ~ ( setIn(X,alive)
                & index(ldr,host(X)) = host(X)
                & norm = index(status,host(X)) ) )
        & ! [X] :
            ( index(elid,host(X)) = X
           <= ( ( index(status,host(X)) = elec_2
                | index(status,host(X)) = elec_1 )
              & setIn(X,alive) ) )
        & ! [X,Y] :
            ( ( setIn(Y,alive)
              & index(status,host(Y)) = elec_1 )
           => ~ elem(m_Ack(Y,X),queue(host(Y))) )
        & ! [X,Y] :
            ( leq(host(X),index(pendack,host(Y)))
           <= ( elem(m_Ack(Y,X),queue(host(Y)))
              & setIn(Y,alive) ) )
        & ! [X,Y] :
            ( ( host(X) = host(Y)
              & Y != X )
           => ( ~ setIn(X,alive)
              | ~ setIn(Y,alive) ) )
        & ! [X,Y,Z] :
            ( ~ leq(host(X),host(Z))
           <= elem(m_Ack(Z,X),queue(host(Y))) )
        & ! [X,Y] :
            ( elem(m_Down(Y),queue(host(X)))
           => host(X) != host(Y) ) )
     => ( q_nil = queue(host(W))
       => ( ( ~ setIn(V,pids)
            & host(W) = host(V)
            & ! [X] :
                ( host(X) = host(W)
               => leq(X,V) ) )
         => ( s(zero) = host(V)
           => ( ~ leq(nbr_proc,host(V))
             => ! [X] :
                  ( ! [Y,Z,Z0] :
                      ( host(Z0) = s(host(V))
                     => ( ( ~ ( ( setIn(X,alive)
                                | V = X )
                              & index(status,host(X)) = norm
                              & index(ldr,host(X)) = host(X) )
                         <= ( s(index(pendack,host(Z0))) = host(Z)
                            & host(Y) = index(pendack,host(Z0))
                            & index(status,host(Z0)) = elec_2
                            & elem(m_Ack(Z0,Y),snoc(queue(host(Z0)),m_Halt(V)))
                            & elem(m_Down(Z),snoc(queue(host(Z0)),m_Halt(V)))
                            & leq(nbr_proc,s(index(pendack,host(Z0))))
                            & ( setIn(Z0,alive)
                              | Z0 = V ) ) )
                       <= host(V) != host(Z0) ) )
                 <= host(X) != host(V) ) ) ) ) ) ) ).

