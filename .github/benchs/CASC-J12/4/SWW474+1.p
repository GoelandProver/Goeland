fof(fact_178_insert__commute,axiom,
    ! [X_2,Y_2,A] : insert_pname(X_2,insert_pname(Y_2,A)) = insert_pname(Y_2,insert_pname(X_2,A)) ).

fof(help_COMBS_1_1_COMBS_000tc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfehddehev__,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_f2143399574l_bool(P,R),hAPP_f166538662l_bool(Q,R)) = hAPP_f166538662l_bool(cOMBS_1358309691l_bool(P,Q),R) ).

fof(gsy_c_COMBK_000tc__HOL__Obool_000tc__Com__Opname,axiom,
    ! [B_1_1] :
      ( is_fun_pname_bool(cOMBK_bool_pname(B_1_1))
     <= is_bool(B_1_1) ) ).

fof(fact_242_finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A))
       <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,B)) )
     <= hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,A),B)) ) ).

fof(fact_77_insert__dom,axiom,
    ! [F,X_2,Y_2] :
      ( insert_pname(X_2,dom_pname_com(F)) = dom_pname_com(F)
     <= some_com(Y_2) = hAPP_p799580910on_com(F,X_2) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( ( P = fFalse
        | P = fTrue )
     <= is_bool(P) ) ).

fof(fact_24_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,image_288317893l_bool(H,Fa)))
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa)) ) ).

fof(gsy_c_Set_Oimage_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc__HOL,axiom,
    ! [B_1_1,B_2_1] : is_fun_pname_bool(image_1705983821_pname(B_1_1,B_2_1)) ).

fof(fact_299_com_Osimps_I6_J,axiom,
    ! [Pname_1,Pname] :
      ( ( hAPP_pname_com(body_1,Pname_1) = hAPP_pname_com(body_1,Pname)
      <=> Pname = Pname_1 )
     <= ( is_pname(Pname)
        & is_pname(Pname_1) ) ) ).

fof(fact_125_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A))
       => hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,B_1),image_1828608335e_bool(F,A))) )
     <= hAPP_H1049623551e_bool(F,X_2) = B_1 ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obo,axiom,
    ! [P,Q,R] : hAPP_f389811538l_bool(hAPP_f1759205631l_bool(P,R),Q) = hAPP_f389811538l_bool(hAPP_f1759205631l_bool(cOMBC_336095980l_bool(P),Q),R) ).

fof(fact_131_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,B_1),image_pname_pname(F,A)))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) )
     <= hAPP_pname_pname(F,X_2) = B_1 ) ).

fof(gsy_c_Map_Odom_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__Com__Ocom,axiom,
    ! [B_1_1] : is_fun1661590463l_bool(dom_fu2081503504ol_com(B_1_1)) ).

fof(fact_89_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f389811538l_bool(hAPP_f1759205631l_bool(ord_le1375671464l_bool,B),image_1642285373l_bool(F,A)))
       => hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,B)) )
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A)) ) ).

fof(fact_107_emptyE,axiom,
    ! [A_2] : ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),bot_bo844097828e_bool)) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__fun_It_010,axiom,
    ! [P,Q,R] : hAPP_f1935102916l_bool(hAPP_f556039215l_bool(P,R),Q) = hAPP_f1664156314l_bool(hAPP_f559147733l_bool(cOMBC_1988546018l_bool(P),Q),R) ).

fof(fact_262_insert__subset,axiom,
    ! [X_2,A,B] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),B))
        & hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) )
    <=> hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,insert_pname(X_2,A)),B)) ) ).

fof(fact_196_set__mp,axiom,
    ! [X_2,A,B] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B))
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__fun_Itc__fun_Itc,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(B_2_1)
     => is_fun1661590463l_bool(hAPP_f434788991l_bool(B_1_1,B_2_1)) ) ).

fof(fact_76_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( image_187965177_pname(cOMBK_1589414042e_bool(C_1),A) = insert_pname(C_1,bot_bo844097828e_bool)
     <= hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,X_2),A)) ) ).

fof(fact_210_rev__image__eqI,axiom,
    ! [B_1,F,X_2,A] :
      ( ( hAPP_p1422361149_state(F,X_2) = B_1
       => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),image_2003357581_state(F,A))) )
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ).

fof(fact_222_singleton__inject,axiom,
    ! [A_2,B_1] :
      ( insert1415133716_state(A_2,bot_bo620288102e_bool) = insert1415133716_state(B_1,bot_bo620288102e_bool)
     => A_2 = B_1 ) ).

fof(gsy_c_COMBS_000tc__Com__Opname_000tc__HOL__Obool_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(cOMBS_568398431l_bool(B_1_1,B_2_1))
     <= is_fun_pname_bool(B_2_1) ) ).

fof(fact_49_finite__Collect__conjI,axiom,
    ! [Q_1,P_1] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fconj,P_1),Q_1))))
     <= ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,collect_pname(Q_1)))
        | hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,collect_pname(P_1))) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc__,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f389811538l_bool(B_1_1,B_2_1)) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | hBOOL(Q) ) ).

fof(fact_103_MGF,axiom,
    ! [C_1] :
      ( ( hBOOL(wT_bodies)
       => ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(bot_bo620288102e_bool),insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,C_1),bot_bo620288102e_bool)))
         <= hBOOL(wt(C_1)) ) )
     <= hBOOL(hoare_165779456gleton) ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(hAPP_bool_bool(fNot,P))
      | ~ hBOOL(P) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Com__Opname_U,axiom,
    ! [P,Q] :
      ( P = hAPP_pname_bool(cOMBK_bool_pname(P),Q)
     <= is_bool(P) ) ).

fof(fact_56_image__constant__conv,axiom,
    ! [C_1,A] :
      ( ( A = bot_bo620288102e_bool
       => image_54689091_pname(cOMBK_168215364_state(C_1),A) = bot_bo844097828e_bool )
      & ( bot_bo620288102e_bool != A
       => image_54689091_pname(cOMBK_168215364_state(C_1),A) = insert_pname(C_1,bot_bo844097828e_bool) ) ) ).

fof(gsy_c_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__Com__Opname_Mtc_,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1661590463l_bool(cOMBB_307249310e_bool(B_1_1,B_2_1))
     <= is_fun1661590463l_bool(B_2_1) ) ).

fof(fact_212_image__iff,axiom,
    ! [Z,F,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,Z),image_2003357581_state(F,A)))
    <=> ? [X_1] :
          ( is_pname(X_1)
          & Z = hAPP_p1422361149_state(F,X_1)
          & hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),A)) ) ) ).

fof(fact_85_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,B))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_677922117_state(F,A))) )
     <= hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,A)) ) ).

fof(fact_98_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,A))
     => ( hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,B),image_2131964411e_bool(F,A)))
       => hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,B)) ) ) ).

fof(fact_243_finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A))
       <= hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,B)) )
     <= hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,A),B)) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_bool(hAPP_bool_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfeh,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1022807134l_bool(B_1_1,B_2_1)) ).

fof(fact_292_finite__subset__induct,axiom,
    ! [P_1,A,Fa] :
      ( ( ( ( hBOOL(hAPP_f1935102916l_bool(P_1,Fa))
           <= ! [A_1,F_1] :
                ( ( is_fun1661590463l_bool(F_1)
                  & is_fun_pname_bool(A_1) )
               => ( ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_1),A))
                   => ( ( hBOOL(hAPP_f1935102916l_bool(P_1,insert1325755072e_bool(A_1,F_1)))
                       <= hBOOL(hAPP_f1935102916l_bool(P_1,F_1)) )
                     <= ~ hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_1),F_1)) ) )
                 <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,F_1)) ) ) )
         <= hBOOL(hAPP_f1935102916l_bool(P_1,bot_bo1649642514l_bool)) )
       <= hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,Fa),A)) )
     <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,Fa)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__Com__Ocom_000tc__Hoare____Mirabelle____jfehddehev__O,axiom,
    ! [P,Q,R] : hAPP_c1126217667_state(P,hAPP_pname_com(Q,R)) = hAPP_p1422361149_state(cOMBB_699532858_pname(P,Q),R) ).

fof(conj_2,hypothesis,
    hBOOL(hAPP_f971112728l_bool(finite364844667_state,fa)) ).

fof(fact_192_equalityE,axiom,
    ! [A,B] :
      ( ~ ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),A))
         <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) )
     <= A = B ) ).

fof(gsy_c_Orderings_Obot__class_Obot_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J,axiom,
    is_fun_pname_bool(bot_bo844097828e_bool) ).

fof(fact_68_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A))
     => insert1325755072e_bool(C_1,bot_bo1649642514l_bool) = image_2131964411e_bool(cOMBK_2035509764_state(C_1),A) ) ).

fof(fact_206_set__eq__subset,axiom,
    ! [A,B] :
      ( ( is_fun_pname_bool(B)
        & is_fun_pname_bool(A) )
     => ( B = A
      <=> ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),A))
          & hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) ) ) ) ).

fof(help_fequal_2_1_fequal_000tc__Com__Opname_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_pname_bool(hAPP_p61793385e_bool(fequal_pname,X),Y))
      | X != Y ) ).

fof(fact_9_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,A))
     => hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(hAPP_f72706945l_bool(cOMBC_449066458l_bool(ord_le1285840794e_bool),A)))) ) ).

fof(fact_249_rev__finite__subset,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,B))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
       => hBOOL(hAPP_f971112728l_bool(finite364844667_state,A)) ) ) ).

fof(gsy_c_Hoare__Mirabelle__jfehddehev_Ostate__not__singleton,hypothesis,
    is_bool(hoare_165779456gleton) ).

fof(fact_295_subsetI,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B))
     <= ! [X_1] :
          ( is_pname(X_1)
         => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),A))
           => hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),B)) ) ) ) ).

fof(fact_90_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f468958928l_bool(hAPP_f667366769l_bool(ord_le889598034l_bool,B),image_288317893l_bool(F,A)))
       => hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,B)) )
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A)) ) ).

fof(fact_241_empty__is__image,axiom,
    ! [F,A] :
      ( is_fun_pname_bool(A)
     => ( bot_bo620288102e_bool = image_2003357581_state(F,A)
      <=> bot_bo844097828e_bool = A ) ) ).

fof(fact_67_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A))
     => image_54689091_pname(cOMBK_168215364_state(C_1),A) = insert_pname(C_1,bot_bo844097828e_bool) ) ).

fof(fact_15_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,image_1705983821_pname(H,Fa)))
     <= hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,Fa)) ) ).

fof(fact_0_empty,axiom,
    ! [G] : hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),bot_bo620288102e_bool)) ).

fof(gsy_c_COMBS_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__HOL__Obool_000t,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1661590463l_bool(B_2_1)
     => is_fun1661590463l_bool(cOMBS_350070575l_bool(B_1_1,B_2_1)) ) ).

fof(fact_197_set__mp,axiom,
    ! [X_2,A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),B))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) ) ) ).

fof(fact_21_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,image_18964633_state(H,Fa)))
     <= hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,Fa)) ) ).

fof(fact_18_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,Fa))
     => hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,image_1283814551_pname(H,Fa))) ) ).

fof(fact_273_Collect__conv__if,axiom,
    ! [P_1,A_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(P_1,A_2))
       => collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fconj,hAPP_f434788991l_bool(cOMBC_1284144636l_bool(fequal533582459e_bool),A_2)),P_1)) = insert1325755072e_bool(A_2,bot_bo1649642514l_bool) )
      & ( ~ hBOOL(hAPP_f1664156314l_bool(P_1,A_2))
       => bot_bo1649642514l_bool = collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fconj,hAPP_f434788991l_bool(cOMBC_1284144636l_bool(fequal533582459e_bool),A_2)),P_1)) ) ) ).

