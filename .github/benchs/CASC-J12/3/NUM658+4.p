fof(fact_def__lessis,axiom,
    ! [X,Xa] :
      ( pp(aa_bool_bool(scratc97784429d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,X),Xa)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1033850373lessis,X),Xa)) ) ).

fof(fact_def__d__Subq,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc677227027d_Subq,X),Xa))
    <=> ! [X2] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X2),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X2),Xa)) )
         <= gg_TPTP_ind(X2) ) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q))
      | pp(Q) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(P)
      | ~ pp(Q)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q)) ) ).

fof(fact_nat__ind,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(X0,scratc1868796887ptyset))
     => ( ! [X12] :
            ( pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X12))
           => pp(aa_TPTP_ind_bool(X0,X12)) )
       <= ! [X13] :
            ( ( pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X13))
             => ( pp(aa_TPTP_ind_bool(X0,X13))
               => pp(aa_TPTP_ind_bool(X0,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X13))) ) )
           <= gg_TPTP_ind(X13) ) ) ) ).

fof(fact_ap__Pi,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,X0),X12)))
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X22),X32)),aa_TPTP_ind_TPTP_ind(X12,X32)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X32),X0)) ) ) ).

fof(fact_neq__ordsucc__0,axiom,
    ! [X0] : aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X0) != scratc1868796887ptyset ).

fof(fact_ATP_Olambda__18,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dr,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dq,Uu))) ) ).

fof(fact_k__UnivOf__In,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc414849215univof,X0))) ).

fof(fact_def__surjective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_fun171081125l_bool(scratc1236698207nd_all(Xa),aa_TPT43085870d_bool(scratc1180859609_image(X,Xa),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc694148958ective(X),Xa),Xb)) ) ).

fof(fact_def__first,axiom,
    ! [X,Xa] : scratc1223501678_first(X,Xa) = scratc291701553_proj0 ).

fof(fact_def__d__Repl__closed,axiom,
    ! [X] :
      ( ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( ! [X2] :
                ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,X1),X2)),X))
               <= ! [X3] :
                    ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X3),X1))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(X2,X3)),X)) )
                   <= gg_TPTP_ind(X3) ) )
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X1),X)) ) )
    <=> pp(aa_TPTP_ind_bool(scratc736361789closed,X)) ) ).

fof(fact_k__In__0__1,axiom,
    pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,scratc1868796887ptyset),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,scratc1868796887ptyset))) ).

fof(fact_ATP_Olambda__26,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cw,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cx,Uu)) ) ).

fof(fact_def__proj1,axiom,
    ! [X] : aa_fun277296641TP_ind(scratc1721864237eplSep(X,aTP_Lamm_bi),scratc1130949423_d_Unj) = aa_TPTP_ind_TPTP_ind(scratc291701554_proj1,X) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_fun1431113780TP_ind(B_1,B_2)) ).

fof(fact_ATP_Olambda__50,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cw,Uu),Uua))
    <=> scratc1216546672_orec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(aTP_Lamm_cu(Uu),Uua)),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(aTP_Lamm_cv(Uu),Uua))) ) ).

fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__HOL__Obool,axiom,
    ! [B_1,B_2] : gg_bool(aa_TPTP_ind_bool(B_1,B_2)) ).

fof(fact_def__or3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc1352752814nd_or3(X,Xa,Xb))
    <=> pp(aa_bool_bool(scratc97784429d_l_or(X),aa_bool_bool(scratc97784429d_l_or(Xa),Xb))) ) ).

fof(fact_def__amone,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),aa_fun1584354236d_bool(aTP_Lamm_bd(X),Xa)))
    <=> pp(scratc770400152_amone(X,Xa)) ) ).

fof(fact_def__pair__p,axiom,
    ! [X] :
      ( ( pp(aa_TPTP_ind_bool(scratc493896180pair_p,X))
      <=> aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X),scratc1868796887ptyset)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,scratc1868796887ptyset))) = X )
     <= gg_TPTP_ind(X) ) ).

fof(fact_ATP_Olambda__78,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,Uua),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dg,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__42,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ab,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_aa,Uu))) ) ).

fof(fact_satz14,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cd)) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__n__1,axiom,
    gg_TPTP_ind(scratc2125357189nd_n_1) ).

fof(fact_ATP_Olambda__80,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_en,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uua),aa_TPTP_ind_TPTP_ind(scratc163187715_power,Uu))) ) ).

fof(conj_0,conjecture,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ab)) ).

fof(fact_satz4c,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dv)) ).

fof(fact_def__l__ec,axiom,
    ! [X,Xa] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,X),scratc1337552657_d_not(Xa)))
    <=> pp(scratc97128424d_l_ec(X,Xa)) ) ).

fof(fact_def__d__Inj1,axiom,
    scratc1403983822d_Inj1 = scratc1449627817In_rec(aTP_Lamm_bl) ).

fof(fact_def__famunion,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc86753791munion,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc670449581_union,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,X),Xa)) ).

fof(help_fequal_2_1_fequal_001t__TPTP____Interpret__Oind_T,axiom,
    ! [X7,Y] :
      ( Y != X7
      | pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) ) ).

fof(fact_ind__p,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc1352490468nd_one(X0),X12))
     => scratc95148227_is_of(scratc1302921437nd_ind(X0,X12),aa_TPT43085870d_bool(aTP_Lamm_aj,X0)) ) ).

fof(fact_ATP_Olambda__2,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_eb,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,Uu),scratc2125357189nd_n_1))
       => pp(aa_fun171081125l_bool(scratc770853562_n_one,aa_TPT43085870d_bool(aTP_Lamm_af,Uu))) ) ) ).

fof(fact_ATP_Olambda__34,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ce,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cf,Uu)) ) ).

fof(fact_satz8,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_df)) ).

fof(fact_k__Self__In__Power,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X0),aa_TPTP_ind_TPTP_ind(scratc163187715_power,X0))) ).

fof(fact_def__ite,axiom,
    ! [X,Xa,Xb,Xc] : scratc1302921437nd_ind(Xa,aa_TPT43085870d_bool(scratc292095148_prop1(X,Xa,Xb),Xc)) = aa_TPTP_ind_TPTP_ind(scratc1303315032nd_ite(X,Xa,Xb),Xc) ).

fof(fact_ATP_Olambda__4,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(scratc2125357189nd_n_1),Uu)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_dv,Uu)) ) ).

fof(help_fequal_1_1_fequal_001t__TPTP____Interpret__Oind_T,axiom,
    ! [X7,Y] :
      ( ( X7 = Y
        | ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(fequal_TPTP_ind,X7),Y)) )
     <= ( gg_TPTP_ind(Y)
        & gg_TPTP_ind(X7) ) ) ).

fof(fact_def__d__not,axiom,
    ! [X] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,X),fFalse))
    <=> pp(scratc1337552657_d_not(X)) ) ).

fof(fact_ATP_Olambda__86,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_db,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_da(Uu),Uua))) ) ).

fof(fact_ATP_Olambda__119,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1913827119d_bool(aTP_Lamm_bf(Uu),Uua),Uub))
    <=> ! [X3] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),X3)),aa_TPTP_ind_TPTP_ind(Uua,X3)))
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X3),Uu)) )
         <= gg_TPTP_ind(X3) ) ) ).

fof(fact_def__n__some,axiom,
    scratc1409005728n_some = scratc665181086l_some(scratc1343376191nd_nat) ).

fof(fact_proj__Sigma__eta,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12)))
       => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc291701554_proj1,X22)) = X22 ) ) ).

fof(fact_ATP_Olambda__91,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(aa_TPTP_ind_TPTP_ind(scratc271069303etprod(Uu),Uua)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1674648412d_pair(Uu,Uua),aa_TPTP_ind_TPTP_ind(scratc1223501678_first(Uu,Uua),Uub)),aa_TPTP_ind_TPTP_ind(scratc1853206006second(Uu,Uua),Uub))),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ex(Uu),Uua),Uub)) ) ).

fof(fact_def__d__26__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc117541320_prop1,X),Xa))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Xa),X))) ) ).

fof(fact_def__d__In__rec,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1449627817In_rec(X),Xa) = scratc1270006630nd_eps(aa_TPT43085870d_bool(scratc1651185310_rec_G(X),Xa)) ).

fof(fact_def__ect,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc1113836028_d_Sep(aa_TPTP_ind_TPTP_ind(scratc163187715_power,X)),scratc691974413d_anec(X,Xa)) = scratc1269153844nd_ect(X,Xa) ).

fof(fact_ATP_Olambda__27,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cs,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ct,Uu)) ) ).

fof(fact_ATP_Olambda__44,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( scratc1868796887ptyset != Uu
      <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ah,Uu)) ) ) ).

fof(fact_ATP_Olambda__83,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uua),Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__133,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_fun171081125l_bool(scratc1236698207nd_all(Uu),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_az(Uu),Uua),Uub),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ba(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_k__SepE2,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(X12,X22))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X0),X12))) ) ).

fof(fact_n__1__p,axiom,
    scratc95148227_is_of(scratc2125357189nd_n_1,aTP_Lamm_a) ).

