fof(fact_def__d__pair,axiom,
    ! [X,Xa] : scratc535973541d_pair = scratc2073325363d_pair(X,Xa) ).

fof(fact_def__one,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc447146171nd_one(X),Xa))
    <=> pp(scratc365489054_d_and(scratc1638854383_amone(X,Xa),aa_fun171081125l_bool(scratc1063858037l_some(X),Xa))) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( pp(P)
      | ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) ) ).

fof(fact_k__PowerEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X0)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1075903978d_Subq,X12),X0)) ) ).

fof(fact_ATP_Olambda__33,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ck,Uu),Uua)) ) ).

fof(fact_def__esti,axiom,
    ! [X] : scratc577085616bnd_in = scratc688877614d_esti(X) ).

fof(fact_def__nIn,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc436457512nd_nIn,X),Xa))
    <=> ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X),Xa)) ) ).

fof(fact_ATP_Olambda__105,axiom,
    ! [Uu,Uua] :
      ( Uu = aa_TPTP_ind_TPTP_ind(aTP_Lamm_aj(Uu),Uua)
     <= gg_TPTP_ind(Uu) ) ).

fof(fact_ATP_Olambda__91,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_dw(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,Uu),aTP_Lamm_aj(Uua))),Uub),Uuc))
       <= pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_dv(Uua),Uub),Uuc))) ) ) ).

fof(fact_satz6,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_bx)) ).

fof(fact_ATP_Olambda__31,axiom,
    ! [Uu,Uua] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,Uu),Uua))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua))) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cx,Uu),Uua)) ) ).

fof(fact_def__ind,axiom,
    ! [X,Xa] : scratc364662333nd_eps(aa_fun1584354236d_bool(aTP_Lamm_bc(X),Xa)) = scratc397577140nd_ind(X,Xa) ).

fof(help_pp_2_1_U,axiom,
    pp(fTrue) ).

fof(fact_firstis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_TPT43085870d_bool(aTP_Lamm_dj(X0),X12))) ).

fof(fact_ATP_Olambda__58,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uub),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_av(Uu),Uua),Uub)) ) ).

fof(fact_def__d__28__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(X),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc200214063_prop1(X),Xa),Xb)) ) ).

fof(fact_ATP_Olambda__28,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( ? [X2] :
            ( gg_TPTP_ind(X2)
            & Uu = aa_TPTP_ind_TPTP_ind(scratc1802660772d_Inj0,X2) )
      <=> pp(aa_TPTP_ind_bool(aTP_Lamm_bk,Uu)) ) ) ).

fof(fact_def__d__27__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1759335536_prop1,X),Xa))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,Xa),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(X),Xa))) ) ).

fof(fact_neq__ordsucc__0,axiom,
    ! [X0] : aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X0) != scratc474756544ptyset ).

fof(fact_ATP_Olambda__24,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ab,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ac,Uu)) ) ).

fof(fact_n__1__p,axiom,
    scratc1378033452_is_of(scratc1105103726nd_n_1,aTP_Lamm_a) ).

fof(fact_e__fisi,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_du(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_dx(X0),X12))) ).

fof(fact_e__pair__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_TPT43085870d_bool(aTP_Lamm_dp(X0),X12))) ).

fof(fact_def__d__24__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc2141732659_prop1,X))
    <=> pp(aa_fun171081125l_bool(scratc1937946526_n_all,aa_TPT43085870d_bool(aTP_Lamm_af,X))) ) ).

fof(fact_def__bijective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc797103386ective(X),Xa),Xb))
    <=> pp(scratc365489054_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc613384156ective(X),Xa),Xb),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc482614471ective(X),Xa),Xb))) ) ).

fof(fact_k__If__In__01,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),scratc474756544ptyset)),aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X22),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,scratc474756544ptyset))))
     <= ( pp(X0)
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),X22)) ) ) ).

fof(fact_def__n__1,axiom,
    aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,scratc474756544ptyset) = scratc1105103726nd_n_1 ).

fof(fact_suc__p,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_da)) ).

fof(fact_def__second,axiom,
    ! [X,Xa] : scratc988607583second(X,Xa) = scratc1160155785_proj1 ).

fof(fact_k__SepE2,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(X12,X22))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun1431113780TP_ind(scratc249237605_d_Sep(X0),X12))) ) ).

fof(fact_def__st__disj,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc19692584t_disj(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc331353910nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_at(X),Xa),Xb))) ) ).

fof(fact_def__ecect,axiom,
    ! [X,Xa] : scratc1578829631d_e_in(aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X),scratc1819204598d_anec(X,Xa)) = scratc455386573_ecect(X,Xa) ).

fof(fact_def__e__in,axiom,
    ! [X,Xa,Xb] :
      ( Xb = aa_TPTP_ind_TPTP_ind(scratc1578829631d_e_in(X,Xa),Xb)
     <= gg_TPTP_ind(Xb) ) ).

fof(fact_ATP_Olambda__81,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1913827119d_bool(aTP_Lamm_bg(Uu),Uua),Uub))
    <=> ! [X3] :
          ( gg_TPTP_ind(X3)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X3),Uu))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),X3)),aa_TPTP_ind_TPTP_ind(Uua,X3))) ) ) ) ).

fof(fact_ATP_Olambda__16,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cl,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ck,Uu))) ) ).

fof(fact_ATP_Olambda__92,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( gg_TPTP_ind(Uua)
        & gg_TPTP_ind(Uuc)
        & gg_TPTP_ind(Uub) )
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bq(Uu),Uua),Uub),Uuc))
      <=> ( ( Uub = Uuc
            & ~ pp(Uu) )
          | ( Uua = Uuc
            & pp(Uu) ) ) ) ) ).

fof(fact_def__nat__p,axiom,
    ! [X] :
      ( ! [X1] :
          ( pp(aa_TPTP_ind_bool(X1,scratc474756544ptyset))
         => ( pp(aa_TPTP_ind_bool(X1,X))
           <= ! [X2] :
                ( ( pp(aa_TPTP_ind_bool(X1,X2))
                 => pp(aa_TPTP_ind_bool(X1,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X2))) )
               <= gg_TPTP_ind(X2) ) ) )
    <=> pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X)) ) ).

fof(fact_def__ite,axiom,
    ! [X,Xa,Xb,Xc] : scratc397577140nd_ind(Xa,aa_TPT43085870d_bool(scratc1160549379_prop1(X,Xa,Xb),Xc)) = aa_TPTP_ind_TPTP_ind(scratc397970735nd_ite(X,Xa,Xb),Xc) ).

fof(fact_def__invf,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1622566432d_invf(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,Xa),scratc845715765d_soft(X,Xa,Xb)) ).

fof(fact_def__d__Inj0,axiom,
    ! [X] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,X),scratc1802660773d_Inj1) = aa_TPTP_ind_TPTP_ind(scratc1802660772d_Inj0,X) ).

fof(fact_ATP_Olambda__77,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uub),aa_TPTP_ind_TPTP_ind(scratc669746254etprod(Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dk(Uu),Uua),Uub)) ) ).

fof(fact_e__in__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_fun1584354236d_bool(aTP_Lamm_dr(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_dt(X0),X12))) ).

fof(fact_def__all__of,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(X),Xa))
    <=> ! [X2] :
          ( ( scratc1378033452_is_of(X2,X)
           => pp(aa_TPTP_ind_bool(Xa,X2)) )
         <= gg_TPTP_ind(X2) ) ) ).

