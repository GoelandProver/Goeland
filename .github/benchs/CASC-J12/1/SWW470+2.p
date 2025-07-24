fof(fact_5_cut,axiom,
    ! [Ga,G_1,Ts] :
      ( ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),G_1))
       => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),Ts)) )
     <= hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(G_1),Ts)) ) ).

fof(fact_151_the__elem__def,axiom,
    ! [X_35] : hAPP_f2143211163_state(the_Ho10452358_state,hAPP_f1456107715e_bool(hAPP_f1548785833e_bool(cOMBB_1653402815_state,hAPP_f854625363l_bool(fequal1746921144e_bool,X_35)),hAPP_f762269719e_bool(hAPP_f964290431e_bool(cOMBC_488258100e_bool,insert1835143293_state),bot_bo1055319631e_bool))) = hAPP_f2143211163_state(the_el23965208_state,X_35) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_,axiom,
    ! [P,Q,R] : hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,P),Q),R) = hAPP_f54304608l_bool(hAPP_n215258509l_bool(P,R),Q) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__fun_Itc__HOL__Obool_Mtc__H,axiom,
    ! [P,Q,R] : hAPP_f167292325e_bool(P,hAPP_a849909144l_bool(Q,R)) = hAPP_a723219176e_bool(hAPP_f340725611e_bool(hAPP_f1006724181e_bool(cOMBB_1348041619bool_a,P),Q),R) ).

fof(fact_250_hoare__derivs_OLocal,axiom,
    ! [A_1,Ga,Pa,Ca,Q_1,X_35,S_5] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(hAPP_f817621513e_bool(hAPP_f512427579e_bool(cOMBB_572666224_state,hAPP_f644196280e_bool(cOMBS_1378840469l_bool,hAPP_f1259673775l_bool(hAPP_f1561913689l_bool(cOMBB_188601460_state,fconj),hAPP_s1806633685e_bool(fequal_state,S_5)))),hAPP_f1838002347e_bool(hAPP_f1706273077e_bool(cOMBC_867582640e_bool,hAPP_f289738463e_bool(hAPP_f1151843515e_bool(cOMBB_1941618714_state,cOMBB_844853809_state),Pa)),hAPP_f871651461_state(hAPP_f851239890_state(cOMBS_777315357_state,hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,update),loc(X_35))),A_1))),local(X_35,A_1,Ca),Q_1)),bot_bo1055319631e_bool)))
     <= hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,hAPP_f1838002347e_bool(hAPP_f1706273077e_bool(cOMBC_867582640e_bool,hAPP_f289738463e_bool(hAPP_f1151843515e_bool(cOMBB_1941618714_state,cOMBB_844853809_state),Q_1)),hAPP_n1547241352_state(hAPP_f1848060885_state(cOMBC_1777403949_state,hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,update),loc(X_35))),getlocs(S_5,X_35))))),bot_bo1055319631e_bool))) ) ).

fof(fact_548_bot__least,axiom,
    ! [A_1] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,bot_bot_fun_nat_bool),A_1)) ).

fof(fact_57_ex__in__conv,axiom,
    ! [A] :
      ( ? [X_2] : hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A))
    <=> A != bot_bo1181479936a_bool ) ).

fof(fact_182_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
       => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),image_306007685iple_a(F_1,A))) )
     <= hAPP_H678412245iple_a(F_1,X_1) = Ba ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_nat_bool(B_1_1,B_2_1)) ).

fof(fact_637_inf__sup__ord_I2_J,axiom,
    ! [X_7,Y_5] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_7),Y_5)),Y_5)) ).

fof(fact_343_finite__ne__induct,axiom,
    ! [Pa,F] :
      ( ( ( ! [X_2] : hBOOL(hAPP_f540970102l_bool(Pa,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),bot_bo1181479936a_bool)))
         => ( ! [X_2,F_2] :
                ( ( F_2 != bot_bo1181479936a_bool
                 => ( ( hBOOL(hAPP_f540970102l_bool(Pa,F_2))
                     => hBOOL(hAPP_f540970102l_bool(Pa,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),F_2))) )
                   <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),F_2)) ) )
               <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,F_2)) )
           => hBOOL(hAPP_f540970102l_bool(Pa,F)) ) )
       <= F != bot_bo1181479936a_bool )
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,F)) ) ).

fof(fact_486_le__iff__sup,axiom,
    ! [X_1,Y_7] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),Y_7) = Y_7
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_7)) ) ).

fof(help_fequal_1_1_fequal_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_,axiom,
    ! [X,Y] :
      ( X = Y
      | ~ hBOOL(hAPP_H1421470952a_bool(hAPP_H1190454433a_bool(fequal879838495iple_a,X),Y)) ) ).

fof(fact_518_order__antisym,axiom,
    ! [X_18,Y_14] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_18),Y_14))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_14),X_18))
       => Y_14 = X_18 ) ) ).

fof(fact_332_finite__induct,axiom,
    ! [Pa,F] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,F))
     => ( ( ! [X_2,F_2] :
              ( ( ( hBOOL(hAPP_f1760790145l_bool(Pa,F_2))
                 => hBOOL(hAPP_f1760790145l_bool(Pa,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_2),F_2))) )
               <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),F_2)) )
             <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,F_2)) )
         => hBOOL(hAPP_f1760790145l_bool(Pa,F)) )
       <= hBOOL(hAPP_f1760790145l_bool(Pa,bot_bo1055319631e_bool)) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Hoare____Mirabelle____ddpglwnxwg__,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => hAPP_H1421470952a_bool(hAPP_b119575286a_bool(cOMBK_151824839iple_a,P),Q) = P ) ).

fof(fact_177_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),image_1821565372_state(F_1,A))) )
     <= Ba = hAPP_n1126952044_state(F_1,X_1) ) ).

fof(fact_422_fold1__singleton__def,axiom,
    ! [A_1,G,F_1] :
      ( finite_fold1_nat(F_1) = G
     => hAPP_f22106695ol_nat(G,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)) = A_1 ) ).

fof(fact_228_empty__is__image,axiom,
    ! [F_1,A] :
      ( A = bot_bo1181479936a_bool
    <=> image_1604514514_state(F_1,A) = bot_bo1055319631e_bool ) ).

fof(fact_31_singleton__conv,axiom,
    ! [A_1] : collec268032053iple_a(hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool) ).

fof(fact_570_asm,axiom,
    ! [Ts,Ga] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,Ts),Ga))
     => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),Ts)) ) ).

fof(fact_298_evalc__evaln,axiom,
    ! [C_2,S_1,T] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C_2),S_1),T))
     => ? [N_1] : hBOOL(evaln(C_2,S_1,N_1,T)) ) ).

fof(fact_551_bot__least,axiom,
    ! [A_9] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,bot_bot_nat),A_9)) ).

fof(fact_59_ex__in__conv,axiom,
    ! [A] :
      ( ? [X_2] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A))
    <=> bot_bot_fun_nat_bool != A ) ).

fof(fact_554_bot__unique,axiom,
    ! [A_1] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A_1),bot_bo1055319631e_bool))
    <=> bot_bo1055319631e_bool = A_1 ) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00_013,axiom,
    ! [P,Q] : P = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(cOMBK_1824972302iple_a,P),Q) ).

fof(fact_692_inf__bot__right,axiom,
    ! [X_1] : bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,X_1),bot_bo1055319631e_bool) ).

fof(fact_204_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,hAPP_H678412245iple_a(F_1,X_1)),image_306007685iple_a(F_1,A)))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com___030,axiom,
    ! [P,Q,R] : hAPP_H1645666623e_bool(hAPP_f762269719e_bool(hAPP_f964290431e_bool(cOMBC_488258100e_bool,P),Q),R) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(P,R),Q) ).

fof(fact_461_finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,B))
       => hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) ) ).

fof(fact_85_insert__absorb2,axiom,
    ! [X_1,A] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Hoare____Mirabelle____ddpglwnxwg___006,axiom,
    ! [P,Q] :
      ( hAPP_H513860823e_bool(hAPP_b1245957081e_bool(cOMBK_1079618832_state,P),Q) = P
     <= is_bool(P) ) ).

fof(fact_425_comp__fun__commute_Ofold__equality,axiom,
    ! [Z_2,A,Y_7,F_1] :
      ( hBOOL(finite1200705745iple_a(F_1))
     => ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),Y_7))
       => hAPP_f124283079iple_a(finite978536264iple_a(F_1,Z_2),A) = Y_7 ) ) ).

fof(fact_276_evaln__elim__cases_I1_J,axiom,
    ! [S_1,N_2,T] :
      ( hBOOL(evaln(skip,S_1,N_2,T))
     => S_1 = T ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,P),Q),R) = hAPP_bool_bool(P,hAPP_nat_bool(Q,R)) ).

fof(fact_447_subsetD,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A)) ) ) ).

fof(fact_259_com_Osimps_I10_J,axiom,
    ! [Loc_2,Fun,Com] : local(Loc_2,Fun,Com) != skip ).

fof(fact_224_image__empty,axiom,
    ! [F_1] : image_129517430iple_a(F_1,bot_bo1055319631e_bool) = bot_bo1181479936a_bool ).

fof(fact_29_singleton__conv2,axiom,
    ! [A_1] : hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,A_1),bot_bo1701429464l_bool) = collect_fun_nat_bool(hAPP_f103356543l_bool(fequal_fun_nat_bool,A_1)) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(P)
      | hBOOL(Q)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fimplies,P),Q)) ) ).

fof(fact_244_fold1Set__sing,axiom,
    ! [F_1,A_1,Ba] :
      ( Ba = A_1
    <=> hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)),Ba)) ) ).

fof(fact_440_fold1__in,axiom,
    ! [A] :
      ( ( ( ! [X_2,Y_11] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(times_times_nat,X_2),Y_11)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Y_11),bot_bot_fun_nat_bool))))
         => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f22106695ol_nat(finite_fold1_nat(times_times_nat),A)),A)) )
       <= A != bot_bot_fun_nat_bool )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(gsy_c_Com_Ovname_OGlb,axiom,
    ! [B_1_1] :
      ( is_glb(B_1_1)
     => is_vname(glb(B_1_1)) ) ).

fof(fact_545_sup__Un__eq,axiom,
    ! [R_1,S,X_2] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,R_1),S)))
    <=> hBOOL(hAPP_H1421470952a_bool(hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),R_1)),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),S)),X_2)) ) ).

fof(fact_412_comp__fun__idem__insert,axiom,
    hBOOL(finite1317819144e_bool(insert1835143293_state)) ).

fof(fact_48_Collect__empty__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_f54304608l_bool(Pa,X_2))
    <=> bot_bo1701429464l_bool = collect_fun_nat_bool(Pa) ) ).

fof(fact_330_finite__nonempty__imp__fold1Set,axiom,
    ! [F_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
     => ( A != bot_bo1055319631e_bool
       => ? [X1] : hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,A),X1)) ) ) ).

fof(fact_581_union__fold__insert,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
     => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B) = hAPP_f1591852335a_bool(finite1979045230a_bool(insert873085594iple_a,B),A) ) ).

fof(fact_593_folding__one__idem_Ounion__idem,axiom,
    ! [B,A,F_1,F] :
      ( hBOOL(finite950012314iple_a(F_1,F))
     => ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,B))
           => ( hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,hAPP_f124283079iple_a(F,A)),hAPP_f124283079iple_a(F,B)) = hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B))
             <= B != bot_bo1181479936a_bool ) )
         <= bot_bo1181479936a_bool != A ) ) ) ).

fof(fact_194_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),image_1410872416te_nat(F_1,A)))
       <= hAPP_H716259088te_nat(F_1,X_1) = Ba ) ) ).

fof(fact_335_finite_Osimps,axiom,
    ! [A_1] :
      ( ( ? [A_19,A_7] :
            ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A_19))
            & hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_7),A_19) = A_1 )
        | bot_bo1055319631e_bool = A_1 )
    <=> hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A_1)) ) ).

fof(fact_417_fold1__insert,axiom,
    ! [X_1,A] :
      ( ( ( hAPP_f22106695ol_nat(finite_fold1_nat(times_times_nat),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(times_times_nat,X_1),hAPP_f22106695ol_nat(finite_fold1_nat(times_times_nat),A))
         <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) )
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= bot_bot_fun_nat_bool != A ) ).

fof(fact_526_linorder__linear,axiom,
    ! [X_16,Y_12] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_16),Y_12))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_12),X_16)) ) ).

fof(fact_115_insert__not__empty,axiom,
    ! [A_1,A] : bot_bo1181479936a_bool != hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A) ).

fof(fact_196_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),image_129517430iple_a(F_1,A)))
       <= Ba = hAPP_H1600811558iple_a(F_1,X_1) )
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(fact_512_finite__Un,axiom,
    ! [F,Ga] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,F),Ga)))
    <=> ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F))
        & hBOOL(hAPP_f54304608l_bool(finite_finite_nat,Ga)) ) ) ).

fof(fact_656_insert__inter__insert,axiom,
    ! [A_1,A,B] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B)) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A)),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) ).

fof(fact_386_insert__Diff__single,axiom,
    ! [A_1,A] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool))) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A) ).

fof(fact_297_MGT__def,axiom,
    ! [Ca] : hoare_Mirabelle_MGT(Ca) = hoare_1575745797_state(fequal_state,Ca,evalc(Ca)) ).

fof(fact_138_Set_Oset__insert,axiom,
    ! [X_1,A] :
      ( ~ ! [B_15] :
            ( A = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),B_15)
           => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),B_15)) )
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(fact_312_finite_OemptyI,axiom,
    hBOOL(hAPP_f1760790145l_bool(finite784854244_state,bot_bo1055319631e_bool)) ).

fof(help_COMBC_1_1_COMBC_000t__a_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc,axiom,
    ! [P,Q,R] : hAPP_f1759915619e_bool(hAPP_a1200519163e_bool(P,R),Q) = hAPP_a2036067514e_bool(hAPP_f762886889e_bool(hAPP_f1261923407e_bool(cOMBC_892787026e_bool,P),Q),R) ).

fof(help_fequal_2_1_fequal_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_,axiom,
    ! [X,Y] :
      ( X != Y
      | hBOOL(hAPP_H1421470952a_bool(hAPP_H1190454433a_bool(fequal879838495iple_a,X),Y)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com__O,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1760790145l_bool(B_1_1,B_2_1)) ).

fof(fact_256_com_Osimps_I23_J,axiom,
    ! [Loc_2,Fun,Com,Vname,Fun_1] : local(Loc_2,Fun,Com) != ass(Vname,Fun_1) ).

fof(fact_695_Diff__triv,axiom,
    ! [A,B] :
      ( A = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),B)
     <= hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B) = bot_bo1055319631e_bool ) ).

fof(fact_375_insert__Diff1,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),B))
     => hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),B) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)),B) ) ).

fof(fact_563_Un__insert__right,axiom,
    ! [A,A_1,B] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,A),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) ).

fof(fact_287_empty__fold__graphE,axiom,
    ! [F_1,Z_2,X_1] :
      ( X_1 = Z_2
     <= hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,bot_bo1181479936a_bool),X_1)) ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(hAPP_bool_bool(fNot,P))
      | ~ hBOOL(P) ) ).

fof(fact_153_nonempty__iff,axiom,
    ! [A] :
      ( bot_bo1181479936a_bool != A
    <=> ? [X_2,B_15] :
          ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),B_15))
          & hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),B_15) = A ) ) ).

fof(fact_421_fold1__singleton,axiom,
    ! [F_1,A_1] : A_1 = hAPP_f124283079iple_a(finite1382394752iple_a(F_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)) ).

fof(fact_158_bot__empty__eq,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),bot_bot_fun_nat_bool))
    <=> hBOOL(hAPP_nat_bool(bot_bot_fun_nat_bool,X_2)) ) ).

fof(fact_445_order__refl,axiom,
    ! [X_34] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_34),X_34)) ).

fof(fact_125_bot__apply,axiom,
    ! [X_1] :
      ( hBOOL(hAPP_nat_bool(bot_bot_fun_nat_bool,X_1))
    <=> hBOOL(bot_bot_bool) ) ).

fof(fact_436_fold1__def,axiom,
    ! [F_1,A] : hAPP_f124283079iple_a(the_Ho746640593iple_a,finite1537818352iple_a(F_1,A)) = hAPP_f124283079iple_a(finite1382394752iple_a(F_1),A) ).

fof(fact_666_Collect__conj__eq,axiom,
    ! [Pa,Q_1] : collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),Pa)),Q_1)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,collect_nat(Pa)),collect_nat(Q_1)) ).

fof(fact_454_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,bot_bo1181479936a_bool),A)) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__HOL__Obo,axiom,
    ! [P,Q,R] : hAPP_f54304608l_bool(P,hAPP_n1699378549t_bool(Q,R)) = hAPP_nat_bool(hAPP_f158894502t_bool(hAPP_f1777703707t_bool(cOMBB_955900739ol_nat,P),Q),R) ).

fof(fact_15_conseq1,axiom,
    ! [Pa,Ga,P_2,Ca,Q_1] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(P_2,Ca,Q_1)),bot_bo1055319631e_bool)))
     => ( ! [Z_7,S_2] :
            ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Pa,Z_7),S_2))
           => hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(P_2,Z_7),S_2)) )
       => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool))) ) ) ).

fof(fact_148_com_Osimps_I12_J,axiom,
    ! [Com1_2,Com2_2] : skip != semi(Com1_2,Com2_2) ).

fof(fact_503_Un__empty__left,axiom,
    ! [B] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,bot_bot_fun_nat_bool),B) = B ).

fof(fact_476_insert__mono,axiom,
    ! [A_1,C,D_2] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,C),D_2))
     => hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),C)),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),D_2))) ) ).

fof(fact_665_Collect__conj__eq,axiom,
    ! [Pa,Q_1] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,collec268032053iple_a(Pa)),collec268032053iple_a(Q_1)) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),Pa)),Q_1)) ).

fof(fact_671_Int__iff,axiom,
    ! [Ca,A,B] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
        & hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) )
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B))) ) ).

fof(fact_649_Int__insert__left__if0,axiom,
    ! [B,A_1,C] :
      ( hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,B),C) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)),C)
     <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),C)) ) ).

fof(fact_58_ex__in__conv,axiom,
    ! [A] :
      ( ? [X_2] : hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),A))
    <=> bot_bo1055319631e_bool != A ) ).

fof(fact_145_conseq,axiom,
    ! [Q_1,Ga,Ca,Pa] :
      ( ! [Z_7,S_2] :
          ( ? [P_1,Q_2] :
              ( ! [S_3] :
                  ( hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_1,Z_7),S_3))
                 <= ! [Z_8] :
                      ( hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_2,Z_8),S_3))
                     <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(P_1,Z_8),S_2)) ) )
              & hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(P_1,Ca,Q_2)),bot_bo1181479936a_bool))) )
         <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Pa,Z_7),S_2)) )
     => hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool))) ) ).

fof(fact_150_the__elem__def,axiom,
    ! [X_35] : hAPP_f22106695ol_nat(the_nat,hAPP_f158894502t_bool(hAPP_f1777703707t_bool(cOMBB_955900739ol_nat,hAPP_f103356543l_bool(fequal_fun_nat_bool,X_35)),hAPP_f1570313510t_bool(hAPP_f688831301t_bool(cOMBC_178881787t_bool,insert_nat),bot_bot_fun_nat_bool))) = hAPP_f22106695ol_nat(the_elem_nat,X_35) ).

fof(fact_586_diff__single__insert,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool))),B))
     => ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),B)))
       <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => P = hAPP_f54304608l_bool(hAPP_b1630757474l_bool(cOMBK_1994329625t_bool,P),Q) ) ).

fof(fact_500_sup__bot__left,axiom,
    ! [X_1] : X_1 = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,bot_bot_fun_nat_bool),X_1) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_Mtc__HOL__Obool_,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1637334154l_bool(B_1_1,B_2_1)) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_007,axiom,
    ! [X,Y] :
      ( Y = X
      | ~ hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(fequal1746921144e_bool,X),Y)) ) ).

fof(fact_38_Collect__conv__if2,axiom,
    ! [Pa,A_1] :
      ( ( collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fconj),hAPP_H1645666623e_bool(fequal1531560888_state,A_1))),Pa)) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool)
       <= hBOOL(hAPP_H513860823e_bool(Pa,A_1)) )
      & ( ~ hBOOL(hAPP_H513860823e_bool(Pa,A_1))
       => bot_bo1055319631e_bool = collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fconj),hAPP_H1645666623e_bool(fequal1531560888_state,A_1))),Pa)) ) ) ).

fof(fact_279_evalc__elim__cases_I1_J,axiom,
    ! [S_1,T] :
      ( S_1 = T
     <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(skip),S_1),T)) ) ).

fof(fact_268_theI_H,axiom,
    ! [Pa] :
      ( ? [X_2] :
          ( ! [Y_11] :
              ( Y_11 = X_2
             <= hBOOL(hAPP_H1421470952a_bool(Pa,Y_11)) )
          & hBOOL(hAPP_H1421470952a_bool(Pa,X_2)) )
     => hBOOL(hAPP_H1421470952a_bool(Pa,hAPP_f124283079iple_a(the_Ho746640593iple_a,Pa))) ) ).

fof(fact_481_sup__absorb1,axiom,
    ! [Y_24,X_30] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_30),Y_24) = X_30
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_24),X_30)) ) ).

fof(gsy_c_Finite__Set_Ocomp__fun__idem_000tc__Hoare____Mirabelle____ddpglwnxwg__Otri_001,axiom,
    ! [B_1_1] : is_bool(finite1317819144e_bool(B_1_1)) ).

fof(fact_693_inf__bot__right,axiom,
    ! [X_1] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,X_1),bot_bo1181479936a_bool) = bot_bo1181479936a_bool ).

fof(help_COMBK_1_1_COMBK_000tc__Nat__Onat_000tc__Nat__Onat_U,axiom,
    ! [P,Q] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(cOMBK_nat_nat,P),Q) = P ).

fof(fact_281_evaln__elim__cases_I2_J,axiom,
    ! [X_35,A_1,S_4,N_3,T_1] :
      ( T_1 = hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S_4),X_35),hAPP_state_nat(A_1,S_4))
     <= hBOOL(evaln(ass(X_35,A_1),S_4,N_3,T_1)) ) ).

fof(fact_230_mem__def,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
    <=> hBOOL(hAPP_H1421470952a_bool(A,X_1)) ) ).

fof(fact_678_disjoint__iff__not__equal,axiom,
    ! [A,B] :
      ( bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B)
    <=> ! [X_2] :
          ( ! [Xa] :
              ( X_2 != Xa
             <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Xa),B)) )
         <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),A)) ) ) ).

fof(fact_344_vname_Oexhaust,axiom,
    ! [Y] :
      ( ( ! [Glb] :
            ( is_glb(Glb)
           => Y != glb(Glb) )
       => ~ ! [Loc] :
              ( Y != loc(Loc)
             <= is_loc(Loc) ) )
     <= is_vname(Y) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__Nat__Onat_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_nat_bool(hAPP_n1699378549t_bool(P,R),Q) = hAPP_nat_bool(hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,P),Q),R) ).