fof(fact_ATP_Olambda__88,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uu),Uua)) = aa_TPTP_ind_TPTP_ind(aTP_Lamm_ad(Uu),Uua) ).

fof(fact_def__plus,axiom,
    ! [X] : scratc1302921437nd_ind(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,scratc1343376191nd_nat),aTP_Lamm_ac),aa_TPT43085870d_bool(scratc1088300619_prop2,X)) = aa_TPTP_ind_TPTP_ind(scratc1647890748d_plus,X) ).

fof(fact_ATP_Olambda__141,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_ak(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uuc)),Uue)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uud)),Uuf)))
         <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uue),Uuf)) ) ) ) ).

fof(fact_ATP_Olambda__33,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ch,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cg,Uu))) ) ).

fof(fact_ATP_Olambda__82,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1341801809nd_nIn,Uua),Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bm,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__52,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cq,Uu),Uua))
    <=> pp(scratc1269153779nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(scratc1003210186ffprop(Uu),Uua)),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(scratc1003210186ffprop(Uua),Uu)))) ) ).

fof(fact_ATP_Olambda__84,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dl,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dk(Uu),Uua))) ) ).

fof(fact_def__d__11__i,axiom,
    ! [X,Xa,Xb] : scratc912234311d_11_i(X,Xa,Xb) = scratc1986100137_indeq(X,Xa,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,X),aTP_Lamm_ai(Xb))) ).

fof(fact_ATP_Olambda__103,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uub)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,Uua),Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dd(Uu),Uua),Uub)) ) ).

fof(fact_satz4h,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_do)) ).

fof(fact_ATP_Olambda__130,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( gg_TPTP_ind(Uua)
        & gg_TPTP_ind(Uuc)
        & gg_TPTP_ind(Uub) )
     => ( ( ( ~ pp(Uu)
            & Uuc = Uub )
          | ( Uuc = Uua
            & pp(Uu) ) )
      <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bp(Uu),Uua),Uub),Uuc)) ) ) ).

fof(fact_set__ext,axiom,
    ! [X0,X12] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X0) )
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc677227027d_Subq,X0),X12))
       => ( X12 = X0
         <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc677227027d_Subq,X12),X0)) ) ) ) ).

fof(fact_satz10d,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_bz)) ).

fof(fact_k__If__In__then__E,axiom,
    ! [X0,X12,X22,X32] :
      ( pp(X0)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X22),X32)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),X22)) ) ) ).

fof(fact_satz5,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dm)) ).

fof(fact_ATP_Olambda__127,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(Uu),Uua),Uub),Uuc))
    <=> pp(scratc97128424d_l_ec(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uuc),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uuc),Uub))) ) ).

fof(fact_def__i1__s,axiom,
    scratc1113836028_d_Sep(scratc1343376191nd_nat) = scratc1573220137d_i1_s ).

fof(fact_e__inp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_fun1584354236d_bool(aTP_Lamm_fd(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_fe(X0),X12))) ).

fof(fact_def__and3,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc1230087477_d_and(X,scratc1230087477_d_and(Xa,Xb)))
    <=> scratc691908766d_and3(X,Xa,Xb) ) ).

fof(fact_ATP_Olambda__71,axiom,
    ! [Uu,Uua] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_en,Uu)),aa_TPT43085870d_bool(aTP_Lamm_eo(Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ep,Uu),Uua)) ) ).

fof(fact_satz4e,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ds)) ).

fof(fact_ATP_Olambda__28,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cr,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cq,Uu))) ) ).

fof(fact_ATP_Olambda__58,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ae,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uu),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uu),Uua)))) ) ).

fof(fact_def__prop2,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe] :
      ( pp(aa_fun171081125l_bool(scratc665181086l_some(X),aa_TPT43085870d_bool(scratc1635623245_prop1(X,Xa,Xb,Xc,Xd),Xe)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc292095149_prop2(X,Xa,Xb,Xc),Xd),Xe)) ) ).

fof(fact_ATP_Olambda__126,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fa(Uu),Uua),Uub),Uuc))
    <=> scratc95148227_is_of(aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1674648412d_pair(Uu,Uua),Uub),Uuc),aa_TPT43085870d_bool(aTP_Lamm_ew(Uu),Uua)) ) ).

fof(fact_ATP_Olambda__45,axiom,
    ! [Uu] :
      ( ( pp(aa_TPTP_ind_bool(aTP_Lamm_bi,Uu))
      <=> ? [X2] :
            ( gg_TPTP_ind(X2)
            & Uu = aa_TPTP_ind_TPTP_ind(scratc1403983822d_Inj1,X2) ) )
     <= gg_TPTP_ind(Uu) ) ).

fof(fact_ATP_Olambda__134,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_fun171081125l_bool(scratc665181086l_some(Uua),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_aq(Uu),Uub),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_def__d__ZF__closed,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1949709210closed,X))
    <=> ( pp(aa_TPTP_ind_bool(scratc886935759closed,X))
        & pp(aa_TPTP_ind_bool(scratc736361789closed,X))
        & pp(aa_TPTP_ind_bool(scratc722202745closed,X)) ) ) ).

fof(fact_ATP_Olambda__15,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ef,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ee,Uu))) ) ).

fof(fact_ATP_Olambda__135,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uud))),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),Uuc),Uud)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_az(Uu),Uua),Uub),Uuc),Uud)) ) ).

fof(fact_ATP_Olambda__47,axiom,
    ! [Uu,Uua] :
      ( scratc1216546672_orec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_co,Uu),Uua)) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__d__not,axiom,
    ! [B_1] : gg_bool(scratc1337552657_d_not(B_1)) ).

fof(fact_ATP_Olambda__61,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uua),Uu)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_di,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__108,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_bd(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bc(Uu),Uua),Uub))) ) ).

fof(fact_def__anec,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(scratc691974413d_anec(X,Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc665181086l_some(X),aa_TPT43085870d_bool(scratc1269153840nd_ecp(X,Xa),Xb))) ) ).

fof(fact_k__PowerE,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc163187715_power,X0)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc677227027d_Subq,X12),X0)) ) ).

fof(fact_satz10g,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_bt)) ).

fof(fact_def__iii,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(scratc1003210186ffprop(Xa),X))) ) ).

fof(fact_def__prop3,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X),Xb)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Xa),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc292095150_prop3(X),Xa),Xb)) ) ).

fof(fact_ATP_Olambda__8,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(scratc2125357189nd_n_1),Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_dp,Uu)) ) ).

fof(fact_def__all,axiom,
    ! [X] : scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)) = scratc1236698207nd_all(X) ).

fof(fact_satz4b,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dx)) ).

fof(fact_ATP_Olambda__56,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),Uua)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dt,Uu),Uua)) ) ).

fof(fact_def__ecp,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1269153840nd_ecp(X,Xa),Xb),Xc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(aa_TPTP_ind_TPTP_ind(scratc163187715_power,X)),Xb),aa_TPTP_ind_TPTP_ind(scratc1735006381_ecelt(X,Xa),Xc))) ) ).

fof(fact_ATP_Olambda__72,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dn,Uu),Uua)) ) ).

fof(fact_satz13,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cf)) ).

fof(fact_ATP_Olambda__100,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_fg(Uu),Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fi(Uu),Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fj(Uu),Uua),Uub)) ) ).

fof(fact_def__d__24__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc1088300618_prop1,X))
    <=> pp(aa_fun171081125l_bool(scratc655061301_n_all,aa_TPT43085870d_bool(aTP_Lamm_ae,X))) ) ).

fof(help_fimplies_2_1_U,axiom,
    ! [Q,P] :
      ( ~ pp(Q)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(fact_ATP_Olambda__138,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ap(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ao(Uua),Uub),Uuc),Uud))) ) ).

fof(fact_def__bijective,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc1230087477_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1969661829ective(X),Xa),Xb),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc694148958ective(X),Xa),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc5897411ective(X),Xa),Xb)) ) ).

fof(fact_ATP_Olambda__123,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fh(Uu),Uua),Uub),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uua),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uuc))) ) ).

fof(fact_def__d__Sing,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc578876145d_Sing,X) = aa_TPTP_ind_TPTP_ind(scratc1727421453_UPair(X),X) ).

fof(fact_ATP_Olambda__111,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_es(Uu),Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_et(Uu),Uua),Uub)) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__nat,axiom,
    gg_TPTP_ind(scratc1343376191nd_nat) ).

fof(fact_otax2,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_fc(X0),X12))) ).

fof(fact_def__invf,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc495336247d_invf(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,Xa),scratc1865969228d_soft(X,Xa,Xb)) ).

fof(fact_ATP_Olambda__36,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ca,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cb,Uu)) ) ).

fof(fact_n__ax4,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ek)) ).

fof(fact_ATP_Olambda__90,axiom,
    ! [Uu,Uua] :
      ( gg_TPTP_ind(Uua)
     => ( ? [X3] :
            ( aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,Uu),X3) = Uua
            & gg_TPTP_ind(X3) )
      <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bg,Uu),Uua)) ) ) ).