fof(fact_148_empty__iff,axiom,
    ! [C_1] : ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,C_1),bot_bo844097828e_bool)) ).

fof(conj_7,conjecture,
    hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(image_2003357581_state(cOMBB_699532858_pname(hoare_Mirabelle_MGT,body_1),dom_pname_com(body))),insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,y),bot_bo620288102e_bool))) ).

fof(fact_7_MGT__BodyN,axiom,
    ! [Pn_1,G] :
      ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,hAPP_pname_com(body_1,Pn_1)),G)),insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,hAPP_option_com_com(the_com,hAPP_p799580910on_com(body,Pn_1))),bot_bo620288102e_bool)))
     => hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,hAPP_pname_com(body_1,Pn_1)),bot_bo620288102e_bool))) ) ).

fof(fact_200_in__mono,axiom,
    ! [X_2,A,B] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B))
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ) ).

fof(fact_40_finite_OinsertI,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,A))
     => hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,insert203537868l_bool(A_2,A))) ) ).

fof(fact_229_insert__not__empty,axiom,
    ! [A_2,A] : insert_pname(A_2,A) != bot_bo844097828e_bool ).

fof(fact_275_Collect__conv__if2,axiom,
    ! [P_1,A_2] :
      ( ( collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fconj,hAPP_p61793385e_bool(fequal_pname,A_2)),P_1)) = bot_bo844097828e_bool
       <= ~ hBOOL(hAPP_pname_bool(P_1,A_2)) )
      & ( insert_pname(A_2,bot_bo844097828e_bool) = collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fconj,hAPP_p61793385e_bool(fequal_pname,A_2)),P_1))
       <= hBOOL(hAPP_pname_bool(P_1,A_2)) ) ) ).

fof(fact_74_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,X_2),A))
     => image_18964633_state(cOMBK_701929478e_bool(C_1),A) = insert1415133716_state(C_1,bot_bo620288102e_bool) ) ).

fof(fact_30_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,image_2131964411e_bool(H,Fa)))
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,Fa)) ) ).

fof(gsy_c_Set_Oimage_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__,axiom,
    ! [B_1_1,B_2_1] : is_fun_pname_bool(image_187965177_pname(B_1_1,B_2_1)) ).

fof(gsy_v_pn,hypothesis,
    is_pname(pn) ).

fof(fact_36_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,bot_bo844097828e_bool),A)) ).

fof(help_fimplies_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fimplies,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_152_empty__Collect__eq,axiom,
    ! [P_1] :
      ( bot_bo1649642514l_bool = collec1974731493e_bool(P_1)
    <=> ! [X_1] :
          ( ~ hBOOL(hAPP_f1664156314l_bool(P_1,X_1))
         <= is_fun_pname_bool(X_1) ) ) ).

fof(fact_239_image__is__empty,axiom,
    ! [F,A] :
      ( ( image_2003357581_state(F,A) = bot_bo620288102e_bool
      <=> bot_bo844097828e_bool = A )
     <= is_fun_pname_bool(A) ) ).

fof(fact_238_subset__empty,axiom,
    ! [A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),bot_bo620288102e_bool))
    <=> bot_bo620288102e_bool = A ) ).

fof(fact_153_empty__Collect__eq,axiom,
    ! [P_1] :
      ( bot_bo620288102e_bool = collec307967673_state(P_1)
    <=> ! [X_1] : ~ hBOOL(hAPP_H78829294e_bool(P_1,X_1)) ) ).

fof(fact_87_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_18964633_state(F,A)))
       => hBOOL(hAPP_f971112728l_bool(finite364844667_state,B)) ) ) ).

fof(fact_175_insert__code,axiom,
    ! [Y_2,A,X_2] :
      ( hBOOL(hAPP_H78829294e_bool(insert1415133716_state(Y_2,A),X_2))
    <=> ( hBOOL(hAPP_H78829294e_bool(A,X_2))
        | X_2 = Y_2 ) ) ).

fof(fact_151_empty__Collect__eq,axiom,
    ! [P_1] :
      ( ! [X_1] : ~ hBOOL(hAPP_f971112728l_bool(P_1,X_1))
    <=> collec1823980261e_bool(P_1) = bot_bo535777328l_bool ) ).

fof(fact_173_insert__ident,axiom,
    ! [B,X_2,A] :
      ( ( ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),B))
       => ( insert1415133716_state(X_2,A) = insert1415133716_state(X_2,B)
        <=> B = A ) )
     <= ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Com__Opname_000tc__Com__Opname_U,axiom,
    ! [P,Q] :
      ( is_pname(P)
     => P = hAPP_pname_pname(cOMBK_pname_pname(P),Q) ) ).

fof(fact_39_finite_OinsertI,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,A))
     => hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,insert1117693814l_bool(A_2,A))) ) ).

fof(gsy_c_Set_Oinsert_000tc__Com__Opname,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_pname(B_1_1)
        & is_fun_pname_bool(B_2_1) )
     => is_fun_pname_bool(insert_pname(B_1_1,B_2_1)) ) ).

fof(fact_70_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
     => insert1325755072e_bool(C_1,bot_bo1649642514l_bool) = image_47868345e_bool(cOMBK_37193422_pname(C_1),A) ) ).

fof(fact_263_insert__subset,axiom,
    ! [X_2,A,B] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),B))
        & hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) )
    <=> hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,insert1415133716_state(X_2,A)),B)) ) ).

fof(fact_191_insertI1,axiom,
    ! [A_2,B] : hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),insert1415133716_state(A_2,B))) ).

fof(fact_1_asm,axiom,
    ! [Ts,G] :
      ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts))
     <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,Ts),G)) ) ).

fof(fact_164_empty__def,axiom,
    bot_bo535777328l_bool = collec1823980261e_bool(cOMBK_129401207e_bool(fFalse)) ).

fof(fact_230_insert__not__empty,axiom,
    ! [A_2,A] : insert1415133716_state(A_2,A) != bot_bo620288102e_bool ).

fof(fact_150_empty__Collect__eq,axiom,
    ! [P_1] :
      ( bot_bo1761158942l_bool = collec488126193l_bool(P_1)
    <=> ! [X_1] : ~ hBOOL(hAPP_f166538662l_bool(P_1,X_1)) ) ).

fof(fact_116_equalityI,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),A))
       => B = A ) ) ).

fof(fact_224_singletonE,axiom,
    ! [B_1,A_2] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),insert1415133716_state(A_2,bot_bo620288102e_bool)))
     => A_2 = B_1 ) ).

fof(fact_130_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,B_1),image_54689091_pname(F,A)))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) )
     <= B_1 = hAPP_H1621176307_pname(F,X_2) ) ).

fof(fact_118_equalityI,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,A),B))
     => ( hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,B),A))
       => B = A ) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q))
      | hBOOL(Q)
      | hBOOL(P) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_008,axiom,
    ! [P,Q,R] : hAPP_H1187982158l_bool(cOMBB_962198420_state(P,Q),R) = hAPP_b589554111l_bool(P,hAPP_H78829294e_bool(Q,R)) ).

fof(fact_134_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
       => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),image_2003357581_state(F,A))) )
     <= hAPP_p1422361149_state(F,X_2) = B_1 ) ).

fof(fact_51_finite__Collect__conjI,axiom,
    ! [Q_1,P_1] :
      ( ( hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,collec1613912337l_bool(P_1)))
        | hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,collec1613912337l_bool(Q_1))) )
     => hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,collec1613912337l_bool(cOMBS_811933079l_bool(cOMBB_689948150l_bool(fconj,P_1),Q_1)))) ) ).

fof(fact_83_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A))
     => ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),image_187965177_pname(F,A))) ) ) ).

fof(fact_203_equalityD2,axiom,
    ! [A,B] :
      ( A = B
     => hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),A)) ) ).

fof(fact_3_thin,axiom,
    ! [G,G_1,Ts] :
      ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G_1),Ts))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,G_1),G))
       => hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts)) ) ) ).

fof(fact_213_finite__Collect__disjI,axiom,
    ! [P_1,Q_1] :
      ( ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,collect_pname(P_1)))
        & hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,collect_pname(Q_1))) )
    <=> hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fdisj,P_1),Q_1)))) ) ).

fof(fact_109_insertCI,axiom,
    ! [B_1,A_2,B] :
      ( ( ~ hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_2),B))
       => A_2 = B_1 )
     => hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_2),insert1325755072e_bool(B_1,B))) ) ).

fof(fact_270_domI,axiom,
    ! [M,A_2,B_1] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),dom_pname_com(M)))
     <= some_com(B_1) = hAPP_p799580910on_com(M,A_2) ) ).

fof(fact_72_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( image_pname_pname(cOMBK_pname_pname(C_1),A) = insert_pname(C_1,bot_bo844097828e_bool)
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_T,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(fequal533582459e_bool,X),Y)) ) ).

fof(fact_231_empty__not__insert,axiom,
    ! [A_2,A] : bot_bo844097828e_bool != insert_pname(A_2,A) ).

fof(gsy_c_Set_Oimage_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__Osta_001,axiom,
    ! [B_1_1,B_2_1] : is_fun1661590463l_bool(image_2131964411e_bool(B_1_1,B_2_1)) ).

fof(fact_137_equals0D,axiom,
    ! [A_2,A] :
      ( A = bot_bo620288102e_bool
     => ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),A)) ) ).

fof(fact_269_subset__image__iff,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_2003357581_state(F,A)))
    <=> ? [AA] :
          ( is_fun_pname_bool(AA)
          & hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,AA),A))
          & image_2003357581_state(F,AA) = B ) ) ).

fof(fact_187_insert__compr,axiom,
    ! [A_2,B] : insert1415133716_state(A_2,B) = collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fdisj,hAPP_H1049623551e_bool(cOMBC_654211620e_bool(fequal1111551311_state),A_2)),hAPP_f98417237e_bool(cOMBC_1734175330l_bool(member1338687867_state),B))) ).

fof(fact_4_cut,axiom,
    ! [G,G_1,Ts] :
      ( ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),G_1))
       => hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts)) )
     <= hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G_1),Ts)) ) ).

fof(fact_126_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,B_1),image_47868345e_bool(F,A)))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) )
     <= B_1 = hAPP_p61793385e_bool(F,X_2) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc__HOL__Oboo,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1661590463l_bool(B_2_1)
     => is_bool(hAPP_f1935102916l_bool(B_1_1,B_2_1)) ) ).

fof(fact_82_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,A))
     => ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),image_1619336331_pname(F,A))) ) ) ).

fof(fact_122_subsetD,axiom,
    ! [C_1,A,B] :
      ( ( hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,C_1),B))
       <= hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,C_1),A)) )
     <= hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,A),B)) ) ).

fof(fact_226_doubleton__eq__iff,axiom,
    ! [A_2,B_1,C_1,D_1] :
      ( ( ( A_2 = D_1
          & C_1 = B_1 )
        | ( C_1 = A_2
          & D_1 = B_1 ) )
    <=> insert1415133716_state(A_2,insert1415133716_state(B_1,bot_bo620288102e_bool)) = insert1415133716_state(C_1,insert1415133716_state(D_1,bot_bo620288102e_bool)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__Option__Ooption_Itc__Com__Ocom_J_000tc__Com__Ocom_00,axiom,
    ! [P,Q,R] : hAPP_pname_com(cOMBB_923936821_pname(P,Q),R) = hAPP_option_com_com(P,hAPP_p799580910on_com(Q,R)) ).

fof(gsy_c_hAPP_000tc__Com__Opname_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obo,axiom,
    ! [B_1_1,B_2_1] :
      ( is_pname(B_2_1)
     => is_fun1661590463l_bool(hAPP_p338031245l_bool(B_1_1,B_2_1)) ) ).

fof(fact_123_subsetD,axiom,
    ! [C_1,A,B] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B))
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,C_1),A))
       => hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,C_1),B)) ) ) ).