fof(fact_304_triple__valid__def2,axiom,
    ! [N_3,Pa,Ca,Q_1] :
      ( hBOOL(hAPP_H513860823e_bool(hoare_592710359_state(N_3),hoare_1575745797_state(Pa,Ca,Q_1)))
    <=> ! [Z_7,S_2] :
          ( ! [S_3] :
              ( hBOOL(evaln(Ca,S_2,N_3,S_3))
             => hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_1,Z_7),S_3)) )
         <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Pa,Z_7),S_2)) ) ) ).

fof(fact_90_insert__Collect,axiom,
    ! [A_1,Pa] : collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fimplies),hAPP_f1246832597l_bool(hAPP_f1164891443l_bool(cOMBB_238756964t_bool,fNot),hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,fequal_fun_nat_bool),A_1)))),Pa)) = hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,A_1),collect_fun_nat_bool(Pa)) ).

fof(fact_469_subset__insert,axiom,
    ! [B,X_1,A] :
      ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),B)))
      <=> hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),B)) )
     <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00_029,axiom,
    ! [P,Q,R] : hAPP_H1190454433a_bool(hAPP_f1665407592a_bool(hAPP_f549683569a_bool(cOMBC_708118077a_bool,P),Q),R) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(P,R),Q) ).

fof(gsy_c_Finite__Set_Ofolding__one_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_002,axiom,
    ! [B_1_1,B_2_1] : is_bool(finite774711482_state(B_1_1,B_2_1)) ).

fof(fact_99_insert__compr__raw,axiom,
    ! [X_2,Xa] : collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fdisj),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),X_2))),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),Xa))) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),Xa) ).

fof(fact_591_folding__one__idem_Ounion__idem,axiom,
    ! [B,A,F_1,F] :
      ( hBOOL(finite795500164em_nat(F_1,F))
     => ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,B))
           => ( bot_bot_fun_nat_bool != B
             => hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,hAPP_f22106695ol_nat(F,A)),hAPP_f22106695ol_nat(F,B)) ) )
         <= bot_bot_fun_nat_bool != A ) ) ) ).

fof(fact_254_com_Osimps_I34_J,axiom,
    ! [Loc_3,Fun_1,Com_1,Com1,Com2] : local(Loc_3,Fun_1,Com_1) != semi(Com1,Com2) ).

fof(fact_420_fold1__singleton,axiom,
    ! [F_1,A_1] : A_1 = hAPP_f2143211163_state(finite1346402327_state(F_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool)) ).

fof(fact_599_subsetI,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
     <= ! [X_2] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A))
         => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),B)) ) ) ).

fof(fact_697_Diff__disjoint,axiom,
    ! [A,B] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,B),A)) = bot_bot_fun_nat_bool ).

fof(fact_116_insert__not__empty,axiom,
    ! [A_1,A] : bot_bot_fun_nat_bool != hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A) ).

fof(fact_219_image__is__empty,axiom,
    ! [F_1,A] :
      ( A = bot_bot_fun_nat_bool
    <=> image_1782127643iple_a(F_1,A) = bot_bo1181479936a_bool ) ).

fof(fact_65_empty__def,axiom,
    bot_bo1701429464l_bool = collect_fun_nat_bool(hAPP_b1630757474l_bool(cOMBK_1994329625t_bool,fFalse)) ).

fof(fact_227_empty__is__image,axiom,
    ! [F_1,A] :
      ( bot_bot_fun_nat_bool = A
    <=> image_1782127643iple_a(F_1,A) = bot_bo1181479936a_bool ) ).

fof(fact_350_folding__one_Oinsert__remove,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite1669978781iple_a(F_1,F))
     => ( ( ( hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)) = X_1
           <= hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)) = bot_bo1181479936a_bool )
          & ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)) != bot_bo1181479936a_bool
           => hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)) = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)))) ) )
       <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | ~ hBOOL(Q)
      | ~ hBOOL(P) ) ).

fof(fact_615_Sup__fin_Oeq__fold__idem_H,axiom,
    ! [A_1,A] :
      ( hAPP_f22106695ol_nat(finite_fold_nat_nat(semila972727038up_nat,A_1),A) = hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A))
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_571_asm,axiom,
    ! [Ts,Ga] :
      ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),Ts))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,Ts),Ga)) ) ).

fof(fact_112_singleton__iff,axiom,
    ! [Ba,A_1] :
      ( A_1 = Ba
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool))) ) ).

fof(fact_49_Collect__empty__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_H513860823e_bool(Pa,X_2))
    <=> bot_bo1055319631e_bool = collec727977250_state(Pa) ) ).

fof(fact_489_sup__ge1,axiom,
    ! [X_24,Y_20] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_24),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_24),Y_20))) ).

fof(fact_140_mk__disjoint__insert,axiom,
    ! [A_1,A] :
      ( ? [B_15] :
          ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B_15) = A
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),B_15)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) ) ).

fof(fact_583_subset__singletonD,axiom,
    ! [A,X_1] :
      ( ( A = bot_bo1055319631e_bool
        | A = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool) )
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool))) ) ).

fof(fact_522_ord__eq__le__trans,axiom,
    ! [C_3,A_10,B_6] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_6),C_3))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_10),C_3)) )
     <= B_6 = A_10 ) ).

fof(fact_371_empty__Diff,axiom,
    ! [A] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,bot_bo1055319631e_bool),A) = bot_bo1055319631e_bool ).

fof(fact_510_Un__empty,axiom,
    ! [A,B] :
      ( ( B = bot_bo1055319631e_bool
        & A = bot_bo1055319631e_bool )
    <=> bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,A),B) ) ).

fof(fact_452_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,bot_bot_fun_nat_bool),A)) ).

fof(fact_60_all__not__in__conv,axiom,
    ! [A] :
      ( A = bot_bo1181479936a_bool
    <=> ! [X_2] : ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A)) ) ).

fof(fact_577_insert__is__Un,axiom,
    ! [A_1,A] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A) ).

fof(fact_305_triple__valid__def2,axiom,
    ! [N_3,Pa,Ca,Q_1] :
      ( ! [Z_7,S_2] :
          ( ! [S_3] :
              ( hBOOL(evaln(Ca,S_2,N_3,S_3))
             => hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_1,Z_7),S_3)) )
         <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Pa,Z_7),S_2)) )
    <=> hBOOL(hAPP_H1421470952a_bool(hoare_560051114alid_a(N_3),hoare_1760757500iple_a(Pa,Ca,Q_1))) ) ).

fof(fact_86_insert__absorb2,axiom,
    ! [X_1,A] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) ).

fof(gsy_c_hAPP_000tc__Com__Ostate_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_state_bool(B_1_1,B_2_1)) ).

fof(fact_53_empty__Collect__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_nat_bool(Pa,X_2))
    <=> bot_bot_fun_nat_bool = collect_nat(Pa) ) ).

fof(fact_180_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( hAPP_H738206399_a_nat(F_1,X_1) = Ba
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),image_194810223_a_nat(F_1,A)))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ) ).

fof(fact_73_insert__ident,axiom,
    ! [B,X_1,A] :
      ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
     => ( ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),B)
        <=> A = B )
       <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B)) ) ) ).

fof(fact_442_folding__one__idem_Osubset__idem,axiom,
    ! [B,A,F_1,F] :
      ( hBOOL(finite795500164em_nat(F_1,F))
     => ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => ( bot_bot_fun_nat_bool != B
         => ( hAPP_f22106695ol_nat(F,A) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,hAPP_f22106695ol_nat(F,B)),hAPP_f22106695ol_nat(F,A))
           <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,B),A)) ) ) ) ) ).

fof(fact_139_mk__disjoint__insert,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A))
     => ? [B_15] :
          ( A = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B_15)
          & ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),B_15)) ) ) ).

fof(fact_51_empty__iff,axiom,
    ! [Ca] : ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ca),bot_bo1055319631e_bool)) ).

fof(fact_373_finite__Diff2,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,B))
     => ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
      <=> hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B))) ) ) ).

fof(fact_677_disjoint__iff__not__equal,axiom,
    ! [A,B] :
      ( ! [X_2] :
          ( ! [Xa] :
              ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),B))
             => X_2 != Xa )
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A)) )
    <=> hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B) = bot_bot_fun_nat_bool ) ).

fof(fact_132_Comp,axiom,
    ! [D_3,R_1,Ga,Pa,Ca,Q_1] :
      ( ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,semi(Ca,D_3),R_1)),bot_bo1181479936a_bool)))
       <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Q_1,D_3,R_1)),bot_bo1181479936a_bool))) )
     <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool))) ) ).

fof(fact_257_com_Osimps_I22_J,axiom,
    ! [Vname,Fun_1,Loc_2,Fun,Com] : ass(Vname,Fun_1) != local(Loc_2,Fun,Com) ).

fof(fact_142_equals0I,axiom,
    ! [A] :
      ( bot_bo1181479936a_bool = A
     <= ! [Y_11] : ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Y_11),A)) ) ).

fof(help_COMBC_1_1_COMBC_000t__a_000tc__HOL__Obool_000tc__fun_Itc__Com__Ostate_Mtc__,axiom,
    ! [P,Q,R] : hAPP_a2036067514e_bool(hAPP_b540892988e_bool(hAPP_f1824947087e_bool(cOMBC_41962815e_bool,P),Q),R) = hAPP_b2019457360e_bool(hAPP_a723219176e_bool(P,R),Q) ).

fof(fact_40_Collect__conv__if,axiom,
    ! [Pa,A_1] :
      ( ( hBOOL(hAPP_nat_bool(Pa,A_1))
       => collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),A_1))),Pa)) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool) )
      & ( ~ hBOOL(hAPP_nat_bool(Pa,A_1))
       => bot_bot_fun_nat_bool = collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),A_1))),Pa)) ) ) ).

fof(fact_396_finite__Diff__insert,axiom,
    ! [A,A_1,B] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),B)))
    <=> hBOOL(hAPP_f1760790145l_bool(finite784854244_state,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)))) ) ).

fof(fact_601_finite__Collect__le__nat,axiom,
    ! [K] : hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,ord_less_eq_nat),K)))) ).

fof(help_COMBS_1_1_COMBS_000tc__Com__Ostate_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_state_bool(hAPP_f1759915619e_bool(hAPP_f644196280e_bool(cOMBS_1378840469l_bool,P),Q),R) = hAPP_bool_bool(hAPP_s58564346l_bool(P,R),hAPP_state_bool(Q,R)) ).

fof(fact_435_comp__fun__commute_Ofold__graph__fold,axiom,
    ! [Z_2,A,F_1] :
      ( hBOOL(finite1200705745iple_a(F_1))
     => ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),hAPP_f124283079iple_a(finite978536264iple_a(F_1,Z_2),A)))
       <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__fun_It_021,axiom,
    ! [P,Q,R] : hAPP_s2001034685l_bool(hAPP_f1283379615l_bool(hAPP_f1345202233l_bool(cOMBB_1759179140_state,P),Q),R) = hAPP_f1259673775l_bool(P,hAPP_s1806633685e_bool(Q,R)) ).

fof(fact_164_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( bot_bo1181479936a_bool != A
       => hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ca),bot_bo1055319631e_bool) = image_1604514514_state(hAPP_H558669354_state(cOMBK_547979437iple_a,Ca),A) )
      & ( A = bot_bo1181479936a_bool
       => bot_bo1055319631e_bool = image_1604514514_state(hAPP_H558669354_state(cOMBK_547979437iple_a,Ca),A) ) ) ).

fof(fact_456_sup__le__fold__sup,axiom,
    ! [Ba,A_1,A] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_1),Ba)),hAPP_f22106695ol_nat(finite_fold_nat_nat(semila972727038up_nat,Ba),A)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_628_inf__greatest,axiom,
    ! [Z_3,X_14,Y_10] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_14),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,Y_10),Z_3)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_14),Z_3)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_14),Y_10)) ) ).

fof(fact_368_Diff__empty,axiom,
    ! [A] : A = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),bot_bo1055319631e_bool) ).

fof(fact_566_Un__insert__left,axiom,
    ! [A_1,B,C] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,B),C)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)),C) ).

fof(fact_222_image__empty,axiom,
    ! [F_1] : image_1604514514_state(F_1,bot_bo1181479936a_bool) = bot_bo1055319631e_bool ).

fof(fact_321_finite__insert,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A)))
    <=> hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) ) ).

fof(fact_533_in__mono,axiom,
    ! [X_1,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ) ).

fof(fact_144_equals0I,axiom,
    ! [A] :
      ( ! [Y_11] : ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Y_11),A))
     => bot_bot_fun_nat_bool = A ) ).

fof(fact_385_Diff__insert__absorb,axiom,
    ! [X_1,A] :
      ( A = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool))
     <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_108_singletonE,axiom,
    ! [Ba,A_1] :
      ( Ba = A_1
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool))) ) ).

fof(fact_329_finite__nonempty__imp__fold1Set,axiom,
    ! [F_1,A] :
      ( ( bot_bo1181479936a_bool != A
       => ? [X1] : hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,A),X1)) )
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ).

fof(fact_642_Int__insert__left__if1,axiom,
    ! [B,A_1,C] :
      ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)),C) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,B),C))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),C)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__fun_Itc__HOL__Obool_Mtc__H_028,axiom,
    ! [P,Q,R] : hAPP_a1200519163e_bool(hAPP_f963367678e_bool(hAPP_f375255701e_bool(cOMBB_145932198bool_a,P),Q),R) = hAPP_f644196280e_bool(P,hAPP_a849909144l_bool(Q,R)) ).

fof(fact_437_minus__fold__remove,axiom,
    ! [B,A] :
      ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,B),A) = hAPP_f800510211t_bool(finite1578363458t_bool(hAPP_f10625010t_bool(hAPP_f1115950719t_bool(cOMBB_1654519265ol_nat,hAPP_f1311642927t_bool(cOMBC_646315179t_bool,minus_2067140911t_bool)),hAPP_f1570313510t_bool(hAPP_f688831301t_bool(cOMBC_178881787t_bool,insert_nat),bot_bot_fun_nat_bool)),B),A)
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_289_fold__graph_OinsertI,axiom,
    ! [F_1,Z_2,Y_7,X_1,A] :
      ( ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),Y_7))
       => hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),Y_7))) )
     <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_398_folding__one__idem_Oin__idem,axiom,
    ! [X_1,A,F_1,F] :
      ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => ( hAPP_f124283079iple_a(F,A) = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),hAPP_f124283079iple_a(F,A))
         <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) )
     <= hBOOL(finite950012314iple_a(F_1,F)) ) ).

fof(fact_83_insert__commute,axiom,
    ! [X_1,Y_7,A] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Y_7),A)) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Y_7),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) ).

fof(fact_183_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( hAPP_H1600811558iple_a(F_1,X_1) = Ba
     => ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
       => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),image_129517430iple_a(F_1,A))) ) ) ).

fof(fact_484_le__supI1,axiom,
    ! [B_10,X_27,A_14] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_27),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_14),B_10)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_27),A_14)) ) ).

fof(fact_507_Un__empty__right,axiom,
    ! [A] : A = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,A),bot_bo1055319631e_bool) ).

fof(fact_28_singleton__conv2,axiom,
    ! [A_1] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool) = collect_nat(hAPP_n1699378549t_bool(fequal_nat,A_1)) ).

fof(fact_76_insert__code,axiom,
    ! [Y_7,A,X_1] :
      ( hBOOL(hAPP_H1421470952a_bool(hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Y_7),A),X_1))
    <=> ( hBOOL(hAPP_H1421470952a_bool(A,X_1))
        | X_1 = Y_7 ) ) ).

fof(fact_284_eval__eq,axiom,
    ! [Ca,S_4,T_1] :
      ( ? [N_1] : hBOOL(evaln(Ca,S_4,N_1,T_1))
    <=> hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(Ca),S_4),T_1)) ) ).

fof(fact_109_doubleton__eq__iff,axiom,
    ! [A_1,Ba,Ca,D_3] :
      ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),bot_bo1181479936a_bool)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,D_3),bot_bo1181479936a_bool))
    <=> ( ( Ca = Ba
          & A_1 = D_3 )
        | ( A_1 = Ca
          & Ba = D_3 ) ) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q)) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(P)
      | hBOOL(hAPP_bool_bool(fNot,P)) ) ).

fof(fact_192_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( ( Ba = hAPP_nat_nat(F_1,X_1)
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),image_nat_nat(F_1,A))) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Nat__Onat_000tc__Hoare____Mirabelle____ddpglwnxwg__O,axiom,
    ! [P,Q] : P = hAPP_H738206399_a_nat(hAPP_n1800114674_a_nat(cOMBK_944981412iple_a,P),Q) ).

fof(help_fequal_2_1_fequal_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_H513860823e_bool(hAPP_H1645666623e_bool(fequal1531560888_state,X),Y)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__Nat__On,axiom,
    ! [P,Q,R] : hAPP_f54304608l_bool(hAPP_f1246832597l_bool(hAPP_f1164891443l_bool(cOMBB_238756964t_bool,P),Q),R) = hAPP_bool_bool(P,hAPP_f54304608l_bool(Q,R)) ).

fof(fact_134_triple_Oexhaust,axiom,
    ! [Y_7] :
      ~ ! [Fun1,Com_2,Fun2] : Y_7 != hoare_1575745797_state(Fun1,Com_2,Fun2) ).

fof(fact_156_bot__empty__eq,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),bot_bo1181479936a_bool))
    <=> hBOOL(hAPP_H1421470952a_bool(bot_bo1181479936a_bool,X_2)) ) ).

fof(fact_419_fold1__singleton,axiom,
    ! [F_1,A_1] : A_1 = hAPP_f22106695ol_nat(finite_fold1_nat(F_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)) ).

fof(fact_391_Diff__insert2,axiom,
    ! [A,A_1,B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool))),B) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) ).

fof(fact_426_fold__def,axiom,
    ! [F_1,Z_2,A] : hAPP_f124283079iple_a(the_Ho746640593iple_a,finite2010942150iple_a(F_1,Z_2,A)) = hAPP_f124283079iple_a(finite978536264iple_a(F_1,Z_2),A) ).

fof(help_fequal_1_1_fequal_000tc__Nat__Onat_T,axiom,
    ! [X,Y] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(fequal_nat,X),Y))
      | Y = X ) ).

fof(fact_505_Un__empty__left,axiom,
    ! [B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,bot_bo1181479936a_bool),B) = B ).

fof(fact_658_Int__insert__left,axiom,
    ! [B,A_1,C] :
      ( ( hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,B),C) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)),C)
       <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),C)) )
      & ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),C))
       => hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)),C) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,B),C)) ) ) ).

fof(fact_534_in__mono,axiom,
    ! [X_1,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) ) ).

fof(fact_687_inf__bot__left,axiom,
    ! [X_1] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,bot_bot_fun_nat_bool),X_1) = bot_bot_fun_nat_bool ).

fof(fact_267_the1__equality,axiom,
    ! [A_1,Pa] :
      ( ? [X_2] :
          ( ! [Y_11] :
              ( hBOOL(hAPP_H1421470952a_bool(Pa,Y_11))
             => Y_11 = X_2 )
          & hBOOL(hAPP_H1421470952a_bool(Pa,X_2)) )
     => ( A_1 = hAPP_f124283079iple_a(the_Ho746640593iple_a,Pa)
       <= hBOOL(hAPP_H1421470952a_bool(Pa,A_1)) ) ) ).

fof(fact_36_Collect__conv__if2,axiom,
    ! [Pa,A_1] :
      ( ( collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),hAPP_n1699378549t_bool(fequal_nat,A_1))),Pa)) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)
       <= hBOOL(hAPP_nat_bool(Pa,A_1)) )
      & ( ~ hBOOL(hAPP_nat_bool(Pa,A_1))
       => collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),hAPP_n1699378549t_bool(fequal_nat,A_1))),Pa)) = bot_bot_fun_nat_bool ) ) ).

fof(fact_376_insert__Diff1,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B))
     => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),B) ) ).

fof(fact_33_singleton__conv,axiom,
    ! [A_1] : collect_fun_nat_bool(hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,fequal_fun_nat_bool),A_1)) = hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,A_1),bot_bo1701429464l_bool) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__fun_It_016,axiom,
    ! [P,Q,R] : hAPP_a849909144l_bool(hAPP_f1509969235l_bool(hAPP_f1178339559l_bool(cOMBB_1355796797bool_a,P),Q),R) = hAPP_f1259673775l_bool(P,hAPP_a2036067514e_bool(Q,R)) ).

fof(fact_91_insert__Collect,axiom,
    ! [A_1,Pa] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),collec727977250_state(Pa)) = collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fimplies),hAPP_f921536533e_bool(hAPP_f1037965299e_bool(cOMBB_416661851_state,fNot),hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),A_1)))),Pa)) ).

fof(fact_278_evalc_OSkip,axiom,
    ! [S_1] : hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(skip),S_1),S_1)) ).

fof(fact_159_Ass,axiom,
    ! [Ga,Pa,X_35,A_1] : hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(hAPP_f100967412e_bool(hAPP_f1460451647e_bool(cOMBC_524597097e_bool,hAPP_f1406200875e_bool(hAPP_f635443597e_bool(cOMBB_2139825703bool_a,cOMBB_844853809_state),Pa)),hAPP_f871651461_state(hAPP_f851239890_state(cOMBS_777315357_state,hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,update),X_35)),A_1)),ass(X_35,A_1),Pa)),bot_bo1181479936a_bool))) ).

fof(fact_258_com_Osimps_I11_J,axiom,
    ! [Loc_2,Fun,Com] : skip != local(Loc_2,Fun,Com) ).

fof(fact_311_finite_OemptyI,axiom,
    hBOOL(hAPP_f54304608l_bool(finite_finite_nat,bot_bot_fun_nat_bool)) ).

fof(fact_497_sup__bot__right,axiom,
    ! [X_1] : X_1 = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,X_1),bot_bo1055319631e_bool) ).

fof(fact_474_insert__mono,axiom,
    ! [A_1,C,D_2] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),C)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),D_2)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,C),D_2)) ) ).

fof(fact_611_Sup__fin_Oinsert__idem,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => ( A != bot_bot_fun_nat_bool
       => hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),hAPP_f22106695ol_nat(big_la43341705in_nat,A)) ) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q)) ) ).

fof(fact_74_insert__ident,axiom,
    ! [B,X_1,A] :
      ( ( ( B = A
        <=> hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),B) )
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B)) )
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_241_the__eq__trivial,axiom,
    ! [A_1] : A_1 = hAPP_f124283079iple_a(the_Ho746640593iple_a,hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1)) ).

fof(fact_495_sup__bot__right,axiom,
    ! [X_1] :
      ( hBOOL(X_1)
    <=> hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(semila1168014441p_bool,X_1),bot_bot_bool)) ) ).

fof(fact_81_insert__iff,axiom,
    ! [A_1,Ba,A] :
      ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A))
        | Ba = A_1 )
    <=> hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),A))) ) ).

fof(fact_246_the__equality,axiom,
    ! [Pa,A_1] :
      ( ( A_1 = hAPP_f124283079iple_a(the_Ho746640593iple_a,Pa)
       <= ! [X_2] :
            ( hBOOL(hAPP_H1421470952a_bool(Pa,X_2))
           => X_2 = A_1 ) )
     <= hBOOL(hAPP_H1421470952a_bool(Pa,A_1)) ) ).

