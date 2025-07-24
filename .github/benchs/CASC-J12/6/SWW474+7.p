fof(fact_225_sup__bot__right,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),bot_bot(X_a)) ) ).

fof(fact_450_override__on__apply__notin,axiom,
    ! [X_b,X_a,F,G,A_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
     => hAPP(X_a,X_b,F,A_2) = hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),A_2) ) ).

fof(fact_725_Compl__Un,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1)) ).

fof(fact_603_finite__UNIV,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool))))
     <= finite_finite_1(X_a) ) ).

fof(fact_127_Collect__disj__eq,axiom,
    ! [X_a,P_1,Q_2] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),P_1)),Q_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2)) ).

fof(fact_628_finite__UNIV__surj__inj,axiom,
    ! [X_a,F] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),F),top_top(fun(X_a,bool))) = top_top(fun(X_a,bool))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),F),top_top(fun(X_a,bool)))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ).

fof(fact_328_Diff__idemp,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1) ).

fof(conj_4,hypothesis,
    hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),ord_less_eq(fun(hoare_2118899576triple(state),bool)),fa),hAPP(fun(pname,bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(pname,hoare_2118899576triple(state)),fun(fun(pname,bool),fun(hoare_2118899576triple(state),bool)),image(pname,hoare_2118899576triple(state)),hAPP(fun(pname,com),fun(pname,hoare_2118899576triple(state)),hAPP(fun(com,hoare_2118899576triple(state)),fun(fun(pname,com),fun(pname,hoare_2118899576triple(state))),combb(com,hoare_2118899576triple(state),pname),hoare_Mirabelle_MGT),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body)))) ).

fof(fact_508_dom__eq__empty__conv,axiom,
    ! [X_a,X_b,F] :
      ( ! [X_1] : none(X_b) = hAPP(X_a,option(X_b),F,X_1)
    <=> hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F) = bot_bot(fun(X_a,bool)) ) ).

fof(fact_837_inf__Sup2__distrib,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1)
               => hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a)),hAPP(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,bool)),hAPP(fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),fun(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,bool))),combb(fun(X_a,fun(X_a,bool)),fun(X_a,bool),X_a),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a))),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(X_a,bool)))),combc(X_a,fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),hAPP(fun(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))))),combb(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))),X_a),combs(X_a,fun(X_a,bool),fun(X_a,bool))),hAPP(fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),hAPP(fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))))),combb(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),X_a),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combs(X_a,bool,bool))),hAPP(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),hAPP(fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),fun(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,fun(X_a,fun(bool,bool))))),combb(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool))),X_a),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj))),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,fun(X_a,bool)))),combc(X_a,fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),hAPP(fun(fun(fun(X_a,X_a),fun(X_a,bool)),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))))),combb(fun(fun(X_a,X_a),fun(X_a,bool)),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))),X_a),combb(fun(X_a,X_a),fun(X_a,bool),X_a)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool)),X_a),combb(X_a,bool,X_a)),fequal(X_a)))),semilattice_inf_inf(X_a)))))),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(bool,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(bool,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combb(bool,bool,X_a)),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1))))))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),B_1)) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= distrib_lattice(X_a) ) ).

fof(fact_674_Sup__fin_Ohom__commute,axiom,
    ! [X_a] :
      ( ! [N,H] :
          ( ! [X_1,Y_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1)) = hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),Y_1))
         => ( ( ti(fun(X_a,bool),N) != bot_bot(fun(X_a,bool))
             => hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),N)) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N)) ) )
     <= lattice(X_a) ) ).

fof(fact_175_MGF__complete,axiom,
    ! [P_1,Q_2,C] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_902341502valids(state),bot_bot(fun(hoare_2118899576triple(state),bool))),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),hoare_2118899576triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state))),hoare_759811442triple(state),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(state),bool)))))
       => hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),bot_bot(fun(hoare_2118899576triple(state),bool))),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),hoare_2118899576triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state))),hoare_759811442triple(state),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(state),bool))))) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),bot_bot(fun(hoare_2118899576triple(state),bool))),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,C)),bot_bot(fun(hoare_2118899576triple(state),bool))))) ) ).

fof(fact_388_insert__Diff__if,axiom,
    ! [X_a,A_1,X_2,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1) )
      & ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)) ) ) ).

fof(tsy_c_Option_Oset_res,axiom,
    ! [X_a] : set(X_a) = ti(fun(option(X_a),fun(X_a,bool)),set(X_a)) ).

fof(conj_6,hypothesis,
    hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),hAPP(fun(pname,bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(pname,hoare_2118899576triple(state)),fun(fun(pname,bool),fun(hoare_2118899576triple(state),bool)),image(pname,hoare_2118899576triple(state)),hAPP(fun(pname,com),fun(pname,hoare_2118899576triple(state)),hAPP(fun(com,hoare_2118899576triple(state)),fun(fun(pname,com),fun(pname,hoare_2118899576triple(state))),combb(com,hoare_2118899576triple(state),pname),hoare_Mirabelle_MGT),body_1)),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))),fa)) ).

fof(fact_489_domIff,axiom,
    ! [X_a,X_b,A_2,M_1] :
      ( none(X_b) != hAPP(X_a,option(X_b),M_1,A_2)
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M_1))) ) ).

fof(fact_169_bot__fun__def,axiom,
    ! [X_a,X_b] :
      ( bot(X_b)
     => ! [X_1] : hAPP(X_a,X_b,bot_bot(fun(X_a,X_b)),X_1) = bot_bot(X_b) ) ).

fof(fact_339_Collect__conj__eq,axiom,
    ! [X_a,P_1,Q_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),P_1)),Q_2)) ).

fof(fact_325_Diff__Int__distrib2,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C_2)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) ).

fof(fact_111_BodyN,axiom,
    ! [X_a,P_1,Pn_1,Q_2,G_2] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),hAPP(pname,com,body_1,Pn_1)),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),hAPP(pname,com,body_1,Pn_1)),Q_2)),G_2)),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn_1))),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(arity_HOL_Obool___Orderings_Oord,axiom,
    ord(bool) ).

fof(fact_704_le__imp__neg__le,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),B_2)),hAPP(X_a,X_a,uminus_uminus(X_a),A_3))) ) ) ).

fof(fact_611_inj__eq,axiom,
    ! [X_a,X_b,X_2,Y_2,F] :
      ( ( hAPP(X_a,X_b,F,X_2) = hAPP(X_a,X_b,F,Y_2)
      <=> ti(X_a,X_2) = ti(X_a,Y_2) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(fact_258_triple_Oexhaust,axiom,
    ! [X_a,Y_2] :
      ~ ! [Fun1,Com,Fun2] : hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),Fun1),Com),Fun2) != Y_2 ).

fof(arity_HOL_Obool___Complete__Lattice_Ocomplete__lattice,axiom,
    comple44059174attice(bool) ).

fof(fact_452_flat__lub__def,axiom,
    ! [X_a,A_1,B] :
      ( ( hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),partial_flat_lub(X_a),B),A_1)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool))))) )
      & ( ti(X_a,B) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),partial_flat_lub(X_a),B),A_1)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool))))) ) ) ).

fof(fact_901_min__leastR,axiom,
    ! [X_a] :
      ( ! [X,Least] :
          ( ti(X_a,Least) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Least)
         <= ! [X_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Least),X_1)) )
     <= order(X_a) ) ).

fof(tsy_c_Orderings_Oord_Omin_res,axiom,
    ! [X_a] :
      ( ti(fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,X_a))),min(X_a)) = min(X_a)
     <= ord(X_a) ) ).

fof(fact_49_in__mono,axiom,
    ! [X_a,X_2,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1)) ) ) ).

fof(fact_488_dom__def,axiom,
    ! [X_a,X_b,M_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(option(X_b),fun(X_a,bool),hAPP(fun(X_a,fun(option(X_b),bool)),fun(option(X_b),fun(X_a,bool)),combc(X_a,option(X_b),bool),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),bool)),hAPP(fun(option(X_b),fun(option(X_b),bool)),fun(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),bool))),combb(option(X_b),fun(option(X_b),bool),X_a),fequal(option(X_b))),M_1)),none(X_b)))) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M_1) ).

fof(fact_649_Inf__fin_Ohom__commute,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [N,H] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N))
           => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),N)
             => hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),N)) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N)) ) )
         <= ! [X_1,Y_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1)) = hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),Y_1)) ) ) ).

fof(fact_635_vimage__subsetD,axiom,
    ! [X_b,X_a,B_1,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),B_1)),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1))) )
     <= hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))) = top_top(fun(X_a,bool)) ) ).

fof(fact_514_endo__inj__surj,axiom,
    ! [X_a,F,A_1] :
      ( ( ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),F),A_1)
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),F),A_1)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),F),A_1)),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_247_While,axiom,
    ! [B,C] :
      ( hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)))
     <= hBOOL(hAPP(com,bool,wt,C)) ) ).

fof(fact_613_inj__fun,axiom,
    ! [X_c,X_a,X_b,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,fun(X_c,X_b)),fun(fun(X_a,bool),bool),inj_on(X_a,fun(X_c,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_c,X_b)),hAPP(fun(X_b,fun(X_c,X_b)),fun(fun(X_a,X_b),fun(X_a,fun(X_c,X_b))),combb(X_b,fun(X_c,X_b),X_a),combk(X_b,X_c)),F)),top_top(fun(X_a,bool))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(arity_fun___Complete__Lattice_Ocomplete__lattice,axiom,
    ! [T_2,T_1] :
      ( comple44059174attice(T_1)
     => comple44059174attice(fun(T_2,T_1)) ) ).

fof(fact_851_minus__Min__eq__Max,axiom,
    ! [X_a] :
      ( linord219039673up_add(X_a)
     => ! [S] :
          ( ( hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),S)) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),uminus_uminus(X_a)),S))
           <= ti(fun(X_a,bool),S) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),S)) ) ) ).

fof(fact_892_Min_Oeq__fold_H,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),X_2),A_1)
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_658_surjE,axiom,
    ! [X_b,X_a,Y_2,F] :
      ( top_top(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool)))
     => ~ ! [X_1] : ti(X_a,Y_2) != hAPP(X_b,X_a,F,X_1) ) ).

fof(fact_425_Diff__partition,axiom,
    ! [X_a,A_1,B_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),A_1)) = ti(fun(X_a,bool),B_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(arity_fun___Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( semilattice_inf(fun(T_2,T_1))
     <= lattice(T_1) ) ).

fof(fact_948_min__max_Ocomp__fun__idem__sup,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(fun(X_a,fun(X_a,X_a)),bool,finite_comp_fun_idem(X_a,X_a),ord_max(X_a)))
     <= linorder(X_a) ) ).

fof(fact_560_vimage__empty,axiom,
    ! [X_b,X_a,F] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),bot_bot(fun(X_b,bool))) ).

fof(fact_35_insert__absorb,axiom,
    ! [X_a,A_2,A_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1) = ti(fun(X_a,bool),A_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ).

fof(fact_569_dom__restrict,axiom,
    ! [X_a,X_b,M_1,A_1] : hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M_1)),A_1) ).

fof(fact_830_finite__Pow__iff,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,finite_finite(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1)))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_77_Collect__def,axiom,
    ! [X_a,P_1] : ti(fun(X_a,bool),P_1) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1) ).

fof(fact_433_finite__empty__induct,axiom,
    ! [X_a,P_1,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,A_1))
       => ( ! [A_4,A_5] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_5))
             => ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_5),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_4),bot_bot(fun(X_a,bool))))))
                 <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,A_5)) )
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_4),A_5)) ) )
         => hBOOL(hAPP(fun(X_a,bool),bool,P_1,bot_bot(fun(X_a,bool)))) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_119_bex__Un,axiom,
    ! [X_a,P_1,A_1,B_1] :
      ( ? [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
          & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) )
    <=> ( ? [X_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,X_1))
            & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_1)) )
        | ? [X_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,X_1))
            & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ) ) ).

fof(fact_711_compl__top__eq,axiom,
    ! [X_a] :
      ( bot_bot(X_a) = hAPP(X_a,X_a,uminus_uminus(X_a),top_top(X_a))
     <= boolean_algebra(X_a) ) ).

fof(tsy_c_Com_OWT_res,axiom,
    ti(fun(com,bool),wt) = wt ).

fof(fact_890_Min_Osubset__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),B_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_98_finite__dom__body,axiom,
    hBOOL(hAPP(fun(pname,bool),bool,finite_finite(pname),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))) ).

fof(fact_320_DiffD2,axiom,
    ! [X_a,C,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)))
     => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) ) ).

fof(fact_198_sup_Ocommute,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),A_3) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2) ) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice__bot,axiom,
    bounded_lattice_bot(bool) ).

fof(fact_333_Int__left__absorb,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) ).

fof(fact_698_double__compl,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X] : hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)) = ti(X_a,X) ) ).

fof(fact_173_conseq1,axiom,
    ! [X_a,P_1,G_2,P_3,C,Q_2] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_3),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
     => ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
       <= ! [Z_3,S_1] :
            ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_3,Z_3),S_1))
           <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_1)) ) ) ) ).

fof(fact_761_Inter__Un__subset,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),B_1))),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_inf_inf(fun(fun(X_a,bool),bool)),A_1),B_1)))) ).

fof(fact_298_ord__le__eq__subst,axiom,
    ! [X_a,X_b] :
      ( ( ord(X_b)
        & ord(X_a) )
     => ! [F,C,A_2,B] :
          ( ( hAPP(X_a,X_b,F,B) = ti(X_b,C)
           => ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,A_2)),C))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,F,Y_1)))
                 <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Y_1)) ) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),B)) ) ) ).

fof(fact_350_inf_Oleft__idem,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2)) ) ).

fof(arity_fun___Lattices_Obounded__lattice,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice(fun(T_2,T_1))
     <= bounded_lattice(T_1) ) ).

fof(fact_99_finite__induct,axiom,
    ! [X_a,P_1,Fa] :
      ( ( ( ! [X_1,F_2] :
              ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),F_2))
               => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),F_2)))
                 <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,F_2)) ) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),F_2)) )
         => hBOOL(hAPP(fun(X_a,bool),bool,P_1,Fa)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,bot_bot(fun(X_a,bool)))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_678_inj__uminus,axiom,
    ! [X_a] :
      ( ! [A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),uminus_uminus(X_a)),A_1))
     <= ordered_ab_group_add(X_a) ) ).

fof(fact_753_InterD,axiom,
    ! [X_a,X_4,A_1,C_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),C_2)))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),X_4))
       <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_4),C_2)) ) ) ).

fof(fact_945_min__max_Osup__inf__absorb,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)) ) ).

fof(tsy_v_pn_res,hypothesis,
    pn = ti(pname,pn) ).

fof(fact_637_finite__vimageI,axiom,
    ! [X_b,X_a,H,Fa] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),H),Fa)))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),bool),inj_on(X_b,X_a),H),top_top(fun(X_b,bool)))) ) ) ).

fof(fact_239_com_Osimps_I13_J,axiom,
    ! [Com1_3,Com2_3] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_3),Com2_3) != skip ).

fof(fact_86_domI,axiom,
    ! [X_b,X_a,M_1,A_2,B] :
      ( hAPP(X_b,option(X_a),M_1,A_2) = hAPP(X_a,option(X_a),some(X_a),B)
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),M_1))) ) ).

fof(fact_12_finite_OemptyI,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),bot_bot(fun(X_a,bool)))) ).

fof(fact_895_Min_Oremove,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool))
               => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1) = ti(X_a,X_2) )
              & ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool))
               => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) ) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(tsy_c_hAPP_arg1,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,B_1_1,B_2_1) = hAPP(X_a,X_c,ti(fun(X_a,X_c),B_1_1),B_2_1) ).

fof(fact_326_Int__assoc,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) ).

fof(fact_389_disjoint__iff__not__equal,axiom,
    ! [X_a,A_1,B_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = bot_bot(fun(X_a,bool))
    <=> ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
         => ! [Xa] :
              ( ti(X_a,Xa) != ti(X_a,X_1)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Xa),B_1)) ) ) ) ).

fof(fact_998_max__leastL,axiom,
    ! [X_a] :
      ( ord(X_a)
     => ! [X,Least] :
          ( ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Least),X)
         <= ! [X_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Least),X_1)) ) ) ).

fof(fact_987_Max_Oinsert__remove,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool))
             => hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) )
            & ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
             => hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = ti(X_a,X_2) ) ) ) ) ).

fof(help_COMBK_1_1_U,axiom,
    ! [X_b,X_a,P,Q] : ti(X_a,P) = hAPP(X_b,X_a,hAPP(X_a,fun(X_b,X_a),combk(X_a,X_b),P),Q) ).

fof(tsy_c_Finite__Set_Ofolding__one_res,axiom,
    ! [X_a] : finite_folding_one(X_a) = ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool)),finite_folding_one(X_a)) ).

fof(arity_fun___Orderings_Obot,axiom,
    ! [T_2,T_1] :
      ( bot(T_1)
     => bot(fun(T_2,T_1)) ) ).

fof(fact_754_Inter__UNIV,axiom,
    ! [X_a] : bot_bot(fun(X_a,bool)) = hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),top_top(fun(fun(X_a,bool),bool))) ).

fof(fact_264_folding__one_Osingleton,axiom,
    ! [X_a,X_2,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) ) ).

fof(fact_935_max__ord__max,axiom,
    ! [X_a] :
      ( hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,X_a)),max(X_a),ord_less_eq(X_a)) = ord_max(X_a)
     <= ord(X_a) ) ).

fof(fact_868_min__max_Oinf__absorb2,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [Y,X] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y) = ti(X_a,Y)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) ) ).

fof(fact_504_sup__le__fold__sup,axiom,
    ! [X_a] :
      ( ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B)),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),B),A_1))) ) )
     <= semilattice_sup(X_a) ) ).

fof(fact_259_folding__image__simple__idem_Ounion__idem,axiom,
    ! [X_b,X_a,B_1,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z_2),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B_1))
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B_1)) ) ) ) ).

fof(fact_729_Compl__Diff__eq,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)),B_1) ).

fof(fact_459_fun__upd__same,axiom,
    ! [X_b,X_a,F,X_2,Y_2] : hAPP(X_b,X_a,hAPP(X_a,fun(X_b,X_a),hAPP(X_b,fun(X_a,fun(X_b,X_a)),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,fun(X_b,X_a))),fun_upd(X_b,X_a),F),X_2),Y_2),X_2) = ti(X_a,Y_2) ).

fof(fact_553_vimageI2,axiom,
    ! [X_a,X_b,F,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),A_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_b,X_a,F,A_2)),A_1)) ) ).

fof(fact_345_inf__left__commute,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z))
     <= semilattice_inf(X_a) ) ).

fof(fact_647_Inf__fin_Oremove,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => ( ( hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1) = ti(X_a,X_2)
               <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) )
              & ( bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
               => hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) ) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_120_Un__assoc,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)) ).

fof(fact_746_the__inv__into__onto,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => ti(fun(X_a,bool),A_1) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),A_1),F)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)) ) ).

fof(fact_564_restrict__map__empty,axiom,
    ! [X_a,X_b,D_2,X_1] : none(X_b) = hAPP(X_a,option(X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),hAPP(option(X_b),fun(X_a,option(X_b)),combk(option(X_b),X_a),none(X_b))),D_2),X_1) ).

fof(tsy_c_Com_OWT__bodies_res,hypothesis,
    ti(bool,wT_bodies) = wT_bodies ).

fof(fact_816_Sup__least,axiom,
    ! [X_a] :
      ( ! [Z_2,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)),Z_2))
         <= ! [X_1] :
              ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Z_2))
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) )
     <= comple44059174attice(X_a) ) ).

fof(arity_fun___Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( ord(T_1)
     => ord(fun(T_2,T_1)) ) ).

fof(fact_171_escape,axiom,
    ! [X_a,G_2,C,Q_2,P_1] :
      ( ! [Z_3,S_1] :
          ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),hAPP(fun(state,bool),fun(X_a,fun(state,bool)),combk(fun(state,bool),X_a),hAPP(state,fun(state,bool),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,bool)),combc(state,state,bool),fequal(state)),S_1))),C),hAPP(fun(state,bool),fun(X_a,fun(state,bool)),combk(fun(state,bool),X_a),hAPP(X_a,fun(state,bool),Q_2,Z_3)))),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
         <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_1)) )
     => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(fact_951_min__max_Osup_Ocommute,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),B_2),A_3) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2)
     <= linorder(X_a) ) ).

fof(fact_6_derivs__insertD,axiom,
    ! [X_a,G_2,T_3,Ts] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts))
        & hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),T_3),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),T_3),Ts))) ) ).

fof(fact_770_Inf__sup__eq__top__iff,axiom,
    ! [X_a] :
      ( ! [B_1,A_2] :
          ( top_top(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),B_1)),A_2)
        <=> ! [X_1] :
              ( top_top(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),A_2)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_1)) ) )
     <= comple1742628961attice(X_a) ) ).

fof(fact_699_fun__Compl__def,axiom,
    ! [X_a,X_b] :
      ( ! [A_1,X_1] : hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),uminus_uminus(fun(X_a,X_b)),A_1),X_1) = hAPP(X_b,X_b,uminus_uminus(X_b),hAPP(X_a,X_b,A_1,X_1))
     <= uminus(X_b) ) ).

fof(fact_644_Inf__fin_Ounion__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1)
               => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),B_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(tsy_c_Com_Ocom_OSemi_res,axiom,
    ti(fun(com,fun(com,com)),semi) = semi ).

fof(fact_505_fold__inf__le__inf,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),B),A_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B)))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ) ) ).

fof(fact_90_singleton__conv2,axiom,
    ! [X_a,A_2] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(X_a,fun(X_a,bool),fequal(X_a),A_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool))) ).

fof(fact_73_rev__finite__subset,axiom,
    ! [X_a,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) ).

fof(fact_618_inj__image__mem__iff,axiom,
    ! [X_a,X_b,A_2,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,A_2)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ) ).

fof(fact_220_le__supI,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,A_3,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2)),X))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),X)) ) ) ).

fof(arity_fun___Lattices_Obounded__lattice__top,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice(T_1)
     => bounded_lattice_top(fun(T_2,T_1)) ) ).

fof(fact_842_ran__def,axiom,
    ! [X_b,X_a,M_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_b,bool)),fun(X_a,bool),hAPP(fun(fun(X_b,bool),bool),fun(fun(X_a,fun(X_b,bool)),fun(X_a,bool)),combb(fun(X_b,bool),bool,X_a),fEx(X_b)),hAPP(fun(X_a,option(X_a)),fun(X_a,fun(X_b,bool)),hAPP(fun(option(X_a),fun(X_b,bool)),fun(fun(X_a,option(X_a)),fun(X_a,fun(X_b,bool))),combb(option(X_a),fun(X_b,bool),X_a),hAPP(fun(X_b,fun(option(X_a),bool)),fun(option(X_a),fun(X_b,bool)),combc(X_b,option(X_a),bool),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),bool)),hAPP(fun(option(X_a),fun(option(X_a),bool)),fun(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),bool))),combb(option(X_a),fun(option(X_a),bool),X_b),fequal(option(X_a))),M_1))),some(X_a)))) = hAPP(fun(X_b,option(X_a)),fun(X_a,bool),ran(X_b,X_a),M_1) ).

fof(fact_153_xt1_I3_J,axiom,
    ! [X_a] :
      ( ! [C_1,A_3,B_2] :
          ( ti(X_a,B_2) = ti(X_a,A_3)
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),B_2))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),A_3)) ) )
     <= order(X_a) ) ).

fof(fact_997_max__leastR,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [X,Least] :
          ( ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Least)
         <= ! [X_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Least),X_1)) ) ) ).

fof(fact_825_Pow__def,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1) = hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),collect(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),combc(fun(X_a,bool),fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool))),A_1)) ).

fof(fact_846_Max__mono,axiom,
    ! [X_a] :
      ( ! [M,N] :
          ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N))
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),M)),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),N))) )
           <= ti(fun(X_a,bool),M) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),M),N)) )
     <= linorder(X_a) ) ).

fof(fact_97_finite__subset__image,axiom,
    ! [X_b,X_a,F,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
       => ? [C_3] :
            ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),C_3),A_1))
            & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),C_3))
            & hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),C_3) = ti(fun(X_a,bool),B_1) ) ) ) ).

fof(fact_115_triple_Oinject,axiom,
    ! [X_a,Fun1_1,Com_1,Fun2_1,Fun1_2,Com_2,Fun2_2] :
      ( hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),Fun1_2),Com_2),Fun2_2) = hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),Fun1_1),Com_1),Fun2_1)
    <=> ( Fun1_1 = Fun1_2
        & Com_1 = Com_2
        & Fun2_1 = Fun2_2 ) ) ).

fof(fact_648_Inf__fin_Oinsert__remove,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
             <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool)) )
            & ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool))
             => hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) ) ) )
     <= lattice(X_a) ) ).

fof(fact_25_image__eqI,axiom,
    ! [X_a,X_b,A_1,B,F,X_2] :
      ( hAPP(X_b,X_a,F,X_2) = ti(X_a,B)
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1)) ) ) ).

fof(fact_863_min__max_Ole__iff__inf,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,Y_2] :
          ( ti(X_a,X_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),Y_2)
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2)) ) ) ).

fof(fact_657_surjD,axiom,
    ! [X_b,X_a,Y_2,F] :
      ( hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))) = top_top(fun(X_a,bool))
     => ? [X_1] : hAPP(X_b,X_a,F,X_1) = ti(X_a,Y_2) ) ).

fof(fact_784_Sup__UNIV,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => top_top(X_a) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),top_top(fun(X_a,bool))) ) ).

fof(help_fTrue_1_1_T,axiom,
    ! [P] :
      ( ti(bool,P) = fTrue
      | fFalse = ti(bool,P) ) ).

fof(fact_734_inj__image__Compl__subset,axiom,
    ! [X_a,X_b,A_1,F] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1))),hAPP(fun(X_b,bool),fun(X_b,bool),uminus_uminus(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(fact_245_com_Osimps_I59_J,axiom,
    ! [Pname_1,Fun,Com_1] : hAPP(pname,com,body_1,Pname_1) != hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) ).

fof(fact_490_fold__image__def,axiom,
    ! [X_b,X_a,F,G] : hAPP(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a)),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a))),finite_fold_image(X_a,X_b),F),G) = hAPP(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,bool),X_a)),finite_fold(X_b,X_a),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,X_a)),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_b,fun(X_a,X_a))),combb(X_a,fun(X_a,X_a),X_b),F),G)) ).

fof(fact_397_Un__Diff__cancel,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),A_1)) ).

fof(fact_986_Max_Oremove,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( ( ( hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1) = ti(X_a,X_2)
               <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool)) )
              & ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)
               <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool)) ) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(arity_fun___Complete__Lattice_Ocomplete__distrib__lattice,axiom,
    ! [T_2,T_1] :
      ( comple1742628961attice(fun(T_2,T_1))
     <= comple1742628961attice(T_1) ) ).

fof(fact_156_order__eq__refl,axiom,
    ! [X_a] :
      ( preorder(X_a)
     => ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         <= Y = X ) ) ).

fof(fact_856_minus__Max__eq__Min,axiom,
    ! [X_a] :
      ( linord219039673up_add(X_a)
     => ! [S] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),S))
         => ( ti(fun(X_a,bool),S) != bot_bot(fun(X_a,bool))
           => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),uminus_uminus(X_a)),S)) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),S)) ) ) ) ).

fof(fact_589_sup__top__left,axiom,
    ! [X_a] :
      ( ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),top_top(X_a)),X) = top_top(X_a)
     <= bounded_lattice_top(X_a) ) ).

fof(fact_512_set__empty__eq,axiom,
    ! [X_a,Xo] :
      ( none(X_a) = ti(option(X_a),Xo)
    <=> hAPP(option(X_a),fun(X_a,bool),set(X_a),Xo) = bot_bot(fun(X_a,bool)) ) ).

fof(fact_873_min__le__iff__disj,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2,Z_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),Y_2)),Z_2))
        <=> ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z_2))
            | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),Z_2)) ) )
     <= linorder(X_a) ) ).

fof(fact_824_Pow__iff,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
    <=> hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1))) ) ).

fof(fact_405_Int__mono,axiom,
    ! [X_a,B_1,D_2,A_1,C_2] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),D_2))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C_2),D_2))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ).

fof(fact_424_image__diff__subset,axiom,
    ! [X_a,X_b,F,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B_1))),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B_1)))) ).

fof(fact_633_surj__vimage__empty,axiom,
    ! [X_b,X_a,A_1,F] :
      ( ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),A_1)
      <=> bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1) )
     <= top_top(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))) ) ).

fof(fact_608_top__greatest,axiom,
    ! [X_a] :
      ( top(X_a)
     => ! [A_3] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),top_top(X_a))) ) ).

fof(fact_579_comm__monoid__big_OF__cong,axiom,
    ! [X_b,X_a,H,G,A_1,B_1,F,Z_2,Fa] :
      ( ( ( ! [X_1] :
              ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),B_1))
             => hAPP(X_b,X_a,G,X_1) = hAPP(X_b,X_a,H,X_1) )
         => hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,H),A_1) = hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,G),B_1) )
       <= ti(fun(X_b,bool),B_1) = ti(fun(X_b,bool),A_1) )
     <= hBOOL(hAPP(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool,hAPP(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool)),big_comm_monoid_big(X_a,X_b),F),Z_2),Fa)) ) ).

fof(fact_347_inf_Oleft__commute,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_2,A_3,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),C_1)) ) ).

fof(fact_991_Max_Ohom__commute,axiom,
    ! [X_a] :
      ( ! [N,H] :
          ( ! [X_1,Y_1] : hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_1),Y_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1))
         => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),N)
             => hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),N)) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N)) ) )
     <= linorder(X_a) ) ).

fof(tsy_c_Map_Odom_res,axiom,
    ! [X_b,X_a] : dom(X_b,X_a) = ti(fun(fun(X_b,option(X_a)),fun(X_b,bool)),dom(X_b,X_a)) ).

fof(fact_583_UNIV__I,axiom,
    ! [X_a,X_2] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),top_top(fun(X_a,bool)))) ).

fof(fact_468_map__upd__triv,axiom,
    ! [X_b,X_a,T_3,K,X_2] :
      ( hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),T_3),K),hAPP(X_a,option(X_a),some(X_a),X_2)) = ti(fun(X_b,option(X_a)),T_3)
     <= hAPP(X_a,option(X_a),some(X_a),X_2) = hAPP(X_b,option(X_a),T_3,K) ) ).

fof(fact_568_restrict__map__insert,axiom,
    ! [X_a,X_b,F,A_2,A_1] : hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),F),A_1)),A_2),hAPP(X_a,option(X_b),F,A_2)) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) ).

fof(fact_269_If__def,axiom,
    ! [X_a,X_2,Y_2,P_1] :
      ( ( hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,P_1)),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),X_2)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,P_1))),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),Y_2)))) = ti(X_a,X_2)
       <= hBOOL(P_1) )
      & ( ~ hBOOL(P_1)
       => hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,P_1)),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),X_2)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),hAPP(bool,fun(bool,bool),fimplies,hAPP(bool,bool,fNot,P_1))),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),Y_2)))) = ti(X_a,Y_2) ) ) ).

fof(fact_722_Compl__partition,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)) = top_top(fun(X_a,bool)) ).

fof(conj_0,hypothesis,
    hBOOL(hoare_511481251gleton) ).

fof(fact_574_fun__upd__restrict,axiom,
    ! [X_b,X_a,M_1,D_2,X_2,Y_2] : hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),D_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))),X_2),Y_2) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),D_2)),X_2),Y_2) ).

fof(fact_909_min__max_Ofold1__belowI,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),A_1)),A_2)) ) ) ) ).

fof(fact_676_restrict__upd__same,axiom,
    ! [X_a,X_b,M_1,X_2,Y_2] : hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M_1),X_2),hAPP(X_b,option(X_b),some(X_b),Y_2))),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))) ).