fof(gsy_c_Set_Oimage_000tc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otri,axiom,
    ! [B_1_1,B_2_1] : is_fun_pname_bool(image_1619336331_pname(B_1_1,B_2_1)) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obo,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => hAPP_f1664156314l_bool(cOMBK_1857069011e_bool(P),Q) = P ) ).

fof(fact_265_subset__insertI,axiom,
    ! [B,A_2] : hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),insert1415133716_state(A_2,B))) ).

fof(help_fimplies_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fimplies,P),Q))
      | ~ hBOOL(P)
      | hBOOL(Q) ) ).

fof(gsy_c_Set_OCollect_000tc__Com__Opname,axiom,
    ! [B_1_1] :
      ( is_fun_pname_bool(collect_pname(B_1_1))
     <= is_fun_pname_bool(B_1_1) ) ).

fof(fact_136_equals0D,axiom,
    ! [A_2,A] :
      ( bot_bo535777328l_bool = A
     => ~ hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_2),A)) ) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_T,axiom,
    ! [X,Y] :
      ( ( is_fun_pname_bool(Y)
        & is_fun_pname_bool(X) )
     => ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(fequal533582459e_bool,X),Y))
        | Y = X ) ) ).

fof(fact_78_insert__dom,axiom,
    ! [F,X_2,Y_2] :
      ( some_com(Y_2) = hAPP_f2138803836on_com(F,X_2)
     => dom_fu2081503504ol_com(F) = insert1325755072e_bool(X_2,dom_fu2081503504ol_com(F)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_006,axiom,
    ! [P,Q,R] : hAPP_f1476298914l_bool(cOMBB_2095475776e_bool(P,Q),R) = hAPP_b589554111l_bool(P,hAPP_f1664156314l_bool(Q,R)) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Com__Opname_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_pname_bool(Q,R)) = hAPP_pname_bool(cOMBB_647938656_pname(P,Q),R) ).

fof(help_COMBK_1_1_COMBK_000tc__Com__Opname_000tc__fun_Itc__Hoare____Mirabelle____jf,axiom,
    ! [P,Q] :
      ( P = hAPP_f560369737_pname(cOMBK_1589414042e_bool(P),Q)
     <= is_pname(P) ) ).

fof(fact_172_insert__ident,axiom,
    ! [B,X_2,A] :
      ( ( is_fun_pname_bool(B)
        & is_fun_pname_bool(A) )
     => ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
       => ( ( insert_pname(X_2,B) = insert_pname(X_2,A)
          <=> B = A )
         <= ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),B)) ) ) ) ).

fof(fact_16_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,Fa))
     => hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,image_1619336331_pname(H,Fa))) ) ).

fof(gsy_c_fTrue,axiom,
    is_bool(fTrue) ).

fof(fact_35_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,bot_bo535777328l_bool),A)) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_I_016,axiom,
    ! [P,Q,R] : hAPP_f166538662l_bool(hAPP_f210337421l_bool(P,R),Q) = hAPP_f971112728l_bool(hAPP_f1201187855l_bool(cOMBC_1114453604l_bool(P),Q),R) ).

fof(fact_127_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
       => hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,B_1),image_70449425e_bool(F,A))) )
     <= B_1 = hAPP_p442853985e_bool(F,X_2) ) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_It,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f166538662l_bool(B_1_1,B_2_1)) ).

fof(fact_63_image__constant__conv,axiom,
    ! [C_1,A] :
      ( ( bot_bo535777328l_bool != A
       => insert1415133716_state(C_1,bot_bo620288102e_bool) = image_18964633_state(cOMBK_701929478e_bool(C_1),A) )
      & ( image_18964633_state(cOMBK_701929478e_bool(C_1),A) = bot_bo620288102e_bool
       <= bot_bo535777328l_bool = A ) ) ).

fof(fact_147_empty__iff,axiom,
    ! [C_1] : ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,C_1),bot_bo620288102e_bool)) ).

fof(help_COMBS_1_1_COMBS_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__,axiom,
    ! [P,Q,R] : hAPP_H78829294e_bool(cOMBS_458705923l_bool(P,Q),R) = hAPP_bool_bool(hAPP_H1187982158l_bool(P,R),hAPP_H78829294e_bool(Q,R)) ).

fof(fact_50_finite__Collect__conjI,axiom,
    ! [Q_1,P_1] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fconj,P_1),Q_1))))
     <= ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,collec307967673_state(Q_1)))
        | hBOOL(hAPP_f971112728l_bool(finite364844667_state,collec307967673_state(P_1))) ) ) ).

fof(gsy_c_Set_Oimage_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__Osta,axiom,
    ! [B_1_1,B_2_1] : is_fun_pname_bool(image_54689091_pname(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun1661590463l_bool(B_1_1)
        & is_fun_pname_bool(B_2_1) )
     => is_bool(hAPP_f1664156314l_bool(B_1_1,B_2_1)) ) ).

fof(fact_144_Collect__empty__eq,axiom,
    ! [P_1] :
      ( bot_bo844097828e_bool = collect_pname(P_1)
    <=> ! [X_1] :
          ( ~ hBOOL(hAPP_pname_bool(P_1,X_1))
         <= is_pname(X_1) ) ) ).

fof(gsy_c_hAPP_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__Ostate_J_0,axiom,
    ! [B_1_1,B_2_1] : is_pname(hAPP_H1621176307_pname(B_1_1,B_2_1)) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__Hoare_,axiom,
    ! [P,Q] :
      ( is_fun_pname_bool(P)
     => hAPP_H356885323e_bool(cOMBK_2035509764_state(P),Q) = P ) ).

fof(fact_53_finite__Collect__conjI,axiom,
    ! [Q_1,P_1] :
      ( ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(P_1)))
        | hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(Q_1))) )
     => hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fconj,P_1),Q_1)))) ) ).

fof(fact_297_finite__subset__image,axiom,
    ! [F,A,B] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,B))
     => ( ? [C] :
            ( is_fun_pname_bool(C)
            & hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,C),A))
            & image_2003357581_state(F,C) = B
            & hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,C)) )
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_2003357581_state(F,A))) ) ) ).

fof(conj_1,hypothesis,
    hBOOL(wT_bodies) ).

fof(fact_100_subset__singletonD,axiom,
    ! [A,X_2] :
      ( is_fun1661590463l_bool(A)
     => ( ( A = bot_bo1649642514l_bool
          | insert1325755072e_bool(X_2,bot_bo1649642514l_bool) = A )
       <= hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,A),insert1325755072e_bool(X_2,bot_bo1649642514l_bool))) ) ) ).

fof(fact_221_singleton__inject,axiom,
    ! [A_2,B_1] :
      ( ( insert_pname(A_2,bot_bo844097828e_bool) = insert_pname(B_1,bot_bo844097828e_bool)
       => A_2 = B_1 )
     <= ( is_pname(B_1)
        & is_pname(A_2) ) ) ).

fof(fact_180_insert__absorb2,axiom,
    ! [X_2,A] : insert_pname(X_2,A) = insert_pname(X_2,insert_pname(X_2,A)) ).

fof(fact_110_insertCI,axiom,
    ! [B_1,A_2,B] :
      ( ( ~ hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_2),B))
       => A_2 = B_1 )
     => hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_2),insert1556680138e_bool(B_1,B))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com___012,axiom,
    ! [P,Q] : P = hAPP_f1387463497_state(cOMBK_701929478e_bool(P),Q) ).

fof(fact_255_Collect__def,axiom,
    ! [P_1] : collec307967673_state(P_1) = P_1 ).

fof(fact_186_insert__compr,axiom,
    ! [A_2,B] : insert_pname(A_2,B) = collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fdisj,hAPP_p61793385e_bool(cOMBC_1149511130e_bool(fequal_pname),A_2)),hAPP_f759274231e_bool(cOMBC_1058051404l_bool(member_pname),B))) ).

fof(fact_120_subsetD,axiom,
    ! [C_1,A,B] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,C_1),A))
       => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,C_1),B)) )
     <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__,axiom,
    ! [P,Q,R] : hAPP_H78829294e_bool(hAPP_H1049623551e_bool(P,R),Q) = hAPP_H78829294e_bool(hAPP_H1049623551e_bool(cOMBC_654211620e_bool(P),Q),R) ).

fof(fact_214_finite__Collect__disjI,axiom,
    ! [P_1,Q_1] :
      ( ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,collec307967673_state(P_1)))
        & hBOOL(hAPP_f971112728l_bool(finite364844667_state,collec307967673_state(Q_1))) )
    <=> hBOOL(hAPP_f971112728l_bool(finite364844667_state,collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fdisj,P_1),Q_1)))) ) ).

fof(fact_102_subset__singletonD,axiom,
    ! [A,X_2] :
      ( ( ( A = bot_bo844097828e_bool
          | A = insert_pname(X_2,bot_bo844097828e_bool) )
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),insert_pname(X_2,bot_bo844097828e_bool))) )
     <= is_fun_pname_bool(A) ) ).

fof(conj_6,hypothesis,
    hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(image_2003357581_state(cOMBB_699532858_pname(hoare_Mirabelle_MGT,body_1),dom_pname_com(body))),fa)) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__Com__O,axiom,
    ! [P,Q] :
      ( is_fun_pname_bool(P)
     => hAPP_p61793385e_bool(cOMBK_37193422_pname(P),Q) = P ) ).

fof(fact_199_set__rev__mp,axiom,
    ! [B,X_2,A] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),B))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) )
     <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) ) ).

fof(fact_20_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,Fa))
     => hBOOL(hAPP_f971112728l_bool(finite364844667_state,image_892968839_state(H,Fa))) ) ).

fof(fact_141_Collect__empty__eq,axiom,
    ! [P_1] :
      ( ! [X_1] : ~ hBOOL(hAPP_f971112728l_bool(P_1,X_1))
    <=> collec1823980261e_bool(P_1) = bot_bo535777328l_bool ) ).

fof(help_fequal_1_1_fequal_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com,axiom,
    ! [X,Y] :
      ( ~ hBOOL(hAPP_H78829294e_bool(hAPP_H1049623551e_bool(fequal1111551311_state,X),Y))
      | Y = X ) ).

fof(gsy_c_hAPP_000tc__Com__Opname_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_pname_bool(B_1_1,B_2_1))
     <= ( is_fun_pname_bool(B_1_1)
        & is_pname(B_2_1) ) ) ).

fof(fact_146_empty__iff,axiom,
    ! [C_1] : ~ hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,C_1),bot_bo535777328l_bool)) ).

fof(fact_162_all__not__in__conv,axiom,
    ! [A] :
      ( is_fun_pname_bool(A)
     => ( ! [X_1] :
            ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),A))
           <= is_pname(X_1) )
      <=> A = bot_bo844097828e_bool ) ) ).