fof(fact_327_folding__one_Oclosed,axiom,
    ! [A,F_1,F] :
      ( ( ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,hAPP_f124283079iple_a(F,A)),A))
           <= ! [X_2,Y_11] : hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_2),Y_11)),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Y_11),bot_bo1181479936a_bool)))) )
         <= bot_bo1181479936a_bool != A )
       <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) )
     <= hBOOL(finite1669978781iple_a(F_1,F)) ) ).

fof(fact_217_com_Osimps_I9_J,axiom,
    ! [Vname_1,Fun] : skip != ass(Vname_1,Fun) ).

fof(fact_661_Int__insert__right,axiom,
    ! [B,A_1,A] :
      ( ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A))
       => hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B) )
      & ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B))
       <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A)) ) ) ).

fof(fact_592_folding__one__idem_Ounion__idem,axiom,
    ! [B,A,F_1,F] :
      ( hBOOL(finite506823037_state(F_1,F))
     => ( ( ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,B))
           => ( B != bot_bo1055319631e_bool
             => hAPP_H563960305_state(hAPP_H521649881_state(F_1,hAPP_f2143211163_state(F,A)),hAPP_f2143211163_state(F,B)) = hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,A),B)) ) )
         <= A != bot_bo1055319631e_bool )
       <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) ) ) ).

fof(fact_121_the__elem__eq,axiom,
    ! [X_1] : hAPP_f124283079iple_a(the_el1436340927iple_a,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)) = X_1 ).

fof(fact_403_finite__empty__induct,axiom,
    ! [Pa,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(Pa,A))
       => ( ! [A_7,A_19] :
              ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A_19))
             => ( ( hBOOL(hAPP_f54304608l_bool(Pa,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A_19),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_7),bot_bot_fun_nat_bool))))
                 <= hBOOL(hAPP_f54304608l_bool(Pa,A_19)) )
               <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_7),A_19)) ) )
         => hBOOL(hAPP_f54304608l_bool(Pa,bot_bot_fun_nat_bool)) ) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_173_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
     => hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ca),bot_bot_fun_nat_bool) = image_1410872416te_nat(hAPP_n436597305te_nat(cOMBK_1950023923_state,Ca),A) ) ).

fof(fact_323_vname_Osimps_I4_J,axiom,
    ! [Loc_1,Glb_1] : loc(Loc_1) != glb(Glb_1) ).

fof(fact_429_folding__one_Oeq__fold_H,axiom,
    ! [X_1,A,F_1,F] :
      ( ( ( hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = hAPP_f22106695ol_nat(finite_fold_nat_nat(F_1,X_1),A)
         <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) )
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= hBOOL(finite988810631ne_nat(F_1,F)) ) ).

fof(fact_356_DiffD2,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B)))
     => ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B)) ) ).

fof(fact_333_finite__induct,axiom,
    ! [Pa,F] :
      ( ( hBOOL(hAPP_f540970102l_bool(Pa,bot_bo1181479936a_bool))
       => ( hBOOL(hAPP_f540970102l_bool(Pa,F))
         <= ! [X_2,F_2] :
              ( ( ( hBOOL(hAPP_f540970102l_bool(Pa,F_2))
                 => hBOOL(hAPP_f540970102l_bool(Pa,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),F_2))) )
               <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),F_2)) )
             <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,F_2)) ) ) )
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,F)) ) ).

fof(fact_600_evaln__nonstrict,axiom,
    ! [M_1,C_2,S_1,N_2,T] :
      ( ( hBOOL(evaln(C_2,S_1,M_1,T))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_2),M_1)) )
     <= hBOOL(evaln(C_2,S_1,N_2,T)) ) ).

fof(fact_110_doubleton__eq__iff,axiom,
    ! [A_1,Ba,Ca,D_3] :
      ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ca),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,D_3),bot_bot_fun_nat_bool)) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),bot_bot_fun_nat_bool))
    <=> ( ( Ba = D_3
          & Ca = A_1 )
        | ( A_1 = D_3
          & Ca = Ba ) ) ) ).

fof(fact_622_IntI,axiom,
    ! [B,Ca,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A)) ) ).

fof(fact_274_evaln_OSemi,axiom,
    ! [C1,S2,C0,S0,N_2,S1] :
      ( hBOOL(evaln(C0,S0,N_2,S1))
     => ( hBOOL(evaln(C1,S1,N_2,S2))
       => hBOOL(evaln(semi(C0,C1),S0,N_2,S2)) ) ) ).

fof(fact_149_the__elem__def,axiom,
    ! [X_35] : hAPP_f124283079iple_a(the_Ho746640593iple_a,hAPP_f772297704a_bool(hAPP_f390613447a_bool(cOMBB_1501709507iple_a,hAPP_f430043647l_bool(fequal1258664663a_bool,X_35)),hAPP_f1665407592a_bool(hAPP_f549683569a_bool(cOMBC_708118077a_bool,insert873085594iple_a),bot_bo1181479936a_bool))) = hAPP_f124283079iple_a(the_el1436340927iple_a,X_35) ).

fof(fact_286_evaln__evalc,axiom,
    ! [C_2,S_1,N_2,T] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C_2),S_1),T))
     <= hBOOL(evaln(C_2,S_1,N_2,T)) ) ).

fof(fact_169_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),bot_bo1181479936a_bool) = image_306007685iple_a(hAPP_H1455657330iple_a(cOMBK_1824972302iple_a,Ca),A)
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000t__a_U,axiom,
    ! [P,Q] : P = hAPP_a2036067514e_bool(hAPP_f762886889e_bool(cOMBK_1458035955bool_a,P),Q) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_T,axiom,
    ! [X,Y] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(fequal_fun_nat_bool,X),Y))
      | Y = X ) ).

fof(fact_557_le__bot,axiom,
    ! [A_1] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(ord_less_eq_bool,A_1),bot_bot_bool))
     => ( hBOOL(A_1)
      <=> hBOOL(bot_bot_bool) ) ) ).

fof(fact_161_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( bot_bo1181479936a_bool = image_1782127643iple_a(hAPP_H1450464520iple_a(cOMBK_1505147640_a_nat,Ca),A)
       <= A = bot_bot_fun_nat_bool )
      & ( bot_bot_fun_nat_bool != A
       => image_1782127643iple_a(hAPP_H1450464520iple_a(cOMBK_1505147640_a_nat,Ca),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),bot_bo1181479936a_bool) ) ) ).

fof(fact_275_evaln_OSkip,axiom,
    ! [S_1,N_2] : hBOOL(evaln(skip,S_1,N_2,S_1)) ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(fequal1258664663a_bool,X),Y))
      | X != Y ) ).

fof(gsy_c_HOL_Oundefined_000tc__Com__Oglb,axiom,
    is_glb(undefined_glb(glb_1)) ).

fof(fact_542_Un__def,axiom,
    ! [A,B] : collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fdisj),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),A))),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),B))) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B) ).

fof(fact_13_conseq2,axiom,
    ! [Q_1,Ga,Pa,Ca,Q_3] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_3)),bot_bo1055319631e_bool)))
     => ( ! [Z_7,S_2] :
            ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_1,Z_7),S_2))
           <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_3,Z_7),S_2)) )
       => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool))) ) ) ).

fof(fact_562_Un__insert__right,axiom,
    ! [A,A_1,B] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple,axiom,
    ! [X,Y] :
      ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(fequal1258664663a_bool,X),Y))
      | Y = X ) ).

fof(fact_498_sup__bot__right,axiom,
    ! [X_1] : X_1 = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,X_1),bot_bo1181479936a_bool) ).

fof(fact_94_insert__compr,axiom,
    ! [A_1,B] : collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fdisj),hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,fequal_fun_nat_bool),A_1))),hAPP_f1246832597l_bool(hAPP_f1443436725l_bool(cOMBC_1245412066l_bool,member_fun_nat_bool),B))) = hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,A_1),B) ).

fof(fact_699_Diff__disjoint,axiom,
    ! [A,B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,B),A)) = bot_bo1181479936a_bool ).

fof(fact_320_finite__insert,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)))
    <=> hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_603_flat__lub__def,axiom,
    ! [A,Ba] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),bot_bot_fun_nat_bool)))
       => hAPP_f22106695ol_nat(the_nat,hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),bot_bot_fun_nat_bool)))) = hAPP_f22106695ol_nat(partial_flat_lub_nat(Ba),A) )
      & ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),bot_bot_fun_nat_bool)))
       => Ba = hAPP_f22106695ol_nat(partial_flat_lub_nat(Ba),A) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__fun_It_022,axiom,
    ! [P,Q,R] : hAPP_a1224971408e_bool(hAPP_f1406200875e_bool(hAPP_f635443597e_bool(cOMBB_2139825703bool_a,P),Q),R) = hAPP_f162060345e_bool(P,hAPP_a2036067514e_bool(Q,R)) ).

fof(fact_137_Set_Oset__insert,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => ~ ! [B_15] :
            ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),B_15) = A
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B_15)) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool__010,axiom,
    ! [P,Q,R] : hAPP_n1699378549t_bool(hAPP_f1570313510t_bool(hAPP_f688831301t_bool(cOMBC_178881787t_bool,P),Q),R) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(P,R),Q) ).

fof(fact_446_subsetD,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A))
       => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B)) ) ) ).

fof(fact_319_vname_Osimps_I1_J,axiom,
    ! [Glb_3,Glb_2] :
      ( ( is_glb(Glb_2)
        & is_glb(Glb_3) )
     => ( Glb_2 = Glb_3
      <=> glb(Glb_3) = glb(Glb_2) ) ) ).

fof(fact_55_empty__Collect__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_f54304608l_bool(Pa,X_2))
    <=> collect_fun_nat_bool(Pa) = bot_bo1701429464l_bool ) ).

fof(fact_643_Int__insert__left__if1,axiom,
    ! [B,A_1,C] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),C))
     => hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,B),C)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)),C) ) ).

fof(fact_457_subset__empty,axiom,
    ! [A] :
      ( bot_bot_fun_nat_bool = A
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),bot_bot_fun_nat_bool)) ) ).

fof(fact_124_bot__apply,axiom,
    ! [X_1] :
      ( hBOOL(hAPP_H1421470952a_bool(bot_bo1181479936a_bool,X_1))
    <=> hBOOL(bot_bot_bool) ) ).

fof(fact_647_Int__insert__right__if1,axiom,
    ! [B,A_1,A] :
      ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Nat__Onat_000tc__Hoare____Mirabelle____ddpglwnxwg__O_005,axiom,
    ! [P,Q] : P = hAPP_H716259088te_nat(hAPP_n436597305te_nat(cOMBK_1950023923_state,P),Q) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00_015,axiom,
    ! [P,Q] : hAPP_H1600811558iple_a(hAPP_H377435237iple_a(cOMBK_2022976521_state,P),Q) = P ).

fof(fact_212_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Z_2),image_129517430iple_a(F_1,A)))
    <=> ? [X_2] :
          ( Z_2 = hAPP_H1600811558iple_a(F_1,X_2)
          & hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),A)) ) ) ).

fof(fact_96_insertI1,axiom,
    ! [A_1,B] : hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B))) ).

fof(fact_27_singleton__conv2,axiom,
    ! [A_1] : collec268032053iple_a(hAPP_H1190454433a_bool(fequal879838495iple_a,A_1)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool) ).

fof(fact_191_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
     => ( hAPP_H928324994_state(F_1,X_1) = Ba
       => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),image_1604514514_state(F_1,A))) ) ) ).

fof(fact_342_finite__ne__induct,axiom,
    ! [Pa,F] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,F))
     => ( ( ( ! [X_2,F_2] :
                ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,F_2))
               => ( ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),F_2))
                   => ( hBOOL(hAPP_f1760790145l_bool(Pa,F_2))
                     => hBOOL(hAPP_f1760790145l_bool(Pa,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_2),F_2))) ) )
                 <= F_2 != bot_bo1055319631e_bool ) )
           => hBOOL(hAPP_f1760790145l_bool(Pa,F)) )
         <= ! [X_2] : hBOOL(hAPP_f1760790145l_bool(Pa,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_2),bot_bo1055319631e_bool))) )
       <= F != bot_bo1055319631e_bool ) ) ).

fof(fact_539_Un__iff,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B)))
    <=> ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
        | hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) ) ) ).

fof(fact_322_finite__insert,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A)))
    <=> hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ).

fof(gsy_c_Finite__Set_Ofolding__one__idem_000tc__Hoare____Mirabelle____ddpglwnxwg__O,axiom,
    ! [B_1_1,B_2_1] : is_bool(finite950012314iple_a(B_1_1,B_2_1)) ).

fof(fact_328_finite__nonempty__imp__fold1Set,axiom,
    ! [F_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => ( A != bot_bot_fun_nat_bool
       => ? [X1] : hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,A),X1)) ) ) ).

fof(fact_654_insert__inter__insert,axiom,
    ! [A_1,A,B] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) ).

fof(fact_619_Sup__fin_Oclosed,axiom,
    ! [A] :
      ( ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f22106695ol_nat(big_la43341705in_nat,A)),A))
         <= ! [X_2,Y_11] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_2),Y_11)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Y_11),bot_bot_fun_nat_bool)))) )
       <= bot_bot_fun_nat_bool != A )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_521_xt1_I3_J,axiom,
    ! [C_4,A_11,B_7] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_4),B_7))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_4),A_11)) )
     <= A_11 = B_7 ) ).

fof(fact_617_Sup__fin_Oinsert__remove,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => ( ( bot_bot_fun_nat_bool != hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool))
         => hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)))) )
        & ( bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool))
         => X_1 = hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) ) ) ) ).

fof(fact_453_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,bot_bo1055319631e_bool),A)) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com__,axiom,
    ! [P,Q] : hAPP_H928324994_state(hAPP_H558669354_state(cOMBK_547979437iple_a,P),Q) = P ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_008,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(fequal1746921144e_bool,X),Y)) ) ).

fof(fact_208_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( ? [X_2] :
          ( hAPP_H928324994_state(F_1,X_2) = Z_2
          & hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A)) )
    <=> hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Z_2),image_1604514514_state(F_1,A))) ) ).

fof(fact_414_comp__fun__commute_Ofold__graph__determ,axiom,
    ! [Y_7,Z_2,A,X_1,F_1] :
      ( hBOOL(finite1200705745iple_a(F_1))
     => ( ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),Y_7))
         => X_1 = Y_7 )
       <= hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),X_1)) ) ) ).

fof(fact_355_finite__Diff,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_558_le__bot,axiom,
    ! [A_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A_1),bot_bot_fun_nat_bool))
     => A_1 = bot_bot_fun_nat_bool ) ).

fof(fact_588_subset__insert__iff,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),B)))
    <=> ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
         => hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) )
        & ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool))),B))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Hoare____Mirabel,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_H1421470952a_bool(Q,R)) = hAPP_H1421470952a_bool(hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,P),Q),R) ).

fof(fact_582_subset__singletonD,axiom,
    ! [A,X_1] :
      ( ( bot_bot_fun_nat_bool = A
        | hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool) = A )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool))) ) ).

fof(fact_0_empty,axiom,
    ! [Ga] : hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),bot_bo1181479936a_bool)) ).

fof(fact_550_bot__least,axiom,
    ! [A_1] : hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,bot_bo1181479936a_bool),A_1)) ).

fof(fact_41_Collect__conv__if,axiom,
    ! [Pa,A_1] :
      ( ( hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,A_1),bot_bo1701429464l_bool) = collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fconj),hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,fequal_fun_nat_bool),A_1))),Pa))
       <= hBOOL(hAPP_f54304608l_bool(Pa,A_1)) )
      & ( bot_bo1701429464l_bool = collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fconj),hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,fequal_fun_nat_bool),A_1))),Pa))
       <= ~ hBOOL(hAPP_f54304608l_bool(Pa,A_1)) ) ) ).

fof(fact_117_insert__not__empty,axiom,
    ! [A_1,A] : bot_bo1055319631e_bool != hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A) ).

fof(fact_68_insert__absorb,axiom,
    ! [A_1,A] :
      ( A = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) ) ).

fof(fact_357_DiffD2,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
     => ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) ) ).

fof(gsy_c_fFalse,hypothesis,
    is_bool(fFalse) ).

fof(fact_3_triple_Oinject,axiom,
    ! [Fun1_2,Com_1,Fun2_2,Fun1_1,Com,Fun2_1] :
      ( hoare_1760757500iple_a(Fun1_1,Com,Fun2_1) = hoare_1760757500iple_a(Fun1_2,Com_1,Fun2_2)
    <=> ( Com_1 = Com
        & Fun2_1 = Fun2_2
        & Fun1_1 = Fun1_2 ) ) ).

fof(fact_494_sup__eq__bot__iff,axiom,
    ! [X_1,Y_7] :
      ( ( bot_bo1181479936a_bool = X_1
        & Y_7 = bot_bo1181479936a_bool )
    <=> bot_bo1181479936a_bool = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,X_1),Y_7) ) ).

fof(fact_326_folding__one_Oclosed,axiom,
    ! [A,F_1,F] :
      ( ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
       => ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,hAPP_f2143211163_state(F,A)),A))
           <= ! [X_2,Y_11] : hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,hAPP_H563960305_state(hAPP_H521649881_state(F_1,X_2),Y_11)),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_2),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Y_11),bot_bo1055319631e_bool)))) )
         <= A != bot_bo1055319631e_bool ) )
     <= hBOOL(finite774711482_state(F_1,F)) ) ).

fof(fact_352_DiffE,axiom,
    ! [Ca,A,B] :
      ( ~ ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
         => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B))) ) ).

fof(fact_574_insert__def,axiom,
    ! [A_1,B] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,collec268032053iple_a(hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1))),B) ).

fof(fact_401_folding__one__idem_Ohom__commute,axiom,
    ! [N,H,F_1,F] :
      ( ( ! [X_2,Y_11] : hAPP_H563960305_state(H,hAPP_H563960305_state(hAPP_H521649881_state(F_1,X_2),Y_11)) = hAPP_H563960305_state(hAPP_H521649881_state(F_1,hAPP_H563960305_state(H,X_2)),hAPP_H563960305_state(H,Y_11))
       => ( ( hAPP_f2143211163_state(F,image_650584225_state(H,N)) = hAPP_H563960305_state(H,hAPP_f2143211163_state(F,N))
           <= N != bot_bo1055319631e_bool )
         <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,N)) ) )
     <= hBOOL(finite506823037_state(F_1,F)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f54304608l_bool(B_1_1,B_2_1)) ).

fof(fact_354_DiffI,axiom,
    ! [B,Ca,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A)) ) ).

fof(fact_185_image__ident,axiom,
    ! [Y_27] : Y_27 = image_nat_nat(cOMBI_nat,Y_27) ).

fof(fact_641_distrib__inf__le,axiom,
    ! [X_3,Y_1,Z] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_3),Y_1)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_3),Z))),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_3),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,Y_1),Z)))) ).

fof(fact_650_Int__insert__left__if0,axiom,
    ! [B,A_1,C] :
      ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,B),C) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)),C)
     <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),C)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_014,axiom,
    ! [P,Q,R] : hAPP_H1017515220l_bool(hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,P),Q),R) = hAPP_b589554111l_bool(P,hAPP_H1421470952a_bool(Q,R)) ).

fof(fact_501_sup__bot__left,axiom,
    ! [X_1] : X_1 = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,bot_bo1055319631e_bool),X_1) ).

fof(fact_78_insert__code,axiom,
    ! [Y_7,A,X_1] :
      ( ( Y_7 = X_1
        | hBOOL(hAPP_H513860823e_bool(A,X_1)) )
    <=> hBOOL(hAPP_H513860823e_bool(hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Y_7),A),X_1)) ) ).

fof(fact_283_evalc__elim__cases_I2_J,axiom,
    ! [X_35,A_1,S_4,T_1] :
      ( T_1 = hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S_4),X_35),hAPP_state_nat(A_1,S_4))
     <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(ass(X_35,A_1)),S_4),T_1)) ) ).

fof(fact_181_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),image_1410872416te_nat(F_1,A))) )
     <= Ba = hAPP_H716259088te_nat(F_1,X_1) ) ).

fof(fact_511_Un__empty,axiom,
    ! [A,B] :
      ( bot_bo1181479936a_bool = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B)
    <=> ( A = bot_bo1181479936a_bool
        & B = bot_bo1181479936a_bool ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Com__Ostate_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_state_bool(Q,R)) = hAPP_state_bool(hAPP_f1759915619e_bool(hAPP_f2073279419e_bool(cOMBB_160679318_state,P),Q),R) ).

fof(fact_393_Diff__insert,axiom,
    ! [A,A_1,B] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),B)),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool)) ).

fof(fact_21_insertCI,axiom,
    ! [Ba,A_1,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),B)))
     <= ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),B))
       => Ba = A_1 ) ) ).

fof(fact_381_insert__Diff,axiom,
    ! [A_1,A] :
      ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool))) = A
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A)) ) ).

fof(fact_331_finite__induct,axiom,
    ! [Pa,F] :
      ( ( hBOOL(hAPP_f54304608l_bool(Pa,bot_bot_fun_nat_bool))
       => ( ! [X_2,F_2] :
              ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F_2))
             => ( ( hBOOL(hAPP_f54304608l_bool(Pa,F_2))
                 => hBOOL(hAPP_f54304608l_bool(Pa,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),F_2))) )
               <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),F_2)) ) )
         => hBOOL(hAPP_f54304608l_bool(Pa,F)) ) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F)) ) ).

fof(fact_175_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ca),bot_bo1055319631e_bool) = image_1604514514_state(hAPP_H558669354_state(cOMBK_547979437iple_a,Ca),A)
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_88_insert__Collect,axiom,
    ! [A_1,Pa] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),collec268032053iple_a(Pa)) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fimplies),hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,fNot),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1)))),Pa)) ).

fof(help_COMBB_1_1_COMBB_000tc__Nat__Onat_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_,axiom,
    ! [P,Q,R] : hAPP_n1699378549t_bool(P,hAPP_nat_nat(Q,R)) = hAPP_n1699378549t_bool(hAPP_f618557131t_bool(hAPP_f1505651103t_bool(cOMBB_800536526ol_nat,P),Q),R) ).

fof(fact_438_minus__fold__remove,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
     => hAPP_f921536533e_bool(finite512563852e_bool(hAPP_f531275309e_bool(hAPP_f1470644835e_bool(cOMBB_946224375_state,hAPP_f2049746453e_bool(cOMBC_872426556e_bool,minus_2076558538e_bool)),hAPP_f762269719e_bool(hAPP_f964290431e_bool(cOMBC_488258100e_bool,insert1835143293_state),bot_bo1055319631e_bool)),B),A) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,B),A) ) ).

fof(fact_10_escape,axiom,
    ! [Ga,Ca,Q_1,Pa] :
      ( ! [Z_7,S_2] :
          ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(hAPP_f762886889e_bool(cOMBK_1458035955bool_a,hAPP_s1806633685e_bool(hAPP_f817621513e_bool(cOMBC_2027030106e_bool,fequal_state),S_2)),Ca,hAPP_f762886889e_bool(cOMBK_1458035955bool_a,hAPP_a2036067514e_bool(Q_1,Z_7)))),bot_bo1181479936a_bool)))
         <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Pa,Z_7),S_2)) )
     => hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool))) ) ).