fof(fact_523_folding__one_Oeq__fold_H,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),F),X_2),A_1) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_280_MGT__alternD,axiom,
    ! [G_2,C] :
      ( hBOOL(hoare_511481251gleton)
     => ( hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,C)),bot_bot(fun(hoare_2118899576triple(state),bool)))))
       <= hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),hoare_2118899576triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state))),hoare_759811442triple(state),hAPP(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool)),hAPP(fun(fun(state,fun(state,bool)),fun(state,bool)),fun(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool))),combb(fun(state,fun(state,bool)),fun(state,bool),state),hAPP(fun(fun(state,bool),bool),fun(fun(state,fun(state,bool)),fun(state,bool)),combb(fun(state,bool),bool,state),fAll(state))),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool))),hAPP(fun(fun(state,bool),fun(state,fun(state,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool)))),combb(fun(state,bool),fun(state,fun(state,bool)),state),hAPP(fun(state,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(state,fun(state,bool))),combc(state,fun(state,bool),fun(state,bool)),hAPP(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),state),combs(state,bool,bool)),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),state),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fimplies)),hAPP(com,fun(state,fun(state,bool)),evalc,C))))),fequal(state)))),C),fequal(state))),bot_bot(fun(hoare_2118899576triple(state),bool))))) ) ) ).

fof(fact_619_inj__image__eq__iff,axiom,
    ! [X_a,X_b,A_1,B_1,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)
      <=> ti(fun(X_a,bool),B_1) = ti(fun(X_a,bool),A_1) ) ) ).

fof(fact_42_insert__Collect,axiom,
    ! [X_a,A_2,P_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fimplies),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2)))),P_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)) ).

fof(fact_15_image__constant,axiom,
    ! [X_b,X_a,C,X_2,A_1] :
      ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),combk(X_b,X_a),C)),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),C),bot_bot(fun(X_b,bool)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_66_empty__not__insert,axiom,
    ! [X_a,A_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1) != bot_bot(fun(X_a,bool)) ).

fof(fact_679_compl__inf,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),hAPP(X_a,X_a,uminus_uminus(X_a),Y)) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)) ) ).

fof(fact_55_imageI,axiom,
    ! [X_b,X_a,F,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) ) ).

fof(fact_736_restrict__complement__singleton__eq,axiom,
    ! [X_a,X_b,F,X_2] : hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),F),X_2),none(X_b)) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))) ).

fof(fact_195_elem__set,axiom,
    ! [X_a,X_2,Xo] :
      ( hAPP(X_a,option(X_a),some(X_a),X_2) = ti(option(X_a),Xo)
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),hAPP(option(X_a),fun(X_a,bool),set(X_a),Xo))) ) ).

fof(fact_955_min__max_Osup_Oleft__commute,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_2,A_3,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),B_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),B_2),C_1)) ) ).

fof(fact_232_LoopF,axiom,
    ! [X_a,G_2,P_1,B,C] : hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),hAPP(fun(state,bool),fun(X_a,fun(state,bool)),hAPP(fun(X_a,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(X_a,fun(state,bool))),combc(X_a,fun(state,bool),fun(state,bool)),hAPP(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),X_a),combs(state,bool,bool)),hAPP(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),P_1))),hAPP(fun(state,bool),fun(state,bool),hAPP(fun(bool,bool),fun(fun(state,bool),fun(state,bool)),combb(bool,bool,state),fNot),B))),hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)),P_1)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ).

fof(fact_974_sup__max,axiom,
    ! [X_a] :
      ( ( linorder(X_a)
        & semilattice_sup(X_a) )
     => semilattice_sup_sup(X_a) = ord_max(X_a) ) ).

fof(fact_629_finite__UNIV__inj__surj,axiom,
    ! [X_a,F] :
      ( ( top_top(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),F),top_top(fun(X_a,bool)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),F),top_top(fun(X_a,bool)))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ).

fof(fact_272_predicate1I,axiom,
    ! [X_a,Q_2,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),P_1),Q_2))
     <= ! [X_1] :
          ( hBOOL(hAPP(X_a,bool,Q_2,X_1))
         <= hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ) ).

fof(fact_845_Ex__def,axiom,
    ! [X_a,P_1] :
      ( ! [Q_1] :
          ( hBOOL(Q_1)
         <= ! [X_1] :
              ( hBOOL(Q_1)
             <= hBOOL(hAPP(X_a,bool,P_1,X_1)) ) )
    <=> ? [X1] : hBOOL(hAPP(X_a,bool,P_1,X1)) ) ).

fof(tsy_c_Set_Oinsert_res,axiom,
    ! [X_a] : insert(X_a) = ti(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),insert(X_a)) ).

fof(fact_413_Int__Un__distrib2,axiom,
    ! [X_a,B_1,C_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C_2),A_1)) ).

fof(fact_391_Int__empty__left,axiom,
    ! [X_a,B_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),bot_bot(fun(X_a,bool))),B_1) ).

fof(fact_985_Max_Oeq__fold_H,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_max(X_a)),X_2),A_1) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
     <= linorder(X_a) ) ).

fof(tsy_c_Option_Othe_res,axiom,
    ! [X_a] : the(X_a) = ti(fun(option(X_a),X_a),the(X_a)) ).

fof(fact_114_UnE,axiom,
    ! [X_a,C,A_1,B_1] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_295_evalc__elim__cases_I4_J,axiom,
    ! [C1,C2,S_4,T_4] :
      ( ~ ! [S1] :
            ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C1),S_4),S1))
           => ~ hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C2),S1),T_4)) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(com,fun(com,com),semi,C1),C2)),S_4),T_4)) ) ).

fof(arity_sum___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( ( finite_finite_1(T_1)
        & finite_finite_1(T_2) )
     => finite_finite_1(sum_sum(T_2,T_1)) ) ).

fof(fact_525_folding__one__idem_Oeq__fold__idem_H,axiom,
    ! [X_a,A_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),F),A_2),A_1)
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_614_vimage__UNIV,axiom,
    ! [X_b,X_a,F] : top_top(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),top_top(fun(X_b,bool))) ).

fof(fact_756_Inter__anti__mono,axiom,
    ! [X_a,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),B_1)))
     <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),B_1),A_1)) ) ).

fof(fact_920_min__max_OInf__fin_OF__eq,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),A_1) )
     <= linorder(X_a) ) ).

fof(fact_305_is__none__code_I2_J,axiom,
    ! [X_b,X] : ~ hBOOL(hAPP(option(X_b),bool,is_none(X_b),hAPP(X_b,option(X_b),some(X_b),X))) ).

fof(fact_689_Collect__neg__eq,axiom,
    ! [X_a,P_1] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),P_1)) ).

fof(fact_879_min__max_Oinf_Oleft__idem,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)
     <= linorder(X_a) ) ).

fof(fact_595_finite__Prod__UNIV,axiom,
    ! [X_b,X_a] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),top_top(fun(X_b,bool))))
       => hBOOL(hAPP(fun(product_prod(X_a,X_b),bool),bool,finite_finite(product_prod(X_a,X_b)),top_top(fun(product_prod(X_a,X_b),bool)))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ).

fof(tsy_c_Option_Ois__none_res,axiom,
    ! [X_b] : ti(fun(option(X_b),bool),is_none(X_b)) = is_none(X_b) ).

fof(fact_47_set__mp,axiom,
    ! [X_a,X_2,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ).

fof(fact_522_Sup__fin_Oidem,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),X) = ti(X_a,X) ) ).

fof(fact_447_diff__eq__diff__less__eq,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [A_2,B,C,D_1] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),C),D_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),A_2),B)
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),D_1))
          <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),B)) ) ) ) ).

fof(fact_151_xt1_I4_J,axiom,
    ! [X_a] :
      ( ! [C_1,B_2,A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),A_3))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C_1),A_3))
           <= ti(X_a,C_1) = ti(X_a,B_2) ) )
     <= order(X_a) ) ).

fof(fact_216_le__supI1,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,X,A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_3)) ) ) ).

fof(tsy_c_Finite__Set_Ocomp__fun__commute_res,axiom,
    ! [X_a,X_b] : finite100568337ommute(X_a,X_b) = ti(fun(fun(X_a,fun(X_b,X_b)),bool),finite100568337ommute(X_a,X_b)) ).

fof(fact_956_min__max_Osup__left__commute,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z))
     <= linorder(X_a) ) ).

fof(fact_383_Diff__cancel,axiom,
    ! [X_a,A_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),A_1) ).

fof(fact_622_sup__Inf__absorb,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(X_a,A_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ) ) ).

fof(fact_229_hoare__derivs_OSkip,axiom,
    ! [X_a,G_2,P_1] : hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),skip),P_1)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ).

fof(fact_973_le__maxI1,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)))
     <= linorder(X_a) ) ).

fof(fact_105_the__elem__eq,axiom,
    ! [X_a,X_2] : ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,the_elem(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) ).

fof(fact_44_insertI1,axiom,
    ! [X_a,A_2,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1))) ).

fof(fact_969_min__max_Ole__supI1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_2,X,A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_3))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2))) ) ) ).

fof(fact_358_Diff__Int,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) ).

fof(fact_980_Max_Oinsert,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
             => hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)) )
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_677_ComplI,axiom,
    ! [X_a,C,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)))
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) ) ).

fof(fact_52_set__eq__subset,axiom,
    ! [X_a,A_1,B_1] :
      ( ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1)
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ) ).

fof(fact_168_bot__apply,axiom,
    ! [X_b,X_a] :
      ( bot(X_a)
     => ! [X_2] : hAPP(X_b,X_a,bot_bot(fun(X_b,X_a)),X_2) = bot_bot(X_a) ) ).

fof(fact_275_the1__equality,axiom,
    ! [X_a,A_2,P_1] :
      ( ( hBOOL(hAPP(X_a,bool,P_1,A_2))
       => ti(X_a,A_2) = hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1) )
     <= ? [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
          & ! [Y_1] :
              ( ti(X_a,Y_1) = ti(X_a,X_1)
             <= hBOOL(hAPP(X_a,bool,P_1,Y_1)) ) ) ) ).

fof(fact_166_le__funD,axiom,
    ! [X_a,X_b] :
      ( ord(X_b)
     => ! [X_2,F,G] :
          ( hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G))
         => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(X_a,X_b,G,X_2))) ) ) ).

fof(fact_670_Sup__fin_Oeq__fold_H,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),X_2),A_1)
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_23_equalityI,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ( ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ) ).

fof(fact_136_Un__least,axiom,
    ! [X_a,B_1,A_1,C_2] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)),C_2))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),C_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ).

fof(fact_666_Sup__fin_Osubset__idem,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1))
             => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),B_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1) ) ) ) ).

fof(fact_728_Diff__eq,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1) ).

fof(fact_808_uminus__Sup,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),uminus_uminus(X_a)),A_1)) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1))
     <= comple61589808lgebra(X_a) ) ).

fof(fact_827_Pow__top,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1))) ).

fof(fact_588_sup__top__right,axiom,
    ! [X_a] :
      ( ! [X] : top_top(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),top_top(X_a))
     <= bounded_lattice_top(X_a) ) ).

fof(fact_995_min__max_Odistrib__imp1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y,Z] :
          ( ! [X_1,Y_1,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y_1),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),Y_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),Z_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z)) ) ) ).

fof(fact_332_Int__left__commute,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C_2)) ).

fof(fact_789_Union__empty,axiom,
    ! [X_a] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),bot_bot(fun(fun(X_a,bool),bool))) = bot_bot(fun(X_a,bool)) ).

fof(fact_101_pigeonhole__infinite,axiom,
    ! [X_b,X_a,F,A_1] :
      ( ( ? [X_1] :
            ( ~ hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(X_b,fun(X_a,bool),hAPP(fun(X_a,fun(X_b,bool)),fun(X_b,fun(X_a,bool)),combc(X_a,X_b,bool),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(fun(X_a,X_b),fun(X_a,fun(X_b,bool))),combb(X_b,fun(X_b,bool),X_a),fequal(X_b)),F)),hAPP(X_a,X_b,F,X_1))))))
            & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) )
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(help_fEx_1_1_U,axiom,
    ! [X_a,P,X] :
      ( ~ hBOOL(hAPP(X_a,bool,P,X))
      | hBOOL(hAPP(fun(X_a,bool),bool,fEx(X_a),P)) ) ).

fof(fact_586_rangeI,axiom,
    ! [X_a,X_b,F,X_2] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_b,X_a,F,X_2)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))))) ).

fof(fact_563_restrict__restrict,axiom,
    ! [X_a,X_b,M_1,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),A_1)),B_1) ).

fof(fact_128_Un__empty,axiom,
    ! [X_a,A_1,B_1] :
      ( ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
        & ti(fun(X_a,bool),B_1) = bot_bot(fun(X_a,bool)) )
    <=> bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) ) ).

fof(fact_551_restrict__in,axiom,
    ! [X_b,X_a,M_1,X_2,A_1] :
      ( hAPP(X_a,option(X_b),M_1,X_2) = hAPP(X_a,option(X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),A_1),X_2)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_369_inf__absorb1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = ti(X_a,X)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_597_finite__Plus__UNIV__iff,axiom,
    ! [X_a,X_b] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool))))
        & hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),top_top(fun(X_b,bool)))) )
    <=> hBOOL(hAPP(fun(sum_sum(X_a,X_b),bool),bool,finite_finite(sum_sum(X_a,X_b)),top_top(fun(sum_sum(X_a,X_b),bool)))) ) ).

fof(fact_327_Int__Diff,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),C_2) ).

fof(fact_854_Min__le,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)),X_2))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_165_le__funE,axiom,
    ! [X_a,X_b] :
      ( ! [X_2,F,G] :
          ( hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G))
         => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(X_a,X_b,G,X_2))) )
     <= ord(X_b) ) ).

fof(arity_HOL_Obool___Groups_Ouminus,axiom,
    uminus(bool) ).

fof(fact_606_top__le,axiom,
    ! [X_a] :
      ( ! [A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),top_top(X_a)),A_3))
         => top_top(X_a) = ti(X_a,A_3) )
     <= top(X_a) ) ).

fof(fact_71_empty__is__image,axiom,
    ! [X_a,X_b,F,A_1] :
      ( ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool))
    <=> bot_bot(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1) ) ).

fof(fact_26_equals0D,axiom,
    ! [X_a,A_2,A_1] :
      ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
     => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ).

fof(fact_193_single__stateE,axiom,
    ( hBOOL(hoare_511481251gleton)
   => ! [T_5] :
        ~ ! [S_1] : S_1 = T_5 ) ).

fof(fact_578_vimage__inter__cong,axiom,
    ! [X_b,X_a,Y_2,F,G,S] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),G),Y_2)),S) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),Y_2)),S)
     <= ! [W] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),W),S))
         => hAPP(X_a,X_b,F,W) = hAPP(X_a,X_b,G,W) ) ) ).

fof(fact_59_image__ident,axiom,
    ! [X_a,Y_3] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),combi(X_a)),Y_3) = ti(fun(X_a,bool),Y_3) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_Ostate__not__singleton_res,hypothesis,
    hoare_511481251gleton = ti(bool,hoare_511481251gleton) ).

fof(tsy_c_Big__Operators_Olattice__class_OInf__fin_res,axiom,
    ! [X_a] :
      ( ti(fun(fun(X_a,bool),X_a),big_lattice_Inf_fin(X_a)) = big_lattice_Inf_fin(X_a)
     <= lattice(X_a) ) ).

fof(fact_142_image__Un,axiom,
    ! [X_b,X_a,F,A_1,B_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B_1)) ).

fof(fact_81_subset__insertI,axiom,
    ! [X_a,B_1,A_2] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1))) ).

fof(fact_841_Pow__Compl,axiom,
    ! [X_a,A_1] : hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),collect(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),bool),hAPP(fun(fun(fun(X_a,bool),bool),bool),fun(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),bool)),combb(fun(fun(X_a,bool),bool),bool,fun(X_a,bool)),fEx(fun(X_a,bool))),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),hAPP(fun(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool))),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),fun(fun(X_a,bool),bool))),combc(fun(X_a,bool),fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(bool,bool))),fun(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool))),hAPP(fun(fun(fun(X_a,bool),fun(bool,bool)),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool))),fun(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(bool,bool))),fun(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)))),combb(fun(fun(X_a,bool),fun(bool,bool)),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),fun(X_a,bool)),combs(fun(X_a,bool),bool,bool)),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(bool,bool))),hAPP(fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),fun(bool,bool))),fun(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(bool,bool)))),combb(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),fun(bool,bool)),fun(X_a,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),fun(bool,bool))),combb(bool,fun(bool,bool),fun(X_a,bool)),fconj)),hAPP(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),hAPP(fun(fun(X_a,bool),fun(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),bool))),fun(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),bool))),combc(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),bool)),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),bool))),hAPP(fun(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),bool))),fun(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),bool)))),combb(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_a,bool),bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,fun(X_a,bool))),fequal(fun(X_a,bool)))),uminus_uminus(fun(X_a,bool)))))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),bool),hAPP(fun(fun(fun(X_a,bool),bool),bool),fun(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),bool)),combb(fun(fun(X_a,bool),bool),bool,fun(X_a,bool)),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),A_1)),pow(X_a))))) = hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)) ).

fof(fact_28_empty__iff,axiom,
    ! [X_a,C] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),bot_bot(fun(X_a,bool)))) ).

fof(help_If_2_1_T,axiom,
    ! [X_a,X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),hAPP(bool,fun(X_a,fun(X_a,X_a)),if(X_a),fFalse),X),Y) = ti(X_a,Y) ).

fof(fact_795_Sup__empty,axiom,
    ! [X_a] :
      ( bot_bot(X_a) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),bot_bot(fun(X_a,bool)))
     <= comple44059174attice(X_a) ) ).

fof(fact_368_le__infI2,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2)),X)) )
     <= semilattice_inf(X_a) ) ).

fof(fact_187_le__funI,axiom,
    ! [X_a,X_b] :
      ( ! [F,G] :
          ( ! [X_1] : hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1)))
         => hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G)) )
     <= ord(X_b) ) ).

fof(fact_362_inf__le1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),X)) ) ).

fof(fact_887_min__max_Ofold__inf__insert,axiom,
    ! [X_a] :
      ( ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_2),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),B),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_85_subset__image__iff,axiom,
    ! [X_a,X_b,B_1,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
    <=> ? [AA] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),AA),A_1))
          & ti(fun(X_a,bool),B_1) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),AA) ) ) ).

fof(fact_744_the__inv__f__f,axiom,
    ! [X_a,X_b,X_2,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => ti(X_a,X_2) = hAPP(X_b,X_a,hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),top_top(fun(X_a,bool))),F),hAPP(X_a,X_b,F,X_2)) ) ).

fof(fact_943_min__max_Osup__inf__distrib1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z)) ) ).

fof(fact_822_Pow__bottom,axiom,
    ! [X_a,B_1] : hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),bot_bot(fun(X_a,bool))),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1))) ).

fof(fact_422_Diff__insert,axiom,
    ! [X_a,A_1,A_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))) ).

fof(fact_537_comp__fun__commute_Ofun__left__comm,axiom,
    ! [X_a,X_b,X_2,Y_2,Z_2,F] :
      ( hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite100568337ommute(X_a,X_b),F))
     => hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,Y_2),Z_2)) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,Y_2),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z_2)) ) ).

fof(fact_701_minus__equation__iff,axiom,
    ! [X_a] :
      ( group_add(X_a)
     => ! [A_2,B] :
          ( hAPP(X_a,X_a,uminus_uminus(X_a),B) = ti(X_a,A_2)
        <=> hAPP(X_a,X_a,uminus_uminus(X_a),A_2) = ti(X_a,B) ) ) ).

fof(arity_fun___Lattices_Odistrib__lattice,axiom,
    ! [T_2,T_1] :
      ( distrib_lattice(T_1)
     => distrib_lattice(fun(T_2,T_1)) ) ).

fof(fact_576_ran__restrictD,axiom,
    ! [X_a,X_b,Y_2,M_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),hAPP(fun(X_b,option(X_a)),fun(X_a,bool),ran(X_b,X_a),hAPP(fun(X_b,bool),fun(X_b,option(X_a)),hAPP(fun(X_b,option(X_a)),fun(fun(X_b,bool),fun(X_b,option(X_a))),restrict_map(X_b,X_a),M_1),A_1))))
     => ? [X_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
          & hAPP(X_b,option(X_a),M_1,X_1) = hAPP(X_a,option(X_a),some(X_a),Y_2) ) ) ).

fof(fact_641_Inf__fin_Oinsert__idem,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ) ) ) ).

fof(fact_940_min__max_Oinf__sup__distrib2,axiom,
    ! [X_a] :
      ( ! [Y,Z,X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z)),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),X)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Z),X))
     <= linorder(X_a) ) ).

fof(fact_382_sup__inf__distrib2,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [Y,Z,X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Z),X)) ) ).

fof(fact_794_Sup__subset__mono,axiom,
    ! [X_a] :
      ( ! [A_1,B_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),B_1)))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) )
     <= comple44059174attice(X_a) ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(hAPP(bool,bool,fNot,P))
      | ~ hBOOL(P) ) ).

fof(fact_396_Un__Diff__cancel2,axiom,
    ! [X_a,B_1,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),A_1)),A_1) ).

fof(fact_934_Max_OF__eq,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_max(X_a)),A_1) )
     <= linorder(X_a) ) ).

fof(fact_379_inf__sup__distrib1,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) ) ).

fof(fact_958_min__max_Osup__assoc,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)),Z)
     <= linorder(X_a) ) ).

fof(fact_463_fun__upd__idem,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( ti(fun(X_b,X_a),F) = hAPP(X_a,fun(X_b,X_a),hAPP(X_b,fun(X_a,fun(X_b,X_a)),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,fun(X_b,X_a))),fun_upd(X_b,X_a),F),X_2),Y_2)
     <= hAPP(X_b,X_a,F,X_2) = ti(X_a,Y_2) ) ).

fof(fact_810_finite__Union,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,finite_finite(fun(X_a,bool)),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)))
       <= ! [M_2] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),M_2))
           <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),M_2),A_1)) ) ) ) ).

fof(fact_64_singleton__iff,axiom,
    ! [X_a,B,A_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))))
    <=> ti(X_a,A_2) = ti(X_a,B) ) ).

fof(fact_781_inj__on__cong,axiom,
    ! [X_b,X_a,F,G,A_1] :
      ( ! [A_4] :
          ( hAPP(X_a,X_b,F,A_4) = hAPP(X_a,X_b,G,A_4)
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_4),A_1)) )
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),G),A_1)) ) ) ).

fof(fact_62_singletonE,axiom,
    ! [X_a,B,A_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))))
     => ti(X_a,B) = ti(X_a,A_2) ) ).

fof(fact_779_inj__onI,axiom,
    ! [X_b,X_a,F,A_1] :
      ( ! [X_1,Y_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
         => ( ( hAPP(X_a,X_b,F,X_1) = hAPP(X_a,X_b,F,Y_1)
             => ti(X_a,X_1) = ti(X_a,Y_1) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_1),A_1)) ) )
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_408_Int__absorb2,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) ) ).

fof(fact_905_folding__one_Oeq__fold,axiom,
    ! [X_a,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => hAPP(fun(X_a,bool),X_a,Fa,A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),F),A_1) ) ) ).

fof(fact_738_the__inv__into__into,axiom,
    ! [X_a,X_b,B_1,X_2,F,A_1] :
      ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
         => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_b,X_a,hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),A_1),F),X_2)),B_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_78_subset__insertI2,axiom,
    ! [X_a,B,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),B_1))) ) ).

fof(fact_742_the__inv__into__f__f,axiom,
    ! [X_a,X_b,X_2,F,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
       => hAPP(X_b,X_a,hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),A_1),F),hAPP(X_a,X_b,F,X_2)) = ti(X_a,X_2) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_Otriple_Otriple__rec_res,axiom,
    ! [X_b,X_a] : hoare_1759541758le_rec(X_b,X_a) = ti(fun(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_2118899576triple(X_b),X_a)),hoare_1759541758le_rec(X_b,X_a)) ).

fof(fact_310_IntI,axiom,
    ! [X_a,B_1,C,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) ) ) ).

fof(fact_204_sup_Oleft__commute,axiom,
    ! [X_a] :
      ( ! [B_2,A_3,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),C_1))
     <= semilattice_sup(X_a) ) ).

fof(fact_675_Sup__fin_Oclosed,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)),A_1))
             <= ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool)))))) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) ) )
     <= lattice(X_a) ) ).

fof(fact_530_fold__sup__le__sup,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [C,B,A_1] :
          ( ( ! [X_1] :
                ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),B))
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),C),A_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B),C))) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_309_IntE,axiom,
    ! [X_a,C,A_1,B_1] :
      ( ~ ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
         => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_927_min__max_OInf__fin_Oremove,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => ( ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
               => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1) = ti(X_a,X_2) )
              & ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool))
               => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) ) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_208_inf__sup__aci_I6_J,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),Z)
     <= lattice(X_a) ) ).

fof(fact_546_comm__monoid__big_OF__eq,axiom,
    ! [X_b,X_a,G,A_1,F,Z_2,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool,hAPP(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool)),big_comm_monoid_big(X_a,X_b),F),Z_2),Fa))
     => ( ( hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,G),A_1) = hAPP(fun(X_b,bool),X_a,hAPP(X_a,fun(fun(X_b,bool),X_a),hAPP(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a)),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a))),finite_fold_image(X_a,X_b),F),G),Z_2),A_1)
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) )
        & ( ~ hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
         => hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,G),A_1) = ti(X_a,Z_2) ) ) ) ).

fof(fact_364_inf__le2,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Y))
     <= semilattice_inf(X_a) ) ).

fof(fact_57_finite__Collect__disjI,axiom,
    ! [X_a,P_1,Q_2] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2)))
        & hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),P_1)),Q_2)))) ) ).

fof(fact_317_inf__Int__eq,axiom,
    ! [X_a,R_1,S,X_1] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),R_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),S)),X_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),R_1),S))) ) ).

fof(fact_122_Un__left__commute,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),C_2)) ).

fof(fact_682_Collect__imp__eq,axiom,
    ! [X_a,P_1,Q_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fimplies),P_1)),Q_2)) ).

fof(fact_92_WT__bodiesD,axiom,
    ! [Pn,B_2] :
      ( ( hAPP(com,option(com),some(com),B_2) = hAPP(pname,option(com),body,Pn)
       => hBOOL(hAPP(com,bool,wt,B_2)) )
     <= hBOOL(wT_bodies) ) ).

fof(fact_84_image__mono,axiom,
    ! [X_b,X_a,F,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1))) ) ).

fof(fact_683_compl__le__swap2,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),Y)),X))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),Y)) )
     <= boolean_algebra(X_a) ) ).

fof(fact_623_Inf__fin_Oin__idem,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
     <= lattice(X_a) ) ).

fof(fact_965_min__max_Ole__supI,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_2,A_3,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),X))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2)),X)) ) ) ) ).

fof(fact_817_UNIV__eq__I,axiom,
    ! [X_a,A_1] :
      ( top_top(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
     <= ! [X_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ).

fof(fact_451_override__on__apply__in,axiom,
    ! [X_b,X_a,F,G,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
     => hAPP(X_a,X_b,G,A_2) = hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),A_2) ) ).

fof(fact_866_min__max_Ole__infI2,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_3,B_2,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)),X)) ) ) ).

fof(fact_409_Int__lower2,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),B_1)) ).

fof(fact_152_ord__le__eq__trans,axiom,
    ! [X_a] :
      ( ! [C_1,A_3,B_2] :
          ( ( ti(X_a,C_1) = ti(X_a,B_2)
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),C_1)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),B_2)) )
     <= ord(X_a) ) ).

fof(fact_686_compl__le__compl__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X_2)),hAPP(X_a,X_a,uminus_uminus(X_a),Y_2)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),X_2)) )
     <= boolean_algebra(X_a) ) ).

fof(fact_348_inf__left__idem,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) ) ).

fof(fact_315_inf1D2,axiom,
    ! [X_a,A_1,B_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,B_1,X_2))
     <= hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1),X_2)) ) ).

fof(fact_792_Sup__upper2,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [V_1,U,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),U),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),V_1),U))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),V_1),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1))) ) ) ) ).

fof(fact_950_min__max_Osup_Oidem,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_3] : ti(X_a,A_3) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),A_3) ) ).

fof(fact_547_vimageI,axiom,
    ! [X_b,X_a,B_1,F,A_2,B] :
      ( hAPP(X_b,X_a,F,A_2) = ti(X_a,B)
     => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),A_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),B_1)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),B_1)) ) ) ).

fof(fact_910_Sup__fin_OF__eq,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),semilattice_sup_sup(X_a)),A_1) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1) ) ) ).

fof(fact_476_minus__fold__remove,axiom,
    ! [X_a,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),finite_fold(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),X_a),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),combc(fun(X_a,bool),fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)))),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),insert(X_a)),bot_bot(fun(X_a,bool))))),B_1),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),A_1) ) ).

fof(fact_205_inf__sup__aci_I7_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)) ) ).

fof(fact_818_Un__Pow__subset,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_sup_sup(fun(fun(X_a,bool),bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1))),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)))) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q)) ) ).

fof(fact_793_Union__insert,axiom,
    ! [X_a,A_2,B_1] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_2),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),B_1)) ).

fof(fact_213_sup__ge2,axiom,
    ! [X_a] :
      ( ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)))
     <= semilattice_sup(X_a) ) ).

fof(fact_446_override__on__emptyset,axiom,
    ! [X_a,X_b,F,G] : ti(fun(X_a,X_b),F) = hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),bot_bot(fun(X_a,bool))) ).

fof(fact_123_Un__left__absorb,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) ).

fof(fact_188_triple_Osimps_I2_J,axiom,
    ! [X_b,X_a,F1,Fun1_1,Com_1,Fun2_1] : hAPP(fun(X_b,fun(state,bool)),X_a,hAPP(com,fun(fun(X_b,fun(state,bool)),X_a),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a)),F1,Fun1_1),Com_1),Fun2_1) = hAPP(hoare_2118899576triple(X_b),X_a,hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_2118899576triple(X_b),X_a),hoare_225284258e_case(X_b,X_a),F1),hAPP(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hoare_759811442triple(X_b),Fun1_1),Com_1),Fun2_1)) ).

fof(fact_443_folding__image__simple_Oremove,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa))
     => ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool)))))) = hAPP(fun(X_b,bool),X_a,Fa,A_1) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(fact_185_pred__subset__eq,axiom,
    ! [X_a,R_1,S] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),R_1),S))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),R_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),S))) ) ).

fof(conj_7,conjecture,
    hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),hAPP(fun(pname,bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(pname,hoare_2118899576triple(state)),fun(fun(pname,bool),fun(hoare_2118899576triple(state),bool)),image(pname,hoare_2118899576triple(state)),hAPP(fun(pname,com),fun(pname,hoare_2118899576triple(state)),hAPP(fun(com,hoare_2118899576triple(state)),fun(fun(pname,com),fun(pname,hoare_2118899576triple(state))),combb(com,hoare_2118899576triple(state),pname),hoare_Mirabelle_MGT),body_1)),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,y)),bot_bot(fun(hoare_2118899576triple(state),bool))))) ).

fof(fact_234_WTs__elim__cases_I6_J,axiom,
    ! [B,C] :
      ( hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)))
     => hBOOL(hAPP(com,bool,wt,C)) ) ).

fof(fact_959_empty__fold1SetE,axiom,
    ! [X_a,F,X_2] : ~ hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),fun(X_a,bool)),finite_fold1Set(X_a),F),bot_bot(fun(X_a,bool))),X_2)) ).

fof(tsy_c_Big__Operators_Ocomm__monoid__big_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool))),big_comm_monoid_big(X_a,X_b)) = big_comm_monoid_big(X_a,X_b) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice__top,axiom,
    bounded_lattice_top(bool) ).

