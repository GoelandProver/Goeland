include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X] :
      ( ( setIn(X,alive)
       => ( ! [Y,Z,X0,Y0] :
              ( ( host(X) = host(Y0)
               => ( ( elem(m_Down(X0),snoc(V,m_NotNorm(W)))
                    & elem(m_Ack(Y0,Z),snoc(V,m_NotNorm(W)))
                    & leq(nbr_proc,s(index(pendack,host(Y0))))
                    & s(index(pendack,host(Y0))) = host(X0)
                    & host(Z) = index(pendack,host(Y0))
                    & elec_2 = index(status,host(Y0))
                    & setIn(Y0,alive) )
                 => ~ ( index(status,host(Y)) = norm
                      & index(ldr,host(Y)) = host(Y)
                      & setIn(Y,alive) ) ) )
             <= host(W) = host(Y0) )
         <= norm != index(status,host(X)) ) )
     <= ( ! [Y,Z] :
            ( elem(m_Ldr(Z),queue(host(Y)))
           => ~ leq(host(Y),host(Z)) )
        & ! [Y,Z] :
            ( ( setIn(Z,alive)
              & elem(m_Ack(Z,Y),queue(host(Z))) )
           => leq(host(Y),index(pendack,host(Z))) )
        & ! [Y,Z] :
            ( ( elec_1 = index(status,host(Z))
              & setIn(Z,alive) )
           => ~ elem(m_Ack(Z,Y),queue(host(Z))) )
        & ! [Y] :
            ( index(elid,host(Y)) = Y
           <= ( setIn(Y,alive)
              & ( elec_1 = index(status,host(Y))
                | index(status,host(Y)) = elec_2 ) ) )
        & ! [Y,Z] :
            ( ( elec_2 = index(status,host(Y))
              & index(status,host(Z)) = elec_2
              & setIn(Z,alive)
              & setIn(Y,alive)
              & ~ leq(host(Y),host(Z)) )
           => leq(index(pendack,host(Z)),host(Y)) )
        & ! [Y,Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Down(Z),queue(host(Pid0)))
              & host(Z) = host(Y) )
           => ~ ( index(status,host(Y)) = norm
                & index(ldr,host(Y)) = host(Y)
                & setIn(Y,alive) ) )
        & ! [Y,Z,Pid0] :
            ( ~ elem(m_Ack(Y,Z),queue(host(Y)))
           <= ( setIn(Pid0,alive)
              & host(Z) = host(Pid0)
              & index(status,host(Pid0)) = elec_2
              & index(status,host(Y)) = elec_2
              & setIn(Y,alive) ) )
        & ! [Y,Z,Pid20,Pid0] :
            ( ( ! [V0] :
                  ( ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) )
                 => ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) ) )
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Z) = host(Pid0)
              & index(status,host(Pid0)) = elec_1
              & host(Pid0) = nbr_proc )
           => ~ ( elem(m_Down(Z),queue(host(Y)))
                & setIn(Y,alive) ) )
        & cons(m_NormQ(W),V) = queue(host(X))
        & ! [Y,Z,Pid20,Pid0] :
            ( ( elem(m_Ack(Pid0,Z),queue(host(Pid0)))
              & host(Z) = index(pendack,host(Pid0))
              & host(Pid20) = s(index(pendack,host(Pid0)))
              & elec_2 = index(status,host(Pid0))
              & leq(nbr_proc,s(index(pendack,host(Pid0))))
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & setIn(Pid0,alive) )
           => ~ ( setIn(Y,alive)
                & host(Y) = index(ldr,host(Y))
                & norm = index(status,host(Y)) ) )
        & ! [Y,Z,Pid0] :
            ( ( ~ leq(index(pendack,host(Pid0)),host(Y))
              & elem(m_Halt(Pid0),queue(host(Z)))
              & index(status,host(Pid0)) = elec_2
              & setIn(Pid0,alive) )
           => ~ ( setIn(Y,alive)
                & index(status,host(Y)) = norm
                & host(Y) = index(ldr,host(Y)) ) )
        & ! [Y,Z] :
            ( ~ leq(index(pendack,host(Y)),index(pendack,host(Z)))
           <= ( elec_2 = index(status,host(Y))
              & elec_2 = index(status,host(Z))
              & setIn(Z,alive)
              & setIn(Y,alive)
              & ~ leq(host(Y),host(Z)) ) )
        & ! [Y,Z] :
            ( ( Z != Y
              & host(Y) = host(Z) )
           => ( ~ setIn(Z,alive)
              | ~ setIn(Y,alive) ) )
        & ! [Y,Z,Pid0] :
            ( ~ leq(host(Y),host(Pid0))
           <= elem(m_Ack(Pid0,Y),queue(host(Z))) )
        & ! [Y,Z] :
            ( elem(m_Halt(Z),queue(host(Y)))
           => ~ leq(host(Y),host(Z)) )
        & ! [Y,Z] :
            ( host(Z) != host(Y)
           <= elem(m_Down(Z),queue(host(Y))) ) ) ) ).

