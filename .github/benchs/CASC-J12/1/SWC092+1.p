include('Axioms/SWC001+0.ax').
fof(co1,conjecture,
    ! [U] :
      ( ! [V] :
          ( ssList(V)
         => ! [W] :
              ( ! [X] :
                  ( ( V != X
                    | ~ neq(V,nil)
                    | ( W = nil
                      & nil != X )
                    | ! [Z] :
                        ( ssList(Z)
                       => ( app(W,Z) != X
                          | ? [X1] :
                              ( ? [X2] :
                                  ( ssList(X2)
                                  & ? [X3] :
                                      ( ssItem(X3)
                                      & ? [X4] :
                                          ( W = app(X4,cons(X3,nil))
                                          & lt(X3,X1)
                                          & ssList(X4) ) )
                                  & app(cons(X1,nil),X2) = Z )
                              & ssItem(X1) )
                          | ~ strictorderedP(W) ) )
                    | ? [Y] :
                        ( ssList(Y)
                        & neq(Y,nil)
                        & segmentP(V,Y)
                        & segmentP(U,Y) )
                    | U != W )
                 <= ssList(X) )
             <= ssList(W) ) )
     <= ssList(U) ) ).