fof(fact_def__d__Inj1,axiom,
    scratc1802660773d_Inj1 = scratc1238093330In_rec(aTP_Lamm_bm) ).

fof(fact_ATP_Olambda__59,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_de(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc249237605_d_Sep(Uu),Uua)))
       => pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

fof(fact_k__In__ind,axiom,
    ! [X0] :
      ( ! [X14] : pp(aa_TPTP_ind_bool(X0,X14))
     <= ! [X13] :
          ( gg_TPTP_ind(X13)
         => ( pp(aa_TPTP_ind_bool(X0,X13))
           <= ! [X22] :
                ( pp(aa_TPTP_ind_bool(X0,X22))
               <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),X13)) ) ) ) ) ).

fof(fact_def__pair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1834054195nunion(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,X),scratc1802660772d_Inj0)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,Xa),scratc1802660773d_Inj1)) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,X),Xa) ).

fof(fact_def__soft,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc845715765d_soft(X,Xa,Xb),Xc) = scratc397577140nd_ind(X,aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_az(Xa),Xb),Xc)) ).

fof(fact_ATP_Olambda__80,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(Uua,aa_TPTP_ind_TPTP_ind(scratc1578829631d_e_in(Uu,Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_ds(Uu),Uua),Uub)) ) ).

fof(fact_def__wissel__wb,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc886238863sel_wb(X,Xa,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc397970735nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(X),Xc),Xb),X,Xa),aa_TPTP_ind_TPTP_ind(scratc886238862sel_wa(X,Xa,Xb),Xc)) ).

fof(fact_def__d__24__g,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc852036204d_24_g,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,scratc438031894nd_nat),aTP_Lamm_ae(X)) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__omega,axiom,
    gg_TPTP_ind(scratc329810998_omega) ).

fof(help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U,axiom,
    ! [P,Q,R] : aa_bool_bool(aa_TPT2142672771l_bool(P,R),aa_TPTP_ind_bool(Q,R)) = aa_TPTP_ind_bool(cOMBS_2003118649l_bool(P,Q),R) ).

fof(fact_def__proj0,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X) = aa_fun277296641TP_ind(scratc1510329750eplSep(X,aTP_Lamm_bk),scratc266351000_d_Unj) ).

fof(fact_otax2,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_fun1584354236d_bool(aTP_Lamm_dq(X0),X12))) ).

fof(fact_ATP_Olambda__38,axiom,
    ! [Uu,Uua] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,aa_TPTP_ind_TPTP_ind(Uu,Uua)),aa_TPT1424761345TP_ind(scratc535973541d_pair,Uua)) = aa_TPTP_ind_TPTP_ind(aTP_Lamm_bi(Uu),Uua) ).

fof(help_fFalse_1_1_U,axiom,
    ~ pp(fFalse) ).

fof(fact_e__inp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_fun1584354236d_bool(aTP_Lamm_dr(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_ds(X0),X12))) ).

fof(fact_satz3,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cq)) ).

fof(fact_ATP_Olambda__84,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_dg(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uua),aa_TPTP_ind_TPTP_ind(scratc988607583second(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc2073325363d_pair(Uu,Uua),Uub),Uuc))),Uuc)) ) ).

fof(help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,axiom,
    ! [X7,Y] :
      ( Y != X7
      | pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) ) ).

fof(fact_def__inj__h,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(scratc2118137966_inj_h(X,Xa,Xb,Xc),Xd) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X),aa_TPT1424761345TP_ind(aTP_Lamm_ax(Xc),Xd)) ).

fof(fact_satz4a,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cm)) ).

fof(fact_satz4e,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cg)) ).

fof(fact_def__tofs,axiom,
    ! [X,Xa] : scratc576560826bnd_ap = scratc1626302963d_tofs(X,Xa) ).

fof(fact_omega__nat__p,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X0))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X0),scratc329810998_omega)) ) ).

fof(fact_satz4,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_co)) ).

fof(fact_beta,axiom,
    ! [X0,X12,X22] :
      ( aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12)),X22) = aa_TPTP_ind_TPTP_ind(X12,X22)
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),X0)) ) ).

fof(fact_ind__p,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc447146171nd_one(X0),X12))
     => scratc1378033452_is_of(scratc397577140nd_ind(X0,X12),aa_TPT43085870d_bool(aTP_Lamm_ak,X0)) ) ).

fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__HOL__Obool,axiom,
    ! [B_1,B_2] : gg_bool(aa_TPTP_ind_bool(B_1,B_2)) ).

fof(fact_def__nissetprop,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(scratc365489054_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(X),Xc),Xa),scratc472954234_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(X),Xc),Xb))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc946869176etprop(X,Xa),Xb),Xc)) ) ).

fof(fact_def__if,axiom,
    ! [X,Xa,Xb] : scratc364662333nd_eps(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bq(X),Xa),Xb)) = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X,Xa),Xb) ).

fof(fact_ap__Pi,axiom,
    ! [X0,X12,X22,X32] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X32),X0))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X22),X32)),aa_TPTP_ind_TPTP_ind(X12,X32))) )
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,X0),X12))) ) ).

fof(fact_k__SepE1,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),X0))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun1431113780TP_ind(scratc249237605_d_Sep(X0),X12))) ) ).

fof(fact_def__cond2,axiom,
    ! [X] :
      ( pp(aa_fun171081125l_bool(scratc1937946526_n_all,aa_TPT43085870d_bool(aTP_Lamm_ah,X)))
    <=> pp(aa_TPTP_ind_bool(scratc1175272517_cond2,X)) ) ).

fof(fact_k__In__0__1,axiom,
    pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,scratc474756544ptyset),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,scratc474756544ptyset))) ).

fof(fact_def__imp,axiom,
    fimplies = scratc397511553nd_imp ).

fof(fact_def__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd] :
      ( pp(scratc365489054_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,X),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Xa),Xd),Xb)),aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,scratc472954234_d_not(X)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Xa),Xd),Xc))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1160549379_prop1(X,Xa,Xb),Xc),Xd)) ) ).

fof(fact_ATP_Olambda__87,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uua),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_az(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_xi__ext,axiom,
    ! [X0,X12,X22] :
      ( ! [X33] :
          ( gg_TPTP_ind(X33)
         => ( aa_TPTP_ind_TPTP_ind(X12,X33) = aa_TPTP_ind_TPTP_ind(X22,X33)
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X33),X0)) ) )
     => aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X22) ) ).

fof(fact_def__l__iff,axiom,
    ! [X,Xa] :
      ( pp(scratc365489054_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,X),Xa),aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,Xa),X)))
    <=> scratc1259630504_l_iff(X,Xa) ) ).

fof(fact_k__SepI,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),X0))
     => ( pp(aa_TPTP_ind_bool(X12,X22))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun1431113780TP_ind(scratc249237605_d_Sep(X0),X12))) ) ) ).

fof(fact_def__indeq,axiom,
    ! [X,Xa,Xb,Xc,Xd] : scratc397577140nd_ind(Xb,aa_TPT43085870d_bool(scratc1160549380_prop2(X,Xa,Xb,Xc),Xd)) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc707070720_indeq(X,Xa,Xb),Xc),Xd) ).

fof(fact_ATP_Olambda__93,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( ( pp(aa_TPTP_ind_bool(Uua,Uuc))
         <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),Uub),Uuc)) )
       <= pp(aa_TPTP_ind_bool(Uua,Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_dy(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_satz4c,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cj)) ).

