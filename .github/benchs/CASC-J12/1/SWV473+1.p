include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ldr(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => host(Z) != host(Pid0) )
        & ! [Z,Pid0] :
            ( host(Pid0) = nbr_proc
           => ~ elem(m_NotNorm(Z),queue(host(Pid0))) )
        & ! [Z] :
            ( ( setIn(Z,alive)
              & ( index(status,host(Z)) = elec_2
                | index(status,host(Z)) = elec_1 ) )
           => Z = index(elid,host(Z)) )
        & ! [Z,Pid20,Pid0] :
            ( ~ elem(m_Down(Z),queue(host(Pid20)))
           <= ( setIn(Pid0,alive)
              & host(Pid20) = host(index(elid,host(Pid0)))
              & wait = index(status,host(Pid0))
              & host(Pid0) = host(Z)
              & host(Pid20) != host(Pid0) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( elem(m_Down(Pid0),queue(host(Z)))
                & setIn(host(Pid30),index(down,host(Pid20))) )
           <= ( host(Pid20) != host(Z)
              & host(Z) = host(Pid30)
              & host(Pid20) = host(Pid0)
              & setIn(Pid20,alive)
              & setIn(Z,alive) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( ! [V0] :
                  ( ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) )
                 => ( setIn(V0,index(down,host(Pid0)))
                    | V0 = host(Pid20) ) )
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & nbr_proc = host(Pid0)
              & host(Pid30) = host(Pid0)
              & elec_1 = index(status,host(Pid0)) )
           => ~ ( elem(m_Down(Pid30),queue(host(Z)))
                & setIn(Z,alive) ) )
        & cons(m_Ack(W,Y),V) = queue(host(X))
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( elem(m_Down(Pid30),queue(host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) )
           <= ( host(Z) = host(Pid30)
              & host(Pid0) = host(Pid20)
              & setIn(Pid20,alive)
              & setIn(Z,alive)
              & host(Pid20) != host(Z) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( host(Pid0) = host(Z)
              & host(Pid20) = index(ldr,host(Pid0))
              & norm = index(status,host(Pid0))
              & setIn(Pid0,alive)
              & host(Pid0) != host(Pid20) )
           => ~ elem(m_Down(Z),queue(host(Pid20))) )
        & ! [Z,Pid0] :
            ( ( Pid0 != Z
              & host(Pid0) = host(Z) )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) ) )
     => ( setIn(X,alive)
       => ( ! [Z] :
              ( host(X) != host(Z)
             => ! [W0,X0,Y0] :
                  ( ( ~ ( elem(m_Down(W0),queue(host(Z)))
                        & setIn(Z,alive) )
                   <= ( ! [V0] :
                          ( ( setIn(V0,index(down,host(Y0)))
                            | V0 = host(X0) )
                         <= ( leq(s(zero),V0)
                            & ~ leq(host(Y0),V0) ) )
                      & host(W0) = host(Y0)
                      & elec_1 = index(status,host(Y0))
                      & nbr_proc = host(Y0)
                      & elem(m_Down(X0),V) ) )
                 <= host(X) = host(Y0) ) )
         <= ~ ( host(Y) = index(pendack,host(X))
              & elec_2 = index(status,host(X))
              & W = index(elid,host(X)) ) ) ) ) ).