fof(fact_def__ec3,axiom,
    ! [X,Xa,Xb] :
      ( scratc691908766d_and3(scratc97128424d_l_ec(X,Xa),scratc97128424d_l_ec(Xa,Xb),scratc97128424d_l_ec(Xb,X))
    <=> pp(scratc1269153779nd_ec3(X,Xa,Xb)) ) ).

fof(fact_ATP_Olambda__115,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ew(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uub),aa_TPTP_ind_TPTP_ind(scratc271069303etprod(Uu),Uua))) ) ).

fof(fact_ATP_Olambda__6,axiom,
    ! [Uu] :
      ( ( ( pp(aa_TPTP_ind_bool(scratc306818286_cond2,Uu))
         => pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_eh,Uu))) )
       <= pp(aa_TPTP_ind_bool(scratc306818285_cond1,Uu)) )
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ei,Uu)) ) ).

fof(fact_ATP_Olambda__121,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),aa_TPTP_ind_TPTP_ind(scratc1223501678_first(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1674648412d_pair(Uu,Uua),Uub),Uuc))),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_eu(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_if__i__correct,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X12)
        & gg_TPTP_ind(X22) )
     => ( ( X12 = aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),X22)
          & pp(X0) )
        | ( aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),X22) = X22
          & ~ pp(X0) ) ) ) ).

fof(fact_proj0__pair__eq,axiom,
    ! [X0,X12] :
      ( aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,X0),X12)) = X0
     <= gg_TPTP_ind(X0) ) ).

fof(fact_def__empty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1042345131_empty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),scratc1344294571nd_non(X,aa_TPT43085870d_bool(aTP_Lamm_au(X),Xa)))) ) ).

fof(fact_if__i__0,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( ~ pp(X0)
       => X22 = aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),X22) ) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__omega,axiom,
    gg_TPTP_ind(scratc1608840415_omega) ).

fof(fact_ATP_Olambda__116,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uub),aa_fun1431113780TP_ind(scratc1113836028_d_Sep(Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_fd(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__93,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_fun1235454963TP_ind(aTP_Lamm_bn(Uu),Uua),Uub) = aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(aa_TPTP_ind_bool(Uua,Uub),Uub),scratc1270006630nd_eps(aa_fun1584354236d_bool(aTP_Lamm_bb(Uu),Uua))) ).

fof(fact_secondis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_et(X0),X12))) ).

fof(fact_k__SepI,axiom,
    ! [X0,X12,X22] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X0),X12)))
       <= pp(aa_TPTP_ind_bool(X12,X22)) )
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),X0)) ) ).

fof(fact_ATP_Olambda__68,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_by,Uu),Uua))
    <=> ( pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1033850373lessis,Uu),Uua)) ) ) ).

fof(fact_def__d__10__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd,Xe,Xf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1635623245_prop1(X,Xa,Xb,Xc,Xd),Xe),Xf))
    <=> pp(scratc1230087477_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(X),Xf),aa_TPTP_ind_TPTP_ind(scratc1734415990_ecect(X,Xa),Xd)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Xc),Xf)),Xe))) ) ).

fof(fact_ATP_Olambda__131,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),Uub),Uuc))
         => pp(aa_TPTP_ind_bool(Uua,Uuc)) ) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_fk(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_ATP_Olambda__79,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_af,Uu),Uua)) ) ).

fof(gsy_c_fTrue,axiom,
    gg_bool(fTrue) ).

fof(fact_def__d__In__rec__G,axiom,
    ! [X,Xa,Xb] :
      ( ! [X3] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,Xa),Xb))
         <= ! [X4,X5] :
              ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X4),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(X,X4),X5)))
               <= ! [X6] :
                    ( gg_TPTP_ind(X6)
                   => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X6),X4))
                     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(X3,X6),aa_TPTP_ind_TPTP_ind(X5,X6))) ) ) )
             <= gg_TPTP_ind(X4) ) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1651185310_rec_G(X),Xa),Xb)) ) ).

fof(fact_otax1,axiom,
    ! [X0,X12] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1969661829ective(aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X0),X12)),X0),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X0),X12)),scratc710375400d_e_in(X0,X12)))) ).

fof(fact_satz8a,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dc)) ).

fof(fact_ATP_Olambda__128,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_at(Uu),Uua),Uub),Uuc))
    <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uuc),Uua)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uuc),Uub))) ) ).

fof(fact_k__Sigma__eta__proj0__proj1,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12)))
       => ( aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X22)),aa_TPTP_ind_TPTP_ind(scratc291701554_proj1,X22)) = X22
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X22)),X0))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc291701554_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X22)))) ) ) ) ).

fof(fact_def__d__24__prop2,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1088300619_prop2,X),Xa))
    <=> pp(scratc1230087477_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Xa),scratc2125357189nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X)),aa_TPTP_ind_bool(scratc1088300618_prop1,Xa))) ) ).

fof(fact_ATP_Olambda__70,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_bh(Uu),Uua) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,aa_TPTP_ind_TPTP_ind(Uu,Uua)),aa_TPT1424761345TP_ind(scratc1556227004d_pair,Uua)) ).

fof(fact_def__esti,axiom,
    ! [X] : scratc1709131077d_esti(X) = scratc271733063bnd_in ).

fof(fact_def__nIn,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1341801809nd_nIn,X),Xa))
    <=> ~ pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X),Xa)) ) ).

fof(fact_def__setprod,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc271069303etprod(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X),aTP_Lamm_ai(Xa)) ).

fof(fact_k__ReplEq,axiom,
    ! [X0,X12,X22] :
      ( ( ? [X3] :
            ( gg_TPTP_ind(X3)
            & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X3),X0))
            & X22 = aa_TPTP_ind_TPTP_ind(X12,X3) )
      <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,X0),X12))) )
     <= gg_TPTP_ind(X22) ) ).

fof(fact_ATP_Olambda__46,axiom,
    ! [Uu] :
      ( gg_TPTP_ind(Uu)
     => ( pp(aa_TPTP_ind_bool(aTP_Lamm_bj,Uu))
      <=> ? [X2] :
            ( aa_TPTP_ind_TPTP_ind(scratc1403983821d_Inj0,X2) = Uu
            & gg_TPTP_ind(X2) ) ) ) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__TPTP____Interpret__Oind_J_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_fun277296641TP_ind(B_1,B_2)) ).

fof(fact_def__d__pair,axiom,
    ! [X,Xa] : scratc1556227004d_pair = scratc1674648412d_pair(X,Xa) ).

fof(fact_def__one,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc1352490468nd_one(X),Xa))
    <=> pp(scratc1230087477_d_and(scratc770400152_amone(X,Xa),aa_fun171081125l_bool(scratc665181086l_some(X),Xa))) ) ).

fof(fact_satz3a,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_eb)) ).

fof(fact_ATP_Olambda__19,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_do,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dn,Uu))) ) ).

fof(fact_proj0__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12)))
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X22)),X0)) ) ).

fof(fact_ATP_Olambda__3,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dy,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),scratc2125357189nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu))) ) ).

fof(fact_satz10,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cp)) ).

fof(fact_ATP_Olambda__75,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_aa,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua))
       <= pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,Uu),Uua))) ) ) ).

fof(fact_proj1__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc291701554_proj1,X22)),aa_TPTP_ind_TPTP_ind(X12,aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X22))))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12))) ) ).

fof(fact_def__d__29__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1882627845_prop1,X),Xa))
    <=> pp(scratc1352752814nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,X),Xa),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,X),Xa),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,X),Xa))) ) ).

fof(fact_def__ecect,axiom,
    ! [X,Xa] : scratc710375400d_e_in(aa_TPTP_ind_TPTP_ind(scratc163187715_power,X),scratc691974413d_anec(X,Xa)) = scratc1734415990_ecect(X,Xa) ).

fof(help_COMBC_1_1_COMBC_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind_001t__HOL__Obool_U,axiom,
    ! [P,Q,R] : aa_TPTP_ind_bool(aa_TPT43085870d_bool(cOMBC_1555011498d_bool(P),Q),R) = aa_TPTP_ind_bool(aa_TPT43085870d_bool(P,R),Q) ).

fof(fact_satz12,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ch)) ).

fof(fact_def__cond2,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc306818286_cond2,X))
    <=> pp(aa_fun171081125l_bool(scratc655061301_n_all,aa_TPT43085870d_bool(aTP_Lamm_ag,X))) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__or3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc1352752814nd_or3(B_1,B_2,B_3)) ).

fof(fact_ATP_Olambda__9,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),Uu))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ed,Uu)) ) ).

fof(gsy_c_aa_001t__TPTP____Interpret__Oind_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(aa_TPTP_ind_TPTP_ind(B_1,B_2)) ).

fof(help_fEx_1_1_fEx_001t__TPTP____Interpret__Oind_U,axiom,
    ! [P,X7] :
      ( pp(fEx_TPTP_ind(P))
      | ~ pp(aa_TPTP_ind_bool(P,X7)) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( ( P = fFalse
        | P = fTrue )
     <= gg_bool(P) ) ).

fof(fact_def__indeq,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1986100137_indeq(X,Xa,Xb),Xc),Xd) = scratc1302921437nd_ind(Xb,aa_TPT43085870d_bool(scratc292095149_prop2(X,Xa,Xb,Xc),Xd)) ).