fof(fact_293_finite__subset__induct,axiom,
    ! [P_1,A,Fa] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,Fa))
     => ( hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,Fa),A))
       => ( ( hBOOL(hAPP_f166538662l_bool(P_1,Fa))
           <= ! [A_1,F_1] :
                ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,F_1))
               => ( hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_1),A))
                 => ( ( hBOOL(hAPP_f166538662l_bool(P_1,F_1))
                     => hBOOL(hAPP_f166538662l_bool(P_1,insert1556680138e_bool(A_1,F_1))) )
                   <= ~ hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_1),F_1)) ) ) ) )
         <= hBOOL(hAPP_f166538662l_bool(P_1,bot_bo535777328l_bool)) ) ) ) ).

fof(fact_159_all__not__in__conv,axiom,
    ! [A] :
      ( is_fun1661590463l_bool(A)
     => ( A = bot_bo1649642514l_bool
      <=> ! [X_1] :
            ( is_fun_pname_bool(X_1)
           => ~ hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,X_1),A)) ) ) ) ).

fof(fact_129_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( hAPP_f1387463497_state(F,X_2) = B_1
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),image_18964633_state(F,A)))
       <= hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,X_2),A)) ) ) ).

fof(fact_17_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,Fa))
     => hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,image_187965177_pname(H,Fa))) ) ).

fof(fact_93_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
     => ( hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,B),image_47868345e_bool(F,A)))
       => hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,B)) ) ) ).

fof(fact_13_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,collec1613912337l_bool(hAPP_f510955609l_bool(cOMBC_7971162l_bool(ord_le675606854l_bool),A))))
     <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A)) ) ).

fof(fact_195_subset__trans,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),C_2))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),C_2)) ) ) ).

fof(fact_294_WTs__elim__cases_I7_J,axiom,
    ! [P] :
      ( hBOOL(wt(hAPP_pname_com(body_1,P)))
     => ~ ! [Y_1] : some_com(Y_1) != hAPP_p799580910on_com(body,P) ) ).

fof(fact_296_subsetI,axiom,
    ! [B,A] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_1),A))
         => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_1),B)) )
     => hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__O_004,hypothesis,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f971112728l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_Set_OCollect_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J,axiom,
    ! [B_1_1] :
      ( is_fun1661590463l_bool(collec1974731493e_bool(B_1_1))
     <= is_fun1661590463l_bool(B_1_1) ) ).

fof(gsy_c_Map_Odom_000tc__Com__Opname_000tc__Com__Ocom,hypothesis,
    ! [B_1_1] : is_fun_pname_bool(dom_pname_com(B_1_1)) ).

fof(gsy_c_hAPP_000tc__Com__Opname_000tc__Com__Opname,axiom,
    ! [B_1_1,B_2_1] :
      ( is_pname(hAPP_pname_pname(B_1_1,B_2_1))
     <= is_pname(B_2_1) ) ).

fof(fact_139_Collect__empty__eq,axiom,
    ! [P_1] :
      ( bot_bo1537088220l_bool = collec1613912337l_bool(P_1)
    <=> ! [X_1] :
          ( ~ hBOOL(hAPP_f1935102916l_bool(P_1,X_1))
         <= is_fun1661590463l_bool(X_1) ) ) ).

fof(fact_79_insert__dom,axiom,
    ! [F,X_2,Y_2] :
      ( insert1556680138e_bool(X_2,dom_fu1342267980ol_com(F)) = dom_fu1342267980ol_com(F)
     <= some_com(Y_2) = hAPP_f2134636538on_com(F,X_2) ) ).

fof(fact_228_singleton__iff,axiom,
    ! [B_1,A_2] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),insert1415133716_state(A_2,bot_bo620288102e_bool)))
    <=> B_1 = A_2 ) ).

fof(fact_284_singleton__conv2,axiom,
    ! [A_2] : collec307967673_state(hAPP_H1049623551e_bool(fequal1111551311_state,A_2)) = insert1415133716_state(A_2,bot_bo620288102e_bool) ).

fof(fact_91_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
     => ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),image_pname_pname(F,A))) ) ) ).

fof(fact_23_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa))
     => hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,image_1642285373l_bool(H,Fa))) ) ).

fof(fact_73_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,X_2),A))
     => insert1415133716_state(C_1,bot_bo620288102e_bool) = image_516545147_state(cOMBK_1503445380e_bool(C_1),A) ) ).

fof(fact_215_finite__Collect__disjI,axiom,
    ! [P_1,Q_1] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fdisj,P_1),Q_1))))
    <=> ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(Q_1)))
        & hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(P_1))) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_015,axiom,
    ! [P,Q,R] : hAPP_b589554111l_bool(P,hAPP_f166538662l_bool(Q,R)) = hAPP_f2143399574l_bool(cOMBB_404111180l_bool(P,Q),R) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_011,axiom,
    ! [P,Q,R] : hAPP_b589554111l_bool(P,hAPP_f971112728l_bool(Q,R)) = hAPP_f637090980l_bool(cOMBB_1585081418e_bool(P,Q),R) ).

fof(fact_278_Collect__conv__if2,axiom,
    ! [P_1,A_2] :
      ( ( ~ hBOOL(hAPP_f971112728l_bool(P_1,A_2))
       => bot_bo535777328l_bool = collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fconj,hAPP_f72706945l_bool(fequal1311889615e_bool,A_2)),P_1)) )
      & ( hBOOL(hAPP_f971112728l_bool(P_1,A_2))
       => collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fconj,hAPP_f72706945l_bool(fequal1311889615e_bool,A_2)),P_1)) = insert1556680138e_bool(A_2,bot_bo535777328l_bool) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfehddehev__,axiom,
    ! [P,Q,R] : hAPP_f166538662l_bool(hAPP_f585161855l_bool(cOMBC_1691491604l_bool(P),Q),R) = hAPP_f166538662l_bool(hAPP_f585161855l_bool(P,R),Q) ).

fof(fact_285_singleton__conv2,axiom,
    ! [A_2] : collec1974731493e_bool(hAPP_f434788991l_bool(fequal533582459e_bool,A_2)) = insert1325755072e_bool(A_2,bot_bo1649642514l_bool) ).

fof(fact_157_ex__in__conv,axiom,
    ! [A] :
      ( ? [X_1] : hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_1),A))
    <=> bot_bo620288102e_bool != A ) ).

fof(fact_288_WT__bodiesD,axiom,
    ! [Pn,B_2] :
      ( ( hBOOL(wt(B_2))
       <= hAPP_p799580910on_com(body,Pn) = some_com(B_2) )
     <= hBOOL(wT_bodies) ) ).

fof(fact_138_equals0D,axiom,
    ! [A_2,A] :
      ( A = bot_bo844097828e_bool
     => ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),A)) ) ).

fof(gsy_c_Orderings_Obot__class_Obot_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__,axiom,
    is_fun1661590463l_bool(bot_bo1649642514l_bool) ).

fof(fact_156_ex__in__conv,axiom,
    ! [A] :
      ( ? [X_1] : hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,X_1),A))
    <=> bot_bo535777328l_bool != A ) ).

fof(fact_189_insert__compr,axiom,
    ! [A_2,B] : collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fdisj,hAPP_f72706945l_bool(cOMBC_449066458l_bool(fequal1311889615e_bool),A_2)),hAPP_f1201187855l_bool(cOMBC_1114453604l_bool(member2114907555e_bool),B))) = insert1556680138e_bool(A_2,B) ).

fof(fact_248_rev__finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) )
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B)) ) ).

fof(fact_92_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,B))
       <= hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,B),image_70449425e_bool(F,A))) )
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__Com__Opname,axiom,
    ! [B_1_1,B_2_1] :
      ( is_pname(hAPP_f1297739591_pname(B_1_1,B_2_1))
     <= is_fun_pname_bool(B_2_1) ) ).

fof(fact_145_empty__iff,axiom,
    ! [C_1] : ~ hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,C_1),bot_bo1649642514l_bool)) ).

fof(gsy_c_Finite__Set_Ofinite_000tc__Com__Opname,axiom,
    is_fun1661590463l_bool(finite_finite_pname) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Hoare____Mirabelle____jfehddehev__,axiom,
    ! [P,Q] :
      ( hAPP_H78829294e_bool(cOMBK_659609255_state(P),Q) = P
     <= is_bool(P) ) ).

fof(fact_133_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( ( hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,X_2),A))
       => hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,B_1),image_187965177_pname(F,A))) )
     <= hAPP_f560369737_pname(F,X_2) = B_1 ) ).

fof(fact_174_insert__code,axiom,
    ! [Y_2,A,X_2] :
      ( ( is_pname(Y_2)
        & is_pname(X_2) )
     => ( ( hBOOL(hAPP_pname_bool(A,X_2))
          | Y_2 = X_2 )
      <=> hBOOL(hAPP_pname_bool(insert_pname(Y_2,A),X_2)) ) ) ).

fof(fact_41_finite_OinsertI,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,insert1556680138e_bool(A_2,A)))
     <= hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A)) ) ).

fof(fact_29_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,Fa))
     => hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,image_1828608335e_bool(H,Fa))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com___007,axiom,
    ! [P,Q] : hAPP_f888949707_state(cOMBK_1503445380e_bool(P),Q) = P ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc__Hoare____Mirabel,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => hAPP_f166538662l_bool(cOMBK_482404831l_bool(P),Q) = P ) ).

fof(fact_207_set__eq__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),A))
        & hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) )
    <=> A = B ) ).

fof(fact_117_equalityI,axiom,
    ! [A,B] :
      ( ( is_fun1661590463l_bool(B)
        & is_fun1661590463l_bool(A) )
     => ( ( hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,B),A))
         => A = B )
       <= hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,A),B)) ) ) ).

fof(fact_38_finite_OinsertI,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,insert_pname(A_2,A)))
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A)) ) ).

fof(fact_298_finite__dom__body,axiom,
    hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,dom_pname_com(body))) ).

fof(fact_42_finite_OinsertI,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,insert1325755072e_bool(A_2,A)))
     <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A)) ) ).

fof(fact_260_subset__insert,axiom,
    ! [B,X_2,A] :
      ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),insert_pname(X_2,B)))
      <=> hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) ) ) ).

fof(fact_66_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( image_2003357581_state(cOMBK_367030522_pname(C_1),A) = insert1415133716_state(C_1,bot_bo620288102e_bool)
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ).

fof(fact_142_Collect__empty__eq,axiom,
    ! [P_1] :
      ( bot_bo1649642514l_bool = collec1974731493e_bool(P_1)
    <=> ! [X_1] :
          ( ~ hBOOL(hAPP_f1664156314l_bool(P_1,X_1))
         <= is_fun_pname_bool(X_1) ) ) ).

fof(fact_219_insert__compr__raw,axiom,
    ! [X_1,Xa] : insert1325755072e_bool(X_1,Xa) = collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fdisj,hAPP_f434788991l_bool(cOMBC_1284144636l_bool(fequal533582459e_bool),X_1)),hAPP_f559147733l_bool(cOMBC_1988546018l_bool(member799430823e_bool),Xa))) ).

fof(fact_166_empty__def,axiom,
    bot_bo620288102e_bool = collec307967673_state(cOMBK_659609255_state(fFalse)) ).

fof(conj_5,hypothesis,
    hAPP_p799580910on_com(body,pn) = some_com(y) ).

fof(fact_69_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A))
     => image_1828608335e_bool(cOMBK_1039769424_state(C_1),A) = insert1556680138e_bool(C_1,bot_bo535777328l_bool) ) ).

fof(fact_128_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( B_1 = hAPP_f888949707_state(F,X_2)
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),image_516545147_state(F,A)))
       <= hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,X_2),A)) ) ) ).

