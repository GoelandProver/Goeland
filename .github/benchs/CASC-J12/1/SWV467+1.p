include('Axioms/SWV011+0.ax').
fof(conj,conjecture,
    ! [V,W,X,Y] :
      ( ( setIn(X,alive)
       => ( ~ leq(host(X),host(Y))
         => ( ( ( elec_1 = index(status,host(X))
                & ! [Z] :
                    ( ( leq(s(zero),Z)
                      & ~ leq(host(X),Z) )
                   => ( Z = host(Y)
                      | setIn(Z,index(down,host(X))) ) ) )
             => ( ! [Z] :
                    ( ! [V0] :
                        ( ! [W0,X0,Y0] :
                            ( ( ( setIn(Y0,alive)
                                & elem(m_Down(X0),queue(host(Y0)))
                                & elem(m_Ack(Y0,W0),queue(host(Y0)))
                                & index(pendack,host(Y0)) = host(W0)
                                & s(index(pendack,host(Y0))) = host(X0)
                                & elec_2 = index(status,host(Y0))
                                & leq(nbr_proc,s(index(pendack,host(Y0)))) )
                             => ~ ( host(V0) = host(X)
                                  & setIn(V0,alive) ) )
                           <= host(Y0) != host(X) )
                       <= host(V0) = host(X) )
                   <= ~ setIn(host(Z),setEmpty) )
               <= leq(nbr_proc,host(X)) ) )
           <= ~ ( ( host(Y) = host(index(elid,host(X)))
                  & index(status,host(X)) = wait )
                | ( index(status,host(X)) = norm
                  & host(Y) = index(ldr,host(X)) ) ) ) ) )
     <= ( ! [Z,Pid0] :
            ( elem(m_Ldr(Pid0),queue(host(Z)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid20,Pid0] :
            ( elem(m_Ack(Pid0,Z),queue(host(Pid20)))
           => ~ leq(host(Z),host(Pid0)) )
        & ! [Z,Pid0] :
            ( ( Pid0 != Z
              & host(Z) = host(Pid0) )
           => ( ~ setIn(Z,alive)
              | ~ setIn(Pid0,alive) ) )
        & ! [Z,Pid0] :
            ( ~ elem(m_Ack(Pid0,Z),queue(host(Pid0)))
           <= ( setIn(Pid0,alive)
              & elec_1 = index(status,host(Pid0)) ) )
        & ! [Z] :
            ( index(elid,host(Z)) = Z
           <= ( ( elec_1 = index(status,host(Z))
                | elec_2 = index(status,host(Z)) )
              & setIn(Z,alive) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & norm = index(status,host(Z))
                & host(Z) = index(ldr,host(Z)) )
           <= ( host(Pid20) = host(Z)
              & elem(m_Down(Pid20),queue(host(Pid0)))
              & setIn(Pid0,alive) ) )
        & ! [Z,Pid0] :
            ( leq(index(pendack,host(Pid0)),host(Z))
           <= ( index(status,host(Z)) = elec_2
              & index(status,host(Pid0)) = elec_2
              & setIn(Pid0,alive)
              & setIn(Z,alive)
              & ~ leq(host(Z),host(Pid0)) ) )
        & ! [Z,Pid20,Pid0] :
            ( ( setIn(Z,alive)
              & elec_2 = index(status,host(Pid0))
              & elec_2 = index(status,host(Z))
              & host(Pid20) = host(Pid0)
              & setIn(Pid0,alive) )
           => ~ elem(m_Ack(Z,Pid20),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( ~ leq(index(pendack,host(Z)),index(pendack,host(Pid0)))
           <= ( elec_2 = index(status,host(Pid0))
              & index(status,host(Z)) = elec_2
              & setIn(Pid0,alive)
              & setIn(Z,alive)
              & ~ leq(host(Z),host(Pid0)) ) )
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & elem(m_Down(Pid30),queue(host(Z))) )
           <= ( elem(m_Down(Pid20),queue(host(Pid0)))
              & elec_1 = index(status,host(Pid0))
              & host(Pid0) = host(Pid30)
              & host(Pid0) = nbr_proc
              & ! [V0] :
                  ( ( leq(s(zero),V0)
                    & ~ leq(host(Pid0),V0) )
                 => ( V0 = host(Pid20)
                    | setIn(V0,index(down,host(Pid0))) ) ) ) )
        & queue(host(X)) = cons(m_Down(Y),V)
        & ! [Z,Pid30,Pid20,Pid0] :
            ( ~ ( host(Z) = index(ldr,host(Z))
                & norm = index(status,host(Z))
                & setIn(Z,alive) )
           <= ( setIn(Pid0,alive)
              & leq(nbr_proc,s(index(pendack,host(Pid0))))
              & elec_2 = index(status,host(Pid0))
              & host(Pid30) = index(pendack,host(Pid0))
              & s(index(pendack,host(Pid0))) = host(Pid20)
              & elem(m_Ack(Pid0,Pid30),queue(host(Pid0)))
              & elem(m_Down(Pid20),queue(host(Pid0))) ) )
        & ! [Z,Pid20,Pid0] :
            ( ~ ( setIn(Z,alive)
                & index(ldr,host(Z)) = host(Z)
                & norm = index(status,host(Z)) )
           <= ( setIn(Pid0,alive)
              & index(status,host(Pid0)) = elec_2
              & elem(m_Halt(Pid0),queue(host(Pid20)))
              & ~ leq(index(pendack,host(Pid0)),host(Z)) ) )
        & ! [Z,Pid0] :
            ( ( setIn(Pid0,alive)
              & elem(m_Ack(Pid0,Z),queue(host(Pid0))) )
           => leq(host(Z),index(pendack,host(Pid0))) )
        & ! [Z,Pid0] :
            ( ~ leq(host(Z),host(Pid0))
           <= elem(m_Halt(Pid0),queue(host(Z))) )
        & ! [Z,Pid0] :
            ( host(Pid0) != host(Z)
           <= elem(m_Down(Pid0),queue(host(Z))) ) ) ) ).