fof(fact_ATP_Olambda__117,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uu),Uub)) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_aw(Uu),Uua),Uub) ).

fof(fact_def__moreis,axiom,
    ! [X,Xa] :
      ( pp(aa_bool_bool(scratc97784429d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,X),Xa)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,X),Xa)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,X),Xa)) ) ).

fof(fact_def__d__28__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(X),Xa)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(X),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1294265670_prop1(X),Xa),Xb)) ) ).

fof(fact_n__ax3,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_el)) ).

fof(fact_ATP_Olambda__64,axiom,
    ! [Uu,Uua] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,Uua),Uu))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1033850373lessis,Uu),Uua)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cc,Uu),Uua)) ) ).

fof(fact_def__binunion,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc670449581_union,aa_TPTP_ind_TPTP_ind(scratc1727421453_UPair(X),Xa)) = aa_TPTP_ind_TPTP_ind(scratc1080610890nunion(X),Xa) ).

fof(fact_ATP_Olambda__65,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cg,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uua),Uu))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua)) ) ) ).

fof(fact_satz4a,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dy)) ).

fof(fact_def__ectelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1225963278ectset(X,Xa),aa_TPTP_ind_TPTP_ind(scratc1735006381_ecelt(X,Xa),Xb)) = aa_TPTP_ind_TPTP_ind(scratc1110761401ectelt(X,Xa),Xb) ).

fof(help_fFalse_1_1_U,axiom,
    ~ pp(fFalse) ).

fof(fact_def__wel,axiom,
    ! [X] :
      ( scratc1417992124nd_wel(X)
    <=> pp(scratc1337552657_d_not(scratc1337552657_d_not(X))) ) ).

fof(fact_def__d__Pi,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,X),Xa) = aa_fun1431113780TP_ind(scratc1113836028_d_Sep(aa_TPTP_ind_TPTP_ind(scratc163187715_power,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X),aTP_Lamm_be(Xa)))),aa_fun1913827119d_bool(aTP_Lamm_bf(X),Xa)) ).

fof(fact_ATP_Olambda__49,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ck,Uu),Uua))
    <=> pp(scratc1269153779nd_ec3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua))) ) ).

fof(fact_ATP_Olambda__31,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ck,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cl,Uu)) ) ).

fof(fact_def__d__27__prop1,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,Xa),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(X),Xa)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc705903495_prop1,X),Xa)) ) ).

fof(fact_ATP_Olambda__5,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ea,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1352490468nd_one(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,scratc1343376191nd_nat),aTP_Lamm_ac)),aa_TPT43085870d_bool(aTP_Lamm_dz,Uu))) ) ).

fof(fact_def__d__and,axiom,
    ! [X,Xa] :
      ( pp(scratc1337552657_d_not(scratc97128424d_l_ec(X,Xa)))
    <=> pp(scratc1230087477_d_and(X,Xa)) ) ).

fof(gsy_c_HOL_Oundefined_001t__HOL__Obool,axiom,
    gg_bool(undefined_bool(bool)) ).

fof(fact_ATP_Olambda__143,axiom,
    ! [Uu,Uua] :
      ( Uu = aa_TPTP_ind_TPTP_ind(aTP_Lamm_ai(Uu),Uua)
     <= gg_TPTP_ind(Uu) ) ).

fof(fact_def__n__1,axiom,
    aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,scratc1868796887ptyset) = scratc2125357189nd_n_1 ).

fof(fact_omega__nat__p,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X0),scratc1608840415_omega))
     => pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X0)) ) ).

fof(fact_def__wissel,axiom,
    ! [X,Xa,Xb] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X),scratc1097773350sel_wb(X,Xa,Xb)) = aa_TPTP_ind_TPTP_ind(scratc1093990075wissel(X,Xa),Xb) ).

fof(fact_e__in__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_fun1584354236d_bool(aTP_Lamm_fd(X0),X12)),aa_fun1584354236d_bool(aTP_Lamm_ff(X0),X12))) ).

fof(fact_def__d__22__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc2059059916_prop1,X))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X)),X)) ) ).

fof(fact_def__d__Sep,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(fEx_TPTP_ind(cOMBS_2003118649l_bool(cOMBB_658106424TP_ind(fconj,aa_TPT43085870d_bool(cOMBC_1555011498d_bool(scratc271733063bnd_in),X)),Xa)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,X),aa_fun1235454963TP_ind(aTP_Lamm_bn(X),Xa))),scratc1868796887ptyset) = aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),Xa) ).

fof(fact_def__e__in,axiom,
    ! [X,Xa,Xb] :
      ( gg_TPTP_ind(Xb)
     => aa_TPTP_ind_TPTP_ind(scratc710375400d_e_in(X,Xa),Xb) = Xb ) ).

fof(fact_e__fisi,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_fg(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_fj(X0),X12))) ).

fof(fact_ATP_Olambda__107,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_fl(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_fk(Uu),Uua),Uub))) ) ).

fof(fact_second__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_ew(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_ey(X0),X12))) ).

fof(fact_def__if,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X,Xa),Xb) = scratc1270006630nd_eps(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_bp(X),Xa),Xb)) ).

fof(fact_ATP_Olambda__142,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue,Uuf] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud),Uue),Uuf))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_TPT125613450d_bool(aTP_Lamm_ak(Uua),Uub),Uuc),Uud),Uue),Uuf))) ) ).

fof(fact_nat__1,axiom,
    pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,scratc1868796887ptyset))) ).

fof(fact_k__UnionEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc670449581_union,X0)))
    <=> ? [X2] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X2),X0))
          & pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),X2))
          & gg_TPTP_ind(X2) ) ) ).

fof(fact_satz9b,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cr)) ).

fof(fact_ATP_Olambda__99,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_ff(Uu),Uua),Uub))
    <=> scratc95148227_is_of(aa_TPTP_ind_TPTP_ind(scratc710375400d_e_in(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)) ) ).

fof(fact_ATP_Olambda__87,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cy,Uu),Uua))
    <=> pp(scratc770400152_amone(scratc1343376191nd_nat,aa_TPT43085870d_bool(aTP_Lamm_cu(Uu),Uua))) ) ).

fof(fact_n__ax5,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_eg),aTP_Lamm_ei)) ).

fof(fact_ATP_Olambda__7,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),scratc2125357189nd_n_1)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ds,Uu)) ) ).

fof(fact_ATP_Olambda__30,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cn,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cm,Uu))) ) ).

fof(fact_def__diffprop,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1003210186ffprop(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,X),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Xa),Xb))) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__ec3,axiom,
    ! [B_1,B_2,B_3] : gg_bool(scratc1269153779nd_ec3(B_1,B_2,B_3)) ).

fof(fact_def__inj__h,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X),aa_TPT1424761345TP_ind(aTP_Lamm_aw(Xc),Xd)) = aa_TPTP_ind_TPTP_ind(scratc835252741_inj_h(X,Xa,Xb,Xc),Xd) ).

fof(fact_satz11,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cj)) ).

fof(fact_setof__p,axiom,
    ! [X0,X12] : scratc95148227_is_of(aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X0),X12),aa_TPT43085870d_bool(aTP_Lamm_en,X0)) ).

fof(fact_def__ap,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(scratc1721864237eplSep(X,aa_TPT43085870d_bool(aTP_Lamm_bg,Xa)),scratc291701554_proj1) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X),Xa) ).

fof(fact_satz4d,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_du)) ).

fof(fact_ATP_Olambda__74,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bw,Uu),Uua))
    <=> ( pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1033850373lessis,Uu),Uua)) ) ) ).

fof(fact_def__changef,axiom,
    ! [X,Xa,Xb,Xc,Xd] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_av(X),Xb),Xc),Xd)) = aa_TPTP_ind_TPTP_ind(scratc49352852hangef(X,Xa,Xb,Xc),Xd) ).

fof(fact_def__cond1,axiom,
    aa_TPT43085870d_bool(scratc229035761d_n_in,scratc2125357189nd_n_1) = scratc306818285_cond1 ).

fof(fact_satz10e,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_bx)) ).

fof(fact_def__d__Inj0,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1403983821d_Inj0,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,X),scratc1403983822d_Inj1) ).

fof(help_fimplies_1_1_U,axiom,
    ! [P,Q] :
      ( pp(P)
      | pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(fact_ATP_Olambda__120,axiom,
    ! [Uu,Uua,Uub,Uuc] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_ax(Uu),Uua),Uub),Uuc) = aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1180859609_image(Uu,Uua),Uub),Uuc),aa_TPTP_ind_TPTP_ind(scratc1865969228d_soft(Uu,Uua,Uub),Uuc)),scratc1868796887ptyset) ).

fof(fact_def__l__iff,axiom,
    ! [X,Xa] :
      ( pp(scratc1230087477_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,X),Xa),aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,Xa),X)))
    <=> scratc2124228927_l_iff(X,Xa) ) ).

