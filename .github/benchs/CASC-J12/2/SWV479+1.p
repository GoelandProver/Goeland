include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( ( Z != Pid0
              & host(Pid0) = host(Z) )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( setIn(Z,alive)
              & elec_2 = index(status,host(Pid0))
              & setIn(host(Pid0),index(down,host(Z)))
              & setIn(Pid0,alive) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & host(Pid0) = index(ldr,host(Pid0))
              & index(status,host(Pid0)) = norm )
           => ~ ( setIn(host(Pid0),index(down,host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( host(Pid20) != host(Z)
              & setIn(Z,alive)
              & host(Pid20) = host(Pid0)
              & host(Z) = host(Pid30)
              & setIn(Pid20,alive) )
           => ~ ( elem(m_Down(Pid0),queue(host(Z)))
                & elem(m_Down(Pid30),queue(host(Pid20))) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( host(Pid20) != host(Z)
              & setIn(Z,alive)
              & setIn(Pid20,alive)
              & host(Pid0) = host(Pid20)
              & host(Pid30) = host(Z) )
           => ~ ( setIn(host(Pid30),index(down,host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( host(Pid0) != host(Pid20)
              & index(ldr,host(Pid0)) = host(Pid20)
              & norm = index(status,host(Pid0))
              & host(Z) = host(Pid20)
              & elem(m_Down(Z),queue(host(Pid0)))
              & setIn(Pid0,alive) )
           => ~ ( setIn(Pid20,alive)
                & index(ldr,host(Pid20)) = host(Pid20)
                & index(status,host(Pid20)) = norm ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( leq(host(Z),host(Pid0))
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & elec_1 = index(status,host(Pid0))
              & elec_2 = index(status,host(Z))
              & host(Pid0) = host(Pid30)
              & setIn(Z,alive)
              & ! [V0] :
                  ( ( setIn(V0,index(down,host(Pid0)))
                    | V0 = host(Pid20) )
                 <= ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) ) ) )
           => ~ elem(m_Ack(Z,Pid30),queue(host(Z))) )
        & queue(host(X)) = cons(m_Down(Y),V)
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( ! [V0] :
                  ( ( setIn(V0,index(down,host(Pid0)))
                    | host(Pid20) = V0 )
                 <= ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) ) )
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & elec_1 = index(status,host(Pid0))
              & s(host(Pid0)) = host(Pid30)
              & elem(m_Down(Pid30),queue(host(Pid0)))
              & leq(nbr_proc,s(host(Pid0)))
              & setIn(Pid0,alive) )
           => ~ ( setIn(Z,alive)
                & norm = index(status,host(Z))
                & host(Z) = index(ldr,host(Z)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Z),queue(host(Pid0)))
              & wait = index(status,host(Pid0))
              & host(index(elid,host(Pid0))) = host(Pid20)
              & host(Pid20) = host(Z)
              & host(Pid0) != host(Pid20) )
           => ~ ( index(ldr,host(Pid20)) = host(Pid20)
                & index(status,host(Pid20)) = norm
                & setIn(Pid20,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Pid20) = host(Z)
              & ~ leq(host(Pid20),host(Pid0)) )
           => ~ ( norm = index(status,host(Z))
                & index(ldr,host(Z)) = host(Z)
                & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & index(status,host(Pid0)) = norm
              & index(ldr,host(Pid0)) = host(Pid0)
              & norm = index(status,host(Z))
              & index(ldr,host(Z)) = host(Z)
              & setIn(Z,alive) )
           => Z = Pid0 )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & host(Pid0) = host(Pid20)
              & index(ldr,host(Pid0)) = host(Pid0)
              & index(status,host(Pid0)) = norm )
           => ~ ( elem(m_Down(Pid20),queue(host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( elem(m_Down(Pid20),queue(host(Z)))
              & elec_2 = index(status,host(Pid0))
              & host(Pid20) = host(Pid0)
              & setIn(Pid0,alive)
              & setIn(Z,alive) ) )
        & ! [Z] :
            ( index(elid,host(Z)) = Z
           <= ( setIn(Z,alive)
              & ( index(status,host(Z)) = elec_1
                | index(status,host(Z)) = elec_2 ) ) )
        & ! [Z,Pid0] :
            ( host(Pid0) != host(Z)
           <= elem(m_Down(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ldr(Pid0),queue(host(Z))) ) )
     => ( ( ( ( elec_2 = index(status,host(X))
              & index(pendack,host(X)) = host(Y) )
           => ( ! [Z] :
                  ( setIn(host(Z),index(acks,host(X)))
                 => ! [V0] :
                      ( host(X) = host(V0)
                     => ! [W0,X0,Y0] :
                          ( ( host(Y0) != host(X)
                           => ( ~ ( setIn(V0,alive)
                                  & host(V0) = host(X) )
                             <= ( setIn(Y0,alive)
                                & leq(nbr_proc,s(host(Y0)))
                                & elem(m_Down(W0),queue(host(Y0)))
                                & index(status,host(Y0)) = elec_1
                                & s(host(Y0)) = host(W0)
                                & elem(m_Down(X0),queue(host(Y0)))
                                & ! [V1] :
                                    ( ( V1 = host(X0)
                                      | setIn(V1,index(down,host(Y0))) )
                                   <= ( leq(s(zero),V1)
                                      & ~ leq(host(Y0),V1) ) ) ) ) )
                         <= host(Z) != host(Y0) ) ) )
             <= leq(nbr_proc,index(pendack,host(X))) ) )
         <= leq(host(X),host(Y)) )
       <= setIn(X,alive) ) ) ).

