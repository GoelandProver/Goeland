include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( setIn(X,alive)
       => ( ( ! [Z,W0,X0,Y0] :
                ( host(Y0) = s(index(pendack,host(X)))
               => ( host(Y0) != host(X)
                 => ( ( setIn(Y0,alive)
                      & leq(nbr_proc,s(index(pendack,host(Y0))))
                      & index(pendack,host(Y0)) = host(W0)
                      & s(index(pendack,host(Y0))) = host(X0)
                      & index(status,host(Y0)) = elec_2
                      & elem(m_Ack(Y0,W0),snoc(queue(host(Y0)),m_Halt(X)))
                      & elem(m_Down(X0),snoc(queue(host(Y0)),m_Halt(X))) )
                   => ~ ( setIn(Z,alive)
                        & norm = index(status,host(Z))
                        & host(Z) = index(ldr,host(Z)) ) ) ) )
           <= ~ leq(nbr_proc,index(pendack,host(X))) )
         <= ( index(status,host(X)) = elec_2
            & index(pendack,host(X)) = host(Y)
            & W = index(elid,host(X)) ) ) )
     <= ( ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Halt(Pid0),queue(host(Z))) )
        & ! [Z,Pid20,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Ack(Pid0,Z),queue(host(Pid20))) )
        & ! [Z,Pid0] :
            ( ( elem(m_Ack(Pid0,Z),queue(host(Pid0)))
              & setIn(Pid0,alive) )
           => leq(host(Z),index(pendack,host(Pid0))) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( norm = index(status,host(Z))
                & index(ldr,host(Z)) = host(Z)
                & setIn(Z,alive) )
           <= ( setIn(Pid0,alive)
              & host(Z) = host(Pid20)
              & elem(m_Down(Pid20),queue(host(Pid0))) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & host(Z) = index(ldr,host(Z))
                & index(status,host(Z)) = norm )
           <= ( elem(m_Halt(Pid0),queue(host(Pid20)))
              & elec_2 = index(status,host(Pid0))
              & setIn(Pid0,alive)
              & ~ leq(index(pendack,host(Pid0)),host(Z)) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( index(ldr,host(Z)) = host(Z)
                & index(status,host(Z)) = norm
                & setIn(Z,alive) )
           <= ( elec_2 = index(status,host(Pid0))
              & s(index(pendack,host(Pid0))) = host(Pid20)
              & host(Pid30) = index(pendack,host(Pid0))
              & leq(nbr_proc,s(index(pendack,host(Pid0))))
              & elem(m_Ack(Pid0,Pid30),queue(host(Pid0)))
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & setIn(Pid0,alive) ) )
        & cons(m_Ack(W,Y),V) = queue(host(X))
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ( elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Pid30) = host(Pid0)
              & index(status,host(Pid0)) = elec_1
              & host(Pid0) = nbr_proc
              & ! [V0] :
                  ( ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) )
                 <= ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) ) ) )
           => ~ ( elem(m_Down(Pid30),queue(host(Z)))
                & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Z,alive)
              & setIn(Pid0,alive)
              & index(status,host(Z)) = elec_2
              & index(status,host(Pid0)) = elec_2
              & ~ leq(host(Z),host(Pid0)) )
           => ~ leq(index(pendack,host(Z)),index(pendack,host(Pid0))) )
        & ! [Z,Pid20,Pid0] :
            ( ~ elem(m_Ack(Z,Pid20),queue(host(Z)))
           <= ( setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & index(status,host(Z)) = elec_2
              & host(Pid20) = host(Pid0)
              & setIn(Z,alive) ) )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( ~ leq(host(Z),host(Pid0))
              & setIn(Z,alive)
              & setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & index(status,host(Z)) = elec_2 ) )
        & ! [Z] :
            ( Z = index(elid,host(Z))
           <= ( setIn(Z,alive)
              & ( elec_1 = index(status,host(Z))
                | index(status,host(Z)) = elec_2 ) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & elec_1 = index(status,host(Pid0)) )
           => ~ elem(m_Ack(Pid0,Z),queue(host(Pid0))) )
        & ! [Z,Pid0] :
            ( ( ~ setIn(Z,alive)
              | ~ setIn(Pid0,alive) )
           <= ( host(Z) = host(Pid0)
              & Z != Pid0 ) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => host(Z) != host(Pid0) )
        & ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) ) ) ) ).