fof(fact_ATP_Olambda__98,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uud))) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ap(Uu),Uua),Uub),Uuc),Uud)) ) ).

fof(fact_ATP_Olambda__71,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_dz(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_dy(Uu),Uua),Uub))) ) ).

fof(fact_ATP_Olambda__15,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ct,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cs,Uu))) ) ).

fof(fact_oneax,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(X12,scratc397577140nd_ind(X0,X12)))
     <= pp(aa_fun171081125l_bool(scratc447146171nd_one(X0),X12)) ) ).

fof(fact_set__ext,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X0) )
     => ( ( X12 = X0
         <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1075903978d_Subq,X12),X0)) )
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1075903978d_Subq,X0),X12)) ) ) ).

fof(fact_satz2,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cr)) ).

fof(fact_ATP_Olambda__64,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_du(Uu),Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_dw(Uu),Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dx(Uu),Uua),Uub)) ) ).

fof(fact_def__d__23__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1553370484_prop1,X))
    <=> pp(aa_bool_bool(scratc966238660d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,X),scratc1105103726nd_n_1)),aa_fun171081125l_bool(scratc1807682679n_some,aa_TPT43085870d_bool(aTP_Lamm_ag,X)))) ) ).

fof(fact_ATP_Olambda__86,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uua),Uuc))) ) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__nat,axiom,
    gg_TPTP_ind(scratc438031894nd_nat) ).

fof(fact_ATP_Olambda__37,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bw,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uua),Uu))) ) ).

fof(fact_ATP_Olambda__94,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( ( pp(aa_TPTP_ind_bool(Uua,Uuc))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),Uub),Uuc)) )
       <= pp(aa_TPTP_ind_bool(Uua,Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bd(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_if__i__1,axiom,
    ! [X0,X12,X22] :
      ( ( pp(X0)
       => X12 = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),X22) )
     <= gg_TPTP_ind(X12) ) ).

fof(fact_e__isp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_fun1584354236d_bool(aTP_Lamm_dz(X0),X12))) ).

fof(fact_pairis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_dk(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_dl(X0),X12))) ).

fof(fact_def__famunion,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc840197096munion,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc1538903812_union,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,X),Xa)) ).

fof(fact_def__n__some,axiom,
    scratc1807682679n_some = scratc1063858037l_some(scratc438031894nd_nat) ).

fof(fact_ATP_Olambda__12,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uu),aa_TPTP_ind_TPTP_ind(scratc1031641946_power,scratc438031894nd_nat)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cu,Uu)) ) ).

fof(fact_satz4b,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cl)) ).

fof(fact_ATP_Olambda__27,axiom,
    ! [Uu] :
      ( ( pp(aa_TPTP_ind_bool(aTP_Lamm_bj,Uu))
      <=> ? [X2] :
            ( Uu = aa_TPTP_ind_TPTP_ind(scratc1802660773d_Inj1,X2)
            & gg_TPTP_ind(X2) ) )
     <= gg_TPTP_ind(Uu) ) ).

fof(fact_def__d__ReplSep,axiom,
    ! [X,Xa] : scratc1510329750eplSep(X,Xa) = aa_TPT494704832TP_ind(scratc2130653146d_repl,aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),Xa)) ).

fof(fact_def__prop2,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe] :
      ( pp(aa_fun171081125l_bool(scratc1063858037l_some(X),aa_TPT43085870d_bool(scratc541571638_prop1(X,Xa,Xb,Xc,Xd),Xe)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1160549380_prop2(X,Xa,Xb,Xc),Xd),Xe)) ) ).

fof(fact_def__and3,axiom,
    ! [X,Xa,Xb] :
      ( scratc1819138951d_and3(X,Xa,Xb)
    <=> pp(scratc365489054_d_and(X,scratc365489054_d_and(Xa,Xb))) ) ).

fof(fact_def__d__25__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc582611186_prop1(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(X),Xa)),Xb)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(X),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Xa),Xb)))) ) ).

fof(fact_def__injective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_fun171081125l_bool(scratc331353910nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bb(X),Xa),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc613384156ective(X),Xa),Xb)) ) ).

fof(fact_ATP_Olambda__90,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uuc),Uua)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uuc),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_au(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_def__wel,axiom,
    ! [X] :
      ( scratc512647827nd_wel(X)
    <=> pp(scratc472954234_d_not(scratc472954234_d_not(X))) ) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__TPTP____Interpret__Oind_J_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_fun277296641TP_ind(B_1,B_2)) ).

fof(fact_def__empty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1910799362_empty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X)),scratc438950274nd_non(X,aa_TPT43085870d_bool(aTP_Lamm_av(X),Xa)))) ) ).

fof(fact_ATP_Olambda__62,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dn(Uu),Uua),Uub))
    <=> scratc1378033452_is_of(aa_TPTP_ind_TPTP_ind(scratc2091955909_first(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)) ) ).

fof(fact_def__e__is,axiom,
    ! [X] : scratc1578829636d_e_is(X) = fequal_TPTP_ind ).

fof(fact_ATP_Olambda__43,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,Uua),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bu,Uu),Uua)) ) ).

fof(fact_def__orec,axiom,
    ! [X,Xa] :
      ( scratc2043053164d_orec(X,Xa)
    <=> pp(scratc365489054_d_and(aa_bool_bool(scratc966238660d_l_or(X),Xa),scratc965582655d_l_ec(X,Xa))) ) ).

fof(fact_isseti,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_db,X0)),aa_TPT43085870d_bool(aTP_Lamm_dd,X0))) ).

fof(fact_ATP_Olambda__82,axiom,
    ! [Uu,Uua,Uub,Uuc] : aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2049313840_image(Uu,Uua),Uub),Uuc),aa_TPTP_ind_TPTP_ind(scratc845715765d_soft(Uu,Uua,Uub),Uuc)),scratc474756544ptyset) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_ay(Uu),Uua),Uub),Uuc) ).

fof(fact_if__i__0,axiom,
    ! [X0,X12,X22] :
      ( ( X22 = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),X22)
       <= ~ pp(X0) )
     <= gg_TPTP_ind(X22) ) ).

fof(fact_ordsucc__inj,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X0) )
     => ( aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X12) = aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X0)
       => X12 = X0 ) ) ).

fof(fact_ATP_Olambda__36,axiom,
    ! [Uu,Uua] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489992d_n_in,Uua),Uu)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489992d_n_in,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua)),Uu)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ah,Uu),Uua)) ) ).

fof(fact_satz8,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_bt)) ).

fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_TPTP_ind_TPTP_ind(B_1,B_2)) ).

fof(fact_satz4f,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cf)) ).

fof(fact_def__d__22__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc965008309_prop1,X))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X)),X)) ) ).

fof(fact_def__nonempty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc760351531nempty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1063858037l_some(X),aa_TPT43085870d_bool(aTP_Lamm_av(X),Xa))) ) ).

fof(fact_def__l__some,axiom,
    ! [X,Xa] :
      ( pp(scratc472954234_d_not(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X)),scratc438950274nd_non(X,Xa))))
    <=> pp(aa_fun171081125l_bool(scratc1063858037l_some(X),Xa)) ) ).

fof(fact_ATP_Olambda__101,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_aw(Uu),Uua),Uub),Uuc),Uud) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,aa_TPTP_ind_TPTP_ind(scratc229391652wissel(Uu,Uub),Uuc)),Uud)) ).

fof(fact_first__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_dk(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_dn(X0),X12))) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__d__and,axiom,
    ! [B_1,B_2] : gg_bool(scratc365489054_d_and(B_1,B_2)) ).

