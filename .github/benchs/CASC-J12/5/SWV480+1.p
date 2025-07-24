include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Pid20),queue(host(Z)))
              & host(Pid0) = host(Pid20)
              & index(status,host(Pid0)) = elec_2
              & setIn(Z,alive) )
           => leq(index(pendack,host(Pid0)),host(Z)) )
        & ! [Z,Pid0] :
            ( Z = Pid0
           <= ( setIn(Z,alive)
              & norm = index(status,host(Z))
              & index(ldr,host(Pid0)) = host(Pid0)
              & index(status,host(Pid0)) = norm
              & index(ldr,host(Z)) = host(Z)
              & setIn(Pid0,alive) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( elem(m_Down(Pid0),queue(host(Z)))
                & elem(m_Down(Pid30),queue(host(Pid20))) )
           <= ( host(Pid20) != host(Z)
              & setIn(Z,alive)
              & host(Pid30) = host(Z)
              & host(Pid20) = host(Pid0)
              & setIn(Pid20,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Z),queue(host(Pid0)))
              & host(Z) = host(Pid20)
              & index(status,host(Pid0)) = norm
              & index(ldr,host(Pid0)) = host(Pid20)
              & host(Pid20) != host(Pid0) )
           => ~ ( setIn(Pid20,alive)
                & norm = index(status,host(Pid20))
                & index(ldr,host(Pid20)) = host(Pid20) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ elem(m_Ack(Z,Pid30),queue(host(Z)))
           <= ( ! [V0] :
                  ( ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) )
                 => ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) ) )
              & index(status,host(Pid0)) = elec_1
              & elec_2 = index(status,host(Z))
              & host(Pid0) = host(Pid30)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & leq(host(Z),host(Pid0))
              & setIn(Z,alive) ) )
        & cons(m_Down(Y),V) = queue(host(X))
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( index(ldr,host(Z)) = host(Z)
                & norm = index(status,host(Z))
                & setIn(Z,alive) )
           <= ( setIn(Pid0,alive)
              & leq(nbr_proc,s(host(Pid0)))
              & elec_1 = index(status,host(Pid0))
              & s(host(Pid0)) = host(Pid30)
              & elem(m_Down(Pid30),queue(host(Pid0)))
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & ! [V0] :
                  ( ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) )
                 => ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) ) ) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( host(Z) = host(Pid20)
              & index(status,host(Pid0)) = wait
              & host(index(elid,host(Pid0))) = host(Pid20)
              & elem(m_Down(Z),queue(host(Pid0)))
              & setIn(Pid0,alive)
              & host(Pid20) != host(Pid0) )
           => ~ ( index(ldr,host(Pid20)) = host(Pid20)
                & index(status,host(Pid20)) = norm
                & setIn(Pid20,alive) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( setIn(host(Pid30),index(down,host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) )
           <= ( host(Z) = host(Pid30)
              & host(Pid20) = host(Pid0)
              & setIn(Pid20,alive)
              & setIn(Z,alive)
              & host(Z) != host(Pid20) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( host(Z) = index(ldr,host(Z))
                & index(status,host(Z)) = norm
                & setIn(Z,alive) )
           <= ( ~ leq(host(Pid20),host(Pid0))
              & setIn(Pid0,alive)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Z) = host(Pid20) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Pid0,alive)
              & norm = index(status,host(Pid0))
              & host(Pid0) = index(ldr,host(Pid0))
              & host(Pid20) = host(Pid0) )
           => ~ ( setIn(Z,alive)
                & elem(m_Down(Pid20),queue(host(Z))) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & host(Pid0) = index(ldr,host(Pid0))
              & index(status,host(Pid0)) = norm )
           => ~ ( setIn(host(Pid0),index(down,host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( setIn(Z,alive)
              & setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & setIn(host(Pid0),index(down,host(Z))) ) )
        & ! [Z] :
            ( ( setIn(Z,alive)
              & ( elec_1 = index(status,host(Z))
                | index(status,host(Z)) = elec_2 ) )
           => Z = index(elid,host(Z)) )
        & ! [Z,Pid0] :
            ( ( Pid0 != Z
              & host(Pid0) = host(Z) )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( host(Pid0) != host(Z)
           <= elem(m_Down(Pid0),queue(host(Z))) ) )
     => ( ( ( ( leq(nbr_proc,index(pendack,host(X)))
             => ! [Z] :
                  ( ~ setIn(host(Z),index(acks,host(X)))
                 => ! [V0] :
                      ( ! [W0,X0,Y0] :
                          ( ( ~ ( setIn(V0,alive)
                                & host(V0) = host(X) )
                           <= ( ! [V1] :
                                  ( ( setIn(V1,index(down,host(Y0)))
                                    | V1 = host(X0) )
                                 <= ( ~ leq(host(Y0),V1)
                                    & leq(s(zero),V1) ) )
                              & setIn(Y0,alive)
                              & elem(m_Down(W0),queue(host(Y0)))
                              & host(W0) = s(host(Y0))
                              & elec_1 = index(status,host(Y0))
                              & elem(m_Down(X0),queue(host(Y0)))
                              & leq(nbr_proc,s(host(Y0))) ) )
                         <= host(X) != host(Y0) )
                     <= host(X) = host(V0) ) ) )
           <= ( host(Y) = index(pendack,host(X))
              & elec_2 = index(status,host(X)) ) )
         <= leq(host(X),host(Y)) )
       <= setIn(X,alive) ) ) ).

