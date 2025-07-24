include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( Z = Pid0
           <= ( setIn(Pid0,alive)
              & host(Pid0) = index(ldr,host(Pid0))
              & norm = index(status,host(Pid0))
              & norm = index(status,host(Z))
              & host(Z) = index(ldr,host(Z))
              & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(status,host(Z)) = norm
                & index(ldr,host(Z)) = host(Z) )
           <= ( ~ leq(host(Pid0),host(Z))
              & index(status,host(Pid0)) = elec_1
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & ! [V0] :
                  ( ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) )
                 <= ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) ) ) ) )
        & queue(host(X)) = cons(m_Down(Y),V)
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & host(Pid20) = index(pendack,host(Pid0))
              & elec_2 = index(status,host(Pid0))
              & leq(nbr_proc,index(pendack,host(Pid0)))
              & elem(m_Ack(Pid0,Pid20),queue(host(Pid0))) )
           => ~ ( index(ldr,host(Z)) = host(Z)
                & norm = index(status,host(Z))
                & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elec_2 = index(status,host(Pid0))
              & index(pendack,host(Pid0)) = host(Pid20)
              & leq(nbr_proc,index(pendack,host(Pid0)))
              & elem(m_Down(Pid20),queue(host(Pid0))) )
           => ~ ( index(ldr,host(Z)) = host(Z)
                & norm = index(status,host(Z))
                & setIn(Z,alive) ) )
        & ! [Z] :
            ( ( setIn(Z,alive)
              & ( index(status,host(Z)) = elec_2
                | index(status,host(Z)) = elec_1 ) )
           => index(elid,host(Z)) = Z )
        & ! [Z,Pid0] :
            ( ( host(Z) = host(Pid0)
              & Z != Pid0 )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) ) )
     => ( ( ( ( ( ! [Z] :
                    ( ( leq(s(zero),Z)
                      & ~ leq(host(X),Z) )
                   => ( Z = host(Y)
                      | setIn(Z,index(down,host(X))) ) )
                & index(status,host(X)) = elec_1 )
             => ( leq(nbr_proc,host(X))
               => ! [Z] :
                    ( ~ setIn(host(Z),setEmpty)
                   => ! [V0] :
                        ( ! [W0] :
                            ( ( V0 = W0
                             <= ( host(X) = host(V0)
                                & index(ldr,host(W0)) = host(W0)
                                & index(status,host(W0)) = norm
                                & setIn(W0,alive)
                                & setIn(V0,alive) ) )
                           <= host(X) != host(W0) )
                       <= host(V0) = host(X) ) ) ) )
           <= ~ ( ( index(status,host(X)) = wait
                  & host(Y) = host(index(elid,host(X))) )
                | ( host(Y) = index(ldr,host(X))
                  & index(status,host(X)) = norm ) ) )
         <= ~ leq(host(X),host(Y)) )
       <= setIn(X,alive) ) ) ).

