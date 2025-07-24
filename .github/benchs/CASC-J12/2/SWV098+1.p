include('Axioms/SWV003+0.ax').
fof(gt_0_tptp_minus_1,axiom,
    gt(n0,tptp_minus_1) ).

fof(successor_4,axiom,
    succ(succ(succ(succ(n0)))) = n4 ).

fof(gt_5_tptp_minus_1,axiom,
    gt(n5,tptp_minus_1) ).

fof(gt_999_2,axiom,
    gt(n999,n2) ).

fof(gt_5_4,axiom,
    gt(n5,n4) ).

fof(gt_5_3,axiom,
    gt(n5,n3) ).

fof(gt_5_0,axiom,
    gt(n5,n0) ).

fof(gt_5_1,axiom,
    gt(n5,n1) ).

fof(finite_domain_2,axiom,
    ! [X] :
      ( ( X = n1
        | X = n2
        | n0 = X )
     <= ( leq(n0,X)
        & leq(X,n2) ) ) ).

fof(gt_4_0,axiom,
    gt(n4,n0) ).

fof(gt_999_5,axiom,
    gt(n999,n5) ).

fof(successor_2,axiom,
    n2 = succ(succ(n0)) ).

fof(gt_999_4,axiom,
    gt(n999,n4) ).

fof(gt_2_0,axiom,
    gt(n2,n0) ).

fof(gt_4_1,axiom,
    gt(n4,n1) ).

fof(successor_3,axiom,
    n3 = succ(succ(succ(n0))) ).

fof(finite_domain_3,axiom,
    ! [X] :
      ( ( n0 = X
        | X = n1
        | n2 = X
        | X = n3 )
     <= ( leq(X,n3)
        & leq(n0,X) ) ) ).

fof(gt_2_tptp_minus_1,axiom,
    gt(n2,tptp_minus_1) ).

fof(gt_4_2,axiom,
    gt(n4,n2) ).

fof(gt_3_1,axiom,
    gt(n3,n1) ).

fof(quaternion_ds1_inuse_0010,conjecture,
    ( ( use = a_select2(rho_defuse,n0)
      & use = a_select2(rho_defuse,n1)
      & use = a_select2(sigma_defuse,n0)
      & a_select2(sigma_defuse,n4) = use
      & use = a_select2(sigma_defuse,n5)
      & a_select3(u_defuse,n1,n0) = use
      & a_select3(u_defuse,n2,n0) = use
      & a_select2(xinit_mean_defuse,n1) = use
      & a_select2(xinit_mean_defuse,n2) = use
      & use = a_select2(xinit_mean_defuse,n3)
      & a_select2(xinit_noise_defuse,n0) = use
      & use = a_select2(xinit_noise_defuse,n1)
      & a_select2(xinit_noise_defuse,n2) = use
      & use = a_select2(xinit_noise_defuse,n3)
      & a_select2(xinit_noise_defuse,n4) = use
      & leq(n0,pv5)
      & leq(pv5,minus(n999,n1))
      & ! [C,D] :
          ( ( a_select3(u_defuse,C,D) = use
            & use = a_select3(z_defuse,C,D) )
         <= ( leq(n0,D)
            & leq(D,minus(pv5,n1))
            & leq(C,n2)
            & leq(n0,C) ) )
      & ! [A,B] :
          ( ( a_select3(u_defuse,A,B) = use
            & a_select3(z_defuse,A,B) = use )
         <= ( leq(B,pv5)
            & leq(A,n2)
            & leq(n0,B)
            & leq(n0,A) ) )
      & use = a_select2(xinit_noise_defuse,n5)
      & use = a_select2(xinit_mean_defuse,n5)
      & use = a_select2(xinit_mean_defuse,n4)
      & a_select2(xinit_mean_defuse,n0) = use
      & use = a_select2(xinit_defuse,n5)
      & a_select2(xinit_defuse,n4) = use
      & use = a_select2(xinit_defuse,n3)
      & use = a_select3(u_defuse,n0,n0)
      & use = a_select2(sigma_defuse,n3)
      & use = a_select2(sigma_defuse,n2)
      & a_select2(sigma_defuse,n1) = use
      & use = a_select2(rho_defuse,n2) )
   => ( a_select2(rho_defuse,n0) = use
      & use = a_select2(rho_defuse,n1)
      & a_select2(sigma_defuse,n1) = use
      & use = a_select2(sigma_defuse,n2)
      & use = a_select2(sigma_defuse,n3)
      & a_select2(sigma_defuse,n4) = use
      & use = a_select2(sigma_defuse,n5)
      & use = a_select3(u_defuse,n0,n0)
      & a_select3(u_defuse,n1,n0) = use
      & a_select3(u_defuse,n2,n0) = use
      & use = a_select2(xinit_defuse,n3)
      & a_select2(xinit_defuse,n5) = use
      & a_select2(xinit_mean_defuse,n3) = use
      & use = a_select2(xinit_mean_defuse,n5)
      & use = a_select2(xinit_noise_defuse,n0)
      & a_select2(xinit_noise_defuse,n4) = use
      & use = a_select2(xinit_noise_defuse,n5)
      & ! [E,F] :
          ( ( leq(E,n2)
            & leq(F,minus(plus(n1,pv5),n1))
            & leq(n0,F)
            & leq(n0,E) )
         => ( use = a_select3(u_defuse,E,F)
            & use = a_select3(z_defuse,E,F) ) )
      & a_select2(xinit_noise_defuse,n3) = use
      & a_select2(xinit_noise_defuse,n2) = use
      & use = a_select2(xinit_noise_defuse,n1)
      & use = a_select2(xinit_mean_defuse,n4)
      & use = a_select2(xinit_mean_defuse,n2)
      & use = a_select2(xinit_mean_defuse,n1)
      & use = a_select2(xinit_mean_defuse,n0)
      & a_select2(xinit_defuse,n4) = use
      & a_select2(sigma_defuse,n0) = use
      & use = a_select2(rho_defuse,n2) ) ) ).