fof(fact_ATP_Olambda__139,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,aa_TPTP_ind_TPTP_ind(scratc1093990075wissel(Uu,Uub),Uuc)),Uud)) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aa_TPT1781712639TP_ind(aTP_Lamm_av(Uu),Uua),Uub),Uuc),Uud) ).

fof(fact_ATP_Olambda__113,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cu(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__114,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cv(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uua),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uub))) ) ).

fof(fact_def__inverse,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc35393902nverse(X,Xa),Xb) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,Xa),aa_TPT1424761345TP_ind(aa_TPT1791839040TP_ind(aTP_Lamm_ax(X),Xa),Xb)) ).

fof(fact_def__ectset,axiom,
    ! [X,Xa] : scratc1352949676nd_out(aa_TPTP_ind_TPTP_ind(scratc163187715_power,X),scratc691974413d_anec(X,Xa)) = scratc1225963278ectset(X,Xa) ).

fof(fact_satz10h,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_br)) ).

fof(fact_satz4,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ea)) ).

fof(fact_def__wissel__wb,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1097773350sel_wb(X,Xa,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc1303315032nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(X),Xc),Xb),X,Xa),aa_TPTP_ind_TPTP_ind(scratc1097773349sel_wa(X,Xa,Xb),Xc)) ).

fof(fact_def__n__pl,axiom,
    ! [X] : scratc229494952d_n_pl(X) = aa_TPT1424761345TP_ind(scratc271208273bnd_ap,aa_TPTP_ind_TPTP_ind(scratc1647890748d_plus,X)) ).

fof(fact_def__d__Sigma,axiom,
    ! [X,Xa] : aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc86753791munion,X),aTP_Lamm_bh(Xa)) ).

fof(fact_e__isp,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_fl(X0),X12))) ).

fof(fact_ATP_Olambda__11,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_el,Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),scratc2125357189nd_n_1)) ) ).

fof(fact_def__ind,axiom,
    ! [X,Xa] : scratc1302921437nd_ind(X,Xa) = scratc1270006630nd_eps(aa_fun1584354236d_bool(aTP_Lamm_bb(X),Xa)) ).

fof(fact_satz9a,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ct)) ).

fof(fact_def__is__of,axiom,
    ! [X,Xa] :
      ( scratc95148227_is_of(X,Xa)
    <=> pp(aa_TPTP_ind_bool(Xa,X)) ) ).

fof(fact_ATP_Olambda__136,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aTP_Lamm_ao(Uu),Uua),Uub),Uuc),Uud))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(Uu,Uuc),Uud))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uuc)),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uub),Uud))) ) ) ).

fof(fact_def__r__ec,axiom,
    ! [X,Xa] :
      ( scratc492063214d_r_ec(X,Xa)
    <=> ( pp(scratc1337552657_d_not(Xa))
       <= pp(X) ) ) ).

fof(fact_k__In__ind,axiom,
    ! [X0] :
      ( ! [X13] :
          ( gg_TPTP_ind(X13)
         => ( ! [X22] :
                ( pp(aa_TPTP_ind_bool(X0,X22))
               <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),X13)) )
           => pp(aa_TPTP_ind_bool(X0,X13)) ) )
     => ! [X14] : pp(aa_TPTP_ind_bool(X0,X14)) ) ).

fof(fact_def__orec,axiom,
    ! [X,Xa] :
      ( scratc915822979d_orec(X,Xa)
    <=> pp(scratc1230087477_d_and(aa_bool_bool(scratc97784429d_l_or(X),Xa),scratc97128424d_l_ec(X,Xa))) ) ).

fof(fact_def__st__disj,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1413732927t_disj(X),Xa),Xb))
    <=> pp(aa_fun171081125l_bool(scratc1236698207nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_as(X),Xa),Xb))) ) ).

fof(fact_def__prop1,axiom,
    ! [X,Xa,Xb,Xc,Xd] :
      ( pp(scratc1230087477_d_and(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,X),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Xa),Xd),Xb)),aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,scratc1337552657_d_not(X)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Xa),Xd),Xc))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc292095148_prop1(X,Xa,Xb),Xc),Xd)) ) ).

fof(fact_ATP_Olambda__132,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_fun1212484691d_bool(aTP_Lamm_bc(Uu),Uua),Uub),Uuc))
    <=> ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),Uub),Uuc))
         <= pp(aa_TPTP_ind_bool(Uua,Uuc)) )
       <= pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

fof(fact_if__i__1,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X12)
     => ( pp(X0)
       => aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),X22) = X12 ) ) ).

fof(fact_def__ecelt,axiom,
    ! [X,Xa,Xb] : aa_TPTP_ind_TPTP_ind(scratc1735006381_ecelt(X,Xa),Xb) = aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),aa_TPT43085870d_bool(Xa,Xb)) ).

fof(help_COMBB_1_1_COMBB_001t__HOL__Obool_001t__fun_It__HOL__Obool_Mt__HOL__Obool_J_001t__TPTP____Interpret__Oind_U,axiom,
    ! [P,Q,R] : aa_TPT2142672771l_bool(cOMBB_658106424TP_ind(P,Q),R) = aa_boo1142376798l_bool(P,aa_TPTP_ind_bool(Q,R)) ).

fof(fact_ATP_Olambda__43,axiom,
    ! [Uu] : aa_TPT494704832TP_ind(scratc1003422961d_repl,aa_TPTP_ind_TPTP_ind(scratc996896432tminus(Uu),aa_TPTP_ind_TPTP_ind(scratc578876145d_Sing,scratc1868796887ptyset))) = aa_TPT494704832TP_ind(aTP_Lamm_bk,Uu) ).

fof(fact_beta,axiom,
    ! [X0,X12,X22] :
      ( aa_TPTP_ind_TPTP_ind(X12,X22) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12)),X22)
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),X0)) ) ).

fof(fact_xi__ext,axiom,
    ! [X0,X12,X22] :
      ( aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X22)
     <= ! [X33] :
          ( gg_TPTP_ind(X33)
         => ( aa_TPTP_ind_TPTP_ind(X12,X33) = aa_TPTP_ind_TPTP_ind(X22,X33)
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X33),X0)) ) ) ) ).

fof(fact_def__n__all,axiom,
    scratc1236698207nd_all(scratc1343376191nd_nat) = scratc655061301_n_all ).

fof(fact_first__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_ew(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_ez(X0),X12))) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__l__ec,axiom,
    ! [B_1,B_2] : gg_bool(scratc97128424d_l_ec(B_1,B_2)) ).

fof(gsy_c_HOL_Oundefined_001t__TPTP____Interpret__Oind,axiom,
    gg_TPTP_ind(undefined_TPTP_ind(tPTP_ind)) ).

fof(fact_def__d__Union__closed,axiom,
    ! [X] :
      ( ! [X1] :
          ( gg_TPTP_ind(X1)
         => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X1),X))
           => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc670449581_union,X1)),X)) ) )
    <=> pp(aa_TPTP_ind_bool(scratc722202745closed,X)) ) ).

fof(fact_def__out,axiom,
    ! [X,Xa] : scratc1352949676nd_out(X,Xa) = scratc1865969228d_soft(aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),Xa),X,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),Xa)),scratc710375400d_e_in(X,Xa))) ).

fof(fact_ATP_Olambda__105,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(Uua,Uub))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1180859609_image(aa_fun1431113780TP_ind(scratc1113836028_d_Sep(Uu),Uua),Uu),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,aa_fun1431113780TP_ind(scratc1113836028_d_Sep(Uu),Uua)),scratc710375400d_e_in(Uu,Uua))),Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_fc(Uu),Uua),Uub)) ) ).

fof(fact_def__image,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1180859609_image(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc665181086l_some(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ay(Xa),Xb),Xc))) ) ).

fof(fact_k__UnivOf__ZF__closed,axiom,
    ! [X0] : pp(aa_TPTP_ind_bool(scratc1949709210closed,aa_TPTP_ind_TPTP_ind(scratc414849215univof,X0))) ).

fof(fact_satz10b,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cl)) ).

fof(fact_ATP_Olambda__97,axiom,
    ! [Uu,Uua,Uub] :
      ( scratc95148227_is_of(aa_TPTP_ind_TPTP_ind(scratc1853206006second(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_aj,Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ey(Uu),Uua),Uub)) ) ).

fof(fact_k__PowerI,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc163187715_power,X0)))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc677227027d_Subq,X12),X0)) ) ).

fof(fact_k__Pi__ext,axiom,
    ! [X0,X12,X22] :
      ( gg_TPTP_ind(X22)
     => ( ! [X32] :
            ( gg_TPTP_ind(X32)
           => ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X32),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,X0),X12)))
             => ( X32 = X22
               <= ! [X42] :
                    ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X42),X0))
                     => aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X32),X42) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,X22),X42) )
                   <= gg_TPTP_ind(X42) ) ) ) )
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,X0),X12))) ) ) ).

