include('Axioms/SWV003+0.ax').
fof(gt_5_0,axiom,
    gt(n5,n0) ).

fof(gt_4_0,axiom,
    gt(n4,n0) ).

fof(gt_0_tptp_minus_1,axiom,
    gt(n0,tptp_minus_1) ).

fof(finite_domain_4,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n4) )
     => ( n2 = X
        | n3 = X
        | X = n4
        | X = n1
        | n0 = X ) ) ).

fof(successor_1,axiom,
    succ(n0) = n1 ).

fof(cl5_nebula_norm_0022,conjecture,
    ( ( sum(n0,minus(n0,n1),divide(abs(minus(a_select2(sigma,pv91),a_select2(sigmaold,pv91))),plus(abs(a_select2(sigma,pv91)),abs(a_select2(sigmaold,pv91))))) = n0
      & pv86 = sum(n0,minus(n5,n1),divide(abs(minus(a_select2(mu,pv87),a_select2(muold,pv87))),plus(abs(a_select2(mu,pv87)),abs(a_select2(muold,pv87)))))
      & sum(n0,minus(n5,n1),divide(abs(minus(a_select2(rho,pv89),a_select2(rhoold,pv89))),plus(abs(a_select2(rho,pv89)),abs(a_select2(rhoold,pv89))))) = pv88 )
   <= ( sum(n0,minus(n5,n1),divide(abs(minus(a_select2(mu,pv87),a_select2(muold,pv87))),plus(abs(a_select2(mu,pv87)),abs(a_select2(muold,pv87))))) = pv86
      & pv88 = sum(n0,minus(n5,n1),divide(abs(minus(a_select2(rho,pv89),a_select2(rhoold,pv89))),plus(abs(a_select2(rho,pv89)),abs(a_select2(rhoold,pv89))))) ) ) ).

fof(gt_2_tptp_minus_1,axiom,
    gt(n2,tptp_minus_1) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

fof(gt_4_1,axiom,
    gt(n4,n1) ).

fof(gt_1_0,axiom,
    gt(n1,n0) ).

fof(successor_4,axiom,
    n4 = succ(succ(succ(succ(n0)))) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(finite_domain_2,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n2) )
     => ( n2 = X
        | X = n1
        | n0 = X ) ) ).

fof(successor_5,axiom,
    n5 = succ(succ(succ(succ(succ(n0))))) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(finite_domain_3,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n3) )
     => ( X = n0
        | X = n3
        | n2 = X
        | X = n1 ) ) ).

fof(gt_3_tptp_minus_1,axiom,
    gt(n3,tptp_minus_1) ).

fof(successor_2,axiom,
    succ(succ(n0)) = n2 ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_2_0,axiom,
    gt(n2,n0) ).

fof(successor_3,axiom,
    n3 = succ(succ(succ(n0))) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(finite_domain_1,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n1) )
     => ( X = n0
        | X = n1 ) ) ).

fof(finite_domain_5,axiom,
    ! [X] :
      ( ( leq(X,n5)
        & leq(n0,X) )
     => ( X = n3
        | n4 = X
        | n5 = X
        | n2 = X
        | n1 = X
        | X = n0 ) ) ).

fof(gt_1_tptp_minus_1,axiom,
    gt(n1,tptp_minus_1) ).

fof(gt_5_1,axiom,
    gt(n5,n1) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(finite_domain_0,axiom,
    ! [X] :
      ( X = n0
     <= ( leq(X,n0)
        & leq(n0,X) ) ) ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(gt_3_0,axiom,
    gt(n3,n0) ).

