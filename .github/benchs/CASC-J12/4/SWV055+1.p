include('Axioms/SWV003+0.ax').
fof(gt_3_tptp_minus_1,axiom,
    gt(n3,tptp_minus_1) ).

fof(successor_5,axiom,
    succ(succ(succ(succ(succ(n0))))) = n5 ).

fof(gt_3_0,axiom,
    gt(n3,n0) ).

fof(successor_1,axiom,
    succ(n0) = n1 ).

fof(gt_135300_1,axiom,
    gt(n135300,n1) ).

fof(gt_135300_tptp_minus_1,axiom,
    gt(n135300,tptp_minus_1) ).

fof(gt_4_1,axiom,
    gt(n4,n1) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_135300_5,axiom,
    gt(n135300,n5) ).

fof(gt_5_0,axiom,
    gt(n5,n0) ).

fof(finite_domain_0,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n0) )
     => n0 = X ) ).

fof(gt_135300_0,axiom,
    gt(n135300,n0) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(gt_1_0,axiom,
    gt(n1,n0) ).

fof(successor_4,axiom,
    succ(succ(succ(succ(n0)))) = n4 ).

fof(successor_3,axiom,
    succ(succ(succ(n0))) = n3 ).

fof(finite_domain_3,axiom,
    ! [X] :
      ( ( n3 = X
        | n2 = X
        | X = n1
        | X = n0 )
     <= ( leq(X,n3)
        & leq(n0,X) ) ) ).

fof(gt_2_tptp_minus_1,axiom,
    gt(n2,tptp_minus_1) ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(gt_5_1,axiom,
    gt(n5,n1) ).

fof(gt_135300_3,axiom,
    gt(n135300,n3) ).

fof(gt_135300_2,axiom,
    gt(n135300,n2) ).

fof(gt_4_0,axiom,
    gt(n4,n0) ).

fof(successor_2,axiom,
    n2 = succ(succ(n0)) ).

fof(finite_domain_1,axiom,
    ! [X] :
      ( ( X = n1
        | X = n0 )
     <= ( leq(n0,X)
        & leq(X,n1) ) ) ).

fof(finite_domain_4,axiom,
    ! [X] :
      ( ( X = n4
        | X = n3
        | n2 = X
        | X = n1
        | n0 = X )
     <= ( leq(n0,X)
        & leq(X,n4) ) ) ).

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(gt_135300_4,axiom,
    gt(n135300,n4) ).

fof(gt_1_tptp_minus_1,axiom,
    gt(n1,tptp_minus_1) ).

fof(finite_domain_5,axiom,
    ! [X] :
      ( ( leq(X,n5)
        & leq(n0,X) )
     => ( X = n3
        | n4 = X
        | X = n5
        | n2 = X
        | X = n1
        | X = n0 ) ) ).

fof(gt_2_0,axiom,
    gt(n2,n0) ).

fof(cl5_nebula_norm_0037,conjecture,
    ( ( leq(n0,pv10)
      & ! [A,B] :
          ( sum(n0,minus(n5,n1),a_select3(q,A,B)) = n1
         <= ( leq(n0,A)
            & leq(A,minus(pv10,n1)) ) )
      & leq(pv10,minus(n135300,n1)) )
   => ( leq(pv10,minus(n135300,n1))
      & ! [E,F] :
          ( sum(n0,minus(n5,n1),a_select3(q,E,F)) = n1
         <= ( leq(E,minus(pv10,n1))
            & leq(n0,E) ) )
      & ! [C,D] :
          ( ( leq(n0,C)
            & leq(C,minus(n0,n1)) )
         => a_select3(q,pv10,C) = divide(sqrt(times(minus(a_select3(center,C,n0),a_select2(x,pv10)),minus(a_select3(center,C,n0),a_select2(x,pv10)))),sum(n0,minus(n5,n1),sqrt(times(minus(a_select3(center,D,n0),a_select2(x,pv10)),minus(a_select3(center,D,n0),a_select2(x,pv10)))))) )
      & leq(n0,pv10) ) ) ).

fof(gt_0_tptp_minus_1,axiom,
    gt(n0,tptp_minus_1) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(finite_domain_2,axiom,
    ! [X] :
      ( ( leq(X,n2)
        & leq(n0,X) )
     => ( X = n0
        | X = n2
        | X = n1 ) ) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