fof(fact_oneax,axiom,
    ! [X0,X12] :
      ( pp(aa_fun171081125l_bool(scratc1352490468nd_one(X0),X12))
     => pp(aa_TPTP_ind_bool(X12,scratc1302921437nd_ind(X0,X12))) ) ).

fof(fact_l__et,axiom,
    ! [X0] :
      ( scratc1417992124nd_wel(X0)
     => pp(X0) ) ).

fof(fact_def__all__of,axiom,
    ! [X,Xa] :
      ( ! [X2] :
          ( gg_TPTP_ind(X2)
         => ( scratc95148227_is_of(X2,X)
           => pp(aa_TPTP_ind_bool(Xa,X2)) ) )
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(X),Xa)) ) ).

fof(fact_ATP_Olambda__20,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dl,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_dm,Uu)) ) ).

fof(gsy_c_aa_001t__HOL__Obool_001t__HOL__Obool,axiom,
    ! [B_1,B_2] : gg_bool(aa_bool_bool(B_1,B_2)) ).

fof(fact_def__nis,axiom,
    ! [X,Xa] :
      ( pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,X),Xa)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,X),Xa)) ) ).

fof(fact_k__PowerEq,axiom,
    ! [X0,X12] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc677227027d_Subq,X12),X0))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),aa_TPTP_ind_TPTP_ind(scratc163187715_power,X0))) ) ).

fof(fact_def__d__UPair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(scratc1727421453_UPair(X),Xa) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,aa_TPTP_ind_TPTP_ind(scratc163187715_power,aa_TPTP_ind_TPTP_ind(scratc163187715_power,scratc1868796887ptyset))),aa_TPT1424761345TP_ind(aTP_Lamm_bo(X),Xa)) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__amone,axiom,
    ! [B_1,B_2] : gg_bool(scratc770400152_amone(B_1,B_2)) ).

fof(fact_ATP_Olambda__39,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bv,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bu,Uu))) ) ).

fof(fact_satz4g,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dp)) ).

fof(fact_refis,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_fm,X0))) ).

fof(fact_ATP_Olambda__140,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud,Uue] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_TPT985247859d_bool(aa_fun1107270209d_bool(aTP_Lamm_al(Uu),Uua),Uub),Uuc),Uud),Uue)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud),Uue)) ) ).

fof(fact_def__injective,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_fun171081125l_bool(scratc1236698207nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ba(X),Xa),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1969661829ective(X),Xa),Xb)) ) ).

fof(fact_ATP_Olambda__102,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua)),Uub)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uua),Uub))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dk(Uu),Uua),Uub)) ) ).

fof(fact_def__setminus,axiom,
    ! [X,Xa] : aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),aa_TPT43085870d_bool(aTP_Lamm_bm,Xa)) = aa_TPTP_ind_TPTP_ind(scratc996896432tminus(X),Xa) ).

fof(fact_def__wissel__wa,axiom,
    ! [X,Xa,Xb,Xc] : aa_TPTP_ind_TPTP_ind(scratc1303315032nd_ite(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(X),Xc),Xa),X,Xb),Xc) = aa_TPTP_ind_TPTP_ind(scratc1097773349sel_wa(X,Xa,Xb),Xc) ).

fof(fact_ATP_Olambda__95,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_eq(Uu),Uua),Uub))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc1113836028_d_Sep(Uu),Uua)))
       => pp(aa_TPTP_ind_bool(Uua,Uub)) ) ) ).

fof(fact_ATP_Olambda__57,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dw,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua))),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua)))) ) ).

fof(fact_satz1,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ef)) ).

fof(fact_ATP_Olambda__73,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua))),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dq,Uu),Uua)) ) ).

fof(fact_pairis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_ew(X0),X12)),aa_TPT43085870d_bool(aTP_Lamm_ex(X0),X12))) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fconj,P),Q))
      | pp(P) ) ).

fof(fact_estii,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_er(X0),X12))) ).

fof(fact_def__l__some,axiom,
    ! [X,Xa] :
      ( pp(scratc1337552657_d_not(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),scratc1344294571nd_non(X,Xa))))
    <=> pp(aa_fun171081125l_bool(scratc665181086l_some(X),Xa)) ) ).

fof(fact_ATP_Olambda__53,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fm,Uu),Uua))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),Uua),Uua)) ) ).

fof(fact_ATP_Olambda__55,axiom,
    ! [Uu,Uua] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua))) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ej,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__81,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035761d_n_in,Uua),Uu))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_eh,Uu),Uua)) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__eps,axiom,
    ! [B_1] : gg_TPTP_ind(scratc1270006630nd_eps(B_1)) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( pp(Q)
      | ~ pp(P)
      | ~ pp(aa_bool_bool(aa_boo1142376798l_bool(fimplies,P),Q)) ) ).

fof(fact_def__n__is,axiom,
    scratc710375405d_e_is(scratc1343376191nd_nat) = scratc229035766d_n_is ).

fof(fact_ATP_Olambda__51,axiom,
    ! [Uu,Uua] :
      ( pp(scratc1352752814nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(scratc1003210186ffprop(Uu),Uua)),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(scratc1003210186ffprop(Uua),Uu))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cs,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__69,axiom,
    ! [Uu,Uua] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua))
       => pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,Uu),Uua))) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bq,Uu),Uua)) ) ).

fof(fact_satz3,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ec)) ).

fof(fact_def__d__25__prop1,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1676662793_prop1(X),Xa),Xb))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(X),Xa)),Xb)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(X),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Xa),Xb)))) ) ).

fof(fact_ATP_Olambda__94,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_au(Uu),Uua),Uub))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uub),Uua)) ) ).

fof(fact_def__unmore,axiom,
    ! [X,Xa,Xb] : aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ar(X),Xa),Xb)) = aa_TPTP_ind_TPTP_ind(scratc1332080624unmore(X,Xa),Xb) ).

fof(fact_ATP_Olambda__10,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_em,Uu))
    <=> scratc95148227_is_of(aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu),aTP_Lamm_a) ) ).

fof(fact_def__tofs,axiom,
    ! [X,Xa] : scratc499072778d_tofs(X,Xa) = scratc271208273bnd_ap ).

fof(fact_ATP_Olambda__76,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bu,Uu),Uua))
    <=> ( pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,Uu),Uua)) ) ) ).

fof(fact_def__d__ReplSep,axiom,
    ! [X,Xa] : aa_TPT494704832TP_ind(scratc1003422961d_repl,aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X),Xa)) = scratc1721864237eplSep(X,Xa) ).

fof(fact_ATP_Olambda__29,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cp,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_co,Uu))) ) ).

fof(fact_def__d__24__g,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc98592899d_24_g,X) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,scratc1343376191nd_nat),aTP_Lamm_ad(X)) ).

fof(fact_satz2,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_ed)) ).

fof(fact_ATP_Olambda__77,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(scratc1080610890nunion(aa_TPTP_ind_TPTP_ind(scratc578876145d_Sing,scratc1868796887ptyset)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,Uu),Uua)) = aa_fun277296641TP_ind(aa_TPT494704832TP_ind(aTP_Lamm_bl,Uu),Uua) ).

fof(fact_def__n__one,axiom,
    scratc770853562_n_one = scratc1352490468nd_one(scratc1343376191nd_nat) ).

fof(fact_if__i__or,axiom,
    ! [X0,X12,X22] :
      ( ( gg_TPTP_ind(X22)
        & gg_TPTP_ind(X12) )
     => ( X22 = aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),X22)
        | aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),X22) = X12 ) ) ).

fof(gsy_c_fEx_001t__TPTP____Interpret__Oind,axiom,
    ! [B_1] : gg_bool(fEx_TPTP_ind(B_1)) ).

fof(fact_ATP_Olambda__67,axiom,
    ! [Uu,Uua] :
      ( ( pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,Uu),Uua)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ca,Uu),Uua)) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__ind,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc1302921437nd_ind(B_1,B_2)) ).

fof(fact_satz8b,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cz)) ).

fof(fact_isseti,axiom,
    ! [X0] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_en,X0)),aa_TPT43085870d_bool(aTP_Lamm_ep,X0))) ).

fof(fact_e__pair__p,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_fb(X0),X12))) ).

fof(fact_suc__p,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_em)) ).

fof(fact_ATP_Olambda__41,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bq,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_br,Uu)) ) ).

fof(fact_ATP_Olambda__62,axiom,
    ! [Uu,Uua] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uua),Uu))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ci,Uu),Uua)) ) ).

fof(fact_def__l__or,axiom,
    ! [X] : scratc97784429d_l_or(X) = aa_boo1142376798l_bool(scratc1302855850nd_imp,scratc1337552657_d_not(X)) ).

fof(fact_def__obvious,axiom,
    ( scratc900476549bvious
  <=> pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,fFalse),fFalse)) ) ).

fof(fact_def__proj0,axiom,
    ! [X] : aa_fun277296641TP_ind(scratc1721864237eplSep(X,aTP_Lamm_bj),scratc1130949423_d_Unj) = aa_TPTP_ind_TPTP_ind(scratc291701553_proj0,X) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__emptyset,axiom,
    gg_TPTP_ind(scratc1868796887ptyset) ).

