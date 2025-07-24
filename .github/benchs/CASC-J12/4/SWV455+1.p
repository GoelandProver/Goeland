include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( setIn(X,alive)
       => ( ( ~ ( ( host(Y) = host(index(elid,host(X)))
                  & index(status,host(X)) = wait )
                | ( index(status,host(X)) = norm
                  & index(ldr,host(X)) = host(Y) ) )
           => ( ! [Z] :
                  ( host(X) != host(Z)
                 => ! [W0,X0] :
                      ( host(X0) = host(X)
                     => ! [Y0] :
                          ( ( host(Z) != host(X0)
                            & host(X0) = host(Y0)
                            & host(Z) = host(W0)
                            & setIn(X0,alive)
                            & setIn(Z,alive) )
                         => ~ ( elem(m_Down(W0),V)
                              & elem(m_Down(Y0),queue(host(Z))) ) ) ) )
             <= ~ ( ! [Z] :
                      ( ( host(Y) = Z
                        | setIn(Z,index(down,host(X))) )
                     <= ( ~ leq(host(X),Z)
                        & leq(s(zero),Z) ) )
                  & elec_1 = index(status,host(X)) ) ) )
         <= ~ leq(host(X),host(Y)) ) )
     <= ( ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => ~ setIn(Pid0,alive) )
        & ! [Z,Pid0] :
            ( elem(m_Halt(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( ( host(Pid0) = host(Z)
              & leq(Pid0,Z)
              & ~ setIn(Z,alive) )
           => ~ setIn(Pid0,alive) )
        & cons(m_Down(Y),V) = queue(host(X))
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( elem(m_Down(Pid30),queue(host(Pid20)))
                & elem(m_Down(Pid0),queue(host(Z))) )
           <= ( setIn(Z,alive)
              & setIn(Pid20,alive)
              & host(Pid20) = host(Pid0)
              & host(Z) = host(Pid30)
              & host(Z) != host(Pid20) ) )
        & ! [Z,Pid0] :
            ( ( ~ setIn(Z,alive)
              | ~ setIn(Pid0,alive) )
           <= ( Pid0 != Z
              & host(Pid0) = host(Z) ) )
        & ! [Z,Pid20,Pid0] :
            ( elem(m_Ack(Pid0,Z),queue(host(Pid20)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( elem(m_Down(Pid0),queue(host(Z)))
           => host(Z) != host(Pid0) )
        & ! [Z,Pid0] :
            ( ~ elem(m_Down(Pid0),queue(host(Z)))
           <= setIn(Pid0,alive) ) ) ) ).