fof(tsy_c_Complete__Lattice_OSup__class_OSup_res,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => complete_Sup_Sup(X_a) = ti(fun(fun(X_a,bool),X_a),complete_Sup_Sup(X_a)) ) ).

fof(fact_313_finite__Int,axiom,
    ! [X_a,G_2,Fa] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),Fa),G_2)))
     <= ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),G_2))
        | hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ) ).

fof(fact_791_Sup__upper,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1))) )
     <= comple44059174attice(X_a) ) ).

fof(fact_390_Int__empty__right,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))) = bot_bot(fun(X_a,bool)) ).

fof(fact_632_image__set__diff,axiom,
    ! [X_a,X_b,A_1,B_1,F] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | ~ hBOOL(P) ) ).

fof(fact_400_Int__insert__left__if0,axiom,
    ! [X_a,B_1,A_2,C_2] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)),C_2)
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),C_2)) ) ).

fof(fact_640_vimage__subsetI,axiom,
    ! [X_a,X_b,B_1,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1)),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B_1),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(fact_494_inj__on__def,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
    <=> ! [X_1] :
          ( ! [Xa] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Xa),A_1))
             => ( ti(X_a,Xa) = ti(X_a,X_1)
               <= hAPP(X_a,X_b,F,X_1) = hAPP(X_a,X_b,F,Xa) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ) ).

fof(fact_246_com_Osimps_I58_J,axiom,
    ! [Fun,Com_1,Pname_1] : hAPP(pname,com,body_1,Pname_1) != hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) ).

fof(fact_930_min__max_OInf__fin_Ohom__commute,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [N,H] :
          ( ! [X_1,Y_1] : hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),Y_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1))
         => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),N)
             => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N)) = hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),N)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N)) ) ) ) ).

fof(fact_338_Int__Collect,axiom,
    ! [X_a,X_2,A_1,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
        & hBOOL(hAPP(X_a,bool,P_1,X_2)) ) ) ).

fof(fact_982_Max__Un,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_1,A_1] :
          ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
             => ( hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),B_1))
               <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1) ) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_29_empty__Collect__eq,axiom,
    ! [X_a,P_1] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)
    <=> ! [X_1] : ~ hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ).

fof(fact_702_equation__minus__iff,axiom,
    ! [X_a] :
      ( group_add(X_a)
     => ! [A_2,B] :
          ( hAPP(X_a,X_a,uminus_uminus(X_a),A_2) = ti(X_a,B)
        <=> hAPP(X_a,X_a,uminus_uminus(X_a),B) = ti(X_a,A_2) ) ) ).

fof(fact_839_finite__image__set,axiom,
    ! [X_b,X_a,F,P_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,fun(X_a,bool)),fun(X_b,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_b,fun(X_a,bool)),fun(X_b,bool)),combb(fun(X_a,bool),bool,X_b),fEx(X_a)),hAPP(fun(X_a,bool),fun(X_b,fun(X_a,bool)),hAPP(fun(X_b,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_b,fun(X_a,bool))),combc(X_b,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_b,fun(X_a,fun(bool,bool))),fun(X_b,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_b,fun(X_a,fun(bool,bool))),fun(X_b,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_b),combs(X_a,bool,bool)),hAPP(fun(X_b,fun(X_a,bool)),fun(X_b,fun(X_a,fun(bool,bool))),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_b,fun(X_a,bool)),fun(X_b,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_b),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj)),hAPP(fun(X_a,X_b),fun(X_b,fun(X_a,bool)),hAPP(fun(X_b,fun(fun(X_a,X_b),fun(X_a,bool))),fun(fun(X_a,X_b),fun(X_b,fun(X_a,bool))),combc(X_b,fun(X_a,X_b),fun(X_a,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(X_b,fun(fun(X_a,X_b),fun(X_a,bool))),hAPP(fun(fun(X_b,bool),fun(fun(X_a,X_b),fun(X_a,bool))),fun(fun(X_b,fun(X_b,bool)),fun(X_b,fun(fun(X_a,X_b),fun(X_a,bool)))),combb(fun(X_b,bool),fun(fun(X_a,X_b),fun(X_a,bool)),X_b),combb(X_b,bool,X_a)),fequal(X_b))),F)))),P_1)))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))) ) ).

fof(fact_448_diff__eq__diff__eq,axiom,
    ! [X_a] :
      ( ab_group_add(X_a)
     => ! [A_2,B,C,D_1] :
          ( ( ti(X_a,A_2) = ti(X_a,B)
          <=> ti(X_a,C) = ti(X_a,D_1) )
         <= hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),A_2),B) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),C),D_1) ) ) ).

fof(fact_149_order__trans,axiom,
    ! [X_a] :
      ( ! [Z,X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),Z))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z)) ) )
     <= preorder(X_a) ) ).

fof(fact_966_min__max_Osup__absorb1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y) ) ) ).

fof(fact_222_sup__mono,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [B_2,D,A_3,C_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),C_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),C_1),D)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),D)) ) ) ) ).

fof(fact_594_UNIV__def,axiom,
    ! [X_a] : top_top(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(bool,fun(X_a,bool),combk(bool,X_a),fTrue)) ).

fof(fact_484_option_Osimps_I3_J,axiom,
    ! [X_a,A_8] : none(X_a) != hAPP(X_a,option(X_a),some(X_a),A_8) ).

fof(fact_20_emptyE,axiom,
    ! [X_a,A_2] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),bot_bot(fun(X_a,bool)))) ).

fof(fact_777_Inf__greatest,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [Z_2,A_1] :
          ( ! [X_1] :
              ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_2),X_1))
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_2),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1))) ) ) ).

fof(tsy_c_Fun_Oinj__on_res,axiom,
    ! [X_a,X_b] : inj_on(X_a,X_b) = ti(fun(fun(X_a,X_b),fun(fun(X_a,bool),bool)),inj_on(X_a,X_b)) ).

fof(fact_331_Diff__iff,axiom,
    ! [X_a,C,A_1,B_1] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_539_comp__fun__commute_Ofold__fun__comm,axiom,
    ! [X_a,X_b,X_2,Z_2,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite100568337ommute(X_a,X_b),F))
     => ( hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z_2)),A_1) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),A_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_593_top__apply,axiom,
    ! [X_b,X_a] :
      ( ! [X_2] : hAPP(X_b,X_a,top_top(fun(X_b,X_a)),X_2) = top_top(X_a)
     <= top(X_a) ) ).

fof(fact_201_sup_Oleft__idem,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2))
     <= semilattice_sup(X_a) ) ).

fof(fact_60_image__image,axiom,
    ! [X_b,X_a,X_c,F,G,A_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_c,bool),fun(X_b,bool),hAPP(fun(X_c,X_b),fun(fun(X_c,bool),fun(X_b,bool)),image(X_c,X_b),G),A_1)) = hAPP(fun(X_c,bool),fun(X_a,bool),hAPP(fun(X_c,X_a),fun(fun(X_c,bool),fun(X_a,bool)),image(X_c,X_a),hAPP(fun(X_c,X_b),fun(X_c,X_a),hAPP(fun(X_b,X_a),fun(fun(X_c,X_b),fun(X_c,X_a)),combb(X_b,X_a,X_c),F),G)),A_1) ).

fof(fact_13_finite__Collect__conjI,axiom,
    ! [X_a,Q_2,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),P_1)),Q_2))))
     <= ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2)))
        | hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))) ) ) ).

fof(help_COMBC_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(X_b,fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c)),combc(X_a,X_b,X_c),P),Q),R) = hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),Q) ).

fof(fact_167_le__fun__def,axiom,
    ! [X_a,X_b] :
      ( ord(X_b)
     => ! [F,G] :
          ( hBOOL(hAPP(fun(X_a,X_b),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),bool),ord_less_eq(fun(X_a,X_b)),F),G))
        <=> ! [X_1] : hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1))) ) ) ).

fof(fact_283_order__subst1,axiom,
    ! [X_a,X_b] :
      ( ( order(X_a)
        & order(X_b) )
     => ! [C,A_2,F,B] :
          ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),B),C))
           => ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,X_1)),hAPP(X_b,X_a,F,Y_1))) )
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),hAPP(X_b,X_a,F,C))) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),hAPP(X_b,X_a,F,B))) ) ) ).

fof(fact_878_min__max_Oinf__left__idem,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)) ) ).

fof(fact_191_sup__apply,axiom,
    ! [X_b,X_a] :
      ( ! [F,G,X_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_b,X_a,F,X_2)),hAPP(X_b,X_a,G,X_2)) = hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,X_a),fun(fun(X_b,X_a),fun(X_b,X_a)),semilattice_sup_sup(fun(X_b,X_a)),F),G),X_2)
     <= lattice(X_a) ) ).

fof(fact_852_Min_Osingleton,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2] : hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = ti(X_a,X_2) ) ).

fof(fact_561_restrict__out,axiom,
    ! [X_b,X_a,M_1,X_2,A_1] :
      ( none(X_b) = hAPP(X_a,option(X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),A_1),X_2)
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_883_min__diff__distrib__left,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),Z) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),X),Z)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),Y),Z)) ) ).

fof(fact_270_image__cong,axiom,
    ! [X_b,X_a,F,G,M,N] :
      ( ti(fun(X_a,bool),M) = ti(fun(X_a,bool),N)
     => ( ! [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),N))
           => hAPP(X_a,X_b,F,X_1) = hAPP(X_a,X_b,G,X_1) )
       => hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),M) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),G),N) ) ) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_Ohoare__derivs_res,axiom,
    ! [X_a] : hoare_1301688828derivs(X_a) = ti(fun(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool)),hoare_1301688828derivs(X_a)) ).

fof(fact_233_Comp,axiom,
    ! [X_a,D_1,R_1,G_2,P_1,C,Q_2] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),hAPP(com,com,hAPP(com,fun(com,com),semi,C),D_1)),R_1)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
       <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),Q_2),D_1),R_1)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(fact_938_minus__min__eq__max,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),hAPP(X_a,X_a,uminus_uminus(X_a),Y)) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y))
     <= linord219039673up_add(X_a) ) ).

fof(fact_237_com_Osimps_I12_J,axiom,
    ! [Com1_3,Com2_3] : skip != hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_3),Com2_3) ).

fof(fact_72_finite__subset,axiom,
    ! [X_a,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_17_finite__surj,axiom,
    ! [X_b,X_a,B_1,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B_1),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) ) ) ).

fof(fact_865_min__max_Ole__infI1,axiom,
    ! [X_a] :
      ( ! [B_2,A_3,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)),X))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),X)) )
     <= linorder(X_a) ) ).

fof(fact_145_hoare__derivs_OBody,axiom,
    ! [X_a,G_2,P_1,Q_2,Procs] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),body_1)),Q_2)),Procs)))
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),semilattice_sup_sup(fun(hoare_2118899576triple(X_a),bool)),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),body_1)),Q_2)),Procs))),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Q_2)),Procs))) ) ).

fof(fact_58_insert__compr__raw,axiom,
    ! [X_a,X_1,Xa] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),Xa) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),X_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),Xa))) ).

fof(fact_56_image__iff,axiom,
    ! [X_a,X_b,Z_2,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Z_2),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
    <=> ? [X_1] :
          ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
          & ti(X_a,Z_2) = hAPP(X_b,X_a,F,X_1) ) ) ).

fof(fact_428_Un__Int__assoc__eq,axiom,
    ! [X_a,A_1,B_1,C_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),A_1))
    <=> hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),C_2) ) ).

fof(fact_210_inf__sup__ord_I3_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)))
     <= lattice(X_a) ) ).

fof(fact_217_le__supI2,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [A_3,X,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2)) ) ) ).

fof(fact_196_sup_Oidem,axiom,
    ! [X_a] :
      ( ! [A_3] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),A_3) = ti(X_a,A_3)
     <= semilattice_sup(X_a) ) ).

fof(fact_65_insert__not__empty,axiom,
    ! [X_a,A_2,A_1] : bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1) ).

fof(fact_516_inj__on__image__Int,axiom,
    ! [X_a,X_b,B_1,A_1,F,C_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),C_2))
     => ( ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),C_2)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ) ).

fof(fact_501_is__none__def,axiom,
    ! [X_a,X_2] :
      ( none(X_a) = ti(option(X_a),X_2)
    <=> hBOOL(hAPP(option(X_a),bool,is_none(X_a),X_2)) ) ).

fof(fact_221_sup__least,axiom,
    ! [X_a] :
      ( ! [Z,Y,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)),X))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
     <= semilattice_sup(X_a) ) ).

fof(fact_360_Un__Diff__Int,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) = ti(fun(X_a,bool),A_1) ).

fof(fact_906_fold1__singleton__def,axiom,
    ! [X_a,A_2,G,F] :
      ( G = hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),F)
     => ti(X_a,A_2) = hAPP(fun(X_a,bool),X_a,G,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))) ) ).

fof(fact_929_min__max_OInf__fin_Ounion__inter,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
           => ( bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)
             => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),B_1)) ) ) )
     <= linorder(X_a) ) ).

fof(fact_889_Min__insert,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1))
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) )
     <= linorder(X_a) ) ).

fof(tsy_c_Set_Oimage_res,axiom,
    ! [X_a,X_b] : image(X_a,X_b) = ti(fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool))),image(X_a,X_b)) ).

fof(fact_877_min__max_Oinf_Oleft__commute,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_2,A_3,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),B_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),B_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),C_1)) ) ).

fof(fact_131_finite__UnI,axiom,
    ! [X_a,G_2,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),Fa),G_2)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),G_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_403_Int__insert__left,axiom,
    ! [X_a,B_1,A_2,C_2] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),C_2)) )
      & ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),C_2))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)),C_2) ) ) ).

fof(fact_912_Min_OF__eq,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),A_1) )
     <= linorder(X_a) ) ).

fof(fact_415_Int__Un__distrib,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C_2)) ).

fof(fact_757_Inter__empty,axiom,
    ! [X_a] : top_top(fun(X_a,bool)) = hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),bot_bot(fun(fun(X_a,bool),bool))) ).

fof(fact_885_Min_Oidem,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),X) = ti(X_a,X) ) ).

fof(tsy_c_Complete__Lattice_OInf__class_OInf_res,axiom,
    ! [X_a] :
      ( complete_Inf_Inf(X_a) = ti(fun(fun(X_a,bool),X_a),complete_Inf_Inf(X_a))
     <= comple44059174attice(X_a) ) ).

fof(tsy_c_Finite__Set_Ofold1Set_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),fun(X_a,bool))),finite_fold1Set(X_a)) = finite_fold1Set(X_a) ).

fof(tsy_c_fdisj_res,axiom,
    ti(fun(bool,fun(bool,bool)),fdisj) = fdisj ).

fof(fact_811_insert__partition,axiom,
    ! [X_a,X_2,Fa] :
      ( ~ hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_2),Fa))
     => ( ! [X_1] :
            ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_1),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),X_2),Fa)))
           => ! [Xa] :
                ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),Xa),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),X_2),Fa)))
               => ( ti(fun(X_a,bool),X_1) != ti(fun(X_a,bool),Xa)
                 => bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),X_1),Xa) ) ) )
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),X_2),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),Fa)) = bot_bot(fun(X_a,bool)) ) ) ).

fof(fact_158_linorder__linear,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
          | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
     <= linorder(X_a) ) ).

fof(fact_141_Un__upper1,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) ).

fof(fact_566_image__vimage__subset,axiom,
    ! [X_a,X_b,F,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),A_1))),A_1)) ).

fof(fact_625_finite__range__imageI,axiom,
    ! [X_c,X_a,X_b,F,G] :
      ( hBOOL(hAPP(fun(X_c,bool),bool,finite_finite(X_c),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),hAPP(fun(X_b,X_a),fun(X_b,X_c),hAPP(fun(X_a,X_c),fun(fun(X_b,X_a),fun(X_b,X_c)),combb(X_a,X_c,X_b),F),G)),top_top(fun(X_b,bool)))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),G),top_top(fun(X_b,bool))))) ) ).

fof(fact_162_le__bot,axiom,
    ! [X_a] :
      ( bot(X_a)
     => ! [A_3] :
          ( ti(X_a,A_3) = bot_bot(X_a)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),bot_bot(X_a))) ) ) ).

fof(fact_395_Un__Diff,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),C_2)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),C_2)) ).

fof(tsy_c_Map_Orestrict__map_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b)))),restrict_map(X_a,X_b)) = restrict_map(X_a,X_b) ).

fof(fact_467_map__upd__eqD1,axiom,
    ! [X_b,X_a,M_1,A_2,X_2,N_1,Y_2] :
      ( ti(X_b,X_2) = ti(X_b,Y_2)
     <= hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),N_1),A_2),hAPP(X_b,option(X_b),some(X_b),Y_2)) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M_1),A_2),hAPP(X_b,option(X_b),some(X_b),X_2)) ) ).

fof(fact_542_ran__empty,axiom,
    ! [X_b,X_a] : hAPP(fun(X_b,option(X_a)),fun(X_a,bool),ran(X_b,X_a),hAPP(option(X_a),fun(X_b,option(X_a)),combk(option(X_a),X_b),none(X_a))) = bot_bot(fun(X_a,bool)) ).

fof(fact_276_theI_H,axiom,
    ! [X_a,P_1] :
      ( ? [X_1] :
          ( ! [Y_1] :
              ( hBOOL(hAPP(X_a,bool,P_1,Y_1))
             => ti(X_a,Y_1) = ti(X_a,X_1) )
          & hBOOL(hAPP(X_a,bool,P_1,X_1)) )
     => hBOOL(hAPP(X_a,bool,P_1,hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1))) ) ).

fof(fact_238_com_Osimps_I16_J,axiom,
    ! [Fun_1,Com_2] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) != skip ).

fof(tsy_c_HOL_OThe_res,axiom,
    ! [X_a] : the_1(X_a) = ti(fun(fun(X_a,bool),X_a),the_1(X_a)) ).

fof(conj_5,hypothesis,
    hAPP(com,option(com),some(com),y) = hAPP(pname,option(com),body,pn) ).

fof(fact_936_min__max_Odistrib__inf__le,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Z))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z))))
     <= linorder(X_a) ) ).

fof(fact_478_inj__on__empty,axiom,
    ! [X_a,X_b,F] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),bot_bot(fun(X_a,bool)))) ).

fof(fact_782_Sup__fold__sup,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),bot_bot(X_a)),A_1) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= comple44059174attice(X_a) ) ).

fof(fact_371_le__infI,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_2,X,A_3] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_3))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2)) ) ) ) ).

fof(fact_796_Sup__inf__eq__bot__iff,axiom,
    ! [X_a] :
      ( ! [B_1,A_2] :
          ( ! [X_1] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_1))
             => bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),A_2) )
        <=> bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),B_1)),A_2) )
     <= comple1742628961attice(X_a) ) ).

fof(fact_263_folding__image__simple__idem_Oin__idem,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z_2),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => hAPP(fun(X_b,bool),X_a,Fa,A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) ) ) ) ).

fof(fact_53_subset__refl,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),A_1)) ).

fof(fact_680_compl__sup,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),hAPP(X_a,X_a,uminus_uminus(X_a),Y)) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)) ) ).

fof(fact_132_finite__Un,axiom,
    ! [X_a,Fa,G_2] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa))
        & hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),G_2)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),Fa),G_2))) ) ).

fof(fact_370_inf__absorb2,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ti(X_a,Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) )
     <= semilattice_inf(X_a) ) ).

fof(fact_197_sup__idem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),X) = ti(X_a,X) ) ).

fof(arity_HOL_Obool___Orderings_Opreorder,axiom,
    preorder(bool) ).

fof(fact_688_Compl__anti__mono,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_884_min__max_Ocomp__fun__idem__inf,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(fun(X_a,fun(X_a,X_a)),bool,finite_comp_fun_idem(X_a,X_a),ord_min(X_a)))
     <= linorder(X_a) ) ).

fof(fact_324_Diff__Int2,axiom,
    ! [X_a,A_1,C_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C_2)),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),C_2)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) ).

fof(fact_461_fun__upd__twist,axiom,
    ! [X_b,X_a,M_1,B,D_1,A_2,C] :
      ( ti(X_a,A_2) != ti(X_a,C)
     => hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),M_1),C),D_1)),A_2),B) = hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),M_1),A_2),B)),C),D_1) ) ).

fof(fact_470_fold__graph_H_Ointros_I1_J,axiom,
    ! [X_b,X_a,F,Z_2] : hBOOL(hAPP(X_b,bool,hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool))),fold_graph(X_a,X_b),F),Z_2),bot_bot(fun(X_a,bool))),Z_2)) ).

fof(fact_902_min__leastL,axiom,
    ! [X_a] :
      ( ! [X,Least] :
          ( ! [X_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Least),X_1))
         => ti(X_a,Least) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Least),X) )
     <= ord(X_a) ) ).

fof(fact_978_dual__min,axiom,
    ! [X_a] :
      ( ord_max(X_a) = hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,X_a)),min(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),ord_less_eq(X_a)))
     <= linorder(X_a) ) ).

fof(fact_22_insertE,axiom,
    ! [X_a,A_2,B,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),A_1)))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
       <= ti(X_a,A_2) != ti(X_a,B) ) ) ).

fof(fact_815_Union__least,axiom,
    ! [X_a,C_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)),C_2))
     <= ! [X_3] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),X_3),C_2))
         <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_3),A_1)) ) ) ).

fof(arity_HOL_Obool___Lattices_Odistrib__lattice,axiom,
    distrib_lattice(bool) ).

fof(fact_922_min__max_OInf__fin_Oinsert,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1))
             <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
     <= linorder(X_a) ) ).

fof(fact_311_DiffE,axiom,
    ! [X_a,C,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)))
     => ~ ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
         => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) ) ) ).

fof(fact_265_folding__image__simple__idem_Oinsert__idem,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z_2),G),Fa))
     => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(fact_354_inf__fun__def,axiom,
    ! [X_a,X_b] :
      ( lattice(X_b)
     => ! [F,G,X_1] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_inf_inf(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1)) = hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(X_a,X_b)),semilattice_inf_inf(fun(X_a,X_b)),F),G),X_1) ) ).

fof(fact_760_Int__eq__Inter,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),A_1),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),B_1),bot_bot(fun(fun(X_a,bool),bool))))) ).

fof(fact_137_Un__absorb2,axiom,
    ! [X_a,B_1,A_1] :
      ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ).

fof(fact_799_Sup__union__distrib,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_1,B_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),B_1)) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_31_all__not__in__conv,axiom,
    ! [X_a,A_1] :
      ( ! [X_1] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
    <=> ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) ) ).

fof(fact_445_folding__image__simple_Oneutral,axiom,
    ! [X_b,X_a,A_1,F,Z_2,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( ! [X_1] :
              ( hAPP(X_b,X_a,G,X_1) = ti(X_a,Z_2)
             <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1)) )
         => hAPP(fun(X_b,bool),X_a,Fa,A_1) = ti(X_a,Z_2) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa)) ) ).

fof(fact_954_min__max_Osup__left__idem,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)
     <= linorder(X_a) ) ).

fof(fact_724_Compl__Int,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) ).

fof(fact_148_xt1_I5_J,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ( ti(X_a,Y) = ti(X_a,X)
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) )
     <= order(X_a) ) ).

fof(fact_607_top__unique,axiom,
    ! [X_a] :
      ( ! [A_2] :
          ( ti(X_a,A_2) = top_top(X_a)
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),top_top(X_a)),A_2)) )
     <= top(X_a) ) ).

fof(fact_277_mk__disjoint__insert,axiom,
    ! [X_a,A_2,A_1] :
      ( ? [B_3] :
          ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),B_3))
          & hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_3) = ti(fun(X_a,bool),A_1) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ).

fof(fact_159_option_Oinject,axiom,
    ! [X_a,A_2,A_9] :
      ( ti(X_a,A_9) = ti(X_a,A_2)
    <=> hAPP(X_a,option(X_a),some(X_a),A_2) = hAPP(X_a,option(X_a),some(X_a),A_9) ) ).

fof(tsy_c_COMBK_res,axiom,
    ! [X_a,X_b] : combk(X_a,X_b) = ti(fun(X_a,fun(X_b,X_a)),combk(X_a,X_b)) ).

fof(fact_592_inf__top__left,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),top_top(X_a)),X)
     <= bounded_lattice_top(X_a) ) ).

fof(fact_224_sup__bot__left,axiom,
    ! [X_a] :
      ( ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),bot_bot(X_a)),X) = ti(X_a,X)
     <= bounded_lattice_bot(X_a) ) ).

fof(fact_899_min__max_Oinf__le__fold__inf,axiom,
    ! [X_a] :
      ( ! [C,B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),B),C)),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),C),A_1)))
           <= ! [X_1] :
                ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),X_1))
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_302_folding__one_Ounion__disjoint,axiom,
    ! [X_a,B_1,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
         => ( ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,A_1)),hAPP(fun(X_a,bool),X_a,Fa,B_1)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))
               <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = bot_bot(fun(X_a,bool)) )
             <= ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(tsy_c_hAPP_arg2,axiom,
    ! [X_a,X_c,B_1_1,B_2_1] : hAPP(X_a,X_c,B_1_1,B_2_1) = hAPP(X_a,X_c,B_1_1,ti(X_a,B_2_1)) ).

fof(fact_763_Inf__lower,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)),X_2))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
     <= comple44059174attice(X_a) ) ).

fof(fact_83_image__insert,axiom,
    ! [X_b,X_a,F,A_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),hAPP(X_b,X_a,F,A_2)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B_1)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),B_1)) ).

fof(fact_289_evalc__elim__cases_I1_J,axiom,
    ! [S_4,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,skip),S_4),T_4))
     => S_4 = T_4 ) ).

fof(fact_40_insert__commute,axiom,
    ! [X_a,X_2,Y_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_2),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ).

fof(fact_381_inf__sup__distrib2,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [Y,Z,X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Z),X)) ) ).

fof(help_ti_idem,axiom,
    ! [T,A] : ti(T,ti(T,A)) = ti(T,A) ).

fof(fact_774_inj__on__Inter,axiom,
    ! [X_b,X_a,F,S] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),S)))
       <= ! [A_5] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_5))
           <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),A_5),S)) ) )
     <= bot_bot(fun(fun(X_a,bool),bool)) != ti(fun(fun(X_a,bool),bool),S) ) ).

fof(fact_75_ext,axiom,
    ! [X_a,X_b,F,G] :
      ( ! [X_1] : hAPP(X_a,X_b,G,X_1) = hAPP(X_a,X_b,F,X_1)
     => ti(fun(X_a,X_b),F) = ti(fun(X_a,X_b),G) ) ).

fof(fact_639_finite__range__updI,axiom,
    ! [X_a,X_b,A_2,B,F] :
      ( hBOOL(hAPP(fun(option(X_a),bool),bool,finite_finite(option(X_a)),hAPP(fun(X_b,bool),fun(option(X_a),bool),hAPP(fun(X_b,option(X_a)),fun(fun(X_b,bool),fun(option(X_a),bool)),image(X_b,option(X_a)),F),top_top(fun(X_b,bool)))))
     => hBOOL(hAPP(fun(option(X_a),bool),bool,finite_finite(option(X_a)),hAPP(fun(X_b,bool),fun(option(X_a),bool),hAPP(fun(X_b,option(X_a)),fun(fun(X_b,bool),fun(option(X_a),bool)),image(X_b,option(X_a)),hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),F),A_2),hAPP(X_a,option(X_a),some(X_a),B))),top_top(fun(X_b,bool))))) ) ).

fof(fact_150_order__antisym,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [X,Y] :
          ( ( ti(X_a,Y) = ti(X_a,X)
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_720_Compl__disjoint,axiom,
    ! [X_a,A_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)) ).

fof(fact_562_restrict__map__def,axiom,
    ! [X_b,X_a,M_1,A_1,X_1] :
      ( ( hAPP(X_a,option(X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),A_1),X_1) = none(X_b)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
      & ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
       => hAPP(X_a,option(X_b),M_1,X_1) = hAPP(X_a,option(X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),A_1),X_1) ) ) ).

fof(fact_36_insertI2,axiom,
    ! [X_a,B,A_2,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),B_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),B_1)) ) ).

fof(fact_800_Union__UNIV,axiom,
    ! [X_a] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),top_top(fun(fun(X_a,bool),bool))) = top_top(fun(X_a,bool)) ).

fof(arity_HOL_Obool___Orderings_Otop,axiom,
    top(bool) ).

fof(fact_466_image__map__upd,axiom,
    ! [X_b,X_a,M_1,Y_2,X_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
     => hAPP(fun(X_a,bool),fun(option(X_b),bool),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(option(X_b),bool)),image(X_a,option(X_b)),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M_1),X_2),hAPP(X_b,option(X_b),some(X_b),Y_2))),A_1) = hAPP(fun(X_a,bool),fun(option(X_b),bool),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(option(X_b),bool)),image(X_a,option(X_b)),M_1),A_1) ) ).

fof(fact_89_singleton__conv,axiom,
    ! [X_a,A_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2)) ).

fof(fact_495_inj__on__id2,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),combi(X_a)),A_1)) ).

fof(fact_375_inf__bot__right,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),bot_bot(X_a)) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( ti(bool,P) = fTrue
      | ti(bool,P) = fFalse ) ).

fof(fact_172_Body__sound__lemma,axiom,
    ! [X_a,G_2,P_1,Q_2,Procs] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_902341502valids(X_a),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),body_1)),Q_2)),Procs)))
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_902341502valids(X_a),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),semilattice_sup_sup(fun(hoare_2118899576triple(X_a),bool)),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),body_1)),Q_2)),Procs))),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Q_2)),Procs))) ) ).

fof(fact_600_Int__UNIV__right,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),top_top(fun(X_a,bool))) = ti(fun(X_a,bool),A_1) ).

fof(fact_226_ospec,axiom,
    ! [X_a,X_2,P_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(option(X_a),fun(X_a,bool),set(X_a),A_1))) )
     => ( hBOOL(hAPP(X_a,bool,P_1,X_2))
       <= ti(option(X_a),A_1) = hAPP(X_a,option(X_a),some(X_a),X_2) ) ) ).

fof(fact_692_Compl__eq__Compl__iff,axiom,
    ! [X_a,A_1,B_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)
    <=> ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1) ) ).

fof(fact_656_surjI,axiom,
    ! [X_b,X_a,G,F] :
      ( hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),G),top_top(fun(X_b,bool))) = top_top(fun(X_a,bool))
     <= ! [X_1] : ti(X_a,X_1) = hAPP(X_b,X_a,G,hAPP(X_a,X_b,F,X_1)) ) ).

fof(fact_106_image__subsetI,axiom,
    ! [X_b,X_a,F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
         => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,X_1)),B_1)) )
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),B_1)) ) ).

fof(conj_2,hypothesis,
    hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,finite_finite(hoare_2118899576triple(state)),fa)) ).

fof(fact_70_image__empty,axiom,
    ! [X_b,X_a,F] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),bot_bot(fun(X_b,bool))) = bot_bot(fun(X_a,bool)) ).

fof(fact_634_finite__vimageD,axiom,
    ! [X_a,X_b,H,Fa] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),H),Fa)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),Fa))
       <= hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),H),top_top(fun(X_a,bool))) = top_top(fun(X_b,bool)) ) ) ).

fof(fact_748_inf__Inf__fold__inf,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_1),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),B_1),A_1) )
     <= comple44059174attice(X_a) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_69_image__is__empty,axiom,
    ! [X_b,X_a,F,A_1] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)
    <=> ti(fun(X_b,bool),A_1) = bot_bot(fun(X_b,bool)) ) ).

fof(fact_274_theI,axiom,
    ! [X_a,P_1,A_2] :
      ( ( ! [X_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,X_1))
           => ti(X_a,A_2) = ti(X_a,X_1) )
       => hBOOL(hAPP(X_a,bool,P_1,hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1))) )
     <= hBOOL(hAPP(X_a,bool,P_1,A_2)) ) ).

fof(fact_703_minus__minus,axiom,
    ! [X_a] :
      ( ! [A_3] : hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),A_3)) = ti(X_a,A_3)
     <= group_add(X_a) ) ).

