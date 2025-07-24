include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( ( Pid0 != Z
              & host(Pid0) = host(Z) )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z] :
            ( index(elid,host(Z)) = Z
           <= ( ( index(status,host(Z)) = elec_2
                | index(status,host(Z)) = elec_1 )
              & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & norm = index(status,host(Pid0))
              & index(ldr,host(Pid0)) = host(Pid0) )
           => ~ ( setIn(host(Pid0),index(down,host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( host(Z) = index(ldr,host(Z))
              & norm = index(status,host(Z))
              & index(status,host(Pid0)) = norm
              & index(ldr,host(Pid0)) = host(Pid0)
              & setIn(Pid0,alive)
              & setIn(Z,alive) )
           => Z = Pid0 )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( setIn(Pid20,alive)
              & host(Pid20) = host(Pid0)
              & host(Pid30) = host(Z)
              & setIn(Z,alive)
              & host(Pid20) != host(Z) )
           => ~ ( elem(m_Down(Pid0),queue(host(Z)))
                & setIn(host(Pid30),index(down,host(Pid20))) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Z),queue(host(Pid0)))
              & host(Z) = host(Pid20)
              & index(ldr,host(Pid0)) = host(Pid20)
              & norm = index(status,host(Pid0))
              & host(Pid0) != host(Pid20) )
           => ~ ( index(status,host(Pid20)) = norm
                & host(Pid20) = index(ldr,host(Pid20))
                & setIn(Pid20,alive) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ elem(m_Ack(Z,Pid30),queue(host(Z)))
           <= ( ! [V0] :
                  ( ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) )
                 => ( host(Pid20) = V0
                    | setIn(V0,index(down,host(Pid0))) ) )
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Pid30) = host(Pid0)
              & index(status,host(Pid0)) = elec_1
              & index(status,host(Z)) = elec_2
              & leq(host(Z),host(Pid0))
              & setIn(Z,alive) ) )
        & cons(m_Ack(W,Y),V) = queue(host(X))
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(status,host(Z)) = norm
                & index(ldr,host(Z)) = host(Z) )
           <= ( ! [V0] :
                  ( ( host(Pid20) = V0
                    | setIn(V0,index(down,host(Pid0))) )
                 <= ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) ) )
              & leq(nbr_proc,s(host(Pid0)))
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & s(host(Pid0)) = host(Pid30)
              & index(status,host(Pid0)) = elec_1
              & elem(m_Down(Pid30),queue(host(Pid0)))
              & setIn(Pid0,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Pid20,alive)
                & host(Pid20) = index(ldr,host(Pid20))
                & index(status,host(Pid20)) = norm )
           <= ( host(Pid20) != host(Pid0)
              & setIn(Pid0,alive)
              & elem(m_Down(Z),queue(host(Pid0)))
              & host(Z) = host(Pid20)
              & wait = index(status,host(Pid0))
              & host(index(elid,host(Pid0))) = host(Pid20) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( host(Pid20) != host(Z)
              & setIn(Z,alive)
              & host(Pid0) = host(Pid20)
              & host(Z) = host(Pid30)
              & setIn(Pid20,alive) )
           => ~ ( elem(m_Down(Pid30),queue(host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( index(status,host(Z)) = norm
                & host(Z) = index(ldr,host(Z))
                & setIn(Z,alive) )
           <= ( setIn(Pid0,alive)
              & host(Z) = host(Pid20)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & ~ leq(host(Pid20),host(Pid0)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( host(Pid0) = host(Pid20)
              & index(ldr,host(Pid0)) = host(Pid0)
              & index(status,host(Pid0)) = norm
              & setIn(Pid0,alive) )
           => ~ ( elem(m_Down(Pid20),queue(host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Z,alive)
              & index(status,host(Pid0)) = elec_2
              & host(Pid0) = host(Pid20)
              & elem(m_Down(Pid20),queue(host(Z)))
              & setIn(Pid0,alive) )
           => leq(index(pendack,host(Pid0)),host(Z)) )
        & ! [Z,Pid0] :
            ( ( setIn(host(Pid0),index(down,host(Z)))
              & elec_2 = index(status,host(Pid0))
              & setIn(Pid0,alive)
              & setIn(Z,alive) )
           => leq(index(pendack,host(Pid0)),host(Z)) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => host(Pid0) != host(Z) )
        & ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ldr(Pid0),queue(host(Z))) ) )
     => ( ( ( leq(nbr_proc,index(pendack,host(X)))
           => ! [Z] :
                ( ! [V0] :
                    ( host(X) = host(V0)
                   => ! [W0,X0,Y0] :
                        ( ( ( ( setIn(Y0,alive)
                              & s(host(Y0)) = host(W0)
                              & elec_1 = index(status,host(Y0))
                              & elem(m_Down(X0),snoc(queue(host(Y0)),m_Ldr(X)))
                              & elem(m_Down(W0),snoc(queue(host(Y0)),m_Ldr(X)))
                              & leq(nbr_proc,s(host(Y0)))
                              & ! [V1] :
                                  ( ( ~ leq(host(Y0),V1)
                                    & leq(s(zero),V1) )
                                 => ( setIn(V1,index(down,host(Y0)))
                                    | V1 = host(X0) ) ) )
                           => ~ ( setIn(V0,alive)
                                & host(V0) = host(X) ) )
                         <= host(Y0) != host(X) )
                       <= host(Z) = host(Y0) ) )
               <= ( host(Z) = host(Y)
                  | setIn(host(Z),index(acks,host(X))) ) ) )
         <= ( index(pendack,host(X)) = host(Y)
            & index(status,host(X)) = elec_2
            & W = index(elid,host(X)) ) )
       <= setIn(X,alive) ) ) ).