fof(fact_55_image__constant__conv,axiom,
    ! [C_1,A] :
      ( is_fun_pname_bool(A)
     => ( ( A = bot_bo844097828e_bool
         => image_2003357581_state(cOMBK_367030522_pname(C_1),A) = bot_bo620288102e_bool )
        & ( image_2003357581_state(cOMBK_367030522_pname(C_1),A) = insert1415133716_state(C_1,bot_bo620288102e_bool)
         <= A != bot_bo844097828e_bool ) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Hoare____Mirabel,axiom,
    ! [P,Q,R] : hAPP_H78829294e_bool(cOMBB_2144135922_state(P,Q),R) = hAPP_bool_bool(P,hAPP_H78829294e_bool(Q,R)) ).

fof(fact_163_empty__def,axiom,
    collec488126193l_bool(cOMBK_482404831l_bool(fFalse)) = bot_bo1761158942l_bool ).

fof(fact_59_image__constant__conv,axiom,
    ! [C_1,A] :
      ( is_fun_pname_bool(A)
     => ( ( image_47868345e_bool(cOMBK_37193422_pname(C_1),A) = insert1325755072e_bool(C_1,bot_bo1649642514l_bool)
         <= bot_bo844097828e_bool != A )
        & ( A = bot_bo844097828e_bool
         => image_47868345e_bool(cOMBK_37193422_pname(C_1),A) = bot_bo1649642514l_bool ) ) ) ).

fof(fact_64_image__constant__conv,axiom,
    ! [C_1,A] :
      ( is_fun1661590463l_bool(A)
     => ( ( bot_bo1649642514l_bool = A
         => image_1283814551_pname(cOMBK_948730864e_bool(C_1),A) = bot_bo844097828e_bool )
        & ( A != bot_bo1649642514l_bool
         => image_1283814551_pname(cOMBK_948730864e_bool(C_1),A) = insert_pname(C_1,bot_bo844097828e_bool) ) ) ) ).

fof(fact_266_insert__image,axiom,
    ! [F,X_2,A] :
      ( insert1415133716_state(hAPP_p1422361149_state(F,X_2),image_2003357581_state(F,A)) = image_2003357581_state(F,A)
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ).

fof(fact_46_finite_OemptyI,axiom,
    hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,bot_bo1761158942l_bool)) ).

fof(fact_112_insertE,axiom,
    ! [A_2,B_1,A] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),A))
       <= A_2 != B_1 )
     <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),insert1415133716_state(B_1,A))) ) ).

fof(fact_168_insert__absorb,axiom,
    ! [A_2,A] :
      ( ( insert_pname(A_2,A) = A
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),A)) )
     <= is_fun_pname_bool(A) ) ).

fof(fact_184_insert__Collect,axiom,
    ! [A_2,P_1] : insert1325755072e_bool(A_2,collec1974731493e_bool(P_1)) = collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fimplies,cOMBB_307249310e_bool(fNot,hAPP_f434788991l_bool(cOMBC_1284144636l_bool(fequal533582459e_bool),A_2))),P_1)) ).

fof(fact_115_insertE,axiom,
    ! [A_2,B_1,A] :
      ( ( is_pname(A_2)
        & is_pname(B_1) )
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),insert_pname(B_1,A)))
       => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),A))
         <= A_2 != B_1 ) ) ) ).

fof(fact_160_all__not__in__conv,axiom,
    ! [A] :
      ( ! [X_1] : ~ hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,X_1),A))
    <=> A = bot_bo535777328l_bool ) ).

fof(fact_99_subset__singletonD,axiom,
    ! [A,X_2] :
      ( ( insert1415133716_state(X_2,bot_bo620288102e_bool) = A
        | bot_bo620288102e_bool = A )
     <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),insert1415133716_state(X_2,bot_bo620288102e_bool))) ) ).

fof(fact_259_subset__insertI2,axiom,
    ! [B_1,A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
     => hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),insert1415133716_state(B_1,B))) ) ).

fof(fact_101_subset__singletonD,axiom,
    ! [A,X_2] :
      ( ( A = bot_bo535777328l_bool
        | insert1556680138e_bool(X_2,bot_bo535777328l_bool) = A )
     <= hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,A),insert1556680138e_bool(X_2,bot_bo535777328l_bool))) ) ).

fof(fact_62_image__constant__conv,axiom,
    ! [C_1,A] :
      ( is_fun1661590463l_bool(A)
     => ( ( image_516545147_state(cOMBK_1503445380e_bool(C_1),A) = bot_bo620288102e_bool
         <= bot_bo1649642514l_bool = A )
        & ( A != bot_bo1649642514l_bool
         => insert1415133716_state(C_1,bot_bo620288102e_bool) = image_516545147_state(cOMBK_1503445380e_bool(C_1),A) ) ) ) ).

fof(fact_211_imageI,axiom,
    ! [F,X_2,A] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
     => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,hAPP_p1422361149_state(F,X_2)),image_2003357581_state(F,A))) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(P)
      | hBOOL(hAPP_bool_bool(fNot,P)) ) ).

fof(fact_104_emptyE,axiom,
    ! [A_2] : ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),bot_bo620288102e_bool)) ).

fof(fact_245_finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,A))
       <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,B)) )
     <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) ) ).

fof(fact_33_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,bot_bo620288102e_bool),A)) ).

fof(fact_105_emptyE,axiom,
    ! [A_2] : ~ hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_2),bot_bo1649642514l_bool)) ).

fof(fact_32_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,image_pname_pname(H,Fa)))
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa)) ) ).

fof(gsy_c_hAPP_000tc__Com__Opname_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J,axiom,
    ! [B_1_1,B_2_1] :
      ( is_pname(B_2_1)
     => is_fun_pname_bool(hAPP_p61793385e_bool(B_1_1,B_2_1)) ) ).

fof(fact_19_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,image_677922117_state(H,Fa)))
     <= hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,Fa)) ) ).

fof(fact_57_image__constant__conv,axiom,
    ! [C_1,A] :
      ( ( bot_bo620288102e_bool = A
       => bot_bo1649642514l_bool = image_2131964411e_bool(cOMBK_2035509764_state(C_1),A) )
      & ( insert1325755072e_bool(C_1,bot_bo1649642514l_bool) = image_2131964411e_bool(cOMBK_2035509764_state(C_1),A)
       <= bot_bo620288102e_bool != A ) ) ).

fof(fact_34_empty__subsetI,axiom,
    ! [A] : hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,bot_bo1649642514l_bool),A)) ).

fof(gsy_c_hAPP_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__Ostate_J_0_003,axiom,
    ! [B_1_1,B_2_1] : is_fun_pname_bool(hAPP_H356885323e_bool(B_1_1,B_2_1)) ).

fof(fact_280_singleton__conv,axiom,
    ! [A_2] : collec307967673_state(hAPP_H1049623551e_bool(cOMBC_654211620e_bool(fequal1111551311_state),A_2)) = insert1415133716_state(A_2,bot_bo620288102e_bool) ).

fof(fact_5_hoare__derivs_Oinsert,axiom,
    ! [Ts,G,T] :
      ( ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts))
       => hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(T,Ts))) )
     <= hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(T,bot_bo620288102e_bool))) ) ).

fof(fact_218_insert__compr__raw,axiom,
    ! [X_1,Xa] : collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fdisj,hAPP_H1049623551e_bool(cOMBC_654211620e_bool(fequal1111551311_state),X_1)),hAPP_f98417237e_bool(cOMBC_1734175330l_bool(member1338687867_state),Xa))) = insert1415133716_state(X_1,Xa) ).

fof(fact_236_finite__insert,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,insert1556680138e_bool(A_2,A)))
    <=> hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A)) ) ).

fof(fact_190_insertI1,axiom,
    ! [A_2,B] : hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),insert_pname(A_2,B))) ).

fof(fact_267_image__insert,axiom,
    ! [F,A_2,B] : image_2003357581_state(F,insert_pname(A_2,B)) = insert1415133716_state(hAPP_p1422361149_state(F,A_2),image_2003357581_state(F,B)) ).

fof(fact_253_mem__def,axiom,
    ! [X_2,A] :
      ( hBOOL(hAPP_H78829294e_bool(A,X_2))
    <=> hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) ) ).

fof(fact_235_finite__insert,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,insert1325755072e_bool(A_2,A)))
    <=> hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A)) ) ).

fof(help_fequal_1_1_fequal_000tc__Com__Opname_T,axiom,
    ! [X,Y] :
      ( ( is_pname(Y)
        & is_pname(X) )
     => ( X = Y
        | ~ hBOOL(hAPP_pname_bool(hAPP_p61793385e_bool(fequal_pname,X),Y)) ) ) ).

fof(fact_176_insert__iff,axiom,
    ! [A_2,B_1,A] :
      ( ( is_pname(A_2)
        & is_pname(B_1) )
     => ( ( A_2 = B_1
          | hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),A)) )
      <=> hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),insert_pname(B_1,A))) ) ) ).

fof(fact_10_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f595608956l_bool(finite1491191519l_bool,collec792590109l_bool(hAPP_f1759205631l_bool(cOMBC_336095980l_bool(ord_le1375671464l_bool),A))))
     <= hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,A)) ) ).

fof(fact_232_empty__not__insert,axiom,
    ! [A_2,A] : insert1415133716_state(A_2,A) != bot_bo620288102e_bool ).

fof(fact_272_Collect__conv__if,axiom,
    ! [P_1,A_2] :
      ( ( collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fconj,hAPP_H1049623551e_bool(cOMBC_654211620e_bool(fequal1111551311_state),A_2)),P_1)) = bot_bo620288102e_bool
       <= ~ hBOOL(hAPP_H78829294e_bool(P_1,A_2)) )
      & ( hBOOL(hAPP_H78829294e_bool(P_1,A_2))
       => insert1415133716_state(A_2,bot_bo620288102e_bool) = collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fconj,hAPP_H1049623551e_bool(cOMBC_654211620e_bool(fequal1111551311_state),A_2)),P_1)) ) ) ).

fof(fact_44_finite_OemptyI,axiom,
    hBOOL(hAPP_f971112728l_bool(finite364844667_state,bot_bo620288102e_bool)) ).

fof(fact_183_insert__Collect,axiom,
    ! [A_2,P_1] : insert1415133716_state(A_2,collec307967673_state(P_1)) = collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fimplies,cOMBB_2144135922_state(fNot,hAPP_H1049623551e_bool(cOMBC_654211620e_bool(fequal1111551311_state),A_2))),P_1)) ).

fof(fact_165_empty__def,axiom,
    bot_bo1649642514l_bool = collec1974731493e_bool(cOMBK_1857069011e_bool(fFalse)) ).

fof(gsy_c_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Com__Opname,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(B_2_1)
     => is_fun_pname_bool(cOMBB_647938656_pname(B_1_1,B_2_1)) ) ).

fof(gsy_c_Com_OWT__bodies,hypothesis,
    is_bool(wT_bodies) ).

fof(fact_158_ex__in__conv,axiom,
    ! [A] :
      ( ( A != bot_bo844097828e_bool
      <=> ? [X_1] :
            ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),A))
            & is_pname(X_1) ) )
     <= is_fun_pname_bool(A) ) ).

fof(fact_81_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),image_1705983821_pname(F,A)))
       => hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B)) )
     <= hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,A)) ) ).

fof(fact_282_singleton__conv,axiom,
    ! [A_2] : insert1556680138e_bool(A_2,bot_bo535777328l_bool) = collec1823980261e_bool(hAPP_f72706945l_bool(cOMBC_449066458l_bool(fequal1311889615e_bool),A_2)) ).