fof(fact_267_the__sym__eq__trivial,axiom,
    ! [X_a,X_2] : ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(X_a,fun(X_a,bool),fequal(X_a),X_2)) ).

fof(help_If_1_1_T,axiom,
    ! [X_a,X,Y] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),hAPP(bool,fun(X_a,fun(X_a,X_a)),if(X_a),fTrue),X),Y) ).

fof(fact_8_finite__Collect__subsets,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,finite_finite(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),collect(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),combc(fun(X_a,bool),fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool))),A_1)))) ) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_Otriple_Otriple__case_res,axiom,
    ! [X_b,X_a] : ti(fun(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_2118899576triple(X_b),X_a)),hoare_225284258e_case(X_b,X_a)) = hoare_225284258e_case(X_b,X_a) ).

fof(fact_392_double__diff,axiom,
    ! [X_a,C_2,A_1,B_1] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),C_2),A_1)) = ti(fun(X_a,bool),A_1)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),C_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_517_inj__on__image__set__diff,axiom,
    ! [X_a,X_b,B_1,A_1,F,C_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),C_2))
     => ( ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),C_2)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ) ).

fof(fact_121_Un__iff,axiom,
    ! [X_a,C,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1))
        | hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_823_PowD,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1)))
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(tsy_c_Com_Ocom_OSKIP_res,axiom,
    skip = ti(com,skip) ).

fof(tsy_c_Set_OPow_res,axiom,
    ! [X_a] : pow(X_a) = ti(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),pow(X_a)) ).

fof(fact_303_folding__one_Oinsert__remove,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( ( ( bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
           => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) )
          & ( hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = ti(X_a,X_2)
           <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool)) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_510_dom__empty,axiom,
    ! [X_a,X_b] : hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(option(X_b),fun(X_a,option(X_b)),combk(option(X_b),X_a),none(X_b))) = bot_bot(fun(X_a,bool)) ).

fof(fact_942_min__max_Oinf__sup__distrib1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z)) ) ).

fof(fact_507_fold__inf__insert,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),B),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) ) ) ).

fof(fact_437_distrib__imp1,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] :
          ( ! [X_1,Y_1,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y_1),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),Y_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),Z_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) ) ) ).

fof(fact_721_Compl__disjoint2,axiom,
    ! [X_a,A_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)),A_1) ).

fof(fact_260_folding__image__simple__idem_Osubset__idem,axiom,
    ! [X_b,X_a,B_1,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z_2),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hAPP(fun(X_b,bool),X_a,Fa,A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,B_1)),hAPP(fun(X_b,bool),X_a,Fa,A_1))
         <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),B_1),A_1)) ) ) ) ).

fof(fact_435_Int__Collect__mono,axiom,
    ! [X_a,Q_2,P_1,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ( ! [X_1] :
            ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
           => ( hBOOL(hAPP(X_a,bool,Q_2,X_1))
             <= hBOOL(hAPP(X_a,bool,P_1,X_1)) ) )
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2)))) ) ) ).

fof(fact_39_insert__iff,axiom,
    ! [X_a,A_2,B,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
        | ti(X_a,A_2) = ti(X_a,B) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),A_1))) ) ).

fof(fact_266_folding__one_Oclosed,axiom,
    ! [X_a,A_1,F,Fa] :
      ( ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,Fa,A_1)),A_1))
           <= ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool)))))) )
         <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa)) ) ).

fof(fact_941_min__max_Osup__inf__distrib2,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [Y,Z,X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),X)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Z),X)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z)),X) ) ).

fof(fact_107_order__refl,axiom,
    ! [X_a] :
      ( preorder(X_a)
     => ! [X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),X)) ) ).

fof(arity_prod___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( ( finite_finite_1(T_2)
        & finite_finite_1(T_1) )
     => finite_finite_1(product_prod(T_2,T_1)) ) ).

fof(fact_707_le__minus__iff,axiom,
    ! [X_a] :
      ( ! [A_2,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),hAPP(X_a,X_a,uminus_uminus(X_a),B)))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),hAPP(X_a,X_a,uminus_uminus(X_a),A_2))) )
     <= ordered_ab_group_add(X_a) ) ).

fof(fact_133_Un__insert__left,axiom,
    ! [X_a,A_2,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)),C_2) ).

fof(fact_626_vimage__const,axiom,
    ! [X_b,X_a,C,A_1] :
      ( ( bot_bot(fun(X_b,bool)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),hAPP(X_a,fun(X_b,X_a),combk(X_a,X_b),C)),A_1)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) )
      & ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),hAPP(X_a,fun(X_b,X_a),combk(X_a,X_b),C)),A_1) = top_top(fun(X_b,bool))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) ) ) ).

fof(tsy_c_Partial__Function_Oflat__lub_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(fun(X_a,bool),X_a)),partial_flat_lub(X_a)) = partial_flat_lub(X_a) ).

fof(tsy_c_COMBC_res,axiom,
    ! [X_a,X_b,X_c] : combc(X_a,X_b,X_c) = ti(fun(fun(X_a,fun(X_b,X_c)),fun(X_b,fun(X_a,X_c))),combc(X_a,X_b,X_c)) ).

fof(tsy_c_Option_Ooption_ONone_res,axiom,
    ! [X_b] : none(X_b) = ti(option(X_b),none(X_b)) ).

fof(fact_288_evalc_OBody,axiom,
    ! [Pn,S0_1,S1_2] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(pname,com,body_1,Pn)),S0_1),S1_2))
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn))),S0_1),S1_2)) ) ).

fof(fact_194_sup__eq__bot__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( ( ti(X_a,Y_2) = bot_bot(X_a)
            & bot_bot(X_a) = ti(X_a,X_2) )
        <=> bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),Y_2) )
     <= bounded_lattice_bot(X_a) ) ).

fof(fact_544_fun__upd__None__restrict,axiom,
    ! [X_b,X_a,M_1,X_2,D_2] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),D_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),D_2)),X_2),none(X_b))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),D_2)) )
      & ( hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),D_2)),X_2),none(X_b)) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),D_2)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),D_2)) ) ) ).

fof(fact_126_Un__absorb,axiom,
    ! [X_a,A_1] : ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),A_1) ).

fof(fact_366_le__inf__iff,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X_2,Y_2,Z_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z_2)) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y_2),Z_2))) ) ) ).

fof(tsy_c_HOL_Oundefined_res,axiom,
    ! [X_a] : undefined(X_a) = ti(X_a,undefined(X_a)) ).

fof(fact_642_Inf__fin_Oinsert,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
             <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_469_map__upd__Some__unfold,axiom,
    ! [X_b,X_a,M_1,A_2,B,X_2,Y_2] :
      ( hAPP(X_b,option(X_a),hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),M_1),A_2),hAPP(X_a,option(X_a),some(X_a),B)),X_2) = hAPP(X_a,option(X_a),some(X_a),Y_2)
    <=> ( ( ti(X_b,X_2) != ti(X_b,A_2)
          & hAPP(X_b,option(X_a),M_1,X_2) = hAPP(X_a,option(X_a),some(X_a),Y_2) )
        | ( ti(X_a,B) = ti(X_a,Y_2)
          & ti(X_b,X_2) = ti(X_b,A_2) ) ) ) ).

fof(fact_664_Sup__fin_Oinsert__idem,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
           => hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)) ) ) ) ).

fof(fact_953_min__max_Osup_Oleft__idem,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2))
     <= linorder(X_a) ) ).

fof(fact_300_xt3,axiom,
    ! [X_b,X_a] :
      ( ! [C,F,B,A_2] :
          ( ( ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_1))
                 => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,Y_1)),hAPP(X_a,X_b,F,X_1))) )
             => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),C),hAPP(X_a,X_b,F,A_2))) )
           <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),C),hAPP(X_a,X_b,F,B))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),A_2)) )
     <= ( order(X_b)
        & order(X_a) ) ) ).

fof(fact_590_inf__eq__top__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( ( ti(X_a,Y_2) = top_top(X_a)
            & ti(X_a,X_2) = top_top(X_a) )
        <=> top_top(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),Y_2) )
     <= bounded_lattice_top(X_a) ) ).

fof(fact_773_Inf__less__eq,axiom,
    ! [X_a] :
      ( ! [U,A_1] :
          ( ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)),U)) )
         <= ! [V] :
              ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),V),U))
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),V),A_1)) ) )
     <= comple44059174attice(X_a) ) ).

fof(fact_493_inj__on__contraD,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => ( ( ( hAPP(X_a,X_b,F,X_2) != hAPP(X_a,X_b,F,Y_2)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
       <= ti(X_a,Y_2) != ti(X_a,X_2) ) ) ).

fof(fact_88_Collect__conv__if2,axiom,
    ! [X_a,P_1,A_2] :
      ( ( ~ hBOOL(hAPP(X_a,bool,P_1,A_2))
       => hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),fequal(X_a),A_2))),P_1)) = bot_bot(fun(X_a,bool)) )
      & ( hBOOL(hAPP(X_a,bool,P_1,A_2))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),fequal(X_a),A_2))),P_1)) ) ) ).

fof(fact_1_asm,axiom,
    ! [X_a,Ts,G_2] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),ord_less_eq(fun(hoare_2118899576triple(X_a),bool)),Ts),G_2))
     => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts)) ) ).

fof(fact_730_disjoint__eq__subset__Compl,axiom,
    ! [X_a,A_1,B_1] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1))) ) ).

fof(fact_826_Pow__not__empty,axiom,
    ! [X_a,A_1] : bot_bot(fun(fun(X_a,bool),bool)) != hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1) ).

fof(fact_693_Compl__iff,axiom,
    ! [X_a,C,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1))) ) ).

fof(fact_874_min__max_Oinf__assoc,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),Z)
     <= linorder(X_a) ) ).

fof(fact_138_Un__absorb1,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ti(fun(X_a,bool),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) ) ).

fof(fact_63_doubleton__eq__iff,axiom,
    ! [X_a,A_2,B,C,D_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool)))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),D_1),bot_bot(fun(X_a,bool))))
    <=> ( ( ti(X_a,A_2) = ti(X_a,D_1)
          & ti(X_a,C) = ti(X_a,B) )
        | ( ti(X_a,B) = ti(X_a,D_1)
          & ti(X_a,C) = ti(X_a,A_2) ) ) ) ).

fof(fact_363_inf__sup__ord_I2_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Y))
     <= lattice(X_a) ) ).

fof(fact_291_evalc_OSemi,axiom,
    ! [C1,S2_1,C0,S0_1,S1_2] :
      ( ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C1),S1_2),S2_1))
       => hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(com,fun(com,com),semi,C0),C1)),S0_1),S2_1)) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C0),S0_1),S1_2)) ) ).

fof(fact_602_subset__UNIV,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),top_top(fun(X_a,bool)))) ).

fof(fact_627_dom__const,axiom,
    ! [X_a,X_b,F] : top_top(fun(X_a,bool)) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(fun(X_a,X_b),fun(X_a,option(X_b)),hAPP(fun(X_b,option(X_b)),fun(fun(X_a,X_b),fun(X_a,option(X_b))),combb(X_b,option(X_b),X_a),some(X_b)),F)) ).

fof(fact_323_DiffD1,axiom,
    ! [X_a,C,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))) ) ).

fof(tsy_c_Finite__Set_Ofolding__image__simple__idem_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)))),finite908156982e_idem(X_a,X_b)) = finite908156982e_idem(X_a,X_b) ).

fof(fact_51_equalityD1,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     <= ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1) ) ).

fof(tsy_c_COMBI_res,axiom,
    ! [X_a] : ti(fun(X_a,X_a),combi(X_a)) = combi(X_a) ).

fof(fact_200_sup__commute,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)
     <= semilattice_sup(X_a) ) ).

fof(tsy_c_Big__Operators_Osemilattice__big_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool)),big_semilattice_big(X_a)) = big_semilattice_big(X_a) ).

fof(fact_322_IntD1,axiom,
    ! [X_a,C,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)))
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) ) ).

fof(fact_871_min__max_Oinf__mono,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_2,D,A_3,C_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),D))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),C_1),D))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),C_1)) ) ) ).

fof(fact_555_vimage__ident,axiom,
    ! [X_a,Y_3] : ti(fun(X_a,bool),Y_3) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),vimage(X_a,X_a),combi(X_a)),Y_3) ).

fof(help_COMBS_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_b,X_c,hAPP(X_a,fun(X_b,X_c),P,R),hAPP(X_a,X_b,Q,R)) = hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c)),combs(X_a,X_b,X_c),P),Q),R) ).

fof(fact_541_comp__fun__commute_Ofold__insert2,axiom,
    ! [X_a,X_b,Z_2,X_2,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z_2)),A_1) = hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ) )
     <= hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite100568337ommute(X_a,X_b),F)) ) ).

fof(fact_304_folding__one_Oremove,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,Fa,A_1)
             <= bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) )
            & ( ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,Fa,A_1)
             <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool)) ) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_255_folding__one__idem_Ohom__commute,axiom,
    ! [X_a,N,H,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( ! [X_1,Y_1] : hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_1),Y_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N))
         => ( hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,Fa,N)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N))
           <= ti(fun(X_a,bool),N) != bot_bot(fun(X_a,bool)) ) ) ) ) ).

fof(fact_93_imageE,axiom,
    ! [X_a,X_b,B,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
     => ~ ! [X_1] :
            ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),A_1))
           <= ti(X_a,B) = hAPP(X_b,X_a,F,X_1) ) ) ).

fof(fact_540_comp__fun__commute_Ofold__insert,axiom,
    ! [X_a,X_b,Z_2,X_2,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite100568337ommute(X_a,X_b),F))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),A_1))
         <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ) ).

fof(arity_fun___Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( lattice(T_1)
     => lattice(fun(T_2,T_1)) ) ).

fof(fact_252_com_Osimps_I19_J,axiom,
    ! [Pname] : skip != hAPP(pname,com,body_1,Pname) ).

fof(fact_538_ranI,axiom,
    ! [X_b,X_a,M_1,A_2,B] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_b,option(X_a)),fun(X_a,bool),ran(X_b,X_a),M_1)))
     <= hAPP(X_a,option(X_a),some(X_a),B) = hAPP(X_b,option(X_a),M_1,A_2) ) ).

fof(fact_118_ball__Un,axiom,
    ! [X_a,P_1,A_1,B_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)))
         => hBOOL(hAPP(X_a,bool,P_1,X_1)) )
    <=> ( ! [X_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,X_1))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
        & ! [X_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,X_1))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_1)) ) ) ) ).

fof(fact_609_finite__Collect__not,axiom,
    ! [X_a,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),P_1))))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ) ).

fof(fact_960_fold1Set__nonempty,axiom,
    ! [X_a,F,A_1,X_2] :
      ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
     <= hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),fun(X_a,bool)),finite_fold1Set(X_a),F),A_1),X_2)) ) ).

fof(fact_797_Sup__singleton,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_2] : ti(X_a,A_2) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))) ) ).

fof(fact_472_comp__fun__idem__sup,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => hBOOL(hAPP(fun(X_a,fun(X_a,X_a)),bool,finite_comp_fun_idem(X_a,X_a),semilattice_sup_sup(X_a))) ) ).

fof(fact_695_Compl__eq,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))) ).

fof(fact_228_folding__one__idem_Osubset__idem,axiom,
    ! [X_a,B_1,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1))
           => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,B_1)),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,A_1) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_337_Int__absorb,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),A_1) = ti(fun(X_a,bool),A_1) ).

fof(fact_567_restrict__map__to__empty,axiom,
    ! [X_a,X_b,M_1,X_1] : none(X_b) = hAPP(X_a,option(X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),bot_bot(fun(X_a,bool))),X_1) ).

fof(fact_559_vimage__mono,axiom,
    ! [X_b,X_a,F,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),B_1))) ) ).

fof(fact_804_Sup__binary,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_2,B] : hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool))))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),B) ) ).

fof(fact_596_finite__option__UNIV,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool))))
    <=> hBOOL(hAPP(fun(option(X_a),bool),bool,finite_finite(option(X_a)),top_top(fun(option(X_a),bool)))) ) ).

fof(fact_876_min__max_Oinf__left__commute,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Z)) ) ).

fof(fact_160_constant,axiom,
    ! [X_a,G_2,P_1,C,Q_2,C_2] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
       <= hBOOL(C_2) )
     => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),hAPP(bool,fun(X_a,fun(state,bool)),hAPP(fun(X_a,fun(bool,fun(state,bool))),fun(bool,fun(X_a,fun(state,bool))),combc(X_a,bool,fun(state,bool)),hAPP(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(bool,fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(bool,fun(state,bool))),fun(fun(X_a,fun(state,fun(bool,bool))),fun(X_a,fun(bool,fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(bool,fun(state,bool)),X_a),combc(state,bool,bool)),hAPP(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(X_a,fun(state,bool)),fun(X_a,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fconj)),P_1))),C_2)),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(fact_480_map__upd__nonempty,axiom,
    ! [X_a,X_b,T_3,K,X_2] :
      ~ ! [X_1] : none(X_b) = hAPP(X_a,option(X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),T_3),K),hAPP(X_b,option(X_b),some(X_b),X_2)),X_1) ).

fof(fact_536_comp__fun__commute_Ofold__rec,axiom,
    ! [X_a,X_b,Z_2,X_2,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite100568337ommute(X_a,X_b),F))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),A_1) ) ) ) ).

fof(fact_855_Min__antimono,axiom,
    ! [X_a] :
      ( ! [M,N] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),M),N))
         => ( ti(fun(X_a,bool),M) != bot_bot(fun(X_a,bool))
           => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N))
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),N)),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),M))) ) ) )
     <= linorder(X_a) ) ).

fof(fact_545_Cantor__Bernstein__aux,axiom,
    ! [X_b,X_a,G,B_1,F,A_1] :
    ? [A_6] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_6),A_1))
      & ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_6))
         => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),G),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B_1),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_6))))) )
      & ? [H_1] :
          ( ! [X_1] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),A_6)))
             => ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,H_1,X_1)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),B_1),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_6))))
                & ti(X_a,X_1) = hAPP(X_b,X_a,G,hAPP(X_a,X_b,H_1,X_1)) ) )
          & ! [X_1] :
              ( hAPP(X_a,X_b,H_1,X_1) = hAPP(X_a,X_b,F,X_1)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_6)) ) ) ) ).

fof(arity_HOL_Obool___Complete__Lattice_Ocomplete__distrib__lattice,axiom,
    comple1742628961attice(bool) ).

fof(fact_412_Un__Int__distrib2,axiom,
    ! [X_a,B_1,C_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),C_2),A_1)) ).

fof(fact_767_Inf__empty,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),bot_bot(fun(X_a,bool))) = top_top(X_a) ) ).

fof(fact_184_sup1I1,axiom,
    ! [X_a,B_1,A_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1),X_2))
     <= hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ).

fof(fact_643_Inf__fin_Osubset__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
           => ( hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),B_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1))
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_696_compl__eq__compl__iff,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X_2,Y_2] :
          ( hAPP(X_a,X_a,uminus_uminus(X_a),Y_2) = hAPP(X_a,X_a,uminus_uminus(X_a),X_2)
        <=> ti(X_a,Y_2) = ti(X_a,X_2) ) ) ).

fof(fact_931_min__max_OInf__fin_Oclosed,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
           => ( ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool))))))
             => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)),A_1)) ) ) ) ) ).

fof(fact_410_Int__lower1,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),A_1)) ).

fof(arity_HOL_Obool___Orderings_Obot,axiom,
    bot(bool) ).

fof(fact_179_hoare__sound,axiom,
    ! [X_a,G_2,Ts] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_902341502valids(X_a),G_2),Ts))
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts)) ) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_Ohoare__valids_res,axiom,
    ! [X_a] : ti(fun(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool)),hoare_902341502valids(X_a)) = hoare_902341502valids(X_a) ).

fof(fact_180_bot__empty__eq,axiom,
    ! [X_a,X_1] :
      ( hBOOL(hAPP(X_a,bool,bot_bot(fun(X_a,bool)),X_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),bot_bot(fun(X_a,bool)))) ) ).

fof(fact_747_f__the__inv__into__f,axiom,
    ! [X_a,X_b,Y_2,F,A_1] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Y_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
       => ti(X_b,Y_2) = hAPP(X_a,X_b,F,hAPP(X_b,X_a,hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),A_1),F),Y_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_483_option_Osimps_I2_J,axiom,
    ! [X_a,A_8] : hAPP(X_a,option(X_a),some(X_a),A_8) != none(X_a) ).

fof(fact_61_singleton__inject,axiom,
    ! [X_a,A_2,B] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool)))
     => ti(X_a,B) = ti(X_a,A_2) ) ).

fof(fact_377_inf__sup__absorb,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)) = ti(X_a,X)
     <= lattice(X_a) ) ).

fof(fact_10_empty__subsetI,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),bot_bot(fun(X_a,bool))),A_1)) ).

fof(fact_870_min__max_Oinf__greatest,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [Z,X,Y] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z))) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_215_le__sup__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2,Z_2] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),Z_2)) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),Y_2)),Z_2)) )
     <= semilattice_sup(X_a) ) ).

fof(fact_937_min__max_Odistrib__sup__le,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),Z))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Z))))
     <= linorder(X_a) ) ).

fof(fact_334_Int__commute,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) ).

fof(fact_858_Min_Ounion__inter,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
           => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)))
             <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) != bot_bot(fun(X_a,bool)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_146_linorder__le__cases,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         <= ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_454_fun__upd__image,axiom,
    ! [X_b,X_a,F,Y_2,X_2,A_1] :
      ( ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),A_1) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),Y_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
      & ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),A_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ).

fof(fact_9_finite__imageI,axiom,
    ! [X_b,X_a,H,Fa] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa))
     => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),H),Fa))) ) ).

fof(fact_487_fold__image__empty,axiom,
    ! [X_b,X_a,F,G,Z_2] : hAPP(fun(X_b,bool),X_a,hAPP(X_a,fun(fun(X_b,bool),X_a),hAPP(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a)),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a))),finite_fold_image(X_a,X_b),F),G),Z_2),bot_bot(fun(X_b,bool))) = ti(X_a,Z_2) ).

fof(fact_140_Un__upper2,axiom,
    ! [X_a,B_1,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) ).

fof(fact_673_Sup__fin_Ounion__disjoint,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
               => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),B_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))
                 <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) ) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) ) ) ).

fof(fact_558_vimage__Int,axiom,
    ! [X_b,X_a,F,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B_1)) ).

fof(fact_384_Diff__empty,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))) = ti(fun(X_a,bool),A_1) ).

fof(fact_820_Union__Pow__eq,axiom,
    ! [X_a,A_1] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1)) = ti(fun(X_a,bool),A_1) ).

fof(fact_54_rev__image__eqI,axiom,
    ! [X_b,X_a,B,F,X_2,A_1] :
      ( ( ti(X_b,B) = hAPP(X_a,X_b,F,X_2)
       => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),B),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_801_Union__Un__distrib,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_sup_sup(fun(fun(X_a,bool),bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),B_1)) ).

fof(fact_947_Max_Oidem,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),X) ) ).

fof(fact_177_sup1CI,axiom,
    ! [X_a,A_1,B_1,X_2] :
      ( ( ~ hBOOL(hAPP(X_a,bool,B_1,X_2))
       => hBOOL(hAPP(X_a,bool,A_1,X_2)) )
     => hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1),X_2)) ) ).

fof(fact_577_vimageE,axiom,
    ! [X_a,X_b,A_2,F,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1)))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,A_2)),B_1)) ) ).

fof(fact_104_domD,axiom,
    ! [X_a,X_b,A_2,M_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),M_1)))
     => ? [B_4] : hAPP(X_a,option(X_b),M_1,A_2) = hAPP(X_b,option(X_b),some(X_b),B_4) ) ).

fof(fact_645_Inf__fin_Oeq__fold__idem_H,axiom,
    ! [X_a] :
      ( ! [A_2,A_1] :
          ( hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),A_2),A_1)
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_286_MGT__def,axiom,
    ! [C] : hAPP(fun(state,fun(state,bool)),hoare_2118899576triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state))),hoare_759811442triple(state),fequal(state)),C),hAPP(com,fun(state,fun(state,bool)),evalc,C)) = hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,C) ).

fof(arity_HOL_Obool___Groups_Ominus,axiom,
    minus(bool) ).

fof(fact_529_inf__le__fold__inf,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [C,B,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B),C)),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),C),A_1)))
           <= ! [X_1] :
                ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),X_1))
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_227_folding__one__idem_Ounion__idem,axiom,
    ! [X_a,B_1,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
         => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
           => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,A_1)),hAPP(fun(X_a,bool),X_a,Fa,B_1)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))
             <= ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool)) ) ) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa)) ) ).

fof(fact_307_inf1E,axiom,
    ! [X_a,A_1,B_1,X_2] :
      ( ~ ( ~ hBOOL(hAPP(X_a,bool,B_1,X_2))
         <= hBOOL(hAPP(X_a,bool,A_1,X_2)) )
     <= hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1),X_2)) ) ).

fof(fact_984_Max_Oeq__fold__idem_H,axiom,
    ! [X_a] :
      ( ! [A_2,A_1] :
          ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_max(X_a)),A_2),A_1) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_802_Un__eq__Union,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),A_1),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),B_1),bot_bot(fun(fun(X_a,bool),bool))))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) ).

fof(arity_HOL_Obool___Finite__Set_Ofinite,axiom,
    finite_finite_1(bool) ).

fof(fact_125_Un__def,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1))) ).

fof(fact_605_finite__fun__UNIVD2,axiom,
    ! [X_a,X_b] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),top_top(fun(X_b,bool))))
     <= hBOOL(hAPP(fun(fun(X_a,X_b),bool),bool,finite_finite(fun(X_a,X_b)),top_top(fun(fun(X_a,X_b),bool)))) ) ).

fof(fact_102_com_Osimps_I6_J,axiom,
    ! [Pname_2,Pname_1] :
      ( hAPP(pname,com,body_1,Pname_2) = hAPP(pname,com,body_1,Pname_1)
    <=> ti(pname,Pname_1) = ti(pname,Pname_2) ) ).

fof(fact_401_Int__insert__right__if0,axiom,
    ! [X_a,B_1,A_2,A_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1))
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ).

fof(fact_752_InterE,axiom,
    ! [X_a,X_4,A_1,C_2] :
      ( ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_4),C_2))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),X_4)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),C_2))) ) ).

fof(fact_492_inj__on__iff,axiom,
    ! [X_a,X_b,Y_2,X_2,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),A_1))
         => ( hAPP(X_a,X_b,F,Y_2) = hAPP(X_a,X_b,F,X_2)
          <=> ti(X_a,Y_2) = ti(X_a,X_2) ) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ).

fof(fact_176_sup1E,axiom,
    ! [X_a,A_1,B_1,X_2] :
      ( ( hBOOL(hAPP(X_a,bool,B_1,X_2))
       <= ~ hBOOL(hAPP(X_a,bool,A_1,X_2)) )
     <= hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1),X_2)) ) ).

fof(fact_406_Int__greatest,axiom,
    ! [X_a,B_1,C_2,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),B_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),A_1)) ) ).

fof(fact_518_union__fold__insert,axiom,
    ! [X_a,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),finite_fold(X_a,fun(X_a,bool)),insert(X_a)),B_1),A_1) ) ).

fof(fact_665_Sup__fin_Oinsert,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
             => hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)) )
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_497_inj__on__Int,axiom,
    ! [X_a,X_b,B_1,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),B_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) ) ) ).

fof(fact_557_vimage__Un,axiom,
    ! [X_b,X_a,F,A_1,B_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1)) ).

fof(fact_651_finite__map__freshness,axiom,
    ! [X_a,X_b,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)))
     => ( ? [X_1] : hAPP(X_a,option(X_b),F,X_1) = none(X_b)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ) ).

fof(fact_293_evalc_OWhileFalse,axiom,
    ! [C,B,S_3] :
      ( ~ hBOOL(hAPP(state,bool,B,S_3))
     => hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)),S_3),S_3)) ) ).

fof(fact_624_inj__singleton,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,fun(X_a,bool)),fun(fun(X_a,bool),bool),inj_on(X_a,fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),insert(X_a)),bot_bot(fun(X_a,bool)))),top_top(fun(X_a,bool)))) ).

fof(fact_535_comp__fun__commute_Ofold__insert__remove,axiom,
    ! [X_a,X_b,Z_2,X_2,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) )
     <= hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite100568337ommute(X_a,X_b),F)) ) ).

fof(fact_144_insert__is__Un,axiom,
    ! [X_a,A_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1) ).

fof(fact_900_dual__max,axiom,
    ! [X_a] :
      ( hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,X_a)),max(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),ord_less_eq(X_a))) = ord_min(X_a)
     <= linorder(X_a) ) ).

fof(fact_571_finite__vimage__IntI,axiom,
    ! [X_b,X_a,H,A_1,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),bool),inj_on(X_b,X_a),H),A_1))
       => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),H),Fa)),A_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_872_min__max_Ole__infE,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,A_3,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)))
         => ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_3)) ) ) ) ).

fof(fact_407_Int__absorb1,axiom,
    ! [X_a,B_1,A_1] :
      ( ti(fun(X_a,bool),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ).

fof(fact_806_sup__Sup__fold__sup,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [B_1,A_1] :
          ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),B_1),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_1),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_882_min__max_Oinf_Oidem,axiom,
    ! [X_a] :
      ( ! [A_3] : ti(X_a,A_3) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),A_3)
     <= linorder(X_a) ) ).

fof(fact_181_rev__predicate1D,axiom,
    ! [X_a,Q_2,P_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,P_1,X_2))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),P_1),Q_2))
       => hBOOL(hAPP(X_a,bool,Q_2,X_2)) ) ) ).

fof(fact_684_compl__le__swap1,axiom,
    ! [X_a] :
      ( ! [Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,uminus_uminus(X_a),X)))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,uminus_uminus(X_a),Y))) )
     <= boolean_algebra(X_a) ) ).

fof(tsy_c_Com_Ocom_OWhile_res,axiom,
    while = ti(fun(fun(state,bool),fun(com,com)),while) ).

fof(fact_343_inf__sup__aci_I2_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Z) ) ).

fof(fact_732_vimage__if,axiom,
    ! [X_b,X_a,B_1,D_1,C,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
       => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),D_1),A_1))
           => hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),hAPP(X_a,fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(X_b,X_a)),combc(X_b,X_a,X_a),hAPP(X_a,fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(X_a,fun(X_b,fun(X_a,X_a))),combc(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B_1))),C)),D_1)),A_1) = top_top(fun(X_b,bool)) )
          & ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),hAPP(X_a,fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(X_b,X_a)),combc(X_b,X_a,X_a),hAPP(X_a,fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(X_a,fun(X_b,fun(X_a,X_a))),combc(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B_1))),C)),D_1)),A_1) = ti(fun(X_b,bool),B_1)
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),D_1),A_1)) ) ) )
      & ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),D_1),A_1))
           => hAPP(fun(X_b,bool),fun(X_b,bool),uminus_uminus(fun(X_b,bool)),B_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),hAPP(X_a,fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(X_b,X_a)),combc(X_b,X_a,X_a),hAPP(X_a,fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(X_a,fun(X_b,fun(X_a,X_a))),combc(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B_1))),C)),D_1)),A_1) )
          & ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),D_1),A_1))
           => hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),hAPP(X_a,fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(X_b,X_a)),combc(X_b,X_a,X_a),hAPP(X_a,fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(X_a,fun(X_b,fun(X_a,X_a))),combc(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),B_1))),C)),D_1)),A_1) = bot_bot(fun(X_b,bool)) ) )
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) ) ) ).

fof(fact_100_finite_Osimps,axiom,
    ! [X_a,A_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_2))
    <=> ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_2)
        | ? [A_5,A_4] :
            ( ti(fun(X_a,bool),A_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_4),A_5)
            & hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_5)) ) ) ) ).

fof(fact_709_diff__eq,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,uminus_uminus(X_a),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),X),Y)
     <= boolean_algebra(X_a) ) ).