fof(fact_485_le__sup__iff,axiom,
    ! [X_1,Y_7,Z_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Z_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_7),Z_2)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),Y_7)),Z_2)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Ostate_000tc__HOL__Obool_000tc__fun_Itc__Com__O,axiom,
    ! [P,Q,R] : hAPP_s1806633685e_bool(hAPP_b1095269219e_bool(hAPP_f701449317e_bool(cOMBC_471052088e_bool,P),Q),R) = hAPP_b2019457360e_bool(hAPP_s1874344717e_bool(P,R),Q) ).

fof(fact_118_empty__not__insert,axiom,
    ! [A_1,A] : bot_bo1181479936a_bool != hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A) ).

fof(fact_559_le__bot,axiom,
    ! [A_1] :
      ( A_1 = bot_bo1055319631e_bool
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A_1),bot_bo1055319631e_bool)) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com__,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_H226398757l_bool(P,R),hAPP_H513860823e_bool(Q,R)) = hAPP_H513860823e_bool(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,P),Q),R) ).

fof(fact_12_conseq2,axiom,
    ! [Q_1,Ga,Pa,Ca,Q_3] :
      ( ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool)))
       <= ! [Z_7,S_2] :
            ( hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_1,Z_7),S_2))
           <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_3,Z_7),S_2)) ) )
     <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_3)),bot_bo1181479936a_bool))) ) ).

fof(fact_564_Un__insert__right,axiom,
    ! [A,A_1,B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B)) ).

fof(fact_336_finite_Osimps,axiom,
    ! [A_1] :
      ( ( bot_bo1181479936a_bool = A_1
        | ? [A_19,A_7] :
            ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_7),A_19) = A_1
            & hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A_19)) ) )
    <=> hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A_1)) ) ).

fof(fact_662_Int__insert__right,axiom,
    ! [B,A_1,A] :
      ( ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A))
       => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B) )
      & ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A)) ) ) ).

fof(help_COMBI_1_1_COMBI_000tc__Nat__Onat_U,axiom,
    ! [P] : P = hAPP_nat_nat(cOMBI_nat,P) ).

fof(fact_315_finite_OinsertI,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A)))
     <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) ) ).

fof(fact_515_xt1_I6_J,axiom,
    ! [Z_5,Y_17,X_21] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_17),X_21))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_5),Y_17))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_5),X_21)) ) ) ).

fof(gsy_c_Big__Operators_Osemilattice__big_000tc__Nat__Onat,axiom,
    ! [B_1_1,B_2_1] : is_bool(big_se275732192ig_nat(B_1_1,B_2_1)) ).

fof(fact_262_empty__fold1SetE,axiom,
    ! [F_1,X_1] : ~ hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,bot_bo1181479936a_bool),X_1)) ).

fof(help_COMBB_1_1_COMBB_000tc__Com__Ostate_000tc__HOL__Obool_000tc__Com__Ostate_U,axiom,
    ! [P,Q,R] : hAPP_state_bool(hAPP_f746301080e_bool(hAPP_f162060345e_bool(cOMBB_844853809_state,P),Q),R) = hAPP_state_bool(P,hAPP_state_state(Q,R)) ).

fof(fact_691_inf__bot__right,axiom,
    ! [X_1] : bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,X_1),bot_bot_fun_nat_bool) ).

fof(fact_411_comp__fun__idem__insert,axiom,
    hBOOL(finite1956789438t_bool(insert_nat)) ).

fof(fact_472_subset__insertI2,axiom,
    ! [Ba,A,B] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),B)))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),B)) ) ).

fof(fact_129_bot__fun__def,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_H513860823e_bool(bot_bo1055319631e_bool,X_2))
    <=> hBOOL(bot_bot_bool) ) ).

fof(fact_239_image__insert,axiom,
    ! [F_1,A_1,B] : image_1782127643iple_a(F_1,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hAPP_n178040171iple_a(F_1,A_1)),image_1782127643iple_a(F_1,B)) ).

fof(fact_75_insert__ident,axiom,
    ! [B,X_1,A] :
      ( ( ( B = A
        <=> hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),B) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A) )
       <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),B)) )
     <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__fun_It_025,axiom,
    ! [P,Q,R] : hAPP_s286259371e_bool(hAPP_f289738463e_bool(hAPP_f1151843515e_bool(cOMBB_1941618714_state,P),Q),R) = hAPP_f162060345e_bool(P,hAPP_s1806633685e_bool(Q,R)) ).

fof(fact_443_folding__one__idem_Osubset__idem,axiom,
    ! [B,A,F_1,F] :
      ( ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
       => ( ( hAPP_H563960305_state(hAPP_H521649881_state(F_1,hAPP_f2143211163_state(F,B)),hAPP_f2143211163_state(F,A)) = hAPP_f2143211163_state(F,A)
           <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,B),A)) )
         <= B != bot_bo1055319631e_bool ) )
     <= hBOOL(finite506823037_state(F_1,F)) ) ).

fof(fact_101_insert__compr__raw,axiom,
    ! [X_2,Xa] : collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fdisj),hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,fequal_fun_nat_bool),X_2))),hAPP_f1246832597l_bool(hAPP_f1443436725l_bool(cOMBC_1245412066l_bool,member_fun_nat_bool),Xa))) = hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,X_2),Xa) ).

fof(fact_623_IntE,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B)))
     => ~ ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
         <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) ) ) ).

fof(fact_377_insert__Diff__if,axiom,
    ! [A,X_1,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
       => hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)),B) )
      & ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
       => hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)),B) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)) ) ) ).

fof(fact_82_insert__commute,axiom,
    ! [X_1,Y_7,A] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Y_7),A)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Y_7),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)) ).

fof(fact_56_empty__Collect__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_H513860823e_bool(Pa,X_2))
    <=> collec727977250_state(Pa) = bot_bo1055319631e_bool ) ).

fof(fact_406_comp__fun__idem__remove,axiom,
    hBOOL(finite1956789438t_bool(hAPP_f10625010t_bool(hAPP_f1115950719t_bool(cOMBB_1654519265ol_nat,hAPP_f1311642927t_bool(cOMBC_646315179t_bool,minus_2067140911t_bool)),hAPP_f1570313510t_bool(hAPP_f688831301t_bool(cOMBC_178881787t_bool,insert_nat),bot_bot_fun_nat_bool)))) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fimplies,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_634_le__inf__iff,axiom,
    ! [X_1,Y_7,Z_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,Y_7),Z_2)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Z_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_7)) ) ) ).

fof(fact_52_empty__iff,axiom,
    ! [Ca] : ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),bot_bot_fun_nat_bool)) ).

fof(fact_555_bot__unique,axiom,
    ! [A_1] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A_1),bot_bo1181479936a_bool))
    <=> bot_bo1181479936a_bool = A_1 ) ).

fof(fact_585_diff__single__insert,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool))),B))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),B)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ) ).

fof(fact_54_empty__Collect__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_H1421470952a_bool(Pa,X_2))
    <=> collec268032053iple_a(Pa) = bot_bo1181479936a_bool ) ).

fof(fact_71_insertI2,axiom,
    ! [Ba,A_1,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),B)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),B)) ) ).

fof(fact_292_evalc__elim__cases_I4_J,axiom,
    ! [C1,C2,S_1,T] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(semi(C1,C2)),S_1),T))
     => ~ ! [S1_1] :
            ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C1),S_1),S1_1))
           => ~ hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C2),S1_1),T)) ) ) ).

fof(fact_64_empty__def,axiom,
    bot_bo1181479936a_bool = collec268032053iple_a(hAPP_b119575286a_bool(cOMBK_151824839iple_a,fFalse)) ).

fof(fact_225_image__empty,axiom,
    ! [F_1] : image_1782127643iple_a(F_1,bot_bot_fun_nat_bool) = bot_bo1181479936a_bool ).

fof(fact_240_the__sym__eq__trivial,axiom,
    ! [X_1] : X_1 = hAPP_f124283079iple_a(the_Ho746640593iple_a,hAPP_H1190454433a_bool(fequal879838495iple_a,X_1)) ).

fof(fact_195_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),image_306007685iple_a(F_1,A)))
       <= hAPP_H678412245iple_a(F_1,X_1) = Ba ) ) ).

fof(fact_520_ord__le__eq__trans,axiom,
    ! [C_5,A_12,B_8] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_12),C_5))
       <= C_5 = B_8 )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_12),B_8)) ) ).

fof(fact_537_UnI1,axiom,
    ! [B,Ca,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A))
     => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B))) ) ).

fof(fact_113_singleton__iff,axiom,
    ! [Ba,A_1] :
      ( A_1 = Ba
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool))) ) ).

fof(fact_587_diff__single__insert,axiom,
    ! [A,X_1,B] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
       => hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),B))) )
     <= hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool))),B)) ) ).

fof(fact_111_doubleton__eq__iff,axiom,
    ! [A_1,Ba,Ca,D_3] :
      ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ca),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,D_3),bot_bo1055319631e_bool)) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),bot_bo1055319631e_bool))
    <=> ( ( D_3 = Ba
          & A_1 = Ca )
        | ( A_1 = D_3
          & Ba = Ca ) ) ) ).

fof(fact_131_hoare__derivs_OSkip,axiom,
    ! [Ga,Pa] : hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,skip,Pa)),bot_bo1055319631e_bool))) ).

fof(fact_162_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( bot_bo1055319631e_bool = A
       => bot_bo1181479936a_bool = image_129517430iple_a(hAPP_H377435237iple_a(cOMBK_2022976521_state,Ca),A) )
      & ( image_129517430iple_a(hAPP_H377435237iple_a(cOMBK_2022976521_state,Ca),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),bot_bo1181479936a_bool)
       <= A != bot_bo1055319631e_bool ) ) ).

fof(fact_72_insertI2,axiom,
    ! [Ba,A_1,B] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),B)))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),B)) ) ).

fof(fact_186_image__ident,axiom,
    ! [Y_27] : Y_27 = image_650584225_state(cOMBI_1367665338_state,Y_27) ).

fof(fact_546_sup__Un__eq,axiom,
    ! [R_1,S,X_2] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,R_1),S)))
    <=> hBOOL(hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),R_1)),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),S)),X_2)) ) ).

fof(fact_309_finite__Collect__conjI,axiom,
    ! [Q_1,Pa] :
      ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,collec268032053iple_a(Pa)))
        | hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,collec268032053iple_a(Q_1))) )
     => hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),Pa)),Q_1)))) ) ).

fof(fact_174_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
     => image_650584225_state(hAPP_H521649881_state(cOMBK_690957994_state,Ca),A) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ca),bot_bo1055319631e_bool) ) ).

fof(fact_496_sup__bot__right,axiom,
    ! [X_1] : X_1 = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,X_1),bot_bot_fun_nat_bool) ).

fof(fact_395_finite__Diff__insert,axiom,
    ! [A,A_1,B] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
    <=> hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)))) ) ).

fof(fact_50_empty__iff,axiom,
    ! [Ca] : ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),bot_bo1181479936a_bool)) ).

fof(fact_606_finite__less__ub,axiom,
    ! [U,F_1] :
      ( ! [N_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),hAPP_nat_nat(F_1,N_1)))
     => hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,hAPP_f618557131t_bool(hAPP_f1505651103t_bool(cOMBB_800536526ol_nat,ord_less_eq_nat),F_1)),U)))) ) ).

fof(fact_316_finite_OinsertI,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A)))
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ).

fof(fact_690_inf__bot__right,axiom,
    ! [X_1] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(semila310582991f_bool,X_1),bot_bot_bool))
    <=> hBOOL(bot_bot_bool) ) ).

fof(fact_349_folding__one_Oinsert__remove,axiom,
    ! [X_1,A,F_1,F] :
      ( ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
       => ( ( hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)) != bot_bo1055319631e_bool
           => hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)) = hAPP_H563960305_state(hAPP_H521649881_state(F_1,X_1),hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)))) )
          & ( X_1 = hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A))
           <= bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)) ) ) )
     <= hBOOL(finite774711482_state(F_1,F)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_I_031,axiom,
    ! [P,Q,R] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(hAPP_f2049746453e_bool(cOMBC_872426556e_bool,P),Q),R) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(P,R),Q) ).

fof(fact_409_comp__fun__commute_Ofold__graph__insertE__aux,axiom,
    ! [A_1,Z_2,A,Y_7,F_1] :
      ( ( ( ? [Y_26] :
              ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool))),Y_26))
              & Y_7 = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,A_1),Y_26) )
         <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A)) )
       <= hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),Y_7)) )
     <= hBOOL(finite1200705745iple_a(F_1)) ) ).

fof(fact_684_Int__empty__left,axiom,
    ! [B] : bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,bot_bo1055319631e_bool),B) ).

fof(fact_480_le__supI,axiom,
    ! [B_12,A_16,X_31] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_16),X_31))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_12),X_31))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_16),B_12)),X_31)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__fun_It_012,axiom,
    ! [P,Q,R] : hAPP_f1759915619e_bool(P,hAPP_s1806633685e_bool(Q,R)) = hAPP_s1806633685e_bool(hAPP_f817621513e_bool(hAPP_f512427579e_bool(cOMBB_572666224_state,P),Q),R) ).

fof(fact_549_bot__least,axiom,
    ! [A_1] : hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,bot_bo1055319631e_bool),A_1)) ).

fof(fact_648_Int__insert__left__if0,axiom,
    ! [B,A_1,C] :
      ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,B),C) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)),C)
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),C)) ) ).

fof(fact_459_subset__empty,axiom,
    ! [A] :
      ( A = bot_bo1181479936a_bool
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),bot_bo1181479936a_bool)) ) ).

fof(help_fequal_1_1_fequal_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com,axiom,
    ! [X,Y] :
      ( X = Y
      | ~ hBOOL(hAPP_H513860823e_bool(hAPP_H1645666623e_bool(fequal1531560888_state,X),Y)) ) ).

fof(fact_525_order__eq__iff,axiom,
    ! [X_1,Y_7] :
      ( Y_7 = X_1
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_7),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_7)) ) ) ).

fof(fact_633_le__infI1,axiom,
    ! [B_1,A_2,X_9] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,A_2),B_1)),X_9))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_2),X_9)) ) ).

fof(fact_190_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),image_1821565372_state(F_1,A)))
       <= hAPP_n1126952044_state(F_1,X_1) = Ba ) ) ).

fof(fact_432_folding__one__idem_Oeq__fold__idem_H,axiom,
    ! [A_1,A,F_1,F] :
      ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)) = hAPP_f22106695ol_nat(finite_fold_nat_nat(F_1,A_1),A) )
     <= hBOOL(finite795500164em_nat(F_1,F)) ) ).

fof(fact_415_fold__graph__insert__swap,axiom,
    ! [Z_2,Ba,A,Y_7] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),A))
       => hBOOL(hAPP_nat_bool(finite929467206at_nat(times_times_nat,Z_2,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),A)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(times_times_nat,Z_2),Y_7))) )
     <= hBOOL(hAPP_nat_bool(finite929467206at_nat(times_times_nat,Ba,A),Y_7)) ) ).

fof(fact_69_insert__absorb,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A))
     => hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A) = A ) ).

fof(fact_504_Un__empty__left,axiom,
    ! [B] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,bot_bo1055319631e_bool),B) = B ).

fof(fact_384_Diff__insert__absorb,axiom,
    ! [X_1,A] :
      ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
     => hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)) = A ) ).

fof(fact_524_order__eq__refl,axiom,
    ! [X_17,Y_13] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_17),Y_13))
     <= Y_13 = X_17 ) ).

fof(fact_303_evaln__max2,axiom,
    ! [C2,S2,N2,T2,C1,S1,N1,T1] :
      ( hBOOL(evaln(C1,S1,N1,T1))
     => ( hBOOL(evaln(C2,S2,N2,T2))
       => ? [N_1] :
            ( hBOOL(evaln(C1,S1,N_1,T1))
            & hBOOL(evaln(C2,S2,N_1,T2)) ) ) ) ).

fof(fact_296_insert__fold1SetE,axiom,
    ! [F_1,A_1,X_35,X_1] :
      ( ~ ! [A_7,A_19] :
            ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),X_35) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_7),A_19)
           => ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,A_7,A_19),X_1))
             => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_7),A_19)) ) )
     <= hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),X_35)),X_1)) ) ).

fof(fact_590_subset__insert__iff,axiom,
    ! [A,X_1,B] :
      ( ( ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool))),B))
         <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) )
        & ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
         => hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B)) ) )
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),B))) ) ).

fof(fact_538_UnI1,axiom,
    ! [B,Ca,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A)) ) ).

fof(fact_232_Collect__def,axiom,
    ! [Pa] : Pa = collec268032053iple_a(Pa) ).

fof(fact_122_the__elem__eq,axiom,
    ! [X_1] : X_1 = hAPP_f22106695ol_nat(the_elem_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) ).

fof(gsy_c_Finite__Set_Ocomp__fun__idem_000tc__Nat__Onat_000tc__fun_Itc__Nat__Onat_Mt,axiom,
    ! [B_1_1] : is_bool(finite1956789438t_bool(B_1_1)) ).

fof(fact_602_flat__lub__def,axiom,
    ! [A,Ba] :
      ( ( hAPP_f124283079iple_a(partia1866111638iple_a(Ba),A) = hAPP_f124283079iple_a(the_Ho746640593iple_a,hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),bot_bo1181479936a_bool))))
       <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),bot_bo1181479936a_bool))) )
      & ( hAPP_f124283079iple_a(partia1866111638iple_a(Ba),A) = Ba
       <= hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),bot_bo1181479936a_bool))) ) ) ).

fof(fact_444_folding__one__idem_Osubset__idem,axiom,
    ! [B,A,F_1,F] :
      ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => ( ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,B),A))
           => hAPP_f124283079iple_a(F,A) = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,hAPP_f124283079iple_a(F,B)),hAPP_f124283079iple_a(F,A)) )
         <= B != bot_bo1181479936a_bool ) )
     <= hBOOL(finite950012314iple_a(F_1,F)) ) ).

fof(fact_46_Collect__empty__eq,axiom,
    ! [Pa] :
      ( bot_bot_fun_nat_bool = collect_nat(Pa)
    <=> ! [X_2] : ~ hBOOL(hAPP_nat_bool(Pa,X_2)) ) ).

fof(fact_266_theI,axiom,
    ! [Pa,A_1] :
      ( ( hBOOL(hAPP_H1421470952a_bool(Pa,hAPP_f124283079iple_a(the_Ho746640593iple_a,Pa)))
       <= ! [X_2] :
            ( hBOOL(hAPP_H1421470952a_bool(Pa,X_2))
           => A_1 = X_2 ) )
     <= hBOOL(hAPP_H1421470952a_bool(Pa,A_1)) ) ).

fof(fact_689_inf__bot__left,axiom,
    ! [X_1] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,bot_bo1181479936a_bool),X_1) = bot_bo1181479936a_bool ).

fof(fact_18_insertE,axiom,
    ! [A_1,Ba,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),A)))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A))
       <= Ba != A_1 ) ) ).

fof(fact_675_IntD2,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B))) ) ).

fof(fact_657_Int__insert__left,axiom,
    ! [B,A_1,C] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),C))
       => hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,B),C) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)),C) )
      & ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,B),C)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)),C)
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),C)) ) ) ).

fof(fact_179_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( Ba = hAPP_nat_nat(F_1,X_1)
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),image_nat_nat(F_1,A)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ) ).

fof(fact_509_Un__empty,axiom,
    ! [A,B] :
      ( bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)
    <=> ( bot_bot_fun_nat_bool = B
        & bot_bot_fun_nat_bool = A ) ) ).

fof(fact_492_sup__eq__bot__iff,axiom,
    ! [X_1,Y_7] :
      ( ( Y_7 = bot_bot_fun_nat_bool
        & X_1 = bot_bot_fun_nat_bool )
    <=> bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,X_1),Y_7) ) ).

fof(fact_102_insert__compr__raw,axiom,
    ! [X_2,Xa] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_2),Xa) = collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fdisj),hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),X_2))),hAPP_f921536533e_bool(hAPP_f1262649863e_bool(cOMBC_764456866l_bool,member1758697444_state),Xa))) ).

fof(fact_302_fold__graph_Osimps,axiom,
    ! [F_1,Z_2,A1,A2] :
      ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A1),A2))
    <=> ( ( A2 = Z_2
          & A1 = bot_bo1181479936a_bool )
        | ? [X_2,A_19,Y_11] :
            ( A1 = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_2),A_19)
            & ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A_19))
            & hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A_19),Y_11))
            & A2 = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_2),Y_11) ) ) ) ).

fof(fact_479_sup__least,axiom,
    ! [Z_6,Y_25,X_32] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_6),X_32))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,Y_25),Z_6)),X_32)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_25),X_32)) ) ).

fof(fact_126_bot__apply,axiom,
    ! [X_1] :
      ( hBOOL(hAPP_H513860823e_bool(bot_bo1055319631e_bool,X_1))
    <=> hBOOL(bot_bot_bool) ) ).

fof(fact_523_order__antisym__conv,axiom,
    ! [Y_7,X_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_7),X_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_7))
      <=> Y_7 = X_1 ) ) ).

fof(fact_265_fold1Set__nonempty,axiom,
    ! [F_1,A,X_1] :
      ( A != bot_bo1181479936a_bool
     <= hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,A),X_1)) ) ).

fof(fact_47_Collect__empty__eq,axiom,
    ! [Pa] :
      ( ! [X_2] : ~ hBOOL(hAPP_H1421470952a_bool(Pa,X_2))
    <=> bot_bo1181479936a_bool = collec268032053iple_a(Pa) ) ).

fof(fact_530_set__mp,axiom,
    ! [X_1,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) ) ).

fof(fact_598_subsetI,axiom,
    ! [B,A] :
      ( ! [X_2] :
          ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A))
         => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),B)) )
     => hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B)) ) ).

fof(fact_458_subset__empty,axiom,
    ! [A] :
      ( bot_bo1055319631e_bool = A
    <=> hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),bot_bo1055319631e_bool)) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | hBOOL(Q)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q)) ) ).

fof(fact_114_singleton__iff,axiom,
    ! [Ba,A_1] :
      ( A_1 = Ba
    <=> hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool))) ) ).

fof(fact_105_singleton__inject,axiom,
    ! [A_1,Ba] :
      ( Ba = A_1
     <= hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),bot_bo1055319631e_bool) ) ).

fof(fact_462_subset__insertI,axiom,
    ! [B,A_1] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,B),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B))) ).

fof(fact_288_fold__graph_OemptyI,axiom,
    ! [F_1,Z_2] : hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,bot_bo1181479936a_bool),Z_2)) ).

fof(fact_387_insert__Diff__single,axiom,
    ! [A_1,A] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool))) ).

fof(fact_270_evaln_OLocal,axiom,
    ! [Ca,S0_1,Y_27,A_1,N_3,S1_2] :
      ( hBOOL(evaln(local(Y_27,A_1,Ca),S0_1,N_3,hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S1_2),loc(Y_27)),getlocs(S0_1,Y_27))))
     <= hBOOL(evaln(Ca,hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S0_1),loc(Y_27)),hAPP_state_nat(A_1,S0_1)),N_3,S1_2)) ) ).

fof(help_fequal_2_1_fequal_000tc__Com__Ostate_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(fequal_state,X),Y))
      | X != Y ) ).

fof(fact_682_Int__empty__right,axiom,
    ! [A] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),bot_bo1181479936a_bool) = bot_bo1181479936a_bool ).

