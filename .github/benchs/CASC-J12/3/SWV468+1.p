include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( ~ elem(m_Ack(Z,Pid0),queue(host(Z)))
           <= ( setIn(Pid0,alive)
              & elec_2 = index(status,host(Pid0)) ) )
        & ! [Z] :
            ( ( setIn(Z,alive)
              & ( index(status,host(Z)) = elec_1
                | index(status,host(Z)) = elec_2 ) )
           => index(elid,host(Z)) = Z )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( setIn(host(Pid0),index(down,host(Z)))
              & index(status,host(Pid0)) = elec_2
              & setIn(Pid0,alive)
              & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( index(status,host(Pid0)) = norm
              & host(Pid0) = index(ldr,host(Pid0))
              & setIn(Pid0,alive) )
           => ~ ( setIn(Z,alive)
                & setIn(host(Pid0),index(down,host(Z))) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(ldr,host(Z)) = host(Z)
                & norm = index(status,host(Z)) )
           <= ( setIn(Pid0,alive)
              & elem(m_Ack(Pid0,Pid20),queue(host(Pid0)))
              & host(Z) = host(Pid20) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Z,alive)
              & elec_2 = index(status,host(Pid0))
              & host(Pid0) = host(Pid20)
              & elem(m_Down(Pid20),queue(host(Z)))
              & setIn(Pid0,alive) )
           => leq(index(pendack,host(Pid0)),host(Z)) )
        & ! [Z,Pid20,Pid0] :
            ( ( host(Pid0) = host(Pid20)
              & index(ldr,host(Pid0)) = host(Pid0)
              & index(status,host(Pid0)) = norm
              & setIn(Pid0,alive) )
           => ~ ( elem(m_Down(Pid20),queue(host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( ~ leq(host(Z),host(Pid0))
              & setIn(Pid0,alive)
              & index(status,host(Z)) = elec_2
              & index(status,host(Pid0)) = elec_2
              & setIn(Z,alive) )
           => ~ leq(index(pendack,host(Z)),index(pendack,host(Pid0))) )
        & queue(host(X)) = cons(m_Down(Y),V)
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & host(Z) = index(ldr,host(Z))
                & index(status,host(Z)) = norm )
           <= ( ! [V0] :
                  ( ( setIn(V0,index(down,host(Pid0)))
                    | host(Pid20) = V0 )
                 <= ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) ) )
              & index(status,host(Pid0)) = elec_1
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & ~ leq(host(Pid0),host(Z)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elec_2 = index(status,host(Pid0))
              & host(Pid20) = host(Z)
              & elem(m_Down(Pid20),queue(host(Pid0))) )
           => ~ ( setIn(Z,alive)
                & index(status,host(Z)) = norm
                & host(Z) = index(ldr,host(Z)) ) )
        & ! [Z,Pid0] :
            ( ~ ( index(status,host(Z)) = norm
                & index(ldr,host(Z)) = host(Z)
                & setIn(Z,alive) )
           <= ( ~ leq(index(pendack,host(Pid0)),host(Z))
              & index(status,host(Pid0)) = elec_2
              & setIn(Pid0,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ elem(m_Ack(Z,Pid20),queue(host(Z)))
           <= ( setIn(Pid0,alive)
              & host(Pid20) = host(Pid0)
              & elec_2 = index(status,host(Z))
              & index(status,host(Pid0)) = elec_2
              & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( ~ leq(host(Z),host(Pid0))
              & setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & elec_2 = index(status,host(Z))
              & setIn(Z,alive) )
           => leq(index(pendack,host(Pid0)),host(Z)) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & host(Pid0) = host(Pid20)
              & setIn(Z,alive)
              & ~ leq(host(Pid0),host(Z)) )
           => ~ elem(m_Down(Pid20),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) )
           <= ( host(Pid0) = host(Z)
              & Pid0 != Z ) ) )
     => ( setIn(X,alive)
       => ( ~ leq(host(X),host(Y))
         => ( ( ( elec_1 = index(status,host(X))
                & ! [Z] :
                    ( ( Z = host(Y)
                      | setIn(Z,index(down,host(X))) )
                   <= ( leq(s(zero),Z)
                      & ~ leq(host(X),Z) ) ) )
             => ( leq(nbr_proc,host(X))
               => ! [Z] :
                    ( ! [V0] :
                        ( host(X) = host(V0)
                       => ! [W0] :
                            ( ( ~ ( setIn(V0,alive)
                                  & host(X) = host(V0) )
                             <= ( index(status,host(W0)) = elec_2
                                & setIn(W0,alive)
                                & ~ leq(index(pendack,host(W0)),host(V0)) ) )
                           <= host(W0) != host(X) ) )
                   <= ~ setIn(host(Z),setEmpty) ) ) )
           <= ~ ( ( index(status,host(X)) = wait
                  & host(index(elid,host(X))) = host(Y) )
                | ( index(ldr,host(X)) = host(Y)
                  & index(status,host(X)) = norm ) ) ) ) ) ) ).