fof(fact_502_is__none__code_I1_J,axiom,
    ! [X_a] : hBOOL(hAPP(option(X_a),bool,is_none(X_a),none(X_a))) ).

fof(fact_585_range__composition,axiom,
    ! [X_b,X_a,X_c,F,G] : hAPP(fun(X_c,bool),fun(X_a,bool),hAPP(fun(X_c,X_a),fun(fun(X_c,bool),fun(X_a,bool)),image(X_c,X_a),F),hAPP(fun(X_b,bool),fun(X_c,bool),hAPP(fun(X_b,X_c),fun(fun(X_b,bool),fun(X_c,bool)),image(X_b,X_c),G),top_top(fun(X_b,bool)))) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),hAPP(fun(X_b,X_c),fun(X_b,X_a),hAPP(fun(X_c,X_a),fun(fun(X_b,X_c),fun(X_b,X_a)),combb(X_c,X_a,X_b),F),G)),top_top(fun(X_b,bool))) ).

fof(arity_HOL_Obool___Lattices_Osemilattice__sup,axiom,
    semilattice_sup(bool) ).

fof(fact_550_vimage__code,axiom,
    ! [X_a,X_b,F,A_1,X_2] :
      ( hBOOL(hAPP(X_b,bool,A_1,hAPP(X_a,X_b,F,X_2)))
    <=> hBOOL(hAPP(X_a,bool,hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),A_1),X_2)) ) ).

fof(fact_853_Min__in,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
           => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)),A_1)) ) )
     <= linorder(X_a) ) ).

fof(fact_731_surj__Compl__image__subset,axiom,
    ! [X_b,X_a,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1))),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),uminus_uminus(fun(X_b,bool)),A_1))))
     <= hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))) = top_top(fun(X_a,bool)) ) ).

fof(fact_844_sup__Inf2__distrib,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [B_1,A_1] :
          ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
             => ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
               => hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a)),hAPP(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,bool)),hAPP(fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),fun(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,bool))),combb(fun(X_a,fun(X_a,bool)),fun(X_a,bool),X_a),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a))),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(X_a,bool)))),combc(X_a,fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),hAPP(fun(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))))),combb(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))),X_a),combs(X_a,fun(X_a,bool),fun(X_a,bool))),hAPP(fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),hAPP(fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))))),combb(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),X_a),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combs(X_a,bool,bool))),hAPP(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),hAPP(fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),fun(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,fun(X_a,fun(bool,bool))))),combb(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool))),X_a),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj))),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,fun(X_a,bool)))),combc(X_a,fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),hAPP(fun(fun(fun(X_a,X_a),fun(X_a,bool)),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))))),combb(fun(fun(X_a,X_a),fun(X_a,bool)),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))),X_a),combb(fun(X_a,X_a),fun(X_a,bool),X_a)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool)),X_a),combb(X_a,bool,X_a)),fequal(X_a)))),semilattice_sup_sup(X_a)))))),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(bool,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(bool,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combb(bool,bool,X_a)),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1))))))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),B_1)) ) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_482_fold__empty,axiom,
    ! [X_b,X_a,F,Z_2] : hAPP(fun(X_b,bool),X_a,hAPP(X_a,fun(fun(X_b,bool),X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,bool),X_a)),finite_fold(X_b,X_a),F),Z_2),bot_bot(fun(X_b,bool))) = ti(X_a,Z_2) ).

fof(fact_790_Sup__le__iff,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_1,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)),B))
        <=> ! [X_1] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),B)) ) ) ) ).

fof(fact_552_vimageD,axiom,
    ! [X_a,X_b,A_2,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),A_1)))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,A_2)),A_1)) ) ).

fof(fact_235_WTs__elim__cases_I4_J,axiom,
    ! [C1,C2] :
      ( ~ ( hBOOL(hAPP(com,bool,wt,C1))
         => ~ hBOOL(hAPP(com,bool,wt,C2)) )
     <= hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(com,fun(com,com),semi,C1),C2))) ) ).

fof(fact_908_fold1__belowI,axiom,
    ! [X_a] :
      ( ! [A_2,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),semilattice_inf_inf(X_a)),A_1)),A_2)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= semilattice_inf(X_a) ) ).

fof(fact_977_min__max_Osup__Inf__absorb,axiom,
    ! [X_a] :
      ( ! [A_2,A_1] :
          ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)) = ti(X_a,A_2)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_850_Max__eqI,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ! [Y_1] :
                ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_2))
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_1),A_1)) )
           => ( hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1) = ti(X_a,X_2)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_667_Sup__fin_Ounion__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
           => ( ( hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),B_1))
               <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) ) )
     <= lattice(X_a) ) ).

fof(tsy_c_Com_Obody_res,hypothesis,
    body = ti(fun(pname,option(com)),body) ).

fof(fact_654_injI,axiom,
    ! [X_a,X_b,F] :
      ( ! [X_1,Y_1] :
          ( ti(X_a,Y_1) = ti(X_a,X_1)
         <= hAPP(X_a,X_b,F,Y_1) = hAPP(X_a,X_b,F,X_1) )
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(fact_869_min__max_Ole__infI,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_2,X,A_3] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_3)) ) ) ).

fof(fact_513_folding__image__simple_Oeq__fold__g,axiom,
    ! [X_b,X_a,A_1,F,Z_2,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => hAPP(fun(X_b,bool),X_a,hAPP(X_a,fun(fun(X_b,bool),X_a),hAPP(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a)),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a))),finite_fold_image(X_a,X_b),F),G),Z_2),A_1) = hAPP(fun(X_b,bool),X_a,Fa,A_1) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa)) ) ).

fof(fact_74_insert__mono,axiom,
    ! [X_a,A_2,C_2,D_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),C_2)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),D_2)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),D_2)) ) ).

fof(fact_697_uminus__apply,axiom,
    ! [X_b,X_a] :
      ( ! [A_1,X_2] : hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),uminus_uminus(fun(X_b,X_a)),A_1),X_2) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_b,X_a,A_1,X_2))
     <= uminus(X_a) ) ).

fof(fact_894_Min_Oinsert__remove,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ( bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
             => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) )
            & ( ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
             <= hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = bot_bot(fun(X_a,bool)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_33_finite__code,axiom,
    ! [X_a] :
      ( finite_finite_1(X_a)
     => ! [A_1] : hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_230_folding__one__idem_Oinsert__idem,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa)) ) ).

fof(tsy_c_member_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(fun(X_a,bool),bool)),member(X_a)) = member(X_a) ).

fof(tsy_c_Finite__Set_Ofold1_res,axiom,
    ! [X_a] : finite_fold1(X_a) = ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a)),finite_fold1(X_a)) ).

fof(fact_857_Min__eqI,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( ! [Y_1] :
                ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_1))
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_1),A_1)) )
           => ( ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_249_com_Osimps_I48_J,axiom,
    ! [Com1,Com2,Pname] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) != hAPP(pname,com,body_1,Pname) ).

fof(fact_419_Diff__insert__absorb,axiom,
    ! [X_a,X_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = ti(fun(X_a,bool),A_1) ) ).

fof(fact_417_distrib__sup__le,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)))) ) ).

fof(fact_928_min__max_OInf__fin_Oinsert__remove,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool))
             => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) )
            & ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
             => ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_726_Compl__eq__Diff__UNIV,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),top_top(fun(X_a,bool))),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1) ).

fof(fact_183_sup1I2,axiom,
    ! [X_a,A_1,B_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,B_1,X_2))
     => hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1),X_2)) ) ).

fof(fact_372_inf__greatest,axiom,
    ! [X_a] :
      ( ! [Z,X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Z)) ) )
     <= semilattice_inf(X_a) ) ).

fof(fact_174_conseq2,axiom,
    ! [X_a,Q_2,G_2,P_1,C,Q_4] :
      ( ( ! [Z_3,S_1] :
            ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_2,Z_3),S_1))
           <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_4,Z_3),S_1)) )
       => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_4)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(fact_256_the__elem__def,axiom,
    ! [X_a,X_4] : hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),fequal(fun(X_a,bool)),X_4)),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),insert(X_a)),bot_bot(fun(X_a,bool))))) = hAPP(fun(X_a,bool),X_a,the_elem(X_a),X_4) ).

fof(fact_672_Sup__fin_Oremove,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) != bot_bot(fun(X_a,bool))
               => hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) )
              & ( ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)
               <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) ) ) ) )
     <= lattice(X_a) ) ).

fof(fact_109_the_Osimps,axiom,
    ! [X_a,X] : hAPP(option(X_a),X_a,the(X_a),hAPP(X_a,option(X_a),some(X_a),X)) = ti(X_a,X) ).

fof(fact_67_finite__insert,axiom,
    ! [X_a,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_515_finite__surj__inj,axiom,
    ! [X_a,F,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),F),A_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),F),A_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_715_sup__compl__top,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X] : top_top(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,uminus_uminus(X_a),X)) ) ).

fof(fact_161_Body1,axiom,
    ! [X_a,Pn_1,G_2,P_1,Q_2,Procs] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),hAPP(pname,fun(X_a,fun(state,bool)),P_1,Pn_1)),hAPP(pname,com,body_1,Pn_1)),hAPP(pname,fun(X_a,fun(state,bool)),Q_2,Pn_1))),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
       <= hBOOL(hAPP(fun(pname,bool),bool,hAPP(pname,fun(fun(pname,bool),bool),member(pname),Pn_1),Procs)) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),semilattice_sup_sup(fun(hoare_2118899576triple(X_a),bool)),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),body_1)),Q_2)),Procs))),hAPP(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool),hAPP(fun(pname,hoare_2118899576triple(X_a)),fun(fun(pname,bool),fun(hoare_2118899576triple(X_a),bool)),image(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a)),hAPP(fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,hoare_2118899576triple(X_a))),combs(pname,fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,com),fun(pname,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),combs(pname,com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hAPP(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hAPP(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),fun(fun(pname,fun(X_a,fun(state,bool))),fun(pname,fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))))),combb(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),pname),hoare_759811442triple(X_a)),P_1)),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Q_2)),Procs))) ) ).

fof(fact_250_WT_OSemi,axiom,
    ! [C1,C0] :
      ( ( hBOOL(hAPP(com,bool,wt,C1))
       => hBOOL(hAPP(com,bool,wt,hAPP(com,com,hAPP(com,fun(com,com),semi,C0),C1))) )
     <= hBOOL(hAPP(com,bool,wt,C0)) ) ).

fof(fact_840_finite__Collect__bounded__ex,axiom,
    ! [X_b,X_a,Q_2,P_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,fun(X_a,bool)),fun(X_b,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_b,fun(X_a,bool)),fun(X_b,bool)),combb(fun(X_a,bool),bool,X_b),fEx(X_a)),hAPP(fun(X_b,fun(X_a,bool)),fun(X_b,fun(X_a,bool)),hAPP(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(X_b,fun(X_a,bool)),fun(X_b,fun(X_a,bool))),combb(fun(X_a,bool),fun(X_a,bool),X_b),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),P_1))),Q_2)))))
      <=> ! [Y_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,Y_1))
           => hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(X_a,fun(X_b,bool),hAPP(fun(X_b,fun(X_a,bool)),fun(X_a,fun(X_b,bool)),combc(X_b,X_a,bool),Q_2),Y_1)))) ) ) ) ).

fof(fact_528_dom__fun__upd,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool)))) = hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),F),X_2),Y_2))
       <= ti(option(X_a),Y_2) = none(X_a) )
      & ( hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),F),X_2),Y_2)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F))
       <= none(X_a) != ti(option(X_a),Y_2) ) ) ).

fof(fact_314_finite__Diff,axiom,
    ! [X_a,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_979_Max__insert,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(tsy_c_Natural_Oevalc_res,axiom,
    evalc = ti(fun(com,fun(state,fun(state,bool))),evalc) ).

fof(fact_199_inf__sup__aci_I5_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),X) ) ).

fof(fact_219_sup__absorb1,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [Y,X] :
          ( ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) ) ).

fof(fact_932_fold1__def,axiom,
    ! [X_a,F,A_1] : hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),F),A_1) = hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),fun(X_a,bool)),finite_fold1Set(X_a),F),A_1)) ).

fof(fact_477_image__eq__fold__image,axiom,
    ! [X_b,X_a,F,A_1] :
      ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,bool)),fun(fun(X_b,bool),fun(fun(X_a,bool),fun(X_b,bool))),hAPP(fun(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_a,fun(X_b,bool)),fun(fun(X_b,bool),fun(fun(X_a,bool),fun(X_b,bool)))),finite_fold_image(fun(X_b,bool),X_a),semilattice_sup_sup(fun(X_b,bool))),hAPP(fun(X_b,bool),fun(X_a,fun(X_b,bool)),hAPP(fun(X_a,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_b,bool),fun(X_a,fun(X_b,bool))),combc(X_a,fun(X_b,bool),fun(X_b,bool)),hAPP(fun(X_a,X_b),fun(X_a,fun(fun(X_b,bool),fun(X_b,bool))),hAPP(fun(X_b,fun(fun(X_b,bool),fun(X_b,bool))),fun(fun(X_a,X_b),fun(X_a,fun(fun(X_b,bool),fun(X_b,bool)))),combb(X_b,fun(fun(X_b,bool),fun(X_b,bool)),X_a),insert(X_b)),F)),bot_bot(fun(X_b,bool)))),bot_bot(fun(X_b,bool))),A_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_706_minus__le__iff,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [A_2,B] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),B)),A_2))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),A_2)),B)) ) ) ).

fof(fact_719_finite__compl,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ) ).

fof(fact_652_rangeE,axiom,
    ! [X_a,X_b,B,F] :
      ( ~ ! [X_1] : ti(X_a,B) != hAPP(X_b,X_a,F,X_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))))) ) ).

fof(fact_189_triple_Orecs,axiom,
    ! [X_b,X_a,F1,Fun1_1,Com_1,Fun2_1] : hAPP(hoare_2118899576triple(X_b),X_a,hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a))),fun(hoare_2118899576triple(X_b),X_a),hoare_1759541758le_rec(X_b,X_a),F1),hAPP(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hoare_759811442triple(X_b),Fun1_1),Com_1),Fun2_1)) = hAPP(fun(X_b,fun(state,bool)),X_a,hAPP(com,fun(fun(X_b,fun(state,bool)),X_a),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),X_a)),F1,Fun1_1),Com_1),Fun2_1) ).

fof(fact_616_Diff__UNIV,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),top_top(fun(X_a,bool))) = bot_bot(fun(X_a,bool)) ).

fof(fact_117_UnI1,axiom,
    ! [X_a,B_1,C,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) ) ).

fof(tsy_c_fAll_res,axiom,
    ! [X_a] : fAll(X_a) = ti(fun(fun(X_a,bool),bool),fAll(X_a)) ).

fof(arity_HOL_Obool___Lattices_Oboolean__algebra,axiom,
    boolean_algebra(bool) ).

fof(fact_178_conseq12,axiom,
    ! [X_a,Q_2,P_1,G_2,P_3,C,Q_4] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_3),C),Q_4)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
     => ( ! [Z_3,S_1] :
            ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_1))
           => ! [S_2] :
                ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_2,Z_3),S_2))
               <= ! [Z_4] :
                    ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_4,Z_4),S_2))
                   <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_3,Z_4),S_1)) ) ) )
       => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ) ).

fof(tsy_c_Set_Othe__elem_res,axiom,
    ! [X_a] : the_elem(X_a) = ti(fun(fun(X_a,bool),X_a),the_elem(X_a)) ).

fof(fact_988_Max_Ounion__inter,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_1,A_1] :
          ( ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) != bot_bot(fun(X_a,bool))
             => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),B_1)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_661_Sup__fin_Osingleton,axiom,
    ! [X_a] :
      ( ! [X_2] : hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) = ti(X_a,X_2)
     <= lattice(X_a) ) ).

fof(fact_503_inj__on__fun__updI,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),Y_2),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(tsy_c_Big__Operators_Olinorder__class_OMax_res,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ti(fun(fun(X_a,bool),X_a),big_linorder_Max(X_a)) = big_linorder_Max(X_a) ) ).

fof(fact_739_Inf__fold__inf,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),top_top(X_a)),A_1) = hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= comple44059174attice(X_a) ) ).

fof(fact_330_Int__iff,axiom,
    ! [X_a,C,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_805_Union__Int__subset,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_inf_inf(fun(fun(X_a,bool),bool)),A_1),B_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),B_1)))) ).

fof(fact_881_min__max_Oinf_Ocommute,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),B_2),A_3)
     <= linorder(X_a) ) ).

fof(arity_fun___Complete__Lattice_Ocomplete__boolean__algebra,axiom,
    ! [T_2,T_1] :
      ( comple61589808lgebra(T_1)
     => comple61589808lgebra(fun(T_2,T_1)) ) ).

fof(fact_116_UnI2,axiom,
    ! [X_a,A_1,C,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) ) ).

fof(fact_812_UnionI,axiom,
    ! [X_a,A_1,X_4,C_2] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_4),C_2))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),X_4))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),C_2))) ) ) ).

fof(fact_521_comp__fun__idem_Ofold__insert__idem2,axiom,
    ! [X_a,X_b,Z_2,X_2,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_a,X_b),F))
     => ( hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z_2)),A_1) = hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_170_finite__pointwise,axiom,
    ! [X_b,X_a,P_1,Q_2,G_2,P_3,C0_1,Q_4,U_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),U_2))
     => ( ! [P_4] :
            ( hBOOL(hAPP(fun(hoare_2118899576triple(X_b),bool),bool,hAPP(fun(hoare_2118899576triple(X_b),bool),fun(fun(hoare_2118899576triple(X_b),bool),bool),hoare_1301688828derivs(X_b),G_2),hAPP(fun(hoare_2118899576triple(X_b),bool),fun(hoare_2118899576triple(X_b),bool),hAPP(hoare_2118899576triple(X_b),fun(fun(hoare_2118899576triple(X_b),bool),fun(hoare_2118899576triple(X_b),bool)),insert(hoare_2118899576triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hoare_759811442triple(X_b),hAPP(X_a,fun(X_b,fun(state,bool)),P_3,P_4)),hAPP(X_a,com,C0_1,P_4)),hAPP(X_a,fun(X_b,fun(state,bool)),Q_4,P_4))),bot_bot(fun(hoare_2118899576triple(X_b),bool)))))
           => hBOOL(hAPP(fun(hoare_2118899576triple(X_b),bool),bool,hAPP(fun(hoare_2118899576triple(X_b),bool),fun(fun(hoare_2118899576triple(X_b),bool),bool),hoare_1301688828derivs(X_b),G_2),hAPP(fun(hoare_2118899576triple(X_b),bool),fun(hoare_2118899576triple(X_b),bool),hAPP(hoare_2118899576triple(X_b),fun(fun(hoare_2118899576triple(X_b),bool),fun(hoare_2118899576triple(X_b),bool)),insert(hoare_2118899576triple(X_b)),hAPP(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b),hAPP(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)),hAPP(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hoare_759811442triple(X_b),hAPP(X_a,fun(X_b,fun(state,bool)),P_1,P_4)),hAPP(X_a,com,C0_1,P_4)),hAPP(X_a,fun(X_b,fun(state,bool)),Q_2,P_4))),bot_bot(fun(hoare_2118899576triple(X_b),bool))))) )
       => ( hBOOL(hAPP(fun(hoare_2118899576triple(X_b),bool),bool,hAPP(fun(hoare_2118899576triple(X_b),bool),fun(fun(hoare_2118899576triple(X_b),bool),bool),hoare_1301688828derivs(X_b),G_2),hAPP(fun(X_a,bool),fun(hoare_2118899576triple(X_b),bool),hAPP(fun(X_a,hoare_2118899576triple(X_b)),fun(fun(X_a,bool),fun(hoare_2118899576triple(X_b),bool)),image(X_a,hoare_2118899576triple(X_b)),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_2118899576triple(X_b)),hAPP(fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_2118899576triple(X_b))),combs(X_a,fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)),hAPP(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hAPP(fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),fun(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),combs(X_a,com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))))),combb(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),X_a),hoare_759811442triple(X_b)),P_1)),C0_1)),Q_2)),U_2)))
         <= hBOOL(hAPP(fun(hoare_2118899576triple(X_b),bool),bool,hAPP(fun(hoare_2118899576triple(X_b),bool),fun(fun(hoare_2118899576triple(X_b),bool),bool),hoare_1301688828derivs(X_b),G_2),hAPP(fun(X_a,bool),fun(hoare_2118899576triple(X_b),bool),hAPP(fun(X_a,hoare_2118899576triple(X_b)),fun(fun(X_a,bool),fun(hoare_2118899576triple(X_b),bool)),image(X_a,hoare_2118899576triple(X_b)),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_2118899576triple(X_b)),hAPP(fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,hoare_2118899576triple(X_b))),combs(X_a,fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)),hAPP(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hAPP(fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),fun(fun(X_a,com),fun(X_a,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),combs(X_a,com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),hAPP(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),hAPP(fun(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b)))),fun(fun(X_a,fun(X_b,fun(state,bool))),fun(X_a,fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))))),combb(fun(X_b,fun(state,bool)),fun(com,fun(fun(X_b,fun(state,bool)),hoare_2118899576triple(X_b))),X_a),hoare_759811442triple(X_b)),P_3)),C0_1)),Q_4)),U_2))) ) ) ) ).

fof(fact_257_folding__one_Oinsert,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( ( ( hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,A_1))
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(tsy_c_fimplies_res,axiom,
    fimplies = ti(fun(bool,fun(bool,bool)),fimplies) ).

fof(fact_139_subset__Un__eq,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
    <=> ti(fun(X_a,bool),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) ) ).

fof(fact_253_WT_OSkip,axiom,
    hBOOL(hAPP(com,bool,wt,skip)) ).

fof(fact_76_mem__def,axiom,
    ! [X_a,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
    <=> hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ).

fof(fact_203_sup__left__idem,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) ) ).

fof(fact_316_inf1D1,axiom,
    ! [X_a,A_1,B_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1),X_2))
     => hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ).

fof(fact_914_fold1__below__iff,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),A_1)),X_2))
            <=> ? [X_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),X_2))
                  & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_741_the__inv__into__f__eq,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( ( hAPP(X_a,X_b,F,X_2) = ti(X_b,Y_2)
       => ( ti(X_a,X_2) = hAPP(X_b,X_a,hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),A_1),F),Y_2)
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_531_inj__on__iff__surj,axiom,
    ! [X_b,X_a,A_7,A_1] :
      ( ( ? [G_1] : ti(fun(X_a,bool),A_1) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),G_1),A_7)
      <=> ? [F_1] :
            ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F_1),A_1)),A_7))
            & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F_1),A_1)) ) )
     <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) ) ).

fof(fact_329_Diff__Int__distrib,axiom,
    ! [X_a,C_2,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C_2),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)) ).

fof(fact_32_empty__def,axiom,
    ! [X_a] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(bool,fun(X_a,bool),combk(bool,X_a),fFalse)) ).

fof(fact_919_min__max_OInf__fin_Osingleton,axiom,
    ! [X_a] :
      ( ! [X_2] : ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
     <= linorder(X_a) ) ).

fof(fact_898_Min_Oclosed,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_1] :
          ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
           => ( ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool))))))
             => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)),A_1)) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_481_inj__Some,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,option(X_a)),fun(fun(X_a,bool),bool),inj_on(X_a,option(X_a)),some(X_a)),A_1)) ).

fof(help_fAll_1_1_U,axiom,
    ! [X_a,X,P] :
      ( hBOOL(hAPP(X_a,bool,P,X))
      | ~ hBOOL(hAPP(fun(X_a,bool),bool,fAll(X_a),P)) ) ).

fof(fact_499_finite__imageD,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       <= hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),bool),inj_on(X_b,X_a),F),A_1)) ) ) ).

fof(fact_471_comp__fun__idem__insert,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),bool,finite_comp_fun_idem(X_a,fun(X_a,bool)),insert(X_a))) ).

fof(fact_970_min__max_Ole__sup__iff,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,Y_2,Z_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),Y_2)),Z_2))
        <=> ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),Z_2)) ) ) ) ).

fof(arity_fun___Groups_Ouminus,axiom,
    ! [T_2,T_1] :
      ( uminus(T_1)
     => uminus(fun(T_2,T_1)) ) ).

fof(fact_426_Diff__subset__conv,axiom,
    ! [X_a,A_1,B_1,C_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),C_2)) ) ).

fof(tsy_c_Orderings_Otop__class_Otop_res,axiom,
    ! [X_a] :
      ( ti(X_a,top_top(X_a)) = top_top(X_a)
     <= top(X_a) ) ).

fof(tsy_c_fFalse_res,axiom,
    ti(bool,fFalse) = fFalse ).

fof(fact_740_finite__Inter,axiom,
    ! [X_a,M] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),M)))
     <= ? [X_1] :
          ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_1),M))
          & hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),X_1)) ) ) ).

fof(fact_359_Diff__Un,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2)) ).

fof(fact_532_option_Oexhaust,axiom,
    ! [X_a,Y] :
      ( ~ ! [A_4] : ti(option(X_a),Y) != hAPP(X_a,option(X_a),some(X_a),A_4)
     <= ti(option(X_a),Y) != none(X_a) ) ).

fof(help_If_3_1_T,axiom,
    ! [P] :
      ( fTrue = ti(bool,P)
      | fFalse = ti(bool,P) ) ).

fof(fact_949_max__diff__distrib__left,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)),Z) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),X),Z)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),Y),Z)) ) ).

fof(fact_241_com_Osimps_I46_J,axiom,
    ! [Com1_2,Com2_2,Fun_1,Com_2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) != hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) ).

fof(arity_fun___Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( minus(T_1)
     => minus(fun(T_2,T_1)) ) ).

fof(fact_103_MGT__Body,axiom,
    ! [G_2,Procs] :
      ( ( hBOOL(hAPP(fun(pname,bool),bool,finite_finite(pname),Procs))
       => hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(pname,hoare_2118899576triple(state)),fun(fun(pname,bool),fun(hoare_2118899576triple(state),bool)),image(pname,hoare_2118899576triple(state)),hAPP(fun(pname,com),fun(pname,hoare_2118899576triple(state)),hAPP(fun(com,hoare_2118899576triple(state)),fun(fun(pname,com),fun(pname,hoare_2118899576triple(state))),combb(com,hoare_2118899576triple(state),pname),hoare_Mirabelle_MGT),body_1)),Procs))) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),semilattice_sup_sup(fun(hoare_2118899576triple(state),bool)),G_2),hAPP(fun(pname,bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(pname,hoare_2118899576triple(state)),fun(fun(pname,bool),fun(hoare_2118899576triple(state),bool)),image(pname,hoare_2118899576triple(state)),hAPP(fun(pname,com),fun(pname,hoare_2118899576triple(state)),hAPP(fun(com,hoare_2118899576triple(state)),fun(fun(pname,com),fun(pname,hoare_2118899576triple(state))),combb(com,hoare_2118899576triple(state),pname),hoare_Mirabelle_MGT),body_1)),Procs))),hAPP(fun(pname,bool),fun(hoare_2118899576triple(state),bool),hAPP(fun(pname,hoare_2118899576triple(state)),fun(fun(pname,bool),fun(hoare_2118899576triple(state),bool)),image(pname,hoare_2118899576triple(state)),hAPP(fun(pname,com),fun(pname,hoare_2118899576triple(state)),hAPP(fun(com,hoare_2118899576triple(state)),fun(fun(pname,com),fun(pname,hoare_2118899576triple(state))),combb(com,hoare_2118899576triple(state),pname),hoare_Mirabelle_MGT),hAPP(fun(pname,option(com)),fun(pname,com),hAPP(fun(option(com),com),fun(fun(pname,option(com)),fun(pname,com)),combb(option(com),com,pname),the(com)),body))),Procs))) ) ).

fof(fact_431_diff__single__insert,axiom,
    ! [X_a,A_1,X_2,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))),B_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B_1)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ) ).

fof(fact_798_finite__UnionD,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)))
     => hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,finite_finite(fun(X_a,bool)),A_1)) ) ).

fof(fact_346_inf__sup__aci_I3_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) ) ).

fof(fact_430_dom__if,axiom,
    ! [X_a,X_b,P_1,F,G] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),G)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),P_1)))) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(fun(X_a,option(X_b)),fun(X_a,option(X_b)),hAPP(fun(X_a,fun(option(X_b),option(X_b))),fun(fun(X_a,option(X_b)),fun(X_a,option(X_b))),combs(X_a,option(X_b),option(X_b)),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),option(X_b))),hAPP(fun(X_a,fun(option(X_b),fun(option(X_b),option(X_b)))),fun(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),option(X_b)))),combs(X_a,option(X_b),fun(option(X_b),option(X_b))),hAPP(fun(X_a,bool),fun(X_a,fun(option(X_b),fun(option(X_b),option(X_b)))),hAPP(fun(bool,fun(option(X_b),fun(option(X_b),option(X_b)))),fun(fun(X_a,bool),fun(X_a,fun(option(X_b),fun(option(X_b),option(X_b))))),combb(bool,fun(option(X_b),fun(option(X_b),option(X_b))),X_a),if(option(X_b))),P_1)),F)),G)) ).

fof(fact_915_min__max_Obelow__fold1__iff,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => ( ! [X_1] :
                  ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),X_1)) )
            <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),A_1))) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(tsy_c_Set_OCollect_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,bool),fun(X_a,bool)),collect(X_a)) = collect(X_a) ).

fof(fact_321_IntD2,axiom,
    ! [X_a,C,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_449_override__on__def,axiom,
    ! [X_b,X_a,F,G,A_1,X_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
       => hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),X_1) = hAPP(X_a,X_b,G,X_1) )
      & ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
       => hAPP(X_a,X_b,hAPP(fun(X_a,bool),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b))),override_on(X_a,X_b),F),G),A_1),X_1) = hAPP(X_a,X_b,F,X_1) ) ) ).

fof(fact_212_inf__sup__ord_I4_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))) ) ).

fof(fact_427_image__Int__subset,axiom,
    ! [X_a,X_b,F,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),B_1)))) ).

fof(fact_432_subset__insert__iff,axiom,
    ! [X_a,A_1,X_2,B_1] :
      ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
         <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
        & ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))),B_1)) ) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B_1))) ) ).

fof(fact_832_Pow__insert,axiom,
    ! [X_a,A_2,A_1] : hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_sup_sup(fun(fun(X_a,bool),bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),fun(X_a,bool)),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),image(fun(X_a,bool),fun(X_a,bool)),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1))) = hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) ).

fof(fact_758_Inter__Un__distrib,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),B_1)) = hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_sup_sup(fun(fun(X_a,bool),bool)),A_1),B_1)) ).

fof(fact_582_Inf__fin_Ounion__inter,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
           => ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) != bot_bot(fun(X_a,bool))
             => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_2_weaken,axiom,
    ! [X_a,Ts,G_2,Ts_1] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),ord_less_eq(fun(hoare_2118899576triple(X_a),bool)),Ts),Ts_1))
       => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts)) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts_1)) ) ).

fof(fact_462_fun__upd__other,axiom,
    ! [X_b,X_a,F,Y_2,Z_2,X_2] :
      ( ti(X_a,Z_2) != ti(X_a,X_2)
     => hAPP(X_a,X_b,F,Z_2) = hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2),Z_2) ) ).

fof(fact_385_empty__Diff,axiom,
    ! [X_a,A_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),bot_bot(fun(X_a,bool))),A_1) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q))
      | hBOOL(P) ) ).

fof(fact_486_not__None__eq,axiom,
    ! [X_a,X_2] :
      ( ti(option(X_a),X_2) != none(X_a)
    <=> ? [Y_1] : hAPP(X_a,option(X_a),some(X_a),Y_1) = ti(option(X_a),X_2) ) ).

fof(fact_294_com__det,axiom,
    ! [U_1,C_1,S_4,T_4] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_4),T_4))
     => ( T_4 = U_1
       <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C_1),S_4),U_1)) ) ) ).