fof(fact_66_empty__def,axiom,
    bot_bo1055319631e_bool = collec727977250_state(hAPP_b1245957081e_bool(cOMBK_1079618832_state,fFalse)) ).

fof(fact_620_Sup__fin_Ounion__disjoint,axiom,
    ! [B,A] :
      ( ( ( ( bot_bot_fun_nat_bool != B
           => ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,hAPP_f22106695ol_nat(big_la43341705in_nat,A)),hAPP_f22106695ol_nat(big_la43341705in_nat,B)) = hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B))
             <= bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B) ) )
         <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,B)) )
       <= bot_bot_fun_nat_bool != A )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_431_folding__one_Oeq__fold_H,axiom,
    ! [X_1,A,F_1,F] :
      ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
         => hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)) = hAPP_f124283079iple_a(finite978536264iple_a(F_1,X_1),A) ) )
     <= hBOOL(finite1669978781iple_a(F_1,F)) ) ).

fof(fact_664_inf__Int__eq,axiom,
    ! [R_1,S,X_2] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,R_1),S)))
    <=> hBOOL(hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),R_1)),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),S)),X_2)) ) ).

fof(fact_130_hoare__derivs_OSkip,axiom,
    ! [Ga,Pa] : hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,skip,Pa)),bot_bo1181479936a_bool))) ).

fof(gsy_c_Finite__Set_Ofolding__one__idem_000tc__Hoare____Mirabelle____ddpglwnxwg__O_003,axiom,
    ! [B_1_1,B_2_1] : is_bool(finite506823037_state(B_1_1,B_2_1)) ).

fof(fact_63_empty__def,axiom,
    bot_bot_fun_nat_bool = collect_nat(hAPP_b1013836512t_bool(cOMBK_bool_nat,fFalse)) ).

fof(fact_128_bot__fun__def,axiom,
    ! [X_2] :
      ( hBOOL(bot_bot_bool)
    <=> hBOOL(hAPP_nat_bool(bot_bot_fun_nat_bool,X_2)) ) ).

fof(fact_25_emptyE,axiom,
    ! [A_1] : ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),bot_bo1055319631e_bool)) ).

fof(fact_280_evaln_OAssign,axiom,
    ! [X_35,A_1,S_4,N_3] : hBOOL(evaln(ass(X_35,A_1),S_4,N_3,hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S_4),X_35),hAPP_state_nat(A_1,S_4)))) ).

fof(fact_404_finite__empty__induct,axiom,
    ! [Pa,A] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
     => ( ( ! [A_7,A_19] :
              ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_7),A_19))
               => ( hBOOL(hAPP_f1760790145l_bool(Pa,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A_19),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_7),bot_bo1055319631e_bool))))
                 <= hBOOL(hAPP_f1760790145l_bool(Pa,A_19)) ) )
             <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A_19)) )
         => hBOOL(hAPP_f1760790145l_bool(Pa,bot_bo1055319631e_bool)) )
       <= hBOOL(hAPP_f1760790145l_bool(Pa,A)) ) ) ).

fof(fact_170_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
     => image_129517430iple_a(hAPP_H377435237iple_a(cOMBK_2022976521_state,Ca),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),bot_bo1181479936a_bool) ) ).

fof(fact_567_Un__insert__left,axiom,
    ! [A_1,B,C] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,B),C)) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)),C) ).

fof(fact_87_insert__absorb2,axiom,
    ! [X_1,A] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)) ).

fof(fact_605_finite__nat__set__iff__bounded__le,axiom,
    ! [N] :
      ( ? [M] :
        ! [X_2] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),N))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),M)) )
    <=> hBOOL(hAPP_f54304608l_bool(finite_finite_nat,N)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Ostate_000tc__Nat__Onat_000tc__Com__Ostate_U,axiom,
    ! [P,Q,R] : hAPP_nat_state(hAPP_s1892499976_state(P,R),Q) = hAPP_state_state(hAPP_n1547241352_state(hAPP_f1848060885_state(cOMBC_1777403949_state,P),Q),R) ).

fof(fact_310_finite__Collect__conjI,axiom,
    ! [Q_1,Pa] :
      ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(Pa)))
        | hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(Q_1))) )
     => hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),Pa)),Q_1)))) ) ).

fof(gsy_c_Natural_Oevaln,axiom,
    ! [B_1_1,B_2_1,B_3_1,B_4_1] : is_bool(evaln(B_1_1,B_2_1,B_3_1,B_4_1)) ).

fof(fact_253_com_Osimps_I2_J,axiom,
    ! [Loc_3,Fun_1,Com_1,Loc_2,Fun,Com] :
      ( ( is_loc(Loc_3)
        & is_loc(Loc_2) )
     => ( ( Com_1 = Com
          & Fun = Fun_1
          & Loc_2 = Loc_3 )
      <=> local(Loc_2,Fun,Com) = local(Loc_3,Fun_1,Com_1) ) ) ).

fof(fact_584_subset__singletonD,axiom,
    ! [A,X_1] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)))
     => ( bot_bo1181479936a_bool = A
        | A = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool) ) ) ).

fof(fact_536_UnI2,axiom,
    ! [A,Ca,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) ) ).

fof(fact_367_Diff__empty,axiom,
    ! [A] : A = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),bot_bot_fun_nat_bool) ).

fof(fact_676_IntD2,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Com__Ostate_U,axiom,
    ! [P,Q] :
      ( hAPP_state_bool(hAPP_b2019457360e_bool(cOMBK_bool_state,P),Q) = P
     <= is_bool(P) ) ).

fof(fact_493_sup__eq__bot__iff,axiom,
    ! [X_1,Y_7] :
      ( ( bot_bo1055319631e_bool = X_1
        & Y_7 = bot_bo1055319631e_bool )
    <=> hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,X_1),Y_7) = bot_bo1055319631e_bool ) ).

fof(fact_424_fold1__singleton__def,axiom,
    ! [A_1,G,F_1] :
      ( hAPP_f124283079iple_a(G,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)) = A_1
     <= G = finite1382394752iple_a(F_1) ) ).

fof(fact_248_folding__one_Osingleton,axiom,
    ! [X_1,F_1,F] :
      ( hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) = X_1
     <= hBOOL(finite988810631ne_nat(F_1,F)) ) ).

fof(fact_243_fold1Set__sing,axiom,
    ! [F_1,A_1,Ba] :
      ( A_1 = Ba
    <=> hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool)),Ba)) ) ).

fof(fact_14_conseq1,axiom,
    ! [Pa,Ga,P_2,Ca,Q_1] :
      ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(P_2,Ca,Q_1)),bot_bo1181479936a_bool)))
     => ( ! [Z_7,S_2] :
            ( hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(P_2,Z_7),S_2))
           <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Pa,Z_7),S_2)) )
       => hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool))) ) ) ).

fof(fact_607_Sup__fin_Oremove,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => ( ( hAPP_f22106695ol_nat(big_la43341705in_nat,A) = X_1
           <= hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) = bot_bot_fun_nat_bool )
          & ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) != bot_bot_fun_nat_bool
           => hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)))) = hAPP_f22106695ol_nat(big_la43341705in_nat,A) ) ) ) ) ).

fof(fact_680_Int__empty__right,axiom,
    ! [A] : bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),bot_bot_fun_nat_bool) ).

fof(fact_17_conseq12,axiom,
    ! [Q_1,Pa,Ga,P_2,Ca,Q_3] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(P_2,Ca,Q_3)),bot_bo1055319631e_bool)))
     => ( ! [Z_7,S_2] :
            ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Pa,Z_7),S_2))
           => ! [S_3] :
                ( ! [Z_8] :
                    ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_3,Z_8),S_3))
                   <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(P_2,Z_8),S_2)) )
               => hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_1,Z_7),S_3)) ) )
       => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool))) ) ) ).

fof(fact_400_folding__one__idem_Ohom__commute,axiom,
    ! [N,H,F_1,F] :
      ( ( ( ( hAPP_f22106695ol_nat(F,image_nat_nat(H,N)) = hAPP_nat_nat(H,hAPP_f22106695ol_nat(F,N))
           <= bot_bot_fun_nat_bool != N )
         <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,N)) )
       <= ! [X_2,Y_11] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,hAPP_nat_nat(H,X_2)),hAPP_nat_nat(H,Y_11)) = hAPP_nat_nat(H,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_2),Y_11)) )
     <= hBOOL(finite795500164em_nat(F_1,F)) ) ).

fof(fact_89_insert__Collect,axiom,
    ! [A_1,Pa] : collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fimplies),hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,fNot),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),A_1)))),Pa)) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),collect_nat(Pa)) ).

fof(fact_463_subset__insertI,axiom,
    ! [B,A_1] : hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,B),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B))) ).

fof(fact_612_Sup__fin_Oinsert,axiom,
    ! [X_1,A] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => ( hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),hAPP_f22106695ol_nat(big_la43341705in_nat,A))
         <= A != bot_bot_fun_nat_bool ) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_271_fold1Set_Ointros,axiom,
    ! [F_1,A_1,A,X_1] :
      ( hBOOL(hAPP_H513860823e_bool(finite1935632226_state(F_1,A_1,A),X_1))
     => ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A))
       => hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A)),X_1)) ) ) ).

fof(fact_449_UnCI,axiom,
    ! [A,Ca,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)))
     <= ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_I,axiom,
    ! [P,Q,R] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(hAPP_f450029403a_bool(cOMBC_314077933a_bool,P),Q),R) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(P,R),Q) ).

fof(fact_667_Int__Collect,axiom,
    ! [X_1,A,Pa] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
        & hBOOL(hAPP_H1421470952a_bool(Pa,X_1)) )
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),collec268032053iple_a(Pa)))) ) ).

fof(fact_103_singleton__inject,axiom,
    ! [A_1,Ba] :
      ( Ba = A_1
     <= hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),bot_bo1181479936a_bool) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool) ) ).

fof(fact_540_Un__iff,axiom,
    ! [Ca,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
        | hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B))) ) ).

fof(fact_670_Int__def,axiom,
    ! [A,B] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B) = collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),A))),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),B))) ).

fof(fact_210_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_2),image_194810223_a_nat(F_1,A)))
    <=> ? [X_2] :
          ( hAPP_H738206399_a_nat(F_1,X_2) = Z_2
          & hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A)) ) ) ).

fof(fact_24_emptyE,axiom,
    ! [A_1] : ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),bot_bo1181479936a_bool)) ).

fof(fact_427_folding__one_Oeq__fold,axiom,
    ! [A,F_1,F] :
      ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => hAPP_f22106695ol_nat(finite_fold1_nat(F_1),A) = hAPP_f22106695ol_nat(F,A) )
     <= hBOOL(finite988810631ne_nat(F_1,F)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc__019,axiom,
    ! [P,Q,R] : hAPP_f54304608l_bool(hAPP_f1246832597l_bool(hAPP_f1443436725l_bool(cOMBC_1245412066l_bool,P),Q),R) = hAPP_f1637334154l_bool(hAPP_f1951378235l_bool(P,R),Q) ).

fof(fact_455_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f1637334154l_bool(finite2012431853t_bool,collect_fun_nat_bool(hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,ord_le1568362934t_bool),A))))
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com___027,axiom,
    ! [P,Q,R] : hAPP_H513860823e_bool(hAPP_f921536533e_bool(hAPP_f1262649863e_bool(cOMBC_764456866l_bool,P),Q),R) = hAPP_f1760790145l_bool(hAPP_H248360617l_bool(P,R),Q) ).

fof(fact_341_finite__ne__induct,axiom,
    ! [Pa,F] :
      ( ( ( ! [X_2] : hBOOL(hAPP_f54304608l_bool(Pa,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),bot_bot_fun_nat_bool)))
         => ( ! [X_2,F_2] :
                ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F_2))
               => ( F_2 != bot_bot_fun_nat_bool
                 => ( ( hBOOL(hAPP_f54304608l_bool(Pa,F_2))
                     => hBOOL(hAPP_f54304608l_bool(Pa,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),F_2))) )
                   <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),F_2)) ) ) )
           => hBOOL(hAPP_f54304608l_bool(Pa,F)) ) )
       <= F != bot_bot_fun_nat_bool )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F)) ) ).

fof(fact_8_constant,axiom,
    ! [Ga,Pa,Ca,Q_1,C] :
      ( ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool)))
       <= hBOOL(C) )
     => hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(hAPP_b540892988e_bool(hAPP_f1824947087e_bool(cOMBC_41962815e_bool,hAPP_f340725611e_bool(hAPP_f1006724181e_bool(cOMBB_1348041619bool_a,cOMBC_231445413l_bool),hAPP_f1509969235l_bool(hAPP_f1178339559l_bool(cOMBB_1355796797bool_a,hAPP_f1561913689l_bool(cOMBB_188601460_state,fconj)),Pa))),C),Ca,Q_1)),bot_bo1181479936a_bool))) ) ).

fof(fact_460_rev__finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
       => hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,B)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Ostate_000tc__fun_Itc__Com__Ostate_Mtc__Com__Os,axiom,
    ! [P,Q,R] : hAPP_f746301080e_bool(hAPP_s286259371e_bool(P,R),Q) = hAPP_s1806633685e_bool(hAPP_f1838002347e_bool(hAPP_f1706273077e_bool(cOMBC_867582640e_bool,P),Q),R) ).

fof(fact_362_set__diff__eq,axiom,
    ! [A,B] : collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),A))),hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,fNot),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),B)))) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B) ).

fof(fact_543_pred__subset__eq,axiom,
    ! [R_1,S] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,R_1),S))
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),R_1)),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),S))) ) ).

fof(fact_207_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( ? [X_2] :
          ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),A))
          & Z_2 = hAPP_H563960305_state(F_1,X_2) )
    <=> hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Z_2),image_650584225_state(F_1,A))) ) ).

fof(fact_32_singleton__conv,axiom,
    ! [A_1] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool) = collect_nat(hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),A_1)) ).

fof(fact_660_Int__insert__right,axiom,
    ! [B,A_1,A] :
      ( ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) )
      & ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A))
       => hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) ) ) ).

fof(fact_610_Sup__fin_OF__eq,axiom,
    ! [A] :
      ( hAPP_f22106695ol_nat(finite_fold1_nat(semila972727038up_nat),A) = hAPP_f22106695ol_nat(big_la43341705in_nat,A)
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_236_image__insert,axiom,
    ! [F_1,A_1,B] : image_1604514514_state(F_1,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hAPP_H928324994_state(F_1,A_1)),image_1604514514_state(F_1,B)) ).

fof(help_COMBC_1_1_COMBC_000t__a_000tc__fun_Itc__Com__Ostate_Mtc__Com__Ostate_J_000t,axiom,
    ! [P,Q,R] : hAPP_a2036067514e_bool(hAPP_f100967412e_bool(hAPP_f1460451647e_bool(cOMBC_524597097e_bool,P),Q),R) = hAPP_f746301080e_bool(hAPP_a1224971408e_bool(P,R),Q) ).

fof(fact_290_evalc__elim__cases_I3_J,axiom,
    ! [Y_27,A_1,Ca,S_4,T_1] :
      ( ~ ! [S1_1] :
            ( hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S1_1),loc(Y_27)),getlocs(S_4,Y_27)) = T_1
           => ~ hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(Ca),hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S_4),loc(Y_27)),hAPP_state_nat(A_1,S_4))),S1_1)) )
     <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(local(Y_27,A_1,Ca)),S_4),T_1)) ) ).

fof(fact_16_conseq12,axiom,
    ! [Q_1,Pa,Ga,P_2,Ca,Q_3] :
      ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(P_2,Ca,Q_3)),bot_bo1181479936a_bool)))
     => ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,Q_1)),bot_bo1181479936a_bool)))
       <= ! [Z_7,S_2] :
            ( ! [S_3] :
                ( hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_1,Z_7),S_3))
               <= ! [Z_8] :
                    ( hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Q_3,Z_8),S_3))
                   <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(P_2,Z_8),S_2)) ) )
           <= hBOOL(hAPP_state_bool(hAPP_a2036067514e_bool(Pa,Z_7),S_2)) ) ) ) ).

fof(fact_263_fold1Set__nonempty,axiom,
    ! [F_1,A,X_1] :
      ( hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,A),X_1))
     => A != bot_bo1055319631e_bool ) ).

fof(fact_42_Collect__conv__if,axiom,
    ! [Pa,A_1] :
      ( ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool) = collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fconj),hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),A_1))),Pa))
       <= hBOOL(hAPP_H513860823e_bool(Pa,A_1)) )
      & ( bot_bo1055319631e_bool = collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fconj),hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),A_1))),Pa))
       <= ~ hBOOL(hAPP_H513860823e_bool(Pa,A_1)) ) ) ).

fof(fact_307_folding__one_Oinsert,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite774711482_state(F_1,F))
     => ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A))
       => ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
         => ( hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)) = hAPP_H563960305_state(hAPP_H521649881_state(F_1,X_1),hAPP_f2143211163_state(F,A))
           <= A != bot_bo1055319631e_bool ) ) ) ) ).

fof(fact_683_Int__empty__left,axiom,
    ! [B] : bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,bot_bot_fun_nat_bool),B) ).

fof(fact_502_sup__bot__left,axiom,
    ! [X_1] : X_1 = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,bot_bo1181479936a_bool),X_1) ).

fof(fact_663_inf__Int__eq,axiom,
    ! [R_1,S,X_2] :
      ( hBOOL(hAPP_H1421470952a_bool(hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),R_1)),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),S)),X_2))
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,R_1),S))) ) ).

fof(fact_638_inf__le1,axiom,
    ! [X_6,Y_4] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_6),Y_4)),X_6)) ).

fof(fact_434_folding__one__idem_Oeq__fold__idem_H,axiom,
    ! [A_1,A,F_1,F] :
      ( hBOOL(finite950012314iple_a(F_1,F))
     => ( hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A)) = hAPP_f124283079iple_a(finite978536264iple_a(F_1,A_1),A)
       <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Ostate_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_s58564346l_bool(P,R),Q) = hAPP_state_bool(hAPP_b2019457360e_bool(hAPP_f167292325e_bool(cOMBC_231445413l_bool,P),Q),R) ).

fof(fact_79_insert__iff,axiom,
    ! [A_1,Ba,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),A)))
    <=> ( A_1 = Ba
        | hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A)) ) ) ).

fof(fact_609_Sup__fin_Oin__idem,axiom,
    ! [X_1,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => hAPP_f22106695ol_nat(big_la43341705in_nat,A) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_1),hAPP_f22106695ol_nat(big_la43341705in_nat,A)) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(help_fequal_2_1_fequal_000tc__Nat__Onat_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(fequal_nat,X),Y))
      | Y != X ) ).

fof(fact_143_equals0I,axiom,
    ! [A] :
      ( ! [Y_11] : ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Y_11),A))
     => A = bot_bo1055319631e_bool ) ).

fof(fact_334_finite_Osimps,axiom,
    ! [A_1] :
      ( ( bot_bot_fun_nat_bool = A_1
        | ? [A_19,A_7] :
            ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A_19))
            & A_1 = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_7),A_19) ) )
    <=> hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A_1)) ) ).

fof(fact_135_triple_Oexhaust,axiom,
    ! [Y_7] :
      ~ ! [Fun1,Com_2,Fun2] : Y_7 != hoare_1760757500iple_a(Fun1,Com_2,Fun2) ).

fof(fact_464_subset__insertI,axiom,
    ! [B,A_1] : hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,B),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B))) ).

fof(fact_632_le__infI2,axiom,
    ! [A_3,B_2,X_10] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,A_3),B_2)),X_10))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_2),X_10)) ) ).

fof(fact_578_fold__sup__insert,axiom,
    ! [Ba,A_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => hAPP_f22106695ol_nat(finite_fold_nat_nat(semila972727038up_nat,Ba),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_1),hAPP_f22106695ol_nat(finite_fold_nat_nat(semila972727038up_nat,Ba),A)) ) ).

fof(fact_639_inf__sup__ord_I1_J,axiom,
    ! [X_5,Y_3] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_5),Y_3)),X_5)) ).

fof(fact_626_le__infE,axiom,
    ! [X_15,A_6,B_5] :
      ( ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_15),B_5))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_15),A_6)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_15),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,A_6),B_5))) ) ).

fof(fact_630_inf__absorb2,axiom,
    ! [Y_9,X_12] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_9),X_12))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_12),Y_9) = Y_9 ) ).

fof(fact_390_Diff__insert2,axiom,
    ! [A,A_1,B] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool))),B) ).

fof(fact_379_insert__Diff__if,axiom,
    ! [A,X_1,B] :
      ( ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),B)
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B)) )
      & ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B))
       => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),B) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_Mtc,hypothesis,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f540970102l_bool(B_1_1,B_2_1)) ).

fof(fact_552_bot__unique,axiom,
    ! [A_1] :
      ( ( hBOOL(A_1)
      <=> hBOOL(bot_bot_bool) )
    <=> hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(ord_less_eq_bool,A_1),bot_bot_bool)) ) ).

fof(fact_193_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( ( Ba = hAPP_H738206399_a_nat(F_1,X_1)
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),image_194810223_a_nat(F_1,A))) )
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_67_insert__absorb,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A))
     => hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A) = A ) ).

fof(fact_369_Diff__empty,axiom,
    ! [A] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),bot_bo1181479936a_bool) = A ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_T,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(fequal_fun_nat_bool,X),Y)) ) ).

fof(fact_160_Ass,axiom,
    ! [Ga,Pa,X_35,A_1] : hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(hAPP_f1838002347e_bool(hAPP_f1706273077e_bool(cOMBC_867582640e_bool,hAPP_f289738463e_bool(hAPP_f1151843515e_bool(cOMBB_1941618714_state,cOMBB_844853809_state),Pa)),hAPP_f871651461_state(hAPP_f851239890_state(cOMBS_777315357_state,hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,update),X_35)),A_1)),ass(X_35,A_1),Pa)),bot_bo1055319631e_bool))) ).

fof(fact_468_subset__insert,axiom,
    ! [B,X_1,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
      <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),B))) )
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_285_com__det,axiom,
    ! [U_1,C_2,S_1,T] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C_2),S_1),T))
     => ( T = U_1
       <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C_2),S_1),U_1)) ) ) ).

fof(fact_313_finite_OemptyI,axiom,
    hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,bot_bo1181479936a_bool)) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | hBOOL(P) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Hoare____Mirabel_009,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_H513860823e_bool(Q,R)) = hAPP_H513860823e_bool(hAPP_f921536533e_bool(hAPP_f1037965299e_bool(cOMBB_416661851_state,P),Q),R) ).

fof(fact_672_Int__iff,axiom,
    ! [Ca,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
        & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00,axiom,
    ! [P,Q] : P = hAPP_n178040171iple_a(hAPP_H1450464520iple_a(cOMBK_1505147640_a_nat,P),Q) ).

fof(fact_477_le__supE,axiom,
    ! [A_18,B_14,X_33] :
      ( ~ ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_18),X_33))
         => ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_14),X_33)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_18),B_14)),X_33)) ) ).

fof(fact_7_hoare__derivs_Oinsert,axiom,
    ! [Ts,Ga,T_1] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,T_1),bot_bo1055319631e_bool)))
     => ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),Ts))
       => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,T_1),Ts))) ) ) ).

fof(fact_696_Diff__triv,axiom,
    ! [A,B] :
      ( bot_bo1181479936a_bool = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B)
     => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B) = A ) ).