fof(fact_ATP_Olambda__1,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cq,Uu))
    <=> ( pp(aa_fun171081125l_bool(scratc1807682679n_some,aa_TPT43085870d_bool(aTP_Lamm_ag,Uu)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,Uu),scratc1105103726nd_n_1)) ) ) ).

fof(fact_ATP_Olambda__23,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bs,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_bt,Uu)) ) ).

fof(fact_k__PowerI,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X0)))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1075903978d_Subq,X12),X0)) ) ).

fof(fact_proj0__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X0)
     => X0 = aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,X0),X12)) ) ).

fof(fact_def__nat,axiom,
    scratc438031894nd_nat = aa_fun1431113780TP_ind(scratc249237605_d_Sep(scratc329810998_omega),aTP_Lamm_ai) ).

fof(fact_k__UnivOf__ZF__closed,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(scratc14374129closed,aa_TPTP_ind_TPTP_ind(scratc1697734440univof,X0))) ).

fof(fact_ATP_Olambda__69,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_dq(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2049313840_image(aa_fun1431113780TP_ind(scratc249237605_d_Sep(Uu),Uua),Uu),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,aa_fun1431113780TP_ind(scratc249237605_d_Sep(Uu),Uua)),scratc1578829631d_e_in(Uu,Uua))),Uub))
       <= pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

fof(fact_def__d__ZF__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc14374129closed,X))
    <=> ( pp(aa_TPTP_ind_bool(scratc1524662370closed,X))
        & pp(aa_TPTP_ind_bool(scratc1689395384closed,X))
        & pp(aa_TPTP_ind_bool(scratc551543572closed,X)) ) ) ).

fof(fact_def__anec,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc1819204598d_anec(X,Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc1063858037l_some(X),aa_TPT43085870d_bool(scratc363809543nd_ecp(X,Xa),Xb))) ) ).

fof(fact_ATP_Olambda__70,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_df(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc249237605_d_Sep(Uu),Uua)))
       <= pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

fof(fact_def__first,axiom,
    ! [X,Xa] : scratc1160155784_proj0 = scratc2091955909_first(X,Xa) ).

fof(fact_def__d__Pi,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc249237605_d_Sep(aa_TPTP_ind_TPTP_ind(scratc1031641946_power,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X),aTP_Lamm_bf(Xa)))),aa_fun1913827119d_bool(aTP_Lamm_bg(X),Xa)) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,X),Xa) ).

fof(fact_def__d__26__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Xa),X)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1170973361_prop1,X),Xa)) ) ).

fof(fact_ATP_Olambda__22,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bu,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_bv,Uu)) ) ).

fof(fact_nat__inv,axiom,
    ! [X0] :
      ( ( ( X0 = scratc474756544ptyset
          | ? [X13] :
              ( pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X13))
              & aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X13) = X0
              & gg_TPTP_ind(X13) ) )
       <= pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X0)) )
     <= gg_TPTP_ind(X0) ) ).

fof(fact_nat__ordsucc,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X0)))
     <= pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X0)) ) ).

fof(fact_def__d__Subq,axiom,
    ! [X,Xa] :
      ( ! [X2] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X2),Xa))
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X2),X)) )
         <= gg_TPTP_ind(X2) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1075903978d_Subq,X),Xa)) ) ).

fof(fact_ATP_Olambda__9,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cr,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),Uu)) ) ).

fof(fact_def__l__ec,axiom,
    ! [X,Xa] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,X),scratc472954234_d_not(Xa)))
    <=> pp(scratc965582655d_l_ec(X,Xa)) ) ).

fof(fact_def__out,axiom,
    ! [X,Xa] : scratc845715765d_soft(aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),Xa),X,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),Xa)),scratc1578829631d_e_in(X,Xa))) = scratc447605379nd_out(X,Xa) ).

fof(fact_ATP_Olambda__65,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aa(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,Uua),Uub))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uub))) ) ) ).

fof(fact_lam__Pi,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X22)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,X0),X12)))
     <= ! [X33] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(X22,X33)),aa_TPTP_ind_TPTP_ind(X12,X33)))
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X33),X0)) )
         <= gg_TPTP_ind(X33) ) ) ).

fof(fact_def__obvious,axiom,
    ( scratc1299153500bvious
  <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,fFalse),fFalse)) ) ).

fof(fact_ATP_Olambda__26,axiom,
    ! [Uu] :
      ( ( scratc474756544ptyset != Uu
      <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ai,Uu)) )
     <= gg_TPTP_ind(Uu) ) ).

fof(fact_k__UnionEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc1538903812_union,X0)))
    <=> ? [X2] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),X2))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X2),X0))
          & gg_TPTP_ind(X2) ) ) ).

fof(fact_def__ap,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X),Xa) = aa_fun277296641TP_ind(scratc1510329750eplSep(X,aa_TPT43085870d_bool(aTP_Lamm_bh,Xa)),scratc1160155785_proj1) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__l__ec,axiom,
    ! [B_1,B_2] : gg_bool(scratc965582655d_l_ec(B_1,B_2)) ).

fof(fact_def__n__one,axiom,
    scratc2053738787_n_one = scratc447146171nd_one(scratc438031894nd_nat) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__eps,axiom,
    ! [B_1] : gg_TPTP_ind(scratc364662333nd_eps(B_1)) ).

fof(fact_def__n__is,axiom,
    scratc1578829636d_e_is(scratc438031894nd_nat) = scratc1097489997d_n_is ).

fof(fact_def__proj1,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1160155785_proj1,X) = aa_fun277296641TP_ind(scratc1510329750eplSep(X,aTP_Lamm_bj),scratc266351000_d_Unj) ).

fof(fact_def__d__In__rec,axiom,
    ! [X,Xa] : scratc364662333nd_eps(aa_TPT43085870d_bool(scratc1863333877_rec_G(X),Xa)) = aa_TPTP_ind_TPTP_ind(scratc1238093330In_rec(X),Xa) ).

fof(fact_def__cond1,axiom,
    aa_TPT43085870d_bool(scratc1097489992d_n_in,scratc1105103726nd_n_1) = scratc1175272516_cond1 ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__emptyset,axiom,
    gg_TPTP_ind(scratc474756544ptyset) ).

fof(fact_ATP_Olambda__7,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),scratc1105103726nd_n_1)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cg,Uu)) ) ).

fof(gsy_c_fEx_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1] : gg_bool(fEx_TPTP_ind(B_1)) ).

fof(fact_ATP_Olambda__17,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ci,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ch,Uu))) ) ).

fof(fact_ATP_Olambda__32,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ch,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),Uua)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua)))) ) ).

fof(fact_ATP_Olambda__99,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_an(Uu),Uua),Uub),Uuc),Uud)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ao(Uu),Uua),Uub),Uuc),Uud)) ) ).

fof(fact_ATP_Olambda__14,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cx,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cy,Uu)) ) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__ec3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc363809482nd_ec3(B_1,B_2,B_3)) ).

fof(fact_ATP_Olambda__67,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uub)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,Uua),Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_br(Uu),Uua),Uub)) ) ).

fof(fact_def__n__pl,axiom,
    ! [X] : scratc1097949183d_n_pl(X) = aa_TPT1424761345TP_ind(scratc576560826bnd_ap,aa_TPTP_ind_TPTP_ind(scratc627637285d_plus,X)) ).

