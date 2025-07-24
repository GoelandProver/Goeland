include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( setIn(X,alive)
       => ( ~ leq(host(X),host(Y))
         => ( ~ ( ( host(Y) = host(index(elid,host(X)))
                  & index(status,host(X)) = wait )
                | ( index(ldr,host(X)) = host(Y)
                  & norm = index(status,host(X)) ) )
           => ( ~ ( ! [Z] :
                      ( ( ~ leq(host(X),Z)
                        & leq(s(zero),Z) )
                     => ( setIn(Z,index(down,host(X)))
                        | host(Y) = Z ) )
                  & index(status,host(X)) = elec_1 )
             => ! [Z] :
                  ( host(X) != host(Z)
                 => ! [W0,X0,Y0] :
                      ( host(Y0) = host(X)
                     => ( ~ ( setIn(Z,alive)
                            & elem(m_Down(W0),queue(host(Z))) )
                       <= ( elec_1 = index(status,host(Y0))
                          & host(Y0) = nbr_proc
                          & host(W0) = host(Y0)
                          & elem(m_Down(X0),V)
                          & ! [V0] :
                              ( ( setIn(V0,index(down,host(X)))
                                | host(Y) = V0
                                | V0 = host(X0) )
                             <= ( ~ leq(host(Y0),V0)
                                & leq(s(zero),V0) ) ) ) ) ) ) ) ) ) )
     <= ( ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( ~ elem(m_NotNorm(Z),queue(host(Pid0)))
           <= nbr_proc = host(Pid0) )
        & ! [Z,Pid0] :
            ( ( host(Z) = host(Pid0)
              & Z != Pid0 )
           => ( ~ setIn(Pid0,alive)
              | ~ setIn(Z,alive) ) )
        & ! [Z] :
            ( ( setIn(Z,alive)
              & ( elec_1 = index(status,host(Z))
                | elec_2 = index(status,host(Z)) ) )
           => index(elid,host(Z)) = Z )
        & ! [Z,Pid20,Pid0] :
            ( ( host(Pid0) != host(Pid20)
              & host(Pid0) = host(Z)
              & wait = index(status,host(Pid0))
              & host(Pid20) = host(index(elid,host(Pid0)))
              & setIn(Pid0,alive) )
           => ~ elem(m_Down(Z),queue(host(Pid20))) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( elem(m_Down(Pid0),queue(host(Z)))
                & elem(m_Down(Pid30),queue(host(Pid20))) )
           <= ( setIn(Z,alive)
              & host(Pid20) = host(Pid0)
              & host(Pid30) = host(Z)
              & setIn(Pid20,alive)
              & host(Pid20) != host(Z) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( elem(m_Down(Pid0),queue(host(Z)))
                & setIn(host(Pid30),index(down,host(Pid20))) )
           <= ( setIn(Z,alive)
              & setIn(Pid20,alive)
              & host(Pid20) = host(Pid0)
              & host(Pid30) = host(Z)
              & host(Z) != host(Pid20) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & elem(m_Down(Pid30),queue(host(Z))) )
           <= ( ! [V0] :
                  ( ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) )
                 <= ( ~ leq(host(Pid0),V0)
                    & leq(s(zero),V0) ) )
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & host(Pid0) = nbr_proc
              & index(status,host(Pid0)) = elec_1
              & host(Pid30) = host(Pid0) ) )
        & cons(m_Down(Y),V) = queue(host(X))
        & ! [Z,Pid20,Pid0] :
            ( ~ elem(m_Down(Z),queue(host(Pid20)))
           <= ( host(Pid0) != host(Pid20)
              & setIn(Pid0,alive)
              & norm = index(status,host(Pid0))
              & index(ldr,host(Pid0)) = host(Pid20)
              & host(Z) = host(Pid0) ) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => host(Pid0) != host(Z) ) ) ) ).