fof(fact_913_below__fold1__iff,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),semilattice_inf_inf(X_a)),A_1)))
            <=> ! [X_1] :
                  ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),X_1)) ) ) ) ) ) ).

fof(fact_496_subset__inj__on,axiom,
    ! [X_a,X_b,A_1,F,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),B_1)) ) ).

fof(fact_94_finite__subset__induct,axiom,
    ! [X_a,P_1,A_1,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),Fa),A_1))
       => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,bot_bot(fun(X_a,bool))))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,Fa))
           <= ! [A_4,F_2] :
                ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),F_2))
               => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_4),A_1))
                 => ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_4),F_2)))
                     <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,F_2)) )
                   <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_4),F_2)) ) ) ) ) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_367_le__infI1,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [B_2,A_3,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2)),X))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),X)) ) ) ).

fof(fact_713_compl__inf__bot,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),X) = bot_bot(X_a) ) ).

fof(fact_130_Un__empty__left,axiom,
    ! [X_a,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),bot_bot(fun(X_a,bool))),B_1) = ti(fun(X_a,bool),B_1) ).

fof(fact_19_MGF,axiom,
    ! [C] :
      ( ( hBOOL(wT_bodies)
       => ( hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),bot_bot(fun(hoare_2118899576triple(state),bool))),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,C)),bot_bot(fun(hoare_2118899576triple(state),bool)))))
         <= hBOOL(hAPP(com,bool,wt,C)) ) )
     <= hBOOL(hoare_511481251gleton) ) ).

fof(fact_821_Powp__Pow__eq,axiom,
    ! [X_a,A_1,X_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),powp(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1)),X_1))
    <=> hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_1),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1))) ) ).

fof(fact_5_hoare__derivs_Oinsert,axiom,
    ! [X_a,Ts,G_2,T_3] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts))
       => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),T_3),Ts))) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),T_3),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(fact_455_fold__graph_H_Ointros_I2_J,axiom,
    ! [X_b,X_a,F,Z_2,Y_2,X_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
     => ( hBOOL(hAPP(X_b,bool,hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool))),fold_graph(X_a,X_b),F),Z_2),A_1),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Y_2)))
       <= hBOOL(hAPP(X_b,bool,hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_a,bool),fun(X_b,bool)),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool))),fold_graph(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))),Y_2)) ) ) ).

fof(fact_771_Inf__union__distrib,axiom,
    ! [X_a] :
      ( ! [A_1,B_1] : hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),B_1))
     <= comple44059174attice(X_a) ) ).

fof(tsy_c_Groups_Ominus__class_Ominus_res,axiom,
    ! [X_a] :
      ( minus(X_a)
     => ti(fun(X_a,fun(X_a,X_a)),minus_minus(X_a)) = minus_minus(X_a) ) ).

fof(fact_124_Un__commute,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1) ).

fof(fact_456_fun__upd__triv,axiom,
    ! [X_b,X_a,F,X_2] : hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),hAPP(X_a,X_b,F,X_2)) = ti(fun(X_a,X_b),F) ).

fof(tsy_c_Predicate_OPowp_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,bool),fun(fun(X_a,bool),bool)),powp(X_a)) = powp(X_a) ).

fof(fact_287_evalc__elim__cases_I6_J,axiom,
    ! [P,S_4,S1_2] :
      ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(option(com),com,the(com),hAPP(pname,option(com),body,P))),S_4),S1_2))
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(pname,com,body_1,P)),S_4),S1_2)) ) ).

fof(fact_843_sup__Inf1__distrib,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [X_2,A_1] :
          ( ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a)),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combs(X_a,bool,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool))),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj)),hAPP(fun(X_a,X_a),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,X_a),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,X_a),fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool)),X_a),combb(X_a,bool,X_a)),fequal(X_a))),hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2))))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_723_Compl__partition2,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)),A_1) = top_top(fun(X_a,bool)) ).

fof(arity_fun___Lattices_Obounded__lattice__bot,axiom,
    ! [T_2,T_1] :
      ( bounded_lattice_bot(fun(T_2,T_1))
     <= bounded_lattice(T_1) ) ).

fof(fact_861_min__max_Oinf__le1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),X)) ) ).

fof(fact_242_com_Osimps_I47_J,axiom,
    ! [Fun_1,Com_2,Com1_2,Com2_2] : hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) != hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) ).

fof(fact_351_inf__commute,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X)
     <= semilattice_inf(X_a) ) ).

fof(arity_HOL_Obool___Lattices_Olattice,axiom,
    lattice(bool) ).

fof(fact_838_inf__Sup1__distrib,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a)),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combs(X_a,bool,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool))),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj)),hAPP(fun(X_a,X_a),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,X_a),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,X_a),fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool)),X_a),combb(X_a,bool,X_a)),fequal(X_a))),hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2))))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1)))))
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= distrib_lattice(X_a) ) ).

fof(fact_365_le__iff__inf,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X_2,Y_2] :
          ( ti(X_a,X_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_2),Y_2)
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2)) ) ) ).

fof(fact_211_sup__ge1,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))) ) ).

fof(fact_847_Max__ge,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1))) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_691_ComplD,axiom,
    ! [X_a,C,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)))
     => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) ) ).

fof(fact_604_UNIV__not__empty,axiom,
    ! [X_a] : top_top(fun(X_a,bool)) != bot_bot(fun(X_a,bool)) ).

fof(fact_891_Min__Un,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1)
               => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),B_1)) = hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) ) )
     <= linorder(X_a) ) ).

fof(fact_918_min__max_OInf__fin_Oin__idem,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_231_finite__ne__induct,axiom,
    ! [X_a,P_1,Fa] :
      ( ( ti(fun(X_a,bool),Fa) != bot_bot(fun(X_a,bool))
       => ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,Fa))
           <= ! [X_1,F_2] :
                ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),F_2))
               => ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),F_2)
                 => ( ( hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),F_2)))
                     <= hBOOL(hAPP(fun(X_a,bool),bool,P_1,F_2)) )
                   <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),F_2)) ) ) ) )
         <= ! [X_1] : hBOOL(hAPP(fun(X_a,bool),bool,P_1,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),bot_bot(fun(X_a,bool))))) ) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),Fa)) ) ).

fof(fact_718_Compl__UNIV__eq,axiom,
    ! [X_a] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),top_top(fun(X_a,bool))) = bot_bot(fun(X_a,bool)) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(fact_110_weak__Body,axiom,
    ! [X_a,G_2,P_1,Pn_1,Q_2] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),hAPP(pname,com,body_1,Pn_1)),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool)))))
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn_1))),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q)) ) ).

fof(fact_996_min__max_Odistrib__imp2,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y,Z] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Z))
         <= ! [X_1,Y_1,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y_1),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_1),Y_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_1),Z_1)) ) ) ).

fof(fact_911_Inf__fin_OF__eq,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),semilattice_inf_inf(X_a)),A_1) )
     <= lattice(X_a) ) ).

fof(fact_285_MGT__alternI,axiom,
    ! [G_2,C] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,C)),bot_bot(fun(hoare_2118899576triple(state),bool)))))
     => hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),hoare_2118899576triple(state),hAPP(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state)),hAPP(fun(state,fun(state,bool)),fun(com,fun(fun(state,fun(state,bool)),hoare_2118899576triple(state))),hoare_759811442triple(state),hAPP(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool)),hAPP(fun(fun(state,fun(state,bool)),fun(state,bool)),fun(fun(state,fun(state,fun(state,bool))),fun(state,fun(state,bool))),combb(fun(state,fun(state,bool)),fun(state,bool),state),hAPP(fun(fun(state,bool),bool),fun(fun(state,fun(state,bool)),fun(state,bool)),combb(fun(state,bool),bool,state),fAll(state))),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool))),hAPP(fun(fun(state,bool),fun(state,fun(state,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(state,bool)))),combb(fun(state,bool),fun(state,fun(state,bool)),state),hAPP(fun(state,fun(fun(state,bool),fun(state,bool))),fun(fun(state,bool),fun(state,fun(state,bool))),combc(state,fun(state,bool),fun(state,bool)),hAPP(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool))),hAPP(fun(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool))),fun(fun(state,fun(state,fun(bool,bool))),fun(state,fun(fun(state,bool),fun(state,bool)))),combb(fun(state,fun(bool,bool)),fun(fun(state,bool),fun(state,bool)),state),combs(state,bool,bool)),hAPP(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool))),hAPP(fun(fun(state,bool),fun(state,fun(bool,bool))),fun(fun(state,fun(state,bool)),fun(state,fun(state,fun(bool,bool)))),combb(fun(state,bool),fun(state,fun(bool,bool)),state),hAPP(fun(bool,fun(bool,bool)),fun(fun(state,bool),fun(state,fun(bool,bool))),combb(bool,fun(bool,bool),state),fimplies)),hAPP(com,fun(state,fun(state,bool)),evalc,C))))),fequal(state)))),C),fequal(state))),bot_bot(fun(hoare_2118899576triple(state),bool))))) ) ).

fof(fact_240_com_Osimps_I17_J,axiom,
    ! [Fun_1,Com_2] : hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2) != skip ).

fof(fact_278_Set_Oset__insert,axiom,
    ! [X_a,X_2,A_1] :
      ( ~ ! [B_3] :
            ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B_3) = ti(fun(X_a,bool),A_1)
           => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_3)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_37_insert__ident,axiom,
    ! [X_a,B_1,X_2,A_1] :
      ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
     => ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)
        <=> ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1) )
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1)) ) ) ).

fof(fact_708_minus__diff__eq,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),B_2),A_3) = hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),A_3),B_2))
     <= ab_group_add(X_a) ) ).

fof(fact_903_min__ord__min,axiom,
    ! [X_a] :
      ( hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,X_a)),min(X_a),ord_less_eq(X_a)) = ord_min(X_a)
     <= ord(X_a) ) ).

fof(fact_38_insert__code,axiom,
    ! [X_a,Y_2,A_1,X_2] :
      ( hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_2),A_1),X_2))
    <=> ( hBOOL(hAPP(X_a,bool,A_1,X_2))
        | ti(X_a,X_2) = ti(X_a,Y_2) ) ) ).

fof(fact_944_min__max_Oinf__sup__absorb,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)) ) ).

fof(fact_14_image__constant__conv,axiom,
    ! [X_b,X_a,C,A_1] :
      ( ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),C),bot_bot(fun(X_b,bool))) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),combk(X_b,X_a),C)),A_1)
       <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
      & ( hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),hAPP(X_b,fun(X_a,X_b),combk(X_b,X_a),C)),A_1) = bot_bot(fun(X_b,bool))
       <= ti(fun(X_a,bool),A_1) = bot_bot(fun(X_a,bool)) ) ) ).

fof(fact_849_Max_Osingleton,axiom,
    ! [X_a] :
      ( ! [X_2] : ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))
     <= linorder(X_a) ) ).

fof(fact_690_ComplE,axiom,
    ! [X_a,C,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)))
     => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) ) ).

fof(fact_444_folding__image__simple_Ounion__inter__neutral,axiom,
    ! [X_b,X_a,B_1,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa))
     => ( ( ( hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B_1))
           <= ! [X_1] :
                ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B_1)))
               => ti(X_a,Z_2) = hAPP(X_b,X_a,G,X_1) ) )
         <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B_1)) )
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(tsy_c_Big__Operators_Olattice__class_OSup__fin_res,axiom,
    ! [X_a] :
      ( ti(fun(fun(X_a,bool),X_a),big_lattice_Sup_fin(X_a)) = big_lattice_Sup_fin(X_a)
     <= lattice(X_a) ) ).

fof(fact_393_Diff__mono,axiom,
    ! [X_a,D_2,B_1,A_1,C_2] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),D_2),B_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),C_2),D_2))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ).

fof(arity_HOL_Obool___Lattices_Osemilattice__inf,axiom,
    semilattice_inf(bool) ).

fof(fact_268_the__eq__trivial,axiom,
    ! [X_a,A_2] : ti(X_a,A_2) = hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2)) ).

fof(tsy_c_hBOOL_arg1,hypothesis,
    ! [B_1_1] :
      ( hBOOL(B_1_1)
    <=> hBOOL(ti(bool,B_1_1)) ) ).

fof(fact_344_inf_Oassoc,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2)),C_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),C_1))
     <= semilattice_inf(X_a) ) ).

fof(fact_946_Max_Oin__idem,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1) ) ) ) ).

fof(fact_352_inf__sup__aci_I1_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) ) ).

fof(fact_819_PowI,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_423_finite__Diff__insert,axiom,
    ! [X_a,A_1,A_2,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1))))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_453_comp__fun__idem__remove,axiom,
    ! [X_a] : hBOOL(hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),bool,finite_comp_fun_idem(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),X_a),hAPP(fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool))),combc(fun(X_a,bool),fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)))),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),insert(X_a)),bot_bot(fun(X_a,bool)))))) ).

fof(fact_976_min__max_Osup__le__fold__sup,axiom,
    ! [X_a] :
      ( ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_2),B)),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_max(X_a)),B),A_1)))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) )
     <= linorder(X_a) ) ).

fof(tsy_c_fNot_res,axiom,
    ti(fun(bool,bool),fNot) = fNot ).

fof(fact_864_min__max_Ole__inf__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2,Z_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y_2),Z_2)))
        <=> ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Z_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2)) ) )
     <= linorder(X_a) ) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fdisj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(tsy_c_Fun_Othe__inv__into_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a))),the_inv_into(X_a,X_b)) = the_inv_into(X_a,X_b) ).

fof(fact_860_inf__min,axiom,
    ! [X_a] :
      ( semilattice_inf_inf(X_a) = ord_min(X_a)
     <= ( linorder(X_a)
        & semilattice_inf(X_a) ) ) ).

fof(fact_355_fun__diff__def,axiom,
    ! [X_a,X_b] :
      ( ! [A_1,B_1,X_1] : hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(X_a,X_b)),minus_minus(fun(X_a,X_b)),A_1),B_1),X_1) = hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),minus_minus(X_b),hAPP(X_a,X_b,A_1,X_1)),hAPP(X_a,X_b,B_1,X_1))
     <= minus(X_b) ) ).

fof(fact_297_order__subst2,axiom,
    ! [X_a,X_b] :
      ( ! [F,C,A_2,B] :
          ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,B)),C))
           => ( ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),Y_1))
                 => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,F,Y_1))) )
             => hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),hAPP(X_a,X_b,F,A_2)),C)) ) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),B)) )
     <= ( order(X_b)
        & order(X_a) ) ) ).

fof(fact_548_vimage__Collect__eq,axiom,
    ! [X_b,X_a,F,P_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),P_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,X_b),fun(X_a,bool),hAPP(fun(X_b,bool),fun(fun(X_a,X_b),fun(X_a,bool)),combb(X_b,bool,X_a),P_1),F)) ).

fof(fact_50_equalityD2,axiom,
    ! [X_a,A_1,B_1] :
      ( ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1)
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ).

fof(fact_509_option_Orecs_I1_J,axiom,
    ! [X_b,X_a,F1,F2] : hAPP(option(X_b),X_a,hAPP(fun(X_b,X_a),fun(option(X_b),X_a),hAPP(X_a,fun(fun(X_b,X_a),fun(option(X_b),X_a)),option_rec(X_a,X_b),F1),F2),none(X_b)) = ti(X_a,F1) ).

fof(fact_271_Collect__mono,axiom,
    ! [X_a,Q_2,P_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(X_a,bool,P_1,X_1))
         => hBOOL(hAPP(X_a,bool,Q_2,X_1)) )
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2))) ) ).

fof(fact_630_inj__image__subset__iff,axiom,
    ! [X_a,X_b,A_1,B_1,F] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
      <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),ord_less_eq(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1))) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(tsy_c_Orderings_Oord__class_Omin_res,axiom,
    ! [X_a] :
      ( ord(X_a)
     => ti(fun(X_a,fun(X_a,X_a)),ord_min(X_a)) = ord_min(X_a) ) ).

fof(fact_867_min__max_Oinf__absorb1,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] :
          ( ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_3_thin,axiom,
    ! [X_a,G_2,G_3,Ts] :
      ( ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts))
       <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),ord_less_eq(fun(hoare_2118899576triple(X_a),bool)),G_3),G_2)) )
     <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_3),Ts)) ) ).

fof(fact_962_min__max_Ole__supE,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_3,B_2,X] :
          ( ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2)),X)) ) ) ).

fof(fact_848_Max__in,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)),A_1))
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_549_vimage__eq,axiom,
    ! [X_a,X_b,A_2,F,B_1] :
      ( hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,A_2)),B_1))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1))) ) ).

fof(fact_971_min__max_Ole__iff__sup,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
        <=> ti(X_a,Y_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),Y_2) )
     <= linorder(X_a) ) ).

fof(fact_473_comp__fun__idem__inf,axiom,
    ! [X_a] :
      ( hBOOL(hAPP(fun(X_a,fun(X_a,X_a)),bool,finite_comp_fun_idem(X_a,X_a),semilattice_inf_inf(X_a)))
     <= semilattice_inf(X_a) ) ).

fof(fact_308_inf1I,axiom,
    ! [X_a,B_1,A_1,X_2] :
      ( ( hBOOL(hAPP(X_a,bool,B_1,X_2))
       => hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1),X_2)) )
     <= hBOOL(hAPP(X_a,bool,A_1,X_2)) ) ).

fof(fact_764_Inf__lower2,axiom,
    ! [X_a] :
      ( ! [V_1,U,A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)),V_1))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),U),V_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),U),A_1)) )
     <= comple44059174attice(X_a) ) ).

fof(fact_765_Inf__superset__mono,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [B_1,A_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),B_1)))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ) ).

fof(fact_659_ex__new__if__finite,axiom,
    ! [X_a,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ? [A_4] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_4),A_1)) )
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),top_top(fun(X_a,bool)))) ) ).

fof(fact_831_subset__Pow__Union,axiom,
    ! [X_a,A_1] : hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),A_1),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)))) ).

fof(conj_3,hypothesis,
    ~ hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),bool),member(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,y)),fa)) ).

fof(fact_587_range__eqI,axiom,
    ! [X_a,X_b,B,F,X_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),B),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool)))))
     <= ti(X_a,B) = hAPP(X_b,X_a,F,X_2) ) ).

fof(fact_87_Collect__conv__if,axiom,
    ! [X_a,P_1,A_2] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2))),P_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))
       <= hBOOL(hAPP(X_a,bool,P_1,A_2)) )
      & ( ~ hBOOL(hAPP(X_a,bool,P_1,A_2))
       => bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2))),P_1)) ) ) ).

fof(fact_80_insert__subset,axiom,
    ! [X_a,X_2,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1)) )
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B_1)) ) ).

fof(fact_209_sup__assoc,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),Z) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) ) ).

fof(fact_292_evalc_OWhileTrue,axiom,
    ! [S2,C,S1_1,B,S0] :
      ( ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C),S0),S1_1))
       => ( hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)),S1_1),S2))
         => hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)),S0),S2)) ) )
     <= hBOOL(hAPP(state,bool,B,S0)) ) ).

fof(fact_460_fun__upd__apply,axiom,
    ! [X_b,X_a,F,Y_2,Z_2,X_2] :
      ( ( ti(X_a,Z_2) = ti(X_a,X_2)
       => hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2),Z_2) = ti(X_b,Y_2) )
      & ( ti(X_a,X_2) != ti(X_a,Z_2)
       => hAPP(X_a,X_b,F,Z_2) = hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2),Z_2) ) ) ).

fof(tsy_c_Lattices_Osemilattice__sup__class_Osup_res,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => semilattice_sup_sup(X_a) = ti(fun(X_a,fun(X_a,X_a)),semilattice_sup_sup(X_a)) ) ).

fof(fact_778_Powp__mono,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),powp(X_a),A_1)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),powp(X_a),B_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_646_Inf__fin_Oeq__fold_H,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_inf_inf(X_a)),X_2),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(fact_421_Diff__insert2,axiom,
    ! [X_a,A_1,A_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool))))),B_1) ).

fof(fact_386_finite__Diff2,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))) ) ) ).

fof(fact_251_com_Osimps_I18_J,axiom,
    ! [Pname] : skip != hAPP(pname,com,body_1,Pname) ).

fof(fact_45_equalityE,axiom,
    ! [X_a,A_1,B_1] :
      ( ~ ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
         => ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) )
     <= ti(fun(X_a,bool),A_1) = ti(fun(X_a,bool),B_1) ) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_OMGT_res,hypothesis,
    hoare_Mirabelle_MGT = ti(fun(com,hoare_2118899576triple(state)),hoare_Mirabelle_MGT) ).

fof(tsy_c_Big__Operators_Olinorder__class_OMin_res,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ti(fun(fun(X_a,bool),X_a),big_linorder_Min(X_a)) = big_linorder_Min(X_a) ) ).

fof(fact_964_min__max_Osup__least,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [Z,Y,X] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),X))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),Z)),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X)) ) ) ).

fof(fact_766_Inf__singleton,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_2] : hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))) = ti(X_a,A_2) ) ).

fof(arity_HOL_Obool___Complete__Lattice_Ocomplete__boolean__algebra,axiom,
    comple61589808lgebra(bool) ).

fof(fact_163_bot__unique,axiom,
    ! [X_a] :
      ( bot(X_a)
     => ! [A_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),bot_bot(X_a)))
        <=> ti(X_a,A_2) = bot_bot(X_a) ) ) ).

fof(tsy_c_Hoare__Mirabelle__lcrcocijdw_Otriple_Otriple_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)))),hoare_759811442triple(X_a)) = hoare_759811442triple(X_a) ).

fof(fact_907_fold1__singleton,axiom,
    ! [X_a,F,A_2] : hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))) = ti(X_a,A_2) ).

fof(fact_273_the__equality,axiom,
    ! [X_a,P_1,A_2] :
      ( ( ti(X_a,A_2) = hAPP(fun(X_a,bool),X_a,the_1(X_a),P_1)
       <= ! [X_1] :
            ( hBOOL(hAPP(X_a,bool,P_1,X_1))
           => ti(X_a,A_2) = ti(X_a,X_1) ) )
     <= hBOOL(hAPP(X_a,bool,P_1,A_2)) ) ).

fof(arity_fun___Orderings_Otop,axiom,
    ! [T_2,T_1] :
      ( top(fun(T_2,T_1))
     <= top(T_1) ) ).

fof(fact_923_min__max_OInf__fin_Osubset__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),B_1)),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1))
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) )
           <= ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool)) ) )
     <= linorder(X_a) ) ).

fof(fact_638_inj__vimage__image__eq,axiom,
    ! [X_a,X_b,A_1,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)) = ti(fun(X_a,bool),A_1) ) ).

fof(fact_155_order__antisym__conv,axiom,
    ! [X_a] :
      ( ! [Y_2,X_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),X_2))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
          <=> ti(X_a,X_2) = ti(X_a,Y_2) ) )
     <= order(X_a) ) ).

fof(fact_543_inj__on__vimage__singleton,axiom,
    ! [X_a,X_b,A_2,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),bot_bot(fun(X_b,bool))))),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(X_b,fun(X_a,bool),hAPP(fun(X_a,fun(X_b,bool)),fun(X_b,fun(X_a,bool)),combc(X_a,X_b,bool),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(fun(X_a,X_b),fun(X_a,fun(X_b,bool))),combb(X_b,fun(X_b,bool),X_a),fequal(X_b)),F)),A_2)))),bot_bot(fun(X_a,bool)))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_620_surj__image__vimage__eq,axiom,
    ! [X_b,X_a,A_1,F] :
      ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),A_1))
     <= top_top(fun(X_a,bool)) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))) ) ).

fof(fact_591_inf__top__right,axiom,
    ! [X_a] :
      ( ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),top_top(X_a)) = ti(X_a,X)
     <= bounded_lattice_top(X_a) ) ).

fof(fact_394_Diff__subset,axiom,
    ! [X_a,A_1,B_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)),A_1)) ).

fof(fact_631_image__Int,axiom,
    ! [X_a,X_b,A_1,B_1,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1)) ) ).

fof(fact_786_Union__disjoint,axiom,
    ! [X_a,C_2,A_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),C_2)),A_1) = bot_bot(fun(X_a,bool))
    <=> ! [X_1] :
          ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_1),C_2))
         => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),X_1),A_1) = bot_bot(fun(X_a,bool)) ) ) ).

fof(tsy_v_y_res,hypothesis,
    ti(com,y) = y ).

fof(fact_933_min__max_Osup__Inf2__distrib,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_1,A_1] :
          ( ( ( ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
               => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a)),hAPP(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,bool)),hAPP(fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),fun(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,bool))),combb(fun(X_a,fun(X_a,bool)),fun(X_a,bool),X_a),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a))),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(X_a,bool)))),combc(X_a,fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),hAPP(fun(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(X_a,fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))))),combb(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool))),X_a),combs(X_a,fun(X_a,bool),fun(X_a,bool))),hAPP(fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),hAPP(fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),fun(fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),fun(X_a,fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))))),combb(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),X_a),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combs(X_a,bool,bool))),hAPP(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,fun(X_a,fun(bool,bool)))),hAPP(fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),fun(fun(X_a,fun(X_a,fun(X_a,bool))),fun(X_a,fun(X_a,fun(X_a,fun(bool,bool))))),combb(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool))),X_a),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj))),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,fun(X_a,bool)))),combc(X_a,fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))),hAPP(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),hAPP(fun(fun(fun(X_a,X_a),fun(X_a,bool)),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool)))),fun(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(X_a,fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))))),combb(fun(fun(X_a,X_a),fun(X_a,bool)),fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(X_a,bool))),X_a),combb(fun(X_a,X_a),fun(X_a,bool),X_a)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool)),X_a),combb(X_a,bool,X_a)),fequal(X_a)))),ord_max(X_a)))))),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(bool,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(bool,bool)),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combb(bool,bool,X_a)),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1)))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1))))))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),B_1)) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_143_insert__def,axiom,
    ! [X_a,A_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2))),B_1) ).

fof(tsy_c_Set_Ovimage_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool))),vimage(X_a,X_b)) = vimage(X_a,X_b) ).

fof(fact_570_vimage__insert,axiom,
    ! [X_b,X_a,F,A_2,B_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),bot_bot(fun(X_b,bool))))),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1)) ).

fof(tsy_c_Finite__Set_Ofinite_res,axiom,
    ! [X_a] : ti(fun(fun(X_a,bool),bool),finite_finite(X_a)) = finite_finite(X_a) ).

fof(fact_993_min__max_Ofold__sup__le__sup,axiom,
    ! [X_a] :
      ( ! [C,B,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ! [X_1] :
                ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_1),B))
               <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_max(X_a)),C),A_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),B),C))) ) )
     <= linorder(X_a) ) ).

fof(fact_399_Int__insert__right__if1,axiom,
    ! [X_a,B_1,A_2,A_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ).

fof(fact_896_Min_Ounion__disjoint,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
             => ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
               => ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)
                 => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),B_1)) ) ) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) ) ) ) ).

fof(fact_479_empty__upd__none,axiom,
    ! [X_a,X_b,X_2,X_1] : none(X_b) = hAPP(X_a,option(X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(option(X_b),fun(X_a,option(X_b)),combk(option(X_b),X_a),none(X_b))),X_2),none(X_b)),X_1) ).

fof(fact_836_Pow__empty,axiom,
    ! [X_a] : hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),bot_bot(fun(X_a,bool))),bot_bot(fun(fun(X_a,bool),bool))) = hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),bot_bot(fun(X_a,bool))) ).

fof(fact_186_sup__Un__eq,axiom,
    ! [X_a,R_1,S,X_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),R_1),S)))
    <=> hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),R_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),S)),X_1)) ) ).

fof(fact_361_inf__sup__ord_I1_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),X))
     <= lattice(X_a) ) ).

fof(fact_527_inj__on__insert,axiom,
    ! [X_a,X_b,F,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)))
    <=> ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),hAPP(X_a,X_b,F,A_2)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))))))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ) ).

fof(fact_612_injD,axiom,
    ! [X_a,X_b,X_2,Y_2,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => ( ti(X_a,Y_2) = ti(X_a,X_2)
       <= hAPP(X_a,X_b,F,Y_2) = hAPP(X_a,X_b,F,X_2) ) ) ).

fof(help_fTrue_1_1_U,axiom,
    hBOOL(fTrue) ).

fof(fact_465_comp__fun__idem_Ofun__left__idem,axiom,
    ! [X_a,X_b,X_2,Z_2,F] :
      ( hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_a,X_b),F))
     => hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z_2) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),Z_2)) ) ).

fof(fact_440_folding__image__simple_Oinsert,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( ~ hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),X_2),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,A_1)) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) ) ) ) ).

fof(fact_41_insert__absorb2,axiom,
    ! [X_a,X_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1) ).

fof(fact_378_sup__inf__absorb,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)) = ti(X_a,X)
     <= lattice(X_a) ) ).

fof(fact_279_equals0I,axiom,
    ! [X_a,A_1] :
      ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
     <= ! [Y_1] : ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_1),A_1)) ) ).

fof(fact_735_comm__monoid__big_OIf__cases,axiom,
    ! [X_b,X_a,P_1,H,G,A_1,F,Z_2,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool,hAPP(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool)),big_comm_monoid_big(X_a,X_b),F),Z_2),Fa))
     => ( hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_b,X_a)),combs(X_b,X_a,X_a),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,X_a),fun(X_b,fun(X_a,X_a))),combs(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),P_1)),H)),G)),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,H),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),P_1)))),hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,G),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),uminus_uminus(fun(X_b,bool)),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),P_1)))))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(arity_fun___Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( preorder(fun(T_2,T_1))
     <= preorder(T_1) ) ).

fof(fact_282_xt1_I15_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [C,A_2,F,B] :
          ( ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,F,C)),A_2))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,F,Y_1)),hAPP(X_a,X_a,F,X_1)))
                 <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_1)) ) )
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),B)) )
         <= ti(X_a,A_2) = hAPP(X_a,X_a,F,B) ) ) ).

fof(fact_95_WTs__elim__cases_I7_J,axiom,
    ! [P] :
      ( hBOOL(hAPP(com,bool,wt,hAPP(pname,com,body_1,P)))
     => ~ ! [Y_1] : hAPP(pname,option(com),body,P) != hAPP(com,option(com),some(com),Y_1) ) ).

fof(fact_598_Un__UNIV__right,axiom,
    ! [X_a,A_1] : top_top(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),top_top(fun(X_a,bool))) ).

fof(fact_961_le__max__iff__disj,axiom,
    ! [X_a] :
      ( ! [Z_2,X_2,Y_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_2),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),Y_2)))
        <=> ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_2),Y_2))
            | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z_2),X_2)) ) )
     <= linorder(X_a) ) ).

fof(fact_668_Inf__le__Sup,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)))
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(tsy_v_Fa_res,hypothesis,
    ti(fun(hoare_2118899576triple(state),bool),fa) = fa ).

fof(fact_441_folding__image__simple_Ounion__inter,axiom,
    ! [X_b,X_a,B_1,A_1,F,Z_2,G,Fa] :
      ( ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B_1))),hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B_1))) ) )
     <= hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa)) ) ).

fof(fact_438_folding__image__simple_Ounion__disjoint,axiom,
    ! [X_b,X_a,B_1,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa))
     => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1))
       => ( hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),B_1))
         => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_b,bool),X_a,Fa,A_1)),hAPP(fun(X_b,bool),X_a,Fa,B_1)) = hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_sup_sup(fun(X_b,bool)),A_1),B_1))
           <= hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),A_1),B_1) = bot_bot(fun(X_b,bool)) ) ) ) ) ).

fof(tsy_c_Finite__Set_Ofolding__image__simple_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)))),finite1357897459simple(X_a,X_b)) = finite1357897459simple(X_a,X_b) ).

fof(fact_554_vimage__def,axiom,
    ! [X_b,X_a,F,B_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_a,bool)),combc(X_a,fun(X_b,bool),bool),hAPP(fun(X_a,X_b),fun(X_a,fun(fun(X_b,bool),bool)),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_a,X_b),fun(X_a,fun(fun(X_b,bool),bool))),combb(X_b,fun(fun(X_b,bool),bool),X_a),member(X_b)),F)),B_1)) ).