fof(fact_ATP_Olambda__96,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_fun171081125l_bool(scratc1063858037l_some(Uua),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(Uu),Uub),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_ATP_Olambda__4,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cj,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(scratc1105103726nd_n_1),Uu)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu))) ) ).

fof(fact_def__prop4,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1160549382_prop4,X))
    <=> pp(aa_fun171081125l_bool(scratc1063858037l_some(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,scratc438031894nd_nat),aTP_Lamm_ad)),aa_TPT43085870d_bool(scratc2141732660_prop2,X))) ) ).

fof(fact_ATP_Olambda__73,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dp(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_do(Uu),Uua),Uub))) ) ).

fof(fact_estii,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_fun1584354236d_bool(aTP_Lamm_df(X0),X12))) ).

fof(fact_ATP_Olambda__18,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ce,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cf,Uu)) ) ).

fof(fact_estie,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_fun1584354236d_bool(aTP_Lamm_de(X0),X12))) ).

fof(fact_proj1__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X12)
     => aa_TPTP_ind_TPTP_ind(scratc1160155785_proj1,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,X0),X12)) = X12 ) ).

fof(fact_ATP_Olambda__29,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ea,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),Uua),Uua)) ) ).

fof(fact_ATP_Olambda__30,axiom,
    ! [Uu,Uua] :
      ( pp(scratc365489054_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uua),scratc1105103726nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),aa_fun171081125l_bool(scratc1937946526_n_all,aa_TPT43085870d_bool(aTP_Lamm_af,Uua))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cn,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__8,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(scratc1105103726nd_n_1),Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cd,Uu)) ) ).

fof(fact_def__pair__p,axiom,
    ! [X] :
      ( gg_TPTP_ind(X)
     => ( X = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X),scratc474756544ptyset)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,scratc474756544ptyset)))
      <=> pp(aa_TPTP_ind_bool(scratc892573131pair_p,X)) ) ) ).

fof(fact_ATP_Olambda__53,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_bf(Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc1538903812_union,aa_TPTP_ind_TPTP_ind(Uu,Uua)) ).

fof(fact_def__n__in,axiom,
    scratc688877614d_esti(scratc438031894nd_nat) = scratc1097489992d_n_in ).

fof(fact_ATP_Olambda__25,axiom,
    ! [Uu] : aa_TPT494704832TP_ind(scratc2130653146d_repl,aa_TPTP_ind_TPTP_ind(scratc1750339737tminus(Uu),aa_TPTP_ind_TPTP_ind(scratc977553096d_Sing,scratc474756544ptyset))) = aa_TPT494704832TP_ind(aTP_Lamm_bl,Uu) ).

fof(fact_ATP_Olambda__52,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ae(Uu),Uua) = aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uu),Uua)) ).

fof(fact_ATP_Olambda__48,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uua),Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu),Uua)) ) ).

fof(fact_def__surjective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc482614471ective(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc331353910nd_all(Xa),aa_TPT43085870d_bool(scratc2049313840_image(X,Xa),Xb))) ) ).

fof(fact_def__r__ec,axiom,
    ! [X,Xa] :
      ( ( pp(scratc472954234_d_not(Xa))
       <= pp(X) )
    <=> scratc1360517445d_r_ec(X,Xa) ) ).

fof(fact_ATP_Olambda__6,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cw,Uu))
    <=> ( pp(aa_TPTP_ind_bool(scratc1175272516_cond1,Uu))
       => ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cv,Uu)))
         <= pp(aa_TPTP_ind_bool(scratc1175272517_cond2,Uu)) ) ) ) ).

fof(fact_ATP_Olambda__66,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua)),Uub)),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uua),Uub))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_by(Uu),Uua),Uub)) ) ).

fof(fact_def__d__not,axiom,
    ! [X] :
      ( pp(scratc472954234_d_not(X))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,X),fFalse)) ) ).

fof(gsy_c_aa_001t__HOL__Obool_001t__HOL__Obool,axiom,
    ! [B_1,B_2] : gg_bool(aa_bool_bool(B_1,B_2)) ).

fof(fact_nat__p__omega,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X0))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X0),scratc329810998_omega)) ) ).

fof(fact_def__d__Power__closed,axiom,
    ! [X] :
      ( ! [X1] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X1),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X1)),X)) )
         <= gg_TPTP_ind(X1) )
    <=> pp(aa_TPTP_ind_bool(scratc1689395384closed,X)) ) ).

fof(fact_ATP_Olambda__35,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cs,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,Uu),Uua)) ) ) ).

fof(fact_def__setprod,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X),aTP_Lamm_aj(Xa)) = aa_TPTP_ind_TPTP_ind(scratc669746254etprod(X),Xa) ).

fof(fact_def__wissel__wa,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc397970735nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(X),Xc),Xa),X,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc886238862sel_wa(X,Xa,Xb),Xc) ).

fof(fact_ATP_Olambda__103,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uue),Uuf))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uuc)),Uue)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uud)),Uuf))) ) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf)) ) ).

fof(fact_if__i__correct,axiom,
    ! [X0,X12,X22] :
      ( ( ( X12 = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),X22)
          & pp(X0) )
        | ( ~ pp(X0)
          & aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),X22) = X22 ) )
     <= ( gg_TPTP_ind(X22)
        & gg_TPTP_ind(X12) ) ) ).

fof(fact_ATP_Olambda__34,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_af,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uu),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uu),Uua)))) ) ).

fof(fact_def__d__Union__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1524662370closed,X))
    <=> ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc1538903812_union,X1)),X))
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X1),X)) ) ) ) ).

fof(fact_second__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_dk(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_dm(X0),X12))) ).

fof(fact_refis,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_TPT43085870d_bool(aTP_Lamm_ea,X0))) ).

fof(fact_def__is__of,axiom,
    ! [X,Xa] :
      ( scratc1378033452_is_of(X,Xa)
    <=> pp(aa_TPTP_ind_bool(Xa,X)) ) ).

fof(fact_ATP_Olambda__51,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ab,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_aa(Uu),Uua))) ) ).

fof(fact_def__ecp,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X)),Xb),aa_TPTP_ind_TPTP_ind(scratc455976964_ecelt(X,Xa),Xc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc363809543nd_ecp(X,Xa),Xb),Xc)) ) ).

fof(conj_0,conjecture,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_ac)) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__ind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc397577140nd_ind(B_1,B_2)) ).

fof(fact_ATP_Olambda__100,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_aq(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ap(Uua),Uub),Uuc),Uud))) ) ).

fof(gsy_c_fTrue,axiom,
    gg_bool(fTrue) ).

fof(fact_ATP_Olambda__50,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bs,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_br(Uu),Uua))) ) ).

fof(fact_k__Self__In__Power,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X0))) ).

fof(fact_ATP_Olambda__74,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_di(Uu),Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dj(Uu),Uua),Uub)) ) ).

fof(fact_def__setminus,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1750339737tminus(X),Xa) = aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),aa_TPT43085870d_bool(aTP_Lamm_bn,Xa)) ).

fof(fact_def__all,axiom,
    ! [X] : scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X)) = scratc331353910nd_all(X) ).

fof(fact_ATP_Olambda__55,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(aa_TPTP_ind_TPTP_ind(scratc669746254etprod(Uu),Uua)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc2073325363d_pair(Uu,Uua),aa_TPTP_ind_TPTP_ind(scratc2091955909_first(Uu,Uua),Uub)),aa_TPTP_ind_TPTP_ind(scratc988607583second(Uu,Uua),Uub))),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dl(Uu),Uua),Uub)) ) ).