fof(fact_197_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),image_1782127643iple_a(F_1,A)))
       <= Ba = hAPP_n178040171iple_a(F_1,X_1) ) ) ).

fof(fact_272_fold1Set_Ointros,axiom,
    ! [F_1,A_1,A,X_1] :
      ( ( hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)),X_1))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) )
     <= hBOOL(hAPP_nat_bool(finite929467206at_nat(F_1,A_1,A),X_1)) ) ).

fof(fact_200_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,hAPP_H928324994_state(F_1,X_1)),image_1604514514_state(F_1,A)))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_165_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( image_nat_nat(hAPP_nat_fun_nat_nat(cOMBK_nat_nat,Ca),A) = bot_bot_fun_nat_bool
       <= bot_bot_fun_nat_bool = A )
      & ( image_nat_nat(hAPP_nat_fun_nat_nat(cOMBK_nat_nat,Ca),A) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ca),bot_bot_fun_nat_bool)
       <= bot_bot_fun_nat_bool != A ) ) ).

fof(fact_644_Int__insert__left__if1,axiom,
    ! [B,A_1,C] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),C))
     => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)),C) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,B),C)) ) ).

fof(fact_92_insert__compr,axiom,
    ! [A_1,B] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fdisj),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1))),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),B))) ).

fof(fact_202_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_H738206399_a_nat(F_1,X_1)),image_194810223_a_nat(F_1,A))) ) ).

fof(fact_218_image__is__empty,axiom,
    ! [F_1,A] :
      ( image_129517430iple_a(F_1,A) = bot_bo1181479936a_bool
    <=> A = bot_bo1055319631e_bool ) ).

fof(fact_136_Set_Oset__insert,axiom,
    ! [X_1,A] :
      ( ~ ! [B_15] :
            ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B_15))
           <= hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),B_15) = A )
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00,axiom,
    ! [P,Q,R] : hAPP_H1421470952a_bool(hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,P),Q),R) = hAPP_H1421470952a_bool(hAPP_H1190454433a_bool(P,R),Q) ).

fof(fact_413_comp__fun__idem__insert,axiom,
    hBOOL(finite419198954a_bool(insert873085594iple_a)) ).

fof(fact_372_empty__Diff,axiom,
    ! [A] : bot_bo1181479936a_bool = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,bot_bo1181479936a_bool),A) ).

fof(fact_595_finite__subset__induct,axiom,
    ! [Pa,A,F] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,F),A))
       => ( hBOOL(hAPP_f54304608l_bool(Pa,bot_bot_fun_nat_bool))
         => ( hBOOL(hAPP_f54304608l_bool(Pa,F))
           <= ! [A_7,F_2] :
                ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_7),A))
                 => ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_7),F_2))
                   => ( hBOOL(hAPP_f54304608l_bool(Pa,F_2))
                     => hBOOL(hAPP_f54304608l_bool(Pa,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_7),F_2))) ) ) )
               <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F_2)) ) ) ) ) ) ).

fof(fact_317_finite__Collect__disjI,axiom,
    ! [Pa,Q_1] :
      ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,collec268032053iple_a(Pa)))
        & hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,collec268032053iple_a(Q_1))) )
    <=> hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fdisj),Pa)),Q_1)))) ) ).

fof(fact_580_union__fold__insert,axiom,
    ! [B,A] :
      ( hAPP_f921536533e_bool(finite512563852e_bool(insert1835143293_state,B),A) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,A),B)
     <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) ) ).

fof(fact_516_xt1_I5_J,axiom,
    ! [Y_16,X_20] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_16),X_20))
     => ( X_20 = Y_16
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_20),Y_16)) ) ) ).

fof(fact_374_insert__Diff1,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
     => hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)),B) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B) ) ).

fof(fact_589_subset__insert__iff,axiom,
    ! [A,X_1,B] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),B)))
    <=> ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
         => hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool))),B)) )
        & ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
         => hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),B)) ) ) ) ).

fof(fact_389_Diff__insert2,axiom,
    ! [A,A_1,B] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool))),B) ).

fof(fact_214_com_Osimps_I24_J,axiom,
    ! [Vname,Fun_1,Com1,Com2] : ass(Vname,Fun_1) != semi(Com1,Com2) ).

fof(fact_216_com_Osimps_I8_J,axiom,
    ! [Vname_1,Fun] : skip != ass(Vname_1,Fun) ).

fof(fact_491_sup__eq__bot__iff,axiom,
    ! [X_1,Y_7] :
      ( ( hBOOL(bot_bot_bool)
      <=> hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(semila1168014441p_bool,X_1),Y_7)) )
    <=> ( ( hBOOL(X_1)
        <=> hBOOL(bot_bot_bool) )
        & ( hBOOL(bot_bot_bool)
        <=> hBOOL(Y_7) ) ) ) ).

fof(fact_392_Diff__insert,axiom,
    ! [A,A_1,B] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) ).

fof(fact_353_DiffI,axiom,
    ! [B,Ca,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B)))
       <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B)) ) ) ).

fof(fact_23_insertCI,axiom,
    ! [Ba,A_1,B] :
      ( ( A_1 = Ba
       <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),B)) )
     => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),B))) ) ).

fof(fact_490_inf__sup__ord_I3_J,axiom,
    ! [X_23,Y_19] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_23),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_23),Y_19))) ).

fof(fact_361_Diff__iff,axiom,
    ! [Ca,A,B] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B))
        & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A)) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B))) ) ).

fof(fact_154_nonempty__iff,axiom,
    ! [A] :
      ( ? [X_2,B_15] :
          ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),B_15))
          & hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),B_15) = A )
    <=> A != bot_bot_fun_nat_bool ) ).

fof(help_COMBI_1_1_COMBI_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_U,axiom,
    ! [P] : hAPP_H678412245iple_a(cOMBI_1218222237iple_a,P) = P ).

fof(fact_407_comp__fun__idem__remove,axiom,
    hBOOL(finite1317819144e_bool(hAPP_f531275309e_bool(hAPP_f1470644835e_bool(cOMBB_946224375_state,hAPP_f2049746453e_bool(cOMBC_872426556e_bool,minus_2076558538e_bool)),hAPP_f762269719e_bool(hAPP_f964290431e_bool(cOMBC_488258100e_bool,insert1835143293_state),bot_bo1055319631e_bool)))) ).

fof(fact_251_hoare__derivs_OLocal,axiom,
    ! [A_1,Ga,Pa,Ca,Q_1,X_35,S_5] :
      ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(hAPP_f769584981e_bool(hAPP_f1159960589e_bool(cOMBB_237455441bool_a,hAPP_f644196280e_bool(cOMBS_1378840469l_bool,hAPP_f1259673775l_bool(hAPP_f1561913689l_bool(cOMBB_188601460_state,fconj),hAPP_s1806633685e_bool(fequal_state,S_5)))),hAPP_f100967412e_bool(hAPP_f1460451647e_bool(cOMBC_524597097e_bool,hAPP_f1406200875e_bool(hAPP_f635443597e_bool(cOMBB_2139825703bool_a,cOMBB_844853809_state),Pa)),hAPP_f871651461_state(hAPP_f851239890_state(cOMBS_777315357_state,hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,update),loc(X_35))),A_1))),local(X_35,A_1,Ca),Q_1)),bot_bo1181479936a_bool)))
     <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(Pa,Ca,hAPP_f100967412e_bool(hAPP_f1460451647e_bool(cOMBC_524597097e_bool,hAPP_f1406200875e_bool(hAPP_f635443597e_bool(cOMBB_2139825703bool_a,cOMBB_844853809_state),Q_1)),hAPP_n1547241352_state(hAPP_f1848060885_state(cOMBC_1777403949_state,hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,update),loc(X_35))),getlocs(S_5,X_35))))),bot_bo1181479936a_bool))) ) ).

fof(fact_405_finite__empty__induct,axiom,
    ! [Pa,A] :
      ( ( hBOOL(hAPP_f540970102l_bool(Pa,A))
       => ( hBOOL(hAPP_f540970102l_bool(Pa,bot_bo1181479936a_bool))
         <= ! [A_7,A_19] :
              ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_7),A_19))
               => ( hBOOL(hAPP_f540970102l_bool(Pa,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A_19),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_7),bot_bo1181479936a_bool))))
                 <= hBOOL(hAPP_f540970102l_bool(Pa,A_19)) ) )
             <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A_19)) ) ) )
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ).

fof(fact_223_image__empty,axiom,
    ! [F_1] : image_194810223_a_nat(F_1,bot_bo1181479936a_bool) = bot_bot_fun_nat_bool ).

fof(fact_176_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( Ba = hAPP_H563960305_state(F_1,X_1)
     => ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
       => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),image_650584225_state(F_1,A))) ) ) ).

fof(fact_70_insertI2,axiom,
    ! [Ba,A_1,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),B)))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),B)) ) ).

fof(fact_646_Int__insert__right__if1,axiom,
    ! [B,A_1,A] :
      ( hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_017,axiom,
    ! [P,Q,R] : hAPP_b589554111l_bool(P,hAPP_H513860823e_bool(Q,R)) = hAPP_H226398757l_bool(hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,P),Q),R) ).

fof(fact_621_IntI,axiom,
    ! [B,Ca,A] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
       => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B))) )
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) ) ).

fof(fact_141_mk__disjoint__insert,axiom,
    ! [A_1,A] :
      ( ? [B_15] :
          ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),B_15))
          & hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B_15) = A )
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A)) ) ).

fof(fact_97_insertI1,axiom,
    ! [A_1,B] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B))) ).

fof(fact_171_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( image_nat_nat(hAPP_nat_fun_nat_nat(cOMBK_nat_nat,Ca),A) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ca),bot_bot_fun_nat_bool)
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_277_evalc_OSemi,axiom,
    ! [C1,S2,C0,S0,S1] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C0),S0),S1))
     => ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(C1),S1),S2))
       => hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(semi(C0,C1)),S0),S2)) ) ) ).

fof(fact_596_finite__subset__induct,axiom,
    ! [Pa,A,F] :
      ( hBOOL(hAPP_f1760790145l_bool(finite784854244_state,F))
     => ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,F),A))
       => ( ( hBOOL(hAPP_f1760790145l_bool(Pa,F))
           <= ! [A_7,F_2] :
                ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_7),A))
                 => ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_7),F_2))
                   => ( hBOOL(hAPP_f1760790145l_bool(Pa,F_2))
                     => hBOOL(hAPP_f1760790145l_bool(Pa,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_7),F_2))) ) ) )
               <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,F_2)) ) )
         <= hBOOL(hAPP_f1760790145l_bool(Pa,bot_bo1055319631e_bool)) ) ) ) ).

fof(fact_652_Int__insert__right__if0,axiom,
    ! [B,A_1,A] :
      ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A))
     => hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B) ) ).

fof(fact_44_equals0D,axiom,
    ! [A_1,A] :
      ( A = bot_bo1055319631e_bool
     => ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A)) ) ).

fof(fact_234_insert__image,axiom,
    ! [F_1,X_1,A] :
      ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hAPP_H678412245iple_a(F_1,X_1)),image_306007685iple_a(F_1,A)) = image_306007685iple_a(F_1,A)
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_514_linorder__le__cases,axiom,
    ! [X_22,Y_18] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_22),Y_18))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_18),X_22)) ) ).

fof(fact_378_insert__Diff__if,axiom,
    ! [A,X_1,B] :
      ( ( hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)),B) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),B)
       <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),B)) )
      & ( hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)),B) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),B))
       <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),B)) ) ) ).

fof(conj_0,conjecture,
    hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(g),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hoare_1760757500iple_a(hAPP_f762886889e_bool(cOMBK_1458035955bool_a,hAPP_b2019457360e_bool(cOMBK_bool_state,fFalse)),c,hAPP_f762886889e_bool(hAPP_f1261923407e_bool(cOMBC_892787026e_bool,hAPP_f963367678e_bool(hAPP_f375255701e_bool(cOMBB_145932198bool_a,cOMBS_1378840469l_bool),hAPP_f1509969235l_bool(hAPP_f1178339559l_bool(cOMBB_1355796797bool_a,hAPP_f1561913689l_bool(cOMBB_188601460_state,fconj)),p))),hAPP_f1759915619e_bool(hAPP_f2073279419e_bool(cOMBB_160679318_state,fNot),b)))),bot_bo1181479936a_bool))) ).

fof(fact_273_fold1Set_Ointros,axiom,
    ! [F_1,A_1,A,X_1] :
      ( ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A))
       => hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A)),X_1)) )
     <= hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,A_1,A),X_1)) ) ).

fof(fact_535_UnI2,axiom,
    ! [A,Ca,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
     => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B))) ) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_77_insert__code,axiom,
    ! [Y_7,A,X_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Y_7),A),X_1))
    <=> ( hBOOL(hAPP_nat_bool(A,X_1))
        | Y_7 = X_1 ) ) ).

fof(fact_238_image__insert,axiom,
    ! [F_1,A_1,B] : image_129517430iple_a(F_1,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hAPP_H1600811558iple_a(F_1,A_1)),image_129517430iple_a(F_1,B)) ).

fof(fact_688_inf__bot__left,axiom,
    ! [X_1] : bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,bot_bo1055319631e_bool),X_1) ).

fof(fact_573_insert__def,axiom,
    ! [A_1,B] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,collec727977250_state(hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),A_1))),B) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B) ).

fof(fact_528_Collect__disj__eq,axiom,
    ! [Pa,Q_1] : collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fdisj),Pa)),Q_1)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,collect_nat(Pa)),collect_nat(Q_1)) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_I_026,axiom,
    ! [P,Q,R] : hAPP_f1760790145l_bool(P,hAPP_H1645666623e_bool(Q,R)) = hAPP_H513860823e_bool(hAPP_f1456107715e_bool(hAPP_f1548785833e_bool(cOMBB_1653402815_state,P),Q),R) ).

fof(fact_346_folding__one_Oremove,axiom,
    ! [X_1,A,F_1,F] :
      ( ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
         => ( ( hAPP_H563960305_state(hAPP_H521649881_state(F_1,X_1),hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)))) = hAPP_f2143211163_state(F,A)
             <= hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)) != bot_bo1055319631e_bool )
            & ( hAPP_f2143211163_state(F,A) = X_1
             <= bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)) ) ) )
       <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) )
     <= hBOOL(finite774711482_state(F_1,F)) ) ).

fof(fact_19_insertE,axiom,
    ! [A_1,Ba,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),A)))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A))
       <= A_1 != Ba ) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00,axiom,
    ! [P,Q,R] : hAPP_H1421470952a_bool(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,P),Q),R) = hAPP_bool_bool(hAPP_H1017515220l_bool(P,R),hAPP_H1421470952a_bool(Q,R)) ).

fof(fact_613_Sup__fin_Osubset__idem,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => ( ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,B),A))
         => hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,hAPP_f22106695ol_nat(big_la43341705in_nat,B)),hAPP_f22106695ol_nat(big_la43341705in_nat,A)) = hAPP_f22106695ol_nat(big_la43341705in_nat,A) )
       <= bot_bot_fun_nat_bool != B ) ) ).

fof(gsy_c_Finite__Set_Ocomp__fun__commute_000tc__Hoare____Mirabelle____ddpglwnxwg__O,axiom,
    ! [B_1_1] : is_bool(finite1200705745iple_a(B_1_1)) ).

fof(fact_188_com_Osimps_I1_J,axiom,
    ! [Vname,Fun_1,Vname_1,Fun] :
      ( ( is_vname(Vname)
        & is_vname(Vname_1) )
     => ( ( Vname = Vname_1
          & Fun_1 = Fun )
      <=> ass(Vname,Fun_1) = ass(Vname_1,Fun) ) ) ).

fof(fact_576_insert__is__Un,axiom,
    ! [A_1,A] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila447562797e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool)),A) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A) ).

fof(fact_264_fold1Set__nonempty,axiom,
    ! [F_1,A,X_1] :
      ( A != bot_bot_fun_nat_bool
     <= hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,A),X_1)) ) ).

fof(fact_655_insert__inter__insert,axiom,
    ! [A_1,A,B] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),B)) = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A)),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B)) ).

fof(fact_383_Diff__insert__absorb,axiom,
    ! [X_1,A] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) = A ) ).

fof(fact_394_Diff__insert,axiom,
    ! [A,A_1,B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B)),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)) ).

fof(fact_269_evalc_OLocal,axiom,
    ! [Ca,S0_1,Y_27,A_1,S1_2] :
      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(local(Y_27,A_1,Ca)),S0_1),hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S1_2),loc(Y_27)),getlocs(S0_1,Y_27))))
     <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(Ca),hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S0_1),loc(Y_27)),hAPP_state_nat(A_1,S0_1))),S1_2)) ) ).

fof(fact_260_empty__fold1SetE,axiom,
    ! [F_1,X_1] : ~ hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,bot_bo1055319631e_bool),X_1)) ).

fof(fact_351_DiffE,axiom,
    ! [Ca,A,B] :
      ( ~ ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
         <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) )
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B))) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_I_032,axiom,
    ! [P,Q,R] : hAPP_H1641355846a_bool(hAPP_f485051996a_bool(hAPP_f2085120383a_bool(cOMBB_2080540641iple_a,P),Q),R) = hAPP_f1026156344a_bool(P,hAPP_H1190454433a_bool(Q,R)) ).

fof(fact_694_Diff__triv,axiom,
    ! [A,B] :
      ( A = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)
     <= hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B) = bot_bot_fun_nat_bool ) ).

fof(fact_556_bot__unique,axiom,
    ! [A_1] :
      ( bot_bot_nat = A_1
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_1),bot_bot_nat)) ) ).

fof(fact_604_flat__lub__def,axiom,
    ! [A,Ba] :
      ( ( hAPP_f2143211163_state(the_Ho10452358_state,hAPP_f921536533e_bool(hAPP_f1262649863e_bool(cOMBC_764456866l_bool,member1758697444_state),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),bot_bo1055319631e_bool)))) = hAPP_f2143211163_state(partia415982977_state(Ba),A)
       <= ~ hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),bot_bo1055319631e_bool))) )
      & ( hAPP_f2143211163_state(partia415982977_state(Ba),A) = Ba
       <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),bot_bo1055319631e_bool))) ) ) ).

fof(fact_430_folding__one_Oeq__fold_H,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite774711482_state(F_1,F))
     => ( ( ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
         => hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)) = hAPP_f2143211163_state(finite202520804_state(F_1,X_1),A) )
       <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) ) ) ).

fof(fact_221_image__is__empty,axiom,
    ! [F_1,A] :
      ( image_194810223_a_nat(F_1,A) = bot_bot_fun_nat_bool
    <=> bot_bo1181479936a_bool = A ) ).

fof(fact_220_image__is__empty,axiom,
    ! [F_1,A] :
      ( bot_bo1181479936a_bool = A
    <=> bot_bo1055319631e_bool = image_1604514514_state(F_1,A) ) ).

fof(fact_541_Un__def,axiom,
    ! [A,B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fdisj),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),A))),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),B))) ).

fof(fact_428_folding__one_Oeq__fold,axiom,
    ! [A,F_1,F] :
      ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => hAPP_f124283079iple_a(finite1382394752iple_a(F_1),A) = hAPP_f124283079iple_a(F,A) )
     <= hBOOL(finite1669978781iple_a(F_1,F)) ) ).

fof(fact_635_le__iff__inf,axiom,
    ! [X_1,Y_7] :
      ( X_1 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_1),Y_7)
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_7)) ) ).

fof(fact_466_insert__subset,axiom,
    ! [X_1,A,B] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)),B))
    <=> ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,A),B))
        & hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),B)) ) ) ).

fof(fact_252_vname_Osimps_I2_J,axiom,
    ! [Loc_3,Loc_2] :
      ( ( is_loc(Loc_3)
        & is_loc(Loc_2) )
     => ( loc(Loc_2) = loc(Loc_3)
      <=> Loc_3 = Loc_2 ) ) ).

fof(gsy_c_hAPP_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com__Ostate_J_0,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_H513860823e_bool(B_1_1,B_2_1)) ).

fof(fact_1_empty,axiom,
    ! [Ga] : hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),bot_bo1055319631e_bool)) ).

fof(fact_120_empty__not__insert,axiom,
    ! [A_1,A] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A) != bot_bo1055319631e_bool ).

fof(fact_237_image__insert,axiom,
    ! [F_1,A_1,B] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,hAPP_H738206399_a_nat(F_1,A_1)),image_194810223_a_nat(F_1,B)) = image_194810223_a_nat(F_1,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo,axiom,
    ! [P,Q,R] : hAPP_n1006566506l_bool(hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,P),Q),R) = hAPP_b589554111l_bool(P,hAPP_nat_bool(Q,R)) ).

fof(fact_205_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,hAPP_H1600811558iple_a(F_1,X_1)),image_129517430iple_a(F_1,A)))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Ostate_000tc__Com__Ostate_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_state_bool(hAPP_s1806633685e_bool(hAPP_f817621513e_bool(cOMBC_2027030106e_bool,P),Q),R) = hAPP_state_bool(hAPP_s1806633685e_bool(P,R),Q) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc__018,axiom,
    ! [P,Q,R] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(P,R),Q) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(hAPP_f1311642927t_bool(cOMBC_646315179t_bool,P),Q),R) ).

fof(fact_513_finite__UnI,axiom,
    ! [Ga,F] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F))
     => ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,F),Ga)))
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,Ga)) ) ) ).

fof(fact_614_Sup__fin_Ounion__idem,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,B))
         => ( bot_bot_fun_nat_bool != B
           => hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,hAPP_f22106695ol_nat(big_la43341705in_nat,A)),hAPP_f22106695ol_nat(big_la43341705in_nat,B)) = hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)) ) )
       <= bot_bot_fun_nat_bool != A ) ) ).

fof(fact_301_fold1Set_Osimps,axiom,
    ! [F_1,A1,A2] :
      ( hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,A1),A2))
    <=> ? [A_7,A_19,X_2] :
          ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_7),A_19))
          & hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,A_7,A_19),X_2))
          & A2 = X_2
          & hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_7),A_19) = A1 ) ) ).

fof(fact_22_insertCI,axiom,
    ! [Ba,A_1,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),B)))
     <= ( A_1 = Ba
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),B)) ) ) ).

fof(fact_380_insert__Diff,axiom,
    ! [A_1,A] :
      ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool))) = A
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) ) ).

fof(fact_439_minus__fold__remove,axiom,
    ! [B,A] :
      ( hAPP_f1591852335a_bool(finite1979045230a_bool(hAPP_f485051996a_bool(hAPP_f2085120383a_bool(cOMBB_2080540641iple_a,hAPP_f450029403a_bool(cOMBC_314077933a_bool,minus_469558085a_bool)),hAPP_f1665407592a_bool(hAPP_f549683569a_bool(cOMBC_708118077a_bool,insert873085594iple_a),bot_bo1181479936a_bool)),B),A) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,B),A)
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ).

fof(fact_448_UnCI,axiom,
    ! [A,Ca,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B)))
     <= ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
       => hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) ) ) ).

fof(gsy_c_Finite__Set_Ofolding__one__idem_000tc__Nat__Onat,axiom,
    ! [B_1_1,B_2_1] : is_bool(finite795500164em_nat(B_1_1,B_2_1)) ).

