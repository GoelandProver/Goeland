include('Axioms/SWV003+0.ax').
fof(gt_4_1,axiom,
    gt(n4,n1) ).

fof(finite_domain_0,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n0) )
     => n0 = X ) ).

fof(gt_410_2,axiom,
    gt(n410,n2) ).

fof(gt_2_0,axiom,
    gt(n2,n0) ).

fof(finite_domain_5,axiom,
    ! [X] :
      ( ( X = n0
        | n1 = X
        | n4 = X
        | X = n5
        | n3 = X
        | X = n2 )
     <= ( leq(n0,X)
        & leq(X,n5) ) ) ).

fof(finite_domain_3,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n3) )
     => ( n1 = X
        | X = n2
        | n3 = X
        | X = n0 ) ) ).

fof(gt_410_0,axiom,
    gt(n410,n0) ).

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(gt_410_1,axiom,
    gt(n410,n1) ).

fof(successor_5,axiom,
    n5 = succ(succ(succ(succ(succ(n0))))) ).

fof(gt_410_3,axiom,
    gt(n410,n3) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_410_5,axiom,
    gt(n410,n5) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

fof(gt_410_tptp_minus_1,axiom,
    gt(n410,tptp_minus_1) ).

fof(gauss_init_0025,conjecture,
    ( ( init = init
      & s_sworst7_init = init
      & s_worst7_init = init
      & leq(s_sworst7,n3)
      & ( ( init = pvar1401_init
          & pvar1402_init = init
          & pvar1400_init = init )
       <= gt(loopcounter,n1) )
      & ! [J] :
          ( init = a_select2(s_try7_init,J)
         <= ( leq(J,minus(n3,n1))
            & leq(n0,J) ) )
      & ! [I] :
          ( init = a_select2(s_center7_init,I)
         <= ( leq(n0,I)
            & leq(I,n2) ) )
      & ! [H] :
          ( init = a_select2(s_values7_init,H)
         <= ( leq(H,n3)
            & leq(n0,H) ) )
      & ! [F] :
          ( ( leq(n0,F)
            & leq(F,n2) )
         => ! [G] :
              ( a_select3(simplex7_init,G,F) = init
             <= ( leq(G,n3)
                & leq(n0,G) ) ) )
      & leq(pv1376,n3)
      & leq(s_worst7,n3)
      & leq(s_best7,n3)
      & leq(n0,pv1376)
      & leq(n0,s_worst7)
      & leq(n0,s_sworst7)
      & leq(n0,s_best7)
      & s_best7_init = init )
   <= ( init = s_sworst7_init
      & init = s_worst7_init
      & leq(n0,s_best7)
      & leq(n0,pv1376)
      & ! [A] :
          ( ! [B] :
              ( init = a_select3(simplex7_init,B,A)
             <= ( leq(B,n3)
                & leq(n0,B) ) )
         <= ( leq(A,n2)
            & leq(n0,A) ) )
      & ! [D] :
          ( init = a_select2(s_center7_init,D)
         <= ( leq(D,n2)
            & leq(n0,D) ) )
      & ! [E] :
          ( ( leq(E,minus(n3,n1))
            & leq(n0,E) )
         => a_select2(s_try7_init,E) = init )
      & ( gt(loopcounter,n1)
       => ( init = pvar1401_init
          & init = pvar1402_init
          & init = pvar1400_init ) )
      & ! [C] :
          ( a_select2(s_values7_init,C) = init
         <= ( leq(C,n3)
            & leq(n0,C) ) )
      & leq(pv1376,n3)
      & leq(pv19,minus(n410,n1))
      & leq(s_worst7,n3)
      & leq(s_sworst7,n3)
      & leq(s_best7,n3)
      & leq(n0,pv19)
      & leq(n0,s_worst7)
      & leq(n0,s_sworst7)
      & s_best7_init = init
      & init = init ) ) ).

fof(gt_1_tptp_minus_1,axiom,
    gt(n1,tptp_minus_1) ).

fof(gt_3_0,axiom,
    gt(n3,n0) ).

fof(gt_5_1,axiom,
    gt(n5,n1) ).

fof(successor_2,axiom,
    succ(succ(n0)) = n2 ).

fof(gt_5_0,axiom,
    gt(n5,n0) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(gt_2_tptp_minus_1,axiom,
    gt(n2,tptp_minus_1) ).

fof(successor_4,axiom,
    n4 = succ(succ(succ(succ(n0)))) ).

fof(gt_4_0,axiom,
    gt(n4,n0) ).

fof(gt_0_tptp_minus_1,axiom,
    gt(n0,tptp_minus_1) ).

fof(successor_3,axiom,
    n3 = succ(succ(succ(n0))) ).

fof(finite_domain_4,axiom,
    ! [X] :
      ( ( X = n0
        | n2 = X
        | n3 = X
        | n4 = X
        | X = n1 )
     <= ( leq(n0,X)
        & leq(X,n4) ) ) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(finite_domain_1,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n1) )
     => ( n1 = X
        | n0 = X ) ) ).

fof(gt_1_0,axiom,
    gt(n1,n0) ).

fof(gt_410_4,axiom,
    gt(n410,n4) ).

fof(gt_3_tptp_minus_1,axiom,
    gt(n3,tptp_minus_1) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(successor_1,axiom,
    succ(n0) = n1 ).

fof(finite_domain_2,axiom,
    ! [X] :
      ( ( n2 = X
        | n1 = X
        | n0 = X )
     <= ( leq(n0,X)
        & leq(X,n2) ) ) ).

