fof(n1,axiom,
    ( ( pv64 != pv63
      & leq(n0,pv5)
      & leq(n0,pv63)
      & leq(n0,pv64)
      & leq(pv5,n998)
      & leq(pv63,n5)
      & leq(pv64,n5)
      & ! [X1,X2] :
          ( ( leq(n0,X1)
            & leq(n0,X2)
            & leq(X1,n2)
            & leq(X2,n5) )
         => a_select3(h_ds1_filter_init,X1,X2) = init )
      & ! [X7,X8] :
          ( ( leq(n0,X7)
            & leq(n0,X8)
            & leq(X7,n5)
            & leq(X8,n5) )
         => init = a_select3(q_ds1_filter_init,X7,X8) )
      & ! [X9,X10] :
          ( init = a_select3(r_ds1_filter_init,X9,X10)
         <= ( leq(n0,X10)
            & leq(X9,n2)
            & leq(X10,n2)
            & leq(n0,X9) ) )
      & ! [X19] :
          ( ( leq(X19,pred(pv63))
            & leq(n0,X19) )
         => ! [X20] :
              ( init = a_select3(id_ds1_filter_init,X19,X20)
             <= ( leq(X20,n5)
                & leq(n0,X20) ) ) )
      & ! [X17,X18] :
          ( ( a_select3(id_ds1_filter_init,X17,X18) = init
           <= gt(pv63,X17) )
         <= ( leq(X17,n5)
            & leq(X18,n5)
            & leq(n0,X18)
            & leq(n0,X17) ) )
      & ! [X15,X16] :
          ( ( ( gt(pv64,X16)
              & X15 = pv63 )
           => init = a_select3(id_ds1_filter_init,X15,X16) )
         <= ( leq(n0,X15)
            & leq(n0,X16)
            & leq(X15,n5)
            & leq(X16,n5) ) )
      & ! [X13,X14] :
          ( ( leq(n0,X13)
            & leq(X14,n5)
            & leq(X13,n5)
            & leq(n0,X14) )
         => init = a_select3(pminus_ds1_filter_init,X13,X14) )
      & ! [X11,X12] :
          ( ( leq(n0,X12)
            & leq(X12,n0)
            & leq(X11,n5)
            & leq(n0,X11) )
         => init = a_select3(xhatmin_ds1_filter_init,X11,X12) )
      & ! [X5,X6] :
          ( init = a_select3(dv_ds1_filter_init,X5,X6)
         <= ( leq(n0,X5)
            & leq(n0,X6)
            & leq(X5,n5)
            & leq(X6,n0) ) )
      & ! [X3,X4] :
          ( init = a_select3(phi_ds1_filter_init,X3,X4)
         <= ( leq(n0,X4)
            & leq(X4,n5)
            & leq(X3,n5)
            & leq(n0,X3) ) ) )
   => ! [X21,X22] :
        ( ( init = a_select3(id_ds1_filter_init,X21,X22)
         <= ( X22 != pv64
            & pv63 = X21
            & leq(X22,pv64) ) )
       <= ( leq(n0,X21)
          & leq(X22,n5)
          & leq(X21,n5)
          & leq(n0,X22) ) ) ) ).

fof(n91,conjecture,
    ~ ~ ( ( pv64 != pv63
          & leq(pv63,n5)
          & ! [X3,X4] :
              ( ( leq(X4,n5)
                & leq(X3,n5)
                & leq(n0,X4)
                & leq(n0,X3) )
             => init = a_select3(phi_ds1_filter_init,X3,X4) )
          & ! [X11,X12] :
              ( ( leq(n0,X12)
                & leq(X11,n5)
                & leq(X12,n0)
                & leq(n0,X11) )
             => init = a_select3(xhatmin_ds1_filter_init,X11,X12) )
          & ! [X13,X14] :
              ( a_select3(pminus_ds1_filter_init,X13,X14) = init
             <= ( leq(n0,X13)
                & leq(n0,X14)
                & leq(X13,n5)
                & leq(X14,n5) ) )
          & ! [X15,X16] :
              ( ( leq(n0,X15)
                & leq(X16,n5)
                & leq(X15,n5)
                & leq(n0,X16) )
             => ( ( pv63 = X15
                  & gt(pv64,X16) )
               => init = a_select3(id_ds1_filter_init,X15,X16) ) )
          & ! [X17,X18] :
              ( ( a_select3(id_ds1_filter_init,X17,X18) = init
               <= gt(pv63,X17) )
             <= ( leq(X18,n5)
                & leq(X17,n5)
                & leq(n0,X18)
                & leq(n0,X17) ) )
          & ! [X19] :
              ( ! [X20] :
                  ( ( leq(X20,n5)
                    & leq(n0,X20) )
                 => a_select3(id_ds1_filter_init,X19,X20) = init )
             <= ( leq(n0,X19)
                & leq(X19,pred(pv63)) ) )
          & ! [X9,X10] :
              ( ( leq(n0,X9)
                & leq(n0,X10)
                & leq(X10,n2)
                & leq(X9,n2) )
             => a_select3(r_ds1_filter_init,X9,X10) = init )
          & ! [X7,X8] :
              ( init = a_select3(q_ds1_filter_init,X7,X8)
             <= ( leq(n0,X8)
                & leq(X8,n5)
                & leq(X7,n5)
                & leq(n0,X7) ) )
          & ! [X5,X6] :
              ( init = a_select3(dv_ds1_filter_init,X5,X6)
             <= ( leq(n0,X5)
                & leq(X6,n0)
                & leq(X5,n5)
                & leq(n0,X6) ) )
          & ! [X1,X2] :
              ( init = a_select3(h_ds1_filter_init,X1,X2)
             <= ( leq(n0,X2)
                & leq(X1,n2)
                & leq(X2,n5)
                & leq(n0,X1) ) )
          & leq(pv64,n5)
          & leq(pv5,n998)
          & leq(n0,pv64)
          & leq(n0,pv63)
          & leq(n0,pv5) )
       => ! [X21,X22] :
            ( ( leq(n0,X21)
              & leq(n0,X22)
              & leq(X22,n5)
              & leq(X21,n5) )
           => ( a_select3(id_ds1_filter_init,X21,X22) = init
             <= ( leq(X22,pv64)
                & X21 = pv63
                & X22 != pv64 ) ) ) ) ).