fof(fact_ATP_Olambda__124,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uua),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_aq(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_ATP_Olambda__59,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ee,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua)))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,Uu),Uua)) ) ) ).

fof(fact_def__non,axiom,
    ! [X,Xa,Xb] :
      ( pp(scratc1337552657_d_not(aa_TPTP_ind_bool(Xa,Xb)))
    <=> pp(aa_TPTP_ind_bool(scratc1344294571nd_non(X,Xa),Xb)) ) ).

fof(fact_ATP_Olambda__54,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_dz,Uu),Uua))
    <=> pp(scratc1230087477_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uua),scratc2125357189nd_n_1)),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uu)),aa_fun171081125l_bool(scratc655061301_n_all,aa_TPT43085870d_bool(aTP_Lamm_ae,Uua)))) ) ).

fof(fact_ATP_Olambda__66,axiom,
    ! [Uu,Uua] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua))
       => pp(scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1033850373lessis,Uu),Uua))) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_bs,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__137,axiom,
    ! [Uu,Uua,Uub,Uuc,Uud] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_an(Uu),Uua),Uub),Uuc),Uud))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_TPT1123896796d_bool(aa_fun845057962d_bool(aTP_Lamm_am(Uu),Uua),Uub),Uuc),Uud))) ) ).

fof(fact_nat__inv,axiom,
    ! [X0] :
      ( gg_TPTP_ind(X0)
     => ( pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X0))
       => ( ? [X13] :
              ( gg_TPTP_ind(X13)
              & pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X13))
              & aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X13) = X0 )
          | scratc1868796887ptyset = X0 ) ) ) ).

fof(fact_ATP_Olambda__125,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uu),Uub),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc271208273bnd_ap,Uua),Uuc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ay(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_satz7,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dh)) ).

fof(fact_ATP_Olambda__122,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(Uua),aa_TPTP_ind_TPTP_ind(scratc1853206006second(Uu,Uua),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1674648412d_pair(Uu,Uua),Uub),Uuc))),Uuc))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_es(Uu),Uua),Uub),Uuc)) ) ).

fof(fact_k__If__In__01,axiom,
    ! [X0,X12,X22] :
      ( ( pp(X0)
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X12),X22)) )
     => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X12),scratc1868796887ptyset)),aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(X0,X22),aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,scratc1868796887ptyset)))) ) ).

fof(fact_proj1__pair__eq,axiom,
    ! [X0,X12] :
      ( gg_TPTP_ind(X12)
     => X12 = aa_TPTP_ind_TPTP_ind(scratc291701554_proj1,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,X0),X12)) ) ).

fof(help_COMBS_1_1_COMBS_001t__TPTP____Interpret__Oind_001t__HOL__Obool_001t__HOL__Obool_U,axiom,
    ! [P,Q,R] : aa_TPTP_ind_bool(cOMBS_2003118649l_bool(P,Q),R) = aa_bool_bool(aa_TPT2142672771l_bool(P,R),aa_TPTP_ind_bool(Q,R)) ).

fof(fact_ATP_Olambda__32,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cj,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ci,Uu))) ) ).

fof(fact_ATP_Olambda__106,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(Uu),Uub),aa_fun1431113780TP_ind(scratc1113836028_d_Sep(Uu),Uua)))
       <= pp(aa_TPTP_ind_bool(Uua,Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_er(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__92,axiom,
    ! [Uu,Uua,Uub] : aa_TPTP_ind_TPTP_ind(scratc271733055bnd_if(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,scratc1868796887ptyset),Uub),Uu),Uua) = aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(aTP_Lamm_bo(Uu),Uua),Uub) ).

fof(fact_satz9,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cx)) ).

fof(fact_def__pair,axiom,
    ! [X,Xa] : aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,X),Xa) = aa_TPTP_ind_TPTP_ind(scratc1080610890nunion(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,X),scratc1403983821d_Inj0)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1003422961d_repl,Xa),scratc1403983822d_Inj1)) ).

fof(fact_ATP_Olambda__25,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_cz,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cy,Uu))) ) ).

fof(fact_lam__Pi,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X22)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,X0),X12)))
     <= ! [X33] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(X22,X33)),aa_TPTP_ind_TPTP_ind(X12,X33)))
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X33),X0)) )
         <= gg_TPTP_ind(X33) ) ) ).

fof(fact_def__n__in,axiom,
    scratc1709131077d_esti(scratc1343376191nd_nat) = scratc229035761d_n_in ).

fof(fact_def__nat__p,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X))
    <=> ! [X1] :
          ( pp(aa_TPTP_ind_bool(X1,scratc1868796887ptyset))
         => ( ! [X2] :
                ( gg_TPTP_ind(X2)
               => ( pp(aa_TPTP_ind_bool(X1,X2))
                 => pp(aa_TPTP_ind_bool(X1,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X2))) ) )
           => pp(aa_TPTP_ind_bool(X1,X)) ) ) ) ).

fof(fact_ATP_Olambda__24,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_db,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_dc,Uu)) ) ).

fof(fact_ATP_Olambda__14,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_ej,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_ek,Uu)) ) ).

fof(fact_def__fixfu2,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_an(X),Xa),Xb),Xc)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc713936752fixfu2(X,Xa),Xb),Xc)) ) ).

fof(gsy_c_fFalse,axiom,
    gg_bool(fFalse) ).

fof(fact_def__d__Unj,axiom,
    scratc1130949423_d_Unj = scratc1449627817In_rec(aTP_Lamm_bk) ).

fof(fact_def__d__29__ii,axiom,
    ! [X,Xa] :
      ( pp(aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(scratc1003210186ffprop(X),Xa)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,X),Xa)) ) ).

fof(fact_k__EmptyAx,axiom,
    ~ ? [X0] : pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X0),scratc1868796887ptyset)) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__ect,axiom,
    ! [B_1,B_2] : gg_TPTP_ind(scratc1269153844nd_ect(B_1,B_2)) ).

fof(fact_nat__p__omega,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X0),scratc1608840415_omega))
     <= pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X0)) ) ).

fof(fact_def__omega,axiom,
    scratc1608840415_omega = aa_fun1431113780TP_ind(scratc1113836028_d_Sep(aa_TPTP_ind_TPTP_ind(scratc414849215univof,scratc1868796887ptyset)),scratc2129276081_nat_p) ).

fof(fact_ATP_Olambda__35,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_cc,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_cd,Uu)) ) ).

fof(fact_ATP_Olambda__98,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ez(Uu),Uua),Uub))
    <=> scratc95148227_is_of(aa_TPTP_ind_TPTP_ind(scratc1223501678_first(Uu,Uua),Uub),aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)) ) ).

fof(fact_def__soft,axiom,
    ! [X,Xa,Xb,Xc] : scratc1302921437nd_ind(X,aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_ay(Xa),Xb),Xc)) = aa_TPTP_ind_TPTP_ind(scratc1865969228d_soft(X,Xa,Xb),Xc) ).

fof(fact_def__nonempty,axiom,
    ! [X,Xa] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc6908226nempty,X),Xa))
    <=> pp(aa_fun171081125l_bool(scratc665181086l_some(X),aa_TPT43085870d_bool(aTP_Lamm_au(X),Xa))) ) ).

fof(fact_nat__ordsucc,axiom,
    ! [X0] :
      ( pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,X0))
     => pp(aa_TPTP_ind_bool(scratc2129276081_nat_p,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X0))) ) ).

fof(fact_def__indeq2,axiom,
    ! [X,Xa,Xb,Xc,Xd] : scratc497446601indeq2(X,Xa,Xb,Xc,Xd) = aa_TPT1424761345TP_ind(scratc1986100137_indeq(X,Xa,Xb),aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc912234311d_11_i(X,Xa,Xb),Xc),Xd)) ).

fof(fact_ATP_Olambda__23,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_df,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_de,Uu))) ) ).

fof(fact_ATP_Olambda__1,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_ec,Uu))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1343900982nd_nis,Uu),scratc2125357189nd_n_1))
       => pp(aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(aTP_Lamm_af,Uu))) ) ) ).

fof(fact_ATP_Olambda__21,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dj,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_di,Uu))) ) ).

fof(fact_satz10f,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_bv)) ).

fof(fact_ordsucc__inj,axiom,
    ! [X0,X12] :
      ( ( aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X12) = aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X0)
       => X12 = X0 )
     <= ( gg_TPTP_ind(X0)
        & gg_TPTP_ind(X12) ) ) ).

fof(fact_def__second,axiom,
    ! [X,Xa] : scratc1853206006second(X,Xa) = scratc291701554_proj1 ).

fof(fact_ATP_Olambda__96,axiom,
    ! [Uu,Uua,Uub] :
      ( ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(aa_TPTP_ind_TPTP_ind(scratc163187715_power,Uu)),Uua),Uub))
         <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc494089872d_incl(Uu),Uub),Uua)) )
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc494089872d_incl(Uu),Uua),Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_eo(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__144,axiom,
    ! [Uu] : aa_TPTP_ind_TPTP_ind(aTP_Lamm_ac,Uu) = scratc1343376191nd_nat ).