fof(fact_172_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ca),bot_bot_fun_nat_bool) = image_194810223_a_nat(hAPP_n1800114674_a_nat(cOMBK_944981412iple_a,Ca),A)
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ).

fof(fact_187_image__ident,axiom,
    ! [Y_27] : image_306007685iple_a(cOMBI_1218222237iple_a,Y_27) = Y_27 ).

fof(fact_247_folding__one_Osingleton,axiom,
    ! [X_1,F_1,F] :
      ( X_1 = hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool))
     <= hBOOL(finite774711482_state(F_1,F)) ) ).

fof(fact_597_finite__subset__induct,axiom,
    ! [Pa,A,F] :
      ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,F))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,F),A))
       => ( ( ! [A_7,F_2] :
                ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,F_2))
               => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_7),A))
                 => ( ( hBOOL(hAPP_f540970102l_bool(Pa,F_2))
                     => hBOOL(hAPP_f540970102l_bool(Pa,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_7),F_2))) )
                   <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_7),F_2)) ) ) )
           => hBOOL(hAPP_f540970102l_bool(Pa,F)) )
         <= hBOOL(hAPP_f540970102l_bool(Pa,bot_bo1181479936a_bool)) ) ) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_bool_bool(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(fact_382_insert__Diff,axiom,
    ! [A_1,A] :
      ( A = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A)) ) ).

fof(fact_465_insert__subset,axiom,
    ! [X_1,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
        & hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)),B)) ) ).

fof(fact_39_Collect__conv__if,axiom,
    ! [Pa,A_1] :
      ( ( collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1))),Pa)) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)
       <= hBOOL(hAPP_H1421470952a_bool(Pa,A_1)) )
      & ( ~ hBOOL(hAPP_H1421470952a_bool(Pa,A_1))
       => collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),A_1))),Pa)) = bot_bo1181479936a_bool ) ) ).

fof(fact_450_UnE,axiom,
    ! [Ca,A,B] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B))
       <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A)) )
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),B))) ) ).

fof(fact_338_folding__one__idem_Oinsert__idem,axiom,
    ! [X_1,A,F_1,F] :
      ( ( ( A != bot_bot_fun_nat_bool
         => hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_1),hAPP_f22106695ol_nat(F,A)) = hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) )
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= hBOOL(finite795500164em_nat(F_1,F)) ) ).

fof(fact_399_folding__one__idem_Oin__idem,axiom,
    ! [X_1,A,F_1,F] :
      ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
         => hAPP_f22106695ol_nat(F,A) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_1),hAPP_f22106695ol_nat(F,A)) ) )
     <= hBOOL(finite795500164em_nat(F_1,F)) ) ).

fof(fact_215_com_Osimps_I25_J,axiom,
    ! [Com1,Com2,Vname,Fun_1] : semi(Com1,Com2) != ass(Vname,Fun_1) ).

fof(fact_206_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,hAPP_n178040171iple_a(F_1,X_1)),image_1782127643iple_a(F_1,A)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_107_singletonE,axiom,
    ! [Ba,A_1] :
      ( Ba = A_1
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool))) ) ).

fof(gsy_c_Orderings_Obot__class_Obot_000tc__HOL__Obool,axiom,
    is_bool(bot_bot_bool) ).

fof(fact_104_singleton__inject,axiom,
    ! [A_1,Ba] :
      ( A_1 = Ba
     <= hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),bot_bot_fun_nat_bool) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Nat__Onat_U,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => P = hAPP_nat_bool(hAPP_b1013836512t_bool(cOMBK_bool_nat,P),Q) ) ).

fof(fact_168_image__constant,axiom,
    ! [Ca,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => image_1782127643iple_a(hAPP_H1450464520iple_a(cOMBK_1505147640_a_nat,Ca),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),bot_bo1181479936a_bool) ) ).

fof(fact_347_folding__one_Oremove,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite1669978781iple_a(F_1,F))
     => ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
         => ( ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)) != bot_bo1181479936a_bool
             => hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)))) = hAPP_f124283079iple_a(F,A) )
            & ( X_1 = hAPP_f124283079iple_a(F,A)
             <= bot_bo1181479936a_bool = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)) ) ) ) ) ) ).

fof(fact_358_DiffD1,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B))) ) ).

fof(fact_402_folding__one__idem_Ohom__commute,axiom,
    ! [N,H,F_1,F] :
      ( hBOOL(finite950012314iple_a(F_1,F))
     => ( ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,N))
         => ( hAPP_H678412245iple_a(H,hAPP_f124283079iple_a(F,N)) = hAPP_f124283079iple_a(F,image_306007685iple_a(H,N))
           <= bot_bo1181479936a_bool != N ) )
       <= ! [X_2,Y_11] : hAPP_H678412245iple_a(H,hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_2),Y_11)) = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,hAPP_H678412245iple_a(H,X_2)),hAPP_H678412245iple_a(H,Y_11)) ) ) ).

fof(fact_568_weaken,axiom,
    ! [Ts,Ga,Ts_1] :
      ( ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),Ts))
       <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,Ts),Ts_1)) )
     <= hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),Ts_1)) ) ).

fof(fact_339_folding__one__idem_Oinsert__idem,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite506823037_state(F_1,F))
     => ( ( hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)) = hAPP_H563960305_state(hAPP_H521649881_state(F_1,X_1),hAPP_f2143211163_state(F,A))
         <= A != bot_bo1055319631e_bool )
       <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) ) ) ).

fof(fact_80_insert__iff,axiom,
    ! [A_1,Ba,A] :
      ( ( Ba = A_1
        | hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),A))) ) ).

fof(fact_608_Sup__fin_Osingleton,axiom,
    ! [X_1] : hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) = X_1 ).

fof(fact_291_evaln__elim__cases_I3_J,axiom,
    ! [Y_27,A_1,Ca,S_4,N_3,T_1] :
      ( ~ ! [S1_1] :
            ( ~ hBOOL(evaln(Ca,hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S_4),loc(Y_27)),hAPP_state_nat(A_1,S_4)),N_3,S1_1))
           <= T_1 = hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S1_1),loc(Y_27)),getlocs(S_4,Y_27)) )
     <= hBOOL(evaln(local(Y_27,A_1,Ca),S_4,N_3,T_1)) ) ).

fof(fact_631_inf__absorb1,axiom,
    ! [X_11,Y_8] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_11),Y_8))
     => X_11 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_11),Y_8) ) ).

fof(fact_308_folding__one_Oinsert,axiom,
    ! [X_1,A,F_1,F] :
      ( ( ( ( hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),hAPP_f124283079iple_a(F,A)) = hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A))
           <= A != bot_bo1181479936a_bool )
         <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) )
       <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) )
     <= hBOOL(finite1669978781iple_a(F_1,F)) ) ).

fof(fact_245_fold1Set__sing,axiom,
    ! [F_1,A_1,Ba] :
      ( hBOOL(hAPP_H1421470952a_bool(finite1537818352iple_a(F_1,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool)),Ba))
    <=> Ba = A_1 ) ).

fof(fact_629_le__infI,axiom,
    ! [B_3,X_13,A_4] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_13),B_3))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_13),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,A_4),B_3))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_13),A_4)) ) ).

fof(fact_146_conseq,axiom,
    ! [Q_1,Ga,Ca,Pa] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool)))
     <= ! [Z_7,S_2] :
          ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Pa,Z_7),S_2))
         => ? [P_1,Q_2] :
              ( ! [S_3] :
                  ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_1,Z_7),S_3))
                 <= ! [Z_8] :
                      ( hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(P_1,Z_8),S_2))
                     => hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Q_2,Z_8),S_3)) ) )
              & hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(P_1,Ca,Q_2)),bot_bo1055319631e_bool))) ) ) ) ).

fof(gsy_c_HOL_Oundefined_000tc__Com__Oloc,axiom,
    is_loc(undefined_loc(loc_1)) ).

fof(fact_547_bot__least,axiom,
    ! [A_1] : hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(ord_less_eq_bool,bot_bot_bool),A_1)) ).

fof(fact_255_com_Osimps_I35_J,axiom,
    ! [Com1,Com2,Loc_3,Fun_1,Com_1] : semi(Com1,Com2) != local(Loc_3,Fun_1,Com_1) ).

fof(fact_433_folding__one__idem_Oeq__fold__idem_H,axiom,
    ! [A_1,A,F_1,F] :
      ( ( hAPP_f2143211163_state(finite202520804_state(F_1,A_1),A) = hAPP_f2143211163_state(F,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),A))
       <= hBOOL(hAPP_f1760790145l_bool(finite784854244_state,A)) )
     <= hBOOL(finite506823037_state(F_1,F)) ) ).

fof(fact_261_empty__fold1SetE,axiom,
    ! [F_1,X_1] : ~ hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,bot_bot_fun_nat_bool),X_1)) ).

fof(fact_418_fold1__eq__fold,axiom,
    ! [A_1,A] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A))
       => hAPP_f22106695ol_nat(finite_fold1_nat(times_times_nat),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)) = hAPP_f22106695ol_nat(finite_fold_nat_nat(times_times_nat,A_1),A) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_35_Collect__conv__if2,axiom,
    ! [Pa,A_1] :
      ( ( collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_H1190454433a_bool(fequal879838495iple_a,A_1))),Pa)) = bot_bo1181479936a_bool
       <= ~ hBOOL(hAPP_H1421470952a_bool(Pa,A_1)) )
      & ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_H1190454433a_bool(fequal879838495iple_a,A_1))),Pa))
       <= hBOOL(hAPP_H1421470952a_bool(Pa,A_1)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc_,axiom,
    ! [P,Q,R] : hAPP_f1730770594t_bool(P,hAPP_n1699378549t_bool(Q,R)) = hAPP_n1512601776t_bool(hAPP_f10625010t_bool(hAPP_f1115950719t_bool(cOMBB_1654519265ol_nat,P),Q),R) ).

fof(fact_553_bot__unique,axiom,
    ! [A_1] :
      ( bot_bot_fun_nat_bool = A_1
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A_1),bot_bot_fun_nat_bool)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_I,axiom,
    ! [P,Q,R] : hAPP_H1421470952a_bool(hAPP_f772297704a_bool(hAPP_f390613447a_bool(cOMBB_1501709507iple_a,P),Q),R) = hAPP_f540970102l_bool(P,hAPP_H1190454433a_bool(Q,R)) ).

fof(fact_249_folding__one_Osingleton,axiom,
    ! [X_1,F_1,F] :
      ( hBOOL(finite1669978781iple_a(F_1,F))
     => X_1 = hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),bot_bo1181479936a_bool)) ) ).

fof(fact_408_comp__fun__idem__remove,axiom,
    hBOOL(finite419198954a_bool(hAPP_f485051996a_bool(hAPP_f2085120383a_bool(cOMBB_2080540641iple_a,hAPP_f450029403a_bool(cOMBC_314077933a_bool,minus_469558085a_bool)),hAPP_f1665407592a_bool(hAPP_f549683569a_bool(cOMBC_708118077a_bool,insert873085594iple_a),bot_bo1181479936a_bool)))) ).

fof(fact_37_Collect__conv__if2,axiom,
    ! [Pa,A_1] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(Pa,A_1))
       => bot_bo1701429464l_bool = collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fconj),hAPP_f103356543l_bool(fequal_fun_nat_bool,A_1))),Pa)) )
      & ( hBOOL(hAPP_f54304608l_bool(Pa,A_1))
       => hAPP_f1246832597l_bool(hAPP_f633452666l_bool(insert_fun_nat_bool,A_1),bot_bo1701429464l_bool) = collect_fun_nat_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,fconj),hAPP_f103356543l_bool(fequal_fun_nat_bool,A_1))),Pa)) ) ) ).

fof(fact_61_all__not__in__conv,axiom,
    ! [A] :
      ( ! [X_2] : ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),A))
    <=> bot_bo1055319631e_bool = A ) ).

fof(fact_119_empty__not__insert,axiom,
    ! [A_1,A] : bot_bot_fun_nat_bool != hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A) ).

fof(fact_2_triple_Oinject,axiom,
    ! [Fun1_2,Com_1,Fun2_2,Fun1_1,Com,Fun2_1] :
      ( ( Fun1_2 = Fun1_1
        & Fun2_2 = Fun2_1
        & Com_1 = Com )
    <=> hoare_1575745797_state(Fun1_2,Com_1,Fun2_2) = hoare_1575745797_state(Fun1_1,Com,Fun2_1) ) ).

fof(fact_201_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_nat_nat(F_1,X_1)),image_nat_nat(F_1,A)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_594_fold__sup__le__sup,axiom,
    ! [Ca,Ba,A] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_f22106695ol_nat(finite_fold_nat_nat(semila972727038up_nat,Ca),A)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,Ba),Ca)))
       <= ! [X_2] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),Ba))
           <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A)) ) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_209_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_2),image_nat_nat(F_1,A)))
    <=> ? [X_2] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A))
          & Z_2 = hAPP_nat_nat(F_1,X_2) ) ) ).

fof(fact_451_UnE,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B)))
     => ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B)) ) ) ).

fof(fact_30_singleton__conv2,axiom,
    ! [A_1] : collec727977250_state(hAPP_H1645666623e_bool(fequal1531560888_state,A_1)) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool) ).

fof(fact_544_pred__subset__eq,axiom,
    ! [R_1,S] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),R_1)),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),S)))
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,R_1),S)) ) ).

fof(fact_242_If__def,axiom,
    ! [X_1,Y_7,Pa] :
      ( ( ~ hBOOL(Pa)
       => Y_7 = hAPP_f124283079iple_a(the_Ho746640593iple_a,hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,hAPP_b589554111l_bool(fimplies,Pa)),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),X_1)))),hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,hAPP_b589554111l_bool(fimplies,hAPP_bool_bool(fNot,Pa))),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),Y_7)))) )
      & ( hAPP_f124283079iple_a(the_Ho746640593iple_a,hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,hAPP_b589554111l_bool(fimplies,Pa)),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),X_1)))),hAPP_f1591852335a_bool(hAPP_f34030599a_bool(cOMBB_1799513916iple_a,hAPP_b589554111l_bool(fimplies,hAPP_bool_bool(fNot,Pa))),hAPP_H1190454433a_bool(hAPP_f1371755681a_bool(cOMBC_839220826a_bool,fequal879838495iple_a),Y_7)))) = X_1
       <= hBOOL(Pa) ) ) ).

fof(fact_167_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( bot_bo1181479936a_bool = A
       => image_306007685iple_a(hAPP_H1455657330iple_a(cOMBK_1824972302iple_a,Ca),A) = bot_bo1181479936a_bool )
      & ( hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ca),bot_bo1181479936a_bool) = image_306007685iple_a(hAPP_H1455657330iple_a(cOMBK_1824972302iple_a,Ca),A)
       <= bot_bo1181479936a_bool != A ) ) ).

fof(fact_163_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( A = bot_bo1181479936a_bool
       => bot_bot_fun_nat_bool = image_194810223_a_nat(hAPP_n1800114674_a_nat(cOMBK_944981412iple_a,Ca),A) )
      & ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ca),bot_bot_fun_nat_bool) = image_194810223_a_nat(hAPP_n1800114674_a_nat(cOMBK_944981412iple_a,Ca),A)
       <= A != bot_bo1181479936a_bool ) ) ).

fof(fact_698_Diff__disjoint,axiom,
    ! [A,B] : hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,B),A)) = bot_bo1055319631e_bool ).

fof(fact_211_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( ? [X_2] :
          ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A))
          & Z_2 = hAPP_H678412245iple_a(F_1,X_2) )
    <=> hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Z_2),image_306007685iple_a(F_1,A))) ) ).

fof(fact_627_inf__mono,axiom,
    ! [B_4,D,A_5,C_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_5),C_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_4),D))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,A_5),B_4)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,C_1),D))) ) ) ).

fof(fact_294_insert__fold1SetE,axiom,
    ! [F_1,A_1,X_35,X_1] :
      ( hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),X_35)),X_1))
     => ~ ! [A_7,A_19] :
            ( ( hBOOL(hAPP_nat_bool(finite929467206at_nat(F_1,A_7,A_19),X_1))
             => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_7),A_19)) )
           <= hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),X_35) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_7),A_19) ) ) ).

fof(fact_62_all__not__in__conv,axiom,
    ! [A] :
      ( A = bot_bot_fun_nat_bool
    <=> ! [X_2] : ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A)) ) ).

fof(fact_636_inf__le2,axiom,
    ! [X_8,Y_6] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,X_8),Y_6)),Y_6)) ).

fof(fact_166_image__constant__conv,axiom,
    ! [Ca,A] :
      ( ( bot_bo1055319631e_bool != A
       => image_650584225_state(hAPP_H521649881_state(cOMBK_690957994_state,Ca),A) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ca),bot_bo1055319631e_bool) )
      & ( bot_bo1055319631e_bool = image_650584225_state(hAPP_H521649881_state(cOMBK_690957994_state,Ca),A)
       <= bot_bo1055319631e_bool = A ) ) ).

fof(fact_43_equals0D,axiom,
    ! [A_1,A] :
      ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A))
     <= A = bot_bo1181479936a_bool ) ).

fof(fact_364_Diff__cancel,axiom,
    ! [A] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),A) = bot_bot_fun_nat_bool ).

fof(fact_370_empty__Diff,axiom,
    ! [A] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,bot_bot_fun_nat_bool),A) = bot_bot_fun_nat_bool ).

fof(fact_674_IntD1,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B))) ) ).

fof(fact_106_singletonE,axiom,
    ! [Ba,A_1] :
      ( Ba = A_1
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool))) ) ).

fof(fact_20_insertE,axiom,
    ! [A_1,Ba,A] :
      ( ( Ba != A_1
       => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),A)) )
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Ba),A))) ) ).

fof(fact_127_bot__fun__def,axiom,
    ! [X_2] :
      ( hBOOL(bot_bot_bool)
    <=> hBOOL(hAPP_H1421470952a_bool(bot_bo1181479936a_bool,X_2)) ) ).

fof(fact_475_insert__mono,axiom,
    ! [A_1,C,D_2] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),C)),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),D_2)))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_f854625363l_bool(ord_le1720872323e_bool,C),D_2)) ) ).

fof(fact_618_Sup__fin_Ohom__commute,axiom,
    ! [N,H] :
      ( ( ( hAPP_f22106695ol_nat(big_la43341705in_nat,image_nat_nat(H,N)) = hAPP_nat_nat(H,hAPP_f22106695ol_nat(big_la43341705in_nat,N))
         <= bot_bot_fun_nat_bool != N )
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,N)) )
     <= ! [X_2,Y_11] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,hAPP_nat_nat(H,X_2)),hAPP_nat_nat(H,Y_11)) = hAPP_nat_nat(H,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_2),Y_11)) ) ).

fof(fact_519_xt1_I4_J,axiom,
    ! [C_6,B_9,A_13] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_9),A_13))
     => ( C_6 = B_9
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_6),A_13)) ) ) ).

fof(fact_318_finite__Collect__disjI,axiom,
    ! [Pa,Q_1] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fdisj),Pa)),Q_1))))
    <=> ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(Q_1)))
        & hBOOL(hAPP_f54304608l_bool(finite_finite_nat,collect_nat(Pa))) ) ) ).

fof(fact_84_insert__commute,axiom,
    ! [X_1,Y_7,A] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Y_7),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),A)) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,Y_7),A)) ).

fof(fact_560_le__bot,axiom,
    ! [A_1] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A_1),bot_bo1181479936a_bool))
     => A_1 = bot_bo1181479936a_bool ) ).

fof(fact_45_equals0D,axiom,
    ! [A_1,A] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A))
     <= A = bot_bot_fun_nat_bool ) ).

fof(fact_473_subset__insertI2,axiom,
    ! [Ba,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B))
     => hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,Ba),B))) ) ).

fof(fact_340_folding__one__idem_Oinsert__idem,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite950012314iple_a(F_1,F))
     => ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A))
       => ( hAPP_f124283079iple_a(F,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)) = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),hAPP_f124283079iple_a(F,A))
         <= A != bot_bo1181479936a_bool ) ) ) ).

fof(fact_365_Diff__cancel,axiom,
    ! [A] : bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(minus_2076558538e_bool,A),A) ).

fof(help_fequal_1_1_fequal_000tc__Com__Ostate_T,axiom,
    ! [X,Y] :
      ( Y = X
      | ~ hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(fequal_state,X),Y)) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Com__Ostate_000tc__Nat__Onat_000tc__Com__Ostate_U,axiom,
    ! [P,Q,R] : hAPP_state_state(hAPP_f871651461_state(hAPP_f851239890_state(cOMBS_777315357_state,P),Q),R) = hAPP_nat_state(hAPP_s1892499976_state(P,R),hAPP_state_nat(Q,R)) ).

fof(fact_388_insert__Diff__single,axiom,
    ! [A_1,A] : hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),bot_bo1181479936a_bool))) ).

fof(fact_314_finite_OinsertI,axiom,
    ! [A_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A)))
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_482_sup__absorb2,axiom,
    ! [X_29,Y_23] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_29),Y_23))
     => Y_23 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_29),Y_23) ) ).

fof(fact_178_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),image_1604514514_state(F_1,A)))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) )
     <= Ba = hAPP_H928324994_state(F_1,X_1) ) ).

fof(fact_517_order__trans,axiom,
    ! [Z_4,X_19,Y_15] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_19),Y_15))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_19),Z_4))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_15),Z_4)) ) ) ).

fof(fact_572_insert__def,axiom,
    ! [A_1,B] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,collect_nat(hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),A_1))),B) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B) ).

fof(help_COMBS_1_1_COMBS_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__HOL__Obo,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_f1748468828l_bool(P,R),hAPP_f54304608l_bool(Q,R)) = hAPP_f54304608l_bool(hAPP_f1246832597l_bool(hAPP_f1743029098l_bool(cOMBS_1187019125l_bool,P),Q),R) ).

fof(fact_100_insert__compr__raw,axiom,
    ! [X_2,Xa] : collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fdisj),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),X_2))),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),Xa))) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),Xa) ).

fof(fact_499_sup__bot__left,axiom,
    ! [X_1] :
      ( hBOOL(X_1)
    <=> hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(semila1168014441p_bool,bot_bot_bool),X_1)) ) ).

fof(fact_235_insert__image,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => image_1782127643iple_a(F_1,A) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,hAPP_n178040171iple_a(F_1,X_1)),image_1782127643iple_a(F_1,A)) ) ).

fof(fact_506_Un__empty__right,axiom,
    ! [A] : A = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),bot_bot_fun_nat_bool) ).

fof(fact_470_subset__insert,axiom,
    ! [B,X_1,A] :
      ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B))
      <=> hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),B))) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com__,axiom,
    ! [P,Q,R] : hAPP_H513860823e_bool(hAPP_H1645666623e_bool(P,R),Q) = hAPP_H513860823e_bool(hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,P),Q),R) ).

fof(fact_155_nonempty__iff,axiom,
    ! [A] :
      ( bot_bo1055319631e_bool != A
    <=> ? [X_2,B_15] :
          ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_2),B_15) = A
          & ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),B_15)) ) ) ).

fof(fact_325_folding__one_Oclosed,axiom,
    ! [A,F_1,F] :
      ( hBOOL(finite988810631ne_nat(F_1,F))
     => ( ( bot_bot_fun_nat_bool != A
         => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f22106695ol_nat(F,A)),A))
           <= ! [X_2,Y_11] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_2),Y_11)),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_2),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Y_11),bot_bot_fun_nat_bool)))) ) )
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ) ).