fof(gt_3_2,axiom,
    gt(n3,n2) ).

fof(finite_domain_5,axiom,
    ! [X] :
      ( ( leq(X,n5)
        & leq(n0,X) )
     => ( X = n1
        | n2 = X
        | X = n5
        | n4 = X
        | X = n3
        | X = n0 ) ) ).

fof(gt_4_tptp_minus_1,axiom,
    gt(n4,tptp_minus_1) ).

fof(finite_domain_4,axiom,
    ! [X] :
      ( ( n4 = X
        | n3 = X
        | n2 = X
        | X = n1
        | X = n0 )
     <= ( leq(n0,X)
        & leq(X,n4) ) ) ).

fof(gt_999_1,axiom,
    gt(n999,n1) ).

fof(gt_1_tptp_minus_1,axiom,
    gt(n1,tptp_minus_1) ).

fof(gt_1_0,axiom,
    gt(n1,n0) ).

fof(gt_4_3,axiom,
    gt(n4,n3) ).

fof(gt_3_0,axiom,
    gt(n3,n0) ).

fof(finite_domain_1,axiom,
    ! [X] :
      ( ( leq(X,n1)
        & leq(n0,X) )
     => ( X = n0
        | X = n1 ) ) ).

fof(gt_999_3,axiom,
    gt(n999,n3) ).

fof(successor_5,axiom,
    succ(succ(succ(succ(succ(n0))))) = n5 ).

fof(finite_domain_0,axiom,
    ! [X] :
      ( ( leq(n0,X)
        & leq(X,n0) )
     => n0 = X ) ).

fof(gt_999_tptp_minus_1,axiom,
    gt(n999,tptp_minus_1) ).

fof(gt_2_1,axiom,
    gt(n2,n1) ).

fof(successor_1,axiom,
    succ(n0) = n1 ).

fof(gt_3_tptp_minus_1,axiom,
    gt(n3,tptp_minus_1) ).

fof(gt_5_2,axiom,
    gt(n5,n2) ).

fof(gt_999_0,axiom,
    gt(n999,n0) ).