fof(fact_def__ordsucc,axiom,
    ! [X] : aa_TPTP_ind_TPTP_ind(scratc1080610890nunion(X),aa_TPTP_ind_TPTP_ind(scratc578876145d_Sing,X)) = aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,X) ).

fof(fact_ATP_Olambda__118,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(Uua,aa_TPTP_ind_TPTP_ind(scratc710375400d_e_in(Uu,Uua),Uub)))
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_fe(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__38,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_bx,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bw,Uu))) ) ).

fof(fact_def__incl,axiom,
    ! [X,Xa,Xb] :
      ( pp(aa_fun171081125l_bool(scratc1236698207nd_all(X),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_at(X),Xa),Xb)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc494089872d_incl(X),Xa),Xb)) ) ).

fof(fact_ATP_Olambda__16,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dx,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dw,Uu))) ) ).

fof(fact_estie,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_fun1584354236d_bool(aTP_Lamm_eq(X0),X12))) ).

fof(fact_satz6,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dj)) ).

fof(fact_satz10c,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cb)) ).

fof(fact_pair__Sigma,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),X0))
     => ! [X32] :
          ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(aa_TPT1424761345TP_ind(scratc1556227004d_pair,X22),X32)),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1832935075_Sigma,X0),X12)))
         <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X32),aa_TPTP_ind_TPTP_ind(X12,X22))) ) ) ).

fof(fact_k__SepE1,axiom,
    ! [X0,X12,X22] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),X0))
     <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X22),aa_fun1431113780TP_ind(scratc1113836028_d_Sep(X0),X12))) ) ).

fof(fact_def__nat,axiom,
    aa_fun1431113780TP_ind(scratc1113836028_d_Sep(scratc1608840415_omega),aTP_Lamm_ah) = scratc1343376191nd_nat ).

fof(fact_ATP_Olambda__101,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uua)),aa_TPTP_ind_TPTP_ind(scratc229494952d_n_pl(Uu),Uub)))
       => pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uua),Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_da(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__85,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_de,Uu),Uua))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dd(Uu),Uua))) ) ).

fof(fact_def__fixfu,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1272217922_fixfu(X,Xa),Xb),Xc))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aa_fun987228051d_bool(aTP_Lamm_ap(X),Xa),Xb),Xc))) ) ).

fof(fact_ATP_Olambda__104,axiom,
    ! [Uu,Uua,Uub] :
      ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uub),Uu))
        & pp(aa_TPTP_ind_bool(Uua,Uub)) )
    <=> pp(aa_TPTP_ind_bool(aa_fun1584354236d_bool(aTP_Lamm_bb(Uu),Uua),Uub)) ) ).

fof(fact_ATP_Olambda__17,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_du,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dt,Uu))) ) ).

fof(fact_def__orec3,axiom,
    ! [X,Xa,Xb] :
      ( scratc1216546672_orec3(X,Xa,Xb)
    <=> pp(scratc1230087477_d_and(scratc1352752814nd_or3(X,Xa,Xb),scratc1269153779nd_ec3(X,Xa,Xb))) ) ).

fof(fact_ATP_Olambda__48,axiom,
    ! [Uu,Uua] :
      ( pp(scratc1352752814nd_or3(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc777819177_29_ii,Uu),Uua),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1302593447nd_iii,Uu),Uua)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_cm,Uu),Uua)) ) ).

fof(fact_def__nissetprop,axiom,
    ! [X,Xa,Xb,Xc] :
      ( pp(scratc1230087477_d_and(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(X),Xc),Xa),scratc1337552657_d_not(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1709131077d_esti(X),Xc),Xb))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1158403663etprop(X,Xa),Xb),Xc)) ) ).

fof(fact_def__prop4,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc292095151_prop4,X))
    <=> pp(aa_fun171081125l_bool(scratc665181086l_some(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,scratc1343376191nd_nat),aTP_Lamm_ac)),aa_TPT43085870d_bool(scratc1088300619_prop2,X))) ) ).

fof(fact_def__d__Power__closed,axiom,
    ! [X] :
      ( ! [X1] :
          ( ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,aa_TPTP_ind_TPTP_ind(scratc163187715_power,X1)),X))
           <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,X1),X)) )
         <= gg_TPTP_ind(X1) )
    <=> pp(aa_TPTP_ind_bool(scratc886935759closed,X)) ) ).

fof(fact_firstis1,axiom,
    ! [X0,X12] : pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,X0)),aa_TPT43085870d_bool(aTP_Lamm_ev(X0),X12))) ).

fof(fact_def__e__is,axiom,
    ! [X] : scratc710375405d_e_is(X) = fequal_TPTP_ind ).

fof(fact_ATP_Olambda__37,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_by,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_bz,Uu)) ) ).

fof(fact_ATP_Olambda__63,axiom,
    ! [Uu,Uua] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ce,Uu),Uua))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1033850373lessis,Uua),Uu))
       <= pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc1167833985moreis,Uu),Uua)) ) ) ).

fof(gsy_c_Scratch__tptp__translate__43818__2120_ONUM658__thf__4__p_Obnd__d__and,axiom,
    ! [B_1,B_2] : gg_bool(scratc1230087477_d_and(B_1,B_2)) ).

fof(fact_ATP_Olambda__12,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uu),aa_TPTP_ind_TPTP_ind(scratc163187715_power,scratc1343376191nd_nat)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_eg,Uu)) ) ).

fof(help_pp_2_1_U,axiom,
    pp(fTrue) ).

fof(fact_def__d__23__prop1,axiom,
    ! [X] :
      ( pp(aa_TPTP_ind_bool(scratc499938443_prop1,X))
    <=> pp(aa_bool_bool(scratc97784429d_l_or(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035766d_n_is,X),scratc2125357189nd_n_1)),aa_fun171081125l_bool(scratc1409005728n_some,aa_TPT43085870d_bool(aTP_Lamm_af,X)))) ) ).

fof(fact_ATP_Olambda__109,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fb(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fa(Uu),Uua),Uub))) ) ).

fof(fact_ATP_Olambda__60,axiom,
    ! [Uu,Uua] :
      ( pp(aa_bool_bool(aa_boo1142376798l_bool(scratc1302855850nd_imp,aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035761d_n_in,Uua),Uu)),aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc229035761d_n_in,aa_TPTP_ind_TPTP_ind(scratc637146209rdsucc,Uua)),Uu)))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ag,Uu),Uua)) ) ).

fof(fact_ATP_Olambda__112,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uub),aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,Uu),aTP_Lamm_ai(Uua))))
    <=> pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_fg(Uu),Uua),Uub)) ) ).

fof(fact_satz4f,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_dr)) ).

fof(fact_satz10a,axiom,
    pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aTP_Lamm_cn)) ).

fof(fact_ATP_Olambda__40,axiom,
    ! [Uu] :
      ( pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_bs,Uu)))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_bt,Uu)) ) ).

fof(fact_ATP_Olambda__89,axiom,
    ! [Uu,Uua] : aa_TPTP_ind_TPTP_ind(scratc670449581_union,aa_TPTP_ind_TPTP_ind(Uu,Uua)) = aa_TPTP_ind_TPTP_ind(aTP_Lamm_be(Uu),Uua) ).

fof(fact_def__imp,axiom,
    scratc1302855850nd_imp = fimplies ).

fof(fact_ATP_Olambda__22,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aTP_Lamm_dh,Uu))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aTP_Lamm_a),aa_TPT43085870d_bool(aTP_Lamm_dg,Uu))) ) ).

fof(fact_ATP_Olambda__129,axiom,
    ! [Uu,Uua,Uub,Uuc] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fi(Uu),Uua),Uub),Uuc))
    <=> ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc710375405d_e_is(aa_fun277296641TP_ind(aa_TPT494704832TP_ind(scratc1716654779d_d_Pi,Uu),aTP_Lamm_ai(Uua))),Uub),Uuc))
       <= pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uu)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_fh(Uua),Uub),Uuc))) ) ) ).

fof(gsy_c_aa_001t__fun_It__TPTP____Interpret__Oind_Mt__HOL__Obool_J_001t__HOL__Obool,hypothesis,
    ! [B_1,B_2] : gg_bool(aa_fun171081125l_bool(B_1,B_2)) ).

fof(fact_ATP_Olambda__13,axiom,
    ! [Uu] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(scratc271733063bnd_in,Uu),scratc1343376191nd_nat))
    <=> pp(aa_TPTP_ind_bool(aTP_Lamm_a,Uu)) ) ).

fof(fact_ATP_Olambda__110,axiom,
    ! [Uu,Uua,Uub] :
      ( pp(aa_TPTP_ind_bool(aa_TPT43085870d_bool(aTP_Lamm_ev(Uu),Uua),Uub))
    <=> pp(aa_fun171081125l_bool(scratc1554520278all_of(aa_TPT43085870d_bool(aTP_Lamm_aj,Uua)),aa_TPT43085870d_bool(aa_TPT60673477d_bool(aTP_Lamm_eu(Uu),Uua),Uub))) ) ).