fof(fact_4_cut,axiom,
    ! [Ga,G_1,Ts] :
      ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(G_1),Ts))
     => ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),Ts))
       <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),G_1)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Hoare____Mirabelle____ddpglwnxwg__Otriple_I_033,axiom,
    ! [P,Q,R] : hAPP_H727730819e_bool(hAPP_f531275309e_bool(hAPP_f1470644835e_bool(cOMBB_946224375_state,P),Q),R) = hAPP_f1583986009e_bool(P,hAPP_H1645666623e_bool(Q,R)) ).

fof(fact_189_rev__image__eqI,axiom,
    ! [Ba,F_1,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A))
     => ( Ba = hAPP_H563960305_state(F_1,X_1)
       => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,Ba),image_650584225_state(F_1,A))) ) ) ).

fof(gsy_c_Finite__Set_Ofolding__one_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple,axiom,
    ! [B_1_1,B_2_1] : is_bool(finite1669978781iple_a(B_1_1,B_2_1)) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Ostate_000tc__Com__Ovname_000tc__fun_Itc__Nat__,axiom,
    ! [P,Q,R] : hAPP_s1892499976_state(hAPP_v365393659_state(hAPP_f1542232213_state(cOMBC_1193272608_state,P),Q),R) = hAPP_v594194232_state(hAPP_s712361723_state(P,R),Q) ).

fof(fact_640_distrib__sup__le,axiom,
    ! [X_4,Y_2,Z_1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_4),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,Y_2),Z_1))),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila80283416nf_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_4),Y_2)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_4),Z_1)))) ).

fof(fact_668_Int__Collect,axiom,
    ! [X_1,A,Pa] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
        & hBOOL(hAPP_nat_bool(Pa,X_1)) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),collect_nat(Pa)))) ) ).

fof(fact_685_Int__empty__left,axiom,
    ! [B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,bot_bo1181479936a_bool),B) = bot_bo1181479936a_bool ).

fof(help_COMBI_1_1_COMBI_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com__,axiom,
    ! [P] : hAPP_H563960305_state(cOMBI_1367665338_state,P) = P ).

fof(fact_198_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,hAPP_H563960305_state(F_1,X_1)),image_650584225_state(F_1,A)))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(fact_653_Int__insert__right__if0,axiom,
    ! [B,A_1,A] :
      ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B))
     <= ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),A)) ) ).

fof(fact_293_evaln__elim__cases_I4_J,axiom,
    ! [C1,C2,S_1,N_2,T] :
      ( hBOOL(evaln(semi(C1,C2),S_1,N_2,T))
     => ~ ! [S1_1] :
            ( hBOOL(evaln(C1,S_1,N_2,S1_1))
           => ~ hBOOL(evaln(C2,S1_1,N_2,T)) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_00_023,axiom,
    ! [P,Q,R] : hAPP_H1421470952a_bool(hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,P),Q),R) = hAPP_f540970102l_bool(hAPP_H1840393229l_bool(P,R),Q) ).

fof(fact_147_com_Osimps_I13_J,axiom,
    ! [Com1_2,Com2_2] : semi(Com1_2,Com2_2) != skip ).

fof(fact_527_Collect__disj__eq,axiom,
    ! [Pa,Q_1] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,collec268032053iple_a(Pa)),collec268032053iple_a(Q_1)) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fdisj),Pa)),Q_1)) ).

fof(fact_345_folding__one_Oremove,axiom,
    ! [X_1,A,F_1,F] :
      ( ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
         => ( ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_1),hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)))) = hAPP_f22106695ol_nat(F,A)
             <= bot_bot_fun_nat_bool != hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) )
            & ( hAPP_f22106695ol_nat(F,A) = X_1
             <= bot_bot_fun_nat_bool = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) ) ) ) )
     <= hBOOL(finite988810631ne_nat(F_1,F)) ) ).

fof(gsy_c_fTrue,axiom,
    is_bool(fTrue) ).

fof(fact_531_set__rev__mp,axiom,
    ! [B,X_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B)) ) ) ).

fof(fact_360_Diff__iff,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B)))
    <=> ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A))
        & ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),B)) ) ) ).

fof(fact_184_image__eqI,axiom,
    ! [A,Ba,F_1,X_1] :
      ( Ba = hAPP_n178040171iple_a(F_1,X_1)
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ba),image_1782127643iple_a(F_1,A)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ) ).

fof(fact_669_Int__def,axiom,
    ! [A,B] : hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B) = collec268032053iple_a(hAPP_f1591852335a_bool(hAPP_f1203760810a_bool(cOMBS_1148211387l_bool,hAPP_f997599971l_bool(hAPP_f439164429l_bool(cOMBB_1782929690iple_a,fconj),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),A))),hAPP_f1591852335a_bool(hAPP_f672239281a_bool(cOMBC_1552014468l_bool,member1713797107iple_a),B))) ).

fof(fact_488_inf__sup__ord_I4_J,axiom,
    ! [Y_21,X_25] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_21),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_25),Y_21))) ).

fof(fact_203_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_H716259088te_nat(F_1,X_1)),image_1410872416te_nat(F_1,A)))
     <= hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_1),A)) ) ).

fof(fact_471_subset__insertI2,axiom,
    ! [Ba,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
     => hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),B))) ) ).

fof(fact_337_finite__imp__fold__graph,axiom,
    ! [F_1,Z_2,A] :
      ( ? [X1] : hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),X1))
     <= hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,A)) ) ).

fof(fact_529_set__mp,axiom,
    ! [X_1,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B))
     => ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A)) ) ) ).

fof(fact_133_Comp,axiom,
    ! [D_3,R_1,Ga,Pa,Ca,Q_1] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool)))
     => ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Q_1,D_3,R_1)),bot_bo1055319631e_bool)))
       => hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,semi(Ca,D_3),R_1)),bot_bo1055319631e_bool))) ) ) ).

fof(fact_579_union__fold__insert,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
     => hAPP_f800510211t_bool(finite1578363458t_bool(insert_nat,B),A) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,A),B) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc_,axiom,
    ! [P,Q,R] : hAPP_f54304608l_bool(hAPP_f103356543l_bool(hAPP_f643944041l_bool(cOMBC_1693257480l_bool,P),Q),R) = hAPP_f54304608l_bool(hAPP_f103356543l_bool(P,R),Q) ).

fof(fact_295_insert__fold1SetE,axiom,
    ! [F_1,A_1,X_35,X_1] :
      ( ~ ! [A_7,A_19] :
            ( hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),X_35) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_7),A_19)
           => ( hBOOL(hAPP_H513860823e_bool(finite1935632226_state(F_1,A_7,A_19),X_1))
             => hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_7),A_19)) ) )
     <= hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),X_35)),X_1)) ) ).

fof(fact_565_Un__insert__left,axiom,
    ! [A_1,B,C] : hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)),C) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,B),C)) ).

fof(fact_467_insert__subset,axiom,
    ! [X_1,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),B))
    <=> ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,A),B))
        & hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),B)) ) ) ).

fof(fact_673_IntD1,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),A))
     <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Ca),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B))) ) ).

fof(fact_659_Int__insert__left,axiom,
    ! [B,A_1,C] :
      ( ( hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)),C) = hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,B),C))
       <= hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),C)) )
      & ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,A_1),C))
       => hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,B),C) = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)),C) ) ) ).

fof(fact_359_DiffD1,axiom,
    ! [Ca,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B))) ) ).

fof(fact_645_Int__insert__right__if1,axiom,
    ! [B,A_1,A] :
      ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) = hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) ) ).

fof(fact_487_sup__ge2,axiom,
    ! [Y_22,X_26] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_22),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,X_26),Y_22))) ).

fof(gsy_c_hAPP_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_It__a_J_000tc__HOL__,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_H1421470952a_bool(B_1_1,B_2_1)) ).

fof(fact_34_singleton__conv,axiom,
    ! [A_1] : hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool) = collec727977250_state(hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),A_1)) ).

fof(fact_93_insert__compr,axiom,
    ! [A_1,B] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B) = collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fdisj),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),A_1))),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),B))) ).

fof(fact_441_semilattice__big_OF__eq,axiom,
    ! [A,F_1,F] :
      ( ( hAPP_f22106695ol_nat(F,A) = hAPP_f22106695ol_nat(finite_fold1_nat(F_1),A)
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= hBOOL(big_se275732192ig_nat(F_1,F)) ) ).

fof(fact_282_evalc_OAssign,axiom,
    ! [X_35,A_1,S_4] : hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(evalc(ass(X_35,A_1)),S_4),hAPP_nat_state(hAPP_v594194232_state(hAPP_s712361723_state(update,S_4),X_35),hAPP_state_nat(A_1,S_4)))) ).

fof(fact_410_fold__graph__permute__diff,axiom,
    ! [A_1,Ba,A,X_1] :
      ( hBOOL(hAPP_nat_bool(finite929467206at_nat(times_times_nat,Ba,A),X_1))
     => ( ( hBOOL(hAPP_nat_bool(finite929467206at_nat(times_times_nat,A_1,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,Ba),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)))),X_1))
         <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ba),A)) )
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) ) ) ).

fof(fact_363_set__diff__eq,axiom,
    ! [A,B] : collect_nat(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,hAPP_f1146629647l_bool(hAPP_f1080886329l_bool(cOMBB_1015721476ol_nat,fconj),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),A))),hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,fNot),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),B)))) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B) ).

fof(fact_651_Int__insert__right__if0,axiom,
    ! [B,A_1,A] :
      ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),B)) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B)
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),A)) ) ).

fof(gsy_c_Finite__Set_Ocomp__fun__idem_000tc__Hoare____Mirabelle____ddpglwnxwg__Otri,axiom,
    ! [B_1_1] : is_bool(finite419198954a_bool(B_1_1)) ).

fof(fact_532_set__rev__mp,axiom,
    ! [B,X_1,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_6_hoare__derivs_Oinsert,axiom,
    ! [Ts,Ga,T_1] :
      ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,T_1),bot_bo1181479936a_bool)))
     => ( hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,T_1),Ts)))
       <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),Ts)) ) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( ( fTrue = P
        | P = fFalse )
     <= is_bool(P) ) ).

fof(fact_686_inf__bot__left,axiom,
    ! [X_1] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(semila310582991f_bool,bot_bot_bool),X_1))
    <=> hBOOL(bot_bot_bool) ) ).

fof(fact_306_folding__one_Oinsert,axiom,
    ! [X_1,A,F_1,F] :
      ( ( ( ( bot_bot_fun_nat_bool != A
           => hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_1),hAPP_f22106695ol_nat(F,A)) = hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) )
         <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) )
       <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) )
     <= hBOOL(finite988810631ne_nat(F_1,F)) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fimplies,P),Q))
      | hBOOL(P) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__Com__O,axiom,
    ! [P,Q] : P = hAPP_s1806633685e_bool(hAPP_f1863945078e_bool(cOMBK_631994958_state,P),Q) ).

fof(fact_625_finite__Int,axiom,
    ! [Ga,F] :
      ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,F),Ga)))
     <= ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,F))
        | hBOOL(hAPP_f54304608l_bool(finite_finite_nat,Ga)) ) ) ).

fof(fact_98_insertI1,axiom,
    ! [A_1,B] : hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_1),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B))) ).

fof(fact_569_weaken,axiom,
    ! [Ts,Ga,Ts_1] :
      ( ( hBOOL(hAPP_f540970102l_bool(hAPP_f430043647l_bool(ord_le1908022732a_bool,Ts),Ts_1))
       => hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),Ts)) )
     <= hBOOL(hAPP_f540970102l_bool(hoare_606018542rivs_a(Ga),Ts_1)) ) ).

fof(fact_299_fold1Set_Osimps,axiom,
    ! [F_1,A1,A2] :
      ( hBOOL(hAPP_nat_bool(finite_fold1Set_nat(F_1,A1),A2))
    <=> ? [A_7,A_19,X_2] :
          ( hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_7),A_19) = A1
          & A2 = X_2
          & hBOOL(hAPP_nat_bool(finite929467206at_nat(F_1,A_7,A_19),X_2))
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_7),A_19)) ) ) ).

fof(fact_11_escape,axiom,
    ! [Ga,Ca,Q_1,Pa] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool)))
     <= ! [Z_7,S_2] :
          ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(hAPP_f1863945078e_bool(cOMBK_631994958_state,hAPP_s1806633685e_bool(hAPP_f817621513e_bool(cOMBC_2027030106e_bool,fequal_state),S_2)),Ca,hAPP_f1863945078e_bool(cOMBK_631994958_state,hAPP_s1806633685e_bool(Q_1,Z_7)))),bot_bo1055319631e_bool)))
         <= hBOOL(hAPP_state_bool(hAPP_s1806633685e_bool(Pa,Z_7),S_2)) ) ) ).

fof(fact_575_insert__is__Un,axiom,
    ! [A_1,A] : hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),A) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila465093516t_bool,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,A_1),bot_bot_fun_nat_bool)),A) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__fun_Itc__HOL__Obool_Mtc__H_024,axiom,
    ! [P,Q,R] : hAPP_s1874344717e_bool(hAPP_f873506917e_bool(hAPP_f1398071125e_bool(cOMBB_1757942702_state,P),Q),R) = hAPP_f167292325e_bool(P,hAPP_s2001034685l_bool(Q,R)) ).

fof(fact_123_the__elem__eq,axiom,
    ! [X_1] : hAPP_f2143211163_state(the_el23965208_state,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,X_1),bot_bo1055319631e_bool)) = X_1 ).

fof(fact_624_IntE,axiom,
    ! [Ca,A,B] :
      ( ~ ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(semila840543986t_bool,A),B))) ) ).

fof(gsy_c_Com_Ovname_OLoc,axiom,
    ! [B_1_1] :
      ( is_loc(B_1_1)
     => is_vname(loc(B_1_1)) ) ).

fof(fact_229_empty__is__image,axiom,
    ! [F_1,A] :
      ( image_194810223_a_nat(F_1,A) = bot_bot_fun_nat_bool
    <=> bot_bo1181479936a_bool = A ) ).

fof(fact_561_le__bot,axiom,
    ! [A_8] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_8),bot_bot_nat))
     => A_8 = bot_bot_nat ) ).

fof(fact_26_emptyE,axiom,
    ! [A_1] : ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,A_1),bot_bot_fun_nat_bool)) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_004,axiom,
    ! [P,Q,R] : hAPP_b589554111l_bool(P,hAPP_state_bool(Q,R)) = hAPP_s58564346l_bool(hAPP_f1259673775l_bool(hAPP_f1561913689l_bool(cOMBB_188601460_state,P),Q),R) ).

fof(fact_397_finite__Diff__insert,axiom,
    ! [A,A_1,B] :
      ( hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),B)))
    <=> hBOOL(hAPP_f540970102l_bool(finite1655202547iple_a,hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,A_1),B)))) ) ).

fof(fact_348_folding__one_Oinsert__remove,axiom,
    ! [X_1,A,F_1,F] :
      ( hBOOL(finite988810631ne_nat(F_1,F))
     => ( hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A))
       => ( ( hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)) = bot_bot_fun_nat_bool
           => hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = X_1 )
          & ( bot_bot_fun_nat_bool != hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool))
           => hAPP_nat_nat(hAPP_nat_fun_nat_nat(F_1,X_1),hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),bot_bot_fun_nat_bool)))) = hAPP_f22106695ol_nat(F,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) ) ) ) ) ).

fof(fact_681_Int__empty__right,axiom,
    ! [A] : bot_bo1055319631e_bool = hAPP_f921536533e_bool(hAPP_f1583986009e_bool(semila2145357127e_bool,A),bot_bo1055319631e_bool) ).

fof(fact_483_le__supI2,axiom,
    ! [A_15,X_28,B_11] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_28),B_11))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_28),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_15),B_11))) ) ).

fof(fact_213_image__iff,axiom,
    ! [Z_2,F_1,A] :
      ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Z_2),image_1782127643iple_a(F_1,A)))
    <=> ? [X_2] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A))
          & hAPP_n178040171iple_a(F_1,X_2) = Z_2 ) ) ).

fof(fact_366_Diff__cancel,axiom,
    ! [A] : bot_bo1181479936a_bool = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(minus_469558085a_bool,A),A) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Com__Ostate_Mtc__HOL__Obool_J_000tc__fun_It,axiom,
    ! [P,Q,R] : hAPP_a2036067514e_bool(hAPP_f769584981e_bool(hAPP_f1159960589e_bool(cOMBB_237455441bool_a,P),Q),R) = hAPP_f1759915619e_bool(P,hAPP_a2036067514e_bool(Q,R)) ).

fof(fact_423_fold1__singleton__def,axiom,
    ! [A_1,G,F_1] :
      ( finite1346402327_state(F_1) = G
     => hAPP_f2143211163_state(G,hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),bot_bo1055319631e_bool)) = A_1 ) ).

fof(gsy_c_Finite__Set_Ofolding__one_000tc__Nat__Onat,axiom,
    ! [B_1_1,B_2_1] : is_bool(finite988810631ne_nat(B_1_1,B_2_1)) ).

fof(fact_233_Collect__def,axiom,
    ! [Pa] : Pa = collect_nat(Pa) ).

fof(fact_616_Sup__fin_Oeq__fold_H,axiom,
    ! [X_1,A] :
      ( ( hAPP_f22106695ol_nat(big_la43341705in_nat,hAPP_f800510211t_bool(hAPP_n1512601776t_bool(insert_nat,X_1),A)) = hAPP_f22106695ol_nat(finite_fold_nat_nat(semila972727038up_nat,X_1),A)
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) )
     <= hBOOL(hAPP_f54304608l_bool(finite_finite_nat,A)) ) ).

fof(fact_152_com_Osimps_I3_J,axiom,
    ! [Com1_1,Com2_1,Com1,Com2] :
      ( semi(Com1,Com2) = semi(Com1_1,Com2_1)
    <=> ( Com2_1 = Com2
        & Com1_1 = Com1 ) ) ).

fof(fact_679_disjoint__iff__not__equal,axiom,
    ! [A,B] :
      ( ! [X_2] :
          ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_2),A))
         => ! [Xa] :
              ( hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,Xa),B))
             => Xa != X_2 ) )
    <=> hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila671163144a_bool,A),B) = bot_bo1181479936a_bool ) ).

fof(fact_231_mem__def,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
    <=> hBOOL(hAPP_nat_bool(A,X_1)) ) ).

fof(fact_478_sup__mono,axiom,
    ! [B_13,D_1,A_17,C_7] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_13),D_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,A_17),B_13)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(semila972727038up_nat,C_7),D_1))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_17),C_7)) ) ).

fof(fact_157_bot__empty__eq,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_H513860823e_bool(bot_bo1055319631e_bool,X_2))
    <=> hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,X_2),bot_bo1055319631e_bool)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_011,axiom,
    ! [P,Q,R] : hAPP_f1748468828l_bool(hAPP_f1974927549l_bool(hAPP_f857404385l_bool(cOMBB_444170502t_bool,P),Q),R) = hAPP_b589554111l_bool(P,hAPP_f54304608l_bool(Q,R)) ).

fof(fact_199_imageI,axiom,
    ! [F_1,X_1,A] :
      ( hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,hAPP_n1126952044_state(F_1,X_1)),image_1821565372_state(F_1,A)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ).

fof(fact_300_fold1Set_Osimps,axiom,
    ! [F_1,A1,A2] :
      ( hBOOL(hAPP_H513860823e_bool(finite9525415_state(F_1,A1),A2))
    <=> ? [A_7,A_19,X_2] :
          ( X_2 = A2
          & ~ hBOOL(hAPP_f1760790145l_bool(hAPP_H248360617l_bool(member1758697444_state,A_7),A_19))
          & hBOOL(hAPP_H513860823e_bool(finite1935632226_state(F_1,A_7,A_19),X_2))
          & hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_7),A_19) = A1 ) ) ).

fof(fact_9_constant,axiom,
    ! [Ga,Pa,Ca,Q_1,C] :
      ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(hAPP_b1095269219e_bool(hAPP_f701449317e_bool(cOMBC_471052088e_bool,hAPP_f873506917e_bool(hAPP_f1398071125e_bool(cOMBB_1757942702_state,cOMBC_231445413l_bool),hAPP_f1283379615l_bool(hAPP_f1345202233l_bool(cOMBB_1759179140_state,hAPP_f1561913689l_bool(cOMBB_188601460_state,fconj)),Pa))),C),Ca,Q_1)),bot_bo1055319631e_bool)))
     <= ( hBOOL(hAPP_f1760790145l_bool(hoare_659004819_state(Ga),hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,hoare_1575745797_state(Pa,Ca,Q_1)),bot_bo1055319631e_bool)))
       <= hBOOL(C) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____ddpglwnxwg__Otriple_Itc__Com___020,axiom,
    ! [P,Q] : P = hAPP_H563960305_state(hAPP_H521649881_state(cOMBK_690957994_state,P),Q) ).

fof(fact_226_empty__is__image,axiom,
    ! [F_1,A] :
      ( bot_bo1055319631e_bool = A
    <=> image_129517430iple_a(F_1,A) = bot_bo1181479936a_bool ) ).

fof(fact_95_insert__compr,axiom,
    ! [A_1,B] : collec727977250_state(hAPP_f921536533e_bool(hAPP_f760664097e_bool(cOMBS_1248383340l_bool,hAPP_f1558728829l_bool(hAPP_f1442918689l_bool(cOMBB_1382207997_state,fdisj),hAPP_H1645666623e_bool(hAPP_f262880489e_bool(cOMBC_1424981238e_bool,fequal1531560888_state),A_1))),hAPP_f921536533e_bool(hAPP_f1262649863e_bool(cOMBC_764456866l_bool,member1758697444_state),B))) = hAPP_f921536533e_bool(hAPP_H727730819e_bool(insert1835143293_state,A_1),B) ).

fof(help_COMBS_1_1_COMBS_000tc__Nat__Onat_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_n1006566506l_bool(P,R),hAPP_nat_bool(Q,R)) = hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f561022312t_bool(cOMBS_nat_bool_bool,P),Q),R) ).

fof(fact_324_vname_Osimps_I3_J,axiom,
    ! [Glb_1,Loc_1] : glb(Glb_1) != loc(Loc_1) ).

fof(fact_416_comp__fun__commute_Ofold__graph__insertE,axiom,
    ! [Z_2,X_1,A,V,F_1] :
      ( hBOOL(finite1200705745iple_a(F_1))
     => ( hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,hAPP_f1591852335a_bool(hAPP_H1641355846a_bool(insert873085594iple_a,X_1),A)),V))
       => ( ~ hBOOL(hAPP_f540970102l_bool(hAPP_H1840393229l_bool(member1713797107iple_a,X_1),A))
         => ~ ! [Y_11] :
                ( ~ hBOOL(hAPP_H1421470952a_bool(finite2010942150iple_a(F_1,Z_2,A),Y_11))
               <= V = hAPP_H678412245iple_a(hAPP_H1455657330iple_a(F_1,X_1),Y_11) ) ) ) ) ).

fof(fact_508_Un__empty__right,axiom,
    ! [A] : A = hAPP_f1591852335a_bool(hAPP_f1026156344a_bool(semila1498788770a_bool,A),bot_bo1181479936a_bool) ).