fof(fact_def__d__UPair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc333381110_UPair(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,aa_TPTP_ind_TPTP_ind(scratc1031641946_power,aa_TPTP_ind_TPTP_ind(scratc1031641946_power,scratc474756544ptyset))),aa_TPT1424761345TP_ind(aTP_Lamm_bp(X),Xa)) ).

fof(fact_ATP_Olambda__60,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1621320057d_incl(Uu),Uua),Uub))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1621320057d_incl(Uu),Uub),Uua))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(aa_TPTP_ind_TPTP_ind(scratc1031641946_power,Uu)),Uua),Uub)) ) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dc(Uu),Uua),Uub)) ) ).

fof(fact_def__binunion,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1538903812_union,aa_TPTP_ind_TPTP_ind(scratc333381110_UPair(X),Xa)) = aa_TPTP_ind_TPTP_ind(scratc1834054195nunion(X),Xa) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__n__1,axiom,
    gg_TPTP_ind(scratc1105103726nd_n_1) ).

fof(fact_ATP_Olambda__21,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bw,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_bx,Uu)) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(P)
      | ~ pp(Q)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) ) ).

fof(fact_def__image,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_fun171081125l_bool(scratc1063858037l_some(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_az(Xa),Xb),Xc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2049313840_image(X,Xa),Xb),Xc)) ) ).

fof(fact_def__indeq2,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPT1424761345TP_ind(scratc707070720_indeq(X,Xa,Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1665677616d_11_i(X,Xa,Xb),Xc),Xd)) = scratc1780331826indeq2(X,Xa,Xb,Xc,Xd) ).

fof(fact_n__ax5,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_cu),aTP_Lamm_cw)) ).

fof(fact_setof__p,axiom,
    ! [X0,X12] : scratc1378033452_is_of(aa_fun1431113780TP_ind(scratc249237605_d_Sep(X0),X12),aa_TPT43085870d_bool(aTP_Lamm_db,X0)) ).

fof(fact_ATP_Olambda__76,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_du(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uub),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,Uu),aTP_Lamm_aj(Uua)))) ) ).

fof(fact_ATP_Olambda__102,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_an(Uu),Uua),Uub),Uuc),Uud),Uue))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud),Uue))) ) ).

fof(fact_pair__Sigma,axiom,
    ! [X0,X12,X22] :
      ( ! [X32] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X32),aa_TPTP_ind_TPTP_ind(X12,X22)))
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,X22),X32)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12))) )
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),X0)) ) ).

fof(fact_k__UnivOf__In,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc1697734440univof,X0))) ).

fof(fact_def__ecelt,axiom,
    ! [X,Xa,Xb] : aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),aa_TPT43085870d_bool(Xa,Xb)) = aa_TPTP_ind_TPTP_ind(scratc455976964_ecelt(X,Xa),Xb) ).

fof(fact_ATP_Olambda__79,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_ax(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uu),Uub)) ).

fof(fact_k__EmptyAx,axiom,
    ~ ? [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X0),scratc474756544ptyset)) ).

fof(fact_ATP_Olambda__20,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bz,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ca,Uu)) ) ).

fof(fact_def__omega,axiom,
    scratc329810998_omega = aa_fun1431113780TP_ind(scratc249237605_d_Sep(aa_TPTP_ind_TPTP_ind(scratc1697734440univof,scratc474756544ptyset)),scratc1264677658_nat_p) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_fun1431113780TP_ind(B_1,B_2)) ).

fof(fact_def__orec3,axiom,
    ! [X,Xa,Xb] :
      ( scratc2085000903_orec3(X,Xa,Xb)
    <=> pp(scratc365489054_d_and(scratc447408517nd_or3(X,Xa,Xb),scratc363809482nd_ec3(X,Xa,Xb))) ) ).

fof(fact_n__ax3,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cz)) ).

fof(fact_def__prop3,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1160549381_prop3(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X),Xb)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Xa),Xb))) ) ).

fof(fact_secondis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X0)),aa_TPT43085870d_bool(aTP_Lamm_dh(X0),X12))) ).

fof(fact_ATP_Olambda__83,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_di(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),aa_TPTP_ind_TPTP_ind(scratc2091955909_first(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc2073325363d_pair(Uu,Uua),Uub),Uuc))),Uub)) ) ).

fof(help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U,axiom,
    ! [P,Q,R] : aa_TPT2142672771l_bool(cOMBB_658106424TP_ind(P,Q),R) = aa_boo1142376798l_bool(P,aa_TPTP_ind_bool(Q,R)) ).

fof(fact_ATP_Olambda__54,axiom,
    ! [Uu,Uua] :
      ( gg_TPTP_ind(Uua)
     => ( ? [X3] :
            ( Uua = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,Uu),X3)
            & gg_TPTP_ind(X3) )
      <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bh,Uu),Uua)) ) ) ).

fof(fact_satz7,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_bv)) ).

fof(fact_l__et,axiom,
    ! [X0] :
      ( pp(X0)
     <= scratc512647827nd_wel(X0) ) ).

fof(fact_def__wissel,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc229391652wissel(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X),scratc886238863sel_wb(X,Xa,Xb)) ).

fof(fact_def__fixfu2,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ao(X),Xa),Xb),Xc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1996821977fixfu2(X,Xa),Xb),Xc)) ) ).

fof(fact_nat__ind,axiom,
    ! [X0] :
      ( ( ! [X12] :
            ( pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X12))
           => pp(aa_TPTP_ind_bool(X0,X12)) )
       <= ! [X13] :
            ( ( ( pp(aa_TPTP_ind_bool(X0,X13))
               => pp(aa_TPTP_ind_bool(X0,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X13))) )
             <= pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,X13)) )
           <= gg_TPTP_ind(X13) ) )
     <= pp(aa_TPTP_ind_bool(X0,scratc474756544ptyset)) ) ).

fof(fact_def__plus,axiom,
    ! [X] : scratc397577140nd_ind(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,scratc438031894nd_nat),aTP_Lamm_ad),aa_TPT43085870d_bool(scratc2141732660_prop2,X)) = aa_TPTP_ind_TPTP_ind(scratc627637285d_plus,X) ).

fof(fact_n__ax4,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cy)) ).

fof(fact_ATP_Olambda__75,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dh(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_dg(Uu),Uua),Uub))) ) ).

fof(fact_ATP_Olambda__89,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(scratc965582655d_l_ec(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uuc),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(Uu),Uuc),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_at(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_def__amone,axiom,
    ! [X,Xa] :
      ( pp(scratc1638854383_amone(X,Xa))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X)),aa_fun1584354236d_bool(aTP_Lamm_be(X),Xa))) ) ).

fof(fact_def__n__all,axiom,
    scratc1937946526_n_all = scratc331353910nd_all(scratc438031894nd_nat) ).

fof(fact_def__incl,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1621320057d_incl(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc331353910nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_au(X),Xa),Xb))) ) ).

fof(fact_satz4h,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cc)) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__amone,axiom,
    ! [B_1,B_2] : gg_bool(scratc1638854383_amone(B_1,B_2)) ).

fof(fact_ATP_Olambda__57,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_fun1235454963TP_ind(aTP_Lamm_bo(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(aa_TPTP_ind_bool(Uua,Uub),Uub),scratc364662333nd_eps(aa_fun1584354236d_bool(aTP_Lamm_bc(Uu),Uua))) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q))
      | pp(Q) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [P,Q] :
      ( pp(P)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(fact_proj0__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X22)),X0))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12))) ) ).

