include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ( ~ leq(host(X),host(Y))
         => ( ( ( ! [Z] :
                    ( ( ~ leq(host(X),Z)
                      & leq(s(zero),Z) )
                   => ( setIn(Z,index(down,host(X)))
                      | host(Y) = Z ) )
                & elec_1 = index(status,host(X)) )
             => ( ~ leq(nbr_proc,host(X))
               => ! [Z] :
                    ( host(Z) != host(X)
                   => ! [W0] :
                        ( host(W0) != s(host(X))
                       => ( host(X) != host(W0)
                         => ! [X0] :
                              ( ( ~ ( setIn(Z,alive)
                                    & norm = index(status,host(Z))
                                    & index(ldr,host(Z)) = host(Z) )
                               <= ( elem(m_Halt(X0),queue(host(W0)))
                                  & setIn(X0,alive)
                                  & ~ leq(s(host(X)),host(Z)) ) )
                             <= host(X0) = host(X) ) ) ) ) ) )
           <= ~ ( ( index(ldr,host(X)) = host(Y)
                  & norm = index(status,host(X)) )
                | ( host(Y) = host(index(elid,host(X)))
                  & wait = index(status,host(X)) ) ) ) )
       <= setIn(X,alive) )
     <= ( ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( ( ~ setIn(Z,alive)
              | ~ setIn(Pid0,alive) )
           <= ( host(Z) = host(Pid0)
              & Pid0 != Z ) )
        & ! [Z] :
            ( ( setIn(Z,alive)
              & ( elec_2 = index(status,host(Z))
                | index(status,host(Z)) = elec_1 ) )
           => index(elid,host(Z)) = Z )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Z) = host(Pid20) )
           => ~ ( host(Z) = index(ldr,host(Z))
                & norm = index(status,host(Z))
                & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( index(ldr,host(Z)) = host(Z)
                & index(status,host(Z)) = norm
                & setIn(Z,alive) )
           <= ( setIn(Pid0,alive)
              & host(Z) = host(Pid20)
              & elem(m_Ack(Pid0,Pid20),queue(host(Pid0))) ) )
        & ! [Z,Pid0] :
            ( ~ leq(index(pendack,host(Z)),index(pendack,host(Pid0)))
           <= ( ~ leq(host(Z),host(Pid0))
              & setIn(Z,alive)
              & setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & elec_2 = index(status,host(Z)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( index(status,host(Pid0)) = elec_2
              & elem(m_Halt(Pid0),queue(host(Pid20)))
              & setIn(Pid0,alive)
              & ~ leq(index(pendack,host(Pid0)),host(Z)) )
           => ~ ( setIn(Z,alive)
                & index(ldr,host(Z)) = host(Z)
                & index(status,host(Z)) = norm ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(ldr,host(Z)) = host(Z)
                & index(status,host(Z)) = norm )
           <= ( ! [V0] :
                  ( ( setIn(V0,index(down,host(Pid0)))
                    | host(Pid20) = V0 )
                 <= ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) ) )
              & elec_1 = index(status,host(Pid0))
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & ~ leq(host(Pid0),host(Z)) ) )
        & cons(m_Down(Y),V) = queue(host(X))
        & ! [Z,Pid0] :
            ( ( index(ldr,host(Z)) = host(Z)
              & index(status,host(Z)) = norm
              & host(Pid0) = index(ldr,host(Pid0))
              & index(status,host(Pid0)) = norm
              & setIn(Pid0,alive)
              & setIn(Z,alive) )
           => Z = Pid0 )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & elec_2 = index(status,host(Pid0))
              & ~ leq(index(pendack,host(Pid0)),host(Z)) )
           => ~ ( setIn(Z,alive)
                & norm = index(status,host(Z))
                & index(ldr,host(Z)) = host(Z) ) )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( setIn(Pid0,alive)
              & index(status,host(Z)) = elec_2
              & index(status,host(Pid0)) = elec_2
              & setIn(Z,alive)
              & ~ leq(host(Z),host(Pid0)) ) )
        & ! [Z,Pid0] :
            ( ~ setIn(Pid0,alive)
           <= ( ~ setIn(Z,alive)
              & host(Pid0) = host(Z)
              & leq(Pid0,Z) ) )
        & ! [Z,Pid20,Pid0] :
            ( elem(m_Ack(Pid0,Z),queue(host(Pid20)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( elem(m_Halt(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( ~ setIn(Pid0,alive)
           <= elem(m_Down(Pid0),queue(host(Z))) )
        & ! [Z] : leq(index(pendack,host(Z)),nbr_proc) ) ) ).

