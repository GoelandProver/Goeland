include('Axioms/SWC001+0.ax').
fof(co1,conjecture,
    ! [U] :
      ( ssList(U)
     => ! [V] :
          ( ! [W] :
              ( ! [X] :
                  ( ssList(X)
                 => ( V != X
                    | ( W = nil
                      & X != nil )
                    | ( neq(U,nil)
                      & frontsegP(V,U) )
                    | ( V = nil
                      & nil = U )
                    | ! [Y] :
                        ( ( X != app(W,Y)
                          | ? [Z] :
                              ( ? [X1] :
                                  ( app(cons(Z,nil),X1) = Y
                                  & ? [X2] :
                                      ( ssList(X2)
                                      & W = app(X2,cons(Z,nil)) )
                                  & ssList(X1) )
                              & ssItem(Z) )
                          | ~ equalelemsP(W) )
                       <= ssList(Y) )
                    | U != W ) )
             <= ssList(W) )
         <= ssList(V) ) ) ).