fof(fact_404_Int__insert__right,axiom,
    ! [X_a,B_1,A_2,A_1] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
       => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) )
      & ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ) ).

fof(fact_207_sup_Oassoc,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),B_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2)),C_1)
     <= semilattice_sup(X_a) ) ).

fof(fact_11_finite_OinsertI,axiom,
    ! [X_a,A_2,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_475_dom__eq__singleton__conv,axiom,
    ! [X_a,X_b,F,X_2] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)
    <=> ? [V] : ti(fun(X_a,option(X_b)),F) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(option(X_b),fun(X_a,option(X_b)),combk(option(X_b),X_a),none(X_b))),X_2),hAPP(X_b,option(X_b),some(X_b),V)) ) ).

fof(fact_506_fold__sup__insert,axiom,
    ! [X_a] :
      ( ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),B),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) )
     <= semilattice_sup(X_a) ) ).

fof(tsy_c_Orderings_Oord__class_Omax_res,axiom,
    ! [X_a] :
      ( ti(fun(X_a,fun(X_a,X_a)),ord_max(X_a)) = ord_max(X_a)
     <= ord(X_a) ) ).

fof(conj_1,hypothesis,
    hBOOL(wT_bodies) ).

fof(fact_737_vimage__Collect,axiom,
    ! [X_b,X_a,Q_2,P_1,F] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),Q_2) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),P_1))
     <= ! [X_1] :
          ( hBOOL(hAPP(X_b,bool,P_1,hAPP(X_a,X_b,F,X_1)))
        <=> hBOOL(hAPP(X_a,bool,Q_2,X_1)) ) ) ).

fof(tsy_c_Orderings_Oord_Omax_res,axiom,
    ! [X_a] :
      ( ord(X_a)
     => max(X_a) = ti(fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,X_a))),max(X_a)) ) ).

fof(tsy_c_Map_Oran_res,axiom,
    ! [X_b,X_a] : ti(fun(fun(X_b,option(X_a)),fun(X_a,bool)),ran(X_b,X_a)) = ran(X_b,X_a) ).

fof(fact_526_WT_OBody,axiom,
    ! [Pn] :
      ( hAPP(pname,option(com),body,Pn) != none(com)
     => hBOOL(hAPP(com,bool,wt,hAPP(pname,com,body_1,Pn))) ) ).

fof(fact_68_subset__empty,axiom,
    ! [X_a,A_1] :
      ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool)))) ) ).

fof(tsy_c_COMBB_res,axiom,
    ! [X_b,X_c,X_a] : ti(fun(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c))),combb(X_b,X_c,X_a)) = combb(X_b,X_c,X_a) ).

fof(fact_963_min__max_Osup__mono,axiom,
    ! [X_a] :
      ( ! [B_2,D,A_3,C_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),C_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),C_1),D)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),D)) ) )
     <= linorder(X_a) ) ).

fof(fact_572_comm__monoid__big_Oinfinite,axiom,
    ! [X_b,X_a,G,A_1,F,Z_2,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool,hAPP(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(fun(X_b,X_a),fun(fun(X_b,bool),X_a)),bool)),big_comm_monoid_big(X_a,X_b),F),Z_2),Fa))
     => ( ti(X_a,Z_2) = hAPP(fun(X_b,bool),X_a,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),X_a),Fa,G),A_1)
       <= ~ hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(fact_135_Un__mono,axiom,
    ! [X_a,B_1,D_2,A_1,C_2] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),C_2),D_2)))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),D_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ).

fof(fact_972_le__maxI2,axiom,
    ! [X_a] :
      ( ! [Y,X] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)))
     <= linorder(X_a) ) ).

fof(tsy_c_Finite__Set_Ofold__image_res,axiom,
    ! [X_a,X_b] : ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_a,fun(fun(X_b,bool),X_a)))),finite_fold_image(X_a,X_b)) = finite_fold_image(X_a,X_b) ).

fof(fact_694_double__complement,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)) = ti(fun(X_a,bool),A_1) ).

fof(fact_411_Un__Int__crazy,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),C_2),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),B_1),C_2))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),C_2),A_1)) ).

fof(fact_147_xt1_I6_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [Z,Y,X] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y),X))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),Y))
           => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Z),X)) ) ) ) ).

fof(fact_700_neg__equal__iff__equal,axiom,
    ! [X_a] :
      ( ! [A_2,B] :
          ( hAPP(X_a,X_a,uminus_uminus(X_a),B) = hAPP(X_a,X_a,uminus_uminus(X_a),A_2)
        <=> ti(X_a,A_2) = ti(X_a,B) )
     <= group_add(X_a) ) ).

fof(tsy_c_Finite__Set_Ofolding__one__idem_res,axiom,
    ! [X_a] : finite2073411215e_idem(X_a) = ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool)),finite2073411215e_idem(X_a)) ).

fof(fact_981_Max_Osubset__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool))
           => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),B_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ) )
     <= linorder(X_a) ) ).

fof(fact_687_Compl__subset__Compl__iff,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1)))
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),A_1)) ) ).

fof(fact_519_dom__minus,axiom,
    ! [X_b,X_a,A_1,F,X_2] :
      ( none(X_a) = hAPP(X_b,option(X_a),F,X_2)
     => hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F)),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F)),A_1) ) ).

fof(fact_669_Sup__fin_Oeq__fold__idem_H,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [A_2,A_1] :
          ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),semilattice_sup_sup(X_a)),A_2),A_1) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(tsy_c_Orderings_Oord__class_Oless__eq_res,axiom,
    ! [X_a] :
      ( ti(fun(X_a,fun(X_a,bool)),ord_less_eq(X_a)) = ord_less_eq(X_a)
     <= ord(X_a) ) ).

fof(fact_374_le__infE,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,A_3,B_2] :
          ( ~ ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2))
             <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),A_3)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2))) ) ) ).

fof(fact_875_min__max_Oinf_Oassoc,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_3,B_2,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),B_2)),C_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),B_2),C_1)) ) ).

fof(fact_336_set__diff__eq,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(bool,bool),fun(fun(X_a,bool),fun(X_a,bool)),combb(bool,bool,X_a),fNot),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1)))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1) ).

fof(tsy_c_Lattices_Osemilattice__inf__class_Oinf_res,axiom,
    ! [X_a] :
      ( ti(fun(X_a,fun(X_a,X_a)),semilattice_inf_inf(X_a)) = semilattice_inf_inf(X_a)
     <= semilattice_inf(X_a) ) ).

fof(fact_685_compl__mono,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),Y)),hAPP(X_a,X_a,uminus_uminus(X_a),X)))
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) )
     <= boolean_algebra(X_a) ) ).

fof(fact_387_insert__Diff1,axiom,
    ! [X_a,A_1,X_2,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1))
     => hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)),B_1) ) ).

fof(fact_202_inf__sup__aci_I8_J,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y))
     <= lattice(X_a) ) ).

fof(fact_749_Inf__fin__Inf,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_1] :
          ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
           => hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_968_min__max_Ole__supI2,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_3,X,B_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),B_2))
         => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2))) ) ) ).

fof(fact_785_Sup__insert,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_2,A_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_2),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) ) ).

fof(tsy_c_fconj_res,axiom,
    fconj = ti(fun(bool,fun(bool,bool)),fconj) ).

fof(fact_4_cut,axiom,
    ! [X_a,G_2,G_3,Ts] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_3),Ts))
     => ( hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),Ts))
       <= hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),G_3)) ) ) ).

fof(arity_fun___Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( order(T_1)
     => order(fun(T_2,T_1)) ) ).

fof(fact_924_min__max_OInf__fin_Ounion__idem,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),B_1)) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))
               <= ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool)) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) ) )
     <= linorder(X_a) ) ).

fof(fact_859_Min_Oin__idem,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) )
     <= linorder(X_a) ) ).

fof(fact_299_xt1_I16_J,axiom,
    ! [X_a] :
      ( order(X_a)
     => ! [F,C,B,A_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),A_2))
         => ( hAPP(X_a,X_a,F,B) = ti(X_a,C)
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),C),hAPP(X_a,X_a,F,A_2)))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,F,Y_1)),hAPP(X_a,X_a,F,X_1)))
                 <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_1),X_1)) ) ) ) ) ) ).

fof(tsy_c_Fun_Ooverride__on_res,axiom,
    ! [X_a,X_b] : override_on(X_a,X_b) = ti(fun(fun(X_a,X_b),fun(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_a,X_b)))),override_on(X_a,X_b)) ).

fof(fact_880_min__max_Oinf__commute,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),Y),X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y) ) ).

fof(fact_464_fun__upd__def,axiom,
    ! [X_b,X_a,F,B,A_2,X_1] :
      ( ( hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),A_2),B),X_1) = hAPP(X_a,X_b,F,X_1)
       <= ti(X_a,X_1) != ti(X_a,A_2) )
      & ( ti(X_a,X_1) = ti(X_a,A_2)
       => ti(X_b,B) = hAPP(X_a,X_b,hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),A_2),B),X_1) ) ) ).

fof(fact_319_Diff__triv,axiom,
    ! [X_a,A_1,B_1] :
      ( bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)
     => ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1) ) ).

fof(fact_380_sup__inf__distrib1,axiom,
    ! [X_a] :
      ( distrib_lattice(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)) ) ).

fof(tsy_c_fEx_res,axiom,
    ! [X_a] : fEx(X_a) = ti(fun(fun(X_a,bool),bool),fEx(X_a)) ).

fof(fact_983_fold1Set__sing,axiom,
    ! [X_a,F,A_2,B] :
      ( ti(X_a,B) = ti(X_a,A_2)
    <=> hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),fun(X_a,bool)),finite_fold1Set(X_a),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))),B)) ) ).

fof(fact_318_Diff__disjoint,axiom,
    ! [X_a,A_1,B_1] : bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),A_1)) ).

fof(fact_862_min__max_Oinf__le2,axiom,
    ! [X_a] :
      ( ! [X,Y] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X),Y)),Y))
     <= linorder(X_a) ) ).

fof(fact_813_UnionE,axiom,
    ! [X_a,A_1,C_2] :
      ( ~ ! [X_3] :
            ( ~ hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_3),C_2))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),X_3)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),C_2))) ) ).

fof(fact_714_compl__sup__top,axiom,
    ! [X_a] :
      ( ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),X) = top_top(X_a)
     <= boolean_algebra(X_a) ) ).

fof(fact_755_Inter__lower,axiom,
    ! [X_a,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),A_1)),B_1))
     <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),B_1),A_1)) ) ).

fof(fact_768_Inf__UNIV,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),top_top(fun(X_a,bool))) = bot_bot(X_a) ) ).

fof(fact_27_Collect__empty__eq,axiom,
    ! [X_a,P_1] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),P_1) = bot_bot(fun(X_a,bool))
    <=> ! [X_1] : ~ hBOOL(hAPP(X_a,bool,P_1,X_1)) ) ).

fof(fact_893_Min_Oeq__fold__idem_H,axiom,
    ! [X_a] :
      ( ! [A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),A_2),A_1) )
     <= linorder(X_a) ) ).

fof(fact_335_Int__def,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1))) ).

fof(fact_164_bot__least,axiom,
    ! [X_a] :
      ( ! [A_3] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),bot_bot(X_a)),A_3))
     <= bot(X_a) ) ).

fof(fact_500_inj__on__Un__image__eq__iff,axiom,
    ! [X_a,X_b,F,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)))
     => ( ti(fun(X_a,bool),B_1) = ti(fun(X_a,bool),A_1)
      <=> hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),B_1) ) ) ).

fof(help_fequal_2_1_T,axiom,
    ! [X_a,X,Y] :
      ( ti(X_a,X) != ti(X_a,Y)
      | hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y)) ) ).

fof(fact_710_compl__bot__eq,axiom,
    ! [X_a] :
      ( hAPP(X_a,X_a,uminus_uminus(X_a),bot_bot(X_a)) = top_top(X_a)
     <= boolean_algebra(X_a) ) ).

fof(fact_491_inj__onD,axiom,
    ! [X_a,X_b,X_2,Y_2,F,A_1] :
      ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => ( ti(X_a,X_2) = ti(X_a,Y_2)
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Y_2),A_1)) ) )
       <= hAPP(X_a,X_b,F,X_2) = hAPP(X_a,X_b,F,Y_2) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_653_iso__tuple__UNIV__I,axiom,
    ! [X_a,X_2] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),top_top(fun(X_a,bool)))) ).

fof(fact_750_Inf__binary,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_2,B] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),B) = hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),bot_bot(fun(X_a,bool))))) ) ).

fof(fact_743_the__inv__into__def,axiom,
    ! [X_a,X_b,A_1,F,X_1] : hAPP(X_a,X_b,hAPP(fun(X_b,X_a),fun(X_a,X_b),hAPP(fun(X_b,bool),fun(fun(X_b,X_a),fun(X_a,X_b)),the_inv_into(X_b,X_a),A_1),F),X_1) = hAPP(fun(X_b,bool),X_b,the_1(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,bool)),combs(X_b,bool,bool),hAPP(fun(X_b,bool),fun(X_b,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_b,bool),fun(X_b,fun(bool,bool))),combb(bool,fun(bool,bool),X_b),fconj),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,fun(fun(X_b,bool),bool)),fun(fun(X_b,bool),fun(X_b,bool)),combc(X_b,fun(X_b,bool),bool),member(X_b)),A_1))),hAPP(X_a,fun(X_b,bool),hAPP(fun(X_b,fun(X_a,bool)),fun(X_a,fun(X_b,bool)),combc(X_b,X_a,bool),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(fun(X_b,X_a),fun(X_b,fun(X_a,bool))),combb(X_a,fun(X_a,bool),X_b),fequal(X_a)),F)),X_1))) ).

fof(fact_681_vimage__Compl,axiom,
    ! [X_b,X_a,F,A_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),uminus_uminus(fun(X_b,bool)),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),A_1)) ).

fof(fact_182_predicate1D,axiom,
    ! [X_a,X_2,P_1,Q_2] :
      ( ( hBOOL(hAPP(X_a,bool,Q_2,X_2))
       <= hBOOL(hAPP(X_a,bool,P_1,X_2)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),P_1),Q_2)) ) ).

fof(fact_214_le__iff__sup,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2))
        <=> ti(X_a,Y_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),Y_2) )
     <= semilattice_sup(X_a) ) ).

fof(arity_fun___Lattices_Osemilattice__sup,axiom,
    ! [T_2,T_1] :
      ( semilattice_sup(fun(T_2,T_1))
     <= lattice(T_1) ) ).

fof(fact_573_fun__upd__restrict__conv,axiom,
    ! [X_b,X_a,M_1,Y_2,X_2,D_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),D_2))
     => hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),D_2)),X_2),Y_2) = hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),D_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))),X_2),Y_2) ) ).

fof(fact_952_min__max_Osup__commute,axiom,
    ! [X_a] :
      ( ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),Y),X)
     <= linorder(X_a) ) ).

fof(fact_439_folding__image__simple_Oempty,axiom,
    ! [X_b,X_a,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa))
     => ti(X_a,Z_2) = hAPP(fun(X_b,bool),X_a,Fa,bot_bot(fun(X_b,bool))) ) ).

fof(fact_733_compl__unique,axiom,
    ! [X_a] :
      ( ! [X,Y] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) = bot_bot(X_a)
         => ( ti(X_a,Y) = hAPP(X_a,X_a,uminus_uminus(X_a),X)
           <= top_top(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) ) )
     <= boolean_algebra(X_a) ) ).

fof(fact_615_UNIV__option__conv,axiom,
    ! [X_a] : top_top(fun(option(X_a),bool)) = hAPP(fun(option(X_a),bool),fun(option(X_a),bool),hAPP(option(X_a),fun(fun(option(X_a),bool),fun(option(X_a),bool)),insert(option(X_a)),none(X_a)),hAPP(fun(X_a,bool),fun(option(X_a),bool),hAPP(fun(X_a,option(X_a)),fun(fun(X_a,bool),fun(option(X_a),bool)),image(X_a,option(X_a)),some(X_a)),top_top(fun(X_a,bool)))) ).

fof(fact_807_uminus__Inf,axiom,
    ! [X_a] :
      ( ! [A_1] : hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),uminus_uminus(X_a)),A_1))
     <= comple61589808lgebra(X_a) ) ).

fof(fact_556_vimage__Diff,axiom,
    ! [X_b,X_a,F,A_1,B_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),A_1)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),B_1)) ).

fof(fact_436_distrib__imp2,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] :
          ( ! [X_1,Y_1,Z_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y_1),Z_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),Y_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_1),Z_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z)) )
     <= lattice(X_a) ) ).

fof(fact_112_state__not__singleton__def,axiom,
    ( ? [S_1,T_5] : T_5 != S_1
  <=> hBOOL(hoare_511481251gleton) ) ).

fof(fact_886_min__max_Ofold__inf__le__inf,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B,A_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),B),A_1)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),A_2),B)))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ) ) ).

fof(fact_284_ord__eq__le__subst,axiom,
    ! [X_a,X_b] :
      ( ! [C,A_2,F,B] :
          ( ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),B),C))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),hAPP(X_b,X_a,F,C)))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,X_1)),hAPP(X_b,X_a,F,Y_1)))
                 <= hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),X_1),Y_1)) ) ) )
         <= hAPP(X_b,X_a,F,B) = ti(X_a,A_2) )
     <= ( ord(X_b)
        & ord(X_a) ) ) ).

fof(fact_990_min__max_Osup__Inf1__distrib,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,fun(X_a,bool)),fun(X_a,bool)),combb(fun(X_a,bool),bool,X_a),fEx(X_a)),hAPP(fun(X_a,bool),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,bool),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,bool),fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool))),hAPP(fun(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool))),fun(fun(X_a,fun(X_a,fun(bool,bool))),fun(X_a,fun(fun(X_a,bool),fun(X_a,bool)))),combb(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),X_a),combs(X_a,bool,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool))),hAPP(fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,fun(bool,bool)))),combb(fun(X_a,bool),fun(X_a,fun(bool,bool)),X_a),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fconj)),hAPP(fun(X_a,X_a),fun(X_a,fun(X_a,bool)),hAPP(fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,X_a),fun(X_a,fun(X_a,bool))),combc(X_a,fun(X_a,X_a),fun(X_a,bool)),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool))),hAPP(fun(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool))),fun(fun(X_a,fun(X_a,bool)),fun(X_a,fun(fun(X_a,X_a),fun(X_a,bool)))),combb(fun(X_a,bool),fun(fun(X_a,X_a),fun(X_a,bool)),X_a),combb(X_a,bool,X_a)),fequal(X_a))),hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2))))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),A_1))))) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)) ) )
     <= linorder(X_a) ) ).

fof(fact_48_set__rev__mp,axiom,
    ! [X_a,B_1,X_2,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),B_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_888_Min_Oinsert,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
           => ( hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),A_1))
             <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) ) )
     <= linorder(X_a) ) ).

fof(fact_751_less__eq__Inf__inter,axiom,
    ! [X_a] :
      ( ! [A_1,B_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1)),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),B_1))),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))))
     <= comple44059174attice(X_a) ) ).

fof(fact_341_minus__apply,axiom,
    ! [X_b,X_a] :
      ( ! [A_1,B_1,X_2] : hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,X_a),fun(fun(X_b,X_a),fun(X_b,X_a)),minus_minus(fun(X_b,X_a)),A_1),B_1),X_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),minus_minus(X_a),hAPP(X_b,X_a,A_1,X_2)),hAPP(X_b,X_a,B_1,X_2))
     <= minus(X_a) ) ).

fof(fact_716_subset__Compl__self__eq,axiom,
    ! [X_a,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),A_1)))
    <=> bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1) ) ).

fof(help_COMBI_1_1_U,axiom,
    ! [X_a,P] : hAPP(X_a,X_a,combi(X_a),P) = ti(X_a,P) ).

fof(fact_21_insertCI,axiom,
    ! [X_a,B,A_2,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),B_1)))
     <= ( ti(X_a,B) = ti(X_a,A_2)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),B_1)) ) ) ).

fof(fact_30_ex__in__conv,axiom,
    ! [X_a,A_1] :
      ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
    <=> ? [X_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ).

fof(tsy_c_If_res,axiom,
    ! [X_a] : ti(fun(bool,fun(X_a,fun(X_a,X_a))),if(X_a)) = if(X_a) ).

fof(fact_772_InterI,axiom,
    ! [X_a,A_1,C_2] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),C_2)))
     <= ! [X_3] :
          ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_3),C_2))
         => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_1),X_3)) ) ) ).

fof(fact_599_Un__UNIV__left,axiom,
    ! [X_a,B_1] : top_top(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),top_top(fun(X_a,bool))),B_1) ).

fof(fact_357_inf_Oidem,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [A_3] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),A_3) = ti(X_a,A_3) ) ).

fof(fact_581_Inf__fin_Ounion__disjoint,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => ( ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1)
               => ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),B_1)) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))
                 <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) ) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) ) )
     <= lattice(X_a) ) ).

fof(fact_511_Option_Oset_Osimps_I1_J,axiom,
    ! [X_a] : hAPP(option(X_a),fun(X_a,bool),set(X_a),none(X_a)) = bot_bot(fun(X_a,bool)) ).

fof(fact_745_inj__on__the__inv__into,axiom,
    ! [X_a,X_b,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     => hBOOL(hAPP(fun(X_b,bool),bool,hAPP(fun(X_b,X_a),fun(fun(X_b,bool),bool),inj_on(X_b,X_a),hAPP(fun(X_a,X_b),fun(X_b,X_a),hAPP(fun(X_a,bool),fun(fun(X_a,X_b),fun(X_b,X_a)),the_inv_into(X_a,X_b),A_1),F)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1))) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fconj,P),Q)) ) ).

fof(fact_24_subsetD,axiom,
    ! [X_a,C,A_1,B_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1))
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(fact_575_restrict__fun__upd,axiom,
    ! [X_b,X_a,M_1,Y_2,X_2,D_2] :
      ( ( hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),D_2) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M_1),X_2),Y_2)),D_2)
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),D_2)) )
      & ( hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),M_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),D_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))),X_2),Y_2) = hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),restrict_map(X_a,X_b),hAPP(option(X_b),fun(X_a,option(X_b)),hAPP(X_a,fun(option(X_b),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(X_a,fun(option(X_b),fun(X_a,option(X_b)))),fun_upd(X_a,option(X_b)),M_1),X_2),Y_2)),D_2)
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),D_2)) ) ) ).

fof(tsy_c_Option_Ooption_OSome_res,axiom,
    ! [X_a] : ti(fun(X_a,option(X_a)),some(X_a)) = some(X_a) ).

fof(fact_775_Inter__subset,axiom,
    ! [X_a,B_1,A_1] :
      ( ! [X_3] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),X_3),B_1))
         <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_3),A_1)) )
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),A_1)),B_1))
       <= bot_bot(fun(fun(X_a,bool),bool)) != ti(fun(fun(X_a,bool),bool),A_1) ) ) ).

fof(fact_290_evalc_OSkip,axiom,
    ! [S_4] : hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,skip),S_4),S_4)) ).

fof(tsy_c_Groups_Ouminus__class_Ouminus_res,axiom,
    ! [X_a] :
      ( uminus_uminus(X_a) = ti(fun(X_a,X_a),uminus_uminus(X_a))
     <= uminus(X_a) ) ).

fof(fact_373_inf__mono,axiom,
    ! [X_a] :
      ( ! [B_2,D,A_3,C_1] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),C_1))
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),C_1),D)))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),D)) ) )
     <= semilattice_inf(X_a) ) ).

fof(fact_262_folding__image__simple__idem_Oidem,axiom,
    ! [X_b,X_a,X_2,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite908156982e_idem(X_a,X_b),F),Z_2),G),Fa))
     => ti(X_a,X_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),X_2) ) ).

fof(fact_46_subset__trans,axiom,
    ! [X_a,C_2,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),C_2))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),C_2)) ) ) ).

fof(fact_498_inj__on__diff,axiom,
    ! [X_a,X_b,B_1,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ).

fof(fact_788_Union__upper,axiom,
    ! [X_a,B_1,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),B_1),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)))
     <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),B_1),A_1)) ) ).

fof(fact_967_min__max_Osup__absorb2,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X,Y] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y) = ti(X_a,Y)
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y)) ) ) ).

fof(fact_312_DiffI,axiom,
    ! [X_a,B_1,C,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1)))
       <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1)) ) ) ).

fof(fact_442_folding__image__simple_Oinsert__remove,axiom,
    ! [X_b,X_a,X_2,A_1,F,Z_2,G,Fa] :
      ( hBOOL(hAPP(fun(fun(X_b,bool),X_a),bool,hAPP(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool),hAPP(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool)),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,X_a),fun(fun(fun(X_b,bool),X_a),bool))),finite1357897459simple(X_a,X_b),F),Z_2),G),Fa))
     => ( hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(X_b,X_a,G,X_2)),hAPP(fun(X_b,bool),X_a,Fa,hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),minus_minus(fun(X_b,bool)),A_1),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),bot_bot(fun(X_b,bool))))))
       <= hBOOL(hAPP(fun(X_b,bool),bool,finite_finite(X_b),A_1)) ) ) ).

fof(fact_580_inj__vimage__singleton,axiom,
    ! [X_a,X_b,A_2,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),A_2),bot_bot(fun(X_b,bool))))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),hAPP(fun(X_a,bool),X_a,the_1(X_a),hAPP(X_b,fun(X_a,bool),hAPP(fun(X_a,fun(X_b,bool)),fun(X_b,fun(X_a,bool)),combc(X_a,X_b,bool),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,bool)),hAPP(fun(X_b,fun(X_b,bool)),fun(fun(X_a,X_b),fun(X_a,fun(X_b,bool))),combb(X_b,fun(X_b,bool),X_a),fequal(X_b)),F)),A_2))),bot_bot(fun(X_a,bool)))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool)))) ) ).

fof(fact_524_Inf__fin_Oidem,axiom,
    ! [X_a] :
      ( ! [X] : ti(X_a,X) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),X)
     <= lattice(X_a) ) ).

fof(fact_0_empty,axiom,
    ! [X_a,G_2] : hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),bot_bot(fun(hoare_2118899576triple(X_a),bool)))) ).

fof(fact_584_top1I,axiom,
    ! [X_a,X_2] : hBOOL(hAPP(X_a,bool,top_top(fun(X_a,bool)),X_2)) ).

fof(fact_244_com_Osimps_I5_J,axiom,
    ! [Fun,Com_1,Fun_1,Com_2] :
      ( hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun),Com_1) = hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,Fun_1),Com_2)
    <=> ( Fun = Fun_1
        & Com_2 = Com_1 ) ) ).

fof(fact_835_image__Pow__mono,axiom,
    ! [X_a,X_b,F,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)),B_1))
     => hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),hAPP(fun(fun(X_b,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_b,bool),fun(X_a,bool)),fun(fun(fun(X_b,bool),bool),fun(fun(X_a,bool),bool)),image(fun(X_b,bool),fun(X_a,bool)),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F)),hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),pow(X_b),A_1))),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1))) ) ).

fof(fact_565_vimage__singleton__eq,axiom,
    ! [X_a,X_b,A_2,F,B] :
      ( ti(X_b,B) = hAPP(X_a,X_b,F,A_2)
    <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_a,X_b),fun(fun(X_b,bool),fun(X_a,bool)),vimage(X_a,X_b),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),B),bot_bot(fun(X_b,bool)))))) ) ).

fof(fact_809_Sup__fin__Sup,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1) = hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1) ) ) ) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(P)
      | ~ hBOOL(hAPP(bool,bool,hAPP(bool,fun(bool,bool),fimplies,P),Q)) ) ).

fof(arity_HOL_Obool___Lattices_Obounded__lattice,axiom,
    bounded_lattice(bool) ).

fof(fact_897_Min_Ohom__commute,axiom,
    ! [X_a] :
      ( ! [N,H] :
          ( ! [X_1,Y_1] : hAPP(X_a,X_a,H,hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_1),Y_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,H,X_1)),hAPP(X_a,X_a,H,Y_1))
         => ( ( ti(fun(X_a,bool),N) != bot_bot(fun(X_a,bool))
             => hAPP(X_a,X_a,H,hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),N)) = hAPP(fun(X_a,bool),X_a,big_linorder_Min(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),H),N)) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),N)) ) )
     <= linorder(X_a) ) ).

fof(fact_921_min__max_OInf__fin_Oinsert__idem,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),X_2),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_828_image__Pow__surj,axiom,
    ! [X_b,X_a,F,A_1,B_1] :
      ( ti(fun(X_a,bool),B_1) = hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),A_1)
     => hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1) = hAPP(fun(fun(X_b,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_b,bool),fun(X_a,bool)),fun(fun(fun(X_b,bool),bool),fun(fun(X_a,bool),bool)),image(fun(X_b,bool),fun(X_a,bool)),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F)),hAPP(fun(X_b,bool),fun(fun(X_b,bool),bool),pow(X_b),A_1)) ) ).

fof(arity_fun___Finite__Set_Ofinite,axiom,
    ! [T_2,T_1] :
      ( finite_finite_1(fun(T_2,T_1))
     <= ( finite_finite_1(T_2)
        & finite_finite_1(T_1) ) ) ).

fof(fact_236_folding__one__idem_Oidem,axiom,
    ! [X_a,X_2,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),X_2) = ti(X_a,X_2) ) ).

fof(fact_108_nonempty__iff,axiom,
    ! [X_a,A_1] :
      ( bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1)
    <=> ? [X_1,B_3] :
          ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),B_3)
          & ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_3)) ) ) ).

fof(tsy_c_fTrue_res,axiom,
    fTrue = ti(bool,fTrue) ).

fof(fact_356_inf__idem,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),X) = ti(X_a,X) ) ).

fof(tsy_c_Nitpick_Ofold__graph_H_res,axiom,
    ! [X_a,X_b] : fold_graph(X_a,X_b) = ti(fun(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),fun(X_b,bool)))),fold_graph(X_a,X_b)) ).

fof(help_COMBB_1_1_U,axiom,
    ! [X_a,X_c,X_b,P,Q,R] : hAPP(X_a,X_c,hAPP(fun(X_a,X_b),fun(X_a,X_c),hAPP(fun(X_b,X_c),fun(fun(X_a,X_b),fun(X_a,X_c)),combb(X_b,X_c,X_a),P),Q),R) = hAPP(X_b,X_c,P,hAPP(X_a,X_b,Q,R)) ).

fof(fact_939_minus__max__eq__min,axiom,
    ! [X_a] :
      ( linord219039673up_add(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,uminus_uminus(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),X)),hAPP(X_a,X_a,uminus_uminus(X_a),Y)) ) ).

fof(fact_82_insert__image,axiom,
    ! [X_b,X_a,F,X_2,A_1] :
      ( hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),hAPP(X_a,X_b,F,X_2)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)) = hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),A_1)
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_281_xt2,axiom,
    ! [X_b,X_a] :
      ( ( order(X_a)
        & ord(X_b) )
     => ! [C,F,B,A_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,B)),A_2))
         => ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),C),B))
           => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,C)),A_2))
             <= ! [X_1,Y_1] :
                  ( hBOOL(hAPP(X_b,bool,hAPP(X_b,fun(X_b,bool),ord_less_eq(X_b),Y_1),X_1))
                 => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_b,X_a,F,Y_1)),hAPP(X_b,X_a,F,X_1))) ) ) ) ) ) ).

fof(fact_671_Sup__fin_Oinsert__remove,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X_2,A_1] :
          ( ( ( hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = ti(X_a,X_2)
             <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) )
            & ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))))) = hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1))
             <= bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) ) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_485_not__Some__eq,axiom,
    ! [X_a,X_2] :
      ( ! [Y_1] : hAPP(X_a,option(X_a),some(X_a),Y_1) != ti(option(X_a),X_2)
    <=> none(X_a) = ti(option(X_a),X_2) ) ).