fof(fact_247_rev__finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,A),B))
       => hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A)) )
     <= hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,B)) ) ).

fof(fact_143_Collect__empty__eq,axiom,
    ! [P_1] :
      ( ! [X_1] : ~ hBOOL(hAPP_H78829294e_bool(P_1,X_1))
    <=> bot_bo620288102e_bool = collec307967673_state(P_1) ) ).

fof(fact_254_Collect__def,axiom,
    ! [P_1] :
      ( is_fun_pname_bool(P_1)
     => collect_pname(P_1) = P_1 ) ).

fof(fact_257_Collect__def,axiom,
    ! [P_1] : P_1 = collec1823980261e_bool(P_1) ).

fof(fact_246_rev__finite__subset,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,B))
     => ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A))
       <= hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,A),B)) ) ) ).

fof(fact_258_subset__insertI2,axiom,
    ! [B_1,A,B] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B))
     => hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),insert_pname(B_1,B))) ) ).

fof(fact_274_Collect__conv__if,axiom,
    ! [P_1,A_2] :
      ( ( insert1556680138e_bool(A_2,bot_bo535777328l_bool) = collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fconj,hAPP_f72706945l_bool(cOMBC_449066458l_bool(fequal1311889615e_bool),A_2)),P_1))
       <= hBOOL(hAPP_f971112728l_bool(P_1,A_2)) )
      & ( bot_bo535777328l_bool = collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fconj,hAPP_f72706945l_bool(cOMBC_449066458l_bool(fequal1311889615e_bool),A_2)),P_1))
       <= ~ hBOOL(hAPP_f971112728l_bool(P_1,A_2)) ) ) ).

fof(fact_201_in__mono,axiom,
    ! [X_2,A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A))
       => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),B)) ) ) ).

fof(fact_114_insertE,axiom,
    ! [A_2,B_1,A] :
      ( ( A_2 != B_1
       => hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_2),A)) )
     <= hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_2),insert1556680138e_bool(B_1,A))) ) ).

fof(fact_171_insertI2,axiom,
    ! [B_1,A_2,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),insert1415133716_state(B_1,B)))
     <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),B)) ) ).

fof(fact_52_finite__Collect__conjI,axiom,
    ! [Q_1,P_1] :
      ( ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,collec488126193l_bool(P_1)))
        | hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,collec488126193l_bool(Q_1))) )
     => hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,collec488126193l_bool(cOMBS_1358309691l_bool(cOMBB_404111180l_bool(fconj,P_1),Q_1)))) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__Com__Op,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_f1664156314l_bool(Q,R)) = hAPP_f1664156314l_bool(cOMBB_307249310e_bool(P,Q),R) ).

fof(fact_170_insertI2,axiom,
    ! [B_1,A_2,B] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),B))
     => hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),insert_pname(B_1,B))) ) ).

fof(fact_204_equalityD1,axiom,
    ! [A,B] :
      ( A = B
     => hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Com__Opname_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_p393069232l_bool(P,R),hAPP_pname_bool(Q,R)) = hAPP_pname_bool(cOMBS_568398431l_bool(P,Q),R) ).

fof(conj_4,hypothesis,
    hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,fa),image_2003357581_state(cOMBB_699532858_pname(hoare_Mirabelle_MGT,cOMBB_923936821_pname(the_com,body)),dom_pname_com(body)))) ).

fof(fact_47_finite_OemptyI,axiom,
    hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,bot_bo535777328l_bool)) ).

fof(fact_234_finite__insert,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,insert1415133716_state(A_2,A)))
    <=> hBOOL(hAPP_f971112728l_bool(finite364844667_state,A)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__Hoare____Mirabelle____jfe,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => P = hAPP_f971112728l_bool(cOMBK_129401207e_bool(P),Q) ) ).

fof(fact_154_empty__Collect__eq,axiom,
    ! [P_1] :
      ( ! [X_1] :
          ( ~ hBOOL(hAPP_pname_bool(P_1,X_1))
         <= is_pname(X_1) )
    <=> bot_bo844097828e_bool = collect_pname(P_1) ) ).

fof(gsy_c_HOL_Oundefined_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J,axiom,
    is_fun_pname_bool(undefi17486888e_bool(fun(pname,bool))) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Opname_000tc__Com__Opname_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_pname_bool(hAPP_p61793385e_bool(P,R),Q) = hAPP_pname_bool(hAPP_p61793385e_bool(cOMBC_1149511130e_bool(P),Q),R) ).

fof(fact_198_set__rev__mp,axiom,
    ! [B,X_2,A] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) )
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A)) ) ).

fof(fact_202_equalityD2,axiom,
    ! [A,B] :
      ( B = A
     => hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),A)) ) ).

fof(fact_205_equalityD1,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
     <= A = B ) ).

fof(fact_43_finite_OemptyI,axiom,
    hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,bot_bo844097828e_bool)) ).

fof(fact_54_finite__Collect__conjI,axiom,
    ! [Q_1,P_1] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fconj,P_1),Q_1))))
     <= ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(Q_1)))
        | hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(P_1))) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__fun_It,axiom,
    ! [P,Q,R] : hAPP_f1664156314l_bool(hAPP_f434788991l_bool(cOMBC_1284144636l_bool(P),Q),R) = hAPP_f1664156314l_bool(hAPP_f434788991l_bool(P,R),Q) ).

fof(fact_84_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),image_1283814551_pname(F,A)))
       => hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B)) )
     <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A)) ) ).

fof(fact_26_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa))
     => hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,image_47868345e_bool(H,Fa))) ) ).

fof(fact_286_singleton__conv2,axiom,
    ! [A_2] : collec1823980261e_bool(hAPP_f72706945l_bool(fequal1311889615e_bool,A_2)) = insert1556680138e_bool(A_2,bot_bo535777328l_bool) ).

fof(help_COMBS_1_1_COMBS_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_I,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_f637090980l_bool(P,R),hAPP_f971112728l_bool(Q,R)) = hAPP_f971112728l_bool(cOMBS_2066081387l_bool(P,Q),R) ).

fof(fact_177_insert__iff,axiom,
    ! [A_2,B_1,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),insert1415133716_state(B_1,A)))
    <=> ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),A))
        | A_2 = B_1 ) ) ).

fof(fact_193_equalityE,axiom,
    ! [A,B] :
      ( B = A
     => ~ ( ~ hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),A))
         <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B)) ) ) ).

fof(fact_25_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,image_70449425e_bool(H,Fa)))
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_I,axiom,
    ! [P,Q] : P = hAPP_p442853985e_bool(cOMBK_1706929794_pname(P),Q) ).

fof(fact_185_insert__Collect,axiom,
    ! [A_2,P_1] : insert1556680138e_bool(A_2,collec1823980261e_bool(P_1)) = collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fimplies,cOMBB_1522210668e_bool(fNot,hAPP_f72706945l_bool(cOMBC_449066458l_bool(fequal1311889615e_bool),A_2))),P_1)) ).

fof(fact_71_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
     => image_70449425e_bool(cOMBK_1706929794_pname(C_1),A) = insert1556680138e_bool(C_1,bot_bo535777328l_bool) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Com__Opname_000tc__fun_Itc__Com__Opname_Mtc__HOL__Ob,axiom,
    ! [P,Q,R] : hAPP_pname_bool(hAPP_f759274231e_bool(cOMBC_1058051404l_bool(P),Q),R) = hAPP_f1664156314l_bool(hAPP_p338031245l_bool(P,R),Q) ).

fof(fact_135_equals0D,axiom,
    ! [A_2,A] :
      ( bot_bo1649642514l_bool = A
     => ~ hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_2),A)) ) ).

fof(fact_240_image__empty,axiom,
    ! [F] : bot_bo620288102e_bool = image_2003357581_state(F,bot_bo844097828e_bool) ).

fof(fact_227_singleton__iff,axiom,
    ! [B_1,A_2] :
      ( ( is_pname(B_1)
        & is_pname(A_2) )
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,B_1),insert_pname(A_2,bot_bo844097828e_bool)))
      <=> B_1 = A_2 ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfe,axiom,
    ! [P,Q,R] : hAPP_f468958928l_bool(hAPP_f667366769l_bool(P,R),Q) = hAPP_f468958928l_bool(hAPP_f667366769l_bool(cOMBC_747715418l_bool(P),Q),R) ).

fof(fact_149_empty__Collect__eq,axiom,
    ! [P_1] :
      ( bot_bo1537088220l_bool = collec1613912337l_bool(P_1)
    <=> ! [X_1] :
          ( is_fun1661590463l_bool(X_1)
         => ~ hBOOL(hAPP_f1935102916l_bool(P_1,X_1)) ) ) ).

fof(fact_261_subset__insert,axiom,
    ! [B,X_2,A] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),B))
      <=> hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),insert1415133716_state(X_2,B))) )
     <= ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc__HOL__Oboo_005,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1661590463l_bool(B_2_1)
     => is_fun1661590463l_bool(hAPP_f559147733l_bool(B_1_1,B_2_1)) ) ).

fof(fact_181_insert__absorb2,axiom,
    ! [X_2,A] : insert1415133716_state(X_2,A) = insert1415133716_state(X_2,insert1415133716_state(X_2,A)) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_009,axiom,
    ! [P,Q,R] : hAPP_f32027384l_bool(cOMBB_689948150l_bool(P,Q),R) = hAPP_b589554111l_bool(P,hAPP_f1935102916l_bool(Q,R)) ).

fof(fact_225_doubleton__eq__iff,axiom,
    ! [A_2,B_1,C_1,D_1] :
      ( ( insert_pname(A_2,insert_pname(B_1,bot_bo844097828e_bool)) = insert_pname(C_1,insert_pname(D_1,bot_bo844097828e_bool))
      <=> ( ( A_2 = D_1
            & C_1 = B_1 )
          | ( D_1 = B_1
            & A_2 = C_1 ) ) )
     <= ( is_pname(C_1)
        & is_pname(D_1)
        & is_pname(B_1)
        & is_pname(A_2) ) ) ).

fof(fact_290_finite__subset__induct,axiom,
    ! [P_1,A,Fa] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,Fa),A))
       => ( ( ! [A_1,F_1] :
                ( ( is_fun_pname_bool(F_1)
                  & is_pname(A_1) )
               => ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_1),A))
                   => ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_1),F_1))
                     => ( hBOOL(hAPP_f1664156314l_bool(P_1,F_1))
                       => hBOOL(hAPP_f1664156314l_bool(P_1,insert_pname(A_1,F_1))) ) ) )
                 <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,F_1)) ) )
           => hBOOL(hAPP_f1664156314l_bool(P_1,Fa)) )
         <= hBOOL(hAPP_f1664156314l_bool(P_1,bot_bo844097828e_bool)) ) )
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa)) ) ).

fof(fact_250_insert__mono,axiom,
    ! [A_2,C_2,D] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,insert_pname(A_2,C_2)),insert_pname(A_2,D)))
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,C_2),D)) ) ).

fof(conj_0,hypothesis,
    hBOOL(hoare_165779456gleton) ).

fof(fact_97_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f166538662l_bool(hAPP_f585161855l_bool(ord_le287025148l_bool,B),image_1828608335e_bool(F,A)))
       => hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,B)) )
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,A)) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | hBOOL(P) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__Hoare__,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_f971112728l_bool(Q,R)) = hAPP_f971112728l_bool(cOMBB_1522210668e_bool(P,Q),R) ).

