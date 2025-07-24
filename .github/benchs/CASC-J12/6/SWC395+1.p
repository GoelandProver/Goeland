include('Axioms/SWC001+0.ax').
fof(co1,conjecture,
    ! [U] :
      ( ! [V] :
          ( ! [W] :
              ( ! [X] :
                  ( ~ ssList(X)
                  | X != V
                  | ( nil = X
                    & W != nil )
                  | ( ? [Z] :
                        ( ssList(Z)
                        & Z != W
                        & ? [X1] :
                            ( ? [X2] :
                                ( ssList(X2)
                                & tl(X) = X1
                                & app(X1,X2) = Z
                                & neq(nil,X)
                                & ? [X3] :
                                    ( neq(nil,X)
                                    & hd(X) = X3
                                    & X2 = cons(X3,nil)
                                    & ssItem(X3) ) )
                            & ssList(X1) ) )
                    & neq(X,nil) )
                  | ! [Y] :
                      ( ~ ssItem(Y)
                      | ~ memberP(U,Y)
                      | memberP(V,Y) )
                  | U != W )
             <= ssList(W) )
         <= ssList(V) )
     <= ssList(U) ) ).