fof(fact_ATP_Olambda__46,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489992d_n_in,Uua),Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cv,Uu),Uua)) ) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__or3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc447408517nd_or3(B_1,B_2,B_3)) ).

fof(fact_ATP_Olambda__41,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ce,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua)))) ) ).

fof(gsy_c_fFalse,axiom,
    gg_bool(fFalse) ).

fof(fact_def__d__and,axiom,
    ! [X,Xa] :
      ( pp(scratc365489054_d_and(X,Xa))
    <=> pp(scratc472954234_d_not(scratc965582655d_l_ec(X,Xa))) ) ).

fof(fact_def__or3,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_bool_bool(scratc966238660d_l_or(X),aa_bool_bool(scratc966238660d_l_or(Xa),Xb)))
    <=> pp(scratc447408517nd_or3(X,Xa,Xb)) ) ).

fof(fact_ATP_Olambda__19,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cc,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cb,Uu))) ) ).

fof(fact_ATP_Olambda__13,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uu),scratc438031894nd_nat)) ) ).

fof(fact_def__d__10__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe,Xf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc541571638_prop1(X,Xa,Xb,Xc,Xd),Xe),Xf))
    <=> pp(scratc365489054_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc688877614d_esti(X),Xf),aa_TPTP_ind_TPTP_ind(scratc455386573_ecect(X,Xa),Xd)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Xc),Xf)),Xe))) ) ).

fof(fact_def__d__Unj,axiom,
    scratc266351000_d_Unj = scratc1238093330In_rec(aTP_Lamm_bl) ).

fof(fact_def__d__In__rec__G,axiom,
    ! [X,Xa,Xb] :
      ( ! [X3] :
          ( ! [X4,X5] :
              ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X4),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(X,X4),X5)))
               <= ! [X6] :
                    ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X6),X4))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X6),aa_TPTP_ind_TPTP_ind(X5,X6))) )
                   <= gg_TPTP_ind(X6) ) )
             <= gg_TPTP_ind(X4) )
         => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,Xa),Xb)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1863333877_rec_G(X),Xa),Xb)) ) ).

fof(fact_k__PowerE,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X0)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1075903978d_Subq,X12),X0)) ) ).

fof(fact_satz5,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_ca)) ).

fof(fact_ATP_Olambda__39,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dd,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_db,Uu)),aa_TPT43085870d_bool(aTP_Lamm_dc(Uu),Uua))) ) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__HOL__Obool,hypothesis,
    ! [B_1,B_2] : gg_bool(aa_fun171081125l_bool(B_1,B_2)) ).

fof(fact_def__ectelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc246162978ectelt(X,Xa),Xb) = aa_TPTP_ind_TPTP_ind(scratc361364855ectset(X,Xa),aa_TPTP_ind_TPTP_ind(scratc455976964_ecelt(X,Xa),Xb)) ).

fof(fact_ATP_Olambda__95,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_fun171081125l_bool(scratc331353910nd_all(Uu),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ba(Uu),Uua),Uub),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bb(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_ATP_Olambda__3,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),scratc1105103726nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cm,Uu)) ) ).

fof(fact_ATP_Olambda__2,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cp,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,Uu),scratc1105103726nd_n_1))
       => pp(aa_fun171081125l_bool(scratc2053738787_n_one,aa_TPT43085870d_bool(aTP_Lamm_ag,Uu))) ) ) ).

fof(help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T,axiom,
    ! [X7,Y] :
      ( ( gg_TPTP_ind(X7)
        & gg_TPTP_ind(Y) )
     => ( ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y))
        | X7 = Y ) ) ).

fof(fact_def__unmore,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc467482201unmore(X,Xa),Xb) = aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(X),Xa),Xb)) ).

fof(fact_def__ec3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc363809482nd_ec3(X,Xa,Xb))
    <=> scratc1819138951d_and3(scratc965582655d_l_ec(X,Xa),scratc965582655d_l_ec(Xa,Xb),scratc965582655d_l_ec(Xb,X)) ) ).

fof(fact_satz4d,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_ci)) ).

fof(help_fimplies_2_1_U,axiom,
    ! [Q,P] :
      ( ~ pp(Q)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(fact_proj1__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc1160155785_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X22))))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12))) ) ).

fof(fact_def__ectset,axiom,
    ! [X,Xa] : scratc447605379nd_out(aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X),scratc1819204598d_anec(X,Xa)) = scratc361364855ectset(X,Xa) ).

fof(fact_ATP_Olambda__42,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(scratc1834054195nunion(aa_TPTP_ind_TPTP_ind(scratc977553096d_Sing,scratc474756544ptyset)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,Uu),Uua)) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(aTP_Lamm_bm,Uu),Uua) ).

fof(fact_ATP_Olambda__104,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_al(Uua),Uub),Uuc),Uud),Uue),Uuf))) ) ).

fof(gsy_c_HOL_Oundefined_001t__TPTP____Interpret__Oind,axiom,
    gg_TPTP_ind(undefined_TPTP_ind(tPTP_ind)) ).

fof(fact_ATP_Olambda__85,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uua),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_dv(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_def__d__11__i,axiom,
    ! [X,Xa,Xb] : scratc707070720_indeq(X,Xa,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,X),aTP_Lamm_aj(Xb))) = scratc1665677616d_11_i(X,Xa,Xb) ).

fof(fact_def__nis,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,X),Xa))
    <=> pp(scratc472954234_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,X),Xa))) ) ).

fof(fact_ATP_Olambda__106,axiom,
    ! [Uu] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ad,Uu) = scratc438031894nd_nat ).

fof(fact_ATP_Olambda__40,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc1097949183d_n_pl(aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cb,Uu),Uua)) ) ).

fof(fact_nat__1,axiom,
    pp(aa_TPTP_ind_bool(scratc1264677658_nat_p,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,scratc474756544ptyset))) ).

fof(fact_def__d__Sep,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc249237605_d_Sep(X),Xa) = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(fEx_TPTP_ind(cOMBS_2003118649l_bool(cOMBB_658106424TP_ind(fconj,aa_TPT43085870d_bool(cOMBC_1555011498d_bool(scratc577085616bnd_in),X)),Xa)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,X),aa_fun1235454963TP_ind(aTP_Lamm_bo(X),Xa))),scratc474756544ptyset) ).

fof(fact_satz3a,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cp)) ).

fof(fact_k__Sigma__eta__proj0__proj1,axiom,
    ! [X0,X12,X22] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12)))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X22)),X0))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(scratc1160155785_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X22))))
          & aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc1160155785_proj1,X22)) = X22 ) )
     <= gg_TPTP_ind(X22) ) ).

fof(fact_def__changef,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_aw(X),Xb),Xc),Xd)) = aa_TPTP_ind_TPTP_ind(scratc448029803hangef(X,Xa,Xb,Xc),Xd) ).

fof(fact_ATP_Olambda__45,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uua),aa_TPTP_ind_TPTP_ind(scratc1031641946_power,Uu)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_db,Uu),Uua)) ) ).

fof(fact_def__l__or,axiom,
    ! [X] : aa_boo1142376798l_bool(scratc397511553nd_imp,scratc472954234_d_not(X)) = scratc966238660d_l_or(X) ).

fof(fact_ATP_Olambda__88,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( scratc1378033452_is_of(aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc2073325363d_pair(Uu,Uua),Uub),Uuc),aa_TPT43085870d_bool(aTP_Lamm_dk(Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_do(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_ATP_Olambda__72,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_be(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bd(Uu),Uua),Uub))) ) ).