fof(fact_113_insertE,axiom,
    ! [A_2,B_1,A] :
      ( ( is_fun_pname_bool(B_1)
        & is_fun_pname_bool(A_2) )
     => ( ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_2),A))
         <= B_1 != A_2 )
       <= hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,A_2),insert1325755072e_bool(B_1,A))) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__Com__Opname_000tc__fun_Itc__Com__Opname_Mtc__HOL__Ob,axiom,
    ! [P,Q] :
      ( hAPP_f1297739591_pname(cOMBK_948730864e_bool(P),Q) = P
     <= is_pname(P) ) ).

fof(fact_287_MGF__lemma1,axiom,
    ! [C_1,G] :
      ( ( ! [X_1] :
            ( is_pname(X_1)
           => ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),dom_pname_com(body)))
             => hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,hAPP_pname_com(body_1,X_1)),bot_bo620288102e_bool))) ) )
       => ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(hAPP_c1126217667_state(hoare_Mirabelle_MGT,C_1),bot_bo620288102e_bool)))
         <= hBOOL(wt(C_1)) ) )
     <= hBOOL(hoare_165779456gleton) ) ).

fof(fact_80_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
     => ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,B))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_2003357581_state(F,A))) ) ) ).

fof(fact_6_derivs__insertD,axiom,
    ! [G,T,Ts] :
      ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(T,Ts)))
     => ( hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts))
        & hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),insert1415133716_state(T,bot_bo620288102e_bool))) ) ) ).

fof(fact_208_subset__refl,axiom,
    ! [A] : hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),A)) ).

fof(fact_283_singleton__conv2,axiom,
    ! [A_2] : insert_pname(A_2,bot_bo844097828e_bool) = collect_pname(hAPP_p61793385e_bool(fequal_pname,A_2)) ).

fof(fact_96_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,A))
     => ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B))
       <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),image_54689091_pname(F,A))) ) ) ).

fof(gsy_c_Set_Oimage_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__Com__Opnam,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(image_1283814551_pname(B_1_1,B_2_1))
     <= is_fun1661590463l_bool(B_2_1) ) ).

fof(fact_94_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f389811538l_bool(hAPP_f1759205631l_bool(ord_le1375671464l_bool,B),image_1210605179l_bool(F,A)))
       => hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,B)) )
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,A)) ) ).

fof(fact_233_finite__insert,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
    <=> hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,insert_pname(A_2,A))) ) ).

fof(fact_167_empty__def,axiom,
    collect_pname(cOMBK_bool_pname(fFalse)) = bot_bo844097828e_bool ).

fof(fact_28_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,image_1761575943l_bool(H,Fa)))
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,Fa)) ) ).

fof(fact_252_mem__def,axiom,
    ! [X_2,A] :
      ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_2),A))
    <=> hBOOL(hAPP_pname_bool(A,X_2)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo,axiom,
    ! [P,Q,R] : hAPP_p393069232l_bool(cOMBB_675860798_pname(P,Q),R) = hAPP_b589554111l_bool(P,hAPP_pname_bool(Q,R)) ).

fof(fact_194_subset__trans,axiom,
    ! [C_2,A,B] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),C_2))
       => hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),C_2)) )
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) ) ).

fof(fact_121_subsetD,axiom,
    ! [C_1,A,B] :
      ( ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,C_1),A))
       => hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,C_1),B)) )
     <= hBOOL(hAPP_f1935102916l_bool(hAPP_f510955609l_bool(ord_le675606854l_bool,A),B)) ) ).

fof(fact_237_subset__empty,axiom,
    ! [A] :
      ( ( A = bot_bo844097828e_bool
      <=> hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),bot_bo844097828e_bool)) )
     <= is_fun_pname_bool(A) ) ).

fof(fact_268_image__mono,axiom,
    ! [F,A,B] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,image_2003357581_state(F,A)),image_2003357581_state(F,B)))
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) ) ).

fof(fact_264_subset__insertI,axiom,
    ! [B,A_2] : hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),insert_pname(A_2,B))) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_I,axiom,
    ! [P,Q,R] : hAPP_f971112728l_bool(hAPP_f72706945l_bool(P,R),Q) = hAPP_f971112728l_bool(hAPP_f72706945l_bool(cOMBC_449066458l_bool(P),Q),R) ).

fof(fact_155_ex__in__conv,axiom,
    ! [A] :
      ( ( ? [X_1] :
            ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,X_1),A))
            & is_fun_pname_bool(X_1) )
      <=> bot_bo1649642514l_bool != A )
     <= is_fun1661590463l_bool(A) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | ~ hBOOL(Q)
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q)) ) ).

fof(fact_27_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,image_1210605179l_bool(H,Fa)))
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,Fa)) ) ).

fof(fact_179_insert__commute,axiom,
    ! [X_2,Y_2,A] : insert1415133716_state(Y_2,insert1415133716_state(X_2,A)) = insert1415133716_state(X_2,insert1415133716_state(Y_2,A)) ).

fof(fact_132_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( B_1 = hAPP_f1297739591_pname(F,X_2)
     => ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,X_2),A))
       => hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,B_1),image_1283814551_pname(F,A))) ) ) ).

fof(fact_271_Collect__conv__if,axiom,
    ! [P_1,A_2] :
      ( ( hBOOL(hAPP_pname_bool(P_1,A_2))
       => collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fconj,hAPP_p61793385e_bool(cOMBC_1149511130e_bool(fequal_pname),A_2)),P_1)) = insert_pname(A_2,bot_bo844097828e_bool) )
      & ( collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fconj,hAPP_p61793385e_bool(cOMBC_1149511130e_bool(fequal_pname),A_2)),P_1)) = bot_bo844097828e_bool
       <= ~ hBOOL(hAPP_pname_bool(P_1,A_2)) ) ) ).

fof(help_fimplies_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fimplies,P),Q))
      | hBOOL(P) ) ).

fof(fact_106_emptyE,axiom,
    ! [A_2] : ~ hBOOL(hAPP_f166538662l_bool(hAPP_f210337421l_bool(member2114907555e_bool,A_2),bot_bo535777328l_bool)) ).

fof(fact_45_finite_OemptyI,axiom,
    hBOOL(hAPP_f389811538l_bool(finite786885583l_bool,bot_bo1537088220l_bool)) ).

fof(fact_37_finite_OinsertI,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,insert1415133716_state(A_2,A)))
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,A)) ) ).

fof(gsy_c_Set_Oimage_000tc__Com__Opname_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(B_2_1)
     => is_fun1661590463l_bool(image_47868345e_bool(B_1_1,B_2_1)) ) ).

fof(fact_217_insert__compr__raw,axiom,
    ! [X_1,Xa] : collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fdisj,hAPP_p61793385e_bool(cOMBC_1149511130e_bool(fequal_pname),X_1)),hAPP_f759274231e_bool(cOMBC_1058051404l_bool(member_pname),Xa))) = insert_pname(X_1,Xa) ).

fof(help_COMBK_1_1_COMBK_000tc__Com__Opname_000tc__Hoare____Mirabelle____jfehddehev_,axiom,
    ! [P,Q] :
      ( is_pname(P)
     => P = hAPP_H1621176307_pname(cOMBK_168215364_state(P),Q) ) ).

fof(fact_48_finite_OemptyI,axiom,
    hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,bot_bo1649642514l_bool)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Hoare____Mirabelle____jfehddehev__O,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f468958928l_bool(B_1_1,B_2_1)) ).

fof(fact_276_Collect__conv__if2,axiom,
    ! [P_1,A_2] :
      ( ( ~ hBOOL(hAPP_H78829294e_bool(P_1,A_2))
       => bot_bo620288102e_bool = collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fconj,hAPP_H1049623551e_bool(fequal1111551311_state,A_2)),P_1)) )
      & ( insert1415133716_state(A_2,bot_bo620288102e_bool) = collec307967673_state(cOMBS_458705923l_bool(cOMBB_962198420_state(fconj,hAPP_H1049623551e_bool(fequal1111551311_state,A_2)),P_1))
       <= hBOOL(hAPP_H78829294e_bool(P_1,A_2)) ) ) ).

fof(fact_2_weaken,axiom,
    ! [Ts,G,Ts_1] :
      ( ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,Ts),Ts_1))
       => hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts)) )
     <= hBOOL(hAPP_f971112728l_bool(hoare_1598289066_state(G),Ts_1)) ) ).

fof(fact_14_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,image_2003357581_state(H,Fa)))
     <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,Fa)) ) ).

fof(fact_279_singleton__conv,axiom,
    ! [A_2] : collect_pname(hAPP_p61793385e_bool(cOMBC_1149511130e_bool(fequal_pname),A_2)) = insert_pname(A_2,bot_bo844097828e_bool) ).

fof(fact_188_insert__compr,axiom,
    ! [A_2,B] : collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fdisj,hAPP_f434788991l_bool(cOMBC_1284144636l_bool(fequal533582459e_bool),A_2)),hAPP_f559147733l_bool(cOMBC_1988546018l_bool(member799430823e_bool),B))) = insert1325755072e_bool(A_2,B) ).

fof(fact_277_Collect__conv__if2,axiom,
    ! [P_1,A_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(P_1,A_2))
       => collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fconj,hAPP_f434788991l_bool(fequal533582459e_bool,A_2)),P_1)) = insert1325755072e_bool(A_2,bot_bo1649642514l_bool) )
      & ( ~ hBOOL(hAPP_f1664156314l_bool(P_1,A_2))
       => collec1974731493e_bool(cOMBS_350070575l_bool(cOMBB_2095475776e_bool(fconj,hAPP_f434788991l_bool(fequal533582459e_bool,A_2)),P_1)) = bot_bo1649642514l_bool ) ) ).

fof(help_COMBS_1_1_COMBS_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__HOL__O,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_f1476298914l_bool(P,R),hAPP_f1664156314l_bool(Q,R)) = hAPP_f1664156314l_bool(cOMBS_350070575l_bool(P,Q),R) ).

fof(fact_182_insert__Collect,axiom,
    ! [A_2,P_1] : collect_pname(cOMBS_568398431l_bool(cOMBB_675860798_pname(fimplies,cOMBB_647938656_pname(fNot,hAPP_p61793385e_bool(cOMBC_1149511130e_bool(fequal_pname),A_2))),P_1)) = insert_pname(A_2,collect_pname(P_1)) ).

fof(gsy_c_Set_Oinsert_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun1661590463l_bool(B_2_1)
        & is_fun_pname_bool(B_1_1) )
     => is_fun1661590463l_bool(insert1325755072e_bool(B_1_1,B_2_1)) ) ).

fof(fact_119_equalityI,axiom,
    ! [A,B] :
      ( ( is_fun_pname_bool(B)
        & is_fun_pname_bool(A) )
     => ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B))
       => ( hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,B),A))
         => B = A ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_000tc__fun_Itc__Com__Op,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(B_2_1)
     => is_fun_pname_bool(hAPP_f759274231e_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Oboo,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f595608956l_bool(B_1_1,B_2_1)) ).

fof(fact_124_image__eqI,axiom,
    ! [A,B_1,F,X_2] :
      ( hAPP_H356885323e_bool(F,X_2) = B_1
     => ( hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,B_1),image_2131964411e_bool(F,A)))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_2),A)) ) ) ).

fof(fact_12_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,A))
     => hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,collec488126193l_bool(hAPP_f585161855l_bool(cOMBC_1691491604l_bool(ord_le287025148l_bool),A)))) ) ).

fof(help_fequal_2_1_fequal_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_H78829294e_bool(hAPP_H1049623551e_bool(fequal1111551311_state,X),Y))
      | Y != X ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__O,axiom,
    ! [B_1_1,B_2_1] : is_pname(hAPP_f560369737_pname(B_1_1,B_2_1)) ).