fof(fact_418_insert__Diff,axiom,
    ! [X_a,A_2,A_1] :
      ( ti(fun(X_a,bool),A_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool)))))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1)) ) ).

fof(fact_420_insert__Diff__single,axiom,
    ! [X_a,A_2,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),bot_bot(fun(X_a,bool))))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1) ).

fof(arity_Option_Ooption___Finite__Set_Ofinite,axiom,
    ! [T_1] :
      ( finite_finite_1(option(T_1))
     <= finite_finite_1(T_1) ) ).

fof(tsy_c_Finite__Set_Ofold_res,axiom,
    ! [X_b,X_a] : ti(fun(fun(X_b,fun(X_a,X_a)),fun(X_a,fun(fun(X_b,bool),X_a))),finite_fold(X_b,X_a)) = finite_fold(X_b,X_a) ).

fof(fact_458_fun__upd__upd,axiom,
    ! [X_b,X_a,F,X_2,Y_2,Z_2] : hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2)),X_2),Z_2) = hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Z_2) ).

fof(fact_296_evalc__WHILE__case,axiom,
    ! [B,C,S_3,T_3] :
      ( ( ~ ( hBOOL(hAPP(state,bool,B,S_3))
           => ! [S1] :
                ( ~ hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)),S1),T_3))
               <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,C),S_3),S1)) ) )
       <= ( hBOOL(hAPP(state,bool,B,S_3))
         <= T_3 = S_3 ) )
     <= hBOOL(hAPP(state,bool,hAPP(state,fun(state,bool),hAPP(com,fun(state,fun(state,bool)),evalc,hAPP(com,com,hAPP(fun(state,bool),fun(com,com),while,B),C)),S_3),T_3)) ) ).

fof(fact_96_subsetI,axiom,
    ! [X_a,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),B_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) ) ).

fof(tsy_c_Com_Ocom_OBODY_res,hypothesis,
    body_1 = ti(fun(pname,com),body_1) ).

fof(fact_917_min__max_OInf__fin_Ounion__disjoint,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
           => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
             => ( ( hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_min(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),A_1)),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),B_1))
                 <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) )
               <= ti(fun(X_a,bool),B_1) != bot_bot(fun(X_a,bool)) ) ) ) )
     <= linorder(X_a) ) ).

fof(fact_650_Inf__fin_Oclosed,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),A_1)),A_1))
             <= ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool)))))) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) ) ) ) ).

fof(fact_662_Sup__fin_Oin__idem,axiom,
    ! [X_a] :
      ( ! [X_2,A_1] :
          ( ( hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1))
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= lattice(X_a) ) ).

fof(tsy_c_fequal_res,axiom,
    ! [X_a] : ti(fun(X_a,fun(X_a,bool)),fequal(X_a)) = fequal(X_a) ).

fof(fact_43_insert__compr,axiom,
    ! [X_a,A_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,bool)),combs(X_a,bool,bool),hAPP(fun(X_a,bool),fun(X_a,fun(bool,bool)),hAPP(fun(bool,fun(bool,bool)),fun(fun(X_a,bool),fun(X_a,fun(bool,bool))),combb(bool,fun(bool,bool),X_a),fdisj),hAPP(X_a,fun(X_a,bool),hAPP(fun(X_a,fun(X_a,bool)),fun(X_a,fun(X_a,bool)),combc(X_a,X_a,bool),fequal(X_a)),A_2))),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),B_1))) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1) ).

fof(fact_190_Option_Oset_Osimps_I2_J,axiom,
    ! [X_a,X_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))) = hAPP(option(X_a),fun(X_a,bool),set(X_a),hAPP(X_a,option(X_a),some(X_a),X_2)) ).

fof(tsy_c_hAPP_res,axiom,
    ! [X_c,X_a,B_1_1,B_2_1] : ti(X_c,hAPP(X_a,X_c,B_1_1,B_2_1)) = hAPP(X_a,X_c,B_1_1,B_2_1) ).

fof(fact_474_inj__on__Un,axiom,
    ! [X_a,X_b,F,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)))
    <=> ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),B_1))
        & hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),B_1),A_1))) = bot_bot(fun(X_b,bool))
        & hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1)) ) ) ).

fof(fact_621_Inf__fin_Osingleton,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X_2] : ti(X_a,X_2) = hAPP(fun(X_a,bool),X_a,big_lattice_Inf_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool)))) ) ).

fof(fact_349_inf__sup__aci_I4_J,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y) ) ).

fof(fact_434_dom__override__on,axiom,
    ! [X_a,X_b,F,G,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),F)),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),G)))))),hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(fun(X_a,bool),bool)),fun(fun(X_a,bool),fun(X_a,bool)),combc(X_a,fun(X_a,bool),bool),member(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),G))))) = hAPP(fun(X_a,option(X_b)),fun(X_a,bool),dom(X_a,X_b),hAPP(fun(X_a,bool),fun(X_a,option(X_b)),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b))),hAPP(fun(X_a,option(X_b)),fun(fun(X_a,option(X_b)),fun(fun(X_a,bool),fun(X_a,option(X_b)))),override_on(X_a,option(X_b)),F),G),A_1)) ).

fof(fact_416_distrib__inf__le,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [X,Y,Z] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Z))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z)))) ) ).

fof(fact_803_Sup__inter__less__eq,axiom,
    ! [X_a] :
      ( comple44059174attice(X_a)
     => ! [A_1,B_1] : hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),B_1)))) ) ).

fof(fact_301_folding__one_Ounion__inter,axiom,
    ! [X_a,B_1,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite_folding_one(X_a),F),Fa))
     => ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => ( ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,A_1)),hAPP(fun(X_a,bool),X_a,Fa,B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),X_a,Fa,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)))
           <= bot_bot(fun(X_a,bool)) != hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) ) ) ).

fof(fact_113_UnCI,axiom,
    ! [X_a,A_1,C,B_1] :
      ( ( ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),B_1))
       => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),A_1)) )
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),C),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))) ) ).

fof(fact_610_Collect__const,axiom,
    ! [X_a,P_1] :
      ( ( top_top(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(bool,fun(X_a,bool),combk(bool,X_a),P_1))
       <= hBOOL(P_1) )
      & ( ~ hBOOL(P_1)
       => hAPP(fun(X_a,bool),fun(X_a,bool),collect(X_a),hAPP(bool,fun(X_a,bool),combk(bool,X_a),P_1)) = bot_bot(fun(X_a,bool)) ) ) ).

fof(fact_533_ran__map__upd,axiom,
    ! [X_b,X_a,B,M_1,A_2] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),B),hAPP(fun(X_b,option(X_a)),fun(X_a,bool),ran(X_b,X_a),M_1)) = hAPP(fun(X_b,option(X_a)),fun(X_a,bool),ran(X_b,X_a),hAPP(option(X_a),fun(X_b,option(X_a)),hAPP(X_b,fun(option(X_a),fun(X_b,option(X_a))),hAPP(fun(X_b,option(X_a)),fun(X_b,fun(option(X_a),fun(X_b,option(X_a)))),fun_upd(X_b,option(X_a)),M_1),A_2),hAPP(X_a,option(X_a),some(X_a),B)))
     <= none(X_a) = hAPP(X_b,option(X_a),M_1,A_2) ) ).

fof(fact_79_subset__insert,axiom,
    ! [X_a,B_1,X_2,A_1] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),B_1)))
      <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) )
     <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) ) ).

fof(fact_91_MGF__lemma1,axiom,
    ! [C,G_2] :
      ( ( ( hBOOL(hAPP(com,bool,wt,C))
         => hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,C)),bot_bot(fun(hoare_2118899576triple(state),bool))))) )
       <= ! [X_1] :
            ( hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,hAPP(pname,com,body_1,X_1))),bot_bot(fun(hoare_2118899576triple(state),bool)))))
           <= hBOOL(hAPP(fun(pname,bool),bool,hAPP(pname,fun(fun(pname,bool),bool),member(pname),X_1),hAPP(fun(pname,option(com)),fun(pname,bool),dom(pname,com),body))) ) )
     <= hBOOL(hoare_511481251gleton) ) ).

fof(fact_989_Max_Ounion__disjoint,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B_1,A_1] :
          ( ( ( ( ( hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),B_1))
                 <= bot_bot(fun(X_a,bool)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) )
               <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),B_1) )
             <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) )
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_206_sup__left__commute,axiom,
    ! [X_a] :
      ( ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),Y),Z))
     <= semilattice_sup(X_a) ) ).

fof(fact_833_Pow__UNIV,axiom,
    ! [X_a] : hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),top_top(fun(X_a,bool))) = top_top(fun(fun(X_a,bool),bool)) ).

fof(fact_975_min__max_Ofold__sup__insert,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [B,A_2,A_1] :
          ( hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_2),hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_max(X_a)),B),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_max(X_a)),B),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(tsy_c_Finite__Set_Ocomp__fun__idem_res,axiom,
    ! [X_a,X_b] : finite_comp_fun_idem(X_a,X_b) = ti(fun(fun(X_a,fun(X_b,X_b)),bool),finite_comp_fun_idem(X_a,X_b)) ).

fof(fact_636_image__vimage__eq,axiom,
    ! [X_b,X_a,F,A_1] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_b,X_a),fun(fun(X_a,bool),fun(X_b,bool)),vimage(X_b,X_a),F),A_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool)))) ).

fof(fact_655_surj__def,axiom,
    ! [X_b,X_a,F] :
      ( hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),top_top(fun(X_b,bool))) = top_top(fun(X_a,bool))
    <=> ! [Y_1] :
        ? [X_1] : ti(X_a,Y_1) = hAPP(X_b,X_a,F,X_1) ) ).

fof(fact_154_ord__eq__le__trans,axiom,
    ! [X_a] :
      ( ord(X_a)
     => ! [C_1,A_3,B_2] :
          ( ti(X_a,A_3) = ti(X_a,B_2)
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),C_1))
           <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),C_1)) ) ) ) ).

fof(fact_834_Pow__Int__eq,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),semilattice_inf_inf(fun(fun(X_a,bool),bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1)) = hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) ).

fof(fact_925_min__max_OInf__fin_Oeq__fold__idem_H,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [A_2,A_1] :
          ( hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),A_2),A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1))
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_829_Pow__mono,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1))
     => hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),A_1)),hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),pow(X_a),B_1))) ) ).

fof(fact_601_Int__UNIV__left,axiom,
    ! [X_a,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),top_top(fun(X_a,bool))),B_1) = ti(fun(X_a,bool),B_1) ).

fof(fact_243_com_Osimps_I3_J,axiom,
    ! [Com1_2,Com2_2,Com1_1,Com2_1] :
      ( ( Com2_1 = Com2_2
        & Com1_2 = Com1_1 )
    <=> hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_1),Com2_1) = hAPP(com,com,hAPP(com,fun(com,com),semi,Com1_2),Com2_2) ) ).

fof(fact_663_inf__Sup__absorb,axiom,
    ! [X_a] :
      ( lattice(X_a)
     => ! [A_2,A_1] :
          ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),A_1))
           => ti(X_a,A_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(fact_376_inf__bot__left,axiom,
    ! [X_a] :
      ( bounded_lattice_bot(X_a)
     => ! [X] : bot_bot(X_a) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),bot_bot(X_a)),X) ) ).

fof(fact_16_insert__dom,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F) = hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(X_b,fun(fun(X_b,bool),fun(X_b,bool)),insert(X_b),X_2),hAPP(fun(X_b,option(X_a)),fun(X_b,bool),dom(X_b,X_a),F))
     <= hAPP(X_a,option(X_a),some(X_a),Y_2) = hAPP(X_b,option(X_a),F,X_2) ) ).

fof(fact_353_inf_Ocommute,axiom,
    ! [X_a] :
      ( ! [A_3,B_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_3),B_2) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),B_2),A_3)
     <= semilattice_inf(X_a) ) ).

fof(fact_926_min__max_OInf__fin_Oeq__fold_H,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ! [X_2,A_1] :
          ( ( hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),big_Inf_fin(X_a),ord_min(X_a)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(fun(X_a,bool),X_a,hAPP(X_a,fun(fun(X_a,bool),X_a),hAPP(fun(X_a,fun(X_a,X_a)),fun(X_a,fun(fun(X_a,bool),X_a)),finite_fold(X_a,X_a),ord_min(X_a)),X_2),A_1)
           <= ~ hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(hAPP(bool,bool,fNot,P))
      | hBOOL(P) ) ).

fof(fact_254_folding__one__idem_Oin__idem,axiom,
    ! [X_a,X_2,A_1,F,Fa] :
      ( hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),finite2073411215e_idem(X_a),F),Fa))
     => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_2),A_1))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),F,X_2),hAPP(fun(X_a,bool),X_a,Fa,A_1)) = hAPP(fun(X_a,bool),X_a,Fa,A_1) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ) ).

fof(arity_fun___Lattices_Oboolean__algebra,axiom,
    ! [T_2,T_1] :
      ( boolean_algebra(fun(T_2,T_1))
     <= boolean_algebra(T_1) ) ).

fof(fact_992_Max_Oclosed,axiom,
    ! [X_a] :
      ( ! [A_1] :
          ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(fun(X_a,bool),X_a,big_linorder_Max(X_a),A_1)),A_1))
             <= ! [X_1,Y_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),X_1),Y_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),Y_1),bot_bot(fun(X_a,bool)))))) )
           <= ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool)) )
         <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) )
     <= linorder(X_a) ) ).

fof(fact_340_inf__apply,axiom,
    ! [X_b,X_a] :
      ( ! [F,G,X_2] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_b,X_a,F,X_2)),hAPP(X_b,X_a,G,X_2)) = hAPP(X_b,X_a,hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,X_a),fun(fun(X_b,X_a),fun(X_b,X_a)),semilattice_inf_inf(fun(X_b,X_a)),F),G),X_2)
     <= lattice(X_a) ) ).

fof(tsy_c_Fun_Ofun__upd_res,axiom,
    ! [X_a,X_b] : fun_upd(X_a,X_b) = ti(fun(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b)))),fun_upd(X_a,X_b)) ).

fof(fact_776_Inter__greatest,axiom,
    ! [X_a,C_2,A_1] :
      ( ! [X_3] :
          ( hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),bool),member(fun(X_a,bool)),X_3),A_1))
         => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),X_3)) )
     => hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),C_2),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),A_1))) ) ).

fof(fact_457_fun__upd__idem__iff,axiom,
    ! [X_b,X_a,F,X_2,Y_2] :
      ( ti(X_b,Y_2) = hAPP(X_a,X_b,F,X_2)
    <=> hAPP(X_b,fun(X_a,X_b),hAPP(X_a,fun(X_b,fun(X_a,X_b)),hAPP(fun(X_a,X_b),fun(X_a,fun(X_b,fun(X_a,X_b))),fun_upd(X_a,X_b),F),X_2),Y_2) = ti(fun(X_a,X_b),F) ) ).

fof(fact_916_semilattice__big_OF__eq,axiom,
    ! [X_a,A_1,F,Fa] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => hAPP(fun(X_a,bool),X_a,Fa,A_1) = hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),F),A_1) )
     <= hBOOL(hAPP(fun(fun(X_a,bool),X_a),bool,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(fun(X_a,bool),X_a),bool),big_semilattice_big(X_a),F),Fa)) ) ).

fof(arity_HOL_Obool___Orderings_Oorder,axiom,
    order(bool) ).

fof(fact_7_MGT__BodyN,axiom,
    ! [Pn_1,G_2] :
      ( hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,hAPP(pname,com,body_1,Pn_1))),G_2)),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,hAPP(option(com),com,the(com),hAPP(pname,option(com),body,Pn_1)))),bot_bot(fun(hoare_2118899576triple(state),bool)))))
     => hBOOL(hAPP(fun(hoare_2118899576triple(state),bool),bool,hAPP(fun(hoare_2118899576triple(state),bool),fun(fun(hoare_2118899576triple(state),bool),bool),hoare_1301688828derivs(state),G_2),hAPP(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool),hAPP(hoare_2118899576triple(state),fun(fun(hoare_2118899576triple(state),bool),fun(hoare_2118899576triple(state),bool)),insert(hoare_2118899576triple(state)),hAPP(com,hoare_2118899576triple(state),hoare_Mirabelle_MGT,hAPP(pname,com,body_1,Pn_1))),bot_bot(fun(hoare_2118899576triple(state),bool))))) ) ).

fof(tsy_c_COMBS_res,axiom,
    ! [X_a,X_b,X_c] : combs(X_a,X_b,X_c) = ti(fun(fun(X_a,fun(X_b,X_c)),fun(fun(X_a,X_b),fun(X_a,X_c))),combs(X_a,X_b,X_c)) ).

fof(fact_712_inf__compl__bot,axiom,
    ! [X_a] :
      ( boolean_algebra(X_a)
     => ! [X] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,uminus_uminus(X_a),X)) = bot_bot(X_a) ) ).

fof(fact_398_Int__insert__left__if1,axiom,
    ! [X_a,B_1,A_2,C_2] :
      ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)),C_2) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2))
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),A_2),C_2)) ) ).

fof(fact_306_conseq,axiom,
    ! [X_a,Q_2,G_2,C,P_1] :
      ( ! [Z_3,S_1] :
          ( ? [P_2,Q_3] :
              ( ! [S_2] :
                  ( ! [Z_4] :
                      ( hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_3,Z_4),S_2))
                     <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_2,Z_4),S_1)) )
                 => hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),Q_2,Z_3),S_2)) )
              & hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_2),C),Q_3)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) )
         <= hBOOL(hAPP(state,bool,hAPP(X_a,fun(state,bool),P_1,Z_3),S_1)) )
     => hBOOL(hAPP(fun(hoare_2118899576triple(X_a),bool),bool,hAPP(fun(hoare_2118899576triple(X_a),bool),fun(fun(hoare_2118899576triple(X_a),bool),bool),hoare_1301688828derivs(X_a),G_2),hAPP(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool),hAPP(hoare_2118899576triple(X_a),fun(fun(hoare_2118899576triple(X_a),bool),fun(hoare_2118899576triple(X_a),bool)),insert(hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a),hAPP(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a)),hAPP(fun(X_a,fun(state,bool)),fun(com,fun(fun(X_a,fun(state,bool)),hoare_2118899576triple(X_a))),hoare_759811442triple(X_a),P_1),C),Q_2)),bot_bot(fun(hoare_2118899576triple(X_a),bool))))) ) ).

fof(fact_617_range__ex1__eq,axiom,
    ! [X_a,X_b,B,F] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),top_top(fun(X_a,bool))))
     => ( ? [X_1] :
            ( ! [Y_1] :
                ( ti(X_a,Y_1) = ti(X_a,X_1)
               <= ti(X_b,B) = hAPP(X_a,X_b,F,Y_1) )
            & hAPP(X_a,X_b,F,X_1) = ti(X_b,B) )
      <=> hBOOL(hAPP(fun(X_b,bool),bool,hAPP(X_b,fun(fun(X_b,bool),bool),member(X_b),B),hAPP(fun(X_a,bool),fun(X_b,bool),hAPP(fun(X_a,X_b),fun(fun(X_a,bool),fun(X_b,bool)),image(X_a,X_b),F),top_top(fun(X_a,bool))))) ) ) ).

fof(fact_402_insert__inter__insert,axiom,
    ! [X_a,A_2,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1)) ).

fof(fact_223_le__supE,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,X] :
          ( ~ ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_3),X))
             => ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B_2),X)) )
         <= hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),A_3),B_2)),X)) )
     <= semilattice_sup(X_a) ) ).

fof(fact_904_fold1__antimono,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1))
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),B_1)),hAPP(fun(X_a,bool),X_a,hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a),finite_fold1(X_a),ord_min(X_a)),A_1))) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),B_1)) )
         <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) )
     <= linorder(X_a) ) ).

fof(fact_705_neg__le__iff__le,axiom,
    ! [X_a] :
      ( ordered_ab_group_add(X_a)
     => ! [B,A_2] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),A_2),B))
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),hAPP(X_a,X_a,uminus_uminus(X_a),B)),hAPP(X_a,X_a,uminus_uminus(X_a),A_2))) ) ) ).

fof(fact_342_inf__assoc,axiom,
    ! [X_a] :
      ( semilattice_inf(X_a)
     => ! [X,Y,Z] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),Y),Z)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),X),Y)),Z) ) ).

fof(fact_520_comp__fun__idem_Ofold__insert__idem,axiom,
    ! [X_a,X_b,Z_2,X_2,A_1,F] :
      ( ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
       => hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),A_1)) = hAPP(X_b,X_b,hAPP(X_a,fun(X_b,X_b),F,X_2),hAPP(fun(X_a,bool),X_b,hAPP(X_b,fun(fun(X_a,bool),X_b),hAPP(fun(X_a,fun(X_b,X_b)),fun(X_b,fun(fun(X_a,bool),X_b)),finite_fold(X_a,X_b),F),Z_2),A_1)) )
     <= hBOOL(hAPP(fun(X_a,fun(X_b,X_b)),bool,finite_comp_fun_idem(X_a,X_b),F)) ) ).

fof(fact_994_finite__nonempty__imp__fold1Set,axiom,
    ! [X_a,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
     => ( ti(fun(X_a,bool),A_1) != bot_bot(fun(X_a,bool))
       => ? [X1] : hBOOL(hAPP(X_a,bool,hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),fun(X_a,bool)),finite_fold1Set(X_a),F),A_1),X1)) ) ) ).

fof(fact_717_Compl__empty__eq,axiom,
    ! [X_a] : hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),bot_bot(fun(X_a,bool))) = top_top(fun(X_a,bool)) ).

fof(fact_129_Un__empty__right,axiom,
    ! [X_a,A_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),bot_bot(fun(X_a,bool))) = ti(fun(X_a,bool),A_1) ).

fof(fact_18_subset__singletonD,axiom,
    ! [X_a,A_1,X_2] :
      ( ( bot_bot(fun(X_a,bool)) = ti(fun(X_a,bool),A_1)
        | hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))) = ti(fun(X_a,bool),A_1) )
     <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),X_2),bot_bot(fun(X_a,bool))))) ) ).

fof(fact_727_Diff__Compl,axiom,
    ! [X_a,A_1,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),minus_minus(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),uminus_uminus(fun(X_a,bool)),B_1)) ).

fof(fact_218_sup__absorb2,axiom,
    ! [X_a] :
      ( semilattice_sup(X_a)
     => ! [X,Y] :
          ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X),Y))
         => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),X),Y) = ti(X_a,Y) ) ) ).

fof(fact_134_Un__insert__right,axiom,
    ! [X_a,A_1,A_2,B_1] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),B_1)) ).

fof(fact_248_com_Osimps_I49_J,axiom,
    ! [Pname,Com1,Com2] : hAPP(pname,com,body_1,Pname) != hAPP(com,com,hAPP(com,fun(com,com),semi,Com1),Com2) ).

fof(tsy_c_Big__Operators_Olattice_OInf__fin_res,axiom,
    ! [X_a] :
      ( linorder(X_a)
     => ti(fun(fun(X_a,fun(X_a,X_a)),fun(fun(X_a,bool),X_a)),big_Inf_fin(X_a)) = big_Inf_fin(X_a) ) ).

fof(fact_780_inj__on__inverseI,axiom,
    ! [X_b,X_a,G,F,A_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),F),A_1))
     <= ! [X_1] :
          ( hAPP(X_b,X_a,G,hAPP(X_a,X_b,F,X_1)) = ti(X_a,X_1)
         <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) ) ) ).

fof(fact_414_Un__Int__distrib,axiom,
    ! [X_a,A_1,B_1,C_2] : hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),B_1),C_2)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1)),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),C_2)) ).

fof(fact_787_Union__mono,axiom,
    ! [X_a,A_1,B_1] :
      ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,bool),fun(fun(X_a,bool),bool),ord_less_eq(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),A_1)),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Sup_Sup(fun(X_a,bool)),B_1)))
     <= hBOOL(hAPP(fun(fun(X_a,bool),bool),bool,hAPP(fun(fun(X_a,bool),bool),fun(fun(fun(X_a,bool),bool),bool),ord_less_eq(fun(fun(X_a,bool),bool)),A_1),B_1)) ) ).

fof(fact_157_order__eq__iff,axiom,
    ! [X_a] :
      ( ! [X_2,Y_2] :
          ( ti(X_a,Y_2) = ti(X_a,X_2)
        <=> ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),Y_2),X_2))
            & hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),X_2),Y_2)) ) )
     <= order(X_a) ) ).

fof(tsy_c_Option_Ooption_Ooption__rec_res,axiom,
    ! [X_a,X_b] : ti(fun(X_a,fun(fun(X_b,X_a),fun(option(X_b),X_a))),option_rec(X_a,X_b)) = option_rec(X_a,X_b) ).

fof(fact_759_Inter__insert,axiom,
    ! [X_a,A_2,B_1] : hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),hAPP(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool),hAPP(fun(X_a,bool),fun(fun(fun(X_a,bool),bool),fun(fun(X_a,bool),bool)),insert(fun(X_a,bool)),A_2),B_1)) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_2),hAPP(fun(fun(X_a,bool),bool),fun(X_a,bool),complete_Inf_Inf(fun(X_a,bool)),B_1)) ).

fof(fact_261_option_Orecs_I2_J,axiom,
    ! [X_b,X_a,F1,F2,A_2] : hAPP(X_b,X_a,F2,A_2) = hAPP(option(X_b),X_a,hAPP(fun(X_b,X_a),fun(option(X_b),X_a),hAPP(X_a,fun(fun(X_b,X_a),fun(option(X_b),X_a)),option_rec(X_a,X_b),F1),F2),hAPP(X_b,option(X_b),some(X_b),A_2)) ).

fof(fact_814_less__eq__Sup,axiom,
    ! [X_a] :
      ( ! [U,A_1] :
          ( ! [V] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),V),A_1))
             => hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),U),V)) )
         => ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),U),hAPP(fun(X_a,bool),X_a,complete_Sup_Sup(X_a),A_1)))
           <= bot_bot(fun(X_a,bool)) != ti(fun(X_a,bool),A_1) ) )
     <= comple44059174attice(X_a) ) ).

fof(fact_762_le__Inf__iff,axiom,
    ! [X_a] :
      ( ! [B,A_1] :
          ( ! [X_1] :
              ( hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),X_1))
             <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1)) )
        <=> hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),ord_less_eq(X_a),B),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1))) )
     <= comple44059174attice(X_a) ) ).

fof(fact_34_finite,axiom,
    ! [X_a] :
      ( finite_finite_1(X_a)
     => ! [A_1] : hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1)) ) ).

fof(fact_783_UNIV__witness,axiom,
    ! [X_a] :
    ? [X_1] : hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),top_top(fun(X_a,bool)))) ).

fof(fact_534_inj__on__image__iff,axiom,
    ! [X_b,X_a,G,F,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),X_1),A_1))
         => ! [Xa] :
              ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(X_a,fun(fun(X_a,bool),bool),member(X_a),Xa),A_1))
             => ( hAPP(X_a,X_b,G,hAPP(X_a,X_a,F,Xa)) = hAPP(X_a,X_b,G,hAPP(X_a,X_a,F,X_1))
              <=> hAPP(X_a,X_b,G,X_1) = hAPP(X_a,X_b,G,Xa) ) ) )
     => ( ( hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),G),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,X_a),fun(fun(X_a,bool),fun(X_a,bool)),image(X_a,X_a),F),A_1)))
        <=> hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_b),fun(fun(X_a,bool),bool),inj_on(X_a,X_b),G),A_1)) )
       <= hBOOL(hAPP(fun(X_a,bool),bool,hAPP(fun(X_a,X_a),fun(fun(X_a,bool),bool),inj_on(X_a,X_a),F),A_1)) ) ) ).

fof(fact_192_sup__fun__def,axiom,
    ! [X_a,X_b] :
      ( ! [F,G,X_1] : hAPP(X_b,X_b,hAPP(X_b,fun(X_b,X_b),semilattice_sup_sup(X_b),hAPP(X_a,X_b,F,X_1)),hAPP(X_a,X_b,G,X_1)) = hAPP(X_a,X_b,hAPP(fun(X_a,X_b),fun(X_a,X_b),hAPP(fun(X_a,X_b),fun(fun(X_a,X_b),fun(X_a,X_b)),semilattice_sup_sup(fun(X_a,X_b)),F),G),X_1)
     <= lattice(X_b) ) ).

fof(fact_429_if__image__distrib,axiom,
    ! [X_b,X_a,P_1,F,G,S] : hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),hAPP(fun(X_b,X_a),fun(X_b,X_a),hAPP(fun(X_b,fun(X_a,X_a)),fun(fun(X_b,X_a),fun(X_b,X_a)),combs(X_b,X_a,X_a),hAPP(fun(X_b,X_a),fun(X_b,fun(X_a,X_a)),hAPP(fun(X_b,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,X_a),fun(X_b,fun(X_a,X_a))),combs(X_b,X_a,fun(X_a,X_a)),hAPP(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a))),hAPP(fun(bool,fun(X_a,fun(X_a,X_a))),fun(fun(X_b,bool),fun(X_b,fun(X_a,fun(X_a,X_a)))),combb(bool,fun(X_a,fun(X_a,X_a)),X_b),if(X_a)),P_1)),F)),G)),S) = hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),F),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),S),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),P_1)))),hAPP(fun(X_b,bool),fun(X_a,bool),hAPP(fun(X_b,X_a),fun(fun(X_b,bool),fun(X_a,bool)),image(X_b,X_a),G),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(X_b,bool),fun(fun(X_b,bool),fun(X_b,bool)),semilattice_inf_inf(fun(X_b,bool)),S),hAPP(fun(X_b,bool),fun(X_b,bool),collect(X_b),hAPP(fun(X_b,bool),fun(X_b,bool),hAPP(fun(bool,bool),fun(fun(X_b,bool),fun(X_b,bool)),combb(bool,bool,X_b),fNot),P_1))))) ).

fof(fact_660_Sup__fin_Ounion__inter,axiom,
    ! [X_a] :
      ( ! [B_1,A_1] :
          ( hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),A_1))
         => ( ( hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1) != bot_bot(fun(X_a,bool))
             => hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),A_1)),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),B_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_sup_sup(X_a),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_sup_sup(fun(X_a,bool)),A_1),B_1))),hAPP(fun(X_a,bool),X_a,big_lattice_Sup_fin(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(fun(X_a,bool),fun(fun(X_a,bool),fun(X_a,bool)),semilattice_inf_inf(fun(X_a,bool)),A_1),B_1))) )
           <= hBOOL(hAPP(fun(X_a,bool),bool,finite_finite(X_a),B_1)) ) )
     <= lattice(X_a) ) ).

fof(tsy_c_Orderings_Obot__class_Obot_res,axiom,
    ! [X_a] :
      ( bot_bot(X_a) = ti(X_a,bot_bot(X_a))
     <= bot(X_a) ) ).

fof(help_fequal_1_1_T,axiom,
    ! [X_a,X,Y] :
      ( ~ hBOOL(hAPP(X_a,bool,hAPP(X_a,fun(X_a,bool),fequal(X_a),X),Y))
      | ti(X_a,Y) = ti(X_a,X) ) ).

fof(fact_769_Inf__insert,axiom,
    ! [X_a] :
      ( ! [A_2,A_1] : hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),hAPP(fun(X_a,bool),fun(X_a,bool),hAPP(X_a,fun(fun(X_a,bool),fun(X_a,bool)),insert(X_a),A_2),A_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),semilattice_inf_inf(X_a),A_2),hAPP(fun(X_a,bool),X_a,complete_Inf_Inf(X_a),A_1))
     <= comple44059174attice(X_a) ) ).

fof(fact_957_min__max_Osup_Oassoc,axiom,
    ! [X_a] :
      ( ! [A_3,B_2,C_1] : hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),B_2),C_1)) = hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),hAPP(X_a,X_a,hAPP(X_a,fun(X_a,X_a),ord_max(X_a),A_3),B_2)),C_1)
     <= linorder(X_a) ) ).

