include('Axioms/SWC001+0.ax').
fof(co1,conjecture,
    ! [U] :
      ( ! [V] :
          ( ! [W] :
              ( ! [X] :
                  ( ( W != U
                    | ( ( nil != X
                        | nil != W )
                      & ! [Y] :
                          ( ssItem(Y)
                         => ( W != cons(Y,nil)
                            | ~ memberP(X,Y)
                            | ? [Z] :
                                ( Z != Y
                                & leq(Z,Y)
                                & memberP(X,Z)
                                & ssItem(Z) ) ) ) )
                    | totalorderedP(U)
                    | V != X )
                 <= ssList(X) )
             <= ssList(W) )
         <= ssList(V) )
     <= ssList(U) ) ).