fof(fact_291_finite__subset__induct,axiom,
    ! [P_1,A,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,Fa))
     => ( ( hBOOL(hAPP_f971112728l_bool(P_1,bot_bo620288102e_bool))
         => ( hBOOL(hAPP_f971112728l_bool(P_1,Fa))
           <= ! [A_1,F_1] :
                ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,F_1))
               => ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_1),A))
                 => ( ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_1),F_1))
                   => ( hBOOL(hAPP_f971112728l_bool(P_1,insert1415133716_state(A_1,F_1)))
                     <= hBOOL(hAPP_f971112728l_bool(P_1,F_1)) ) ) ) ) ) )
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,Fa),A)) ) ) ).

fof(gsy_c_fFalse,axiom,
    is_bool(fFalse) ).

fof(fact_65_image__constant__conv,axiom,
    ! [C_1,A] :
      ( ( A != bot_bo535777328l_bool
       => insert_pname(C_1,bot_bo844097828e_bool) = image_187965177_pname(cOMBK_1589414042e_bool(C_1),A) )
      & ( A = bot_bo535777328l_bool
       => image_187965177_pname(cOMBK_1589414042e_bool(C_1),A) = bot_bo844097828e_bool ) ) ).

fof(gsy_c_Com_OWT,axiom,
    ! [B_1_1] : is_bool(wt(B_1_1)) ).

fof(gsy_c_HOL_Oundefined_000tc__Com__Opname,axiom,
    is_pname(undefined_pname(pname)) ).

fof(fact_11_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,A))
     => hBOOL(hAPP_f1022807134l_bool(finite34021339l_bool,collec256567069l_bool(hAPP_f667366769l_bool(cOMBC_747715418l_bool(ord_le889598034l_bool),A)))) ) ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple,axiom,
    ! [X,Y] :
      ( X != Y
      | hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(fequal1311889615e_bool,X),Y)) ) ).

fof(fact_60_image__constant__conv,axiom,
    ! [C_1,A] :
      ( ( ( insert1556680138e_bool(C_1,bot_bo535777328l_bool) = image_70449425e_bool(cOMBK_1706929794_pname(C_1),A)
         <= A != bot_bo844097828e_bool )
        & ( bot_bo535777328l_bool = image_70449425e_bool(cOMBK_1706929794_pname(C_1),A)
         <= A = bot_bo844097828e_bool ) )
     <= is_fun_pname_bool(A) ) ).

fof(help_COMBS_1_1_COMBS_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc_,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_f32027384l_bool(P,R),hAPP_f1935102916l_bool(Q,R)) = hAPP_f1935102916l_bool(cOMBS_811933079l_bool(P,Q),R) ).

fof(fact_58_image__constant__conv,axiom,
    ! [C_1,A] :
      ( ( bot_bo620288102e_bool = A
       => bot_bo535777328l_bool = image_1828608335e_bool(cOMBK_1039769424_state(C_1),A) )
      & ( A != bot_bo620288102e_bool
       => insert1556680138e_bool(C_1,bot_bo535777328l_bool) = image_1828608335e_bool(cOMBK_1039769424_state(C_1),A) ) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q))
      | ~ hBOOL(P) ) ).

fof(fact_111_insertCI,axiom,
    ! [B_1,A_2,B] :
      ( ( B_1 = A_2
       <= ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),B)) )
     => hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,A_2),insert_pname(B_1,B))) ) ).

fof(fact_31_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,Fa))
     => hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,image_54689091_pname(H,Fa))) ) ).

fof(fact_108_insertCI,axiom,
    ! [B_1,A_2,B] :
      ( ( B_1 = A_2
       <= ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),B)) )
     => hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),insert1415133716_state(B_1,B))) ) ).

fof(fact_8_finite__Collect__subsets,axiom,
    ! [A] :
      ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
     => hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,collec1974731493e_bool(hAPP_f434788991l_bool(cOMBC_1284144636l_bool(ord_le313189616e_bool),A)))) ) ).

fof(fact_281_singleton__conv,axiom,
    ! [A_2] : collec1974731493e_bool(hAPP_f434788991l_bool(cOMBC_1284144636l_bool(fequal533582459e_bool),A_2)) = insert1325755072e_bool(A_2,bot_bo1649642514l_bool) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple,axiom,
    ! [X,Y] :
      ( Y = X
      | ~ hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(fequal1311889615e_bool,X),Y)) ) ).

fof(fact_220_insert__compr__raw,axiom,
    ! [X_1,Xa] : insert1556680138e_bool(X_1,Xa) = collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fdisj,hAPP_f72706945l_bool(cOMBC_449066458l_bool(fequal1311889615e_bool),X_1)),hAPP_f1201187855l_bool(cOMBC_1114453604l_bool(member2114907555e_bool),Xa))) ).

fof(fact_22_finite__imageI,axiom,
    ! [H,Fa] :
      ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,image_516545147_state(H,Fa)))
     <= hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,Fa)) ) ).

fof(fact_95_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,B))
       <= hBOOL(hAPP_f468958928l_bool(hAPP_f667366769l_bool(ord_le889598034l_bool,B),image_1761575943l_bool(F,A))) )
     <= hBOOL(hAPP_f971112728l_bool(finite364844667_state,A)) ) ).

fof(gsy_c_hAPP_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__Ostate_J_0_002,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_H78829294e_bool(B_1_1,B_2_1)) ).

fof(fact_61_image__constant__conv,axiom,
    ! [C_1,A] :
      ( is_fun_pname_bool(A)
     => ( ( A != bot_bo844097828e_bool
         => insert_pname(C_1,bot_bo844097828e_bool) = image_pname_pname(cOMBK_pname_pname(C_1),A) )
        & ( image_pname_pname(cOMBK_pname_pname(C_1),A) = bot_bo844097828e_bool
         <= A = bot_bo844097828e_bool ) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Hoare____Mirabelle____jfehddehev__Otriple_I_013,axiom,
    ! [P,Q] : hAPP_H1049623551e_bool(cOMBK_1039769424_state(P),Q) = P ).

fof(fact_251_insert__mono,axiom,
    ! [A_2,C_2,D] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,C_2),D))
     => hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,insert1415133716_state(A_2,C_2)),insert1415133716_state(A_2,D))) ) ).

fof(fact_256_Collect__def,axiom,
    ! [P_1] :
      ( is_fun1661590463l_bool(P_1)
     => collec1974731493e_bool(P_1) = P_1 ) ).

fof(gsy_c_COMBK_000tc__HOL__Obool_000tc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J,axiom,
    ! [B_1_1] :
      ( is_fun1661590463l_bool(cOMBK_1857069011e_bool(B_1_1))
     <= is_bool(B_1_1) ) ).

fof(gsy_c_HOL_Oundefined_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc_,axiom,
    is_fun1661590463l_bool(undefi64961550l_bool(fun(fun(pname,bool),bool))) ).

fof(fact_161_all__not__in__conv,axiom,
    ! [A] :
      ( A = bot_bo620288102e_bool
    <=> ! [X_1] : ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,X_1),A)) ) ).

fof(fact_223_singletonE,axiom,
    ! [B_1,A_2] :
      ( ( hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,B_1),insert_pname(A_2,bot_bo844097828e_bool)))
       => B_1 = A_2 )
     <= ( is_pname(B_1)
        & is_pname(A_2) ) ) ).

fof(fact_75_image__constant,axiom,
    ! [C_1,X_2,A] :
      ( image_1283814551_pname(cOMBK_948730864e_bool(C_1),A) = insert_pname(C_1,bot_bo844097828e_bool)
     <= hBOOL(hAPP_f1935102916l_bool(hAPP_f556039215l_bool(member799430823e_bool,X_2),A)) ) ).

fof(fact_88_finite__surj,axiom,
    ! [B,F,A] :
      ( hBOOL(hAPP_f1935102916l_bool(finite595471783e_bool,A))
     => ( hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_516545147_state(F,A)))
       => hBOOL(hAPP_f971112728l_bool(finite364844667_state,B)) ) ) ).

fof(fact_209_subset__refl,axiom,
    ! [A] : hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,A),A)) ).

fof(help_COMBK_1_1_COMBK_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com__,axiom,
    ! [P,Q] : P = hAPP_p1422361149_state(cOMBK_367030522_pname(P),Q) ).

fof(help_COMBC_1_1_COMBC_000tc__Hoare____Mirabelle____jfehddehev__Otriple_Itc__Com___014,axiom,
    ! [P,Q,R] : hAPP_H78829294e_bool(hAPP_f98417237e_bool(cOMBC_1734175330l_bool(P),Q),R) = hAPP_f971112728l_bool(hAPP_H30606679l_bool(P,R),Q) ).

fof(conj_3,hypothesis,
    ~ hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,hAPP_c1126217667_state(hoare_Mirabelle_MGT,y)),fa)) ).

fof(fact_140_Collect__empty__eq,axiom,
    ! [P_1] :
      ( bot_bo1761158942l_bool = collec488126193l_bool(P_1)
    <=> ! [X_1] : ~ hBOOL(hAPP_f166538662l_bool(P_1,X_1)) ) ).

fof(fact_216_finite__Collect__disjI,axiom,
    ! [P_1,Q_1] :
      ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(cOMBS_2066081387l_bool(cOMBB_1585081418e_bool(fdisj,P_1),Q_1))))
    <=> ( hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(P_1)))
        & hBOOL(hAPP_f166538662l_bool(finite464017571e_bool,collec1823980261e_bool(Q_1))) ) ) ).

fof(gsy_c_Set_Oimage_000tc__Com__Opname_000tc__Com__Opname,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_pname_bool(image_pname_pname(B_1_1,B_2_1))
     <= is_fun_pname_bool(B_2_1) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__fun_Itc__Com__Opname_Mtc__HOL__Obool_J_Mtc_,axiom,
    ! [P,Q,R] : hAPP_f1935102916l_bool(hAPP_f510955609l_bool(P,R),Q) = hAPP_f1935102916l_bool(hAPP_f510955609l_bool(cOMBC_7971162l_bool(P),Q),R) ).

fof(fact_244_finite__subset,axiom,
    ! [A,B] :
      ( ( hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,A))
       <= hBOOL(hAPP_f1664156314l_bool(finite_finite_pname,B)) )
     <= hBOOL(hAPP_f1664156314l_bool(hAPP_f434788991l_bool(ord_le313189616e_bool,A),B)) ) ).

fof(fact_86_finite__surj,axiom,
    ! [B,F,A] :
      ( ( hBOOL(hAPP_f971112728l_bool(finite364844667_state,B))
       <= hBOOL(hAPP_f971112728l_bool(hAPP_f72706945l_bool(ord_le1285840794e_bool,B),image_892968839_state(F,A))) )
     <= hBOOL(hAPP_f468958928l_bool(finite796539827l_bool,A)) ) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_289_imageE,axiom,
    ! [B_1,F,A] :
      ( ~ ! [X_1] :
            ( is_pname(X_1)
           => ( ~ hBOOL(hAPP_f1664156314l_bool(hAPP_p338031245l_bool(member_pname,X_1),A))
             <= hAPP_p1422361149_state(F,X_1) = B_1 ) )
     <= hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,B_1),image_2003357581_state(F,A))) ) ).

fof(fact_169_insert__absorb,axiom,
    ! [A_2,A] :
      ( hBOOL(hAPP_f971112728l_bool(hAPP_H30606679l_bool(member1338687867_state,A_2),A))
     => A = insert1415133716_state(A_2,A) ) ).