fof(fact_k__If__In__then__E,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(X0)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X22),X32)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X12),X22)) ) ) ).

fof(fact_ATP_Olambda__68,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uub),Uu))
        & pp(aa_TPTP_ind_bool(Uua,Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_bc(Uu),Uua),Uub)) ) ).

fof(fact_otax1,axiom,
    ! [X0,X12] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc613384156ective(aa_fun1431113780TP_ind(scratc249237605_d_Sep(X0),X12)),X0),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,aa_fun1431113780TP_ind(scratc249237605_d_Sep(X0),X12)),scratc1578829631d_e_in(X0,X12)))) ).

fof(fact_ATP_Olambda__97,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc397511553nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Uub),Uud))),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1578829636d_e_is(Uu),Uuc),Uud)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ba(Uu),Uua),Uub),Uuc),Uud)) ) ).

fof(fact_def__d__Sing,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc977553096d_Sing,X) = aa_TPTP_ind_TPTP_ind(scratc333381110_UPair(X),X) ).

fof(fact_def__i1__s,axiom,
    scratc249237605_d_Sep(scratc438031894nd_nat) = scratc294190720d_i1_s ).

fof(help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U,axiom,
    ! [P,Q,R] : aa_TPTP_ind_bool(aa_TPT43085870d_bool(P,R),Q) = aa_TPTP_ind_bool(aa_TPT43085870d_bool(cOMBC_1555011498d_bool(P),Q),R) ).

fof(fact_def__d__Sigma,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc840197096munion,X),aTP_Lamm_bi(Xa)) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X),Xa) ).

fof(fact_ATP_Olambda__44,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ag,Uu),Uua)) ) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__d__not,axiom,
    ! [B_1] : gg_bool(scratc472954234_d_not(B_1)) ).

fof(fact_k__ReplEq,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( ? [X3] :
            ( gg_TPTP_ind(X3)
            & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X3),X0))
            & X22 = aa_TPTP_ind_TPTP_ind(X12,X3) )
      <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,X0),X12))) ) ) ).

fof(fact_def__non,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc438950274nd_non(X,Xa),Xb))
    <=> pp(scratc472954234_d_not(aa_TPTP_ind_bool(Xa,Xb))) ) ).

fof(fact_satz4g,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_cd)) ).

fof(gsy_c_Scratch__tptp__translate__41577__13242_ONUM647__thf__4__p_Obnd__ect,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc363809547nd_ect(B_1,B_2)) ).

fof(fact_ATP_Olambda__63,axiom,
    ! [Uu,Uua,Uub] :
      ( scratc1378033452_is_of(aa_TPTP_ind_TPTP_ind(scratc1578829631d_e_in(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_ak,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_dt(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__49,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bz,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_by(Uu),Uua))) ) ).

fof(fact_ATP_Olambda__61,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dm(Uu),Uua),Uub))
    <=> scratc1378033452_is_of(aa_TPTP_ind_TPTP_ind(scratc988607583second(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_ak,Uua)) ) ).

fof(help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U,axiom,
    ! [P,X7] :
      ( ~ pp(aa_TPTP_ind_bool(P,X7))
      | pp(fEx_TPTP_ind(P)) ) ).

fof(fact_ATP_Olambda__10,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_da,Uu))
    <=> scratc1378033452_is_of(aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu),aTP_Lamm_a) ) ).

fof(fact_ATP_Olambda__11,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cz,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc438556685nd_nis,aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,Uu)),scratc1105103726nd_n_1)) ) ).

fof(fact_ATP_Olambda__5,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_co,Uu))
    <=> pp(aa_fun171081125l_bool(scratc447146171nd_one(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,scratc438031894nd_nat),aTP_Lamm_ad)),aa_TPT43085870d_bool(aTP_Lamm_cn,Uu))) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( gg_bool(P)
     => ( P = fFalse
        | fTrue = P ) ) ).

fof(fact_k__Pi__ext,axiom,
    ! [X0,X12,X22] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,X0),X12)))
       => ! [X32] :
            ( gg_TPTP_ind(X32)
           => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X32),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc437625362d_d_Pi,X0),X12)))
             => ( X22 = X32
               <= ! [X42] :
                    ( gg_TPTP_ind(X42)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X42),X0))
                     => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X22),X42) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,X32),X42) ) ) ) ) ) )
     <= gg_TPTP_ind(X22) ) ).

fof(fact_def__inverse,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc434070853nverse(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,Xa),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_ay(X),Xa),Xb)) ).

fof(gsy_c_HOL_Oundefined_001t__HOL__Obool,axiom,
    gg_bool(undefined_bool(bool)) ).

fof(fact_ATP_Olambda__78,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,Uub),aa_fun1431113780TP_ind(scratc249237605_d_Sep(Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_dr(Uu),Uua),Uub)) ) ).

fof(fact_proj__Sigma__eta,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( X22 = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc535973541d_pair,aa_TPTP_ind_TPTP_ind(scratc1160155784_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc1160155785_proj1,X22))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc438894732_Sigma,X0),X12))) ) ) ).

fof(fact_def__d__Repl__closed,axiom,
    ! [X] :
      ( ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X1),X))
           => ! [X2] :
                ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc2130653146d_repl,X1),X2)),X))
               <= ! [X3] :
                    ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,aa_TPTP_ind_TPTP_ind(X2,X3)),X))
                     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,X3),X1)) )
                   <= gg_TPTP_ind(X3) ) ) ) )
    <=> pp(aa_TPTP_ind_bool(scratc551543572closed,X)) ) ).

fof(fact_def__ect,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc249237605_d_Sep(aa_TPTP_ind_TPTP_ind(scratc1031641946_power,X)),scratc1819204598d_anec(X,Xa)) = scratc363809547nd_ect(X,Xa) ).

fof(fact_satz1,axiom,
    pp(aa_fun171081125l_bool(scratc1953197229all_of(aTP_Lamm_a),aTP_Lamm_ct)) ).

fof(fact_ATP_Olambda__56,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_bp(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc577085616bnd_in,scratc474756544ptyset),Uub),Uu),Uua) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q))
      | pp(Q)
      | ~ pp(P) ) ).

fof(fact_def__d__24__prop2,axiom,
    ! [X,Xa] :
      ( pp(scratc365489054_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1097489997d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc576560826bnd_ap,Xa),scratc1105103726nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X)),aa_TPTP_ind_bool(scratc2141732659_prop1,Xa)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2141732660_prop2,X),Xa)) ) ).

fof(fact_if__i__or,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X22)
        & gg_TPTP_ind(X12) )
     => ( aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),X22) = X12
        | aa_TPTP_ind_TPTP_ind(scratc577085608bnd_if(X0,X12),X22) = X22 ) ) ).

fof(fact_def__fixfu,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_fun171081125l_bool(scratc1953197229all_of(aa_TPT43085870d_bool(aTP_Lamm_ak,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_aq(X),Xa),Xb),Xc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc2140672153_fixfu(X,Xa),Xb),Xc)) ) ).

fof(fact_ATP_Olambda__47,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bn,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc436457512nd_nIn,Uua),Uu)) ) ).

fof(fact_def__ordsucc,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1035823160rdsucc,X) = aa_TPTP_ind_TPTP_ind(scratc1834054195nunion(X),aa_TPTP_ind_TPTP_ind(scratc977553096d_Sing,X)) ).

