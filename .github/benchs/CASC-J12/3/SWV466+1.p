include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( setIn(X,alive)
       => ( ( ( leq(nbr_proc,index(pendack,host(X)))
             => ! [Z] :
                  ( setIn(host(Z),index(acks,host(X)))
                 => ! [V0] :
                      ( ! [W0,X0,Y0] :
                          ( host(Y0) = host(Z)
                         => ( host(X) != host(Y0)
                           => ( ~ ( setIn(V0,alive)
                                  & host(X) = host(V0) )
                             <= ( setIn(Y0,alive)
                                & leq(nbr_proc,s(index(pendack,host(Y0))))
                                & elem(m_Down(X0),snoc(queue(host(Y0)),m_Ldr(X)))
                                & index(status,host(Y0)) = elec_2
                                & index(pendack,host(Y0)) = host(W0)
                                & s(index(pendack,host(Y0))) = host(X0)
                                & elem(m_Ack(Y0,W0),snoc(queue(host(Y0)),m_Ldr(X))) ) ) ) )
                     <= host(X) = host(V0) ) ) )
           <= ( host(Y) = index(pendack,host(X))
              & elec_2 = index(status,host(X)) ) )
         <= leq(host(X),host(Y)) ) )
     <= ( ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ldr(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( host(Z) != host(Pid0)
           <= elem(m_Down(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Halt(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) )
           <= ( host(Pid0) = host(Z)
              & Z != Pid0 ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Ack(Pid0,Z),queue(host(Pid0))) )
           => leq(host(Z),index(pendack,host(Pid0))) )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( setIn(Z,alive)
              & setIn(Pid0,alive)
              & elec_2 = index(status,host(Z))
              & elec_2 = index(status,host(Pid0))
              & ~ leq(host(Z),host(Pid0)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ elem(m_Ack(Z,Pid20),queue(host(Z)))
           <= ( setIn(Pid0,alive)
              & host(Pid20) = host(Pid0)
              & index(status,host(Pid0)) = elec_2
              & elec_2 = index(status,host(Z))
              & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ~ leq(index(pendack,host(Z)),index(pendack,host(Pid0)))
           <= ( setIn(Pid0,alive)
              & elec_2 = index(status,host(Pid0))
              & elec_2 = index(status,host(Z))
              & setIn(Z,alive)
              & ~ leq(host(Z),host(Pid0)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(ldr,host(Z)) = host(Z)
                & norm = index(status,host(Z)) )
           <= ( elem(m_Halt(Pid0),queue(host(Pid20)))
              & index(status,host(Pid0)) = elec_2
              & setIn(Pid0,alive)
              & ~ leq(index(pendack,host(Pid0)),host(Z)) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(ldr,host(Z)) = host(Z)
                & index(status,host(Z)) = norm )
           <= ( setIn(Pid0,alive)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & elem(m_Ack(Pid0,Pid30),queue(host(Pid0)))
              & s(index(pendack,host(Pid0))) = host(Pid20)
              & host(Pid30) = index(pendack,host(Pid0))
              & elec_2 = index(status,host(Pid0))
              & leq(nbr_proc,s(index(pendack,host(Pid0)))) ) )
        & cons(m_Down(Y),V) = queue(host(X))
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( ! [V0] :
                  ( ( host(Pid20) = V0
                    | setIn(V0,index(down,host(Pid0))) )
                 <= ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) ) )
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & nbr_proc = host(Pid0)
              & index(status,host(Pid0)) = elec_1
              & host(Pid30) = host(Pid0) )
           => ~ ( elem(m_Down(Pid30),queue(host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( index(status,host(Z)) = norm
                & index(ldr,host(Z)) = host(Z)
                & setIn(Z,alive) )
           <= ( elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Z) = host(Pid20)
              & setIn(Pid0,alive) ) )
        & ! [Z] :
            ( ( ( elec_1 = index(status,host(Z))
                | elec_2 = index(status,host(Z)) )
              & setIn(Z,alive) )
           => Z = index(elid,host(Z)) )
        & ! [Z,Pid0] :
            ( ( elec_1 = index(status,host(Pid0))
              & setIn(Pid0,alive) )
           => ~ elem(m_Ack(Pid0,Z),queue(host(Pid0))) )
        & ! [Z,Pid20,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ack(Pid0,Z),queue(host(Pid20))) ) ) ) ).

