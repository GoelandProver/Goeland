fof(fact_717_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_A862370221t_bool(Pa,X_2))
       => hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)) = hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_488_split__conv,axiom,
    ! [F,Aa,Ba] : hAPP_l391088160le_alt(hAPP_l1869074853le_alt(F,Aa),Ba) = hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,F),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)) ).

fof(fact_1178_diff__Suc__diff__eq2,axiom,
    ! [M,K_2,J] :
      ( hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(suc,hAPP_nat_nat(minus_minus_nat(J),K_2))),M) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(suc,J)),hAPP_nat_nat(plus_plus_nat(K_2),M))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell_161,axiom,
    ! [P,Q,R] : hAPP_f1349184697le_alt(P,hAPP_l1869074853le_alt(Q,R)) = hAPP_l489874441le_alt(hAPP_f1318121625le_alt(hAPP_f634775919le_alt(cOMBB_576205818le_alt,P),Q),R) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabel_066,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f167218729l_bool(B_1_1,B_2_1)) ).

fof(fact_753_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_nat_bool(Pa,X_2))
       => hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(dropWhile_nat(Pa),Xs_1)),Ys_1) = hAPP_l248265089st_nat(dropWhile_nat(Pa),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),Ys_1)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(fact_642_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_1))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
       => hAPP_l248265089st_nat(takeWhile_nat(hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,fNot),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),X_2))),hAPP_l248265089st_nat(rev_nat,Xs_1)) = hAPP_l248265089st_nat(rev_nat,hAPP_l248265089st_nat(tl_nat,hAPP_l248265089st_nat(dropWhile_nat(hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,fNot),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),X_2))),Xs_1))) ) ) ).

fof(fact_10_in__mkbot,axiom,
    ! [X_2,Y_2,L_2,Z_3] :
      ( ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(Z_3)
        & is_Arr1861959080le_alt(X_2) )
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),hAPP_A568203993t_bool(arrow_1495666017_mkbot(L_2),Z_3)))
      <=> ( ( Z_3 = X_2
           => X_2 != Y_2 )
          & ( X_2 != Z_3
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),L_2)) )
          & Z_3 != Y_2 ) ) ) ).

fof(fact_57_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f599145828l_bool(hAPP_f2116028941l_bool(member2056165217t_bool,F),pi_boo175444770t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_b317196972t_bool(F,X_2)),hAPP_b1048178734l_bool(B_1,X_2))) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell_162,axiom,
    ! [P,Q,R] : hAPP_l1406283231le_alt(hAPP_f469186021le_alt(hAPP_f1933751673le_alt(cOMBB_1193902096le_alt,P),Q),R) = hAPP_f2001490223le_alt(P,hAPP_l1869074853le_alt(Q,R)) ).

fof(fact_1153_add__diff__assoc2,axiom,
    ! [I_2,K_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J))
     => hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(J),I_2)),K_2) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(J),K_2)),I_2) ) ).

fof(fact_568_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Z_3),hAPP_P1861769507t_bool(hAPP_f906821569t_bool(produc2091914181t_bool,Ca),P_1)))
     => ~ ! [X_1,Y_9] :
            ( P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9)
           => ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Z_3),hAPP_l1284365004t_bool(hAPP_l1538437917t_bool(Ca,X_1),Y_9))) ) ) ).

fof(fact_423_last__snoc,axiom,
    ! [Xs_30,X_26] :
      ( X_26 = last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_30),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_26),nil_Ar126264853le_alt)))
     <= is_Arr1861959080le_alt(X_26) ) ).

fof(fact_477_Cons__listrel1E2,axiom,
    ! [Xs_1,Y_2,Ys_1,R_2] :
      ( ( ~ ! [Zs] :
              ( Xs_1 = hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Zs)
             => ~ hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Zs),Ys_1)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2))) )
       <= ! [X_1] :
            ( Xs_1 = hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_1),Ys_1)
           => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_2)),R_2)) ) )
     <= hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1))),hAPP_f1662382841t_bool(listre635569361le_alt,R_2))) ) ).

fof(fact_609_rev__append,axiom,
    ! [Xs_9,Ys_2] : hAPP_l726444215le_alt(rev_Ar2093961333le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_9),Ys_2)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Ys_2)),hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_9)) ).

fof(fact_584_replicate__app__Cons__same,axiom,
    ! [N_10,X_18,Xs_20] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_18),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_10),X_18)),Xs_20)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_10),X_18)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_18),Xs_20)) ).

fof(fact_367_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),top_to1576102282i_bool)) ).

fof(fact_1160_le__add__diff,axiom,
    ! [M,K_2,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(N),M)),K_2)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),N)) ) ).

fof(fact_123_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_b1703662281t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f817604743l_bool(hAPP_f1345320373l_bool(member357566570t_bool,F),pi_boo538701011t_bool(A_1,hAPP_f256804927l_bool(cOMBK_69806648l_bool,B_1)))) ) ).

fof(fact_916_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Ca),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Ca),B_1)) ) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__prod_I,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(hAPP_A638717112le_alt(B_1_1,B_2_1))
     <= is_Arr43961803e_indi(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_P1327827171t_bool(B_1_1,B_2_1)) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__fun_Itc_118,axiom,
    ! [P,Q] :
      ( hAPP_f839832464l_bool(hAPP_f746617550l_bool(cOMBK_370033373t_bool,P),Q) = P
     <= is_fun_bool_bool(P) ) ).

fof(fact_240_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_n324757596le_alt(F,X_1)),B_1))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1)) )
     => hBOOL(hAPP_f2115479956l_bool(hAPP_f975710927l_bool(member24871799le_alt,F),pi_nat249006182le_alt(A_1,hAPP_f1328016200t_bool(cOMBK_856666543ol_nat,B_1)))) ) ).

fof(fact_1177_diff__Suc__diff__eq1,axiom,
    ! [M,K_2,J] :
      ( hAPP_nat_nat(minus_minus_nat(M),hAPP_nat_nat(suc,hAPP_nat_nat(minus_minus_nat(J),K_2))) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(M),K_2)),hAPP_nat_nat(suc,J))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J)) ) ).

fof(fact_666_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( is_fun760276937t_bool(Y_2)
        & is_fun760276937t_bool(X_2) )
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Y_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Xs_1))))
       => ( X_2 = Y_2
          | hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Y_2),set_fu1865467835t_bool(Xs_1))) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Nat__Onat_Mtc__fun_Itc__prod_Itc__Arrow____O,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f307807922l_bool(B_1_1,B_2_1)) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____,axiom,
    ! [X,Y] :
      ( ( is_fun961089132t_bool(X)
        & is_fun961089132t_bool(Y) )
     => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(fequal1258273448t_bool,X),Y))
        | X = Y ) ) ).

fof(fact_953_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,A_1),B_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),B_1)) )
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1)) ) ).

fof(fact_973_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_2),Xs_1))))
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(fact_1184_zero__induct__lemma,axiom,
    ! [I_1,Pa,K] :
      ( hBOOL(hAPP_nat_bool(Pa,K))
     => ( hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(minus_minus_nat(K),I_1)))
       <= ! [N_1] :
            ( hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(suc,N_1)))
           => hBOOL(hAPP_nat_bool(Pa,N_1)) ) ) ) ).

fof(gsy_v_F,axiom,
    is_fun1097062475t_bool(f) ).

fof(fact_866_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Ys))) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_451_UNIV__witness,axiom,
    ? [X_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),top_to1714702858l_bool))
      & is_fun1097062475t_bool(X_1) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___154,axiom,
    ! [P,Q,R] : hAPP_f653880381t_bool(P,hAPP_A1553574765l_bool(Q,R)) = hAPP_A572596845t_bool(hAPP_f1324249913t_bool(hAPP_f1267389329t_bool(cOMBB_747702273le_alt,P),Q),R) ).

fof(fact_1059_termination__basic__simps_I1_J,axiom,
    ! [Z,X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Y))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),hAPP_nat_nat(plus_plus_nat(Y),Z))) ) ).

fof(fact_224_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_P710098616e_indi(F,X_1)),B_1)) )
         <= is_Pro1725146340le_alt(X_1) )
     => hBOOL(hAPP_f1306865520l_bool(hAPP_f407092109l_bool(member234128621e_indi,F),pi_Pro1270767662e_indi(A_1,hAPP_f1348208725i_bool(cOMBK_1915602921le_alt,B_1)))) ) ).

fof(fact_418_last__append,axiom,
    ! [Xs_32,Ys_8] :
      ( ( last_A57386030le_alt(Xs_32) = last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_32),Ys_8))
       <= nil_Ar126264853le_alt = Ys_8 )
      & ( last_A57386030le_alt(Ys_8) = last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_32),Ys_8))
       <= Ys_8 != nil_Ar126264853le_alt ) ) ).

fof(fact_482_Nil__notin__lex,axiom,
    ! [Ys_1,R_2] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,nil_Ar126264853le_alt),Ys_1)),hAPP_f1865483825t_bool(lex_Ar255587961le_alt,R_2))) ).

fof(gsy_c_Set_OCollect_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oi,axiom,
    ! [B_1_1] :
      ( is_fun288122577l_bool(B_1_1)
     => is_fun288122577l_bool(collec1063742455t_bool(B_1_1)) ) ).

fof(fact_1194_Suc__eq__plus1__left,axiom,
    ! [N] : hAPP_nat_nat(suc,N) = hAPP_nat_nat(plus_plus_nat(one_one_nat),N) ).

fof(fact_1051_le__less__Suc__eq,axiom,
    ! [M_2,N_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),hAPP_nat_nat(suc,M_2)))
      <=> N_2 = M_2 )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) ) ).

fof(fact_1045_nat__less__le,axiom,
    ! [M_2,N_2] :
      ( ( M_2 != N_2
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2)) ) ).

fof(fact_9__096_I_Fp_O_Abelow_A_IP_Ap_J_Ac_Ab_J_A_058_AProf_096,axiom,
    hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,arrow_1539419881_below),p)),c)),b)),arrow_1721807329e_Prof)) ).

fof(fact_1070_termination__basic__simps_I3_J,axiom,
    ! [Z,X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),Y))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),hAPP_nat_nat(plus_plus_nat(Y),Z))) ) ).

fof(fact_637_rtrancl_Ortrancl__into__rtrancl,axiom,
    ! [Ca,Aa,Ba,R_2] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ca)),transi992120749le_alt(R_2)))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ba),Ca)),R_2)) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),transi992120749le_alt(R_2))) ) ).

fof(fact_378_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),top_to565915683t_bool)) ).

fof(fact_1158_add__diff__assoc,axiom,
    ! [I_2,K_2,J] :
      ( hAPP_nat_nat(plus_plus_nat(I_2),hAPP_nat_nat(minus_minus_nat(J),K_2)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(I_2),J)),K_2)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J)) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnf_017,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_fun1236654035i_bool(hAPP_b1337486384i_bool(B_1_1,B_2_1)) ) ).

fof(fact_537_distinct__tl,axiom,
    ! [Xs_24] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(tl_Arr1453005548le_alt,Xs_24)))
     <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_24)) ) ).

fof(fact_643_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l54057324t_bool(distin1553582624le_alt,Xs_1))
     => ( hAPP_l1493873365le_alt(rev_Pr464210035le_alt,hAPP_l1493873365le_alt(tl_Pro292865596le_alt,hAPP_l1493873365le_alt(dropWh1604595954le_alt(hAPP_f1642286869t_bool(hAPP_f62793075t_bool(cOMBB_1604919143le_alt,fNot),hAPP_P163071551t_bool(hAPP_f2139078121t_bool(cOMBC_1470522126t_bool,fequal673514820le_alt),X_2))),Xs_1))) = hAPP_l1493873365le_alt(takeWh416411546le_alt(hAPP_f1642286869t_bool(hAPP_f62793075t_bool(cOMBB_1604919143le_alt,fNot),hAPP_P163071551t_bool(hAPP_f2139078121t_bool(cOMBC_1470522126t_bool,fequal673514820le_alt),X_2))),hAPP_l1493873365le_alt(rev_Pr464210035le_alt,Xs_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ) ).

fof(fact_668_set__rev,axiom,
    ! [Xs_1] : set_Ar1565008694le_alt(hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1)) = set_Ar1565008694le_alt(Xs_1) ).

fof(fact_204_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_n1965810497t_bool(F,X_1)),hAPP_n2095207769l_bool(B_1,X_1))) )
     => hBOOL(hAPP_f903371257l_bool(hAPP_f1546082457l_bool(member1494731740t_bool,F),pi_nat1317494091t_bool(A_1,B_1))) ) ).

fof(fact_800_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),set_nat(Xs_1)))
         => hBOOL(hAPP_nat_bool(Pa,X_1)) )
     => hAPP_l248265089st_nat(takeWhile_nat(Pa),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),Ys_1)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),hAPP_l248265089st_nat(takeWhile_nat(Pa),Ys_1)) ) ).

fof(fact_221_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_P339823136lt_nat(F,X_1)),B_1))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) )
         <= is_Pro1725146340le_alt(X_1) )
     => hBOOL(hAPP_f2042909150l_bool(hAPP_f1073701219l_bool(member547554753lt_nat,F),pi_Pro264071722lt_nat(A_1,hAPP_f1809347209t_bool(cOMBK_1632198563le_alt,B_1)))) ) ).

fof(fact_136_splice_Osimps_I3_J,axiom,
    ! [X_37,Xs_51,Y_14,Ys_20] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_37),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_14),hAPP_l726444215le_alt(splice360969192le_alt(Xs_51),Ys_20))) = hAPP_l726444215le_alt(splice360969192le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_37),Xs_51)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_14),Ys_20)) ).

fof(fact_603_listrel__rtrancl__eq__rtrancl__listrel1,axiom,
    ! [R_2] : transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2)) = hAPP_f1865483825t_bool(listre760726333le_alt,transi1256616594le_alt(R_2)) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000_105,axiom,
    ! [P,Q,R] : hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(P,R),Q) = hAPP_A1785763630i_bool(hAPP_f580451669i_bool(hAPP_f712459161i_bool(cOMBC_1781321570l_bool,P),Q),R) ).

fof(fact_553_splitE,axiom,
    ! [Ca,P_1] :
      ( ( ~ ! [X_1,Y_9] :
              ( ( hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) = P_1
               => ~ hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Ca,X_1),Y_9)) )
             <= ( is_Arr1861959080le_alt(Y_9)
                & is_Arr1861959080le_alt(X_1) ) )
       <= hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,Ca),P_1)) )
     <= is_Pro1725146340le_alt(P_1) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_nat_bool(Q,R)) = hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,P),Q),R) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(hAPP_bool_bool(fNot,P))
      | ~ hBOOL(P) ) ).

fof(fact_756_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( hAPP_l54953109e_indi(dropWh601337149e_indi(Pa),hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Xs_1),Ys_1)) = hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,hAPP_l54953109e_indi(dropWh601337149e_indi(Pa),Xs_1)),Ys_1)
       <= ~ hBOOL(hAPP_A1785763630i_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ).

fof(fact_430_UNIV__def,axiom,
    collec1553055422t_bool(hAPP_b1812770943l_bool(cOMBK_1656150864t_bool,fTrue)) = top_to1853035173l_bool ).

fof(fact_575_rotate1__hd__tl,axiom,
    ! [Xs_22] :
      ( Xs_22 != nil_Ar126264853le_alt
     => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(tl_Arr1453005548le_alt,Xs_22)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,hd_Arr805754088le_alt(Xs_22)),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(rotate1322903650le_alt,Xs_22) ) ).

fof(fact_454_UNIV__eq__I,axiom,
    ! [A_1] :
      ( ( top_to1647826457l_bool = A_1
       <= ! [X_1] :
            ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           <= is_bool(X_1) ) )
     <= is_fun_bool_bool(A_1) ) ).

fof(fact_117_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f1271753300l_bool(hAPP_f1254328783l_bool(member1986685623t_bool,F),pi_Arr1600668070t_bool(A_1,hAPP_f1739666797l_bool(cOMBK_8746725le_alt,B_1)))) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_007,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1097062475t_bool(hAPP_A1159885342t_bool(B_1_1,B_2_1))
     <= is_Arr1861959080le_alt(B_2_1) ) ).

fof(fact_1122_diff__less,axiom,
    ! [M,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(M),N)),M)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_1176_min__Suc2,axiom,
    ! [M_2,N_2] : hAPP_nat_nat(nat_case_nat(zero_zero_nat,hAPP_f1914919701at_nat(hAPP_f1585078997at_nat(cOMBB_nat_nat_nat,suc),hAPP_nat_fun_nat_nat(hAPP_f416620757at_nat(cOMBC_nat_nat_nat,ord_min_nat),N_2))),M_2) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,M_2),hAPP_nat_nat(suc,N_2)) ).

fof(fact_1110_add__is__0,axiom,
    ! [M_2,N_2] :
      ( zero_zero_nat = hAPP_nat_nat(plus_plus_nat(M_2),N_2)
    <=> ( zero_zero_nat = M_2
        & zero_zero_nat = N_2 ) ) ).

fof(fact_818_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Ys),hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Ys))) )
    <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ).

fof(fact_436_lexord__append__leftD,axiom,
    ! [X_2,U,V,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,X_2),U)),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,X_2),V))),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,U),V)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
       <= ! [A_7] :
            ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),A_7)),R_2))
           <= is_Arr1861959080le_alt(A_7) ) ) ) ).

fof(fact_340_Prof__def,axiom,
    arrow_1721807329e_Prof = pi_Arr990697634t_bool(top_to1576102282i_bool,hAPP_f1659309744l_bool(cOMBK_657557929e_indi,arrow_1681063817le_Lin)) ).

fof(fact_525_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Z_3),hAPP_P139894920l_bool(hAPP_f86548619l_bool(produc998313258l_bool,Ca),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba))))
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Z_3),hAPP_l1328583473l_bool(hAPP_l395992834l_bool(Ca,Aa),Ba))) ) ).

fof(fact_42_list_Oinject,axiom,
    ! [Aa,List,A_8,List_2] :
      ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),List) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_8),List_2)
      <=> ( Aa = A_8
          & List = List_2 ) )
     <= ( is_Arr1861959080le_alt(A_8)
        & is_Arr1861959080le_alt(Aa) ) ) ).

fof(fact_235_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f570668343l_bool(hAPP_f2111526677l_bool(member1881985050ol_nat,F),pi_fun2080023171ol_nat(A_1,hAPP_f1362748656t_bool(cOMBK_208474378t_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1416261241ol_nat(F,X_1)),B_1)) )
         <= is_fun1097062475t_bool(X_1) ) ) ).

fof(gsy_c_Arrow__Order__Mirabelle__tpnfnnbpuu_OLin,axiom,
    is_fun279392540l_bool(arrow_1681063817le_Lin) ).

fof(fact_810_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Ys))) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(fact_175_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A1159885342t_bool(F,X_2)),hAPP_A366518464l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f196630486l_bool(hAPP_f1212866771l_bool(member392258873t_bool,F),pi_Arr44017448t_bool(A_1,B_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__035,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1236654035i_bool(hAPP_f1948454017i_bool(B_1_1,B_2_1))
     <= is_fun760276937t_bool(B_2_1) ) ).

fof(fact_342_lexord__cons__cons,axiom,
    ! [Aa,X_2,Ba,Y_2,R_2] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),X_2)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Ba),Y_2))),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
      <=> ( ( Ba = Aa
            & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) )
          | hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),R_2)) ) )
     <= ( is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(Ba) ) ) ).

fof(fact_519_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_3),hAPP_P2136891882t_bool(hAPP_f1984771213t_bool(produc1527919682t_bool,Ca),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_3),hAPP_A1862272720t_bool(hAPP_A1470764750t_bool(Ca,Aa),Ba))) ) ).

fof(fact_187_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f836059805e_indi(F,X_1)),hAPP_f1948454017i_bool(B_1,X_1)))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) )
         <= is_fun760276937t_bool(X_1) )
     => hBOOL(hAPP_f1725204053l_bool(hAPP_f666018637l_bool(member905797074e_indi,F),pi_fun753830419e_indi(A_1,B_1))) ) ).

fof(fact_833_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
    <=> ? [Ys,Zs] : Xs_1 = hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Ys),hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Zs)) ) ).

fof(fact_248_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1252760917l_bool(hAPP_f40035149l_bool(member855864530t_bool,F),pi_Arr2020412179t_bool(A_1,hAPP_f1686853802l_bool(cOMBK_215999438e_indi,B_1))))
     <= ! [X_1] :
          ( is_Arr43961803e_indi(X_1)
         => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A2102641565t_bool(F,X_1)),B_1)) ) ) ) ).

fof(fact_650_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1))
     => ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),hAPP_l726444215le_alt(rev_Ar2093961333le_alt,hAPP_l726444215le_alt(takeWh536362254le_alt(hAPP_f2014742713t_bool(hAPP_f27970449t_bool(cOMBB_2104979073le_alt,fNot),hAPP_A1664620203t_bool(hAPP_f825175477t_bool(cOMBC_1628726426t_bool,fequal1160105444le_alt),X_2))),Xs_1))) = hAPP_l726444215le_alt(dropWh156852662le_alt(hAPP_f2014742713t_bool(hAPP_f27970449t_bool(cOMBB_2104979073le_alt,fNot),hAPP_A1664620203t_bool(hAPP_f825175477t_bool(cOMBC_1628726426t_bool,fequal1160105444le_alt),X_2))),hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ) ).

fof(fact_808_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l1766111573le_alt(takeWh1529274110le_alt(Pa),hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Xs_1),Ys_1)) = hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Xs_1),hAPP_l1766111573le_alt(takeWh1529274110le_alt(Pa),Ys_1))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),set_Pr604701398le_alt(Xs_1)))
           => hBOOL(hAPP_P606313927t_bool(Pa,X_1)) )
         <= is_Pro1725146340le_alt(X_1) ) ) ).

fof(fact_158_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f859154022l_bool(hAPP_f976491405l_bool(member2061588323l_bool,F),pi_fun52649508l_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f312250286l_bool(F,X_2)),hAPP_f1624277646l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1)) ) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1236654035i_bool(hAPP_A313542399i_bool(B_1_1,B_2_1))
     <= is_Arr43961803e_indi(B_2_1) ) ).

fof(fact_969_order__eq__refl,axiom,
    ! [X_4,Y_3] :
      ( X_4 = Y_3
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_4),Y_3)) ) ).

fof(fact_112_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1276380911l_bool(hAPP_f1868812933l_bool(member26406738le_alt,F),pi_Arr55294401le_alt(A_1,hAPP_f393984045t_bool(cOMBK_673344138le_alt,B_1))))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(F,X_2)),B_1)) ) ) ).

fof(fact_698_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_2),Xs_1) = Xs_1 ) ).

fof(fact_613_list__update__code_I1_J,axiom,
    ! [I_5,Y_10] : hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(nil_Ar126264853le_alt),I_5),Y_10) = nil_Ar126264853le_alt ).

fof(fact_1199_add__eq__if,axiom,
    ! [N,M] :
      ( ( zero_zero_nat != M
       => hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(M),one_one_nat)),N)) = hAPP_nat_nat(plus_plus_nat(M),N) )
      & ( hAPP_nat_nat(plus_plus_nat(M),N) = N
       <= zero_zero_nat = M ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__039,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun1097062475t_bool(B_1_1)
        & is_fun760276937t_bool(B_2_1) )
     => is_fun961089132t_bool(hAPP_f412050202t_bool(B_1_1,B_2_1)) ) ).

fof(fact_1040_Suc__leD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M)),N)) ) ).

fof(fact_118_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A2102641565t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) )
     <= hBOOL(hAPP_f1252760917l_bool(hAPP_f40035149l_bool(member855864530t_bool,F),pi_Arr2020412179t_bool(A_1,hAPP_f1686853802l_bool(cOMBK_215999438e_indi,B_1)))) ) ).

fof(fact_590_listrelp_Osimps,axiom,
    ! [R_2,A1,A2] :
      ( ( ? [X_1,Y_9,Xs_17,Ys] :
            ( is_Arr1861959080le_alt(Y_9)
            & A2 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Ys)
            & hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(R_2,X_1),Y_9))
            & hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(listre53232751le_alt(R_2),Xs_17),Ys))
            & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs_17) = A1
            & is_Arr1861959080le_alt(X_1) )
        | ( A1 = nil_Ar126264853le_alt
          & A2 = nil_Ar126264853le_alt ) )
    <=> hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(listre53232751le_alt(R_2),A1),A2)) ) ).

fof(fact_472_listrel1I,axiom,
    ! [Ys_1,Xs_1,Us_1,Vs_1,X_2,Y_2,R_2] :
      ( ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
         <= hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Vs_1)) = Ys_1 )
       <= hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Vs_1)) = Xs_1 )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_2)) ) ).

fof(fact_697_set__rotate1,axiom,
    ! [Xs_1] : set_Ar1565008694le_alt(Xs_1) = set_Ar1565008694le_alt(hAPP_l726444215le_alt(rotate1322903650le_alt,Xs_1)) ).

fof(fact_904_rtrancl_Osimps,axiom,
    ! [A1,A2,R_2] :
      ( ( is_Arr1861959080le_alt(A1)
        & is_Arr1861959080le_alt(A2) )
     => ( ( ? [A_7] :
              ( is_Arr1861959080le_alt(A_7)
              & A2 = A_7
              & A1 = A_7 )
          | ? [A_7,B_6,C_5] :
              ( is_Arr1861959080le_alt(C_5)
              & A_7 = A1
              & A2 = C_5
              & hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,B_6),C_5)),R_2))
              & hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),transi1256616594le_alt(R_2)))
              & is_Arr1861959080le_alt(B_6)
              & is_Arr1861959080le_alt(A_7) ) )
      <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A1),A2)),transi1256616594le_alt(R_2))) ) ) ).

fof(fact_336_null__rec_I2_J,axiom,
    hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,nil_Ar126264853le_alt)) ).

fof(fact_748_hd__in__set,axiom,
    ! [Xs_1] :
      ( nil_bool != Xs_1
     => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hd_bool(Xs_1)),set_bool(Xs_1))) ) ).

fof(fact_217_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f651410150l_bool(hAPP_f742962061l_bool(member478669795t_bool,F),pi_boo1117000868t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_b1376601646t_bool(F,X_1)),hAPP_b517355696l_bool(B_1,X_1))) )
         <= is_bool(X_1) ) ) ).

fof(fact_1147_diff__commute,axiom,
    ! [I_2,J,K_2] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(I_2),J)),K_2) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(I_2),K_2)),J) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__033,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun288122577l_bool(B_1_1)
        & is_fun760276937t_bool(B_2_1) )
     => is_bool(hAPP_f965095724l_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabel,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f68732431l_bool(B_1_1,B_2_1)) ).

fof(fact_234_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f167218729l_bool(hAPP_f1666015481l_bool(member880664588l_bool,F),pi_fun1575168891l_bool(A_1,hAPP_f1460506473l_bool(cOMBK_1693871704t_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f592646513l_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) )
         <= is_fun961089132t_bool(X_1) ) ) ).

fof(fact_500_internal__split__def,axiom,
    produc748227559le_alt = produc49943708le_alt ).

fof(fact_1179_ex__least__nat__le,axiom,
    ! [N_2,Pa] :
      ( ( ? [K_1] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_1),N_2))
            & hBOOL(hAPP_nat_bool(Pa,K_1))
            & ! [I] :
                ( ~ hBOOL(hAPP_nat_bool(Pa,I))
               <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),K_1)) ) )
       <= hBOOL(hAPP_nat_bool(Pa,N_2)) )
     <= ~ hBOOL(hAPP_nat_bool(Pa,zero_zero_nat)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Arrow____Order____Mirabelle____tpn,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => hAPP_A862370221t_bool(hAPP_b30302907t_bool(cOMBK_1646462604le_alt,P),Q) = P ) ).

fof(fact_705_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
     => Xs_1 = hAPP_l1660244757t_bool(hAPP_f726713198t_bool(insert1665396998t_bool,X_2),Xs_1) ) ).

fof(fact_497_curry__split,axiom,
    ! [F] :
      ( is_fun2093718614t_bool(F)
     => produc212588606t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F)) = F ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_047,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1097062475t_bool(B_2_1)
     => is_Arr1861959080le_alt(hAPP_f1800079444le_alt(B_1_1,B_2_1)) ) ).

fof(fact_923_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,R_1),S_1))
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),R_1)),hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,member_nat),S_1))) ) ).

fof(fact_709_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_l54057324t_bool(distin1553582624le_alt,Xs_1))
        & ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) )
    <=> hBOOL(hAPP_l54057324t_bool(distin1553582624le_alt,hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order____075,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f354239713l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___078,hypothesis,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_f592646513l_bool(B_1_1,B_2_1))
     <= ( is_fun279392540l_bool(B_1_1)
        & is_fun961089132t_bool(B_2_1) ) ) ).

fof(fact_935_order__trans,axiom,
    ! [Z_1,X_6,Y_5] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_6),Y_5))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_5),Z_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_6),Z_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_041,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1525366679l_bool(B_1_1,B_2_1)) ).

fof(fact_547_listrel__Cons1,axiom,
    ! [Y_2,Ys_1,Xs_1,R_2] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1)),Xs_1)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2)))
     => ~ ! [Y_9,Ys] :
            ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_2),Y_9)),R_2))
             => ~ hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Ys_1),Ys)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2))) )
           <= hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_9),Ys) = Xs_1 ) ) ).

fof(fact_1014_less__irrefl__nat,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),N)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabell_063,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f570668343l_bool(B_1_1,B_2_1)) ).

fof(fact_1149_minus__nat_Odiff__0,axiom,
    ! [M] : M = hAPP_nat_nat(minus_minus_nat(M),zero_zero_nat) ).

fof(fact_499_internal__split__def,axiom,
    produc2022255647t_bool = produc1817385812t_bool ).

fof(fact_466_append__listrel1I,axiom,
    ! [Us_1,Vs_1,Xs_1,Ys_1,R_2] :
      ( ( ( Ys_1 = Xs_1
          & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Us_1),Vs_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) )
        | ( Vs_1 = Us_1
          & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) )
     => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Us_1)),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_1),Vs_1))),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ).

fof(fact_683_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(takeWhile_bool(Pa),Xs_1))))
     => ( hBOOL(hAPP_bool_bool(Pa,X_2))
        & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ) ).

fof(fact_1123_less__nat__zero__code,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),zero_zero_nat)) ).

fof(fact_23__C1_C,axiom,
    ! [P_a,Pa,A_8,B_7,Aa,Ba] :
      ( ( ( B_7 != A_8
         => ( B_7 != Aa
           => ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Pa),arrow_1721807329e_Prof))
               => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,P_a),arrow_1721807329e_Prof))
                 => ( ! [I] :
                        ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_8),B_7)),hAPP_A1677245848t_bool(P_a,I)))
                        <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),hAPP_A1677245848t_bool(Pa,I))) )
                       <= is_Arr43961803e_indi(I) )
                   => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_8),B_7)),hAPP_f412050202t_bool(f,P_a)))
                     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),hAPP_f412050202t_bool(f,Pa))) ) ) ) )
             <= A_8 != Ba ) ) )
       <= Ba != Aa )
     <= ( is_Arr1861959080le_alt(B_7)
        & is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(Ba)
        & is_Arr1861959080le_alt(A_8) ) ) ).

fof(fact_627_rtrancl__listrel1__eq__len,axiom,
    ! [X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2))))
     => hAPP_l1872264749lt_nat(size_s1873794948le_alt,Y_2) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,X_2) ) ).

fof(fact_252_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) ) )
     => hBOOL(hAPP_f1525366679l_bool(hAPP_f586020557l_bool(member1055039380t_bool,F),pi_Arr1306565967t_bool(A_1,hAPP_f589776703l_bool(cOMBK_1638246986le_alt,B_1)))) ) ).

fof(fact_1198_Suc__diff__1,axiom,
    ! [N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N))
     => hAPP_nat_nat(suc,hAPP_nat_nat(minus_minus_nat(N),one_one_nat)) = N ) ).

fof(fact_820_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Zs)))
          & hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs)) = Xs_1 )
    <=> hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_1131_diff__is__0__eq_H,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => zero_zero_nat = hAPP_nat_nat(minus_minus_nat(M),N) ) ).

fof(fact_895_drop__Cons,axiom,
    ! [N_2,X_2,Xs_1] : hAPP_n1875670159le_alt(nat_ca14895078le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1),hAPP_l382792410le_alt(hAPP_f2068969285le_alt(cOMBC_1511969967le_alt,drop_A186780501le_alt),Xs_1)),N_2) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_2),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)) ).

fof(fact_879_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
     => ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Zs)))
          & hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Ys),hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Zs)) = Xs_1 ) ) ).

fof(fact_38_list_Osimps_I3_J,axiom,
    ! [A_9,List_3] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_9),List_3) != nil_Ar126264853le_alt ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order___,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_fun158382675l_bool(hAPP_b517355696l_bool(B_1_1,B_2_1)) ) ).

fof(fact_970_order__eq__iff,axiom,
    ! [X_2,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),X_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),Y_2)) )
    <=> Y_2 = X_2 ) ).

fof(fact_1019_nat__le__linear,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_51_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1837019376l_bool(hAPP_f721935245l_bool(member797673069le_alt,F),pi_Arr1199386158le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A638717112le_alt(F,X_2)),hAPP_A1677245848t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ) ).

fof(fact_28_mktop__Lin,axiom,
    ! [X_2,L_2] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(arrow_1644373103_mktop(L_2),X_2)),arrow_1681063817le_Lin))
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin)) ) ).

fof(fact_699_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_2),Xs_1) = Xs_1
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_1063_add__less__mono,axiom,
    ! [K_2,L,I_2,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_2),K_2)),hAPP_nat_nat(plus_plus_nat(J),L)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K_2),L)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J)) ) ).

fof(fact_632_rtrancl_Ortrancl__refl,axiom,
    ! [Aa,R_2] : hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Aa)),transi1256616594le_alt(R_2))) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Nat__Onat_U,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => hAPP_nat_bool(hAPP_b1013836512t_bool(cOMBK_bool_nat,P),Q) = P ) ).

fof(fact_896_converse__rtranclE2,axiom,
    ! [Xa_1,Xb,Za,Zb,R_2] :
      ( hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xa_1),Xb)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Za),Zb))),transi54034710le_alt(R_2)))
     => ( hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xa_1),Xb) != hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Za),Zb)
       => ~ ! [A_7,B_6] :
              ( ~ hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Za),Zb))),transi54034710le_alt(R_2)))
             <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xa_1),Xb)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6))),R_2)) ) ) ) ).

fof(gsy_v_c____,hypothesis,
    is_Arr1861959080le_alt(c) ).

fof(fact_1052_Suc__le__lessD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M)),N)) ) ).

fof(fact_968_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),B_1)) ) ) ).

fof(fact_739_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(butlast_bool,hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_1),Ys_1)))))
     <= ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(butlast_bool,Xs_1))))
        | hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(butlast_bool,Ys_1)))) ) ) ).

fof(fact_299_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_b1376601646t_bool(F,X_1)),hAPP_b517355696l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1)) )
         <= is_bool(X_1) )
     => hBOOL(hAPP_f651410150l_bool(hAPP_f742962061l_bool(member478669795t_bool,F),pi_boo1117000868t_bool(A_1,B_1))) ) ).

fof(fact_506_split__cong,axiom,
    ! [P_1,F,G,Q_2] :
      ( ! [X_1,Y_9] :
          ( hAPP_l391088160le_alt(hAPP_l1869074853le_alt(F,X_1),Y_9) = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(G,X_1),Y_9)
         <= hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9) = Q_2 )
     => ( hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,G),Q_2) = hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,F),P_1)
       <= Q_2 = P_1 ) ) ).

fof(fact_1168_diff__less__Suc,axiom,
    ! [M,N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(M),N)),hAPP_nat_nat(suc,M))) ).

fof(fact_1140_Suc__not__Zero,axiom,
    ! [M] : hAPP_nat_nat(suc,M) != zero_zero_nat ).

fof(fact_315_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
    <=> hBOOL(hAPP_P1327827171t_bool(A_1,X_2)) ) ).

fof(fact_168_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_b317196972t_bool(F,X_2)),hAPP_b1048178734l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f599145828l_bool(hAPP_f2116028941l_bool(member2056165217t_bool,F),pi_boo175444770t_bool(A_1,B_1))) ) ).

fof(fact_99_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f965095724l_bool(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f597137892l_bool(hAPP_f1175923213l_bool(member989885409l_bool,F),pi_fun823343522l_bool(A_1,hAPP_f746617550l_bool(cOMBK_370033373t_bool,B_1)))) ) ).

fof(fact_114_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_b55004359le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1351174655l_bool(hAPP_f2127575245l_bool(member1463820796le_alt,F),pi_boo115158845le_alt(A_1,hAPP_f340261009t_bool(cOMBK_545135096l_bool,B_1)))) ) ).

fof(fact_732_last__in__set,axiom,
    ! [As] :
      ( As != nil_fu1891063196t_bool
     => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,last_f1417039043t_bool(As)),set_fu1865467835t_bool(As))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_042,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1276380911l_bool(B_1_1,B_2_1)) ).

fof(fact_218_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_P606313927t_bool(F,X_1)),hAPP_P324742453l_bool(B_1,X_1))) )
         <= is_Pro1725146340le_alt(X_1) )
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,B_1))) ) ).

fof(fact_1151_diff__Suc,axiom,
    ! [M_2,N_2] : hAPP_nat_nat(nat_case_nat(zero_zero_nat,cOMBI_nat),hAPP_nat_nat(minus_minus_nat(M_2),N_2)) = hAPP_nat_nat(minus_minus_nat(M_2),hAPP_nat_nat(suc,N_2)) ).

fof(fact_22__096P_H_A_058_AProf_096,axiom,
    hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,p_1),arrow_1721807329e_Prof)) ).

fof(fact_1050_Suc__leI,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M)),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_176_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f785974231l_bool(hAPP_f937842381l_bool(member383660628t_bool,F),pi_Arr1936979349t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A479848479t_bool(F,X_2)),hAPP_A1112981887l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabell_064,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f236193164l_bool(B_1_1,B_2_1)) ).

fof(fact_552_splitE,axiom,
    ! [Ca,P_1] :
      ( hBOOL(hAPP_P1327827171t_bool(hAPP_f1331183759t_bool(produc1102988737t_bool,Ca),P_1))
     => ~ ! [X_1,Y_9] :
            ( ~ hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Ca,X_1),Y_9))
           <= hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9) = P_1 ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___084,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun279392540l_bool(hAPP_f863359027l_bool(B_1_1,B_2_1))
     <= is_fun961089132t_bool(B_2_1) ) ).

fof(fact_92_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_P1095651821le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f2017347493l_bool(hAPP_f137298509l_bool(member1567747746le_alt,F),pi_Pro2035602019le_alt(A_1,hAPP_f880868799t_bool(cOMBK_1550261278le_alt,B_1)))) ) ).

fof(gsy_c_List_Olast_000tc__HOL__Obool,axiom,
    ! [B_1_1] : is_bool(last_bool(B_1_1)) ).

fof(fact_1021_le__trans,axiom,
    ! [K_2,I_2,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),K_2))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J),K_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J)) ) ).

fof(fact_1128_le__0__eq,axiom,
    ! [N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_2),zero_zero_nat))
    <=> zero_zero_nat = N_2 ) ).

fof(fact_1141_nat_Osimps_I3_J,axiom,
    ! [Nat_2] : hAPP_nat_nat(suc,Nat_2) != zero_zero_nat ).

fof(fact_505_splitE2,axiom,
    ! [Q_1,Pa,Z_3] :
      ( is_Pro1725146340le_alt(Z_3)
     => ( ~ ! [X_1,Y_9] :
              ( ( ~ hBOOL(hAPP_bool_bool(Q_1,hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,X_1),Y_9)))
               <= hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) = Z_3 )
             <= ( is_Arr1861959080le_alt(X_1)
                & is_Arr1861959080le_alt(Y_9) ) )
       <= hBOOL(hAPP_bool_bool(Q_1,hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,Pa),Z_3))) ) ) ).

fof(fact_1080_add__leD2,axiom,
    ! [M,K_2,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(M),K_2)),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),N)) ) ).

fof(gsy_c_Transitive__Closure_Ortrancl_000tc__Arrow____Order____Mirabelle____tpnfnnb,axiom,
    ! [B_1_1] :
      ( is_fun961089132t_bool(B_1_1)
     => is_fun961089132t_bool(transi1256616594le_alt(B_1_1)) ) ).

fof(fact_442_rotate__simps,axiom,
    ! [X_25,Xs_28] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_28),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_25),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(rotate1322903650le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_25),Xs_28))
      & nil_Ar126264853le_alt = hAPP_l726444215le_alt(rotate1322903650le_alt,nil_Ar126264853le_alt) ) ).

fof(fact_964_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),B_1)) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn_126,axiom,
    ! [P,Q] :
      ( P = hAPP_A1928120382l_bool(hAPP_f1739666797l_bool(cOMBK_8746725le_alt,P),Q)
     <= is_fun288122577l_bool(P) ) ).

fof(fact_787_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),set_fu335223357t_bool(Xs_1)))
           => ( ( hBOOL(hAPP_f927478261l_bool(hAPP_P1039044241l_bool(member1065824984t_bool,hAPP_f1925192252t_bool(hAPP_f1133021325t_bool(produc1096087521t_bool,Y_9),Z_4)),R_2))
               => hBOOL(hAPP_f927478261l_bool(hAPP_P1039044241l_bool(member1065824984t_bool,hAPP_f1925192252t_bool(hAPP_f1133021325t_bool(produc1096087521t_bool,X_1),Z_4)),R_2)) )
             <= hBOOL(hAPP_f927478261l_bool(hAPP_P1039044241l_bool(member1065824984t_bool,hAPP_f1925192252t_bool(hAPP_f1133021325t_bool(produc1096087521t_bool,X_1),Y_9)),R_2)) ) )
         <= ( is_fun1097062475t_bool(X_1)
            & is_fun1097062475t_bool(Y_9)
            & is_fun1097062475t_bool(Z_4) ) )
     => ( hBOOL(hAPP_f1478750961l_bool(hAPP_P1320270217l_bool(member813910868t_bool,hAPP_l546743617t_bool(hAPP_l1806296521t_bool(produc1256910039t_bool,Xs_1),Ys_1)),hAPP_f1446256145l_bool(lexord46855665t_bool,R_2)))
       => ( hBOOL(hAPP_f1478750961l_bool(hAPP_P1320270217l_bool(member813910868t_bool,hAPP_l546743617t_bool(hAPP_l1806296521t_bool(produc1256910039t_bool,Xs_1),Zs_1)),hAPP_f1446256145l_bool(lexord46855665t_bool,R_2)))
         <= hBOOL(hAPP_f1478750961l_bool(hAPP_P1320270217l_bool(member813910868t_bool,hAPP_l546743617t_bool(hAPP_l1806296521t_bool(produc1256910039t_bool,Ys_1),Zs_1)),hAPP_f1446256145l_bool(lexord46855665t_bool,R_2))) ) ) ) ).

fof(fact_0__096P_A_058_AProf_096,axiom,
    hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,p),arrow_1721807329e_Prof)) ).

fof(fact_914_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Ca),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Ca),B_1)) )
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,A_1),B_1)) ) ).

fof(fact_202_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1837019376l_bool(hAPP_f721935245l_bool(member797673069le_alt,F),pi_Arr1199386158le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A638717112le_alt(F,X_1)),hAPP_A1677245848t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(fact_832_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
    <=> ? [Ys,Zs] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Zs)) = Xs_1 ) ).

fof(fact_230_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f16559284l_bool(hAPP_f2142494605l_bool(member1846971697ol_nat,F),pi_fun1597968236ol_nat(A_1,hAPP_f932544453t_bool(cOMBK_1773325549t_bool,B_1))))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f816335862ol_nat(F,X_1)),B_1))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) ) ) ) ).

fof(fact_657_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
       => hAPP_l1660244757t_bool(dropWh1552197947t_bool(hAPP_f146009813l_bool(hAPP_f356431923l_bool(cOMBB_871930928t_bool,fNot),hAPP_f1577179519l_bool(hAPP_f1688301673l_bool(cOMBC_2105056416l_bool,fequal785189517t_bool),X_2))),hAPP_l1660244757t_bool(rev_fu1957290812t_bool,Xs_1)) = hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),hAPP_l1660244757t_bool(rev_fu1957290812t_bool,hAPP_l1660244757t_bool(takeWh1309019107t_bool(hAPP_f146009813l_bool(hAPP_f356431923l_bool(cOMBB_871930928t_bool,fNot),hAPP_f1577179519l_bool(hAPP_f1688301673l_bool(cOMBC_2105056416l_bool,fequal785189517t_bool),X_2))),Xs_1))) )
     <= hBOOL(hAPP_l89806901l_bool(distin22312297t_bool,Xs_1)) ) ).

fof(fact_440_snoc__listrel1__snoc__iff,axiom,
    ! [Xs_1,X_2,Ys_1,Y_2,R_2] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt))),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),nil_Ar126264853le_alt)))),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
      <=> ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_2))
            & Xs_1 = Ys_1 )
          | ( X_2 = Y_2
            & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ) )
     <= ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Y_2) ) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_003,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_fun1236654035i_bool(hAPP_A2091627584i_bool(B_1_1,B_2_1)) ) ).

fof(fact_733_last__in__set,axiom,
    ! [As] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,last_P736051166le_alt(As)),set_Pr604701398le_alt(As)))
     <= As != nil_Pr2088511415le_alt ) ).

fof(fact_66_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f651410150l_bool(hAPP_f742962061l_bool(member478669795t_bool,F),pi_boo1117000868t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_b1376601646t_bool(F,X_2)),hAPP_b517355696l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) ) ) ).

fof(fact_814_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Ys)))
          & Xs_1 = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Zs)) )
    <=> hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(help_COMBB_1_1_COMBB_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabel_146,axiom,
    ! [P,Q,R] : hAPP_l578398296l_bool(hAPP_f170721165l_bool(hAPP_f1056253543l_bool(cOMBB_1058319106le_alt,P),Q),R) = hAPP_P1610428353l_bool(P,hAPP_l391088160le_alt(Q,R)) ).

fof(fact_236_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f53317332le_alt(F,X_1)),B_1)) )
         <= is_fun1097062475t_bool(X_1) )
     => hBOOL(hAPP_f236193164l_bool(hAPP_f652666381l_bool(member1535903113le_alt,F),pi_fun90241866le_alt(A_1,hAPP_f14382104t_bool(cOMBK_1914291077t_bool,B_1)))) ) ).

fof(fact_1097_weak__decr__stable,axiom,
    ! [F] :
      ( ! [I] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,hAPP_nat_nat(suc,I))),hAPP_nat_nat(F,I)))
     => ? [I] :
        ! [K_1] : hAPP_nat_nat(F,I) = hAPP_nat_nat(F,hAPP_nat_nat(plus_plus_nat(I),K_1)) ) ).

fof(fact_162_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A638717112le_alt(F,X_2)),hAPP_A1677245848t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) )
     <= hBOOL(hAPP_f1837019376l_bool(hAPP_f721935245l_bool(member797673069le_alt,F),pi_Arr1199386158le_alt(A_1,B_1))) ) ).

fof(fact_734_dropWhile__eq__Nil__conv,axiom,
    ! [Pa,Xs_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1)))
           => hBOOL(hAPP_A862370221t_bool(Pa,X_1)) )
         <= is_Arr1861959080le_alt(X_1) )
    <=> hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1) = nil_Ar126264853le_alt ) ).

fof(fact_1016_less__not__refl3,axiom,
    ! [S,T] :
      ( T != S
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,S),T)) ) ).

fof(fact_545_listrel__Cons2,axiom,
    ! [Xs_1,Y_2,Ys_1,R_2] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1))),hAPP_f1662382841t_bool(listre638180162le_alt,R_2)))
     => ~ ! [X_1,Xs_17] :
            ( ( ~ hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_17),Ys_1)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2)))
             <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_2)),R_2)) )
           <= hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_1),Xs_17) = Xs_1 ) ) ).

fof(fact_1071_termination__basic__simps_I4_J,axiom,
    ! [Y,X,Z] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),hAPP_nat_nat(plus_plus_nat(Y),Z)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),Z)) ) ).

fof(fact_200_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1468796453l_bool(hAPP_f1867424333l_bool(member290075938le_alt,F),pi_Pro492447587le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_P1699981037le_alt(F,X_1)),hAPP_P1861769507t_bool(B_1,X_1)))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) ) ) ).

fof(fact_574_listrelp__listrel__eq,axiom,
    ! [R_2,X_1,Xa] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Xa)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
    <=> hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(listre53232751le_alt(hAPP_f1617919085t_bool(hAPP_f2058969401t_bool(cOMBC_364043868t_bool,hAPP_f1324249913t_bool(hAPP_f1267389329t_bool(cOMBB_747702273le_alt,cOMBC_1635684702l_bool),hAPP_f156764033l_bool(hAPP_f778758417l_bool(cOMBB_2112722489le_alt,hAPP_f1688983057l_bool(cOMBB_84213429le_alt,member1441201108le_alt)),produc1400112471le_alt))),R_2)),X_1),Xa)) ) ).

fof(fact_531_listrel__eq__len,axiom,
    ! [Xs_1,Ys_1,R_2] :
      ( hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_1) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_1)
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2))) ) ).

fof(fact_1039_le__SucE,axiom,
    ! [M,N] :
      ( ( M = hAPP_nat_nat(suc,N)
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_757_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
     => ( hAPP_l1189022293t_bool(dropWhile_bool(Pa),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_1),Ys_1)) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_l1189022293t_bool(dropWhile_bool(Pa),Xs_1)),Ys_1)
       <= ~ hBOOL(hAPP_bool_bool(Pa,X_2)) ) ) ).

fof(fact_612_list__update_Osimps_I1_J,axiom,
    ! [I_6,V_1] : nil_Ar126264853le_alt = hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(nil_Ar126264853le_alt),I_6),V_1) ).

fof(fact_310_pred__equals__eq2,axiom,
    ! [S_1,R_1] :
      ( ! [X_1,Xa] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Xa)),R_1))
        <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Xa)),S_1)) )
    <=> R_1 = S_1 ) ).

fof(fact_597_listrel__rtrancl__refl,axiom,
    ! [Xs_1,R_2] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Xs_1)),hAPP_f1865483825t_bool(listre760726333le_alt,transi1256616594le_alt(R_2)))) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun_bool_bool(B_1_1)
        & is_bool(B_2_1) )
     => is_bool(hAPP_bool_bool(B_1_1,B_2_1)) ) ).

fof(fact_62_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_n291670979t_bool(F,X_2)),hAPP_n295497947l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) )
     <= hBOOL(hAPP_f2835579l_bool(hAPP_f1229756829l_bool(member379339614t_bool,F),pi_nat955432909t_bool(A_1,B_1))) ) ).

fof(fact_216_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f785974231l_bool(hAPP_f937842381l_bool(member383660628t_bool,F),pi_Arr1936979349t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A479848479t_bool(F,X_1)),hAPP_A1112981887l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(fact_334_distinct__insert,axiom,
    ! [X_35,Xs_49] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_49))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_35),Xs_49))) ) ).

fof(fact_620_tl__drop,axiom,
    ! [N_4,Xs_3] : hAPP_l726444215le_alt(tl_Arr1453005548le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_4),Xs_3)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_4),hAPP_l726444215le_alt(tl_Arr1453005548le_alt,Xs_3)) ).

fof(gsy_c_List_Oset_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnb,axiom,
    ! [B_1_1] : is_fun279392540l_bool(set_fu1384968698t_bool(B_1_1)) ).

fof(fact_273_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f68732431l_bool(hAPP_f1556434125l_bool(member1366121996le_alt,F),pi_fun1792636103le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1054274129le_alt(F,X_1)),hAPP_f1663053423t_bool(B_1,X_1))) ) ) ) ).

fof(fact_286_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f903371257l_bool(hAPP_f1546082457l_bool(member1494731740t_bool,F),pi_nat1317494091t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_n1965810497t_bool(F,X_1)),hAPP_n2095207769l_bool(B_1,X_1))) ) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It_015,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun279392540l_bool(hAPP_A60074736l_bool(B_1_1,B_2_1))
     <= is_Arr43961803e_indi(B_2_1) ) ).

fof(fact_80_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f167218729l_bool(hAPP_f1666015481l_bool(member880664588l_bool,F),pi_fun1575168891l_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f592646513l_bool(F,X_2)),hAPP_f210572555l_bool(B_1,X_2))) ) ) ).

fof(fact_305_Pi__cong,axiom,
    ! [B_1,F,G,A_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,G),pi_Arr990697634t_bool(A_1,B_1)))
      <=> hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,B_1))) )
     <= ! [W] :
          ( is_Arr43961803e_indi(W)
         => ( hAPP_A1677245848t_bool(F,W) = hAPP_A1677245848t_bool(G,W)
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,W),A_1)) ) ) ) ).

fof(fact_382_top__apply,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_f312250286l_bool(top_to1714702858l_bool,X_2))
    <=> hBOOL(top_top_bool) ) ).

fof(fact_917_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Ca),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Ca),B_1)) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,A_1),B_1)) ) ).

fof(fact_877_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
     => ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Zs)))
          & hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Ys),hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Zs)) = Xs_1 ) ) ).

fof(fact_1077_trans__le__add2,axiom,
    ! [M,I_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),hAPP_nat_nat(plus_plus_nat(M),J)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J)) ) ).

fof(fact_1182_nat_Osize_I2_J,axiom,
    ! [Nat] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(nat_size,Nat)),hAPP_nat_nat(suc,zero_zero_nat)) = hAPP_nat_nat(nat_size,hAPP_nat_nat(suc,Nat)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf_060,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1976794890l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__032,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(B_2_1)
     => is_Arr43961803e_indi(hAPP_f836059805e_indi(B_1_1,B_2_1)) ) ).

fof(fact_742_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(butlas309371216t_bool,hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Xs_1),Ys_1)))))
     <= ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(butlas309371216t_bool,Ys_1))))
        | hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(butlas309371216t_bool,Xs_1)))) ) ) ).

fof(fact_129_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,hAPP_f1924755118l_bool(cOMBK_2038534567t_bool,B_1))))
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_f412050202t_bool(F,X_2)),B_1)) ) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfn,axiom,
    ! [B_1_1,B_2_1] : is_fun760276937t_bool(hAPP_n1965810497t_bool(B_1_1,B_2_1)) ).

fof(fact_783_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),set_nat(Xs_1)))
         => ( ( hBOOL(hAPP_f879361201l_bool(hAPP_P1251024649l_bool(member232255508at_nat,hAPP_n1289843868at_nat(hAPP_n1865633855at_nat(product_Pair_nat_nat,Y_9),Z_4)),R_2))
             => hBOOL(hAPP_f879361201l_bool(hAPP_P1251024649l_bool(member232255508at_nat,hAPP_n1289843868at_nat(hAPP_n1865633855at_nat(product_Pair_nat_nat,X_1),Z_4)),R_2)) )
           <= hBOOL(hAPP_f879361201l_bool(hAPP_P1251024649l_bool(member232255508at_nat,hAPP_n1289843868at_nat(hAPP_n1865633855at_nat(product_Pair_nat_nat,X_1),Y_9)),R_2)) ) )
     => ( hBOOL(hAPP_f1919691607l_bool(hAPP_P1736545109l_bool(member910422074st_nat,hAPP_l318352527st_nat(hAPP_l1148138287st_nat(produc1869962435st_nat,Xs_1),Ys_1)),hAPP_f29979067t_bool(lexord_nat,R_2)))
       => ( hBOOL(hAPP_f1919691607l_bool(hAPP_P1736545109l_bool(member910422074st_nat,hAPP_l318352527st_nat(hAPP_l1148138287st_nat(produc1869962435st_nat,Xs_1),Zs_1)),hAPP_f29979067t_bool(lexord_nat,R_2)))
         <= hBOOL(hAPP_f1919691607l_bool(hAPP_P1736545109l_bool(member910422074st_nat,hAPP_l318352527st_nat(hAPP_l1148138287st_nat(produc1869962435st_nat,Ys_1),Zs_1)),hAPP_f29979067t_bool(lexord_nat,R_2))) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpn_071,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun279392540l_bool(hAPP_f111185985l_bool(B_1_1,B_2_1))
     <= is_fun279392540l_bool(B_2_1) ) ).

fof(fact_771_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Xs_1) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_2),Xs_1) ) ).

fof(fact_426_UNIV__def,axiom,
    top_to522745736l_bool = collec1063742455t_bool(hAPP_b1048178734l_bool(cOMBK_272667621t_bool,fTrue)) ).

fof(fact_459_UNIV__eq__I,axiom,
    ! [A_1] :
      ( ( top_to1853035173l_bool = A_1
       <= ! [X_1] :
            ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           <= is_fun961089132t_bool(X_1) ) )
     <= is_fun279392540l_bool(A_1) ) ).

fof(fact_1002_top__le,axiom,
    ! [Aa] :
      ( ( top_to1576102282i_bool = Aa
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,top_to1576102282i_bool),Aa)) )
     <= is_fun1236654035i_bool(Aa) ) ).

fof(fact_284_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1837019376l_bool(hAPP_f721935245l_bool(member797673069le_alt,F),pi_Arr1199386158le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1))
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A638717112le_alt(F,X_1)),hAPP_A1677245848t_bool(B_1,X_1))) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(fact_439_snoc__listrel1__snoc__iff,axiom,
    ! [Xs_1,X_2,Ys_1,Y_2,R_2] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,Xs_1),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),nil_li1922300522le_alt))),hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,Ys_1),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),nil_li1922300522le_alt)))),hAPP_f1662382841t_bool(listre635569361le_alt,R_2)))
    <=> ( ( Y_2 = X_2
          & hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2))) )
        | ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_2))
          & Xs_1 = Ys_1 ) ) ) ).

fof(fact_628_rev_Osimps_I2_J,axiom,
    ! [X_11,Xs_2] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_2)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_11),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_11),Xs_2)) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [P,Q,R] : hAPP_A621939144t_bool(hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,P),Q),R) = hAPP_f344580165t_bool(P,hAPP_A1677245848t_bool(Q,R)) ).

fof(fact_97_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f666924118le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f899439636l_bool(hAPP_f2103233871l_bool(member1620122743le_alt,F),pi_fun462417760le_alt(A_1,hAPP_f898562478t_bool(cOMBK_607931107t_bool,B_1)))) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc_,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(B_2_1)
     => is_Arr1861959080le_alt(hAPP_P1257947515le_alt(B_1_1,B_2_1)) ) ).

fof(fact_115_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_n1965810497t_bool(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f903371257l_bool(hAPP_f1546082457l_bool(member1494731740t_bool,F),pi_nat1317494091t_bool(A_1,hAPP_f584002568l_bool(cOMBK_532713098ol_nat,B_1)))) ) ).

fof(fact_361_lexord__linear,axiom,
    ! [X_2,Y_2,R_2] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
        | hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_2),X_2)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
        | X_2 = Y_2 )
     <= ! [A_7,B_6] :
          ( ( is_Arr1861959080le_alt(A_7)
            & is_Arr1861959080le_alt(B_6) )
         => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,B_6),A_7)),R_2))
            | B_6 = A_7
            | hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),R_2)) ) ) ) ).

fof(fact_1074_le__iff__add,axiom,
    ! [M_2,N_2] :
      ( ? [K_1] : hAPP_nat_nat(plus_plus_nat(M_2),K_1) = N_2
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It_016,hypothesis,
    ! [B_1_1,B_2_1] :
      ( ( is_Arr43961803e_indi(B_2_1)
        & is_fun760276937t_bool(B_1_1) )
     => is_fun961089132t_bool(hAPP_A1677245848t_bool(B_1_1,B_2_1)) ) ).

fof(fact_417_last__appendR,axiom,
    ! [Xs_33,Ys_9] :
      ( nil_Ar126264853le_alt != Ys_9
     => last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_33),Ys_9)) = last_A57386030le_alt(Ys_9) ) ).

fof(fact_106_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f53317332le_alt(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f236193164l_bool(hAPP_f652666381l_bool(member1535903113le_alt,F),pi_fun90241866le_alt(A_1,hAPP_f14382104t_bool(cOMBK_1914291077t_bool,B_1)))) ) ).

fof(fact_1108_diff__add__inverse,axiom,
    ! [N,M] : M = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(N),M)),N) ).

fof(fact_659_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Y_2),set_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Xs_1))))
     => ( X_2 = Y_2
        | hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Y_2),set_nat(Xs_1))) ) ) ).

fof(fact_851_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( L_1 = K
     => ( hAPP_l210315413t_bool(takeWh169821797t_bool(Q_1),K) = hAPP_l210315413t_bool(takeWh169821797t_bool(Pa),L_1)
       <= ! [X_1] :
            ( is_fun1097062475t_bool(X_1)
           => ( ( hBOOL(hAPP_f312250286l_bool(Pa,X_1))
              <=> hBOOL(hAPP_f312250286l_bool(Q_1,X_1)) )
             <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),set_fu335223357t_bool(L_1))) ) ) ) ) ).

fof(fact_274_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f560831258l_bool(hAPP_f1153917531l_bool(member1036419453e_indi,F),pi_fun896360044e_indi(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1582908258e_indi(F,X_1)),hAPP_f244157820i_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) ) ) ) ).

fof(fact_185_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f40547922le_alt(F,X_1)),hAPP_f996881846t_bool(B_1,X_1))) )
         <= is_fun760276937t_bool(X_1) )
     => hBOOL(hAPP_f1976794890l_bool(hAPP_f1603005581l_bool(member1603119111le_alt,F),pi_fun553016520le_alt(A_1,B_1))) ) ).

fof(fact_287_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f799496074l_bool(hAPP_f105614477l_bool(member2043543687t_bool,F),pi_Pro531915080t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1))
         => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_P19446482t_bool(F,X_1)),hAPP_P139894920l_bool(B_1,X_1))) ) ) ).

fof(fact_855_rtrancl__induct,axiom,
    ! [Pa,Aa,Ba,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),transi992120749le_alt(R_2)))
     => ( hBOOL(hAPP_l1386638586t_bool(Pa,Aa))
       => ( hBOOL(hAPP_l1386638586t_bool(Pa,Ba))
         <= ! [Y_9,Z_4] :
              ( ( ( hBOOL(hAPP_l1386638586t_bool(Pa,Z_4))
                 <= hBOOL(hAPP_l1386638586t_bool(Pa,Y_9)) )
               <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_9),Z_4)),R_2)) )
             <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Y_9)),transi992120749le_alt(R_2))) ) ) ) ) ).

fof(fact_365_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),top_to772840767t_bool)) ).

fof(fact_1012_nat__neq__iff,axiom,
    ! [M_2,N_2] :
      ( N_2 != M_2
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),M_2))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2)) ) ) ).

fof(fact_871_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( Xs_1 = hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Ys),hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Zs))
          & ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Ys))) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc___027,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(hAPP_f791205069t_bool(B_1_1,B_2_1))
     <= is_fun2093718614t_bool(B_2_1) ) ).

fof(fact_102_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1054274129le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f68732431l_bool(hAPP_f1556434125l_bool(member1366121996le_alt,F),pi_fun1792636103le_alt(A_1,hAPP_f420098683t_bool(cOMBK_964928722t_bool,B_1)))) ) ).

fof(fact_763_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) )
      & ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_2),Xs_1) = Xs_1
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ) ).

fof(fact_277_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f53317332le_alt(F,X_1)),hAPP_f5761716t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f236193164l_bool(hAPP_f652666381l_bool(member1535903113le_alt,F),pi_fun90241866le_alt(A_1,B_1))) ) ).

fof(fact_177_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f651410150l_bool(hAPP_f742962061l_bool(member478669795t_bool,F),pi_boo1117000868t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_b1376601646t_bool(F,X_2)),hAPP_b517355696l_bool(B_1,X_2))) ) ) ).

fof(fact_438_rev__cases,axiom,
    ! [Xs_29] :
      ( ~ ! [Ys,Y_9] :
            ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),nil_Ar126264853le_alt)) != Xs_29
           <= is_Arr1861959080le_alt(Y_9) )
     <= nil_Ar126264853le_alt != Xs_29 ) ).

fof(fact_849_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( hAPP_l54953109e_indi(takeWh273131493e_indi(Pa),L_1) = hAPP_l54953109e_indi(takeWh273131493e_indi(Q_1),K)
       <= ! [X_1] :
            ( is_Arr43961803e_indi(X_1)
           => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),set_Ar219761597e_indi(L_1)))
             => ( hBOOL(hAPP_A1785763630i_bool(Q_1,X_1))
              <=> hBOOL(hAPP_A1785763630i_bool(Pa,X_1)) ) ) ) )
     <= K = L_1 ) ).

fof(fact_1075_nat__add__left__cancel__le,axiom,
    ! [K,M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(K),M_2)),hAPP_nat_nat(plus_plus_nat(K),N_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) ) ).

fof(fact_241_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_P1699981037le_alt(F,X_1)),B_1))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) )
     => hBOOL(hAPP_f1468796453l_bool(hAPP_f1867424333l_bool(member290075938le_alt,F),pi_Pro492447587le_alt(A_1,hAPP_f1783828715t_bool(cOMBK_1901607710le_alt,B_1)))) ) ).

fof(gsy_c_FuncSet_OPi_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc_,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1236654035i_bool(B_1_1)
     => is_fun288122577l_bool(pi_Arr990697634t_bool(B_1_1,B_2_1)) ) ).

fof(fact_1114_plus__nat_Oadd__0,axiom,
    ! [N] : N = hAPP_nat_nat(plus_plus_nat(zero_zero_nat),N) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_130,axiom,
    ! [P,Q,R] : hAPP_l391088160le_alt(hAPP_f216801278le_alt(hAPP_f1349184697le_alt(cOMBB_1818168801le_alt,P),Q),R) = hAPP_l391088160le_alt(P,hAPP_l726444215le_alt(Q,R)) ).

fof(fact_142_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f969456697l_bool(hAPP_f1857700889l_bool(member1549237916le_alt,F),pi_Pro610394757le_alt(A_1,B_1)))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_P1257947515le_alt(F,X_2)),hAPP_P1711233733t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_619_drop__tl,axiom,
    ! [N_5,Xs_4] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_5),hAPP_l726444215le_alt(tl_Arr1453005548le_alt,Xs_4)) = hAPP_l726444215le_alt(tl_Arr1453005548le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_5),Xs_4)) ).

fof(fact_1084_add__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(M),N)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(suc,M)),N) ).

fof(gsy_c_Set_OCollect_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi,axiom,
    ! [B_1_1] :
      ( is_fun1236654035i_bool(B_1_1)
     => is_fun1236654035i_bool(collec1611109369e_indi(B_1_1)) ) ).

fof(fact_725_last__in__set,axiom,
    ! [As] :
      ( nil_Ar126264853le_alt != As
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,last_A57386030le_alt(As)),set_Ar1565008694le_alt(As))) ) ).

fof(fact_611_list__update__nonempty,axiom,
    ! [Xs_1,K,X_2] :
      ( nil_Ar126264853le_alt = Xs_1
    <=> hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(Xs_1),K),X_2) = nil_Ar126264853le_alt ) ).

fof(fact_302_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1))
           => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A1677245848t_bool(F,X_1)),hAPP_A60074736l_bool(B_1,X_1))) )
         <= is_Arr43961803e_indi(X_1) )
     => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,B_1))) ) ).

fof(fact_1121_gr__implies__not0,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => zero_zero_nat != N ) ).

fof(fact_745_hd__in__set,axiom,
    ! [Xs_1] :
      ( nil_nat != Xs_1
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hd_nat(Xs_1)),set_nat(Xs_1))) ) ).

fof(fact_82_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f236193164l_bool(hAPP_f652666381l_bool(member1535903113le_alt,F),pi_fun90241866le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f53317332le_alt(F,X_2)),hAPP_f5761716t_bool(B_1,X_2))) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn_141,axiom,
    ! [P,Q] :
      ( P = hAPP_P139894920l_bool(hAPP_f695414965l_bool(cOMBK_1193272835le_alt,P),Q)
     <= is_fun288122577l_bool(P) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__HOL__Obool_Mtc__prod_Itc__Arrow____Order____,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1351174655l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc_,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_f1599966040l_bool(B_1_1,B_2_1))
     <= is_fun1236654035i_bool(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__prod_Itc__List__Olist_Itc__Arrow____Order__,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f536389215l_bool(B_1_1,B_2_1)) ).

fof(fact_354_butlast_Osimps_I1_J,axiom,
    nil_Ar126264853le_alt = hAPP_l726444215le_alt(butlas1262502241le_alt,nil_Ar126264853le_alt) ).

fof(gsy_c_Set_OCollect_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    ! [B_1_1] :
      ( is_fun1393352280t_bool(collec1729629178le_alt(B_1_1))
     <= is_fun1393352280t_bool(B_1_1) ) ).

fof(fact_677_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(hAPP_n2132365064le_alt(drop_P13505143le_alt,N_2),Xs_1))))
     => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__fun_Itc_144,axiom,
    ! [P,Q] :
      ( is_fun_bool_bool(P)
     => P = hAPP_f1624277646l_bool(hAPP_f214899148l_bool(cOMBK_2117707615t_bool,P),Q) ) ).

fof(fact_231_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1732944975l_bool(hAPP_f671616325l_bool(member1636995890le_alt,F),pi_fun380945313le_alt(A_1,hAPP_f1622901481t_bool(cOMBK_1786248882t_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f1619707799le_alt(F,X_1)),B_1)) )
         <= is_fun961089132t_bool(X_1) ) ) ).

fof(fact_769_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( Xs_1 = hAPP_l1660244757t_bool(hAPP_f726713198t_bool(insert1665396998t_bool,X_2),Xs_1)
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) )
      & ( hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Xs_1) = hAPP_l1660244757t_bool(hAPP_f726713198t_bool(insert1665396998t_bool,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ) ).

fof(fact_759_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
     => ( ~ hBOOL(hAPP_f592646513l_bool(Pa,X_2))
       => hAPP_l1075146559t_bool(dropWh1133555834t_bool(Pa),hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Xs_1),Ys_1)) = hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,hAPP_l1075146559t_bool(dropWh1133555834t_bool(Pa),Xs_1)),Ys_1) ) ) ).

fof(fact_1188_zero__induct,axiom,
    ! [Pa,K] :
      ( hBOOL(hAPP_nat_bool(Pa,K))
     => ( hBOOL(hAPP_nat_bool(Pa,zero_zero_nat))
       <= ! [N_1] :
            ( hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(suc,N_1)))
           => hBOOL(hAPP_nat_bool(Pa,N_1)) ) ) ) ).

fof(fact_845_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( L_1 = K
     => ( hAPP_l1766111573le_alt(dropWh1907450966le_alt(Pa),L_1) = hAPP_l1766111573le_alt(dropWh1907450966le_alt(Q_1),K)
       <= ! [X_1] :
            ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),set_Pr604701398le_alt(L_1)))
             => ( hBOOL(hAPP_P606313927t_bool(Pa,X_1))
              <=> hBOOL(hAPP_P606313927t_bool(Q_1,X_1)) ) )
           <= is_Pro1725146340le_alt(X_1) ) ) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__089,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_P606313927t_bool(B_1_1,B_2_1))
     <= ( is_Pro1725146340le_alt(B_2_1)
        & is_fun961089132t_bool(B_1_1) ) ) ).

fof(fact_636_converse__rtrancl__into__rtrancl,axiom,
    ! [Ca,Aa,Ba,R_2] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ca)),transi1256616594le_alt(R_2)))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ba),Ca)),transi1256616594le_alt(R_2))) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),R_2)) ) ).

fof(fact_571_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Z_3),hAPP_P1606644490l_bool(hAPP_f2122673039l_bool(produc2129949100l_bool,Ca),P_1)))
     => ~ ! [X_1,Y_9] :
            ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Z_3),hAPP_l1661879987l_bool(hAPP_l1824974724l_bool(Ca,X_1),Y_9)))
           <= P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9) ) ) ).

fof(fact_364_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),top_top_fun_nat_bool)) ).

fof(fact_88_list_Oexhaust,axiom,
    ! [Y_15] :
      ( ~ ! [A_7,List_1] :
            ( is_Arr1861959080le_alt(A_7)
           => Y_15 != hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_7),List_1) )
     <= Y_15 != nil_Ar126264853le_alt ) ).

fof(fact_548_listrel__Cons1,axiom,
    ! [Y_2,Ys_1,Xs_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1)),Xs_1)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
     => ~ ! [Y_9,Ys] :
            ( ( Xs_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Ys)
             => ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ys_1),Ys)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
               <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_2),Y_9)),R_2)) ) )
           <= is_Arr1861959080le_alt(Y_9) ) ) ).

fof(fact_1022_le__antisym,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => ( N = M
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M)) ) ) ).

fof(fact_27_mkbot__Lin,axiom,
    ! [X_2,L_2] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(arrow_1495666017_mkbot(L_2),X_2)),arrow_1681063817le_Lin))
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin)) ) ).

fof(fact_846_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( hAPP_l248265089st_nat(takeWhile_nat(Q_1),K) = hAPP_l248265089st_nat(takeWhile_nat(Pa),L_1)
       <= ! [X_1] :
            ( ( hBOOL(hAPP_nat_bool(Pa,X_1))
            <=> hBOOL(hAPP_nat_bool(Q_1,X_1)) )
           <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),set_nat(L_1))) ) )
     <= K = L_1 ) ).

fof(fact_428_UNIV__def,axiom,
    collec1611109369e_indi(hAPP_b1337486384i_bool(cOMBK_575487463e_indi,fTrue)) = top_to1576102282i_bool ).

fof(fact_380_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),top_to1853035173l_bool)) ).

fof(fact_455_UNIV__eq__I,axiom,
    ! [A_1] :
      ( is_fun1236654035i_bool(A_1)
     => ( ! [X_1] :
            ( is_Arr43961803e_indi(X_1)
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) )
       => top_to1576102282i_bool = A_1 ) ) ).

fof(gsy_c_HOL_Oundefined_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__,axiom,
    is_fun760276937t_bool(undefi2070130874t_bool(fun(arrow_1271263838e_indi,fun(product_prod(arrow_107136085le_alt,arrow_107136085le_alt),bool)))) ).

fof(fact_1060_termination__basic__simps_I2_J,axiom,
    ! [Y,X,Z] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),hAPP_nat_nat(plus_plus_nat(Y),Z)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Z)) ) ).

fof(fact_559_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( ! [A_7,B_6] :
          ( P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)
         => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Z_3),hAPP_l1284365004t_bool(hAPP_l1538437917t_bool(Ca,A_7),B_6))) )
     => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Z_3),hAPP_P1861769507t_bool(hAPP_f906821569t_bool(produc2091914181t_bool,Ca),P_1))) ) ).

fof(fact_604_drop__Nil,axiom,
    ! [N_9] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_9),nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(fact_413_Cons__eq__append__conv,axiom,
    ! [X_2,Xs_1,Ys_1,Zs_1] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_1),Zs_1) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)
    <=> ( ? [Ys_12] :
            ( Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_12),Zs_1)
            & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Ys_12) = Ys_1 )
        | ( Zs_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)
          & Ys_1 = nil_Ar126264853le_alt ) ) ) ).

fof(fact_772_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1)))
     => hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_2),Xs_1) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1) ) ).

fof(fact_1197_Suc__pred_H,axiom,
    ! [N] :
      ( hAPP_nat_nat(suc,hAPP_nat_nat(minus_minus_nat(N),one_one_nat)) = N
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_1190_nat_Osize_I3_J,axiom,
    hAPP_nat_nat(size_size_nat,zero_zero_nat) = zero_zero_nat ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__List__Olist_Itc__Arrow____Order____,axiom,
    ! [P,Q,R] : hAPP_n1875670159le_alt(hAPP_l382792410le_alt(hAPP_f2068969285le_alt(cOMBC_1511969967le_alt,P),Q),R) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(P,R),Q) ).

fof(fact_508_Cons__in__lex,axiom,
    ! [X_2,Xs_1,Y_2,Ys_1,R_2] :
      ( ( ( hAPP_l1071513828lt_nat(size_s1310206929le_alt,Ys_1) = hAPP_l1071513828lt_nat(size_s1310206929le_alt,Xs_1)
          & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_2)) )
        | ( Y_2 = X_2
          & hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(lex_li678151430le_alt,R_2))) ) )
    <=> hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Xs_1)),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1))),hAPP_f1662382841t_bool(lex_li678151430le_alt,R_2))) ) ).

fof(fact_562_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Z_3),hAPP_P1606644490l_bool(hAPP_f2122673039l_bool(produc2129949100l_bool,Ca),P_1)))
     <= ! [A_7,B_6] :
          ( P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)
         => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Z_3),hAPP_l1661879987l_bool(hAPP_l1824974724l_bool(Ca,A_7),B_6))) ) ) ).

fof(gsy_c_FuncSet_OPi_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oin,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun288122577l_bool(B_1_1)
     => is_fun158382675l_bool(pi_fun150026276t_bool(B_1_1,B_2_1)) ) ).

fof(fact_708_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)))
    <=> ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1))
        & ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ) ).

fof(fact_980_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(hAPP_n1429822280t_bool(take_f1669843892t_bool,N_2),Xs_1))))
     => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ).

fof(fact_483_partition_Osimps_I2_J,axiom,
    ! [Pa,X_2,Xs_1] : hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,hAPP_f746471349le_alt(hAPP_f628327744le_alt(cOMBS_1294827559le_alt,hAPP_f1291559232le_alt(hAPP_f749699165le_alt(cOMBB_1450165017le_alt,cOMBS_1399042523le_alt),hAPP_f469186021le_alt(hAPP_f1933751673le_alt(cOMBB_1193902096le_alt,hAPP_f1939049849le_alt(cOMBB_723746886le_alt,if_Pro1306781203le_alt(hAPP_A862370221t_bool(Pa,X_2)))),hAPP_f1790240989le_alt(hAPP_f1013417831le_alt(cOMBB_2052911494le_alt,produc237774329le_alt),hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2))))),hAPP_f1790240989le_alt(hAPP_f1792349771le_alt(cOMBC_1330649024le_alt,hAPP_f1318121625le_alt(hAPP_f634775919le_alt(cOMBB_576205818le_alt,cOMBB_1818168801le_alt),produc237774329le_alt)),hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2)))),partit327648526le_alt(Pa,Xs_1)) = partit327648526le_alt(Pa,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)) ).

fof(fact_587_hd__append,axiom,
    ! [Ys_5,Xs_19] :
      ( ( nil_Ar126264853le_alt = Xs_19
       => hd_Arr805754088le_alt(Ys_5) = hd_Arr805754088le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_19),Ys_5)) )
      & ( hd_Arr805754088le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_19),Ys_5)) = hd_Arr805754088le_alt(Xs_19)
       <= nil_Ar126264853le_alt != Xs_19 ) ) ).

fof(fact_415_butlast__append,axiom,
    ! [Xs_35,Ys_11] :
      ( ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_35),hAPP_l726444215le_alt(butlas1262502241le_alt,Ys_11)) = hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_35),Ys_11))
       <= Ys_11 != nil_Ar126264853le_alt )
      & ( hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_35) = hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_35),Ys_11))
       <= Ys_11 = nil_Ar126264853le_alt ) ) ).

fof(fact_297_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f196630486l_bool(hAPP_f1212866771l_bool(member392258873t_bool,F),pi_Arr44017448t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A1159885342t_bool(F,X_1)),hAPP_A366518464l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) ) ) ) ).

fof(fact_193_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f167218729l_bool(hAPP_f1666015481l_bool(member880664588l_bool,F),pi_fun1575168891l_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f592646513l_bool(F,X_1)),hAPP_f210572555l_bool(B_1,X_1))) )
         <= is_fun961089132t_bool(X_1) ) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It_012,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr43961803e_indi(B_2_1)
     => is_fun288122577l_bool(hAPP_A1952883197l_bool(B_1_1,B_2_1)) ) ).

fof(fact_1163_diff__less__mono,axiom,
    ! [C,A,B] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A),B))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(A),C)),hAPP_nat_nat(minus_minus_nat(B),C)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C),A)) ) ) ).

fof(fact_403_append__Nil2,axiom,
    ! [Xs_37] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_37),nil_Ar126264853le_alt) = Xs_37 ).

fof(fact_540_tl__append2,axiom,
    ! [Ys_6,Xs_23] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(tl_Arr1453005548le_alt,Xs_23)),Ys_6) = hAPP_l726444215le_alt(tl_Arr1453005548le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_23),Ys_6))
     <= nil_Ar126264853le_alt != Xs_23 ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf_056,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f597137892l_bool(B_1_1,B_2_1)) ).

fof(fact_670_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_2),Xs_1))))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_395_same__append__eq,axiom,
    ! [Xs_1,Ys_1,Zs_1] :
      ( Zs_1 = Ys_1
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Zs_1) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1) ) ).

fof(fact_307_PairE,axiom,
    ! [P_2] :
      ( is_Pro1725146340le_alt(P_2)
     => ~ ! [X_1,Y_9] :
            ( P_2 != hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9)
           <= ( is_Arr1861959080le_alt(X_1)
              & is_Arr1861959080le_alt(Y_9) ) ) ) ).

fof(fact_811_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1)))
    <=> ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Ys)))
          & Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs)) ) ) ).

fof(fact_167_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1252760917l_bool(hAPP_f40035149l_bool(member855864530t_bool,F),pi_Arr2020412179t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A2102641565t_bool(F,X_2)),hAPP_A1952883197l_bool(B_1,X_2))) ) ) ).

fof(fact_386_top__apply,axiom,
    ! [X_2] :
      ( hBOOL(top_top_bool)
    <=> hBOOL(hAPP_A1785763630i_bool(top_to1576102282i_bool,X_2)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabel,axiom,
    ! [P,Q,R] : hAPP_P1327827171t_bool(hAPP_P163071551t_bool(hAPP_f2139078121t_bool(cOMBC_1470522126t_bool,P),Q),R) = hAPP_P1327827171t_bool(hAPP_P163071551t_bool(P,R),Q) ).

fof(fact_244_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1351174655l_bool(hAPP_f2127575245l_bool(member1463820796le_alt,F),pi_boo115158845le_alt(A_1,hAPP_f340261009t_bool(cOMBK_545135096l_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_b55004359le_alt(F,X_1)),B_1))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1)) )
         <= is_bool(X_1) ) ) ).

fof(fact_104_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f592646513l_bool(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f167218729l_bool(hAPP_f1666015481l_bool(member880664588l_bool,F),pi_fun1575168891l_bool(A_1,hAPP_f1460506473l_bool(cOMBK_1693871704t_bool,B_1)))) ) ).

fof(fact_1195_diff__Suc__1,axiom,
    ! [N] : N = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(suc,N)),one_one_nat) ).

fof(fact_47_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_P606313927t_bool(F,X_2)),hAPP_P324742453l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_892_split__list__last__prop__iff,axiom,
    ! [Pa,Xs_1] :
      ( ? [Ys,X_1,Zs] :
          ( is_Arr1861959080le_alt(X_1)
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & ! [Xa] :
              ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),set_Ar1565008694le_alt(Zs)))
               => ~ hBOOL(hAPP_A862370221t_bool(Pa,Xa)) )
             <= is_Arr1861959080le_alt(Xa) )
          & hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs)) = Xs_1 )
    <=> ? [X_1] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1)))
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & is_Arr1861959080le_alt(X_1) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc___029,axiom,
    ! [B_1_1,B_2_1] : is_fun1393352280t_bool(hAPP_f1457563459t_bool(B_1_1,B_2_1)) ).

fof(fact_836_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
    <=> ? [Ys,Zs] : Xs_1 = hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Ys),hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Zs)) ) ).

fof(fact_667_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Y_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Xs_1))))
       => ( X_2 = Y_2
          | hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Y_2),set_Pr604701398le_alt(Xs_1))) ) )
     <= ( is_Pro1725146340le_alt(Y_2)
        & is_Pro1725146340le_alt(X_2) ) ) ).

fof(gsy_c_Set_OCollect_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfn,axiom,
    ! [B_1_1] :
      ( is_fun158382675l_bool(collec418781817t_bool(B_1_1))
     <= is_fun158382675l_bool(B_1_1) ) ).

fof(fact_1102_nat__diff__split__asm,axiom,
    ! [Pa,Aa,Ba] :
      ( hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(minus_minus_nat(Aa),Ba)))
    <=> ~ ( ? [D] :
              ( ~ hBOOL(hAPP_nat_bool(Pa,D))
              & hAPP_nat_nat(plus_plus_nat(Ba),D) = Aa )
          | ( ~ hBOOL(hAPP_nat_bool(Pa,zero_zero_nat))
            & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Aa),Ba)) ) ) ) ).

fof(help_fTrue_1_1_T,axiom,
    ! [P] :
      ( ( P = fFalse
        | P = fTrue )
     <= is_bool(P) ) ).

fof(fact_1120_less__imp__diff__less,axiom,
    ! [N,J,K_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(J),N)),K_2))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J),K_2)) ) ).

fof(fact_486_prod_Osimps_I2_J,axiom,
    ! [F1,Aa,Ba] : hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,F1),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)) = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(F1,Aa),Ba) ).

fof(fact_685_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
        & hBOOL(hAPP_f592646513l_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(takeWh1512678354t_bool(Pa),Xs_1)))) ) ).

fof(fact_963_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),B_1)) ) ) ).

fof(fact_496_split__curry,axiom,
    ! [F] : hAPP_f1078809103le_alt(produc748227559le_alt,produc335266950le_alt(F)) = F ).

fof(fact_1069_not__add__less1,axiom,
    ! [I_2,J] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_2),J)),I_2)) ).

fof(fact_267_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f40547922le_alt(F,X_1)),hAPP_f996881846t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f1976794890l_bool(hAPP_f1603005581l_bool(member1603119111le_alt,F),pi_fun553016520le_alt(A_1,B_1))) ) ).

fof(fact_366_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),top_to1647826457l_bool)) ).

fof(fact_318_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
    <=> hBOOL(hAPP_bool_bool(A_1,X_2)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_f2013399995l_bool(B_1_1,B_2_1))
     <= is_fun1393352280t_bool(B_2_1) ) ).

fof(fact_915_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Ca),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Ca),B_1)) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,A_1),B_1)) ) ).

fof(fact_648_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
       => hAPP_l1660244757t_bool(takeWh1309019107t_bool(hAPP_f146009813l_bool(hAPP_f356431923l_bool(cOMBB_871930928t_bool,fNot),hAPP_f1577179519l_bool(hAPP_f1688301673l_bool(cOMBC_2105056416l_bool,fequal785189517t_bool),X_2))),hAPP_l1660244757t_bool(rev_fu1957290812t_bool,Xs_1)) = hAPP_l1660244757t_bool(rev_fu1957290812t_bool,hAPP_l1660244757t_bool(tl_fun38025093t_bool,hAPP_l1660244757t_bool(dropWh1552197947t_bool(hAPP_f146009813l_bool(hAPP_f356431923l_bool(cOMBB_871930928t_bool,fNot),hAPP_f1577179519l_bool(hAPP_f1688301673l_bool(cOMBC_2105056416l_bool,fequal785189517t_bool),X_2))),Xs_1))) )
     <= hBOOL(hAPP_l89806901l_bool(distin22312297t_bool,Xs_1)) ) ).

fof(fact_867_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Ys)))
          & hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Ys),hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Zs)) = Xs_1 )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpn_070,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun279392540l_bool(B_2_1)
     => is_bool(hAPP_f1749234559l_bool(B_1_1,B_2_1)) ) ).

fof(fact_942_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),B_1)) ) ) ).

fof(fact_463_listrel1I2,axiom,
    ! [X_2,Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Ys_1))),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ).

fof(fact_863_split__list__first__propE,axiom,
    ! [Pa,Xs_1] :
      ( ~ ! [Ys,X_1] :
            ( ( ? [Zs] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs)) = Xs_1
             => ( ~ ! [Xa] :
                      ( ~ hBOOL(hAPP_A862370221t_bool(Pa,Xa))
                     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),set_Ar1565008694le_alt(Ys))) )
               <= hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) )
           <= is_Arr1861959080le_alt(X_1) )
     <= ? [X_1] :
          ( hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1))) ) ) ).

fof(fact_243_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1837019376l_bool(hAPP_f721935245l_bool(member797673069le_alt,F),pi_Arr1199386158le_alt(A_1,hAPP_f329301088t_bool(cOMBK_1076156777e_indi,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A638717112le_alt(F,X_1)),B_1))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__Arrow____Order____Mirabelle____tpn_102,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => hAPP_A1785763630i_bool(hAPP_b1337486384i_bool(cOMBK_575487463e_indi,P),Q) = P ) ).

fof(fact_1181_gr0__implies__Suc,axiom,
    ! [N] :
      ( ? [M_1] : N = hAPP_nat_nat(suc,M_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_507_split__cong,axiom,
    ! [P_1,G,F,Q_2] :
      ( is_Pro1725146340le_alt(Q_2)
     => ( ! [X_1,Y_9] :
            ( ( is_Arr1861959080le_alt(Y_9)
              & is_Arr1861959080le_alt(X_1) )
           => ( ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(G,X_1),Y_9))
              <=> hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F,X_1),Y_9)) )
             <= hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) = Q_2 ) )
       => ( Q_2 = P_1
         => ( hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F),P_1))
          <=> hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,G),Q_2)) ) ) ) ) ).

fof(fact_374_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),top_to772840767t_bool)) ).

fof(fact_936_order__antisym,axiom,
    ! [X_5,Y_4] :
      ( ( Y_4 = X_5
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_4),X_5)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_5),Y_4)) ) ).

fof(fact_581_length__replicate,axiom,
    ! [N_12,X_21] : N_12 = hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_12),X_21)) ).

fof(fact_77_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1732944975l_bool(hAPP_f671616325l_bool(member1636995890le_alt,F),pi_fun380945313le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f1619707799le_alt(F,X_2)),hAPP_f1865483825t_bool(B_1,X_2))) ) ) ).

fof(fact_779_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
     => hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(insert256706849le_alt,X_2),Xs_1) = hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Xs_1) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It_014,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun158382675l_bool(hAPP_A1112981887l_bool(B_1_1,B_2_1))
     <= is_Arr43961803e_indi(B_2_1) ) ).

fof(fact_844_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( K = L_1
     => ( ! [X_1] :
            ( is_fun760276937t_bool(X_1)
           => ( ( hBOOL(hAPP_f965095724l_bool(Pa,X_1))
              <=> hBOOL(hAPP_f965095724l_bool(Q_1,X_1)) )
             <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),set_fu1865467835t_bool(L_1))) ) )
       => hAPP_l1660244757t_bool(dropWh1552197947t_bool(Q_1),K) = hAPP_l1660244757t_bool(dropWh1552197947t_bool(Pa),L_1) ) ) ).

fof(fact_776_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l210315413t_bool(hAPP_f1812326636t_bool(insert1946138248t_bool,X_2),Xs_1) = hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Xs_1)
     <= ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ).

fof(fact_539_listrel_ONil,axiom,
    ! [R_2] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,nil_Ar126264853le_alt),nil_Ar126264853le_alt)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2))) ).

fof(fact_233_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1582908258e_indi(F,X_1)),B_1)) ) )
     => hBOOL(hAPP_f560831258l_bool(hAPP_f1153917531l_bool(member1036419453e_indi,F),pi_fun896360044e_indi(A_1,hAPP_f2136780329i_bool(cOMBK_480812327t_bool,B_1)))) ) ).

fof(fact_576_listrel_Osimps,axiom,
    ! [A1,A2,R_2] :
      ( ( ( nil_li1922300522le_alt = A2
          & nil_li1922300522le_alt = A1 )
        | ? [X_1,Y_9,Xs_17,Ys] :
            ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9)),R_2))
            & hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_17),Ys)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2)))
            & hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_9),Ys) = A2
            & hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_1),Xs_17) = A1 ) )
    <=> hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,A1),A2)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2))) ) ).

fof(fact_1096_less__imp__Suc__add,axiom,
    ! [M,N] :
      ( ? [K_1] : N = hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(M),K_1))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_319_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_P606313927t_bool(A_1,X_2))
    <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ).

fof(fact_33_unanimity__def,axiom,
    ! [Fa] :
      ( hBOOL(hAPP_f312250286l_bool(arrow_1587283740nimity,Fa))
    <=> ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( ! [A_7,B_6] :
                ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_f412050202t_bool(Fa,X_1)))
                 <= ! [I] :
                      ( is_Arr43961803e_indi(I)
                     => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A1677245848t_bool(X_1,I))) ) )
               <= ( is_Arr1861959080le_alt(B_6)
                  & is_Arr1861959080le_alt(A_7) ) )
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),arrow_1721807329e_Prof)) ) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order__,axiom,
    ! [P,Q] : P = hAPP_P2082381915t_bool(hAPP_f880868799t_bool(cOMBK_1550261278le_alt,P),Q) ).

fof(fact_131_splice_Osimps_I2_J,axiom,
    ! [V_2,Va] : hAPP_l726444215le_alt(splice360969192le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,V_2),Va)),nil_Ar126264853le_alt) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,V_2),Va) ).

fof(fact_263_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_P1095651821le_alt(F,X_1)),hAPP_P2082381915t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) ) )
     => hBOOL(hAPP_f2017347493l_bool(hAPP_f137298509l_bool(member1567747746le_alt,F),pi_Pro2035602019le_alt(A_1,B_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__prod_Itc__Arrow____Order__,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f117508401l_bool(B_1_1,B_2_1)) ).

fof(fact_947_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),B_1))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_35_in__above,axiom,
    ! [X_2,Y_2,L_2,Aa,Ba] :
      ( ( is_Arr1861959080le_alt(Ba)
        & is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_2) )
     => ( Ba != Aa
       => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin))
         => ( ( ( ( ( Ba = Y_2
                   => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Aa)),L_2))
                      | Aa = X_2 ) )
                  & ( Ba != Y_2
                   => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),L_2)) ) )
               <= Ba != X_2 )
              & ( X_2 = Ba
               => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Y_2)),L_2)) )
              & X_2 != Y_2 )
          <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),hAPP_A568203993t_bool(arrow_230821333_above(L_2,Aa),Ba))) ) ) ) ) ).

fof(fact_1164_less__diff__iff,axiom,
    ! [N_2,K,M_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N_2))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
        <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(M_2),K)),hAPP_nat_nat(minus_minus_nat(N_2),K))) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),M_2)) ) ).

fof(fact_186_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f899439636l_bool(hAPP_f2103233871l_bool(member1620122743le_alt,F),pi_fun462417760le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f666924118le_alt(F,X_1)),hAPP_f228695594t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) )
         <= is_fun760276937t_bool(X_1) ) ) ).

fof(fact_983_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(ord_less_eq_bool,Aa),top_top_bool)) ).

fof(fact_826_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
    <=> ? [Ys,Zs] :
          ( hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Ys),hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Zs))) ) ) ).

fof(fact_95_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1418366331ol_nat(F,X_2)),B_1))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1534526009l_bool(hAPP_f2069145881l_bool(member1258861596ol_nat,F),pi_fun770049925ol_nat(A_1,hAPP_f81007726t_bool(cOMBK_2130565512t_bool,B_1)))) ) ).

fof(fact_995_top__unique,axiom,
    ! [Aa] :
      ( is_fun1393352280t_bool(Aa)
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,top_to2076077793t_bool),Aa))
      <=> top_to2076077793t_bool = Aa ) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle_024,axiom,
    ! [B_1_1,B_2_1] : is_fun1097062475t_bool(hAPP_n291670979t_bool(B_1_1,B_2_1)) ).

fof(fact_125_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_P1599728724t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f1508559628l_bool(hAPP_f984565261l_bool(member1329875721t_bool,F),pi_Pro1636653258t_bool(A_1,hAPP_f681285561l_bool(cOMBK_1786282629le_alt,B_1)))) ) ).

fof(fact_1034_Suc__n__not__le__n,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N)),N)) ).

fof(fact_701_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
     => Xs_1 = hAPP_l54953109e_indi(hAPP_A974963564e_indi(insert915800584e_indi,X_2),Xs_1) ) ).

fof(fact_494_split__eta,axiom,
    ! [F] :
      ( is_fun961089132t_bool(F)
     => hAPP_f791205069t_bool(produc2022255647t_bool,hAPP_f231379647t_bool(hAPP_f1460305297t_bool(cOMBB_2048157563le_alt,hAPP_f724700817t_bool(cOMBB_164218871le_alt,F)),produc1400112471le_alt)) = F ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabell_062,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f859154022l_bool(B_1_1,B_2_1)) ).

fof(fact_134_split__paired__Ex,axiom,
    ! [Pa] :
      ( ? [X1] : hBOOL(hAPP_P1327827171t_bool(Pa,X1))
    <=> ? [A_7,B_6] : hBOOL(hAPP_P1327827171t_bool(Pa,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfn,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1707011108l_bool(B_1_1,B_2_1)) ).

fof(fact_160_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_P1699981037le_alt(F,X_2)),hAPP_P1861769507t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f1468796453l_bool(hAPP_f1867424333l_bool(member290075938le_alt,F),pi_Pro492447587le_alt(A_1,B_1))) ) ).

fof(fact_110_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f2115479956l_bool(hAPP_f975710927l_bool(member24871799le_alt,F),pi_nat249006182le_alt(A_1,hAPP_f1328016200t_bool(cOMBK_856666543ol_nat,B_1))))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_n324757596le_alt(F,X_2)),B_1)) ) ) ).

fof(fact_393_append__eq__appendI,axiom,
    ! [Ys_18,Us_2,Xs_41,Xs1_1,Zs_4] :
      ( ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_41),Ys_18) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs_4),Us_2)
       <= hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs1_1),Us_2) = Ys_18 )
     <= hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_41),Xs1_1) = Zs_4 ) ).

fof(fact_208_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f599145828l_bool(hAPP_f2116028941l_bool(member2056165217t_bool,F),pi_boo175444770t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_bool(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_b317196972t_bool(F,X_1)),hAPP_b1048178734l_bool(B_1,X_1))) ) ) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_100,axiom,
    ! [B_1_1,B_2_1] : is_fun961089132t_bool(hAPP_P1861769507t_bool(B_1_1,B_2_1)) ).

fof(fact_724_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( hAPP_l1766111573le_alt(takeWh1529274110le_alt(Pa),hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Xs_1),Ys_1)) = hAPP_l1766111573le_alt(takeWh1529274110le_alt(Pa),Xs_1)
       <= ~ hBOOL(hAPP_P606313927t_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabell,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun288122577l_bool(hAPP_b1048178734l_bool(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(fact_817_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Ys)))
          & Xs_1 = hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Ys),hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Zs)) )
    <=> hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ).

fof(fact_586_listrelp_ONil,axiom,
    ! [R_2] : hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(listre53232751le_alt(R_2),nil_Ar126264853le_alt),nil_Ar126264853le_alt)) ).

fof(fact_479_Lin__def,axiom,
    collec1553055422t_bool(order_835987853le_alt(top_to2076077793t_bool)) = arrow_1681063817le_Lin ).

fof(gsy_c_Order__Relation_Ostrict__linear__order__on_000tc__Arrow____Order____Mirabe,axiom,
    ! [B_1_1] :
      ( is_fun279392540l_bool(order_835987853le_alt(B_1_1))
     <= is_fun1393352280t_bool(B_1_1) ) ).

fof(fact_484_split__weak__cong,axiom,
    ! [Ca,P_1,Q_2] :
      ( ( hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,Ca),P_1))
      <=> hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,Ca),Q_2)) )
     <= P_1 = Q_2 ) ).

fof(help_fequal_1_1_fequal_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [X,Y] :
      ( Y = X
      | ~ hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(fequal796301787le_alt,X),Y)) ) ).

fof(fact_1183_nat_Osize_I1_J,axiom,
    hAPP_nat_nat(nat_size,zero_zero_nat) = zero_zero_nat ).

fof(fact_536_tl_Osimps_I1_J,axiom,
    nil_Ar126264853le_alt = hAPP_l726444215le_alt(tl_Arr1453005548le_alt,nil_Ar126264853le_alt) ).

fof(fact_357_last__ConsL,axiom,
    ! [X_31,Xs_44] :
      ( is_Arr1861959080le_alt(X_31)
     => ( X_31 = last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_31),Xs_44))
       <= nil_Ar126264853le_alt = Xs_44 ) ) ).

fof(fact_150_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f1619707799le_alt(F,X_2)),hAPP_f1865483825t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1732944975l_bool(hAPP_f671616325l_bool(member1636995890le_alt,F),pi_fun380945313le_alt(A_1,B_1))) ) ).

fof(fact_1172_one__is__add,axiom,
    ! [M_2,N_2] :
      ( ( ( hAPP_nat_nat(suc,zero_zero_nat) = N_2
          & zero_zero_nat = M_2 )
        | ( N_2 = zero_zero_nat
          & M_2 = hAPP_nat_nat(suc,zero_zero_nat) ) )
    <=> hAPP_nat_nat(plus_plus_nat(M_2),N_2) = hAPP_nat_nat(suc,zero_zero_nat) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t_122,axiom,
    ! [P,Q,R] : hAPP_f1663053423t_bool(hAPP_A572596845t_bool(P,R),Q) = hAPP_A1664620203t_bool(hAPP_f1617919085t_bool(hAPP_f2058969401t_bool(cOMBC_364043868t_bool,P),Q),R) ).

fof(fact_1028_less__SucI,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_249_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f599145828l_bool(hAPP_f2116028941l_bool(member2056165217t_bool,F),pi_boo175444770t_bool(A_1,hAPP_f823172443l_bool(cOMBK_1021277149l_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_b317196972t_bool(F,X_1)),B_1)) )
         <= is_bool(X_1) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___147,axiom,
    ! [P,Q] :
      ( is_fun1393352280t_bool(P)
     => P = hAPP_f239852716t_bool(hAPP_f1438487600t_bool(cOMBK_488408421t_bool,P),Q) ) ).

fof(fact_929_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,hAPP_f111185985l_bool(hAPP_f2018922499l_bool(cOMBC_62805014l_bool,member496995196t_bool),R_1)),hAPP_f111185985l_bool(hAPP_f2018922499l_bool(cOMBC_62805014l_bool,member496995196t_bool),S_1)))
    <=> hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,R_1),S_1)) ) ).

fof(fact_1089_nat__add__assoc,axiom,
    ! [M,N,K_2] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(plus_plus_nat(M),N)),K_2) = hAPP_nat_nat(plus_plus_nat(M),hAPP_nat_nat(plus_plus_nat(N),K_2)) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabel_155,axiom,
    ! [P,Q] :
      ( is_fun158382675l_bool(P)
     => P = hAPP_P1606644490l_bool(hAPP_f681285561l_bool(cOMBK_1786282629le_alt,P),Q) ) ).

fof(fact_504_splitE2,axiom,
    ! [Q_1,Pa,Z_3] :
      ( ~ ! [X_1,Y_9] :
            ( hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9) = Z_3
           => ~ hBOOL(hAPP_P1327827171t_bool(Q_1,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(Pa,X_1),Y_9))) )
     <= hBOOL(hAPP_P1327827171t_bool(Q_1,hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,Pa),Z_3))) ) ).

fof(fact_237_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1800079444le_alt(F,X_1)),B_1)) ) )
     => hBOOL(hAPP_f1424540178l_bool(hAPP_f452990795l_bool(member1870621557le_alt,F),pi_fun684211550le_alt(A_1,hAPP_f1438487600t_bool(cOMBK_488408421t_bool,B_1)))) ) ).

fof(fact_626_rtrancl__listrel1__ConsI1,axiom,
    ! [X_2,Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Ys_1))),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2))))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_050,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1393352280t_bool(hAPP_f239852716t_bool(B_1_1,B_2_1))
     <= is_fun1097062475t_bool(B_2_1) ) ).

fof(fact_1035_not__less__eq__eq,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N_2)),M_2))
    <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) ) ).

fof(fact_856_rtrancl__induct,axiom,
    ! [Pa,Aa,Ba,R_2] :
      ( ( ( hBOOL(hAPP_A862370221t_bool(Pa,Ba))
         <= ! [Y_9,Z_4] :
              ( ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_9),Z_4)),R_2))
                 => ( hBOOL(hAPP_A862370221t_bool(Pa,Z_4))
                   <= hBOOL(hAPP_A862370221t_bool(Pa,Y_9)) ) )
               <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Y_9)),transi1256616594le_alt(R_2))) )
             <= ( is_Arr1861959080le_alt(Z_4)
                & is_Arr1861959080le_alt(Y_9) ) ) )
       <= hBOOL(hAPP_A862370221t_bool(Pa,Aa)) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),transi1256616594le_alt(R_2))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___082,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(B_2_1)
     => is_fun760276937t_bool(hAPP_f329301088t_bool(B_1_1,B_2_1)) ) ).

fof(fact_276_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1416261241ol_nat(F,X_1)),hAPP_f1593910865t_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f570668343l_bool(hAPP_f2111526677l_bool(member1881985050ol_nat,F),pi_fun2080023171ol_nat(A_1,B_1))) ) ).

fof(fact_702_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
     => Xs_1 = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_2),Xs_1) ) ).

fof(help_fequal_2_1_fequal_000tc__HOL__Obool_T,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fequal_bool,X),Y)) ) ).

fof(fact_502_cond__split__eta,axiom,
    ! [F,G] :
      ( ! [X_1,Y_9] : hAPP_P1056860425le_alt(G,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9)) = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(F,X_1),Y_9)
     => G = hAPP_f1078809103le_alt(produc748227559le_alt,F) ) ).

fof(fact_827_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( Xs_1 = hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Ys),hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Zs))
          & ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Zs))) )
    <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( hBOOL(hAPP_bool_bool(fconj(P),Q))
      | ~ hBOOL(Q)
      | ~ hBOOL(P) ) ).

fof(fact_1180_less__imp__add__positive,axiom,
    ! [I_2,J] :
      ( ? [K_1] :
          ( hAPP_nat_nat(plus_plus_nat(I_2),K_1) = J
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J)) ) ).

fof(help_fequal_1_1_fequal_000tc__HOL__Obool_T,axiom,
    ! [X,Y] :
      ( ( is_bool(Y)
        & is_bool(X) )
     => ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fequal_bool,X),Y))
        | X = Y ) ) ).

fof(fact_138_splice__Nil2,axiom,
    ! [Xs_50] : Xs_50 = hAPP_l726444215le_alt(splice360969192le_alt(Xs_50),nil_Ar126264853le_alt) ).

fof(fact_87_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       <= ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A1677245848t_bool(F,X_2)),hAPP_A60074736l_bool(B_1,X_2))) ) ) ).

fof(fact_414_append1__eq__conv,axiom,
    ! [Xs_1,X_2,Ys_1,Y_2] :
      ( ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_2) )
     => ( ( Ys_1 = Xs_1
          & X_2 = Y_2 )
      <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt)) ) ) ).

fof(fact_205_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f799496074l_bool(hAPP_f105614477l_bool(member2043543687t_bool,F),pi_Pro531915080t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1))
         => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_P19446482t_bool(F,X_1)),hAPP_P139894920l_bool(B_1,X_1))) ) ) ).

fof(fact_829_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1)))
    <=> ? [Ys,Zs] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs)) = Xs_1 ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe_107,axiom,
    ! [P,Q] :
      ( hAPP_b1812770943l_bool(hAPP_f256804927l_bool(cOMBK_69806648l_bool,P),Q) = P
     <= is_fun279392540l_bool(P) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f336430449l_bool(B_1_1,B_2_1)) ).

fof(fact_407_append__self__conv,axiom,
    ! [Xs_1,Ys_1] :
      ( Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)
    <=> Ys_1 = nil_Ar126264853le_alt ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn_128,axiom,
    ! [P,Q] :
      ( is_fun288122577l_bool(P)
     => P = hAPP_A1952883197l_bool(hAPP_f1686853802l_bool(cOMBK_215999438e_indi,P),Q) ) ).

fof(fact_730_last__in__set,axiom,
    ! [As] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,last_f1633249093t_bool(As)),set_fu335223357t_bool(As)))
     <= nil_fu81264926t_bool != As ) ).

fof(fact_1015_less__not__refl2,axiom,
    ! [N,M] :
      ( N != M
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),M)) ) ).

fof(fact_631_rtrancl_Ortrancl__refl,axiom,
    ! [Aa,R_2] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Aa)),transi992120749le_alt(R_2))) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__HOL__Ob,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun1393352280t_bool(B_1_1)
        & is_Arr1861959080le_alt(B_2_1) )
     => is_bool(hAPP_A862370221t_bool(B_1_1,B_2_1)) ) ).

fof(fact_806_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),set_fu1384968698t_bool(Xs_1)))
           => hBOOL(hAPP_f592646513l_bool(Pa,X_1)) )
         <= is_fun961089132t_bool(X_1) )
     => hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Xs_1),hAPP_l1075146559t_bool(takeWh1512678354t_bool(Pa),Ys_1)) = hAPP_l1075146559t_bool(takeWh1512678354t_bool(Pa),hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Xs_1),Ys_1)) ) ).

fof(fact_825_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
    <=> ? [Ys,Zs] :
          ( Xs_1 = hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Ys),hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Zs))
          & ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Zs))) ) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_nat_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f54304608l_bool(B_1_1,B_2_1)) ).

fof(fact_226_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1976794890l_bool(hAPP_f1603005581l_bool(member1603119111le_alt,F),pi_fun553016520le_alt(A_1,hAPP_f372103450t_bool(cOMBK_1411148035t_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f40547922le_alt(F,X_1)),B_1))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) )
         <= is_fun760276937t_bool(X_1) ) ) ).

fof(fact_710_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_l2034560823i_bool(distin1358019435e_indi,Xs_1))
        & ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) )
    <=> hBOOL(hAPP_l2034560823i_bool(distin1358019435e_indi,hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Xs_1))) ) ).

fof(fact_169_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f307807922l_bool(hAPP_f491986957l_bool(member107042095t_bool,F),pi_nat1370421354t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_n588788980t_bool(F,X_2)),hAPP_n1674354836l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) ) ) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Orde,axiom,
    is_fun158382675l_bool(top_to1714702858l_bool) ).

fof(fact_943_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),B_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) ) ) ).

fof(gsy_c_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    is_fun2093718614t_bool(fequal1160105444le_alt) ).

fof(fact_868_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Ys)))
          & hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Ys),hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Zs)) = Xs_1 )
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ).

fof(fact_744_hd__in__set,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hd_Arr805754088le_alt(Xs_1)),set_Ar1565008694le_alt(Xs_1)))
     <= nil_Ar126264853le_alt != Xs_1 ) ).

fof(help_COMBB_1_1_COMBB_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabel,axiom,
    ! [P,Q,R] : hAPP_P1056860425le_alt(P,hAPP_l391088160le_alt(Q,R)) = hAPP_l391088160le_alt(hAPP_f1514103381le_alt(hAPP_f500394983le_alt(cOMBB_500037706le_alt,P),Q),R) ).

fof(fact_422_butlast__snoc,axiom,
    ! [Xs_31,X_27] : Xs_31 = hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_31),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_27),nil_Ar126264853le_alt))) ).

fof(fact_524_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Z_3),hAPP_l1284365004t_bool(hAPP_l1538437917t_bool(Ca,Aa),Ba)))
     => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,Z_3),hAPP_P1861769507t_bool(hAPP_f906821569t_bool(produc2091914181t_bool,Ca),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)))) ) ).

fof(fact_256_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f196630486l_bool(hAPP_f1212866771l_bool(member392258873t_bool,F),pi_Arr44017448t_bool(A_1,hAPP_f1874082285l_bool(cOMBK_1778599651le_alt,B_1))))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A1159885342t_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) ) ) ) ).

fof(fact_68_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1))
       <= ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_P1095651821le_alt(F,X_2)),hAPP_P2082381915t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f2017347493l_bool(hAPP_f137298509l_bool(member1567747746le_alt,F),pi_Pro2035602019le_alt(A_1,B_1))) ) ).

fof(fact_639_rtrancl__trans,axiom,
    ! [Ca,Aa,Ba,R_2] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ba),Ca)),transi992120749le_alt(R_2)))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ca)),transi992120749le_alt(R_2))) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),transi992120749le_alt(R_2))) ) ).

fof(fact_735_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(butlast_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),Ys_1)))))
     <= ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(butlast_nat,Xs_1))))
        | hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(butlast_nat,Ys_1)))) ) ) ).

fof(fact_165_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f799496074l_bool(hAPP_f105614477l_bool(member2043543687t_bool,F),pi_Pro531915080t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_P19446482t_bool(F,X_2)),hAPP_P139894920l_bool(B_1,X_2))) ) ) ).

fof(help_COMBS_1_1_COMBS_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [P,Q,R] : hAPP_P1056860425le_alt(hAPP_l693571982le_alt(P,R),hAPP_l391088160le_alt(Q,R)) = hAPP_l391088160le_alt(hAPP_f1514103381le_alt(hAPP_f1564521144le_alt(cOMBS_1399042523le_alt,P),Q),R) ).

fof(fact_321_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f592646513l_bool(A_1,X_2))
    <=> hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) ) ).

fof(fact_1154_diff__add__assoc,axiom,
    ! [I_2,K_2,J] :
      ( hAPP_nat_nat(plus_plus_nat(I_2),hAPP_nat_nat(minus_minus_nat(J),K_2)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(I_2),J)),K_2)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J)) ) ).

fof(fact_913_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Ca),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Ca),B_1)) ) ) ).

fof(fact_686_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(takeWh1309019107t_bool(Pa),Xs_1))))
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
        & hBOOL(hAPP_f965095724l_bool(Pa,X_2)) ) ) ).

fof(fact_780_partition__P,axiom,
    ! [Pa,Xs_1,Yes,No] :
      ( hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Yes),No) = partit327648526le_alt(Pa,Xs_1)
     => ( ! [X_1] :
            ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Yes)))
           => hBOOL(hAPP_A862370221t_bool(Pa,X_1)) )
        & ! [X_1] :
            ( ~ hBOOL(hAPP_A862370221t_bool(Pa,X_1))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(No))) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__HOL__Obool_Mtc__fun_Itc__prod_Itc__Arrow____,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f817604743l_bool(B_1_1,B_2_1)) ).

fof(help_If_1_1_If_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____,axiom,
    ! [X,Y] : X = hAPP_P1056860425le_alt(hAPP_P864444517le_alt(if_Pro1306781203le_alt(fTrue),X),Y) ).

fof(fact_1173_add__is__1,axiom,
    ! [M_2,N_2] :
      ( hAPP_nat_nat(suc,zero_zero_nat) = hAPP_nat_nat(plus_plus_nat(M_2),N_2)
    <=> ( ( hAPP_nat_nat(suc,zero_zero_nat) = M_2
          & N_2 = zero_zero_nat )
        | ( N_2 = hAPP_nat_nat(suc,zero_zero_nat)
          & M_2 = zero_zero_nat ) ) ) ).

fof(fact_72_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f40547922le_alt(F,X_2)),hAPP_f996881846t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1976794890l_bool(hAPP_f1603005581l_bool(member1603119111le_alt,F),pi_fun553016520le_alt(A_1,B_1))) ) ).

fof(help_fTrue_1_1_U,axiom,
    hBOOL(fTrue) ).

fof(fact_966_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),B_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpn_069,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1306865520l_bool(B_1_1,B_2_1)) ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_f965095724l_bool(hAPP_f1577179519l_bool(fequal785189517t_bool,X),Y))
      | Y != X ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___151,axiom,
    ! [P,Q,R] : hAPP_f965095724l_bool(hAPP_f146009813l_bool(hAPP_f1956380189l_bool(cOMBC_574836706l_bool,P),Q),R) = hAPP_f777333846l_bool(hAPP_f461621971l_bool(P,R),Q) ).

fof(fact_614_length__list__update,axiom,
    ! [Xs_7,I_4,X_13] : hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(Xs_7),I_4),X_13)) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_7) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(hAPP_A1664620203t_bool(hAPP_f825175477t_bool(cOMBC_1628726426t_bool,P),Q),R) = hAPP_A862370221t_bool(hAPP_A1664620203t_bool(P,R),Q) ).

fof(fact_44_not__Cons__self,axiom,
    ! [Xs_52,X_38] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_38),Xs_52) != Xs_52 ).

fof(fact_805_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l210315413t_bool(takeWh169821797t_bool(Pa),hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Xs_1),Ys_1)) = hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Xs_1),hAPP_l210315413t_bool(takeWh169821797t_bool(Pa),Ys_1))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f312250286l_bool(Pa,X_1))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),set_fu335223357t_bool(Xs_1))) )
         <= is_fun1097062475t_bool(X_1) ) ) ).

fof(fact_860_converse__rtranclE,axiom,
    ! [X_2,Z_3,R_2] :
      ( ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Z_3) )
     => ( ( ~ ! [Y_9] :
                ( is_Arr1861959080le_alt(Y_9)
               => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_9),Z_3)),transi1256616594le_alt(R_2)))
                 <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_9)),R_2)) ) )
         <= X_2 != Z_3 )
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Z_3)),transi1256616594le_alt(R_2))) ) ) ).

fof(fact_227_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f899439636l_bool(hAPP_f2103233871l_bool(member1620122743le_alt,F),pi_fun462417760le_alt(A_1,hAPP_f898562478t_bool(cOMBK_607931107t_bool,B_1))))
     <= ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f666924118le_alt(F,X_1)),B_1)) ) ) ) ).

fof(fact_470_listrel1I1,axiom,
    ! [Xs_1,X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_2))
     => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Xs_1))),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ).

fof(fact_828_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : Xs_1 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Zs))
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___080,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun2093718614t_bool(hAPP_f1617919085t_bool(B_1_1,B_2_1))
     <= is_fun961089132t_bool(B_2_1) ) ).

fof(fact_401_append__Nil,axiom,
    ! [Ys_14] : Ys_14 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,nil_Ar126264853le_alt),Ys_14) ).

fof(fact_882_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
     => ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Zs)))
          & hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Ys),hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Zs)) = Xs_1 ) ) ).

fof(fact_242_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(F,X_1)),B_1))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) )
         <= is_Arr1861959080le_alt(X_1) )
     => hBOOL(hAPP_f1276380911l_bool(hAPP_f1868812933l_bool(member26406738le_alt,F),pi_Arr55294401le_alt(A_1,hAPP_f393984045t_bool(cOMBK_673344138le_alt,B_1)))) ) ).

fof(fact_561_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( ! [A_7,B_6] :
          ( P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)
         => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Z_3),hAPP_l1542188220l_bool(hAPP_l1352613953l_bool(Ca,A_7),B_6))) )
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Z_3),hAPP_P1905961381l_bool(hAPP_f786857743l_bool(produc1170920579l_bool,Ca),P_1))) ) ).

fof(fact_269_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f836059805e_indi(F,X_1)),hAPP_f1948454017i_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f1725204053l_bool(hAPP_f666018637l_bool(member905797074e_indi,F),pi_fun753830419e_indi(A_1,B_1))) ) ).

fof(fact_660_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Y_2) )
     => ( ( Y_2 = X_2
          | hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Y_2),set_Ar1565008694le_alt(Xs_1))) )
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Y_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)))) ) ) ).

fof(fact_894_list__update_Osimps_I2_J,axiom,
    ! [X_2,Xs_1,I_1,V] : hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),I_1),V) = hAPP_n1875670159le_alt(nat_ca14895078le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,V),Xs_1),hAPP_f402821245le_alt(hAPP_f548810715le_alt(cOMBB_903467948lt_nat,hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2)),hAPP_A1043896845le_alt(hAPP_f1956511609le_alt(cOMBC_1697899890le_alt,list_u1050032253le_alt(Xs_1)),V))),I_1) ).

fof(fact_663_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( ( hBOOL(Y_2)
        <=> hBOOL(X_2) )
        | hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Y_2),set_bool(Xs_1))) )
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Y_2),set_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Xs_1)))) ) ).

fof(fact_53_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       <= ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_n1965810497t_bool(F,X_2)),hAPP_n2095207769l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f903371257l_bool(hAPP_f1546082457l_bool(member1494731740t_bool,F),pi_nat1317494091t_bool(A_1,B_1))) ) ).

fof(fact_887_split__list,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : Xs_1 = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Zs))
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(fact_306_PairE,axiom,
    ! [P_2] :
      ~ ! [X_1,Y_9] : P_2 != hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9) ).

fof(fact_847_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( L_1 = K
     => ( hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),L_1) = hAPP_l726444215le_alt(takeWh536362254le_alt(Q_1),K)
       <= ! [X_1] :
            ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(L_1)))
             => ( hBOOL(hAPP_A862370221t_bool(Q_1,X_1))
              <=> hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) )
           <= is_Arr1861959080le_alt(X_1) ) ) ) ).

fof(fact_126_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f196630486l_bool(hAPP_f1212866771l_bool(member392258873t_bool,F),pi_Arr44017448t_bool(A_1,hAPP_f1874082285l_bool(cOMBK_1778599651le_alt,B_1))))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A1159885342t_bool(F,X_2)),B_1)) ) ) ).

fof(gsy_c_List_Olast_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    ! [B_1_1] : is_Arr1861959080le_alt(last_A57386030le_alt(B_1_1)) ).

fof(fact_1005_Suc__mono,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_446_UNIV__witness,axiom,
    ? [X_1] :
      ( is_Arr43961803e_indi(X_1)
      & hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),top_to1576102282i_bool)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe_114,axiom,
    ! [P,Q] :
      ( P = hAPP_A187815023l_bool(hAPP_f589776703l_bool(cOMBK_1638246986le_alt,P),Q)
     <= is_fun279392540l_bool(P) ) ).

fof(fact_1048_Suc__le__eq,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M_2)),N_2)) ) ).

fof(fact_133_list_Osimps_I5_J,axiom,
    ! [F1,F2,Aa,List] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(F2,Aa),List) = hAPP_l726444215le_alt(list_c380068407le_alt(F1,F2),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),List)) ).

fof(fact_891_split__list,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : Xs_1 = hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Ys),hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Zs))
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ).

fof(fact_196_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1424540178l_bool(hAPP_f452990795l_bool(member1870621557le_alt,F),pi_fun684211550le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1800079444le_alt(F,X_1)),hAPP_f239852716t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) ) ) ) ).

fof(fact_984_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,Aa),top_to565915683t_bool)) ).

fof(fact_116_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f799496074l_bool(hAPP_f105614477l_bool(member2043543687t_bool,F),pi_Pro531915080t_bool(A_1,hAPP_f695414965l_bool(cOMBK_1193272835le_alt,B_1))))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_P19446482t_bool(F,X_2)),B_1)) ) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnf_018,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(hAPP_b317196972t_bool(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(fact_937_xt1_I4_J,axiom,
    ! [C_4,B_5,A_5] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_5),A_5))
     => ( B_5 = C_4
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_4),A_5)) ) ) ).

fof(fact_144_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1418366331ol_nat(F,X_2)),hAPP_f1628730575t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1534526009l_bool(hAPP_f2069145881l_bool(member1258861596ol_nat,F),pi_fun770049925ol_nat(A_1,B_1))) ) ).

fof(fact_557_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( is_Pro1725146340le_alt(P_1)
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Z_3),hAPP_P1875867302i_bool(hAPP_f1425186181i_bool(produc89849422i_bool,Ca),P_1)))
       <= ! [A_7,B_6] :
            ( ( P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)
             => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Z_3),hAPP_A2091627584i_bool(hAPP_A1965262040i_bool(Ca,A_7),B_6))) )
           <= ( is_Arr1861959080le_alt(A_7)
              & is_Arr1861959080le_alt(B_6) ) ) ) ) ).

fof(fact_1157_le__diff__conv2,axiom,
    ! [I_1,K,J_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),hAPP_nat_nat(minus_minus_nat(J_2),K)))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(I_1),K)),J_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J_2)) ) ).

fof(fact_420_takeWhile_Osimps_I2_J,axiom,
    ! [Xs_1,Pa,X_2] :
      ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1)) = hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1))
       <= hBOOL(hAPP_A862370221t_bool(Pa,X_2)) )
      & ( ~ hBOOL(hAPP_A862370221t_bool(Pa,X_2))
       => hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)) = nil_Ar126264853le_alt ) ) ).

fof(fact_223_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_P1257947515le_alt(F,X_1)),B_1)) )
         <= is_Pro1725146340le_alt(X_1) )
     => hBOOL(hAPP_f969456697l_bool(hAPP_f1857700889l_bool(member1549237916le_alt,F),pi_Pro610394757le_alt(A_1,hAPP_f1609079369t_bool(cOMBK_1369841150le_alt,B_1)))) ) ).

fof(fact_1049_le__imp__less__Suc,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),hAPP_nat_nat(suc,N)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_355_lexord__Nil__right,axiom,
    ! [X_2,R_2] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),nil_Ar126264853le_alt)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) ).

fof(fact_288_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(F,X_1)),hAPP_A1928120382l_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f1271753300l_bool(hAPP_f1254328783l_bool(member1986685623t_bool,F),pi_Arr1600668070t_bool(A_1,B_1))) ) ).

fof(fact_911_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Ca),B_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Ca),A_1)) ) ) ).

fof(fact_1193_Suc__eq__plus1,axiom,
    ! [N] : hAPP_nat_nat(plus_plus_nat(N),one_one_nat) = hAPP_nat_nat(suc,N) ).

fof(fact_853_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( K = L_1
     => ( hAPP_l1660244757t_bool(takeWh1309019107t_bool(Pa),L_1) = hAPP_l1660244757t_bool(takeWh1309019107t_bool(Q_1),K)
       <= ! [X_1] :
            ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),set_fu1865467835t_bool(L_1)))
             => ( hBOOL(hAPP_f965095724l_bool(Pa,X_1))
              <=> hBOOL(hAPP_f965095724l_bool(Q_1,X_1)) ) )
           <= is_fun760276937t_bool(X_1) ) ) ) ).

fof(fact_928_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,hAPP_f1765205l_bool(hAPP_f862836377l_bool(cOMBC_564645218l_bool,member520425275t_bool),R_1)),hAPP_f1765205l_bool(hAPP_f862836377l_bool(cOMBC_564645218l_bool,member520425275t_bool),S_1)))
    <=> hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,R_1),S_1)) ) ).

fof(fact_1042_le__neq__implies__less,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => ( N != M
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J,axiom,
    is_fun_bool_bool(top_to1647826457l_bool) ).

fof(fact_437_rev__induct,axiom,
    ! [Xs_1,Pa] :
      ( ( ! [X_1,Xs_17] :
            ( ( hBOOL(hAPP_l1386638586t_bool(Pa,Xs_17))
             => hBOOL(hAPP_l1386638586t_bool(Pa,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_17),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt)))) )
           <= is_Arr1861959080le_alt(X_1) )
       => hBOOL(hAPP_l1386638586t_bool(Pa,Xs_1)) )
     <= hBOOL(hAPP_l1386638586t_bool(Pa,nil_Ar126264853le_alt)) ) ).

fof(help_fequal_2_1_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(fequal1160105444le_alt,X),Y))
      | Y != X ) ).

fof(fact_1191_nat__size,axiom,
    ! [N] : hAPP_nat_nat(size_size_nat,N) = N ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_f312250286l_bool(Q,R)) = hAPP_f312250286l_bool(hAPP_f1765205l_bool(hAPP_f152453811l_bool(cOMBB_1459698610t_bool,P),Q),R) ).

fof(fact_219_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_f412050202t_bool(F,X_1)),hAPP_f1277514478l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) ) ) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle,axiom,
    ! [B_1_1,B_2_1] : is_fun288122577l_bool(hAPP_n2095207769l_bool(B_1_1,B_2_1)) ).

fof(fact_1192_One__nat__def,axiom,
    one_one_nat = hAPP_nat_nat(suc,zero_zero_nat) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf_057,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1534526009l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_List_Ohd_000tc__HOL__Obool,axiom,
    ! [B_1_1] : is_bool(hd_bool(B_1_1)) ).

fof(help_fequal_1_1_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_T,axiom,
    ! [X,Y] :
      ( ( is_Arr1861959080le_alt(X)
        & is_Arr1861959080le_alt(Y) )
     => ( Y = X
        | ~ hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(fequal1160105444le_alt,X),Y)) ) ) ).

fof(gsy_c_List_Ohd_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_,axiom,
    ! [B_1_1] : is_Pro1725146340le_alt(hd_Pro1524751780le_alt(B_1_1)) ).

fof(fact_555_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( is_Pro1725146340le_alt(P_1)
     => ( ! [A_7,B_6] :
            ( ( P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)
             => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Z_3),hAPP_A490104565t_bool(hAPP_A101171597t_bool(Ca,A_7),B_6))) )
           <= ( is_Arr1861959080le_alt(B_6)
              & is_Arr1861959080le_alt(A_7) ) )
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Z_3),hAPP_P2082381915t_bool(hAPP_f1783389935t_bool(produc51145731t_bool,Ca),P_1))) ) ) ).

fof(gsy_c_List_Olast_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oind,axiom,
    ! [B_1_1] : is_fun760276937t_bool(last_f1417039043t_bool(B_1_1)) ).

fof(fact_1058_Suc__lessE,axiom,
    ! [I_2,K_2] :
      ( ~ ! [J_1] :
            ( hAPP_nat_nat(suc,J_1) != K_2
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,I_2)),K_2)) ) ).

fof(gsy_c_fconj,axiom,
    ! [B_1_1] :
      ( is_bool(B_1_1)
     => is_fun_bool_bool(fconj(B_1_1)) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_096,axiom,
    ! [B_1_1,B_2_1] : is_fun288122577l_bool(hAPP_P139894920l_bool(B_1_1,B_2_1)) ).

fof(fact_922_Pi__anti__mono,axiom,
    ! [B_1,A_6,A_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,A_6),A_1))
     => hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,pi_fun150026276t_bool(A_1,B_1)),pi_fun150026276t_bool(A_6,B_1))) ) ).

fof(fact_462_distinct1__rotate,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1))
    <=> hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(rotate1322903650le_alt,Xs_1))) ) ).

fof(fact_903_rtrancl_Osimps,axiom,
    ! [A1,A2,R_2] :
      ( ( ? [A_7] :
            ( A2 = A_7
            & A1 = A_7 )
        | ? [A_7,B_6,C_5] :
            ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,B_6),C_5)),R_2))
            & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)),transi992120749le_alt(R_2)))
            & A2 = C_5
            & A1 = A_7 ) )
    <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A1),A2)),transi992120749le_alt(R_2))) ) ).

fof(fact_918_listrel__mono,axiom,
    ! [R_2,S_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,R_2),S_2))
     => hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,hAPP_f1865483825t_bool(listre760726333le_alt,R_2)),hAPP_f1865483825t_bool(listre760726333le_alt,S_2))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe,axiom,
    ! [P,Q] :
      ( is_fun279392540l_bool(P)
     => hAPP_n1674354836l_bool(hAPP_f11902820l_bool(cOMBK_39620975ol_nat,P),Q) = P ) ).

fof(fact_635_converse__rtrancl__into__rtrancl,axiom,
    ! [Ca,Aa,Ba,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),R_2))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ca)),transi992120749le_alt(R_2)))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ba),Ca)),transi992120749le_alt(R_2))) ) ) ).

fof(fact_228_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1725204053l_bool(hAPP_f666018637l_bool(member905797074e_indi,F),pi_fun753830419e_indi(A_1,hAPP_f1368393520i_bool(cOMBK_684046286t_bool,B_1))))
     <= ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f836059805e_indi(F,X_1)),B_1)) ) ) ) ).

fof(fact_254_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_n291670979t_bool(F,X_1)),B_1))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1)) )
     => hBOOL(hAPP_f2835579l_bool(hAPP_f1229756829l_bool(member379339614t_bool,F),pi_nat955432909t_bool(A_1,hAPP_f1879785608l_bool(cOMBK_2131602312ol_nat,B_1)))) ) ).

fof(fact_46_dictatorI,axiom,
    ! [I_1,Fa] :
      ( ( hBOOL(hAPP_A1785763630i_bool(hAPP_f1552576127i_bool(arrow_610963188ctator,Fa),I_1))
       <= ! [X_1] :
            ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),arrow_1721807329e_Prof))
             => ! [A_7,B_6] :
                  ( ( is_Arr1861959080le_alt(A_7)
                    & is_Arr1861959080le_alt(B_6) )
                 => ( B_6 != A_7
                   => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_f412050202t_bool(Fa,X_1)))
                     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A1677245848t_bool(X_1,I_1))) ) ) ) )
           <= is_fun760276937t_bool(X_1) ) )
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Fa),pi_fun150026276t_bool(arrow_1721807329e_Prof,hAPP_f1924755118l_bool(cOMBK_2038534567t_bool,arrow_1681063817le_Lin)))) ) ).

fof(fact_883_split__list,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
     => ? [Ys,Zs] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Zs)) = Xs_1 ) ).

fof(fact_246_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_P19446482t_bool(F,X_1)),B_1))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) )
     => hBOOL(hAPP_f799496074l_bool(hAPP_f105614477l_bool(member2043543687t_bool,F),pi_Pro531915080t_bool(A_1,hAPP_f695414965l_bool(cOMBK_1193272835le_alt,B_1)))) ) ).

fof(fact_1125_neq0__conv,axiom,
    ! [N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_2))
    <=> zero_zero_nat != N_2 ) ).

fof(fact_493_split__eta,axiom,
    ! [F] : hAPP_f1078809103le_alt(produc748227559le_alt,hAPP_f746471349le_alt(hAPP_f1532338415le_alt(cOMBB_2017209238le_alt,hAPP_f500394983le_alt(cOMBB_500037706le_alt,F)),produc237774329le_alt)) = F ).

fof(fact_566_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Z_3),hAPP_P1875867302i_bool(hAPP_f1425186181i_bool(produc89849422i_bool,Ca),P_1)))
       => ~ ! [X_1,Y_9] :
              ( ( is_Arr1861959080le_alt(X_1)
                & is_Arr1861959080le_alt(Y_9) )
             => ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Z_3),hAPP_A2091627584i_bool(hAPP_A1965262040i_bool(Ca,X_1),Y_9)))
               <= hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) = P_1 ) ) )
     <= is_Pro1725146340le_alt(P_1) ) ).

fof(fact_316_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
    <=> hBOOL(hAPP_A862370221t_bool(A_1,X_2)) ) ).

fof(fact_206_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1271753300l_bool(hAPP_f1254328783l_bool(member1986685623t_bool,F),pi_Arr1600668070t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(F,X_1)),hAPP_A1928120382l_bool(B_1,X_1))) ) ) ) ).

fof(fact_1064_add__less__mono1,axiom,
    ! [K_2,I_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_2),K_2)),hAPP_nat_nat(plus_plus_nat(J),K_2)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabel,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f927478261l_bool(B_1_1,B_2_1)) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__prod_Itc__Arrow____Order____Mirabe,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => P = hAPP_P606313927t_bool(hAPP_b1703662281t_bool(cOMBK_306730240le_alt,P),Q) ) ).

fof(help_fequal_1_1_fequal_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirab,axiom,
    ! [X,Y] :
      ( X = Y
      | ~ hBOOL(hAPP_P1327827171t_bool(hAPP_P163071551t_bool(fequal673514820le_alt,X),Y)) ) ).

fof(fact_997_top__le,axiom,
    ! [Aa] :
      ( is_fun961089132t_bool(Aa)
     => ( Aa = top_to565915683t_bool
       <= hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,top_to565915683t_bool),Aa)) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t_104,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(hAPP_f2014742713t_bool(hAPP_f1382209403t_bool(cOMBC_1745481870l_bool,P),Q),R) = hAPP_f2013399995l_bool(hAPP_A297543629l_bool(P,R),Q) ).

fof(fact_476_Cons__listrel1E1,axiom,
    ! [X_2,Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
     => ( ~ ! [Zs] :
              ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Zs)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
             <= Ys_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs) )
       <= ! [Y_9] :
            ( is_Arr1861959080le_alt(Y_9)
           => ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Xs_1) = Ys_1
             => ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_9)),R_2)) ) ) ) ) ).

fof(fact_143_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_P710098616e_indi(F,X_2)),hAPP_P1875867302i_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1306865520l_bool(hAPP_f407092109l_bool(member234128621e_indi,F),pi_Pro1270767662e_indi(A_1,B_1))) ) ).

fof(fact_188_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f597137892l_bool(hAPP_f1175923213l_bool(member989885409l_bool,F),pi_fun823343522l_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f965095724l_bool(F,X_1)),hAPP_f839832464l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) ) ) ) ).

fof(fact_1175_min__Suc1,axiom,
    ! [N_2,M_2] : hAPP_nat_nat(nat_case_nat(zero_zero_nat,hAPP_f1914919701at_nat(hAPP_f1585078997at_nat(cOMBB_nat_nat_nat,suc),hAPP_nat_fun_nat_nat(ord_min_nat,N_2))),M_2) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(suc,N_2)),M_2) ).

fof(fact_526_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Z_3),hAPP_P1905961381l_bool(hAPP_f786857743l_bool(produc1170920579l_bool,Ca),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba))))
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Z_3),hAPP_l1542188220l_bool(hAPP_l1352613953l_bool(Ca,Aa),Ba))) ) ).

fof(fact_282_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1))
         => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_P1699981037le_alt(F,X_1)),hAPP_P1861769507t_bool(B_1,X_1))) )
     => hBOOL(hAPP_f1468796453l_bool(hAPP_f1867424333l_bool(member290075938le_alt,F),pi_Pro492447587le_alt(A_1,B_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabel_148,axiom,
    ! [P,Q] :
      ( P = hAPP_A366518464l_bool(hAPP_f1874082285l_bool(cOMBK_1778599651le_alt,P),Q)
     <= is_fun158382675l_bool(P) ) ).

fof(fact_728_last__in__set,axiom,
    ! [As] :
      ( As != nil_Ar1968865438e_indi
     => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,last_A1892550853e_indi(As)),set_Ar219761597e_indi(As))) ) ).

fof(gsy_c_Arrow__Order__Mirabelle__tpnfnnbpuu_OIIA,axiom,
    is_fun158382675l_bool(arrow_1654180089le_IIA) ).

fof(fact_655_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( ( hAPP_l210315413t_bool(dropWh23362493t_bool(hAPP_f1765205l_bool(hAPP_f152453811l_bool(cOMBB_1459698610t_bool,fNot),hAPP_f1577576703l_bool(hAPP_f1556356969l_bool(cOMBC_1576836772l_bool,fequal1596628751t_bool),X_2))),hAPP_l210315413t_bool(rev_fu1629171390t_bool,Xs_1)) = hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),hAPP_l210315413t_bool(rev_fu1629171390t_bool,hAPP_l210315413t_bool(takeWh169821797t_bool(hAPP_f1765205l_bool(hAPP_f152453811l_bool(cOMBB_1459698610t_bool,fNot),hAPP_f1577576703l_bool(hAPP_f1556356969l_bool(cOMBC_1576836772l_bool,fequal1596628751t_bool),X_2))),Xs_1)))
       <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) )
     <= hBOOL(hAPP_l2060223415l_bool(distin1991771627t_bool,Xs_1)) ) ).

fof(fact_676_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(hAPP_n1429822280t_bool(drop_f1080688732t_bool,N_2),Xs_1)))) ) ).

fof(fact_572_split__part,axiom,
    ! [Pa,Q_1,X_1] :
      ( ( hBOOL(Pa)
        & hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,Q_1),X_1)) )
    <=> hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,hAPP_f825175477t_bool(hAPP_f57507985t_bool(cOMBB_1171600517le_alt,hAPP_f27970449t_bool(cOMBB_2104979073le_alt,fconj(Pa))),Q_1)),X_1)) ) ).

fof(fact_1009_nat_Oinject,axiom,
    ! [Nat_5,Nat_4] :
      ( hAPP_nat_nat(suc,Nat_5) = hAPP_nat_nat(suc,Nat_4)
    <=> Nat_5 = Nat_4 ) ).

fof(fact_715_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
        & hBOOL(hAPP_l1795316048t_bool(distin856461956le_alt,Xs_1)) )
    <=> hBOOL(hAPP_l1795316048t_bool(distin856461956le_alt,hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Xs_1))) ) ).

fof(fact_990_top__unique,axiom,
    ! [Aa] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(ord_less_eq_bool,top_top_bool),Aa))
    <=> ( hBOOL(Aa)
      <=> hBOOL(top_top_bool) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpn_073,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f2017347493l_bool(B_1_1,B_2_1)) ).

fof(fact_551_splitI2,axiom,
    ! [Ca,P_1] :
      ( is_Pro1725146340le_alt(P_1)
     => ( hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,Ca),P_1))
       <= ! [A_7,B_6] :
            ( ( is_Arr1861959080le_alt(B_6)
              & is_Arr1861959080le_alt(A_7) )
           => ( P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)
             => hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Ca,A_7),B_6)) ) ) ) ) ).

fof(fact_260_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_f412050202t_bool(F,X_1)),B_1)) ) )
     => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,hAPP_f1924755118l_bool(cOMBK_2038534567t_bool,B_1)))) ) ).

fof(fact_350_top1I,axiom,
    ! [X_2] : hBOOL(hAPP_A862370221t_bool(top_to2076077793t_bool,X_2)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Nat__Onat_Mtc__prod_Itc__Arrow____Order____M,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f2115479956l_bool(B_1_1,B_2_1)) ).

fof(fact_767_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
       => Xs_1 = hAPP_l210315413t_bool(hAPP_f1812326636t_bool(insert1946138248t_bool,X_2),Xs_1) )
      & ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
       => hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Xs_1) = hAPP_l210315413t_bool(hAPP_f1812326636t_bool(insert1946138248t_bool,X_2),Xs_1) ) ) ).

fof(fact_1126_not__less0,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),zero_zero_nat)) ).

fof(fact_1148_diff__self__eq__0,axiom,
    ! [M] : zero_zero_nat = hAPP_nat_nat(minus_minus_nat(M),M) ).

fof(fact_695_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(hAPP_l1660244757t_bool(butlas309371216t_bool,Xs_1)))) ) ).

fof(fact_1024_Suc__lessD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_375_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),top_to1647826457l_bool)) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Arrow____Order___103,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_A1785763630i_bool(Q,R)) = hAPP_A1785763630i_bool(hAPP_f580451669i_bool(hAPP_f1250179763i_bool(cOMBB_1141363506e_indi,P),Q),R) ).

fof(fact_876_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
     => ? [Ys,Zs] :
          ( hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Ys),hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Zs))) ) ) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(P)
      | hBOOL(hAPP_bool_bool(fNot,P)) ) ).

fof(fact_736_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)))))
     <= ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_1))))
        | hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(butlas1262502241le_alt,Ys_1)))) ) ) ).

fof(fact_450_UNIV__witness,axiom,
    ? [X_1] :
      ( is_fun961089132t_bool(X_1)
      & hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),top_to1853035173l_bool)) ) ).

fof(fact_411_distinct__takeWhile,axiom,
    ! [Pa,Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1))) ) ).

fof(gsy_c_HOL_Oundefined_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn,axiom,
    is_fun1097062475t_bool(undefi1445431868t_bool(fun(fun(arrow_1271263838e_indi,fun(product_prod(arrow_107136085le_alt,arrow_107136085le_alt),bool)),fun(product_prod(arrow_107136085le_alt,arrow_107136085le_alt),bool)))) ).

fof(fact_640_rtrancl__trans,axiom,
    ! [Ca,Aa,Ba,R_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),transi1256616594le_alt(R_2)))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ca)),transi1256616594le_alt(R_2)))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ba),Ca)),transi1256616594le_alt(R_2))) ) ) ).

fof(fact_1073_le__add1,axiom,
    ! [N,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),hAPP_nat_nat(plus_plus_nat(N),M))) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__,axiom,
    ! [P,Q] :
      ( P = hAPP_P1711233733t_bool(hAPP_f1609079369t_bool(cOMBK_1369841150le_alt,P),Q)
     <= is_fun1393352280t_bool(P) ) ).

fof(fact_1076_trans__le__add1,axiom,
    ! [M,I_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),hAPP_nat_nat(plus_plus_nat(J),M)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J)) ) ).

fof(fact_600_rev__is__rev__conv,axiom,
    ! [Xs_1,Ys_1] :
      ( Xs_1 = Ys_1
    <=> hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Ys_1) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__fun_Itc__HOL__Obo,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_bool_bool(hAPP_f961197973l_bool(B_1_1,B_2_1))
     <= is_fun_bool_bool(B_2_1) ) ).

fof(fact_784_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( ( hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,X_1),Z_4)),R_2))
             <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,Y_9),Z_4)),R_2)) )
           <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,X_1),Y_9)),R_2)) )
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),set_Pr1404309362le_alt(Xs_1))) )
     => ( hBOOL(hAPP_f1790426673l_bool(hAPP_P1303953929l_bool(member1501249940le_alt,hAPP_l993078710le_alt(hAPP_l139141107le_alt(produc1810286871le_alt,Xs_1),Ys_1)),hAPP_f471467367t_bool(lexord1965430054le_alt,R_2)))
       => ( hBOOL(hAPP_f1790426673l_bool(hAPP_P1303953929l_bool(member1501249940le_alt,hAPP_l993078710le_alt(hAPP_l139141107le_alt(produc1810286871le_alt,Xs_1),Zs_1)),hAPP_f471467367t_bool(lexord1965430054le_alt,R_2)))
         <= hBOOL(hAPP_f1790426673l_bool(hAPP_P1303953929l_bool(member1501249940le_alt,hAPP_l993078710le_alt(hAPP_l139141107le_alt(produc1810286871le_alt,Ys_1),Zs_1)),hAPP_f471467367t_bool(lexord1965430054le_alt,R_2))) ) ) ) ).

fof(fact_2_u,axiom,
    hBOOL(hAPP_f312250286l_bool(arrow_1587283740nimity,f)) ).

fof(fact_1155_le__imp__diff__is__add,axiom,
    ! [K,I_1,J_2] :
      ( ( K = hAPP_nat_nat(minus_minus_nat(J_2),I_1)
      <=> hAPP_nat_nat(plus_plus_nat(K),I_1) = J_2 )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_2)) ) ).

fof(fact_661_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Y_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Xs_1))))
     => ( Y_2 = X_2
        | hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Y_2),set_Pr1404309362le_alt(Xs_1))) ) ) ).

fof(fact_700_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( Xs_1 = hAPP_l1493873365le_alt(hAPP_P734992695le_alt(insert178756925le_alt,X_2),Xs_1)
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___086,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1067427061l_bool(B_1_1,B_2_1)) ).

fof(help_fequal_2_1_fequal_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirab,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_P1327827171t_bool(hAPP_P163071551t_bool(fequal673514820le_alt,X),Y))
      | X != Y ) ).

fof(fact_339_null__rec_I1_J,axiom,
    ! [X_34,Xs_48] : ~ hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_34),Xs_48))) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(fconj(P),Q))
      | hBOOL(Q) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l2060223415l_bool(B_1_1,B_2_1)) ).

fof(fact_1138_Zero__not__Suc,axiom,
    ! [M] : zero_zero_nat != hAPP_nat_nat(suc,M) ).

fof(help_COMBC_1_1_COMBC_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu_,axiom,
    ! [P,Q,R] : hAPP_P606313927t_bool(hAPP_P1267694911t_bool(hAPP_f135580393t_bool(cOMBC_607108822t_bool,P),Q),R) = hAPP_P606313927t_bool(hAPP_P1267694911t_bool(P,R),Q) ).

fof(fact_538_listrel1__eq__len,axiom,
    ! [Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
     => hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_1) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_1) ) ).

fof(fact_830_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : Xs_1 = hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Ys),hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Zs))
    <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(fact_449_UNIV__witness,axiom,
    ? [X_1] :
      ( is_fun760276937t_bool(X_1)
      & hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),top_to522745736l_bool)) ) ).

fof(fact_191_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1054274129le_alt(F,X_1)),hAPP_f1663053423t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f68732431l_bool(hAPP_f1556434125l_bool(member1366121996le_alt,F),pi_fun1792636103le_alt(A_1,B_1))) ) ).

fof(fact_925_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,R_1),S_1))
    <=> hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,hAPP_f1642286869t_bool(hAPP_f1297597679t_bool(cOMBC_188453282l_bool,member1020705648le_alt),R_1)),hAPP_f1642286869t_bool(hAPP_f1297597679t_bool(cOMBC_188453282l_bool,member1020705648le_alt),S_1))) ) ).

fof(fact_1010_Suc__inject,axiom,
    ! [X,Y] :
      ( hAPP_nat_nat(suc,Y) = hAPP_nat_nat(suc,X)
     => Y = X ) ).

fof(fact_170_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f354239713l_bool(hAPP_f720124009l_bool(member1139774916t_bool,F),pi_Pro623007021t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_P1861769507t_bool(F,X_2)),hAPP_P1905961381l_bool(B_1,X_2))) ) ) ).

fof(fact_988_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,Aa),top_to2076077793t_bool)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Nat__Onat_Mtc__fun_Itc__fun_Itc__Arrow____Or,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f2835579l_bool(B_1_1,B_2_1)) ).

fof(fact_831_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
    <=> ? [Ys,Zs] : Xs_1 = hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Ys),hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Zs)) ) ).

fof(fact_764_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hAPP_l1493873365le_alt(hAPP_P734992695le_alt(insert178756925le_alt,X_2),Xs_1) = hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) )
      & ( Xs_1 = hAPP_l1493873365le_alt(hAPP_P734992695le_alt(insert178756925le_alt,X_2),Xs_1)
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ) ).

fof(fact_91_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_P339823136lt_nat(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f2042909150l_bool(hAPP_f1073701219l_bool(member547554753lt_nat,F),pi_Pro264071722lt_nat(A_1,hAPP_f1809347209t_bool(cOMBK_1632198563le_alt,B_1)))) ) ).

fof(fact_1133_diff__le__mono,axiom,
    ! [L,M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(M),L)),hAPP_nat_nat(minus_minus_nat(N),L)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_1093_less__add__Suc2,axiom,
    ! [I_2,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(M),I_2)))) ).

fof(fact_213_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2835579l_bool(hAPP_f1229756829l_bool(member379339614t_bool,F),pi_nat955432909t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_n291670979t_bool(F,X_1)),hAPP_n295497947l_bool(B_1,X_1))) ) ) ).

fof(fact_958_ord__eq__le__trans,axiom,
    ! [C_1,A_2,B_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_2),C_1))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_2),C_1)) )
     <= B_2 = A_2 ) ).

fof(fact_343_distinct__butlast,axiom,
    ! [Xs_47] :
      ( ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_47))
       => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_47))) )
     <= nil_Ar126264853le_alt != Xs_47 ) ).

fof(fact_18_Pair__inject,axiom,
    ! [A_12,B_9,A_11,B_8] :
      ( ( ~ ( A_11 = A_12
           => B_9 != B_8 )
       <= hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_11),B_8) = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_12),B_9) )
     <= ( is_Arr1861959080le_alt(A_12)
        & is_Arr1861959080le_alt(B_9)
        & is_Arr1861959080le_alt(B_8)
        & is_Arr1861959080le_alt(A_11) ) ) ).

fof(fact_335_curry__conv,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P606313927t_bool(F,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))
    <=> hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(produc212588606t_bool(F),Aa),Ba)) ) ).

fof(fact_107_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1424540178l_bool(hAPP_f452990795l_bool(member1870621557le_alt,F),pi_fun684211550le_alt(A_1,hAPP_f1438487600t_bool(cOMBK_488408421t_bool,B_1))))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1800079444le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1)) ) ) ).

fof(fact_327_curry__def,axiom,
    ! [X_1,Xa,Xb_1] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(produc212588606t_bool(X_1),Xa),Xb_1))
    <=> hBOOL(hAPP_P606313927t_bool(X_1,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Xa),Xb_1))) ) ).

fof(fact_594_list__update__length,axiom,
    ! [Xs_14,X_17,Ys_3,Y_12] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_14),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_12),Ys_3)) = hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_14),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_17),Ys_3))),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_14)),Y_12) ).

fof(fact_977_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_2),Xs_1))))
     => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(fact_934_xt1_I5_J,axiom,
    ! [Y_6,X_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_6),X_7))
     => ( Y_6 = X_7
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_7),Y_6)) ) ) ).

fof(fact_1087_nat__add__right__cancel,axiom,
    ! [M_2,K,N_2] :
      ( M_2 = N_2
    <=> hAPP_nat_nat(plus_plus_nat(M_2),K) = hAPP_nat_nat(plus_plus_nat(N_2),K) ) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [P,Q,R] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(hAPP_f1294513379le_alt(cOMBC_1058495865le_alt,P),Q),R) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(P,R),Q) ).

fof(fact_782_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Z_4)),R_2))
             <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_9),Z_4)),R_2)) )
           <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9)),R_2)) )
         <= hBOOL(hAPP_f1707011108l_bool(hAPP_l1107171823l_bool(member1013148679le_alt,X_1),set_li1646995977le_alt(Xs_1))) )
     => ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2)))
       => ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Ys_1),Zs_1)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2)))
         => hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Zs_1)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2))) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpn,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f969456697l_bool(B_1_1,B_2_1)) ).

fof(fact_601_rev__swap,axiom,
    ! [Xs_1,Ys_1] :
      ( Xs_1 = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Ys_1)
    <=> Ys_1 = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l1386638586t_bool(B_1_1,B_2_1)) ).

fof(fact_54_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f799496074l_bool(hAPP_f105614477l_bool(member2043543687t_bool,F),pi_Pro531915080t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_P19446482t_bool(F,X_2)),hAPP_P139894920l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) ) ) ).

fof(fact_747_hd__in__set,axiom,
    ! [Xs_1] :
      ( Xs_1 != nil_Ar1968865438e_indi
     => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hd_Arr465110667e_indi(Xs_1)),set_Ar219761597e_indi(Xs_1))) ) ).

fof(fact_265_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_P710098616e_indi(F,X_1)),hAPP_P1875867302i_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f1306865520l_bool(hAPP_f407092109l_bool(member234128621e_indi,F),pi_Pro1270767662e_indi(A_1,B_1))) ) ).

fof(fact_250_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_n588788980t_bool(F,X_1)),B_1))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1)) )
     => hBOOL(hAPP_f307807922l_bool(hAPP_f491986957l_bool(member107042095t_bool,F),pi_nat1370421354t_bool(A_1,hAPP_f11902820l_bool(cOMBK_39620975ol_nat,B_1)))) ) ).

fof(fact_56_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1252760917l_bool(hAPP_f40035149l_bool(member855864530t_bool,F),pi_Arr2020412179t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       <= ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A2102641565t_bool(F,X_2)),hAPP_A1952883197l_bool(B_1,X_2))) ) ) ).

fof(fact_424_UNIV__def,axiom,
    top_top_fun_nat_bool = collect_nat(hAPP_b1013836512t_bool(cOMBK_bool_nat,fTrue)) ).

fof(fact_731_last__in__set,axiom,
    ! [As] :
      ( nil_fu507235289t_bool != As
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,last_f2112695026t_bool(As)),set_fu1384968698t_bool(As))) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_009,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_fun279392540l_bool(hAPP_A187815023l_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Nat__Onat_J_Mtc__List__Oli,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1919691607l_bool(B_1_1,B_2_1)) ).

fof(fact_822_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Zs)))
          & Xs_1 = hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Ys),hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Zs)) )
    <=> hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ).

fof(help_If_3_1_If_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____,axiom,
    ! [P] :
      ( ( fTrue = P
        | fFalse = P )
     <= is_bool(P) ) ).

fof(fact_12_in__below,axiom,
    ! [X_2,Y_2,L_2,Aa,Ba] :
      ( ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(Ba)
        & is_Arr1861959080le_alt(Y_2) )
     => ( Aa != Ba
       => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin))
         => ( ( Y_2 != X_2
              & ( ( ( ( Ba = Y_2
                      | hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ba),Y_2)),L_2)) )
                   <= Aa = X_2 )
                  & ( Aa != X_2
                   => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),L_2)) ) )
               <= Y_2 != Aa )
              & ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Ba)),L_2))
               <= Y_2 = Aa ) )
          <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),hAPP_A568203993t_bool(hAPP_A1941004017t_bool(hAPP_f344580165t_bool(arrow_1539419881_below,L_2),Aa),Ba))) ) ) ) ) ).

fof(fact_722_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_f592646513l_bool(Pa,X_2))
       => hAPP_l1075146559t_bool(takeWh1512678354t_bool(Pa),hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Xs_1),Ys_1)) = hAPP_l1075146559t_bool(takeWh1512678354t_bool(Pa),Xs_1) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(fact_441_rotate1__def,axiom,
    ! [Xs_1] : hAPP_l726444215le_alt(list_c380068407le_alt(nil_Ar126264853le_alt,hAPP_f1777336662le_alt(hAPP_f939319677le_alt(cOMBB_881934114le_alt,hAPP_f1294513379le_alt(cOMBC_1058495865le_alt,append1166636842le_alt)),hAPP_l618618165le_alt(hAPP_f657005563le_alt(cOMBC_1919297930le_alt,cons_A1216297413le_alt),nil_Ar126264853le_alt))),Xs_1) = hAPP_l726444215le_alt(rotate1322903650le_alt,Xs_1) ).

fof(fact_75_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f597137892l_bool(hAPP_f1175923213l_bool(member989885409l_bool,F),pi_fun823343522l_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f965095724l_bool(F,X_2)),hAPP_f839832464l_bool(B_1,X_2))) ) ) ).

fof(fact_153_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f592646513l_bool(F,X_2)),hAPP_f210572555l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f167218729l_bool(hAPP_f1666015481l_bool(member880664588l_bool,F),pi_fun1575168891l_bool(A_1,B_1))) ) ).

fof(fact_1044_le__eq__less__or__eq,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
        | N_2 = M_2 ) ) ).

fof(fact_71_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1534526009l_bool(hAPP_f2069145881l_bool(member1258861596ol_nat,F),pi_fun770049925ol_nat(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1418366331ol_nat(F,X_2)),hAPP_f1628730575t_bool(B_1,X_2))) ) ) ).

fof(fact_909_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),A_1))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Ca),B_1)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A_1),B_1)) ) ).

fof(fact_360_lexord__linear,axiom,
    ! [X_2,Y_2,R_2] :
      ( ! [A_7,B_6] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)),R_2))
          | B_6 = A_7
          | hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,B_6),A_7)),R_2)) )
     => ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,X_2),Y_2)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2)))
        | X_2 = Y_2
        | hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Y_2),X_2)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2))) ) ) ).

fof(fact_17_Pair__inject,axiom,
    ! [A_12,B_9,A_11,B_8] :
      ( hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_11),B_8) = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_12),B_9)
     => ~ ( A_12 = A_11
         => B_8 != B_9 ) ) ).

fof(fact_279_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1693298207e_indi(F,X_1)),hAPP_f1552576127i_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f10461143l_bool(hAPP_f1339774669l_bool(member832622164e_indi,F),pi_fun1002945429e_indi(A_1,B_1))) ) ).

fof(gsy_c_List_Ohd_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi,axiom,
    ! [B_1_1] : is_Arr43961803e_indi(hd_Arr465110667e_indi(B_1_1)) ).

fof(fact_1056_Suc__le__D,axiom,
    ! [N,M_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N)),M_3))
     => ? [M_1] : hAPP_nat_nat(suc,M_1) = M_3 ) ).

fof(fact_623_rev__singleton__conv,axiom,
    ! [Xs_1,X_2] :
      ( Xs_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt)
    <=> hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt) ) ).

fof(fact_473_listrel1E,axiom,
    ! [Xs_1,Ys_1,R_2] :
      ( ~ ! [X_1,Y_9] :
            ( ! [Us,Vs] :
                ( Ys_1 != hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,Us),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_9),Vs))
               <= Xs_1 = hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,Us),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_1),Vs)) )
           <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9)),R_2)) )
     <= hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2))) ) ).

fof(fact_1053_inc__induct,axiom,
    ! [Pa,I_1,J_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_2))
     => ( ( ! [I] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J_2))
             => ( hBOOL(hAPP_nat_bool(Pa,I))
               <= hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(suc,I))) ) )
         => hBOOL(hAPP_nat_bool(Pa,I_1)) )
       <= hBOOL(hAPP_nat_bool(Pa,J_2)) ) ) ).

fof(gsy_c_HOL_Oundefined_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi,axiom,
    is_Arr43961803e_indi(undefi237088188e_indi(arrow_1271263838e_indi)) ).

fof(fact_658_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l1795316048t_bool(distin856461956le_alt,Xs_1))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
       => hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),hAPP_l1766111573le_alt(rev_Pr295966039le_alt,hAPP_l1766111573le_alt(takeWh1529274110le_alt(hAPP_f515126293t_bool(hAPP_f600409331t_bool(cOMBB_433601099le_alt,fNot),hAPP_P1267694911t_bool(hAPP_f135580393t_bool(cOMBC_607108822t_bool,fequal454353832le_alt),X_2))),Xs_1))) = hAPP_l1766111573le_alt(dropWh1907450966le_alt(hAPP_f515126293t_bool(hAPP_f600409331t_bool(cOMBB_433601099le_alt,fNot),hAPP_P1267694911t_bool(hAPP_f135580393t_bool(cOMBC_607108822t_bool,fequal454353832le_alt),X_2))),hAPP_l1766111573le_alt(rev_Pr295966039le_alt,Xs_1)) ) ) ).

fof(help_fequal_2_1_fequal_000tc__Nat__Onat_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(fequal_nat,X),Y))
      | Y != X ) ).

fof(fact_281_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2115479956l_bool(hAPP_f975710927l_bool(member24871799le_alt,F),pi_nat249006182le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_n324757596le_alt(F,X_1)),hAPP_n588788980t_bool(B_1,X_1))) ) ) ).

fof(fact_674_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(hAPP_n1200821448t_bool(drop_f176122846t_bool,N_2),Xs_1)))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf_058,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_f250445784l_bool(B_1_1,B_2_1))
     <= is_fun158382675l_bool(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabell_061,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f10461143l_bool(B_1_1,B_2_1)) ).

fof(fact_326_Collect__def,axiom,
    ! [Pa] :
      ( is_fun279392540l_bool(Pa)
     => Pa = collec1553055422t_bool(Pa) ) ).

fof(fact_1031_Suc__less__eq,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M_2)),hAPP_nat_nat(suc,N_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__fun_Itc,axiom,
    ! [P,Q] :
      ( P = hAPP_f210572555l_bool(hAPP_f1460506473l_bool(cOMBK_1693871704t_bool,P),Q)
     <= is_fun_bool_bool(P) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc_,axiom,
    ! [P,Q] : hAPP_f856106132t_bool(hAPP_f932544453t_bool(cOMBK_1773325549t_bool,P),Q) = P ).

fof(fact_272_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1732944975l_bool(hAPP_f671616325l_bool(member1636995890le_alt,F),pi_fun380945313le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f1619707799le_alt(F,X_1)),hAPP_f1865483825t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__fun_Itc__Arrow____Order___,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1111021425l_bool(B_1_1,B_2_1)) ).

fof(fact_1095_mono__nat__linear__lb,axiom,
    ! [M_2,K,F] :
      ( ! [M_1,N_1] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,M_1)),hAPP_nat_nat(F,N_1))) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(F,M_2)),K)),hAPP_nat_nat(F,hAPP_nat_nat(plus_plus_nat(M_2),K)))) ) ).

fof(fact_419_lexord__append__leftI,axiom,
    ! [X_2,U,V,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,U),V)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
     => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,X_2),U)),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,X_2),V))),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) ) ).

fof(fact_1107_diff__diff__left,axiom,
    ! [I_2,J,K_2] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(I_2),J)),K_2) = hAPP_nat_nat(minus_minus_nat(I_2),hAPP_nat_nat(plus_plus_nat(J),K_2)) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__prod_Itc__List__Olist_Itc__Arrow____Order____,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l54057324t_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order____074,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1508559628l_bool(B_1_1,B_2_1)) ).

fof(fact_751_hd__in__set,axiom,
    ! [Xs_1] :
      ( Xs_1 != nil_fu1891063196t_bool
     => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hd_fun276684937t_bool(Xs_1)),set_fu1865467835t_bool(Xs_1))) ) ).

fof(fact_434_lexord__append__rightI,axiom,
    ! [X_2,R_2,Y_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,X_2),Y_2))),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
     <= ? [B_6,Z_4] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,B_6),Z_4) = Y_2 ) ).

fof(fact_60_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       <= ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(F,X_2)),hAPP_A187815023l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1525366679l_bool(hAPP_f586020557l_bool(member1055039380t_bool,F),pi_Arr1306565967t_bool(A_1,B_1))) ) ).

fof(fact_480_dropWhile__eq__Cons__conv,axiom,
    ! [Pa,Xs_1,Y_2,Ys_1] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1) = hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1)
    <=> ( ~ hBOOL(hAPP_A862370221t_bool(Pa,Y_2))
        & hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1)) = Xs_1 ) ) ).

fof(fact_255_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1508559628l_bool(hAPP_f984565261l_bool(member1329875721t_bool,F),pi_Pro1636653258t_bool(A_1,hAPP_f681285561l_bool(cOMBK_1786282629le_alt,B_1))))
     <= ! [X_1] :
          ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_P1599728724t_bool(F,X_1)),B_1))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) ) ) ).

fof(fact_105_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f570668343l_bool(hAPP_f2111526677l_bool(member1881985050ol_nat,F),pi_fun2080023171ol_nat(A_1,hAPP_f1362748656t_bool(cOMBK_208474378t_bool,B_1))))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1416261241ol_nat(F,X_2)),B_1))
       <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1)) ) ) ).

fof(fact_156_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1800079444le_alt(F,X_2)),hAPP_f239852716t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1424540178l_bool(hAPP_f452990795l_bool(member1870621557le_alt,F),pi_fun684211550le_alt(A_1,B_1))) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa_023,axiom,
    ! [B_1_1,B_2_1] : is_fun961089132t_bool(hAPP_l1284365004t_bool(B_1_1,B_2_1)) ).

fof(fact_345_top1I,axiom,
    ! [X_2] : hBOOL(hAPP_f312250286l_bool(top_to1714702858l_bool,X_2)) ).

fof(fact_793_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_P1327827171t_bool(Pa,X_1))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),set_Pr1404309362le_alt(Xs_1))) )
     => hAPP_l1493873365le_alt(dropWh1604595954le_alt(Pa),Ys_1) = hAPP_l1493873365le_alt(dropWh1604595954le_alt(Pa),hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Xs_1),Ys_1)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabel_158,axiom,
    ! [P,Q,R] : hAPP_l693571982le_alt(hAPP_f2001490223le_alt(hAPP_f1939049849le_alt(cOMBB_723746886le_alt,P),Q),R) = hAPP_P864444517le_alt(P,hAPP_l391088160le_alt(Q,R)) ).

fof(fact_794_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( is_Arr43961803e_indi(X_1)
         => ( hBOOL(hAPP_A1785763630i_bool(Pa,X_1))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),set_Ar219761597e_indi(Xs_1))) ) )
     => hAPP_l54953109e_indi(dropWh601337149e_indi(Pa),Ys_1) = hAPP_l54953109e_indi(dropWh601337149e_indi(Pa),hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Xs_1),Ys_1)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp_129,axiom,
    ! [P,Q] :
      ( P = hAPP_P1861769507t_bool(hAPP_f1783828715t_bool(cOMBK_1901607710le_alt,P),Q)
     <= is_fun961089132t_bool(P) ) ).

fof(help_COMBB_1_1_COMBB_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__136,axiom,
    ! [P,Q,R] : hAPP_P229966473l_bool(P,hAPP_A702847159le_alt(Q,R)) = hAPP_A187815023l_bool(hAPP_f1539445765l_bool(hAPP_f1688983057l_bool(cOMBB_84213429le_alt,P),Q),R) ).

fof(fact_803_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Xs_1),hAPP_l54953109e_indi(takeWh273131493e_indi(Pa),Ys_1)) = hAPP_l54953109e_indi(takeWh273131493e_indi(Pa),hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Xs_1),Ys_1))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_A1785763630i_bool(Pa,X_1))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),set_Ar219761597e_indi(Xs_1))) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(fact_1030_not__less__less__Suc__eq,axiom,
    ! [N_2,M_2] :
      ( ( M_2 = N_2
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),hAPP_nat_nat(suc,M_2))) )
     <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),M_2)) ) ).

fof(fact_682_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
        & hBOOL(hAPP_A1785763630i_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(takeWh273131493e_indi(Pa),Xs_1)))) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order__,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_fun279392540l_bool(hAPP_b1812770943l_bool(B_1_1,B_2_1)) ) ).

fof(fact_259_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_P606313927t_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) ) )
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,hAPP_f2068374643l_bool(cOMBK_246631416le_alt,B_1)))) ) ).

fof(fact_950_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),B_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,A_1),B_1)) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) ) ).

fof(fact_137_splice_Osimps_I1_J,axiom,
    ! [Ys_19] : Ys_19 = hAPP_l726444215le_alt(splice360969192le_alt(nil_Ar126264853le_alt),Ys_19) ).

fof(fact_1117_diff__Suc__less,axiom,
    ! [I_2,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(N),hAPP_nat_nat(suc,I_2))),N)) ) ).

fof(fact_490_dropWhile_Osimps_I2_J,axiom,
    ! [Xs_1,Pa,X_2] :
      ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1) = hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1))
       <= ~ hBOOL(hAPP_A862370221t_bool(Pa,X_2)) )
      & ( hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)) = hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1)
       <= hBOOL(hAPP_A862370221t_bool(Pa,X_2)) ) ) ).

fof(fact_311_pred__equals__eq2,axiom,
    ! [S_1,R_1] :
      ( ( ! [X_1,Xa] :
            ( ( is_Arr1861959080le_alt(Xa)
              & is_Arr1861959080le_alt(X_1) )
           => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Xa)),R_1))
            <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Xa)),S_1)) ) )
      <=> R_1 = S_1 )
     <= ( is_fun961089132t_bool(S_1)
        & is_fun961089132t_bool(R_1) ) ) ).

fof(fact_11_in__mktop,axiom,
    ! [X_2,Y_2,L_2,Z_3] :
      ( ( is_Arr1861959080le_alt(Z_3)
        & is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_2) )
     => ( ( ( Z_3 != Y_2
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),L_2)) )
          & ( Y_2 = Z_3
           => Y_2 != X_2 )
          & Z_3 != X_2 )
      <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),hAPP_A568203993t_bool(arrow_1644373103_mktop(L_2),Z_3))) ) ) ).

fof(fact_7__096_I_Fp_O_Abelow_A_Ibelow_A_IP_Ap_J_Ac_Ab_J_Ab_Aa_J_A_058_AProf_096,axiom,
    hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,arrow_1539419881_below),hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,arrow_1539419881_below),p)),c)),b))),b)),a)),arrow_1721807329e_Prof)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_bool_bool(B_2_1)
     => is_bool(hAPP_f387058535l_bool(B_1_1,B_2_1)) ) ).

fof(fact_410_takeWhile_Osimps_I1_J,axiom,
    ! [Pa] : nil_Ar126264853le_alt = hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),nil_Ar126264853le_alt) ).

fof(fact_180_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2042909150l_bool(hAPP_f1073701219l_bool(member547554753lt_nat,F),pi_Pro264071722lt_nat(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_P339823136lt_nat(F,X_1)),hAPP_P2136891882t_bool(B_1,X_1))) )
         <= is_Pro1725146340le_alt(X_1) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpn_072,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f2042909150l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__HOL__Obool_J_Mtc__List__Ol,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f263022001l_bool(B_1_1,B_2_1)) ).

fof(fact_901_rtrancl__induct2,axiom,
    ! [Pa,Ax,Ay,Bx,By,R_2] :
      ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ax),Ay)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Bx),By))),transi580536954le_alt(R_2)))
     => ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,Ax),Ay))
       => ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,Bx),By))
         <= ! [A_7,B_6,Aa_1,Ba_1] :
              ( ( is_Arr1861959080le_alt(B_6)
                & is_Arr1861959080le_alt(Ba_1)
                & is_Arr1861959080le_alt(Aa_1)
                & is_Arr1861959080le_alt(A_7) )
             => ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ax),Ay)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6))),transi580536954le_alt(R_2)))
               => ( ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,Aa_1),Ba_1))
                   <= hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,A_7),B_6)) )
                 <= hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa_1),Ba_1))),R_2)) ) ) ) ) ) ) ).

fof(fact_607_rev__is__Nil__conv,axiom,
    ! [Xs_1] :
      ( Xs_1 = nil_Ar126264853le_alt
    <=> nil_Ar126264853le_alt = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) ) ).

fof(fact_140_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f2042909150l_bool(hAPP_f1073701219l_bool(member547554753lt_nat,F),pi_Pro264071722lt_nat(A_1,B_1)))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_P339823136lt_nat(F,X_2)),hAPP_P2136891882t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_69_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f969456697l_bool(hAPP_f1857700889l_bool(member1549237916le_alt,F),pi_Pro610394757le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_P1257947515le_alt(F,X_2)),hAPP_P1711233733t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_813_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
    <=> ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Ys)))
          & Xs_1 = hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Ys),hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Zs)) ) ) ).

fof(fact_906_split__list__first__prop,axiom,
    ! [Pa,Xs_1] :
      ( ? [X_1] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1)))
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1)) )
     => ? [Ys,X_1] :
          ( is_Arr1861959080le_alt(X_1)
          & ! [Xa] :
              ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),set_Ar1565008694le_alt(Ys)))
             => ~ hBOOL(hAPP_A862370221t_bool(Pa,Xa)) )
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & ? [Zs] : Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs)) ) ) ).

fof(gsy_c_Product__Type_Ocurry_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oal,axiom,
    ! [B_1_1] :
      ( is_fun2093718614t_bool(produc212588606t_bool(B_1_1))
     <= is_fun961089132t_bool(B_1_1) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_052,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1097062475t_bool(B_2_1)
     => is_fun_bool_bool(hAPP_f1624277646l_bool(B_1_1,B_2_1)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000,axiom,
    ! [P,Q,R] : hAPP_A1785763630i_bool(hAPP_A313542399i_bool(P,R),Q) = hAPP_A1785763630i_bool(hAPP_A313542399i_bool(hAPP_f585152361i_bool(cOMBC_1428934564i_bool,P),Q),R) ).

fof(fact_1041_less__or__eq__imp__le,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     <= ( M = N
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___083,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_bool_bool(hAPP_f210572555l_bool(B_1_1,B_2_1))
     <= is_fun961089132t_bool(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabell,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1634113933l_bool(B_1_1,B_2_1)) ).

fof(fact_371_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),top_to1853035173l_bool)) ).

fof(fact_549_list__induct2,axiom,
    ! [Pa,Xs_1,Ys_1] :
      ( hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_1) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_1)
     => ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,nil_Ar126264853le_alt),nil_Ar126264853le_alt))
       => ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Xs_1),Ys_1))
         <= ! [X_1,Xs_17,Y_9,Ys] :
              ( ( hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_17)
               => ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Xs_17),Ys))
                 => hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs_17)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Ys))) ) )
             <= ( is_Arr1861959080le_alt(Y_9)
                & is_Arr1861959080le_alt(X_1) ) ) ) ) ) ).

fof(fact_610_distinct__drop,axiom,
    ! [I_7,Xs_8] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_8))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,I_7),Xs_8))) ) ).

fof(fact_1116_Suc__pred,axiom,
    ! [N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N))
     => N = hAPP_nat_nat(suc,hAPP_nat_nat(minus_minus_nat(N),hAPP_nat_nat(suc,zero_zero_nat))) ) ).

fof(fact_1156_le__add__diff__inverse2,axiom,
    ! [N,M] :
      ( hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(M),N)),N) = M
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M)) ) ).

fof(fact_955_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,A_1),B_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),B_1)) ) ) ).

fof(fact_511_listrel_OCons,axiom,
    ! [Xs_1,Ys_1,X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_2))
     => ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Xs_1)),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1))),hAPP_f1662382841t_bool(listre638180162le_alt,R_2)))
       <= hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2))) ) ) ).

fof(fact_1146_diffs0__imp__equal,axiom,
    ! [M,N] :
      ( ( M = N
       <= zero_zero_nat = hAPP_nat_nat(minus_minus_nat(N),M) )
     <= hAPP_nat_nat(minus_minus_nat(M),N) = zero_zero_nat ) ).

fof(fact_471_listrel1I,axiom,
    ! [Ys_1,Xs_1,Us_1,Vs_1,X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_2))
     => ( ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2)))
         <= Ys_1 = hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,Us_1),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Vs_1)) )
       <= Xs_1 = hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,Us_1),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Vs_1)) ) ) ).

fof(fact_388_takeWhile__not__last,axiom,
    ! [Xs_1] :
      ( ( hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_1) = hAPP_l726444215le_alt(takeWh536362254le_alt(hAPP_f2014742713t_bool(hAPP_f27970449t_bool(cOMBB_2104979073le_alt,fNot),hAPP_A1664620203t_bool(hAPP_f825175477t_bool(cOMBC_1628726426t_bool,fequal1160105444le_alt),last_A57386030le_alt(Xs_1)))),Xs_1)
       <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1)) )
     <= nil_Ar126264853le_alt != Xs_1 ) ).

fof(fact_405_self__append__conv2,axiom,
    ! [Ys_1,Xs_1] :
      ( Ys_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)
    <=> nil_Ar126264853le_alt = Xs_1 ) ).

fof(fact_55_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1271753300l_bool(hAPP_f1254328783l_bool(member1986685623t_bool,F),pi_Arr1600668070t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(F,X_2)),hAPP_A1928120382l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1)) ) ) ).

fof(fact_768_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hAPP_l1075146559t_bool(hAPP_f613335309t_bool(insert202184175t_bool,X_2),Xs_1) = hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) )
      & ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
       => Xs_1 = hAPP_l1075146559t_bool(hAPP_f613335309t_bool(insert202184175t_bool,X_2),Xs_1) ) ) ).

fof(fact_1142_diff__Suc__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)) = hAPP_nat_nat(minus_minus_nat(M),N) ).

fof(fact_280_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f859154022l_bool(hAPP_f976491405l_bool(member2061588323l_bool,F),pi_fun52649508l_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f312250286l_bool(F,X_1)),hAPP_f1624277646l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) ) ) ) ).

fof(fact_257_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f785974231l_bool(hAPP_f937842381l_bool(member383660628t_bool,F),pi_Arr1936979349t_bool(A_1,hAPP_f2069340078l_bool(cOMBK_1389630288e_indi,B_1))))
     <= ! [X_1] :
          ( is_Arr43961803e_indi(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A479848479t_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabel_065,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f560831258l_bool(B_1_1,B_2_1)) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__Arrow__,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_f965095724l_bool(Q,R)) = hAPP_f965095724l_bool(hAPP_f146009813l_bool(hAPP_f356431923l_bool(cOMBB_871930928t_bool,P),Q),R) ).

fof(fact_135_split__paired__Ex,axiom,
    ! [Pa] :
      ( ? [A_7,B_6] :
          ( hBOOL(hAPP_P606313927t_bool(Pa,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)))
          & is_Arr1861959080le_alt(B_6)
          & is_Arr1861959080le_alt(A_7) )
    <=> ? [X1] :
          ( hBOOL(hAPP_P606313927t_bool(Pa,X1))
          & is_Pro1725146340le_alt(X1) ) ) ).

fof(fact_1046_less__eq__Suc__le,axiom,
    ! [N_2,M_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N_2)),M_2))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),M_2)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp_111,axiom,
    ! [P,Q] :
      ( is_fun961089132t_bool(P)
     => P = hAPP_A1677245848t_bool(hAPP_f329301088t_bool(cOMBK_1076156777e_indi,P),Q) ) ).

fof(fact_707_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Xs_1)))
    <=> ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_1))
        & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ) ).

fof(fact_1088_nat__add__left__cancel,axiom,
    ! [K,M_2,N_2] :
      ( M_2 = N_2
    <=> hAPP_nat_nat(plus_plus_nat(K),N_2) = hAPP_nat_nat(plus_plus_nat(K),M_2) ) ).

fof(fact_278_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1800079444le_alt(F,X_1)),hAPP_f239852716t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f1424540178l_bool(hAPP_f452990795l_bool(member1870621557le_alt,F),pi_fun684211550le_alt(A_1,B_1))) ) ).

fof(fact_370_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),top_to522745736l_bool)) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__088,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr43961803e_indi(hAPP_P710098616e_indi(B_1_1,B_2_1))
     <= is_Pro1725146340le_alt(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_008,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_fun158382675l_bool(hAPP_A366518464l_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_053,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun158382675l_bool(hAPP_f1577576703l_bool(B_1_1,B_2_1))
     <= is_fun1097062475t_bool(B_2_1) ) ).

fof(fact_578_lexn__length,axiom,
    ! [Xs_1,Ys_1,R_2,N_2] :
      ( ( N_2 = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_1)
        & hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_1) = N_2 )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),lexn_A1157915829le_alt(R_2,N_2))) ) ).

fof(fact_615_distinct__rev,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1)))
    <=> hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1)) ) ).

fof(fact_723_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_f965095724l_bool(Pa,X_2))
       => hAPP_l1660244757t_bool(takeWh1309019107t_bool(Pa),hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Xs_1),Ys_1)) = hAPP_l1660244757t_bool(takeWh1309019107t_bool(Pa),Xs_1) )
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ).

fof(fact_94_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1306865520l_bool(hAPP_f407092109l_bool(member234128621e_indi,F),pi_Pro1270767662e_indi(A_1,hAPP_f1348208725i_bool(cOMBK_1915602921le_alt,B_1))))
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_P710098616e_indi(F,X_2)),B_1))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_754_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_A862370221t_bool(Pa,X_2))
       => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1)),Ys_1) = hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_880_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
     => ? [Ys,Zs] :
          ( Xs_1 = hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Ys),hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Zs))
          & ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Zs))) ) ) ).

fof(fact_696_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(butlas1888624491le_alt,Xs_1)))) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1393352280t_bool(hAPP_b30302907t_bool(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(fact_460_UNIV__eq__I,axiom,
    ! [A_1] :
      ( is_fun158382675l_bool(A_1)
     => ( ! [X_1] :
            ( is_fun1097062475t_bool(X_1)
           => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) )
       => top_to1714702858l_bool = A_1 ) ) ).

fof(fact_453_UNIV__eq__I,axiom,
    ! [A_1] :
      ( ! [X_1] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1))
     => A_1 = top_to772840767t_bool ) ).

fof(gsy_c_FuncSet_OPi_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun279392540l_bool(pi_Pro666468413t_bool(B_1_1,B_2_1))
     <= is_fun961089132t_bool(B_1_1) ) ).

fof(fact_962_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),B_1)) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabel,axiom,
    ! [P,Q] :
      ( hAPP_n295497947l_bool(hAPP_f1879785608l_bool(cOMBK_2131602312ol_nat,P),Q) = P
     <= is_fun158382675l_bool(P) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__prod_Itc__Arrow____Order_,axiom,
    ! [P,Q] :
      ( P = hAPP_f592646513l_bool(hAPP_b1812770943l_bool(cOMBK_1656150864t_bool,P),Q)
     <= is_bool(P) ) ).

fof(fact_416_last__appendL,axiom,
    ! [Xs_34,Ys_10] :
      ( nil_Ar126264853le_alt = Ys_10
     => last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_34),Ys_10)) = last_A57386030le_alt(Xs_34) ) ).

fof(fact_48_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f2115479956l_bool(hAPP_f975710927l_bool(member24871799le_alt,F),pi_nat249006182le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_n324757596le_alt(F,X_2)),hAPP_n588788980t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) ) ) ).

fof(fact_1099_le0,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),N)) ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order___142,axiom,
    ! [P,Q] : hAPP_f996881846t_bool(hAPP_f372103450t_bool(cOMBK_1411148035t_bool,P),Q) = P ).

fof(fact_353_Pi__UNIV,axiom,
    ! [A_1] : top_to522745736l_bool = pi_Arr990697634t_bool(A_1,hAPP_f1659309744l_bool(cOMBK_657557929e_indi,top_to1853035173l_bool)) ).

fof(fact_346_top1I,axiom,
    ! [X_2] : hBOOL(hAPP_f592646513l_bool(top_to1853035173l_bool,X_2)) ).

fof(fact_798_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f965095724l_bool(Pa,X_1))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),set_fu1865467835t_bool(Xs_1))) )
         <= is_fun760276937t_bool(X_1) )
     => hAPP_l1660244757t_bool(dropWh1552197947t_bool(Pa),Ys_1) = hAPP_l1660244757t_bool(dropWh1552197947t_bool(Pa),hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Xs_1),Ys_1)) ) ).

fof(fact_1000_top__le,axiom,
    ! [Aa] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,top_to1714702858l_bool),Aa))
       => Aa = top_to1714702858l_bool )
     <= is_fun158382675l_bool(Aa) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Nat__Onat_Mtc__fun_Itc__Arrow____Order____Mi,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f903371257l_bool(B_1_1,B_2_1)) ).

fof(fact_527_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Z_3),hAPP_l1661879987l_bool(hAPP_l1824974724l_bool(Ca,Aa),Ba)))
     => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Z_3),hAPP_P1606644490l_bool(hAPP_f2122673039l_bool(produc2129949100l_bool,Ca),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)))) ) ).

fof(fact_266_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1534526009l_bool(hAPP_f2069145881l_bool(member1258861596ol_nat,F),pi_fun770049925ol_nat(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1418366331ol_nat(F,X_1)),hAPP_f1628730575t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) ) ) ) ).

fof(fact_469_listrel1I1,axiom,
    ! [Xs_1,X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Xs_1)),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Xs_1))),hAPP_f1662382841t_bool(listre635569361le_alt,R_2)))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_2)) ) ).

fof(fact_1001_top__le,axiom,
    ! [Aa] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,top_to2076077793t_bool),Aa))
       => Aa = top_to2076077793t_bool )
     <= is_fun1393352280t_bool(Aa) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__List__Olist_Itc__Arrow____Order____Mirabelle_,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l377001987t_bool(B_1_1,B_2_1)) ).

fof(fact_448_UNIV__witness,axiom,
    ? [X_1] :
      ( is_Pro1725146340le_alt(X_1)
      & hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),top_to565915683t_bool)) ) ).

fof(fact_431_lexord__append__left__rightI,axiom,
    ! [U,X_2,Y_2,Aa,Ba,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),R_2))
     => hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,U),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Aa),X_2))),hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,U),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Ba),Y_2)))),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2))) ) ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____t,axiom,
    ! [X,Y] :
      ( ( is_fun1097062475t_bool(X)
        & is_fun1097062475t_bool(Y) )
     => ( X = Y
        | ~ hBOOL(hAPP_f312250286l_bool(hAPP_f1577576703l_bool(fequal1596628751t_bool,X),Y)) ) ) ).

fof(fact_570_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( ~ ! [X_1,Y_9] :
            ( P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9)
           => ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Z_3),hAPP_l1542188220l_bool(hAPP_l1352613953l_bool(Ca,X_1),Y_9))) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Z_3),hAPP_P1905961381l_bool(hAPP_f786857743l_bool(produc1170920579l_bool,Ca),P_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order____076,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1468796453l_bool(B_1_1,B_2_1)) ).

fof(fact_300_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_P606313927t_bool(F,X_1)),hAPP_P324742453l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) ) )
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,B_1))) ) ).

fof(fact_79_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f560831258l_bool(hAPP_f1153917531l_bool(member1036419453e_indi,F),pi_fun896360044e_indi(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1582908258e_indi(F,X_2)),hAPP_f244157820i_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_044,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f785974231l_bool(B_1_1,B_2_1)) ).

fof(fact_602_rev__rev__ident,axiom,
    ! [Xs_11] : hAPP_l726444215le_alt(rev_Ar2093961333le_alt,hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_11)) = Xs_11 ).

fof(fact_671_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(hAPP_n19406600le_alt(drop_P283022739le_alt,N_2),Xs_1)))) ) ).

fof(fact_944_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),B_1)) ) ) ).

fof(fact_81_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f570668343l_bool(hAPP_f2111526677l_bool(member1881985050ol_nat,F),pi_fun2080023171ol_nat(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1416261241ol_nat(F,X_2)),hAPP_f1593910865t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1)) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [P,Q,R] : hAPP_f592646513l_bool(hAPP_f863359027l_bool(hAPP_f495827653l_bool(cOMBC_1136104858l_bool,P),Q),R) = hAPP_f592646513l_bool(hAPP_f863359027l_bool(P,R),Q) ).

fof(fact_425_UNIV__def,axiom,
    top_to1714702858l_bool = collec418781817t_bool(hAPP_b517355696l_bool(cOMBK_1626390631t_bool,fTrue)) ).

fof(fact_130_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,hAPP_f1659309744l_bool(cOMBK_657557929e_indi,B_1))))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A1677245848t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ) ).

fof(fact_198_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f859154022l_bool(hAPP_f976491405l_bool(member2061588323l_bool,F),pi_fun52649508l_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f312250286l_bool(F,X_1)),hAPP_f1624277646l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) ) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__fun_Itc__prod_It,axiom,
    ! [P,Q,R] : hAPP_f592646513l_bool(hAPP_f111185985l_bool(hAPP_f1982584345l_bool(cOMBB_310009925t_bool,P),Q),R) = hAPP_bool_bool(P,hAPP_f592646513l_bool(Q,R)) ).

fof(help_COMBB_1_1_COMBB_000tc__Nat__Onat_000tc__Nat__Onat_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_nat_nat(hAPP_f1914919701at_nat(hAPP_f1585078997at_nat(cOMBB_nat_nat_nat,P),Q),R) = hAPP_nat_nat(P,hAPP_nat_nat(Q,R)) ).

fof(fact_630_listrel__reflcl__if__listrel1,axiom,
    ! [Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre760726333le_alt,transi1256616594le_alt(R_2))))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ).

fof(fact_1100_zero__less__Suc,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(suc,N))) ).

fof(fact_633_r__into__rtrancl,axiom,
    ! [P_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,P_1),transi992120749le_alt(R_2)))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,P_1),R_2)) ) ).

fof(fact_109_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f859154022l_bool(hAPP_f976491405l_bool(member2061588323l_bool,F),pi_fun52649508l_bool(A_1,hAPP_f214899148l_bool(cOMBK_2117707615t_bool,B_1))))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f312250286l_bool(F,X_2)),B_1)) ) ) ).

fof(fact_37_list_Osimps_I2_J,axiom,
    ! [A_10,List_4] : nil_Ar126264853le_alt != hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_10),List_4) ).

fof(fact_681_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( ( hBOOL(hAPP_P1327827171t_bool(Pa,X_2))
        & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(takeWh416411546le_alt(Pa),Xs_1)))) ) ).

fof(fact_869_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Ys)))
          & Xs_1 = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Zs)) )
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__fun_Itc__Arrow____Order____Mira,axiom,
    is_fun288122577l_bool(top_to522745736l_bool) ).

fof(fact_1166_less__diff__conv,axiom,
    ! [I_1,J_2,K] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_nat_nat(minus_minus_nat(J_2),K)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_1),K)),J_2)) ) ).

fof(fact_152_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1582908258e_indi(F,X_2)),hAPP_f244157820i_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f560831258l_bool(hAPP_f1153917531l_bool(member1036419453e_indi,F),pi_fun896360044e_indi(A_1,B_1))) ) ).

fof(fact_325_Collect__def,axiom,
    ! [Pa] :
      ( is_fun1236654035i_bool(Pa)
     => collec1611109369e_indi(Pa) = Pa ) ).

fof(fact_669_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_2),Xs_1)))) ) ).

fof(fact_992_top__unique,axiom,
    ! [Aa] :
      ( ( Aa = top_to522745736l_bool
      <=> hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,top_to522745736l_bool),Aa)) )
     <= is_fun288122577l_bool(Aa) ) ).

fof(fact_49_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_P1699981037le_alt(F,X_2)),hAPP_P1861769507t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f1468796453l_bool(hAPP_f1867424333l_bool(member290075938le_alt,F),pi_Pro492447587le_alt(A_1,B_1))) ) ).

fof(fact_1085_add__Suc__shift,axiom,
    ! [M,N] : hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(suc,M)),N) = hAPP_nat_nat(plus_plus_nat(M),hAPP_nat_nat(suc,N)) ).

fof(fact_979_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(hAPP_n2038854252t_bool(take_f1937952705t_bool,N_2),Xs_1))))
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(fact_812_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
    <=> ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Ys)))
          & Xs_1 = hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Ys),hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Zs)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___077,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr43961803e_indi(hAPP_f1582908258e_indi(B_1_1,B_2_1))
     <= is_fun961089132t_bool(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__090,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1393352280t_bool(hAPP_P1711233733t_bool(B_1_1,B_2_1))
     <= is_Pro1725146340le_alt(B_2_1) ) ).

fof(fact_1105_diff__cancel2,axiom,
    ! [M,K_2,N] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(M),K_2)),hAPP_nat_nat(plus_plus_nat(N),K_2)) = hAPP_nat_nat(minus_minus_nat(M),N) ).

fof(fact_304_Pi__cong,axiom,
    ! [B_1,F,G,A_1] :
      ( ! [W] :
          ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,W),A_1))
           => hAPP_f412050202t_bool(F,W) = hAPP_f412050202t_bool(G,W) )
         <= is_fun760276937t_bool(W) )
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,G),pi_fun150026276t_bool(A_1,B_1)))
      <=> hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,B_1))) ) ) ).

fof(fact_716_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( hAPP_l248265089st_nat(takeWhile_nat(Pa),Xs_1) = hAPP_l248265089st_nat(takeWhile_nat(Pa),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),Ys_1))
       <= ~ hBOOL(hAPP_nat_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(fact_358_last__ConsR,axiom,
    ! [X_30,Xs_43] :
      ( Xs_43 != nil_Ar126264853le_alt
     => last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_30),Xs_43)) = last_A57386030le_alt(Xs_43) ) ).

fof(fact_910_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Ca),B_1))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Ca),A_1)) ) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_bool_bool(hAPP_b589554111l_bool(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It_013,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr43961803e_indi(B_2_1)
     => is_fun1097062475t_bool(hAPP_A479848479t_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(B_2_1)
     => is_Arr1861959080le_alt(hAPP_f1054274129le_alt(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf_059,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun158382675l_bool(hAPP_f1765205l_bool(B_1_1,B_2_1))
     <= is_fun158382675l_bool(B_2_1) ) ).

fof(fact_14_split__paired__All,axiom,
    ! [Pa] :
      ( ! [A_7,B_6] :
          ( hBOOL(hAPP_P606313927t_bool(Pa,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)))
         <= ( is_Arr1861959080le_alt(A_7)
            & is_Arr1861959080le_alt(B_6) ) )
    <=> ! [X1] :
          ( is_Pro1725146340le_alt(X1)
         => hBOOL(hAPP_P606313927t_bool(Pa,X1)) ) ) ).

fof(fact_406_append__is__Nil__conv,axiom,
    ! [Xs_1,Ys_1] :
      ( nil_Ar126264853le_alt = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)
    <=> ( nil_Ar126264853le_alt = Ys_1
        & Xs_1 = nil_Ar126264853le_alt ) ) ).

fof(fact_330_curryE,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P1327827171t_bool(F,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)))
     <= hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(produc231070560t_bool(F),Aa),Ba)) ) ).

fof(fact_902_take__Cons,axiom,
    ! [N_2,X_2,Xs_1] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_2),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)) = hAPP_n1875670159le_alt(nat_ca14895078le_alt(nil_Ar126264853le_alt,hAPP_f402821245le_alt(hAPP_f548810715le_alt(cOMBB_903467948lt_nat,hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2)),hAPP_l382792410le_alt(hAPP_f2068969285le_alt(cOMBC_1511969967le_alt,take_A1601602045le_alt),Xs_1))),N_2) ).

fof(fact_588_hd__append2,axiom,
    ! [Ys_4,Xs_18] :
      ( Xs_18 != nil_Ar126264853le_alt
     => hd_Arr805754088le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_18),Ys_4)) = hd_Arr805754088le_alt(Xs_18) ) ).

fof(fact_492_distinct__dropWhile,axiom,
    ! [Pa,Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1))) ) ).

fof(fact_694_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(butlas1157436197t_bool,Xs_1))))
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(fact_1027_Suc__lessI,axiom,
    ! [M,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),N))
       <= N != hAPP_nat_nat(suc,M) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfn,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l89806901l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_098,axiom,
    ! [B_1_1,B_2_1] : is_fun158382675l_bool(hAPP_P1606644490l_bool(B_1_1,B_2_1)) ).

fof(fact_520_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Z_3),hAPP_P2082381915t_bool(hAPP_f1783389935t_bool(produc51145731t_bool,Ca),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Z_3),hAPP_A490104565t_bool(hAPP_A101171597t_bool(Ca,Aa),Ba))) ) ).

fof(fact_765_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Xs_1) = hAPP_l54953109e_indi(hAPP_A974963564e_indi(insert915800584e_indi,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) )
      & ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
       => Xs_1 = hAPP_l54953109e_indi(hAPP_A974963564e_indi(insert915800584e_indi,X_2),Xs_1) ) ) ).

fof(fact_850_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( hAPP_l1189022293t_bool(takeWhile_bool(Q_1),K) = hAPP_l1189022293t_bool(takeWhile_bool(Pa),L_1)
       <= ! [X_1] :
            ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),set_bool(L_1)))
             => ( hBOOL(hAPP_bool_bool(Q_1,X_1))
              <=> hBOOL(hAPP_bool_bool(Pa,X_1)) ) )
           <= is_bool(X_1) ) )
     <= K = L_1 ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Nat__Onat_Mtc__Nat__Onat_J_Mtc__HOL__Obool_,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f879361201l_bool(B_1_1,B_2_1)) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc__Arrow____Order__,axiom,
    ! [P,Q] :
      ( is_bool(P)
     => P = hAPP_f312250286l_bool(hAPP_b517355696l_bool(cOMBK_1626390631t_bool,P),Q) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oi,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l2034560823i_bool(B_1_1,B_2_1)) ).

fof(fact_1094_less__add__Suc1,axiom,
    ! [I_2,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(I_2),M)))) ).

fof(fact_113_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1837019376l_bool(hAPP_f721935245l_bool(member797673069le_alt,F),pi_Arr1199386158le_alt(A_1,hAPP_f329301088t_bool(cOMBK_1076156777e_indi,B_1))))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A638717112le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ) ).

fof(fact_662_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( ( Y_2 = X_2
          | hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Y_2),set_Ar219761597e_indi(Xs_1))) )
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Y_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Xs_1)))) )
     <= ( is_Arr43961803e_indi(X_2)
        & is_Arr43961803e_indi(Y_2) ) ) ).

fof(fact_368_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),top_to2076077793t_bool)) ).

fof(fact_899_converse__rtrancl__induct2,axiom,
    ! [Pa,Ax,Ay,Bx,By,R_2] :
      ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ax),Ay)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Bx),By))),transi580536954le_alt(R_2)))
     => ( ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,Ax),Ay))
         <= ! [A_7,B_6,Aa_1,Ba_1] :
              ( ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa_1),Ba_1))),R_2))
               => ( ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,Aa_1),Ba_1))
                   => hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,A_7),B_6)) )
                 <= hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa_1),Ba_1)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Bx),By))),transi580536954le_alt(R_2))) ) )
             <= ( is_Arr1861959080le_alt(A_7)
                & is_Arr1861959080le_alt(Aa_1)
                & is_Arr1861959080le_alt(Ba_1)
                & is_Arr1861959080le_alt(B_6) ) ) )
       <= hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(Pa,Bx),By)) ) ) ).

fof(fact_949_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A_1),B_1))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),B_1)) ) ) ).

fof(fact_290_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f599145828l_bool(hAPP_f2116028941l_bool(member2056165217t_bool,F),pi_boo175444770t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_b317196972t_bool(F,X_1)),hAPP_b1048178734l_bool(B_1,X_1))) )
         <= is_bool(X_1) ) ) ).

fof(fact_1081_add__leD1,axiom,
    ! [M,K_2,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(M),K_2)),N)) ) ).

fof(help_fequal_2_1_fequal_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(fequal796301787le_alt,X),Y))
      | X != Y ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_095,axiom,
    ! [B_1_1,B_2_1] : is_fun760276937t_bool(hAPP_P19446482t_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l1795316048t_bool(B_1_1,B_2_1)) ).

fof(fact_21_below__Lin,axiom,
    ! [L_2,X_2,Y_2] :
      ( ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Y_2) )
     => ( Y_2 != X_2
       => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin))
         => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(hAPP_A1941004017t_bool(hAPP_f344580165t_bool(arrow_1539419881_below,L_2),X_2),Y_2)),arrow_1681063817le_Lin)) ) ) ) ).

fof(gsy_c_List_Oset_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbp,axiom,
    ! [B_1_1] : is_fun158382675l_bool(set_fu335223357t_bool(B_1_1)) ).

fof(fact_567_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( ( ~ ! [X_1,Y_9] :
              ( ( is_Arr1861959080le_alt(Y_9)
                & is_Arr1861959080le_alt(X_1) )
             => ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Z_3),hAPP_A822657487l_bool(hAPP_A1345295975l_bool(Ca,X_1),Y_9)))
               <= hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) = P_1 ) )
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Z_3),hAPP_P324742453l_bool(hAPP_f1502595491l_bool(produc1995698397l_bool,Ca),P_1))) )
     <= is_Pro1725146340le_alt(P_1) ) ).

fof(fact_1043_less__imp__le__nat,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_1013_linorder__neqE__nat,axiom,
    ! [X,Y] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y),X))
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Y)) )
     <= Y != X ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__prod_Itc__List__,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_P1327827171t_bool(Q,R)) = hAPP_P1327827171t_bool(hAPP_f1642286869t_bool(hAPP_f62793075t_bool(cOMBB_1604919143le_alt,P),Q),R) ).

fof(fact_583_hd_Osimps,axiom,
    ! [X_19,Xs_21] :
      ( is_Arr1861959080le_alt(X_19)
     => X_19 = hd_Arr805754088le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_19),Xs_21)) ) ).

fof(fact_1078_add__le__mono1,axiom,
    ! [K_2,I_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(I_2),K_2)),hAPP_nat_nat(plus_plus_nat(J),K_2)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__HOL__Obool_000tc__fun_Itc__Arrow____Order____Mirabel,axiom,
    ! [P,Q] :
      ( hAPP_f965095724l_bool(hAPP_b1048178734l_bool(cOMBK_272667621t_bool,P),Q) = P
     <= is_bool(P) ) ).

fof(fact_675_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(hAPP_n2038854252t_bool(drop_f642150681t_bool,N_2),Xs_1)))) ) ).

fof(fact_26_const__Lin__Prof,axiom,
    ! [L_2] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_f329301088t_bool(cOMBK_1076156777e_indi,L_2)),arrow_1721807329e_Prof))
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___153,axiom,
    ! [P,Q,R] : hAPP_f1539445765l_bool(P,hAPP_A1505516597le_alt(Q,R)) = hAPP_A1553574765l_bool(hAPP_f156764033l_bool(hAPP_f778758417l_bool(cOMBB_2112722489le_alt,P),Q),R) ).

fof(fact_15_Pair__eq,axiom,
    ! [Aa,Ba,A_8,B_7] :
      ( hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_8),B_7) = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)
    <=> ( A_8 = Aa
        & Ba = B_7 ) ) ).

fof(fact_951_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,A_1),B_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),B_1)) )
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc__117,axiom,
    ! [P,Q] : hAPP_f1628730575t_bool(hAPP_f81007726t_bool(cOMBK_2130565512t_bool,P),Q) = P ).

fof(fact_679_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( ( hBOOL(hAPP_nat_bool(Pa,X_2))
        & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(takeWhile_nat(Pa),Xs_1)))) ) ).

fof(fact_897_converse__rtranclE2,axiom,
    ! [Xa_1,Xb,Za,Zb,R_2] :
      ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Xa_1),Xb)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Za),Zb))),transi580536954le_alt(R_2)))
     => ( ~ ! [A_7,B_6] :
              ( ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Xa_1),Xb)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6))),R_2))
               => ~ hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Za),Zb))),transi580536954le_alt(R_2))) )
             <= ( is_Arr1861959080le_alt(A_7)
                & is_Arr1861959080le_alt(B_6) ) )
       <= hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Xa_1),Xb) != hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Za),Zb) ) ) ).

fof(fact_596_rtrancl__listrel1__if__listrel,axiom,
    ! [Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2))))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2))) ) ).

fof(fact_746_hd__in__set,axiom,
    ! [Xs_1] :
      ( Xs_1 != nil_Pr1357826771le_alt
     => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hd_Pro1848862016le_alt(Xs_1)),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa_020,axiom,
    ! [B_1_1,B_2_1] : is_fun288122577l_bool(hAPP_l1328583473l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_List_Oset_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi,axiom,
    ! [B_1_1] : is_fun1236654035i_bool(set_Ar219761597e_indi(B_1_1)) ).

fof(fact_347_top1I,axiom,
    ! [X_2] : hBOOL(hAPP_f965095724l_bool(top_to522745736l_bool,X_2)) ).

fof(fact_959_order__antisym__conv,axiom,
    ! [Y_2,X_2] :
      ( ( X_2 = Y_2
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_2),Y_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),X_2)) ) ).

fof(fact_843_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( hAPP_l1075146559t_bool(dropWh1133555834t_bool(Pa),L_1) = hAPP_l1075146559t_bool(dropWh1133555834t_bool(Q_1),K)
       <= ! [X_1] :
            ( is_fun961089132t_bool(X_1)
           => ( ( hBOOL(hAPP_f592646513l_bool(Pa,X_1))
              <=> hBOOL(hAPP_f592646513l_bool(Q_1,X_1)) )
             <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),set_fu1384968698t_bool(L_1))) ) ) )
     <= K = L_1 ) ).

fof(fact_1003_termination__basic__simps_I5_J,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),Y))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Y)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___149,axiom,
    ! [P,Q] :
      ( is_fun1236654035i_bool(P)
     => hAPP_f1552576127i_bool(hAPP_f2129183278i_bool(cOMBK_1626211664t_bool,P),Q) = P ) ).

fof(fact_1145_Suc__neq__Zero,axiom,
    ! [M] : hAPP_nat_nat(suc,M) != zero_zero_nat ).

fof(fact_111_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1468796453l_bool(hAPP_f1867424333l_bool(member290075938le_alt,F),pi_Pro492447587le_alt(A_1,hAPP_f1783828715t_bool(cOMBK_1901607710le_alt,B_1))))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_P1699981037le_alt(F,X_2)),B_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) ) ) ).

fof(fact_1106_diff__cancel,axiom,
    ! [K_2,M,N] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(K_2),M)),hAPP_nat_nat(plus_plus_nat(K_2),N)) = hAPP_nat_nat(minus_minus_nat(M),N) ).

fof(fact_98_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f836059805e_indi(F,X_2)),B_1))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1725204053l_bool(hAPP_f666018637l_bool(member905797074e_indi,F),pi_fun753830419e_indi(A_1,hAPP_f1368393520i_bool(cOMBK_684046286t_bool,B_1)))) ) ).

fof(fact_324_Collect__def,axiom,
    ! [Pa] :
      ( Pa = collec1729629178le_alt(Pa)
     <= is_fun1393352280t_bool(Pa) ) ).

fof(fact_275_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f167218729l_bool(hAPP_f1666015481l_bool(member880664588l_bool,F),pi_fun1575168891l_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f592646513l_bool(F,X_1)),hAPP_f210572555l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) )
         <= is_fun961089132t_bool(X_1) ) ) ).

fof(fact_1090_nat__add__left__commute,axiom,
    ! [X,Y,Z] : hAPP_nat_nat(plus_plus_nat(Y),hAPP_nat_nat(plus_plus_nat(X),Z)) = hAPP_nat_nat(plus_plus_nat(X),hAPP_nat_nat(plus_plus_nat(Y),Z)) ).

fof(fact_617_drop__butlast,axiom,
    ! [N_7,Xs_6] : hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_7),Xs_6)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_7),hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_6)) ).

fof(fact_24__C2_C,axiom,
    ! [P_a,Pa,A_8,B_7,Aa,Ba] :
      ( ( Aa != Ba
       => ( ( ( ( ( ( ! [I] :
                        ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_8),B_7)),hAPP_A1677245848t_bool(P_a,I)))
                        <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),hAPP_A1677245848t_bool(Pa,I))) )
                       <= is_Arr43961803e_indi(I) )
                   => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_8),B_7)),hAPP_f412050202t_bool(f,P_a)))
                    <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),hAPP_f412050202t_bool(f,Pa))) ) )
                 <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,P_a),arrow_1721807329e_Prof)) )
               <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Pa),arrow_1721807329e_Prof)) )
             <= A_8 != Ba )
           <= Aa != B_7 )
         <= A_8 != B_7 ) )
     <= ( is_Arr1861959080le_alt(A_8)
        & is_Arr1861959080le_alt(B_7)
        & is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(Ba) ) ) ).

fof(fact_1111_diff__add__0,axiom,
    ! [N,M] : zero_zero_nat = hAPP_nat_nat(minus_minus_nat(N),hAPP_nat_nat(plus_plus_nat(N),M)) ).

fof(fact_795_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( is_bool(X_1)
         => ( hBOOL(hAPP_bool_bool(Pa,X_1))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),set_bool(Xs_1))) ) )
     => hAPP_l1189022293t_bool(dropWhile_bool(Pa),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_1),Ys_1)) = hAPP_l1189022293t_bool(dropWhile_bool(Pa),Ys_1) ) ).

fof(fact_128_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_b1376601646t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f651410150l_bool(hAPP_f742962061l_bool(member478669795t_bool,F),pi_boo1117000868t_bool(A_1,hAPP_f779223135l_bool(cOMBK_1305974367l_bool,B_1)))) ) ).

fof(fact_238_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1693298207e_indi(F,X_1)),B_1))
           <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f10461143l_bool(hAPP_f1339774669l_bool(member832622164e_indi,F),pi_fun1002945429e_indi(A_1,hAPP_f2129183278i_bool(cOMBK_1626211664t_bool,B_1)))) ) ).

fof(fact_932_linorder__le__cases,axiom,
    ! [X_9,Y_8] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_9),Y_8))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_8),X_9)) ) ).

fof(fact_301_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_f412050202t_bool(F,X_1)),hAPP_f1277514478l_bool(B_1,X_1))) )
         <= is_fun760276937t_bool(X_1) )
     => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,B_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___113,axiom,
    ! [P,Q] :
      ( hAPP_f1663053423t_bool(hAPP_f420098683t_bool(cOMBK_964928722t_bool,P),Q) = P
     <= is_fun1393352280t_bool(P) ) ).

fof(fact_192_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f560831258l_bool(hAPP_f1153917531l_bool(member1036419453e_indi,F),pi_fun896360044e_indi(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1582908258e_indi(F,X_1)),hAPP_f244157820i_bool(B_1,X_1))) ) ) ) ).

fof(fact_838_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( K = L_1
     => ( ! [X_1] :
            ( is_Arr1861959080le_alt(X_1)
           => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(L_1)))
             => ( hBOOL(hAPP_A862370221t_bool(Q_1,X_1))
              <=> hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) ) )
       => hAPP_l726444215le_alt(dropWh156852662le_alt(Q_1),K) = hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),L_1) ) ) ).

fof(fact_181_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2017347493l_bool(hAPP_f137298509l_bool(member1567747746le_alt,F),pi_Pro2035602019le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_P1095651821le_alt(F,X_1)),hAPP_P2082381915t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) )
         <= is_Pro1725146340le_alt(X_1) ) ) ).

fof(fact_881_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
     => ? [Ys,Zs] :
          ( hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Ys),hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Zs))) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___115,axiom,
    ! [P,Q] :
      ( is_fun1236654035i_bool(P)
     => hAPP_f244157820i_bool(hAPP_f2136780329i_bool(cOMBK_480812327t_bool,P),Q) = P ) ).

fof(fact_1103_add__eq__self__zero,axiom,
    ! [M,N] :
      ( hAPP_nat_nat(plus_plus_nat(M),N) = M
     => N = zero_zero_nat ) ).

fof(fact_738_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(butlas995342418e_indi,Ys_1))))
        | hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(butlas995342418e_indi,Xs_1)))) )
     => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(butlas995342418e_indi,hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Xs_1),Ys_1))))) ) ).

fof(fact_743_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(butlas1888624491le_alt,Xs_1))))
        | hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(butlas1888624491le_alt,Ys_1)))) )
     => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(butlas1888624491le_alt,hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Xs_1),Ys_1))))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf_055,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1725204053l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__Arrow____Order____Mirabelle_____001,axiom,
    is_fun1236654035i_bool(top_to1576102282i_bool) ).

fof(fact_195_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f236193164l_bool(hAPP_f652666381l_bool(member1535903113le_alt,F),pi_fun90241866le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f53317332le_alt(F,X_1)),hAPP_f5761716t_bool(B_1,X_1))) ) ) ) ).

fof(fact_313_list__nonempty__induct,axiom,
    ! [Pa,Xs_1] :
      ( ( ( hBOOL(hAPP_l1386638586t_bool(Pa,Xs_1))
         <= ! [X_1,Xs_17] :
              ( is_Arr1861959080le_alt(X_1)
             => ( nil_Ar126264853le_alt != Xs_17
               => ( hBOOL(hAPP_l1386638586t_bool(Pa,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs_17)))
                 <= hBOOL(hAPP_l1386638586t_bool(Pa,Xs_17)) ) ) ) )
       <= ! [X_1] :
            ( is_Arr1861959080le_alt(X_1)
           => hBOOL(hAPP_l1386638586t_bool(Pa,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt))) ) )
     <= nil_Ar126264853le_alt != Xs_1 ) ).

fof(fact_890_split__list,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Ys),hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Zs)) = Xs_1
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_010,hypothesis,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(hAPP_A568203993t_bool(B_1_1,B_2_1))
     <= is_Arr1861959080le_alt(B_2_1) ) ).

fof(fact_245_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_n1965810497t_bool(F,X_1)),B_1))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1)) )
     => hBOOL(hAPP_f903371257l_bool(hAPP_f1546082457l_bool(member1494731740t_bool,F),pi_nat1317494091t_bool(A_1,hAPP_f584002568l_bool(cOMBK_532713098ol_nat,B_1)))) ) ).

fof(fact_320_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
    <=> hBOOL(hAPP_f965095724l_bool(A_1,X_2)) ) ).

fof(fact_384_top__apply,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_f965095724l_bool(top_to522745736l_bool,X_2))
    <=> hBOOL(top_top_bool) ) ).

fof(fact_530_neq__if__length__neq,axiom,
    ! [Xs_27,Ys_7] :
      ( Xs_27 != Ys_7
     <= hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_7) != hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_27) ) ).

fof(fact_1152_diff__add__assoc2,axiom,
    ! [I_2,K_2,J] :
      ( hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(minus_minus_nat(J),K_2)),I_2) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(J),I_2)),K_2)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J)) ) ).

fof(fact_834_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Ys),hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Zs)) = Xs_1
    <=> hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(fact_870_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Ys)))
          & hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Ys),hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Zs)) = Xs_1 )
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ).

fof(fact_6__096_B_Bthesis_O_A_I_B_Bc_O_Adistinct_A_091a_M_Ab_M_Ac_093_A_061_061_062_,axiom,
    ~ ! [C_5] :
        ( ~ hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,a),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,b),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,C_5),nil_Ar126264853le_alt)))))
       <= is_Arr1861959080le_alt(C_5) ) ).

fof(fact_362_lexord__irreflexive,axiom,
    ! [Xs_1,R_2] :
      ( ~ hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Xs_1)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2)))
     <= ! [X_1] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),X_1)),R_2)) ) ).

fof(fact_1038_le__SucI,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_778_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
     => hAPP_l1660244757t_bool(hAPP_f726713198t_bool(insert1665396998t_bool,X_2),Xs_1) = hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Xs_1) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_list_bool_bool(B_1_1,B_2_1)) ).

fof(fact_232_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f68732431l_bool(hAPP_f1556434125l_bool(member1366121996le_alt,F),pi_fun1792636103le_alt(A_1,hAPP_f420098683t_bool(cOMBK_964928722t_bool,B_1))))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1054274129le_alt(F,X_1)),B_1))
           <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1)) ) ) ) ).

fof(fact_565_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Z_3),hAPP_P1711233733t_bool(hAPP_f1708325453t_bool(produc315582749t_bool,Ca),P_1)))
       => ~ ! [X_1,Y_9] :
              ( ( hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) = P_1
               => ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Z_3),hAPP_A1664620203t_bool(hAPP_A210478249t_bool(Ca,X_1),Y_9))) )
             <= ( is_Arr1861959080le_alt(X_1)
                & is_Arr1861959080le_alt(Y_9) ) ) )
     <= is_Pro1725146340le_alt(P_1) ) ).

fof(fact_303_Pi__cong,axiom,
    ! [B_1,G,F,A_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,B_1)))
      <=> hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,G),pi_Pro666468413t_bool(A_1,B_1))) )
     <= ! [W] :
          ( is_Pro1725146340le_alt(W)
         => ( ( hBOOL(hAPP_P606313927t_bool(G,W))
            <=> hBOOL(hAPP_P606313927t_bool(F,W)) )
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,W),A_1)) ) ) ) ).

fof(fact_726_last__in__set,axiom,
    ! [As] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,last_nat(As)),set_nat(As)))
     <= As != nil_nat ) ).

fof(fact_201_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1))
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(F,X_1)),hAPP_A568203993t_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f1276380911l_bool(hAPP_f1868812933l_bool(member26406738le_alt,F),pi_Arr55294401le_alt(A_1,B_1))) ) ).

fof(fact_885_split__list,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Ys),hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Zs)) = Xs_1
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(fact_351_Pi__UNIV,axiom,
    ! [A_1] : top_to1853035173l_bool = pi_Pro666468413t_bool(A_1,hAPP_f2068374643l_bool(cOMBK_246631416le_alt,top_to1647826457l_bool)) ).

fof(fact_678_takeWhile__eq__all__conv,axiom,
    ! [Pa,Xs_1] :
      ( Xs_1 = hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1)
    <=> ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1)))
           => hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) ) ) ).

fof(fact_854_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( L_1 = K
     => ( hAPP_l1766111573le_alt(takeWh1529274110le_alt(Pa),L_1) = hAPP_l1766111573le_alt(takeWh1529274110le_alt(Q_1),K)
       <= ! [X_1] :
            ( is_Pro1725146340le_alt(X_1)
           => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),set_Pr604701398le_alt(L_1)))
             => ( hBOOL(hAPP_P606313927t_bool(Q_1,X_1))
              <=> hBOOL(hAPP_P606313927t_bool(Pa,X_1)) ) ) ) ) ) ).

fof(fact_127_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f785974231l_bool(hAPP_f937842381l_bool(member383660628t_bool,F),pi_Arr1936979349t_bool(A_1,hAPP_f2069340078l_bool(cOMBK_1389630288e_indi,B_1))))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A479848479t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__,axiom,
    ! [P,Q,R] : hAPP_f2014742713t_bool(P,hAPP_A1664620203t_bool(Q,R)) = hAPP_A1664620203t_bool(hAPP_f825175477t_bool(hAPP_f57507985t_bool(cOMBB_1171600517le_alt,P),Q),R) ).

fof(fact_1127_less__eq__nat_Osimps_I1_J,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),N)) ).

fof(fact_1057_lessE,axiom,
    ! [I_2,K_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),K_2))
     => ( hAPP_nat_nat(suc,I_2) != K_2
       => ~ ! [J_1] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J_1))
             => hAPP_nat_nat(suc,J_1) != K_2 ) ) ) ).

fof(fact_293_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1525366679l_bool(hAPP_f586020557l_bool(member1055039380t_bool,F),pi_Arr1306565967t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(F,X_1)),hAPP_A187815023l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) ) ) ) ).

fof(fact_865_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
     => ? [Ys,Zs] :
          ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Ys))) ) ) ).

fof(fact_25_assms_I1_J,axiom,
    hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,f),pi_fun150026276t_bool(arrow_1721807329e_Prof,hAPP_f1924755118l_bool(cOMBK_2038534567t_bool,arrow_1681063817le_Lin)))) ).

fof(gsy_v_b____,hypothesis,
    is_Arr1861959080le_alt(b) ).

fof(fact_799_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l1766111573le_alt(dropWh1907450966le_alt(Pa),hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Xs_1),Ys_1)) = hAPP_l1766111573le_alt(dropWh1907450966le_alt(Pa),Ys_1)
     <= ! [X_1] :
          ( ( hBOOL(hAPP_P606313927t_bool(Pa,X_1))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),set_Pr604701398le_alt(Xs_1))) )
         <= is_Pro1725146340le_alt(X_1) ) ) ).

fof(fact_155_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f53317332le_alt(F,X_2)),hAPP_f5761716t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f236193164l_bool(hAPP_f652666381l_bool(member1535903113le_alt,F),pi_fun90241866le_alt(A_1,B_1))) ) ).

fof(fact_560_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( ! [A_7,B_6] :
          ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Z_3),hAPP_l1328583473l_bool(hAPP_l395992834l_bool(Ca,A_7),B_6)))
         <= P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6) )
     => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Z_3),hAPP_P139894920l_bool(hAPP_f86548619l_bool(produc998313258l_bool,Ca),P_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__prod_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f108029607l_bool(B_1_1,B_2_1)) ).

fof(fact_920_Pi__anti__mono,axiom,
    ! [B_1,A_6,A_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,A_6),A_1))
     => hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,pi_Pro666468413t_bool(A_1,B_1)),pi_Pro666468413t_bool(A_6,B_1))) ) ).

fof(fact_1079_add__le__mono,axiom,
    ! [K_2,L,I_2,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(I_2),K_2)),hAPP_nat_nat(plus_plus_nat(J),L)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),L)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),J)) ) ).

fof(fact_919_listrel1__mono,axiom,
    ! [R_2,S_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,hAPP_f1865483825t_bool(listre904073838le_alt,R_2)),hAPP_f1865483825t_bool(listre904073838le_alt,S_2)))
     <= hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,R_2),S_2)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__031,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(hAPP_f666924118le_alt(B_1_1,B_2_1))
     <= is_fun760276937t_bool(B_2_1) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell,axiom,
    ! [P,Q,R] : hAPP_f1514103381le_alt(P,hAPP_l1869074853le_alt(Q,R)) = hAPP_l1869074853le_alt(hAPP_f746471349le_alt(hAPP_f1532338415le_alt(cOMBB_2017209238le_alt,P),Q),R) ).

fof(fact_359_lexord__Nil__left,axiom,
    ! [Y_2,R_2] :
      ( ? [A_7,X_1] :
          ( Y_2 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_7),X_1)
          & is_Arr1861959080le_alt(A_7) )
    <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,nil_Ar126264853le_alt),Y_2)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) ) ).

fof(fact_905_listrel__subset__rtrancl__listrel1,axiom,
    ! [R_2] : hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,hAPP_f1865483825t_bool(listre760726333le_alt,R_2)),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))) ).

fof(fact_954_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,A_1),B_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),B_1)) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) ) ).

fof(fact_291_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_n588788980t_bool(F,X_1)),hAPP_n1674354836l_bool(B_1,X_1))) )
     => hBOOL(hAPP_f307807922l_bool(hAPP_f491986957l_bool(member107042095t_bool,F),pi_nat1370421354t_bool(A_1,B_1))) ) ).

fof(fact_332_curryD,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P1327827171t_bool(F,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)))
     <= hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(produc231070560t_bool(F),Aa),Ba)) ) ).

fof(fact_815_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
    <=> ? [Ys,Zs] :
          ( hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Ys),hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Ys))) ) ) ).

fof(fact_474_listrel1E,axiom,
    ! [Xs_1,Ys_1,R_2] :
      ( ~ ! [X_1,Y_9] :
            ( ( ! [Us,Vs] :
                  ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Vs)) = Xs_1
                 => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Vs)) != Ys_1 )
             <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9)),R_2)) )
           <= ( is_Arr1861959080le_alt(Y_9)
              & is_Arr1861959080le_alt(X_1) ) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ).

fof(fact_146_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f899439636l_bool(hAPP_f2103233871l_bool(member1620122743le_alt,F),pi_fun462417760le_alt(A_1,B_1)))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f666924118le_alt(F,X_2)),hAPP_f228695594t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) ) ) ).

fof(fact_1174_add__gr__0,axiom,
    ! [M_2,N_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_2))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M_2)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(plus_plus_nat(M_2),N_2))) ) ).

fof(fact_379_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),top_to522745736l_bool)) ).

fof(fact_1091_nat__add__commute,axiom,
    ! [M,N] : hAPP_nat_nat(plus_plus_nat(M),N) = hAPP_nat_nat(plus_plus_nat(N),M) ).

fof(fact_641_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_1))
     => ( hAPP_l726444215le_alt(takeWh536362254le_alt(hAPP_f2014742713t_bool(hAPP_f27970449t_bool(cOMBB_2104979073le_alt,fNot),hAPP_A1664620203t_bool(hAPP_f825175477t_bool(cOMBC_1628726426t_bool,fequal1160105444le_alt),X_2))),hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1)) = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,hAPP_l726444215le_alt(tl_Arr1453005548le_alt,hAPP_l726444215le_alt(dropWh156852662le_alt(hAPP_f2014742713t_bool(hAPP_f27970449t_bool(cOMBB_2104979073le_alt,fNot),hAPP_A1664620203t_bool(hAPP_f825175477t_bool(cOMBC_1628726426t_bool,fequal1160105444le_alt),X_2))),Xs_1)))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ) ).

fof(fact_514_equal,axiom,
    fequal796301787le_alt = equal_499625528le_alt ).

fof(fact_179_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A1677245848t_bool(F,X_2)),hAPP_A60074736l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,B_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabel_145,axiom,
    ! [P,Q] :
      ( is_fun158382675l_bool(P)
     => hAPP_b517355696l_bool(hAPP_f779223135l_bool(cOMBK_1305974367l_bool,P),Q) = P ) ).

fof(fact_625_listrel__rtrancl__trans,axiom,
    ! [Zs_1,Xs_1,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre760726333le_alt,transi1256616594le_alt(R_2))))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ys_1),Zs_1)),hAPP_f1865483825t_bool(listre760726333le_alt,transi1256616594le_alt(R_2))))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Zs_1)),hAPP_f1865483825t_bool(listre760726333le_alt,transi1256616594le_alt(R_2)))) ) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_097,axiom,
    ! [B_1_1,B_2_1] : is_fun1097062475t_bool(hAPP_P1599728724t_bool(B_1_1,B_2_1)) ).

fof(fact_884_split__list,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1)))
     => ? [Ys,Zs] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs)) = Xs_1 ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1271753300l_bool(B_1_1,B_2_1)) ).

fof(fact_749_hd__in__set,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hd_fun191074571t_bool(Xs_1)),set_fu335223357t_bool(Xs_1)))
     <= nil_fu81264926t_bool != Xs_1 ) ).

fof(fact_971_linorder__linear,axiom,
    ! [X_3,Y_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_3),Y_1))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_1),X_3)) ) ).

fof(fact_974_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_2),Xs_1))))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ).

fof(fact_873_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
     => ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Ys)))
          & Xs_1 = hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Ys),hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Zs)) ) ) ).

fof(fact_309_prod_Oexhaust,axiom,
    ! [Y_13] :
      ( is_Pro1725146340le_alt(Y_13)
     => ~ ! [A_7,B_6] :
            ( ( is_Arr1861959080le_alt(A_7)
              & is_Arr1861959080le_alt(B_6) )
           => Y_13 != hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6) ) ) ).

fof(fact_693_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(butlas1472553170t_bool,Xs_1))))
     => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ).

fof(fact_1008_Suc__n__not__n,axiom,
    ! [N] : N != hAPP_nat_nat(suc,N) ).

fof(fact_427_UNIV__def,axiom,
    collec2096990994le_alt(hAPP_b1703662281t_bool(cOMBK_306730240le_alt,fTrue)) = top_to565915683t_bool ).

fof(fact_151_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1054274129le_alt(F,X_2)),hAPP_f1663053423t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f68732431l_bool(hAPP_f1556434125l_bool(member1366121996le_alt,F),pi_fun1792636103le_alt(A_1,B_1))) ) ).

fof(fact_189_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f16559284l_bool(hAPP_f2142494605l_bool(member1846971697ol_nat,F),pi_fun1597968236ol_nat(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f816335862ol_nat(F,X_1)),hAPP_f856106132t_bool(B_1,X_1))) ) ) ) ).

fof(fact_383_top__apply,axiom,
    ! [X_2] :
      ( hBOOL(top_top_bool)
    <=> hBOOL(hAPP_f592646513l_bool(top_to1853035173l_bool,X_2)) ) ).

fof(fact_1006_less__eq__Suc__le__raw,axiom,
    ! [X_1] : hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,X_1)) = hAPP_n1699378549t_bool(ord_less_nat,X_1) ).

fof(fact_579_Ex__list__of__length,axiom,
    ! [N_13] :
    ? [Xs_17] : N_13 = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_17) ).

fof(fact_926_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,hAPP_f580451669i_bool(hAPP_f712459161i_bool(cOMBC_1781321570l_bool,member1493247163e_indi),R_1)),hAPP_f580451669i_bool(hAPP_f712459161i_bool(cOMBC_1781321570l_bool,member1493247163e_indi),S_1)))
    <=> hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,R_1),S_1)) ) ).

fof(fact_215_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f196630486l_bool(hAPP_f1212866771l_bool(member392258873t_bool,F),pi_Arr44017448t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1))
           => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A1159885342t_bool(F,X_1)),hAPP_A366518464l_bool(B_1,X_1))) )
         <= is_Arr1861959080le_alt(X_1) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [P,Q] :
      ( hAPP_n588788980t_bool(hAPP_f1328016200t_bool(cOMBK_856666543ol_nat,P),Q) = P
     <= is_fun961089132t_bool(P) ) ).

fof(fact_758_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,hAPP_l210315413t_bool(dropWh23362493t_bool(Pa),Xs_1)),Ys_1) = hAPP_l210315413t_bool(dropWh23362493t_bool(Pa),hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Xs_1),Ys_1))
       <= ~ hBOOL(hAPP_f312250286l_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ).

fof(fact_532_splitD,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P1327827171t_bool(hAPP_f1331183759t_bool(produc1102988737t_bool,F),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)))
     => hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(F,Aa),Ba)) ) ).

fof(fact_1112_Nat_Oadd__0__right,axiom,
    ! [M] : hAPP_nat_nat(plus_plus_nat(M),zero_zero_nat) = M ).

fof(fact_338_eq__Nil__null,axiom,
    ! [Xs_1] :
      ( Xs_1 = nil_Ar126264853le_alt
    <=> hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,Xs_1)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order___156,axiom,
    ! [P,Q] : P = hAPP_f5761716t_bool(hAPP_f14382104t_bool(cOMBK_1914291077t_bool,P),Q) ).

fof(fact_404_self__append__conv,axiom,
    ! [Xs_1,Ys_1] :
      ( Ys_1 = nil_Ar126264853le_alt
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1) = Xs_1 ) ).

fof(fact_29_Lin__irrefl,axiom,
    ! [Aa,Ba,L_2] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin))
     => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ba),Aa)),L_2))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),L_2)) ) ) ).

fof(fact_1139_nat_Osimps_I2_J,axiom,
    ! [Nat_3] : hAPP_nat_nat(suc,Nat_3) != zero_zero_nat ).

fof(help_fequal_1_1_fequal_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu,axiom,
    ! [X,Y] :
      ( ( ~ hBOOL(hAPP_f965095724l_bool(hAPP_f1577179519l_bool(fequal785189517t_bool,X),Y))
        | Y = X )
     <= ( is_fun760276937t_bool(Y)
        & is_fun760276937t_bool(X) ) ) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__Arrow____Order____Mirabelle____,axiom,
    is_fun1393352280t_bool(top_to2076077793t_bool) ).

fof(fact_528_listrel__Nil2,axiom,
    ! [Xs_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),nil_Ar126264853le_alt)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
     => Xs_1 = nil_Ar126264853le_alt ) ).

fof(fact_432_lexord__append__left__rightI,axiom,
    ! [U,X_2,Y_2,Aa,Ba,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,U),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),X_2))),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,U),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Ba),Y_2)))),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),R_2)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_040,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f196630486l_bool(B_1_1,B_2_1)) ).

fof(fact_848_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( ! [X_1] :
            ( ( hBOOL(hAPP_P1327827171t_bool(Q_1,X_1))
            <=> hBOOL(hAPP_P1327827171t_bool(Pa,X_1)) )
           <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),set_Pr1404309362le_alt(L_1))) )
       => hAPP_l1493873365le_alt(takeWh416411546le_alt(Q_1),K) = hAPP_l1493873365le_alt(takeWh416411546le_alt(Pa),L_1) )
     <= K = L_1 ) ).

fof(gsy_v_P____,hypothesis,
    is_fun760276937t_bool(p) ).

fof(fact_391_append__butlast__last__id,axiom,
    ! [Xs_42] :
      ( Xs_42 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_42)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,last_A57386030le_alt(Xs_42)),nil_Ar126264853le_alt))
     <= Xs_42 != nil_Ar126264853le_alt ) ).

fof(fact_689_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1)))
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_1)))) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____,axiom,
    ! [B_1_1,B_2_1] : is_fun158382675l_bool(hAPP_n295497947l_bool(B_1_1,B_2_1)) ).

fof(fact_1067_nat__add__left__cancel__less,axiom,
    ! [K,M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(K),M_2)),hAPP_nat_nat(plus_plus_nat(K),N_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [P,Q,R] : hAPP_n1875670159le_alt(hAPP_f402821245le_alt(hAPP_f548810715le_alt(cOMBB_903467948lt_nat,P),Q),R) = hAPP_l726444215le_alt(P,hAPP_n1875670159le_alt(Q,R)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__HOL__Obool_Mtc__fun_Itc__Arrow____Order____M,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f599145828l_bool(B_1_1,B_2_1)) ).

fof(fact_3__096a_A_126_061_Ab_096,axiom,
    a != b ).

fof(fact_946_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),B_1)) ) ) ).

fof(gsy_c_List_Olast_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnb,axiom,
    ! [B_1_1] : is_fun1097062475t_bool(last_f1633249093t_bool(B_1_1)) ).

fof(fact_251_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1))
         => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_P1861769507t_bool(F,X_1)),B_1)) )
     => hBOOL(hAPP_f354239713l_bool(hAPP_f720124009l_bool(member1139774916t_bool,F),pi_Pro623007021t_bool(A_1,hAPP_f952375653l_bool(cOMBK_751995742le_alt,B_1)))) ) ).

fof(fact_408_append__self__conv2,axiom,
    ! [Xs_1,Ys_1] :
      ( Ys_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)
    <=> nil_Ar126264853le_alt = Xs_1 ) ).

fof(help_fequal_2_1_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_A1785763630i_bool(hAPP_A313542399i_bool(fequal1196706959e_indi,X),Y))
      | X != Y ) ).

fof(fact_543_equal__eq,axiom,
    ! [X_2,Y_2] :
      ( Y_2 = X_2
    <=> hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,X_2),Y_2)) ) ).

fof(fact_841_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( ! [X_1] :
            ( ( ( hBOOL(hAPP_bool_bool(Pa,X_1))
              <=> hBOOL(hAPP_bool_bool(Q_1,X_1)) )
             <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),set_bool(L_1))) )
           <= is_bool(X_1) )
       => hAPP_l1189022293t_bool(dropWhile_bool(Q_1),K) = hAPP_l1189022293t_bool(dropWhile_bool(Pa),L_1) )
     <= L_1 = K ) ).

fof(fact_323_Collect__def,axiom,
    ! [Pa] : collect_nat(Pa) = Pa ).

fof(fact_363_lexord__irreflexive,axiom,
    ! [Xs_1,R_2] :
      ( ! [X_1] :
          ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),X_1)),R_2))
         <= is_Arr1861959080le_alt(X_1) )
     => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Xs_1)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) ) ).

fof(fact_1098_less__zeroE,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),zero_zero_nat)) ).

fof(fact_409_eq__Nil__appendI,axiom,
    ! [Xs_36,Ys_13] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,nil_Ar126264853le_alt),Ys_13) = Xs_36
     <= Ys_13 = Xs_36 ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn,axiom,
    ! [P,Q,R] : hAPP_f312250286l_bool(hAPP_f1577576703l_bool(P,R),Q) = hAPP_f312250286l_bool(hAPP_f1577576703l_bool(hAPP_f1556356969l_bool(cOMBC_1576836772l_bool,P),Q),R) ).

fof(fact_120_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f307807922l_bool(hAPP_f491986957l_bool(member107042095t_bool,F),pi_nat1370421354t_bool(A_1,hAPP_f11902820l_bool(cOMBK_39620975ol_nat,B_1))))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_n588788980t_bool(F,X_2)),B_1)) ) ) ).

fof(fact_1167_add__diff__inverse,axiom,
    ! [M,N] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => hAPP_nat_nat(plus_plus_nat(N),hAPP_nat_nat(minus_minus_nat(M),N)) = M ) ).

fof(fact_207_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A2102641565t_bool(F,X_1)),hAPP_A1952883197l_bool(B_1,X_1))) )
         <= is_Arr43961803e_indi(X_1) )
     => hBOOL(hAPP_f1252760917l_bool(hAPP_f40035149l_bool(member855864530t_bool,F),pi_Arr2020412179t_bool(A_1,B_1))) ) ).

fof(fact_58_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_n588788980t_bool(F,X_2)),hAPP_n1674354836l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) )
     <= hBOOL(hAPP_f307807922l_bool(hAPP_f491986957l_bool(member107042095t_bool,F),pi_nat1370421354t_bool(A_1,B_1))) ) ).

fof(fact_481_Nil2__notin__lex,axiom,
    ! [Xs_1,R_2] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),nil_Ar126264853le_alt)),hAPP_f1865483825t_bool(lex_Ar255587961le_alt,R_2))) ).

fof(fact_563_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( is_Pro1725146340le_alt(P_1)
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_3),hAPP_P2136891882t_bool(hAPP_f1984771213t_bool(produc1527919682t_bool,Ca),P_1)))
       => ~ ! [X_1,Y_9] :
              ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_3),hAPP_A1862272720t_bool(hAPP_A1470764750t_bool(Ca,X_1),Y_9)))
               <= P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9) )
             <= ( is_Arr1861959080le_alt(X_1)
                & is_Arr1861959080le_alt(Y_9) ) ) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Arrow____Order__,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(hAPP_f2014742713t_bool(hAPP_f27970449t_bool(cOMBB_2104979073le_alt,P),Q),R) = hAPP_bool_bool(P,hAPP_A862370221t_bool(Q,R)) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000_132,axiom,
    ! [P,Q,R] : hAPP_A1625428400t_bool(hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,P),Q),R) = hAPP_A1941004017t_bool(hAPP_A621939144t_bool(P,R),Q) ).

fof(fact_1047_less__Suc__eq__le,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),hAPP_nat_nat(suc,N_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) ) ).

fof(fact_70_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_P710098616e_indi(F,X_2)),hAPP_P1875867302i_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f1306865520l_bool(hAPP_f407092109l_bool(member234128621e_indi,F),pi_Pro1270767662e_indi(A_1,B_1))) ) ).

fof(fact_839_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( ! [X_1] :
            ( ( hBOOL(hAPP_P1327827171t_bool(Q_1,X_1))
            <=> hBOOL(hAPP_P1327827171t_bool(Pa,X_1)) )
           <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),set_Pr1404309362le_alt(L_1))) )
       => hAPP_l1493873365le_alt(dropWh1604595954le_alt(Q_1),K) = hAPP_l1493873365le_alt(dropWh1604595954le_alt(Pa),L_1) )
     <= L_1 = K ) ).

fof(fact_646_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l2060223415l_bool(distin1991771627t_bool,Xs_1))
     => ( hAPP_l210315413t_bool(rev_fu1629171390t_bool,hAPP_l210315413t_bool(tl_fun413860871t_bool,hAPP_l210315413t_bool(dropWh23362493t_bool(hAPP_f1765205l_bool(hAPP_f152453811l_bool(cOMBB_1459698610t_bool,fNot),hAPP_f1577576703l_bool(hAPP_f1556356969l_bool(cOMBC_1576836772l_bool,fequal1596628751t_bool),X_2))),Xs_1))) = hAPP_l210315413t_bool(takeWh169821797t_bool(hAPP_f1765205l_bool(hAPP_f152453811l_bool(cOMBB_1459698610t_bool,fNot),hAPP_f1577576703l_bool(hAPP_f1556356969l_bool(cOMBC_1576836772l_bool,fequal1596628751t_bool),X_2))),hAPP_l210315413t_bool(rev_fu1629171390t_bool,Xs_1))
       <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ) ).

fof(fact_19_in__rel__def,axiom,
    ! [R_1,X_2,Y_2] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(in_rel617948260le_alt(R_1),X_2),Y_2))
    <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_1)) ) ).

fof(fact_766_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_2),Xs_1) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) )
      & ( Xs_1 = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_2),Xs_1)
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ) ).

fof(fact_59_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f354239713l_bool(hAPP_f720124009l_bool(member1139774916t_bool,F),pi_Pro623007021t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_P1861769507t_bool(F,X_2)),hAPP_P1905961381l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) ) ) ).

fof(fact_1029_less__antisym,axiom,
    ! [N,M] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),M))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),hAPP_nat_nat(suc,M)))
       => M = N ) ) ).

fof(help_COMBI_1_1_COMBI_000tc__Nat__Onat_U,axiom,
    ! [P] : hAPP_nat_nat(cOMBI_nat,P) = P ).

fof(fact_1189_nat_Osize_I4_J,axiom,
    ! [Nat] : hAPP_nat_nat(size_size_nat,hAPP_nat_nat(suc,Nat)) = hAPP_nat_nat(plus_plus_nat(hAPP_nat_nat(size_size_nat,Nat)),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_45_above__Lin,axiom,
    ! [L_2,X_2,Y_2] :
      ( ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(arrow_230821333_above(L_2,X_2),Y_2)),arrow_1681063817le_Lin))
         <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin)) )
       <= Y_2 != X_2 )
     <= ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_2) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__fun_Itc__prod_Itc__Arrow__,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f2076022549l_bool(B_1_1,B_2_1)) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell_159,axiom,
    ! [P,Q,R] : hAPP_f170721165l_bool(P,hAPP_l1869074853le_alt(Q,R)) = hAPP_l1629075165l_bool(hAPP_f370419053l_bool(hAPP_f1953650287l_bool(cOMBB_283473102le_alt,P),Q),R) ).

fof(fact_173_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f2835579l_bool(hAPP_f1229756829l_bool(member379339614t_bool,F),pi_nat955432909t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_n291670979t_bool(F,X_2)),hAPP_n295497947l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) ) ) ).

fof(fact_996_top__unique,axiom,
    ! [Aa] :
      ( ( Aa = top_to1576102282i_bool
      <=> hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,top_to1576102282i_bool),Aa)) )
     <= is_fun1236654035i_bool(Aa) ) ).

fof(fact_840_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( hAPP_l54953109e_indi(dropWh601337149e_indi(Q_1),K) = hAPP_l54953109e_indi(dropWh601337149e_indi(Pa),L_1)
       <= ! [X_1] :
            ( ( ( hBOOL(hAPP_A1785763630i_bool(Pa,X_1))
              <=> hBOOL(hAPP_A1785763630i_bool(Q_1,X_1)) )
             <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),set_Ar219761597e_indi(L_1))) )
           <= is_Arr43961803e_indi(X_1) ) )
     <= L_1 = K ) ).

fof(fact_931_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,R_1),S_1))
    <=> hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,hAPP_f515126293t_bool(hAPP_f49469479t_bool(cOMBC_864945570l_bool,member1441201108le_alt),R_1)),hAPP_f515126293t_bool(hAPP_f49469479t_bool(cOMBC_864945570l_bool,member1441201108le_alt),S_1))) ) ).

fof(fact_1143_Suc__diff__diff,axiom,
    ! [M,N,K_2] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(suc,M)),N)),hAPP_nat_nat(suc,K_2)) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(M),N)),K_2) ).

fof(gsy_c_List_Ohd_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    ! [B_1_1] : is_Arr1861959080le_alt(hd_Arr805754088le_alt(B_1_1)) ).

fof(fact_591_last__rev,axiom,
    ! [Xs_16] :
      ( hd_Arr805754088le_alt(Xs_16) = last_A57386030le_alt(hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_16))
     <= Xs_16 != nil_Ar126264853le_alt ) ).

fof(fact_124_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_n291670979t_bool(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f2835579l_bool(hAPP_f1229756829l_bool(member379339614t_bool,F),pi_nat955432909t_bool(A_1,hAPP_f1879785608l_bool(cOMBK_2131602312ol_nat,B_1)))) ) ).

fof(fact_714_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l89806901l_bool(distin22312297t_bool,hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Xs_1)))
    <=> ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
        & hBOOL(hAPP_l89806901l_bool(distin22312297t_bool,Xs_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___085,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(B_2_1)
     => is_fun961089132t_bool(hAPP_f515126293t_bool(B_1_1,B_2_1)) ) ).

fof(help_fequal_1_1_fequal_000tc__Nat__Onat_T,axiom,
    ! [X,Y] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(fequal_nat,X),Y))
      | X = Y ) ).

fof(fact_52_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_b55004359le_alt(F,X_2)),hAPP_b1703662281t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1351174655l_bool(hAPP_f2127575245l_bool(member1463820796le_alt,F),pi_boo115158845le_alt(A_1,B_1))) ) ).

fof(fact_199_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2115479956l_bool(hAPP_f975710927l_bool(member24871799le_alt,F),pi_nat249006182le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_n324757596le_alt(F,X_1)),hAPP_n588788980t_bool(B_1,X_1))) ) ) ).

fof(fact_972_take__Nil,axiom,
    ! [N_3] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_3),nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(fact_687_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(takeWh1529274110le_alt(Pa),Xs_1))))
     => ( hBOOL(hAPP_P606313927t_bool(Pa,X_2))
        & hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_046,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun288122577l_bool(hAPP_f146009813l_bool(B_1_1,B_2_1))
     <= is_fun288122577l_bool(B_2_1) ) ).

fof(fact_948_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),B_1))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A_1),B_1)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) ) ).

fof(fact_4_dist,axiom,
    hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,a),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,b),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,c),nil_Ar126264853le_alt))))) ).

fof(fact_392_takeWhile__tail,axiom,
    ! [Xs_1,L_1,Pa,X_2] :
      ( hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1) = hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),L_1)))
     <= ~ hBOOL(hAPP_A862370221t_bool(Pa,X_2)) ) ).

fof(fact_872_split__list__first,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1)))
     => ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Ys)))
          & hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Ys),hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Zs)) = Xs_1 ) ) ).

fof(fact_1134_diff__diff__cancel,axiom,
    ! [I_2,N] :
      ( hAPP_nat_nat(minus_minus_nat(N),hAPP_nat_nat(minus_minus_nat(N),I_2)) = I_2
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_2),N)) ) ).

fof(fact_1023_Suc__less__SucD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N))) ) ).

fof(fact_516_splitI,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))
     <= hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F,Aa),Ba)) ) ).

fof(fact_704_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l1075146559t_bool(hAPP_f613335309t_bool(insert202184175t_bool,X_2),Xs_1) = Xs_1
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(fact_93_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f969456697l_bool(hAPP_f1857700889l_bool(member1549237916le_alt,F),pi_Pro610394757le_alt(A_1,hAPP_f1609079369t_bool(cOMBK_1369841150le_alt,B_1))))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_P1257947515le_alt(F,X_2)),B_1)) ) ) ).

fof(fact_938_ord__le__eq__trans,axiom,
    ! [C_3,A_4,B_4] :
      ( ( C_3 = B_4
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_4),C_3)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_4),B_4)) ) ).

fof(fact_999_top__le,axiom,
    ! [Aa] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,top_to1853035173l_bool),Aa))
       => top_to1853035173l_bool = Aa )
     <= is_fun279392540l_bool(Aa) ) ).

fof(fact_1065_trans__less__add2,axiom,
    ! [M,I_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),hAPP_nat_nat(plus_plus_nat(M),J)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__prod_Itc,axiom,
    ! [P,Q] : hAPP_P2136891882t_bool(hAPP_f1809347209t_bool(cOMBK_1632198563le_alt,P),Q) = P ).

fof(fact_268_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f666924118le_alt(F,X_1)),hAPP_f228695594t_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f899439636l_bool(hAPP_f2103233871l_bool(member1620122743le_alt,F),pi_fun462417760le_alt(A_1,B_1))) ) ).

fof(fact_373_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),top_top_fun_nat_bool)) ).

fof(fact_31_third__alt,axiom,
    ! [A,B] :
      ( ( A != B
       => ? [C_5] :
            ( is_Arr1861959080le_alt(C_5)
            & hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,B),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,C_5),nil_Ar126264853le_alt))))) ) )
     <= ( is_Arr1861959080le_alt(B)
        & is_Arr1861959080le_alt(A) ) ) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Ord,axiom,
    is_fun279392540l_bool(top_to1853035173l_bool) ).

fof(fact_672_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(hAPP_n1117890248e_indi(drop_A1037593438e_indi,N_2),Xs_1)))) ) ).

fof(fact_8__096_I_Fp_O_Abelow_A_Ibelow_A_Ibelow_A_IP_Ap_J_Ac_Ab_J_Ab_Aa_J_Aa_Ac_J_A_,axiom,
    hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,arrow_1539419881_below),hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,arrow_1539419881_below),hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,hAPP_A1906441908t_bool(hAPP_f248867553t_bool(cOMBC_898791271t_bool,hAPP_f210227915t_bool(hAPP_f758198165t_bool(cOMBB_1769989562e_indi,arrow_1539419881_below),p)),c)),b))),b)),a))),a)),c)),arrow_1721807329e_Prof)) ).

fof(gsy_c_Arrow__Order__Mirabelle__tpnfnnbpuu_Ounanimity,axiom,
    is_fun158382675l_bool(arrow_1587283740nimity) ).

fof(fact_50_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1276380911l_bool(hAPP_f1868812933l_bool(member26406738le_alt,F),pi_Arr55294401le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       <= ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(F,X_2)),hAPP_A568203993t_bool(B_1,X_2))) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_,axiom,
    ! [P,Q,R] : hAPP_nat_bool(hAPP_f800510211t_bool(hAPP_f1722879237t_bool(cOMBC_226598744l_bool,P),Q),R) = hAPP_f54304608l_bool(hAPP_n215258509l_bool(P,R),Q) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(hAPP_bool_bool(fconj(P),Q))
      | hBOOL(P) ) ).

fof(fact_163_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_b55004359le_alt(F,X_2)),hAPP_b1703662281t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1351174655l_bool(hAPP_f2127575245l_bool(member1463820796le_alt,F),pi_boo115158845le_alt(A_1,B_1))) ) ).

fof(fact_1026_less__trans__Suc,axiom,
    ! [K_2,I_2,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J),K_2))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,I_2)),K_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J)) ) ).

fof(fact_1161_le__diff__conv,axiom,
    ! [J_2,K,I_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(J_2),K)),I_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_2),hAPP_nat_nat(plus_plus_nat(I_1),K))) ) ).

fof(fact_720_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
     => ( hAPP_l1189022293t_bool(takeWhile_bool(Pa),Xs_1) = hAPP_l1189022293t_bool(takeWhile_bool(Pa),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_1),Ys_1))
       <= ~ hBOOL(hAPP_bool_bool(Pa,X_2)) ) ) ).

fof(fact_1086_min__Suc__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,M),N)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)) ).

fof(fact_569_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( ~ ! [X_1,Y_9] :
            ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Z_3),hAPP_l1328583473l_bool(hAPP_l395992834l_bool(Ca,X_1),Y_9)))
           <= hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_1),Y_9) = P_1 )
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Z_3),hAPP_P139894920l_bool(hAPP_f86548619l_bool(produc998313258l_bool,Ca),P_1))) ) ).

fof(gsy_c_FunDef_Oin__rel_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000,axiom,
    ! [B_1_1] :
      ( is_fun2093718614t_bool(in_rel1305177154le_alt(B_1_1))
     <= is_fun961089132t_bool(B_1_1) ) ).

fof(fact_1186_nat__induct,axiom,
    ! [N_2,Pa] :
      ( hBOOL(hAPP_nat_bool(Pa,zero_zero_nat))
     => ( hBOOL(hAPP_nat_bool(Pa,N_2))
       <= ! [N_1] :
            ( hBOOL(hAPP_nat_bool(Pa,N_1))
           => hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(suc,N_1))) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__fun_Itc__fun_Itc__Arrow___,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1478750961l_bool(B_1_1,B_2_1)) ).

fof(fact_770_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
       => Xs_1 = hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(insert256706849le_alt,X_2),Xs_1) )
      & ( hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(insert256706849le_alt,X_2),Xs_1) = hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(cons_P993230855le_alt,X_2),Xs_1)
       <= ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ) ).

fof(fact_1066_trans__less__add1,axiom,
    ! [M,I_2,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),J))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),hAPP_nat_nat(plus_plus_nat(J),M))) ) ).

fof(fact_381_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),top_to1714702858l_bool)) ).

fof(fact_908_order__refl,axiom,
    ! [X_10] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_10),X_10)) ).

fof(fact_1083_add__Suc__right,axiom,
    ! [M,N] : hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(M),N)) = hAPP_nat_nat(plus_plus_nat(M),hAPP_nat_nat(suc,N)) ).

fof(fact_517_prod__caseI,axiom,
    ! [F1,Aa,Ba] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(F1,Aa),Ba))
     => hBOOL(hAPP_P1327827171t_bool(hAPP_f1331183759t_bool(produc1102988737t_bool,F1),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba))) ) ).

fof(fact_874_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
     => ? [Ys,Zs] :
          ( Xs_1 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Zs))
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Zs))) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_152,axiom,
    ! [P,Q,R] : hAPP_f216801278le_alt(hAPP_l489874441le_alt(P,R),Q) = hAPP_l1869074853le_alt(hAPP_f1790240989le_alt(hAPP_f1792349771le_alt(cOMBC_1330649024le_alt,P),Q),R) ).

fof(fact_755_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_P1327827171t_bool(Pa,X_2))
       => hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,hAPP_l1493873365le_alt(dropWh1604595954le_alt(Pa),Xs_1)),Ys_1) = hAPP_l1493873365le_alt(dropWh1604595954le_alt(Pa),hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Xs_1),Ys_1)) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__fun_It_011,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(hAPP_A2102641565t_bool(B_1_1,B_2_1))
     <= is_Arr43961803e_indi(B_2_1) ) ).

fof(gsy_c_fFalse,axiom,
    is_bool(fFalse) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_005,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun_bool_bool(hAPP_A822657487l_bool(B_1_1,B_2_1))
     <= is_Arr1861959080le_alt(B_2_1) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell_160,axiom,
    ! [P,Q,R] : hAPP_f1728064559t_bool(P,hAPP_l1629075165l_bool(Q,R)) = hAPP_l1288188215t_bool(hAPP_f1152779391t_bool(hAPP_f991870303t_bool(cOMBB_353715312le_alt,P),Q),R) ).

fof(fact_802_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),set_Pr1404309362le_alt(Xs_1)))
         => hBOOL(hAPP_P1327827171t_bool(Pa,X_1)) )
     => hAPP_l1493873365le_alt(takeWh416411546le_alt(Pa),hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Xs_1),Ys_1)) = hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Xs_1),hAPP_l1493873365le_alt(takeWh416411546le_alt(Pa),Ys_1)) ) ).

fof(fact_791_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_nat_bool(Pa,X_1))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),set_nat(Xs_1))) )
     => hAPP_l248265089st_nat(dropWhile_nat(Pa),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),Ys_1)) = hAPP_l248265089st_nat(dropWhile_nat(Pa),Ys_1) ) ).

fof(fact_229_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f597137892l_bool(hAPP_f1175923213l_bool(member989885409l_bool,F),pi_fun823343522l_bool(A_1,hAPP_f746617550l_bool(cOMBK_370033373t_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f965095724l_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) )
         <= is_fun760276937t_bool(X_1) ) ) ).

fof(gsy_c_List_Ohd_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_,axiom,
    ! [B_1_1] : is_fun760276937t_bool(hd_fun276684937t_bool(B_1_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__HOL__Obool_Mtc__fun_Itc__fun_Itc__Arrow____O,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f651410150l_bool(B_1_1,B_2_1)) ).

fof(fact_96_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f40547922le_alt(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f1976794890l_bool(hAPP_f1603005581l_bool(member1603119111le_alt,F),pi_fun553016520le_alt(A_1,hAPP_f372103450t_bool(cOMBK_1411148035t_bool,B_1)))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___125,axiom,
    ! [P,Q] :
      ( is_fun1393352280t_bool(P)
     => P = hAPP_f228695594t_bool(hAPP_f898562478t_bool(cOMBK_607931107t_bool,P),Q) ) ).

fof(fact_498_curry__split,axiom,
    ! [F] : produc335266950le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,F)) = F ).

fof(fact_580_replicate__append__same,axiom,
    ! [I_11,X_22] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_22),hAPP_A832564074le_alt(replic351609551le_alt(I_11),X_22)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(I_11),X_22)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_22),nil_Ar126264853le_alt)) ).

fof(fact_510_not__distinct__decomp,axiom,
    ! [Ws] :
      ( ? [Xs_17,Ys,Zs,Y_9] :
          ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_17),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),nil_Ar126264853le_alt)),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),nil_Ar126264853le_alt)),Zs)))) = Ws
          & is_Arr1861959080le_alt(Y_9) )
     <= ~ hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Ws)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__HOL__Obool_Mtc__HOL__Obool_J_Mtc__HOL__Oboo,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1098788115l_bool(B_1_1,B_2_1)) ).

fof(fact_665_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( is_fun961089132t_bool(X_2)
        & is_fun961089132t_bool(Y_2) )
     => ( ( Y_2 = X_2
          | hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Y_2),set_fu1384968698t_bool(Xs_1))) )
       <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,Y_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Xs_1)))) ) ) ).

fof(fact_271_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f16559284l_bool(hAPP_f2142494605l_bool(member1846971697ol_nat,F),pi_fun1597968236ol_nat(A_1,B_1)))
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f816335862ol_nat(F,X_1)),hAPP_f856106132t_bool(B_1,X_1))) ) ) ) ).

fof(fact_1017_nat__less__cases,axiom,
    ! [Pa,M_2,N_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(Pa,N_2),M_2)) )
     => ( ( N_2 = M_2
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(Pa,N_2),M_2)) )
       => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),M_2))
           => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(Pa,N_2),M_2)) )
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(Pa,N_2),M_2)) ) ) ) ).

fof(fact_924_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_f2014742713t_bool(hAPP_f1382209403t_bool(cOMBC_1745481870l_bool,member1071917752le_alt),R_1)),hAPP_f2014742713t_bool(hAPP_f1382209403t_bool(cOMBC_1745481870l_bool,member1071917752le_alt),S_1)))
    <=> hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,R_1),S_1)) ) ).

fof(fact_333_curryD,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(produc212588606t_bool(F),Aa),Ba))
     => hBOOL(hAPP_P606313927t_bool(F,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))) ) ).

fof(fact_692_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(butlast_bool,Xs_1))))
     => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn,axiom,
    ! [P,Q] :
      ( hAPP_n2095207769l_bool(hAPP_f584002568l_bool(cOMBK_532713098ol_nat,P),Q) = P
     <= is_fun288122577l_bool(P) ) ).

fof(fact_1007_n__not__Suc__n,axiom,
    ! [N] : hAPP_nat_nat(suc,N) != N ).

fof(fact_644_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l2034560823i_bool(distin1358019435e_indi,Xs_1))
     => ( hAPP_l54953109e_indi(takeWh273131493e_indi(hAPP_f580451669i_bool(hAPP_f1250179763i_bool(cOMBB_1141363506e_indi,fNot),hAPP_A313542399i_bool(hAPP_f585152361i_bool(cOMBC_1428934564i_bool,fequal1196706959e_indi),X_2))),hAPP_l54953109e_indi(rev_Ar2090626622e_indi,Xs_1)) = hAPP_l54953109e_indi(rev_Ar2090626622e_indi,hAPP_l54953109e_indi(tl_Arr1614430599e_indi,hAPP_l54953109e_indi(dropWh601337149e_indi(hAPP_f580451669i_bool(hAPP_f1250179763i_bool(cOMBB_1141363506e_indi,fNot),hAPP_A313542399i_bool(hAPP_f585152361i_bool(cOMBC_1428934564i_bool,fequal1196706959e_indi),X_2))),Xs_1)))
       <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ) ).

fof(fact_886_split__list,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Ys),hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Zs)) = Xs_1
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ).

fof(fact_535_tl_Osimps_I2_J,axiom,
    ! [X_24,Xs_25] : hAPP_l726444215le_alt(tl_Arr1453005548le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_24),Xs_25)) = Xs_25 ).

fof(fact_688_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(hAPP_l248265089st_nat(butlast_nat,Xs_1))))
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(fact_40_linear__alt,axiom,
    ? [L_3] :
      ( is_fun961089132t_bool(L_3)
      & hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_3),arrow_1681063817le_Lin)) ) ).

fof(fact_967_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),B_1))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,A_1),B_1)) ) ).

fof(fact_777_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Xs_1) = hAPP_l1075146559t_bool(hAPP_f613335309t_bool(insert202184175t_bool,X_2),Xs_1)
     <= ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(gsy_c_List_Olast_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oal,axiom,
    ! [B_1_1] : is_Pro1725146340le_alt(last_P736051166le_alt(B_1_1)) ).

fof(fact_262_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2042909150l_bool(hAPP_f1073701219l_bool(member547554753lt_nat,F),pi_Pro264071722lt_nat(A_1,B_1)))
     <= ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_P339823136lt_nat(F,X_1)),hAPP_P2136891882t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) ) ) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_099,axiom,
    ! [B_1_1,B_2_1] : is_fun279392540l_bool(hAPP_P1905961381l_bool(B_1_1,B_2_1)) ).

fof(fact_781_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9)),R_2))
             => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Z_4)),R_2))
               <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_9),Z_4)),R_2)) ) )
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1))) )
         <= ( is_Arr1861959080le_alt(X_1)
            & is_Arr1861959080le_alt(Z_4)
            & is_Arr1861959080le_alt(Y_9) ) )
     => ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ys_1),Zs_1)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
         => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Zs_1)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) )
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2))) ) ) ).

fof(fact_154_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f570668343l_bool(hAPP_f2111526677l_bool(member1881985050ol_nat,F),pi_fun2080023171ol_nat(A_1,B_1)))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1416261241ol_nat(F,X_2)),hAPP_f1593910865t_bool(B_1,X_2))) ) ) ).

fof(fact_647_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l982832318l_bool(distin1691228364t_bool,Xs_1))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
       => hAPP_l1075146559t_bool(takeWh1512678354t_bool(hAPP_f111185985l_bool(hAPP_f1982584345l_bool(cOMBB_310009925t_bool,fNot),hAPP_f863359027l_bool(hAPP_f495827653l_bool(cOMBC_1136104858l_bool,fequal1258273448t_bool),X_2))),hAPP_l1075146559t_bool(rev_fu1041356345t_bool,Xs_1)) = hAPP_l1075146559t_bool(rev_fu1041356345t_bool,hAPP_l1075146559t_bool(tl_fun2071351216t_bool,hAPP_l1075146559t_bool(dropWh1133555834t_bool(hAPP_f111185985l_bool(hAPP_f1982584345l_bool(cOMBB_310009925t_bool,fNot),hAPP_f863359027l_bool(hAPP_f495827653l_bool(cOMBC_1136104858l_bool,fequal1258273448t_bool),X_2))),Xs_1))) ) ) ).

fof(fact_837_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( ( hAPP_l248265089st_nat(dropWhile_nat(Pa),L_1) = hAPP_l248265089st_nat(dropWhile_nat(Q_1),K)
       <= ! [X_1] :
            ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),set_nat(L_1)))
           => ( hBOOL(hAPP_nat_bool(Q_1,X_1))
            <=> hBOOL(hAPP_nat_bool(Pa,X_1)) ) ) )
     <= K = L_1 ) ).

fof(fact_595_map__pair__def,axiom,
    ! [F,G] : hAPP_f1078809103le_alt(produc748227559le_alt,hAPP_f1790240989le_alt(hAPP_f1792349771le_alt(cOMBC_1330649024le_alt,hAPP_f1318121625le_alt(hAPP_f634775919le_alt(cOMBB_576205818le_alt,cOMBB_1818168801le_alt),hAPP_f1790240989le_alt(hAPP_f1013417831le_alt(cOMBB_2052911494le_alt,produc237774329le_alt),F))),G)) = produc1449729469le_alt(F,G) ).

fof(fact_930_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,R_1),S_1))
    <=> hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,hAPP_f146009813l_bool(hAPP_f1956380189l_bool(cOMBC_574836706l_bool,member760917689t_bool),R_1)),hAPP_f146009813l_bool(hAPP_f1956380189l_bool(cOMBC_574836706l_bool,member760917689t_bool),S_1))) ) ).

fof(fact_994_top__unique,axiom,
    ! [Aa] :
      ( is_fun158382675l_bool(Aa)
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,top_to1714702858l_bool),Aa))
      <=> top_to1714702858l_bool = Aa ) ) ).

fof(gsy_c_List_Ohd_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpu,axiom,
    ! [B_1_1] : is_fun1097062475t_bool(hd_fun191074571t_bool(B_1_1)) ).

fof(conj_0,conjecture,
    ! [I] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,a),c)),hAPP_A568203993t_bool(hAPP_A1941004017t_bool(hAPP_f344580165t_bool(arrow_1539419881_below,hAPP_A1677245848t_bool(p,I)),c),b)))
      <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,a),b)),hAPP_A1677245848t_bool(p,I))) )
     <= is_Arr43961803e_indi(I) ) ).

fof(fact_727_last__in__set,axiom,
    ! [As] :
      ( nil_Pr1357826771le_alt != As
     => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,last_P723779706le_alt(As)),set_Pr1404309362le_alt(As))) ) ).

fof(fact_349_top1I,axiom,
    ! [X_2] : hBOOL(hAPP_A1785763630i_bool(top_to1576102282i_bool,X_2)) ).

fof(fact_444_UNIV__witness,axiom,
    ? [X_1] : hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),top_to772840767t_bool)) ).

fof(fact_991_top__unique,axiom,
    ! [Aa] :
      ( is_fun961089132t_bool(Aa)
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,top_to565915683t_bool),Aa))
      <=> Aa = top_to565915683t_bool ) ) ).

fof(fact_933_xt1_I6_J,axiom,
    ! [Z_2,Y_7,X_8] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_2),Y_7))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_2),X_8)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_7),X_8)) ) ).

fof(fact_264_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f969456697l_bool(hAPP_f1857700889l_bool(member1549237916le_alt,F),pi_Pro610394757le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_P1257947515le_alt(F,X_1)),hAPP_P1711233733t_bool(B_1,X_1))) ) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp_135,axiom,
    ! [P,Q,R] : hAPP_f592646513l_bool(hAPP_f111185985l_bool(hAPP_f2018922499l_bool(cOMBC_62805014l_bool,P),Q),R) = hAPP_f1749234559l_bool(hAPP_f566237389l_bool(P,R),Q) ).

fof(fact_39_alt3,axiom,
    ? [A_7,B_6,C_5] :
      ( is_Arr1861959080le_alt(A_7)
      & hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_7),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,B_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,C_5),nil_Ar126264853le_alt)))))
      & is_Arr1861959080le_alt(C_5)
      & is_Arr1861959080le_alt(B_6) ) ).

fof(help_If_2_1_If_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____,axiom,
    ! [X,Y] : Y = hAPP_P1056860425le_alt(hAPP_P864444517le_alt(if_Pro1306781203le_alt(fFalse),X),Y) ).

fof(fact_762_List_Oinsert__def,axiom,
    ! [X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
       => hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_2),Xs_1) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Xs_1) )
      & ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1)))
       => Xs_1 = hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_2),Xs_1) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_f961197973l_bool(hAPP_f1172769267l_bool(cOMBB_bool_bool_bool,P),Q),R) = hAPP_bool_bool(P,hAPP_bool_bool(Q,R)) ).

fof(fact_356_butlast_Osimps_I2_J,axiom,
    ! [X_32,Xs_45] :
      ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_32),hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_45)) = hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_32),Xs_45))
       <= nil_Ar126264853le_alt != Xs_45 )
      & ( Xs_45 = nil_Ar126264853le_alt
       => hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_32),Xs_45)) = nil_Ar126264853le_alt ) ) ).

fof(fact_132_list_Osimps_I4_J,axiom,
    ! [F1,F2] : F1 = hAPP_l726444215le_alt(list_c380068407le_alt(F1,F2),nil_Ar126264853le_alt) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_051,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1097062475t_bool(B_2_1)
     => is_fun1236654035i_bool(hAPP_f1552576127i_bool(B_1_1,B_2_1)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabel_138,axiom,
    ! [P,Q,R] : hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(P,R),Q) = hAPP_P1327827171t_bool(hAPP_f1642286869t_bool(hAPP_f1297597679t_bool(cOMBC_188453282l_bool,P),Q),R) ).

fof(fact_491_dropWhile_Osimps_I1_J,axiom,
    ! [Pa] : hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(fact_741_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(butlas1157436197t_bool,hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Xs_1),Ys_1)))))
     <= ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(butlas1157436197t_bool,Ys_1))))
        | hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(hAPP_l1075146559t_bool(butlas1157436197t_bool,Xs_1)))) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabell_087,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1382465777l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___081,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(B_2_1)
     => is_fun1236654035i_bool(hAPP_f244157820i_bool(B_1_1,B_2_1)) ) ).

fof(fact_402_Nil__is__append__conv,axiom,
    ! [Xs_1,Ys_1] :
      ( ( Ys_1 = nil_Ar126264853le_alt
        & nil_Ar126264853le_alt = Xs_1 )
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1) = nil_Ar126264853le_alt ) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_140,axiom,
    ! [P,Q,R] : hAPP_l1869074853le_alt(P,hAPP_l726444215le_alt(Q,R)) = hAPP_l1869074853le_alt(hAPP_f1790240989le_alt(hAPP_f1013417831le_alt(cOMBB_2052911494le_alt,P),Q),R) ).

fof(fact_147_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f836059805e_indi(F,X_2)),hAPP_f1948454017i_bool(B_1,X_2)))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f1725204053l_bool(hAPP_f666018637l_bool(member905797074e_indi,F),pi_fun753830419e_indi(A_1,B_1))) ) ).

fof(fact_285_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_b55004359le_alt(F,X_1)),hAPP_b1703662281t_bool(B_1,X_1))) )
         <= is_bool(X_1) )
     => hBOOL(hAPP_f1351174655l_bool(hAPP_f2127575245l_bool(member1463820796le_alt,F),pi_boo115158845le_alt(A_1,B_1))) ) ).

fof(fact_63_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
       <= ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_P1599728724t_bool(F,X_2)),hAPP_P1606644490l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1508559628l_bool(hAPP_f984565261l_bool(member1329875721t_bool,F),pi_Pro1636653258t_bool(A_1,B_1))) ) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_121,axiom,
    ! [P,Q,R] : hAPP_l1386638586t_bool(hAPP_f318645548t_bool(hAPP_f1728064559t_bool(cOMBC_1740746827l_bool,P),Q),R) = hAPP_f1634113933l_bool(hAPP_l578398296l_bool(P,R),Q) ).

fof(fact_1032_less__Suc__eq,axiom,
    ! [M_2,N_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
        | N_2 = M_2 )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),hAPP_nat_nat(suc,N_2))) ) ).

fof(fact_862_rtranclE,axiom,
    ! [Aa,Ba,R_2] :
      ( ( is_Arr1861959080le_alt(Ba)
        & is_Arr1861959080le_alt(Aa) )
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),transi1256616594le_alt(R_2)))
       => ( ~ ! [Y_9] :
                ( is_Arr1861959080le_alt(Y_9)
               => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_9),Ba)),R_2))
                 <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Y_9)),transi1256616594le_alt(R_2))) ) )
         <= Aa != Ba ) ) ) ).

fof(fact_467_Cons__listrel1__Cons,axiom,
    ! [X_2,Xs_1,Y_2,Ys_1,R_2] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Xs_1)),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1))),hAPP_f1662382841t_bool(listre635569361le_alt,R_2)))
    <=> ( ( Xs_1 = Ys_1
          & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),R_2)) )
        | ( Y_2 = X_2
          & hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2))) ) ) ) ).

fof(fact_108_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1693298207e_indi(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f10461143l_bool(hAPP_f1339774669l_bool(member832622164e_indi,F),pi_fun1002945429e_indi(A_1,hAPP_f2129183278i_bool(cOMBK_1626211664t_bool,B_1)))) ) ).

fof(fact_183_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_P710098616e_indi(F,X_1)),hAPP_P1875867302i_bool(B_1,X_1)))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) ) )
     => hBOOL(hAPP_f1306865520l_bool(hAPP_f407092109l_bool(member234128621e_indi,F),pi_Pro1270767662e_indi(A_1,B_1))) ) ).

fof(fact_1137_le__diff__iff,axiom,
    ! [N_2,K,M_2] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2))
        <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(M_2),K)),hAPP_nat_nat(minus_minus_nat(N_2),K))) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),M_2)) ) ).

fof(fact_148_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f965095724l_bool(F,X_2)),hAPP_f839832464l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f597137892l_bool(hAPP_f1175923213l_bool(member989885409l_bool,F),pi_fun823343522l_bool(A_1,B_1))) ) ).

fof(fact_797_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l1075146559t_bool(dropWh1133555834t_bool(Pa),hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Xs_1),Ys_1)) = hAPP_l1075146559t_bool(dropWh1133555834t_bool(Pa),Ys_1)
     <= ! [X_1] :
          ( is_fun961089132t_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),set_fu1384968698t_bool(Xs_1)))
           => hBOOL(hAPP_f592646513l_bool(Pa,X_1)) ) ) ) ).

fof(fact_214_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1508559628l_bool(hAPP_f984565261l_bool(member1329875721t_bool,F),pi_Pro1636653258t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_P1599728724t_bool(F,X_1)),hAPP_P1606644490l_bool(B_1,X_1)))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) ) ) ).

fof(fact_30_notin__Lin__iff,axiom,
    ! [X_2,Y_2,L_2] :
      ( ( ( ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),L_2))
          <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_2),X_2)),L_2)) )
         <= X_2 != Y_2 )
       <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,L_2),arrow_1681063817le_Lin)) )
     <= ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_2) ) ) ).

fof(fact_773_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l1493873365le_alt(hAPP_P734992695le_alt(insert178756925le_alt,X_2),Xs_1) = hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Xs_1)
     <= ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___127,axiom,
    ! [P,Q] :
      ( is_fun1236654035i_bool(P)
     => P = hAPP_f1948454017i_bool(hAPP_f1368393520i_bool(cOMBK_684046286t_bool,P),Q) ) ).

fof(fact_376_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),top_to1576102282i_bool)) ).

fof(fact_522_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Z_3),hAPP_A2091627584i_bool(hAPP_A1965262040i_bool(Ca,Aa),Ba)))
     => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Z_3),hAPP_P1875867302i_bool(hAPP_f1425186181i_bool(produc89849422i_bool,Ca),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))) ) ).

fof(fact_684_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(takeWh169821797t_bool(Pa),Xs_1))))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
        & hBOOL(hAPP_f312250286l_bool(Pa,X_2)) ) ) ).

fof(fact_390_partition_Osimps_I1_J,axiom,
    ! [Pa] : partit327648526le_alt(Pa,nil_Ar126264853le_alt) = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,nil_Ar126264853le_alt),nil_Ar126264853le_alt) ).

fof(fact_372_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),top_to1714702858l_bool)) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc___028,axiom,
    ! [B_1_1,B_2_1] : is_fun2093718614t_bool(hAPP_f231379647t_bool(B_1_1,B_2_1)) ).

fof(fact_429_UNIV__def,axiom,
    top_to2076077793t_bool = collec1729629178le_alt(hAPP_b30302907t_bool(cOMBK_1646462604le_alt,fTrue)) ).

fof(fact_533_splitD,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))
     => hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F,Aa),Ba)) ) ).

fof(fact_447_UNIV__witness,axiom,
    ? [X_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),top_to2076077793t_bool))
      & is_Arr1861959080le_alt(X_1) ) ).

fof(fact_341_lexord__cons__cons,axiom,
    ! [Aa,X_2,Ba,Y_2,R_2] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Aa),X_2)),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Ba),Y_2))),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2)))
    <=> ( ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,X_2),Y_2)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2)))
          & Ba = Aa )
        | hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),R_2)) ) ) ).

fof(fact_43_not__Cons__self2,axiom,
    ! [X_39,Xs_53] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_39),Xs_53) != Xs_53 ).

fof(fact_785_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( is_Arr43961803e_indi(X_1)
            & is_Arr43961803e_indi(Y_9)
            & is_Arr43961803e_indi(Z_4) )
         => ( ( hBOOL(hAPP_f1067427061l_bool(hAPP_P1563303057l_bool(member345815512e_indi,hAPP_A1350932668e_indi(hAPP_A1266156941e_indi(produc1208780001e_indi,X_1),Y_9)),R_2))
             => ( hBOOL(hAPP_f1067427061l_bool(hAPP_P1563303057l_bool(member345815512e_indi,hAPP_A1350932668e_indi(hAPP_A1266156941e_indi(produc1208780001e_indi,Y_9),Z_4)),R_2))
               => hBOOL(hAPP_f1067427061l_bool(hAPP_P1563303057l_bool(member345815512e_indi,hAPP_A1350932668e_indi(hAPP_A1266156941e_indi(produc1208780001e_indi,X_1),Z_4)),R_2)) ) )
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),set_Ar219761597e_indi(Xs_1))) ) )
     => ( hBOOL(hAPP_f1382465777l_bool(hAPP_P1068600713l_bool(member1461267796e_indi,hAPP_l2052497089e_indi(hAPP_l29767369e_indi(produc347570391e_indi,Xs_1),Ys_1)),hAPP_f554166545i_bool(lexord1102905201e_indi,R_2)))
       => ( hBOOL(hAPP_f1382465777l_bool(hAPP_P1068600713l_bool(member1461267796e_indi,hAPP_l2052497089e_indi(hAPP_l29767369e_indi(produc347570391e_indi,Xs_1),Zs_1)),hAPP_f554166545i_bool(lexord1102905201e_indi,R_2)))
         <= hBOOL(hAPP_f1382465777l_bool(hAPP_P1068600713l_bool(member1461267796e_indi,hAPP_l2052497089e_indi(hAPP_l29767369e_indi(produc347570391e_indi,Ys_1),Zs_1)),hAPP_f554166545i_bool(lexord1102905201e_indi,R_2))) ) ) ) ).

fof(fact_157_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f10461143l_bool(hAPP_f1339774669l_bool(member832622164e_indi,F),pi_fun1002945429e_indi(A_1,B_1)))
     => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1693298207e_indi(F,X_2)),hAPP_f1552576127i_bool(B_1,X_2))) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t_109,axiom,
    ! [P,Q,R] : hAPP_A832564074le_alt(hAPP_l618618165le_alt(hAPP_f657005563le_alt(cOMBC_1919297930le_alt,P),Q),R) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(P,R),Q) ).

fof(fact_399_append__Cons,axiom,
    ! [X_29,Xs_39,Ys_16] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_29),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_39),Ys_16)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_29),Xs_39)),Ys_16) ).

fof(fact_1130_diff__is__0__eq,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2))
    <=> zero_zero_nat = hAPP_nat_nat(minus_minus_nat(M_2),N_2) ) ).

fof(fact_212_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_b1703662281t_bool(F,X_1)),hAPP_b1812770943l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f817604743l_bool(hAPP_f1345320373l_bool(member357566570t_bool,F),pi_boo538701011t_bool(A_1,B_1))) ) ).

fof(fact_1159_le__add__diff__inverse,axiom,
    ! [N,M] :
      ( M = hAPP_nat_nat(plus_plus_nat(N),hAPP_nat_nat(minus_minus_nat(M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc___026,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun2093718614t_bool(B_2_1)
     => is_fun2093718614t_bool(hAPP_f825175477t_bool(B_1_1,B_2_1)) ) ).

fof(fact_139_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_P606313927t_bool(F,X_2)),hAPP_P324742453l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,B_1))) ) ).

fof(fact_804_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( is_bool(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),set_bool(Xs_1)))
           => hBOOL(hAPP_bool_bool(Pa,X_1)) ) )
     => hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_1),hAPP_l1189022293t_bool(takeWhile_bool(Pa),Ys_1)) = hAPP_l1189022293t_bool(takeWhile_bool(Pa),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_1),Ys_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabel_067,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f16559284l_bool(B_1_1,B_2_1)) ).

fof(fact_295_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_n291670979t_bool(F,X_1)),hAPP_n295497947l_bool(B_1,X_1)))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1)) )
     => hBOOL(hAPP_f2835579l_bool(hAPP_f1229756829l_bool(member379339614t_bool,F),pi_nat955432909t_bool(A_1,B_1))) ) ).

fof(fact_270_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f597137892l_bool(hAPP_f1175923213l_bool(member989885409l_bool,F),pi_fun823343522l_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f965095724l_bool(F,X_1)),hAPP_f839832464l_bool(B_1,X_1))) )
         <= is_fun760276937t_bool(X_1) ) ) ).

fof(fact_501_takeWhile__dropWhile__id,axiom,
    ! [Pa,Xs_1] : Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1)),hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1)) ).

fof(fact_622_rtrancl__listrel1__ConsI2,axiom,
    ! [Xs_1,Ys_1,X_2,Y_2,R_2] :
      ( ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Xs_1)),hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_2),Ys_1))),transi94963304le_alt(hAPP_f1662382841t_bool(listre635569361le_alt,R_2))))
       <= hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Ys_1)),transi94963304le_alt(hAPP_f1662382841t_bool(listre635569361le_alt,R_2)))) )
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),transi992120749le_alt(R_2))) ) ).

fof(fact_161_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1276380911l_bool(hAPP_f1868812933l_bool(member26406738le_alt,F),pi_Arr55294401le_alt(A_1,B_1)))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(F,X_2)),hAPP_A568203993t_bool(B_1,X_2))) ) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa_022,axiom,
    ! [B_1_1,B_2_1] : is_fun279392540l_bool(hAPP_l1542188220l_bool(B_1_1,B_2_1)) ).

fof(fact_328_curryI,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(produc231070560t_bool(F),Aa),Ba))
     <= hBOOL(hAPP_P1327827171t_bool(F,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba))) ) ).

fof(fact_1101_nat__diff__split,axiom,
    ! [Pa,Aa,Ba] :
      ( hBOOL(hAPP_nat_bool(Pa,hAPP_nat_nat(minus_minus_nat(Aa),Ba)))
    <=> ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Aa),Ba))
         => hBOOL(hAPP_nat_bool(Pa,zero_zero_nat)) )
        & ! [D] :
            ( hBOOL(hAPP_nat_bool(Pa,D))
           <= Aa = hAPP_nat_nat(plus_plus_nat(Ba),D) ) ) ) ).

fof(gsy_c_fTrue,axiom,
    is_bool(fTrue) ).

fof(gsy_c_HOL_Oundefined_000tc__HOL__Obool,axiom,
    is_bool(undefined_bool(bool)) ).

fof(fact_308_prod_Oexhaust,axiom,
    ! [Y_13] :
      ~ ! [A_7,B_6] : hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6) != Y_13 ).

fof(fact_875_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1)))
     => ? [Ys,Zs] :
          ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Zs))) ) ) ).

fof(fact_1136_Nat_Odiff__diff__eq,axiom,
    ! [N,K_2,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),M))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),N))
       => hAPP_nat_nat(minus_minus_nat(M),N) = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(M),K_2)),hAPP_nat_nat(minus_minus_nat(N),K_2)) ) ) ).

fof(fact_445_UNIV__witness,axiom,
    ? [X_1] :
      ( is_bool(X_1)
      & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),top_to1647826457l_bool)) ) ).

fof(fact_952_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),B_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,A_1),B_1)) )
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) ) ).

fof(fact_397_append__assoc,axiom,
    ! [Xs_40,Ys_17,Zs_3] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_40),Ys_17)),Zs_3) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_40),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_17),Zs_3)) ).

fof(fact_711_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( ( hBOOL(hAPP_list_bool_bool(distinct_bool,Xs_1))
        & ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) )
    <=> hBOOL(hAPP_list_bool_bool(distinct_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Xs_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp_108,axiom,
    ! [P,Q] :
      ( P = hAPP_A568203993t_bool(hAPP_f393984045t_bool(cOMBK_673344138le_alt,P),Q)
     <= is_fun961089132t_bool(P) ) ).

fof(fact_651_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_1))
     => ( hAPP_l248265089st_nat(dropWhile_nat(hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,fNot),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),X_2))),hAPP_l248265089st_nat(rev_nat,Xs_1)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),hAPP_l248265089st_nat(rev_nat,hAPP_l248265089st_nat(takeWhile_nat(hAPP_f800510211t_bool(hAPP_f894608603t_bool(cOMBB_bool_bool_nat,fNot),hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,fequal_nat),X_2))),Xs_1)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ) ).

fof(fact_940_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),B_1)) ) ) ).

fof(fact_1196_diff__Suc__eq__diff__pred,axiom,
    ! [M,N] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(minus_minus_nat(M),one_one_nat)),N) = hAPP_nat_nat(minus_minus_nat(M),hAPP_nat_nat(suc,N)) ).

fof(fact_1054_less__eq__nat_Osimps_I2_J,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(nat_case_bool(fFalse,hAPP_n1699378549t_bool(ord_less_eq_nat,M_2)),N_2))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M_2)),N_2)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1806001137l_bool(B_1_1,B_2_1)) ).

fof(fact_577_listrel_Osimps,axiom,
    ! [A1,A2,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A1),A2)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
    <=> ( ( nil_Ar126264853le_alt = A2
          & A1 = nil_Ar126264853le_alt )
        | ? [X_1,Y_9,Xs_17,Ys] :
            ( is_Arr1861959080le_alt(Y_9)
            & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Ys) = A2
            & hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_17),Ys)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
            & hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9)),R_2))
            & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs_17) = A1
            & is_Arr1861959080le_alt(X_1) ) ) ) ).

fof(fact_322_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
    <=> hBOOL(hAPP_f312250286l_bool(A_1,X_2)) ) ).

fof(fact_564_mem__splitE,axiom,
    ! [Z_3,Ca,P_1] :
      ( ( ~ ! [X_1,Y_9] :
              ( ( is_Arr1861959080le_alt(Y_9)
                & is_Arr1861959080le_alt(X_1) )
             => ( P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9)
               => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Z_3),hAPP_A490104565t_bool(hAPP_A101171597t_bool(Ca,X_1),Y_9))) ) )
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,Z_3),hAPP_P2082381915t_bool(hAPP_f1783389935t_bool(produc51145731t_bool,Ca),P_1))) )
     <= is_Pro1725146340le_alt(P_1) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order___,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f799496074l_bool(B_1_1,B_2_1)) ).

fof(fact_775_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_2),Xs_1) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Xs_1)
     <= ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__037,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun288122577l_bool(hAPP_f1577179519l_bool(B_1_1,B_2_1))
     <= is_fun760276937t_bool(B_2_1) ) ).

fof(gsy_c_Arrow__Order__Mirabelle__tpnfnnbpuu_OProf,axiom,
    is_fun288122577l_bool(arrow_1721807329e_Prof) ).

fof(fact_389_equal__Nil__null,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,Xs_1))
    <=> hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,Xs_1),nil_Ar126264853le_alt)) ) ).

fof(fact_1072_le__add2,axiom,
    ! [N,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),hAPP_nat_nat(plus_plus_nat(M),N))) ).

fof(fact_331_curryE,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(produc212588606t_bool(F),Aa),Ba))
     => hBOOL(hAPP_P606313927t_bool(F,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))) ) ).

fof(fact_893_split__list__first__prop__iff,axiom,
    ! [Pa,Xs_1] :
      ( ? [X_1] :
          ( is_Arr1861959080le_alt(X_1)
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1))) )
    <=> ? [Ys,X_1] :
          ( ! [Xa] :
              ( ( ~ hBOOL(hAPP_A862370221t_bool(Pa,Xa))
               <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),set_Ar1565008694le_alt(Ys))) )
             <= is_Arr1861959080le_alt(Xa) )
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & ? [Zs] : Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs))
          & is_Arr1861959080le_alt(X_1) ) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa_021,axiom,
    ! [B_1_1,B_2_1] : is_fun158382675l_bool(hAPP_l1661879987l_bool(B_1_1,B_2_1)) ).

fof(fact_616_rev__replicate,axiom,
    ! [N_8,X_12] : hAPP_l726444215le_alt(rev_Ar2093961333le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_8),X_12)) = hAPP_A832564074le_alt(replic351609551le_alt(N_8),X_12) ).

fof(fact_32_IIA__def,axiom,
    ! [Fa] :
      ( hBOOL(hAPP_f312250286l_bool(arrow_1654180089le_IIA,Fa))
    <=> ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),arrow_1721807329e_Prof))
           => ! [Xa] :
                ( is_fun760276937t_bool(Xa)
               => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,Xa),arrow_1721807329e_Prof))
                 => ! [A_7,B_6] :
                      ( ( is_Arr1861959080le_alt(A_7)
                        & is_Arr1861959080le_alt(B_6) )
                     => ( ! [I] :
                            ( is_Arr43961803e_indi(I)
                           => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A1677245848t_bool(Xa,I)))
                            <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_A1677245848t_bool(X_1,I))) ) )
                       => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_f412050202t_bool(Fa,X_1)))
                        <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)),hAPP_f412050202t_bool(Fa,Xa))) ) ) ) ) ) ) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t_112,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(hAPP_f1663053423t_bool(hAPP_f653880381t_bool(cOMBC_1635684702l_bool,P),Q),R) = hAPP_f592646513l_bool(hAPP_A187815023l_bool(P,R),Q) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__092,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(B_2_1)
     => is_fun_bool_bool(hAPP_P324742453l_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_101,axiom,
    ! [B_1_1,B_2_1] : is_Pro1725146340le_alt(hAPP_P1699981037le_alt(B_1_1,B_2_1)) ).

fof(fact_461_rotate1__is__Nil__conv,axiom,
    ! [Xs_1] :
      ( Xs_1 = nil_Ar126264853le_alt
    <=> hAPP_l726444215le_alt(rotate1322903650le_alt,Xs_1) = nil_Ar126264853le_alt ) ).

fof(fact_468_Cons__listrel1__Cons,axiom,
    ! [X_2,Xs_1,Y_2,Ys_1,R_2] :
      ( ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Y_2) )
     => ( ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_2))
            & Ys_1 = Xs_1 )
          | ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
            & Y_2 = X_2 ) )
      <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ) ).

fof(fact_1055_less__mono__imp__le__mono,axiom,
    ! [I_1,J_2,F] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_2))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,I_1)),hAPP_nat_nat(F,J_2))) )
     <= ! [I,J_1] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,I)),hAPP_nat_nat(F,J_1)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J_1)) ) ) ).

fof(fact_737_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(butlas1456493703le_alt,hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Xs_1),Ys_1)))))
     <= ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(butlas1456493703le_alt,Xs_1))))
        | hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(butlas1456493703le_alt,Ys_1)))) ) ) ).

fof(fact_464_not__listrel1__Nil,axiom,
    ! [Xs_1,R_2] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),nil_Ar126264853le_alt)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__036,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(B_2_1)
     => is_fun_bool_bool(hAPP_f839832464l_bool(B_1_1,B_2_1)) ) ).

fof(fact_703_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( Xs_1 = hAPP_l210315413t_bool(hAPP_f1812326636t_bool(insert1946138248t_bool,X_2),Xs_1)
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ).

fof(fact_1162_diff__diff__right,axiom,
    ! [I_2,K_2,J] :
      ( hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(I_2),K_2)),J) = hAPP_nat_nat(minus_minus_nat(I_2),hAPP_nat_nat(minus_minus_nat(J),K_2))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),J)) ) ).

fof(fact_352_Pi__UNIV,axiom,
    ! [A_1] : pi_fun150026276t_bool(A_1,hAPP_f1924755118l_bool(cOMBK_2038534567t_bool,top_to1853035173l_bool)) = top_to1714702858l_bool ).

fof(fact_5_iff,axiom,
    ! [I] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,a),b)),hAPP_A1677245848t_bool(p,I)))
    <=> hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,b),a)),hAPP_A1677245848t_bool(p_1,I))) ) ).

fof(fact_1135_eq__diff__iff,axiom,
    ! [N_2,K,M_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),M_2))
     => ( ( hAPP_nat_nat(minus_minus_nat(N_2),K) = hAPP_nat_nat(minus_minus_nat(M_2),K)
        <=> M_2 = N_2 )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N_2)) ) ) ).

fof(fact_1025_less__SucE,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),hAPP_nat_nat(suc,N)))
     => ( M = N
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ) ).

fof(fact_73_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f666924118le_alt(F,X_2)),hAPP_f228695594t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f899439636l_bool(hAPP_f2103233871l_bool(member1620122743le_alt,F),pi_fun462417760le_alt(A_1,B_1))) ) ).

fof(fact_721_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
     => ( ~ hBOOL(hAPP_f312250286l_bool(Pa,X_2))
       => hAPP_l210315413t_bool(takeWh169821797t_bool(Pa),Xs_1) = hAPP_l210315413t_bool(takeWh169821797t_bool(Pa),hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Xs_1),Ys_1)) ) ) ).

fof(gsy_c_List_Olast_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnn,axiom,
    ! [B_1_1] : is_fun961089132t_bool(last_f2112695026t_bool(B_1_1)) ).

fof(fact_513_tl__append,axiom,
    ! [Xs_1,Ys_1] : hAPP_l726444215le_alt(tl_Arr1453005548le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)) = hAPP_l726444215le_alt(list_c380068407le_alt(hAPP_l726444215le_alt(tl_Arr1453005548le_alt,Ys_1),hAPP_f1608056749le_alt(cOMBK_1696648346le_alt,hAPP_l568342716le_alt(hAPP_f1294513379le_alt(cOMBC_1058495865le_alt,append1166636842le_alt),Ys_1))),Xs_1) ).

fof(fact_141_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f2017347493l_bool(hAPP_f137298509l_bool(member1567747746le_alt,F),pi_Pro2035602019le_alt(A_1,B_1)))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_P1095651821le_alt(F,X_2)),hAPP_P2082381915t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_124,axiom,
    ! [P,Q,R] : hAPP_A408086601le_alt(hAPP_f1777336662le_alt(hAPP_f939319677le_alt(cOMBB_881934114le_alt,P),Q),R) = hAPP_l568342716le_alt(P,hAPP_A832564074le_alt(Q,R)) ).

fof(fact_1169_less__Suc__eq__0__disj,axiom,
    ! [M_2,N_2] :
      ( ( ? [J_1] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),N_2))
            & M_2 = hAPP_nat_nat(suc,J_1) )
        | zero_zero_nat = M_2 )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),hAPP_nat_nat(suc,N_2))) ) ).

fof(fact_542_eq__equal,axiom,
    fequal796301787le_alt = equal_499625528le_alt ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__prod_Itc__List__Olist_Itc_,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1790426673l_bool(B_1_1,B_2_1)) ).

fof(fact_842_dropWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( K = L_1
     => ( ! [X_1] :
            ( is_fun1097062475t_bool(X_1)
           => ( ( hBOOL(hAPP_f312250286l_bool(Q_1,X_1))
              <=> hBOOL(hAPP_f312250286l_bool(Pa,X_1)) )
             <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),set_fu335223357t_bool(L_1))) ) )
       => hAPP_l210315413t_bool(dropWh23362493t_bool(Q_1),K) = hAPP_l210315413t_bool(dropWh23362493t_bool(Pa),L_1) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__123,axiom,
    ! [P,Q,R] : hAPP_f592646513l_bool(hAPP_P229966473l_bool(P,R),Q) = hAPP_P606313927t_bool(hAPP_f515126293t_bool(hAPP_f49469479t_bool(cOMBC_864945570l_bool,P),Q),R) ).

fof(fact_975_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(hAPP_n19406600le_alt(take_P580715755le_alt,N_2),Xs_1)))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc___025,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1393352280t_bool(B_2_1)
     => is_fun1393352280t_bool(hAPP_f2014742713t_bool(B_1_1,B_2_1)) ) ).

fof(fact_294_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_bool(X_1)
         => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_b1703662281t_bool(F,X_1)),hAPP_b1812770943l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1)) ) )
     => hBOOL(hAPP_f817604743l_bool(hAPP_f1345320373l_bool(member357566570t_bool,F),pi_boo538701011t_bool(A_1,B_1))) ) ).

fof(fact_457_UNIV__eq__I,axiom,
    ! [A_1] :
      ( is_fun961089132t_bool(A_1)
     => ( ! [X_1] :
            ( is_Pro1725146340le_alt(X_1)
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) )
       => A_1 = top_to565915683t_bool ) ) ).

fof(fact_981_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(hAPP_l1766111573le_alt(hAPP_n2132365064le_alt(take_P1280951759le_alt,N_2),Xs_1)))) ) ).

fof(fact_190_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1732944975l_bool(hAPP_f671616325l_bool(member1636995890le_alt,F),pi_fun380945313le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),A_1))
           => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f1619707799le_alt(F,X_1)),hAPP_f1865483825t_bool(B_1,X_1))) )
         <= is_fun961089132t_bool(X_1) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__Nat__Onat_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(hAPP_f416620757at_nat(cOMBC_nat_nat_nat,P),Q),R) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(P,R),Q) ).

fof(help_COMBC_1_1_COMBC_000tc__HOL__Obool_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_b589554111l_bool(hAPP_f1897201897l_bool(cOMBC_bool_bool_bool,P),Q),R) = hAPP_bool_bool(hAPP_b589554111l_bool(P,R),Q) ).

fof(fact_986_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,Aa),top_to1853035173l_bool)) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__prod_Itc__Arrow____Order____Mirabelle____tpn,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(hAPP_b55004359le_alt(B_1_1,B_2_1))
     <= is_bool(B_2_1) ) ).

fof(fact_34_complete__Lin,axiom,
    ! [Aa,Ba] :
      ( ( ? [X_1] :
            ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),X_1))
            & hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),arrow_1681063817le_Lin))
            & is_fun961089132t_bool(X_1) )
       <= Ba != Aa )
     <= ( is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(Ba) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe_116,axiom,
    ! [P,Q] :
      ( is_fun279392540l_bool(P)
     => P = hAPP_A60074736l_bool(hAPP_f1659309744l_bool(cOMBK_657557929e_indi,P),Q) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__prod_It,hypothesis,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_Pro1725146340le_alt(hAPP_A702847159le_alt(B_1_1,B_2_1)) ) ).

fof(fact_792_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1)))
           => hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) )
     => hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Ys_1) = hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)) ) ).

fof(fact_122_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1525366679l_bool(hAPP_f586020557l_bool(member1055039380t_bool,F),pi_Arr1306565967t_bool(A_1,hAPP_f589776703l_bool(cOMBK_1638246986le_alt,B_1))))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1)) ) ) ).

fof(fact_1132_diff__le__mono2,axiom,
    ! [L,M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(L),N)),hAPP_nat_nat(minus_minus_nat(L),M)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_178_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_f412050202t_bool(F,X_2)),hAPP_f1277514478l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) ) ) ).

fof(fact_13_split__paired__All,axiom,
    ! [Pa] :
      ( ! [A_7,B_6] : hBOOL(hAPP_P1327827171t_bool(Pa,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)))
    <=> ! [X1] : hBOOL(hAPP_P1327827171t_bool(Pa,X1)) ) ).

fof(fact_209_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
         => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_n588788980t_bool(F,X_1)),hAPP_n1674354836l_bool(B_1,X_1))) )
     => hBOOL(hAPP_f307807922l_bool(hAPP_f491986957l_bool(member107042095t_bool,F),pi_nat1370421354t_bool(A_1,B_1))) ) ).

fof(fact_823_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
    <=> ? [Ys,Zs] :
          ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Zs))) ) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabell_019,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_fun1097062475t_bool(hAPP_b1376601646t_bool(B_1_1,B_2_1)) ) ).

fof(help_fequal_2_1_fequal_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpu,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_P606313927t_bool(hAPP_P1267694911t_bool(fequal454353832le_alt,X),Y))
      | X != Y ) ).

fof(fact_864_split__list__last__propE,axiom,
    ! [Pa,Xs_1] :
      ( ? [X_1] :
          ( hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1))) )
     => ~ ! [Ys,X_1,Zs] :
            ( ( Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs))
             => ( ~ ! [Xa] :
                      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),set_Ar1565008694le_alt(Zs)))
                     => ~ hBOOL(hAPP_A862370221t_bool(Pa,Xa)) )
               <= hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) )
           <= is_Arr1861959080le_alt(X_1) ) ) ).

fof(fact_691_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(butlas995342418e_indi,Xs_1))))
     => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ).

fof(fact_1068_not__add__less2,axiom,
    ! [J,I_2] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(J),I_2)),I_2)) ).

fof(fact_458_UNIV__eq__I,axiom,
    ! [A_1] :
      ( is_fun288122577l_bool(A_1)
     => ( A_1 = top_to522745736l_bool
       <= ! [X_1] :
            ( is_fun760276937t_bool(X_1)
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1)) ) ) ) ).

fof(fact_76_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f16559284l_bool(hAPP_f2142494605l_bool(member1846971697ol_nat,F),pi_fun1597968236ol_nat(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f816335862ol_nat(F,X_2)),hAPP_f856106132t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) ) ) ).

fof(fact_582_append__replicate__commute,axiom,
    ! [N_11,X_20,K_3] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(K_3),X_20)),hAPP_A832564074le_alt(replic351609551le_alt(N_11),X_20)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_11),X_20)),hAPP_A832564074le_alt(replic351609551le_alt(K_3),X_20)) ).

fof(fact_1_assms_I3_J,axiom,
    hBOOL(hAPP_f312250286l_bool(arrow_1654180089le_IIA,f)) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_004,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(hAPP_A1805174428t_bool(B_1_1,B_2_1))
     <= is_Arr1861959080le_alt(B_2_1) ) ).

fof(fact_1165_Suc__diff__le,axiom,
    ! [N,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M))
     => hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(suc,M)),N) = hAPP_nat_nat(suc,hAPP_nat_nat(minus_minus_nat(M),N)) ) ).

fof(fact_465_not__Nil__listrel1,axiom,
    ! [Xs_1,R_2] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,nil_Ar126264853le_alt),Xs_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ).

fof(fact_529_listrel__Nil1,axiom,
    ! [Xs_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,nil_Ar126264853le_alt),Xs_1)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
     => Xs_1 = nil_Ar126264853le_alt ) ).

fof(fact_706_in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
     => Xs_1 = hAPP_l1766111573le_alt(hAPP_P1057207891le_alt(insert256706849le_alt,X_2),Xs_1) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe_139,axiom,
    ! [P,Q] :
      ( P = hAPP_f1277514478l_bool(hAPP_f1924755118l_bool(cOMBK_2038534567t_bool,P),Q)
     <= is_fun279392540l_bool(P) ) ).

fof(fact_1020_eq__imp__le,axiom,
    ! [M,N] :
      ( M = N
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_049,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun158382675l_bool(B_1_1)
        & is_fun1097062475t_bool(B_2_1) )
     => is_bool(hAPP_f312250286l_bool(B_1_1,B_2_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_048,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1097062475t_bool(B_2_1)
     => is_Arr43961803e_indi(hAPP_f1693298207e_indi(B_1_1,B_2_1)) ) ).

fof(fact_649_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l1795316048t_bool(distin856461956le_alt,Xs_1))
     => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1)))
       => hAPP_l1766111573le_alt(takeWh1529274110le_alt(hAPP_f515126293t_bool(hAPP_f600409331t_bool(cOMBB_433601099le_alt,fNot),hAPP_P1267694911t_bool(hAPP_f135580393t_bool(cOMBC_607108822t_bool,fequal454353832le_alt),X_2))),hAPP_l1766111573le_alt(rev_Pr295966039le_alt,Xs_1)) = hAPP_l1766111573le_alt(rev_Pr295966039le_alt,hAPP_l1766111573le_alt(tl_Pro12277920le_alt,hAPP_l1766111573le_alt(dropWh1907450966le_alt(hAPP_f515126293t_bool(hAPP_f600409331t_bool(cOMBB_433601099le_alt,fNot),hAPP_P1267694911t_bool(hAPP_f135580393t_bool(cOMBC_607108822t_bool,fequal454353832le_alt),X_2))),Xs_1))) ) ) ).

fof(fact_941_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_f310455147l_bool(ord_le340789135t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),B_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) ) ) ).

fof(fact_211_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1525366679l_bool(hAPP_f586020557l_bool(member1055039380t_bool,F),pi_Arr1306565967t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(F,X_1)),hAPP_A187815023l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) )
         <= is_Arr1861959080le_alt(X_1) ) ) ).

fof(fact_84_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1693298207e_indi(F,X_2)),hAPP_f1552576127i_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f10461143l_bool(hAPP_f1339774669l_bool(member832622164e_indi,F),pi_fun1002945429e_indi(A_1,B_1))) ) ).

fof(fact_956_set__rev__mp,axiom,
    ! [B_1,X_2,A_1] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(ord_le1004900979t_bool,A_1),B_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),B_1)) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ).

fof(gsy_c_fNot,axiom,
    is_fun_bool_bool(fNot) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn_163,axiom,
    ! [P,Q,R] : hAPP_f250445784l_bool(hAPP_f1253375959l_bool(P,R),Q) = hAPP_f312250286l_bool(hAPP_f1765205l_bool(hAPP_f862836377l_bool(cOMBC_564645218l_bool,P),Q),R) ).

fof(fact_36_distinct_Osimps_I1_J,axiom,
    hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,nil_Ar126264853le_alt)) ).

fof(fact_761_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( hAPP_l1766111573le_alt(dropWh1907450966le_alt(Pa),hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,Xs_1),Ys_1)) = hAPP_l1766111573le_alt(hAPP_l1892800522le_alt(append308931554le_alt,hAPP_l1766111573le_alt(dropWh1907450966le_alt(Pa),Xs_1)),Ys_1)
       <= ~ hBOOL(hAPP_P606313927t_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),set_Pr604701398le_alt(Xs_1))) ) ).

fof(fact_976_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(hAPP_l54953109e_indi(hAPP_n1117890248e_indi(take_A1967759030e_indi,N_2),Xs_1)))) ) ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____t,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_f312250286l_bool(hAPP_f1577576703l_bool(fequal1596628751t_bool,X),Y))
      | X != Y ) ).

fof(gsy_c_List_Ohd_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbp,axiom,
    ! [B_1_1] : is_fun961089132t_bool(hd_fun730195372t_bool(B_1_1)) ).

fof(fact_987_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,Aa),top_to1714702858l_bool)) ).

fof(fact_443_UNIV__witness,axiom,
    ? [X_1] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),top_top_fun_nat_bool)) ).

fof(fact_90_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,F),pi_Pro666468413t_bool(A_1,hAPP_f2068374643l_bool(cOMBK_246631416le_alt,B_1))))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_P606313927t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) ) ) ).

fof(fact_900_rtrancl__induct2,axiom,
    ! [Pa,Ax,Ay,Bx,By,R_2] :
      ( hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ax),Ay)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Bx),By))),transi54034710le_alt(R_2)))
     => ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Ax),Ay))
       => ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Bx),By))
         <= ! [A_7,B_6,Aa_1,Ba_1] :
              ( hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ax),Ay)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6))),transi54034710le_alt(R_2)))
             => ( ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Aa_1),Ba_1))
                 <= hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,A_7),B_6)) )
               <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa_1),Ba_1))),R_2)) ) ) ) ) ) ).

fof(fact_1011_less__not__refl,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),N)) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_Arr1861959080le_alt(B_2_1)
        & is_fun2093718614t_bool(B_1_1) )
     => is_fun1393352280t_bool(hAPP_A1664620203t_bool(B_1_1,B_2_1)) ) ).

fof(fact_993_top__unique,axiom,
    ! [Aa] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,top_to1853035173l_bool),Aa))
      <=> top_to1853035173l_bool = Aa )
     <= is_fun279392540l_bool(Aa) ) ).

fof(fact_1124_zero__less__diff,axiom,
    ! [N_2,M_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(minus_minus_nat(N_2),M_2))) ) ).

fof(gsy_c_HOL_Oundefined_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp,axiom,
    is_fun961089132t_bool(undefi1481304379t_bool(fun(product_prod(arrow_107136085le_alt,arrow_107136085le_alt),bool))) ).

fof(fact_103_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f560831258l_bool(hAPP_f1153917531l_bool(member1036419453e_indi,F),pi_fun896360044e_indi(A_1,hAPP_f2136780329i_bool(cOMBK_480812327t_bool,B_1))))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1582908258e_indi(F,X_2)),B_1)) ) ) ).

fof(fact_220_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A1677245848t_bool(F,X_1)),hAPP_A60074736l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(fact_203_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1351174655l_bool(hAPP_f2127575245l_bool(member1463820796le_alt,F),pi_boo115158845le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_bool(X_1)
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1))
           => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_b55004359le_alt(F,X_1)),hAPP_b1703662281t_bool(B_1,X_1))) ) ) ) ).

fof(fact_67_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_P339823136lt_nat(F,X_2)),hAPP_P2136891882t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f2042909150l_bool(hAPP_f1073701219l_bool(member547554753lt_nat,F),pi_Pro264071722lt_nat(A_1,B_1))) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__094,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(B_2_1)
     => is_fun961089132t_bool(hAPP_P1267694911t_bool(B_1_1,B_2_1)) ) ).

fof(fact_86_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,F),pi_fun150026276t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_f412050202t_bool(F,X_2)),hAPP_f1277514478l_bool(B_1,X_2))) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo,axiom,
    ! [P,Q,R] : hAPP_f387058535l_bool(hAPP_b1787118453l_bool(P,R),Q) = hAPP_bool_bool(hAPP_f961197973l_bool(hAPP_f1996228283l_bool(cOMBC_1455277858l_bool,P),Q),R) ).

fof(fact_521_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Z_3),hAPP_A1664620203t_bool(hAPP_A210478249t_bool(Ca,Aa),Ba)))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Z_3),hAPP_P1711233733t_bool(hAPP_f1708325453t_bool(produc315582749t_bool,Ca),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))) ) ).

fof(fact_1118_gr0I,axiom,
    ! [N] :
      ( zero_zero_nat != N
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_475_Cons__listrel1E1,axiom,
    ! [X_2,Xs_1,Ys_1,R_2] :
      ( ( ! [Y_9] :
            ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_9)),R_2))
           <= Ys_1 = hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,Y_9),Xs_1) )
       => ~ ! [Zs] :
              ( ~ hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,Xs_1),Zs)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2)))
             <= Ys_1 = hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Zs) ) )
     <= hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_2),Xs_1)),Ys_1)),hAPP_f1662382841t_bool(listre635569361le_alt,R_2))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_045,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(hAPP_f777333846l_bool(B_1_1,B_2_1))
     <= is_fun288122577l_bool(B_2_1) ) ).

fof(fact_515_splitI,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(F,Aa),Ba))
     => hBOOL(hAPP_P1327827171t_bool(hAPP_f1331183759t_bool(produc1102988737t_bool,F),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba))) ) ).

fof(fact_296_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1))
         => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_P1599728724t_bool(F,X_1)),hAPP_P1606644490l_bool(B_1,X_1))) )
     => hBOOL(hAPP_f1508559628l_bool(hAPP_f984565261l_bool(member1329875721t_bool,F),pi_Pro1636653258t_bool(A_1,B_1))) ) ).

fof(fact_344_last_Osimps,axiom,
    ! [X_33,Xs_46] :
      ( ( ( last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_33),Xs_46)) = last_A57386030le_alt(Xs_46)
         <= Xs_46 != nil_Ar126264853le_alt )
        & ( last_A57386030le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_33),Xs_46)) = X_33
         <= nil_Ar126264853le_alt = Xs_46 ) )
     <= is_Arr1861959080le_alt(X_33) ) ).

fof(gsy_c_List_Oset_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    ! [B_1_1] : is_fun1393352280t_bool(set_Ar1565008694le_alt(B_1_1)) ).

fof(fact_1004_lessI,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),hAPP_nat_nat(suc,N))) ).

fof(fact_593_dropWhile__eq__drop,axiom,
    ! [Pa,Xs_1] : hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1))),Xs_1) ).

fof(fact_489_split__conv,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))
    <=> hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F,Aa),Ba)) ) ).

fof(fact_599_list__update__overwrite,axiom,
    ! [Xs_12,I_8,X_14,Y_11] : hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(Xs_12),I_8),X_14)),I_8),Y_11) = hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(Xs_12),I_8),Y_11) ).

fof(fact_222_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f2017347493l_bool(hAPP_f137298509l_bool(member1567747746le_alt,F),pi_Pro2035602019le_alt(A_1,hAPP_f880868799t_bool(cOMBK_1550261278le_alt,B_1))))
     <= ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_P1095651821le_alt(F,X_1)),B_1))
           <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1)) ) ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_137,axiom,
    ! [P,Q,R] : hAPP_f318645548t_bool(hAPP_l1288188215t_bool(P,R),Q) = hAPP_l1747810175t_bool(hAPP_f311173987t_bool(hAPP_f66177535t_bool(cOMBC_672290030t_bool,P),Q),R) ).

fof(gsy_c_List_Olast_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi,axiom,
    ! [B_1_1] : is_Arr43961803e_indi(last_A1892550853e_indi(B_1_1)) ).

fof(fact_512_listrel_OCons,axiom,
    ! [Xs_1,Ys_1,X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_2))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2))) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__prod_Itc__Arrow_,axiom,
    ! [P,Q,R] : hAPP_P606313927t_bool(hAPP_f515126293t_bool(hAPP_f600409331t_bool(cOMBB_433601099le_alt,P),Q),R) = hAPP_bool_bool(P,hAPP_P606313927t_bool(Q,R)) ).

fof(fact_485_split__weak__cong,axiom,
    ! [Ca,P_1,Q_2] :
      ( hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,Ca),Q_2) = hAPP_P1056860425le_alt(hAPP_f1078809103le_alt(produc748227559le_alt,Ca),P_1)
     <= P_1 = Q_2 ) ).

fof(fact_807_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Xs_1),hAPP_l1660244757t_bool(takeWh1309019107t_bool(Pa),Ys_1)) = hAPP_l1660244757t_bool(takeWh1309019107t_bool(Pa),hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Xs_1),Ys_1))
     <= ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),set_fu1865467835t_bool(Xs_1)))
           => hBOOL(hAPP_f965095724l_bool(Pa,X_1)) ) ) ) ).

fof(fact_261_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Arr43961803e_indi(X_1)
         => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1))
           => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A1677245848t_bool(F,X_1)),B_1)) ) )
     => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,F),pi_Arr990697634t_bool(A_1,hAPP_f1659309744l_bool(cOMBK_657557929e_indi,B_1)))) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [P,Q,R] : hAPP_A832564074le_alt(hAPP_n49391885le_alt(P,R),Q) = hAPP_n1875670159le_alt(hAPP_A1043896845le_alt(hAPP_f1956511609le_alt(cOMBC_1697899890le_alt,P),Q),R) ).

fof(fact_1170_less__Suc0,axiom,
    ! [N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),hAPP_nat_nat(suc,zero_zero_nat)))
    <=> N_2 = zero_zero_nat ) ).

fof(fact_1150_diff__0__eq__0,axiom,
    ! [N] : hAPP_nat_nat(minus_minus_nat(zero_zero_nat),N) = zero_zero_nat ).

fof(help_COMBB_1_1_COMBB_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu_,axiom,
    ! [P,Q,R] : hAPP_P606313927t_bool(P,hAPP_A702847159le_alt(Q,R)) = hAPP_A862370221t_bool(hAPP_f1457563459t_bool(hAPP_f724700817t_bool(cOMBB_164218871le_alt,P),Q),R) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order___,axiom,
    ! [B_1_1,B_2_1] : is_fun279392540l_bool(hAPP_n1674354836l_bool(B_1_1,B_2_1)) ).

fof(fact_1036_le__Suc__eq,axiom,
    ! [M_2,N_2] :
      ( ( hAPP_nat_nat(suc,N_2) = M_2
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),N_2)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_2),hAPP_nat_nat(suc,N_2))) ) ).

fof(fact_1018_le__refl,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),N)) ).

fof(fact_729_last__in__set,axiom,
    ! [As] :
      ( As != nil_bool
     => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,last_bool(As)),set_bool(As))) ) ).

fof(fact_824_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
    <=> ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Zs)))
          & hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Ys),hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Zs)) = Xs_1 ) ) ).

fof(fact_629_rev__eq__Cons__iff,axiom,
    ! [Xs_1,Y_2,Ys_1] :
      ( Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Ys_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),nil_Ar126264853le_alt))
    <=> hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1) = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000_120,axiom,
    ! [P,Q,R] : hAPP_A1677245848t_bool(hAPP_A1805174428t_bool(hAPP_f1808153265t_bool(cOMBC_1353880399t_bool,P),Q),R) = hAPP_A568203993t_bool(hAPP_A1625428400t_bool(P,R),Q) ).

fof(fact_1037_Suc__le__mono,axiom,
    ! [N_2,M_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N_2)),hAPP_nat_nat(suc,M_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_2),M_2)) ) ).

fof(fact_1129_diff__le__self,axiom,
    ! [M,N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(minus_minus_nat(M),N)),M)) ).

fof(fact_859_converse__rtranclE,axiom,
    ! [X_2,Z_3,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Z_3)),transi992120749le_alt(R_2)))
     => ( X_2 != Z_3
       => ~ ! [Y_9] :
              ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_9)),R_2))
             => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_9),Z_3)),transi992120749le_alt(R_2))) ) ) ) ).

fof(fact_1113_min__0R,axiom,
    ! [N] : zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,N),zero_zero_nat) ).

fof(fact_907_split__list__last__prop,axiom,
    ! [Pa,Xs_1] :
      ( ? [X_1] :
          ( hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1))) )
     => ? [Ys,X_1,Zs] :
          ( is_Arr1861959080le_alt(X_1)
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1))
          & ! [Xa] :
              ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),set_Ar1565008694le_alt(Zs)))
             => ~ hBOOL(hAPP_A862370221t_bool(Pa,Xa)) )
          & Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs)) ) ) ).

fof(fact_456_UNIV__eq__I,axiom,
    ! [A_1] :
      ( is_fun1393352280t_bool(A_1)
     => ( A_1 = top_to2076077793t_bool
       <= ! [X_1] :
            ( is_Arr1861959080le_alt(X_1)
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) ) ) ) ).

fof(fact_889_split__list,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1)))
     => ? [Ys,Zs] : Xs_1 = hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Ys),hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Zs)) ) ).

fof(fact_184_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1534526009l_bool(hAPP_f2069145881l_bool(member1258861596ol_nat,F),pi_fun770049925ol_nat(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1418366331ol_nat(F,X_1)),hAPP_f1628730575t_bool(B_1,X_1))) )
         <= is_fun760276937t_bool(X_1) ) ) ).

fof(fact_225_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1418366331ol_nat(F,X_1)),B_1)) )
         <= is_fun760276937t_bool(X_1) )
     => hBOOL(hAPP_f1534526009l_bool(hAPP_f2069145881l_bool(member1258861596ol_nat,F),pi_fun770049925ol_nat(A_1,hAPP_f81007726t_bool(cOMBK_2130565512t_bool,B_1)))) ) ).

fof(fact_1187_nat_Oexhaust,axiom,
    ! [Y] :
      ( ~ ! [Nat_1] : Y != hAPP_nat_nat(suc,Nat_1)
     <= zero_zero_nat != Y ) ).

fof(fact_558_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( is_Pro1725146340le_alt(P_1)
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Z_3),hAPP_P324742453l_bool(hAPP_f1502595491l_bool(produc1995698397l_bool,Ca),P_1)))
       <= ! [A_7,B_6] :
            ( ( is_Arr1861959080le_alt(A_7)
              & is_Arr1861959080le_alt(B_6) )
           => ( hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6) = P_1
             => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Z_3),hAPP_A822657487l_bool(hAPP_A1345295975l_bool(Ca,A_7),B_6))) ) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabel_068,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1732944975l_bool(B_1_1,B_2_1)) ).

fof(fact_809_split__list__propE,axiom,
    ! [Pa,Xs_1] :
      ( ? [X_1] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1)))
          & hBOOL(hAPP_A862370221t_bool(Pa,X_1)) )
     => ~ ! [Ys,X_1] :
            ( is_Arr1861959080le_alt(X_1)
           => ( ? [Zs] : Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs))
             => ~ hBOOL(hAPP_A862370221t_bool(Pa,X_1)) ) ) ) ).

fof(fact_861_rtranclE,axiom,
    ! [Aa,Ba,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),transi992120749le_alt(R_2)))
     => ( Aa != Ba
       => ~ ! [Y_9] :
              ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Y_9)),transi992120749le_alt(R_2)))
             => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_9),Ba)),R_2)) ) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__List__Olist_Itc__Arrow____Order___134,axiom,
    ! [P,Q] : P = hAPP_f1865483825t_bool(hAPP_f1622901481t_bool(cOMBK_1786248882t_bool,P),Q) ).

fof(gsy_c_List_Oset_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi,axiom,
    ! [B_1_1] : is_fun288122577l_bool(set_fu1865467835t_bool(B_1_1)) ).

fof(fact_452_UNIV__eq__I,axiom,
    ! [A_1] :
      ( ! [X_1] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A_1))
     => top_top_fun_nat_bool = A_1 ) ).

fof(fact_518_prod__caseI,axiom,
    ! [F1,Aa,Ba] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F1,Aa),Ba))
     => hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F1),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))) ) ).

fof(fact_509_Cons__in__lex,axiom,
    ! [X_2,Xs_1,Y_2,Ys_1,R_2] :
      ( ( is_Arr1861959080le_alt(X_2)
        & is_Arr1861959080le_alt(Y_2) )
     => ( ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),hAPP_f1865483825t_bool(lex_Ar255587961le_alt,R_2)))
            & X_2 = Y_2 )
          | ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_2))
            & hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_1) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_1) ) )
      <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))),hAPP_f1865483825t_bool(lex_Ar255587961le_alt,R_2))) ) ) ).

fof(fact_329_curryI,axiom,
    ! [F,Aa,Ba] :
      ( hBOOL(hAPP_P606313927t_bool(F,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)))
     => hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(produc212588606t_bool(F),Aa),Ba)) ) ).

fof(fact_377_UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),top_to2076077793t_bool)) ).

fof(fact_534_length__rotate1,axiom,
    ! [Xs_26] : hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_l726444215le_alt(rotate1322903650le_alt,Xs_26)) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_26) ).

fof(fact_878_split__list__last,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
     => ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Zs)))
          & Xs_1 = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),Zs)) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabel_150,axiom,
    ! [P,Q] :
      ( P = hAPP_A1112981887l_bool(hAPP_f2069340078l_bool(cOMBK_1389630288e_indi,P),Q)
     <= is_fun158382675l_bool(P) ) ).

fof(fact_796_dropWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l210315413t_bool(dropWh23362493t_bool(Pa),hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Xs_1),Ys_1)) = hAPP_l210315413t_bool(dropWh23362493t_bool(Pa),Ys_1)
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),set_fu335223357t_bool(Xs_1)))
           => hBOOL(hAPP_f312250286l_bool(Pa,X_1)) )
         <= is_fun1097062475t_bool(X_1) ) ) ).

fof(fact_961_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A_1),B_1))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),B_1))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1)) ) ) ).

fof(fact_258_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_b1376601646t_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1)) )
         <= is_bool(X_1) )
     => hBOOL(hAPP_f651410150l_bool(hAPP_f742962061l_bool(member478669795t_bool,F),pi_boo1117000868t_bool(A_1,hAPP_f779223135l_bool(cOMBK_1305974367l_bool,B_1)))) ) ).

fof(fact_656_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l982832318l_bool(distin1691228364t_bool,Xs_1))
     => ( hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),hAPP_l1075146559t_bool(rev_fu1041356345t_bool,hAPP_l1075146559t_bool(takeWh1512678354t_bool(hAPP_f111185985l_bool(hAPP_f1982584345l_bool(cOMBB_310009925t_bool,fNot),hAPP_f863359027l_bool(hAPP_f495827653l_bool(cOMBC_1136104858l_bool,fequal1258273448t_bool),X_2))),Xs_1))) = hAPP_l1075146559t_bool(dropWh1133555834t_bool(hAPP_f111185985l_bool(hAPP_f1982584345l_bool(cOMBB_310009925t_bool,fNot),hAPP_f863359027l_bool(hAPP_f495827653l_bool(cOMBC_1136104858l_bool,fequal1258273448t_bool),X_2))),hAPP_l1075146559t_bool(rev_fu1041356345t_bool,Xs_1))
       <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ) ).

fof(fact_589_hd__dropWhile,axiom,
    ! [Pa,Xs_1] :
      ( ~ hBOOL(hAPP_A862370221t_bool(Pa,hd_Arr805754088le_alt(hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1))))
     <= hAPP_l726444215le_alt(dropWh156852662le_alt(Pa),Xs_1) != nil_Ar126264853le_alt ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_002,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_fun2093718614t_bool(hAPP_A210478249t_bool(B_1_1,B_2_1)) ) ).

fof(fact_394_append__same__eq,axiom,
    ! [Ys_1,Xs_1,Zs_1] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_1),Xs_1) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs_1),Xs_1)
    <=> Ys_1 = Zs_1 ) ).

fof(fact_673_in__set__dropD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(hAPP_l1189022293t_bool(hAPP_n479129736t_bool(drop_bool,N_2),Xs_1))))
     => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ).

fof(fact_398_equal__list__def,axiom,
    ! [X_2,Y_2] :
      ( X_2 = Y_2
    <=> hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,X_2),Y_2)) ) ).

fof(fact_989_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,Aa),top_to1576102282i_bool)) ).

fof(fact_957_xt1_I3_J,axiom,
    ! [C_2,A_3,B_3] :
      ( A_3 = B_3
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_2),A_3))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_2),B_3)) ) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabel,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_fun961089132t_bool(hAPP_b1703662281t_bool(B_1_1,B_2_1)) ) ).

fof(fact_888_split__list,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
     => ? [Ys,Zs] : Xs_1 = hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Ys),hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Zs)) ) ).

fof(fact_83_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1424540178l_bool(hAPP_f452990795l_bool(member1870621557le_alt,F),pi_fun684211550le_alt(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1800079444le_alt(F,X_2)),hAPP_f239852716t_bool(B_1,X_2))) ) ) ).

fof(fact_752_hd__in__set,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hd_Pro1524751780le_alt(Xs_1)),set_Pr604701398le_alt(Xs_1)))
     <= Xs_1 != nil_Pr2088511415le_alt ) ).

fof(help_COMBC_1_1_COMBC_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__,axiom,
    ! [P,Q,R] : hAPP_f965095724l_bool(hAPP_f1577179519l_bool(P,R),Q) = hAPP_f965095724l_bool(hAPP_f1577179519l_bool(hAPP_f1688301673l_bool(cOMBC_2105056416l_bool,P),Q),R) ).

fof(fact_985_top__greatest,axiom,
    ! [Aa] : hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,Aa),top_to522745736l_bool)) ).

fof(fact_624_singleton__rev__conv,axiom,
    ! [X_2,Xs_1] :
      ( hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt)
    <=> hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt) = Xs_1 ) ).

fof(fact_194_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f570668343l_bool(hAPP_f2111526677l_bool(member1881985050ol_nat,F),pi_fun2080023171ol_nat(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f1416261241ol_nat(F,X_1)),hAPP_f1593910865t_bool(B_1,X_1))) )
         <= is_fun1097062475t_bool(X_1) ) ) ).

fof(fact_544_equal__refl,axiom,
    ! [X_23] : hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,X_23),X_23)) ).

fof(fact_503_cond__split__eta,axiom,
    ! [G,F] :
      ( ( G = hAPP_f791205069t_bool(produc2022255647t_bool,F)
       <= ! [X_1,Y_9] :
            ( ( is_Arr1861959080le_alt(Y_9)
              & is_Arr1861959080le_alt(X_1) )
           => ( hBOOL(hAPP_P606313927t_bool(G,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_9)))
            <=> hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F,X_1),Y_9)) ) ) )
     <= is_fun961089132t_bool(G) ) ).

fof(fact_247_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1271753300l_bool(hAPP_f1254328783l_bool(member1986685623t_bool,F),pi_Arr1600668070t_bool(A_1,hAPP_f1739666797l_bool(cOMBK_8746725le_alt,B_1))))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1))
           => hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(F,X_1)),B_1)) ) ) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_000tc__HOL__O,axiom,
    ! [B_1_1,B_2_1] :
      ( ( is_fun1236654035i_bool(B_1_1)
        & is_Arr43961803e_indi(B_2_1) )
     => is_bool(hAPP_A1785763630i_bool(B_1_1,B_2_1)) ) ).

fof(fact_1119_diff__less__mono2,axiom,
    ! [L,M,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),L))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(minus_minus_nat(L),N)),hAPP_nat_nat(minus_minus_nat(L),M))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__Nat__Onat_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_nat_bool(hAPP_n1699378549t_bool(hAPP_f229349961t_bool(cOMBC_nat_nat_bool,P),Q),R) = hAPP_nat_bool(hAPP_n1699378549t_bool(P,R),Q) ).

fof(fact_182_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Pro1725146340le_alt(X_1)
         => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),A_1))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_P1257947515le_alt(F,X_1)),hAPP_P1711233733t_bool(B_1,X_1))) ) )
     => hBOOL(hAPP_f969456697l_bool(hAPP_f1857700889l_bool(member1549237916le_alt,F),pi_Pro610394757le_alt(A_1,B_1))) ) ).

fof(fact_174_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1508559628l_bool(hAPP_f984565261l_bool(member1329875721t_bool,F),pi_Pro1636653258t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_P1599728724t_bool(F,X_2)),hAPP_P1606644490l_bool(B_1,X_2))) ) ) ).

fof(fact_78_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_f1054274129le_alt(F,X_2)),hAPP_f1663053423t_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f68732431l_bool(hAPP_f1556434125l_bool(member1366121996le_alt,F),pi_fun1792636103le_alt(A_1,B_1))) ) ).

fof(fact_400_Cons__eq__appendI,axiom,
    ! [Xs_38,Zs_2,X_28,Xs1,Ys_15] :
      ( ( Xs_38 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs1),Zs_2)
       => hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_28),Xs_38) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_15),Zs_2) )
     <= Ys_15 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_28),Xs1) ) ).

fof(help_fequal_2_1_fequal_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_f592646513l_bool(hAPP_f863359027l_bool(fequal1258273448t_bool,X),Y)) ) ).

fof(fact_523_mem__splitI,axiom,
    ! [Z_3,Ca,Aa,Ba] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Z_3),hAPP_P324742453l_bool(hAPP_f1502595491l_bool(produc1995698397l_bool,Ca),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))))
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Z_3),hAPP_A822657487l_bool(hAPP_A1345295975l_bool(Ca,Aa),Ba))) ) ).

fof(fact_760_dropWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( hAPP_l1660244757t_bool(dropWh1552197947t_bool(Pa),hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Xs_1),Ys_1)) = hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,hAPP_l1660244757t_bool(dropWh1552197947t_bool(Pa),Xs_1)),Ys_1)
       <= ~ hBOOL(hAPP_f965095724l_bool(Pa,X_2)) )
     <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_054,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1837019376l_bool(B_1_1,B_2_1)) ).

fof(fact_210_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f354239713l_bool(hAPP_f720124009l_bool(member1139774916t_bool,F),pi_Pro623007021t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_P1861769507t_bool(F,X_1)),hAPP_P1905961381l_bool(B_1,X_1)))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) ) ) ).

fof(fact_654_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_list_bool_bool(distinct_bool,Xs_1))
     => ( hAPP_l1189022293t_bool(dropWhile_bool(hAPP_f961197973l_bool(hAPP_f1172769267l_bool(cOMBB_bool_bool_bool,fNot),hAPP_b589554111l_bool(hAPP_f1897201897l_bool(cOMBC_bool_bool_bool,fequal_bool),X_2))),hAPP_l1189022293t_bool(rev_bool,Xs_1)) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_2),hAPP_l1189022293t_bool(rev_bool,hAPP_l1189022293t_bool(takeWhile_bool(hAPP_f961197973l_bool(hAPP_f1172769267l_bool(cOMBB_bool_bool_bool,fNot),hAPP_b589554111l_bool(hAPP_f1897201897l_bool(cOMBC_bool_bool_bool,fequal_bool),X_2))),Xs_1)))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1))) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpn_119,axiom,
    ! [P,Q] :
      ( hAPP_b1048178734l_bool(hAPP_f823172443l_bool(cOMBK_1021277149l_bool,P),Q) = P
     <= is_fun288122577l_bool(P) ) ).

fof(fact_159_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_n324757596le_alt(F,X_2)),hAPP_n588788980t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f2115479956l_bool(hAPP_f975710927l_bool(member24871799le_alt,F),pi_nat249006182le_alt(A_1,B_1))) ) ).

fof(fact_801_takeWhile__append2,axiom,
    ! [Ys_1,Pa,Xs_1] :
      ( hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Ys_1))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_A862370221t_bool(Pa,X_1))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),set_Ar1565008694le_alt(Xs_1))) ) ) ) ).

fof(fact_740_in__set__butlast__appendI,axiom,
    ! [Ys_1,X_2,Xs_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(butlas1472553170t_bool,Xs_1))))
        | hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(butlas1472553170t_bool,Ys_1)))) )
     => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(butlas1472553170t_bool,hAPP_l210315413t_bool(hAPP_l583487011t_bool(append381950793t_bool,Xs_1),Ys_1))))) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [B_1_1,B_2_1] : is_Pro1725146340le_alt(hAPP_n324757596le_alt(B_1_1,B_2_1)) ).

fof(fact_1109_diff__add__inverse2,axiom,
    ! [M,N] : M = hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(plus_plus_nat(M),N)),N) ).

fof(fact_435_lexord__append__leftD,axiom,
    ! [X_2,U,V,R_2] :
      ( ( ! [A_7] : ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),A_7)),R_2))
       => hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,U),V)),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2))) )
     <= hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,X_2),U)),hAPP_l1891879573le_alt(hAPP_l1570526551le_alt(append1181015317le_alt,X_2),V))),hAPP_f1662382841t_bool(lexord484930493le_alt,R_2))) ) ).

fof(fact_786_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( is_bool(Y_9)
            & is_bool(Z_4)
            & is_bool(X_1) )
         => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),set_bool(Xs_1)))
           => ( hBOOL(hAPP_f1098788115l_bool(hAPP_P738148045l_bool(member624253174l_bool,hAPP_b2048821609l_bool(hAPP_b1115999851l_bool(produc1246214911l_bool,X_1),Y_9)),R_2))
             => ( hBOOL(hAPP_f1098788115l_bool(hAPP_P738148045l_bool(member624253174l_bool,hAPP_b2048821609l_bool(hAPP_b1115999851l_bool(produc1246214911l_bool,Y_9),Z_4)),R_2))
               => hBOOL(hAPP_f1098788115l_bool(hAPP_P738148045l_bool(member624253174l_bool,hAPP_b2048821609l_bool(hAPP_b1115999851l_bool(produc1246214911l_bool,X_1),Z_4)),R_2)) ) ) ) )
     => ( ( hBOOL(hAPP_f263022001l_bool(hAPP_P1870454025l_bool(member1058364180t_bool,hAPP_l1349316624t_bool(hAPP_l218095399t_bool(produc1067887767t_bool,Ys_1),Zs_1)),hAPP_f1114274611l_bool(lexord_bool,R_2)))
         => hBOOL(hAPP_f263022001l_bool(hAPP_P1870454025l_bool(member1058364180t_bool,hAPP_l1349316624t_bool(hAPP_l218095399t_bool(produc1067887767t_bool,Xs_1),Zs_1)),hAPP_f1114274611l_bool(lexord_bool,R_2))) )
       <= hBOOL(hAPP_f263022001l_bool(hAPP_P1870454025l_bool(member1058364180t_bool,hAPP_l1349316624t_bool(hAPP_l218095399t_bool(produc1067887767t_bool,Xs_1),Ys_1)),hAPP_f1114274611l_bool(lexord_bool,R_2))) ) ) ).

fof(fact_927_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,R_1),S_1))
    <=> hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,hAPP_f961197973l_bool(hAPP_f1996228283l_bool(cOMBC_1455277858l_bool,member_bool),R_1)),hAPP_f961197973l_bool(hAPP_f1996228283l_bool(cOMBC_1455277858l_bool,member_bool),S_1))) ) ).

fof(fact_478_Cons__listrel1E2,axiom,
    ! [Xs_1,Y_2,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))),hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))
     => ( ! [X_1] :
            ( is_Arr1861959080le_alt(X_1)
           => ( ~ hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_2)),R_2))
             <= Xs_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Ys_1) ) )
       => ~ ! [Zs] :
              ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Zs) = Xs_1
             => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Zs),Ys_1)),hAPP_f1865483825t_bool(listre904073838le_alt,R_2))) ) ) ) ).

fof(fact_1104_min__diff,axiom,
    ! [M,I_2,N] : hAPP_nat_nat(minus_minus_nat(hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,M),N)),I_2) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(minus_minus_nat(M),I_2)),hAPP_nat_nat(minus_minus_nat(N),I_2)) ).

fof(help_fequal_1_1_fequal_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpu,axiom,
    ! [X,Y] :
      ( ( is_Pro1725146340le_alt(Y)
        & is_Pro1725146340le_alt(X) )
     => ( Y = X
        | ~ hBOOL(hAPP_P606313927t_bool(hAPP_P1267694911t_bool(fequal454353832le_alt,X),Y)) ) ) ).

fof(fact_164_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_n1965810497t_bool(F,X_2)),hAPP_n2095207769l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1)) )
     <= hBOOL(hAPP_f903371257l_bool(hAPP_f1546082457l_bool(member1494731740t_bool,F),pi_nat1317494091t_bool(A_1,B_1))) ) ).

fof(fact_100_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f16559284l_bool(hAPP_f2142494605l_bool(member1846971697ol_nat,F),pi_fun1597968236ol_nat(A_1,hAPP_f932544453t_bool(cOMBK_1773325549t_bool,B_1))))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f816335862ol_nat(F,X_2)),B_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__List__Olist_Itc__List__Olist_Itc__Arrow____,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1757554033l_bool(B_1_1,B_2_1)) ).

fof(fact_65_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f785974231l_bool(hAPP_f937842381l_bool(member383660628t_bool,F),pi_Arr1936979349t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1))
       <= ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A479848479t_bool(F,X_2)),hAPP_A1112981887l_bool(B_1,X_2))) ) ) ).

fof(fact_750_hd__in__set,axiom,
    ! [Xs_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hd_fun730195372t_bool(Xs_1)),set_fu1384968698t_bool(Xs_1)))
     <= Xs_1 != nil_fu507235289t_bool ) ).

fof(fact_978_in__set__takeD,axiom,
    ! [X_2,N_2,Xs_1] :
      ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1)))
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(hAPP_l210315413t_bool(hAPP_n1200821448t_bool(take_f1428279094t_bool,N_2),Xs_1)))) ) ).

fof(fact_89_neq__Nil__conv,axiom,
    ! [Xs_1] :
      ( Xs_1 != nil_Ar126264853le_alt
    <=> ? [Y_9,Ys] :
          ( Xs_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_9),Ys)
          & is_Arr1861959080le_alt(Y_9) ) ) ).

fof(fact_939_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),B_1)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A_1),B_1)) ) ).

fof(fact_608_length__rev,axiom,
    ! [Xs_10] : hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_10)) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_10) ).

fof(fact_197_Pi__I,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f1693298207e_indi(F,X_1)),hAPP_f1552576127i_bool(B_1,X_1))) )
         <= is_fun1097062475t_bool(X_1) )
     => hBOOL(hAPP_f10461143l_bool(hAPP_f1339774669l_bool(member832622164e_indi,F),pi_fun1002945429e_indi(A_1,B_1))) ) ).

fof(fact_550_splitI2,axiom,
    ! [Ca,P_1] :
      ( ! [A_7,B_6] :
          ( P_1 = hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)
         => hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Ca,A_7),B_6)) )
     => hBOOL(hAPP_P1327827171t_bool(hAPP_f1331183759t_bool(produc1102988737t_bool,Ca),P_1)) ) ).

fof(fact_618_butlast__drop,axiom,
    ! [N_6,Xs_5] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_6),hAPP_l726444215le_alt(butlas1262502241le_alt,Xs_5)) = hAPP_l726444215le_alt(butlas1262502241le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_6),Xs_5)) ).

fof(fact_121_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_P1861769507t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f354239713l_bool(hAPP_f720124009l_bool(member1139774916t_bool,F),pi_Pro623007021t_bool(A_1,hAPP_f952375653l_bool(cOMBK_751995742le_alt,B_1)))) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Nat__Onat_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_list_nat_bool(B_1_1,B_2_1)) ).

fof(fact_774_not__in__set__insert,axiom,
    ! [X_2,Xs_1] :
      ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
     => hAPP_l54953109e_indi(hAPP_A974963564e_indi(insert915800584e_indi,X_2),Xs_1) = hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),Xs_1) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__fun_Itc__143,axiom,
    ! [P,Q] : hAPP_f1593910865t_bool(hAPP_f1362748656t_bool(cOMBK_208474378t_bool,P),Q) = P ).

fof(fact_166_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A1805174428t_bool(F,X_2)),hAPP_A1928120382l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1)) )
     <= hBOOL(hAPP_f1271753300l_bool(hAPP_f1254328783l_bool(member1986685623t_bool,F),pi_Arr1600668070t_bool(A_1,B_1))) ) ).

fof(fact_433_snoc__eq__iff__butlast,axiom,
    ! [Xs_1,X_2,Ys_1] :
      ( ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),nil_Ar126264853le_alt)) = Ys_1
      <=> ( last_A57386030le_alt(Ys_1) = X_2
          & hAPP_l726444215le_alt(butlas1262502241le_alt,Ys_1) = Xs_1
          & Ys_1 != nil_Ar126264853le_alt ) )
     <= is_Arr1861959080le_alt(X_2) ) ).

fof(fact_819_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( Xs_1 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_2),Zs))
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Zs))) )
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),set_nat(Xs_1))) ) ).

fof(fact_585_listrelp_OCons,axiom,
    ! [Xs_1,Ys_1,R_2,X_2,Y_2] :
      ( ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(listre53232751le_alt(R_2),Xs_1),Ys_1))
       => hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(listre53232751le_alt(R_2),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))) )
     <= hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(R_2,X_2),Y_2)) ) ).

fof(gsy_v_P_H____,axiom,
    is_fun760276937t_bool(p_1) ).

fof(fact_312_insert__Nil,axiom,
    ! [X_36] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_36),nil_Ar126264853le_alt) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_36),nil_Ar126264853le_alt) ).

fof(fact_421_maps__simps_I1_J,axiom,
    ! [F,X_2,Xs_1] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(F,X_2)),hAPP_l726444215le_alt(maps_A461338881le_alt(F),Xs_1)) = hAPP_l726444215le_alt(maps_A461338881le_alt(F),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)) ).

fof(fact_816_in__set__conv__decomp__first,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( hAPP_l1075146559t_bool(hAPP_l265951104t_bool(append923785710t_bool,Ys),hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Zs)) = Xs_1
          & ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Ys))) )
    <=> hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ).

fof(gsy_c_HOL_Oundefined_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu_,axiom,
    is_Pro1725146340le_alt(undefi95778005le_alt(product_prod(arrow_107136085le_alt,arrow_107136085le_alt))) ).

fof(fact_606_Nil__is__rev__conv,axiom,
    ! [Xs_1] :
      ( Xs_1 = nil_Ar126264853le_alt
    <=> nil_Ar126264853le_alt = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_1) ) ).

fof(fact_921_Pi__anti__mono,axiom,
    ! [B_1,A_6,A_1] :
      ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,pi_Arr990697634t_bool(A_1,B_1)),pi_Arr990697634t_bool(A_6,B_1)))
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,A_6),A_1)) ) ).

fof(fact_239_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_fun1097062475t_bool(X_1)
         => ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_1),A_1))
           => hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f312250286l_bool(F,X_1)),B_1)) ) )
     => hBOOL(hAPP_f859154022l_bool(hAPP_f976491405l_bool(member2061588323l_bool,F),pi_fun52649508l_bool(A_1,hAPP_f214899148l_bool(cOMBK_2117707615t_bool,B_1)))) ) ).

fof(fact_645_takeWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_list_bool_bool(distinct_bool,Xs_1))
     => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),set_bool(Xs_1)))
       => hAPP_l1189022293t_bool(rev_bool,hAPP_l1189022293t_bool(tl_bool,hAPP_l1189022293t_bool(dropWhile_bool(hAPP_f961197973l_bool(hAPP_f1172769267l_bool(cOMBB_bool_bool_bool,fNot),hAPP_b589554111l_bool(hAPP_f1897201897l_bool(cOMBC_bool_bool_bool,fequal_bool),X_2))),Xs_1))) = hAPP_l1189022293t_bool(takeWhile_bool(hAPP_f961197973l_bool(hAPP_f1172769267l_bool(cOMBB_bool_bool_bool,fNot),hAPP_b589554111l_bool(hAPP_f1897201897l_bool(cOMBC_bool_bool_bool,fequal_bool),X_2))),hAPP_l1189022293t_bool(rev_bool,Xs_1)) ) ) ).

fof(help_fequal_1_1_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_T,axiom,
    ! [X,Y] :
      ( ( X = Y
        | ~ hBOOL(hAPP_A1785763630i_bool(hAPP_A313542399i_bool(fequal1196706959e_indi,X),Y)) )
     <= ( is_Arr43961803e_indi(Y)
        & is_Arr43961803e_indi(X) ) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabell,axiom,
    ! [B_1_1,B_2_1] : is_fun961089132t_bool(hAPP_n588788980t_bool(B_1_1,B_2_1)) ).

fof(fact_16_Pair__eq,axiom,
    ! [Aa,Ba,A_8,B_7] :
      ( ( is_Arr1861959080le_alt(A_8)
        & is_Arr1861959080le_alt(B_7)
        & is_Arr1861959080le_alt(Ba)
        & is_Arr1861959080le_alt(Aa) )
     => ( hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_8),B_7) = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)
      <=> ( Aa = A_8
          & Ba = B_7 ) ) ) ).

fof(fact_690_in__set__butlastD,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
     <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(hAPP_l1493873365le_alt(butlas1456493703le_alt,Xs_1)))) ) ).

fof(fact_1115_min__0L,axiom,
    ! [N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,zero_zero_nat),N) = zero_zero_nat ).

fof(fact_253_funcsetI,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f817604743l_bool(hAPP_f1345320373l_bool(member357566570t_bool,F),pi_boo538701011t_bool(A_1,hAPP_f256804927l_bool(cOMBK_69806648l_bool,B_1))))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_b1703662281t_bool(F,X_1)),B_1))
           <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),A_1)) )
         <= is_bool(X_1) ) ) ).

fof(fact_385_top__apply,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_P606313927t_bool(top_to565915683t_bool,X_2))
    <=> hBOOL(top_top_bool) ) ).

fof(fact_857_converse__rtrancl__induct,axiom,
    ! [Pa,Aa,Ba,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa),Ba)),transi992120749le_alt(R_2)))
     => ( ( hBOOL(hAPP_l1386638586t_bool(Pa,Aa))
         <= ! [Y_9,Z_4] :
              ( ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Z_4),Ba)),transi992120749le_alt(R_2)))
               => ( hBOOL(hAPP_l1386638586t_bool(Pa,Y_9))
                 <= hBOOL(hAPP_l1386638586t_bool(Pa,Z_4)) ) )
             <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Y_9),Z_4)),R_2)) ) )
       <= hBOOL(hAPP_l1386638586t_bool(Pa,Ba)) ) ) ).

fof(fact_713_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l982832318l_bool(distin1691228364t_bool,hAPP_l1075146559t_bool(hAPP_f613335309t_bool(cons_f1416466313t_bool,X_2),Xs_1)))
    <=> ( hBOOL(hAPP_l982832318l_bool(distin1691228364t_bool,Xs_1))
        & ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),set_fu1384968698t_bool(Xs_1))) ) ) ).

fof(fact_638_rtrancl_Ortrancl__into__rtrancl,axiom,
    ! [Ca,Aa,Ba,R_2] :
      ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Ba),Ca)),R_2))
       => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ca)),transi1256616594le_alt(R_2))) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),transi1256616594le_alt(R_2))) ) ).

fof(fact_1061_add__lessD1,axiom,
    ! [I_2,J,K_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(plus_plus_nat(I_2),J)),K_2))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_2),K_2)) ) ).

fof(fact_945_set__mp,axiom,
    ! [X_2,A_1,B_1] :
      ( hBOOL(hAPP_f1749234559l_bool(hAPP_f1581553471l_bool(ord_le2085964885l_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),B_1)) ) ) ).

fof(fact_369_iso__tuple__UNIV__I,axiom,
    ! [X_2] : hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_2),top_to565915683t_bool)) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__fun_Itc_006,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_fun288122577l_bool(hAPP_A1928120382l_bool(B_1_1,B_2_1)) ) ).

fof(fact_283_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f1276380911l_bool(hAPP_f1868812933l_bool(member26406738le_alt,F),pi_Arr55294401le_alt(A_1,B_1)))
     <= ! [X_1] :
          ( is_Arr1861959080le_alt(X_1)
         => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(F,X_1)),hAPP_A568203993t_bool(B_1,X_1)))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A_1)) ) ) ) ).

fof(gsy_c_HOL_Oundefined_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    is_Arr1861959080le_alt(undefi462180727le_alt(arrow_107136085le_alt)) ).

fof(fact_1092_less__iff__Suc__add,axiom,
    ! [M_2,N_2] :
      ( ? [K_1] : N_2 = hAPP_nat_nat(suc,hAPP_nat_nat(plus_plus_nat(M_2),K_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2)) ) ).

fof(fact_982_distinct__take,axiom,
    ! [I_3,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,I_3),Xs))) ) ).

fof(fact_101_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f1619707799le_alt(F,X_2)),B_1)) )
     <= hBOOL(hAPP_f1732944975l_bool(hAPP_f671616325l_bool(member1636995890le_alt,F),pi_fun380945313le_alt(A_1,hAPP_f1622901481t_bool(cOMBK_1786248882t_bool,B_1)))) ) ).

fof(fact_621_rtrancl__listrel1__ConsI2,axiom,
    ! [Xs_1,Ys_1,X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),transi1256616594le_alt(R_2)))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2))))
       <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),Ys_1)),transi992120749le_alt(hAPP_f1865483825t_bool(listre904073838le_alt,R_2)))) ) ) ).

fof(fact_20_in__rel__def,axiom,
    ! [R_1,X_2,Y_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_2),Y_2)),R_1))
    <=> hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(in_rel1305177154le_alt(R_1),X_2),Y_2)) ) ).

fof(fact_634_r__into__rtrancl,axiom,
    ! [P_1,R_2] :
      ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,P_1),R_2))
     => hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,P_1),transi1256616594le_alt(R_2))) ) ).

fof(fact_1062_less__add__eq__less,axiom,
    ! [M,N,K_2,L] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
       <= hAPP_nat_nat(plus_plus_nat(M),L) = hAPP_nat_nat(plus_plus_nat(K_2),N) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K_2),L)) ) ).

fof(fact_965_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1))
       => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),B_1)) )
     <= hBOOL(hAPP_f250445784l_bool(hAPP_f43523585l_bool(ord_le2009287770l_bool,A_1),B_1)) ) ).

fof(fact_546_listrel__Cons2,axiom,
    ! [Xs_1,Y_2,Ys_1,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys_1))),hAPP_f1865483825t_bool(listre760726333le_alt,R_2)))
     => ~ ! [X_1,Xs_17] :
            ( ( Xs_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs_17)
             => ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,X_1),Y_2)),R_2))
               => ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Xs_17),Ys_1)),hAPP_f1865483825t_bool(listre760726333le_alt,R_2))) ) )
           <= is_Arr1861959080le_alt(X_1) ) ) ).

fof(fact_789_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ( hBOOL(hAPP_f1111021425l_bool(hAPP_P215277193l_bool(member307575252t_bool,hAPP_l1347264831t_bool(hAPP_l1242990405t_bool(produc966439767t_bool,Xs_1),Ys_1)),hAPP_f2045380501l_bool(lexord2016448367t_bool,R_2)))
       => ( hBOOL(hAPP_f1111021425l_bool(hAPP_P215277193l_bool(member307575252t_bool,hAPP_l1347264831t_bool(hAPP_l1242990405t_bool(produc966439767t_bool,Ys_1),Zs_1)),hAPP_f2045380501l_bool(lexord2016448367t_bool,R_2)))
         => hBOOL(hAPP_f1111021425l_bool(hAPP_P215277193l_bool(member307575252t_bool,hAPP_l1347264831t_bool(hAPP_l1242990405t_bool(produc966439767t_bool,Xs_1),Zs_1)),hAPP_f2045380501l_bool(lexord2016448367t_bool,R_2))) ) )
     <= ! [X_1,Y_9,Z_4] :
          ( ( is_fun760276937t_bool(Y_9)
            & is_fun760276937t_bool(Z_4)
            & is_fun760276937t_bool(X_1) )
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),set_fu1865467835t_bool(Xs_1)))
           => ( hBOOL(hAPP_f1806001137l_bool(hAPP_P1971325577l_bool(member739461844t_bool,hAPP_f1886133174t_bool(hAPP_f541777673t_bool(produc586224093t_bool,X_1),Y_9)),R_2))
             => ( hBOOL(hAPP_f1806001137l_bool(hAPP_P1971325577l_bool(member739461844t_bool,hAPP_f1886133174t_bool(hAPP_f541777673t_bool(produc586224093t_bool,Y_9),Z_4)),R_2))
               => hBOOL(hAPP_f1806001137l_bool(hAPP_P1971325577l_bool(member739461844t_bool,hAPP_f1886133174t_bool(hAPP_f541777673t_bool(produc586224093t_bool,X_1),Z_4)),R_2)) ) ) ) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___131,axiom,
    ! [P,Q,R] : hAPP_f1457563459t_bool(P,hAPP_A1505516597le_alt(Q,R)) = hAPP_A1664620203t_bool(hAPP_f231379647t_bool(hAPP_f1460305297t_bool(cOMBB_2048157563le_alt,P),Q),R) ).

fof(fact_314_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
    <=> hBOOL(hAPP_nat_bool(A_1,X_2)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabell,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1424540178l_bool(B_1_1,B_2_1)) ).

fof(fact_960_in__mono,axiom,
    ! [X_2,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),A_1))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_2),B_1)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A_1),B_1)) ) ).

fof(fact_387_top__apply,axiom,
    ! [X_2] :
      ( hBOOL(hAPP_A862370221t_bool(top_to2076077793t_bool,X_2))
    <=> hBOOL(top_top_bool) ) ).

fof(fact_852_takeWhile__cong,axiom,
    ! [Q_1,Pa,L_1,K] :
      ( L_1 = K
     => ( hAPP_l1075146559t_bool(takeWh1512678354t_bool(Q_1),K) = hAPP_l1075146559t_bool(takeWh1512678354t_bool(Pa),L_1)
       <= ! [X_1] :
            ( ( ( hBOOL(hAPP_f592646513l_bool(Q_1,X_1))
              <=> hBOOL(hAPP_f592646513l_bool(Pa,X_1)) )
             <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),set_fu1384968698t_bool(L_1))) )
           <= is_fun961089132t_bool(X_1) ) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___079,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun961089132t_bool(B_2_1)
     => is_fun1393352280t_bool(hAPP_f1663053423t_bool(B_1_1,B_2_1)) ) ).

fof(fact_858_converse__rtrancl__induct,axiom,
    ! [Pa,Aa,Ba,R_2] :
      ( ( hBOOL(hAPP_A862370221t_bool(Pa,Ba))
       => ( ! [Y_9,Z_4] :
              ( ( is_Arr1861959080le_alt(Y_9)
                & is_Arr1861959080le_alt(Z_4) )
             => ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Z_4),Ba)),transi1256616594le_alt(R_2)))
                 => ( hBOOL(hAPP_A862370221t_bool(Pa,Y_9))
                   <= hBOOL(hAPP_A862370221t_bool(Pa,Z_4)) ) )
               <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Y_9),Z_4)),R_2)) ) )
         => hBOOL(hAPP_A862370221t_bool(Pa,Aa)) ) )
     <= hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba)),transi1256616594le_alt(R_2))) ) ).

fof(fact_652_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l54057324t_bool(distin1553582624le_alt,Xs_1))
     => ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
       => hAPP_l1493873365le_alt(dropWh1604595954le_alt(hAPP_f1642286869t_bool(hAPP_f62793075t_bool(cOMBB_1604919143le_alt,fNot),hAPP_P163071551t_bool(hAPP_f2139078121t_bool(cOMBC_1470522126t_bool,fequal673514820le_alt),X_2))),hAPP_l1493873365le_alt(rev_Pr464210035le_alt,Xs_1)) = hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),hAPP_l1493873365le_alt(rev_Pr464210035le_alt,hAPP_l1493873365le_alt(takeWh416411546le_alt(hAPP_f1642286869t_bool(hAPP_f62793075t_bool(cOMBB_1604919143le_alt,fNot),hAPP_P163071551t_bool(hAPP_f2139078121t_bool(cOMBC_1470522126t_bool,fequal673514820le_alt),X_2))),Xs_1))) ) ) ).

fof(fact_172_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
       => hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_b1703662281t_bool(F,X_2)),hAPP_b1812770943l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f817604743l_bool(hAPP_f1345320373l_bool(member357566570t_bool,F),pi_boo538701011t_bool(A_1,B_1))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__038,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(B_2_1)
     => is_fun279392540l_bool(hAPP_f1277514478l_bool(B_1_1,B_2_1)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu___110,axiom,
    ! [P,Q] :
      ( P = hAPP_P1875867302i_bool(hAPP_f1348208725i_bool(cOMBK_1915602921le_alt,P),Q)
     <= is_fun1236654035i_bool(P) ) ).

fof(fact_396_append__eq__append__conv2,axiom,
    ! [Xs_1,Ys_1,Zs_1,Ts] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs_1),Ts) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)
    <=> ? [Us] :
          ( ( Ts = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us),Ys_1)
            & Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs_1),Us) )
          | ( Ys_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us),Ts)
            & hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Us) = Zs_1 ) ) ) ).

fof(fact_605_rev_Osimps_I1_J,axiom,
    nil_Ar126264853le_alt = hAPP_l726444215le_alt(rev_Ar2093961333le_alt,nil_Ar126264853le_alt) ).

fof(fact_41_dictator__def,axiom,
    ! [Fa,I_1] :
      ( hBOOL(hAPP_A1785763630i_bool(hAPP_f1552576127i_bool(arrow_610963188ctator,Fa),I_1))
    <=> ! [X_1] :
          ( is_fun760276937t_bool(X_1)
         => ( hAPP_f412050202t_bool(Fa,X_1) = hAPP_A1677245848t_bool(X_1,I_1)
           <= hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_1),arrow_1721807329e_Prof)) ) ) ) ).

fof(fact_719_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( ( ~ hBOOL(hAPP_A1785763630i_bool(Pa,X_2))
       => hAPP_l54953109e_indi(takeWh273131493e_indi(Pa),Xs_1) = hAPP_l54953109e_indi(takeWh273131493e_indi(Pa),hAPP_l54953109e_indi(hAPP_l367315107e_indi(append153154761e_indi,Xs_1),Ys_1)) )
     <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1))) ) ).

fof(fact_898_converse__rtrancl__induct2,axiom,
    ! [Pa,Ax,Ay,Bx,By,R_2] :
      ( ( ( ! [A_7,B_6,Aa_1,Ba_1] :
              ( ( ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,A_7),B_6))
                 <= hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Aa_1),Ba_1)) )
               <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa_1),Ba_1)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Bx),By))),transi54034710le_alt(R_2))) )
             <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,A_7),B_6)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Aa_1),Ba_1))),R_2)) )
         => hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Ax),Ay)) )
       <= hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(Pa,Bx),By)) )
     <= hBOOL(hAPP_f536389215l_bool(hAPP_P1580093797l_bool(member2066943042le_alt,hAPP_P47603675le_alt(hAPP_P2141504567le_alt(produc1326092875le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Ax),Ay)),hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,Bx),By))),transi54034710le_alt(R_2))) ) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__fun_Itc__prod_Itc__Arrow____Order____Mir,axiom,
    is_fun961089132t_bool(top_to565915683t_bool) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O_043,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f1252760917l_bool(B_1_1,B_2_1)) ).

fof(fact_74_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1725204053l_bool(hAPP_f666018637l_bool(member905797074e_indi,F),pi_fun753830419e_indi(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,hAPP_f836059805e_indi(F,X_2)),hAPP_f1948454017i_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1)) ) ) ).

fof(fact_1033_not__less__eq,axiom,
    ! [M_2,N_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_2),hAPP_nat_nat(suc,M_2)))
    <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_2),N_2)) ) ).

fof(gsy_c_List_Oset_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    ! [B_1_1] : is_fun961089132t_bool(set_Pr604701398le_alt(B_1_1)) ).

fof(fact_61_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1))
       <= ~ hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_b1703662281t_bool(F,X_2)),hAPP_b1812770943l_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f817604743l_bool(hAPP_f1345320373l_bool(member357566570t_bool,F),pi_boo538701011t_bool(A_1,B_1))) ) ).

fof(fact_912_subsetD,axiom,
    ! [Ca,A_1,B_1] :
      ( hBOOL(hAPP_f1599966040l_bool(hAPP_f384959233l_bool(ord_le249613274i_bool,A_1),B_1))
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Ca),A_1))
       => hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,Ca),B_1)) ) ) ).

fof(fact_1185_not0__implies__Suc,axiom,
    ! [N] :
      ( N != zero_zero_nat
     => ? [M_1] : hAPP_nat_nat(suc,M_1) = N ) ).

fof(fact_598_list__update__swap,axiom,
    ! [Xs_13,X_16,X_15,I_10,I_9] :
      ( I_9 != I_10
     => hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(Xs_13),I_10),X_16)),I_9),X_15) = hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(hAPP_A832564074le_alt(hAPP_n49391885le_alt(list_u1050032253le_alt(Xs_13),I_9),X_15)),I_10),X_16) ) ).

fof(fact_1144_Zero__neq__Suc,axiom,
    ! [M] : zero_zero_nat != hAPP_nat_nat(suc,M) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__030,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun1236654035i_bool(B_2_1)
     => is_fun1236654035i_bool(hAPP_f580451669i_bool(B_1_1,B_2_1)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell_164,axiom,
    ! [P,Q,R] : hAPP_l1701840224le_alt(hAPP_f1291559232le_alt(hAPP_f749699165le_alt(cOMBB_1450165017le_alt,P),Q),R) = hAPP_f1564521144le_alt(P,hAPP_l1406283231le_alt(Q,R)) ).

fof(fact_1171_gr0__conv__Suc,axiom,
    ! [N_2] :
      ( ? [M_1] : N_2 = hAPP_nat_nat(suc,M_1)
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_2)) ) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( is_bool(P)
     => ( fFalse = P
        | P = fTrue ) ) ).

fof(fact_788_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_1),set_fu1384968698t_bool(Xs_1)))
           => ( hBOOL(hAPP_f336430449l_bool(hAPP_P80514697l_bool(member636962260t_bool,hAPP_f1065005691t_bool(hAPP_f1544433597t_bool(produc32696407t_bool,X_1),Y_9)),R_2))
             => ( hBOOL(hAPP_f336430449l_bool(hAPP_P80514697l_bool(member636962260t_bool,hAPP_f1065005691t_bool(hAPP_f1544433597t_bool(produc32696407t_bool,Y_9),Z_4)),R_2))
               => hBOOL(hAPP_f336430449l_bool(hAPP_P80514697l_bool(member636962260t_bool,hAPP_f1065005691t_bool(hAPP_f1544433597t_bool(produc32696407t_bool,X_1),Z_4)),R_2)) ) ) )
         <= ( is_fun961089132t_bool(Z_4)
            & is_fun961089132t_bool(Y_9)
            & is_fun961089132t_bool(X_1) ) )
     => ( hBOOL(hAPP_f2076022549l_bool(hAPP_P1136391889l_bool(member1457870584t_bool,hAPP_l869099372t_bool(hAPP_l1146224941t_bool(produc1867223169t_bool,Xs_1),Ys_1)),hAPP_f1802593209l_bool(lexord485014854t_bool,R_2)))
       => ( hBOOL(hAPP_f2076022549l_bool(hAPP_P1136391889l_bool(member1457870584t_bool,hAPP_l869099372t_bool(hAPP_l1146224941t_bool(produc1867223169t_bool,Ys_1),Zs_1)),hAPP_f1802593209l_bool(lexord485014854t_bool,R_2)))
         => hBOOL(hAPP_f2076022549l_bool(hAPP_P1136391889l_bool(member1457870584t_bool,hAPP_l869099372t_bool(hAPP_l1146224941t_bool(produc1867223169t_bool,Xs_1),Zs_1)),hAPP_f1802593209l_bool(lexord485014854t_bool,R_2))) ) ) ) ).

fof(fact_573_listrelp__listrel__eq,axiom,
    ! [R_2,X_1,Xa] :
      ( hBOOL(hAPP_f1757554033l_bool(hAPP_P753566857l_bool(member1208501972le_alt,hAPP_l190821901le_alt(hAPP_l1508829665le_alt(produc26555607le_alt,X_1),Xa)),hAPP_f1662382841t_bool(listre638180162le_alt,R_2)))
    <=> hBOOL(hAPP_l377001987t_bool(hAPP_l1437188439t_bool(listre831694736le_alt(hAPP_f311173987t_bool(hAPP_f66177535t_bool(cOMBC_672290030t_bool,hAPP_f1152779391t_bool(hAPP_f991870303t_bool(cOMBB_353715312le_alt,cOMBC_1740746827l_bool),hAPP_f370419053l_bool(hAPP_f1953650287l_bool(cOMBB_283473102le_alt,hAPP_f1056253543l_bool(cOMBB_1058319106le_alt,member1020705648le_alt)),produc237774329le_alt))),R_2)),X_1),Xa)) ) ).

fof(fact_64_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f196630486l_bool(hAPP_f1212866771l_bool(member392258873t_bool,F),pi_Arr44017448t_bool(A_1,B_1)))
     => ( ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A1159885342t_bool(F,X_2)),hAPP_A366518464l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1)) ) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oindi_Mtc__034,axiom,
    ! [B_1_1,B_2_1] :
      ( is_fun760276937t_bool(B_2_1)
     => is_fun1393352280t_bool(hAPP_f228695594t_bool(B_1_1,B_2_1)) ) ).

fof(fact_592_hd__rev,axiom,
    ! [Xs_15] :
      ( nil_Ar126264853le_alt != Xs_15
     => hd_Arr805754088le_alt(hAPP_l726444215le_alt(rev_Ar2093961333le_alt,Xs_15)) = last_A57386030le_alt(Xs_15) ) ).

fof(fact_317_mem__def,axiom,
    ! [X_2,A_1] :
      ( hBOOL(hAPP_A1785763630i_bool(A_1,X_2))
    <=> hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),A_1)) ) ).

fof(fact_412_append__eq__Cons__conv,axiom,
    ! [Ys_1,Zs_1,X_2,Xs_1] :
      ( ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1) = Zs_1
          & Ys_1 = nil_Ar126264853le_alt )
        | ? [Ys_12] :
            ( Xs_1 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_12),Zs_1)
            & Ys_1 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Ys_12) ) )
    <=> hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_2),Xs_1) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_1),Zs_1) ) ).

fof(fact_145_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),A_1))
       => hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_f40547922le_alt(F,X_2)),hAPP_f996881846t_bool(B_1,X_2))) )
     <= hBOOL(hAPP_f1976794890l_bool(hAPP_f1603005581l_bool(member1603119111le_alt,F),pi_fun553016520le_alt(A_1,B_1))) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__093,hypothesis,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(B_2_1)
     => is_fun279392540l_bool(hAPP_P229966473l_bool(B_1_1,B_2_1)) ) ).

fof(fact_1082_add__leE,axiom,
    ! [M,K_2,N] :
      ( ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),N))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(plus_plus_nat(M),K_2)),N)) ) ).

fof(fact_680_set__takeWhileD,axiom,
    ! [X_2,Pa,Xs_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(hAPP_l726444215le_alt(takeWh536362254le_alt(Pa),Xs_1))))
     => ( hBOOL(hAPP_A862370221t_bool(Pa,X_2))
        & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),set_Ar1565008694le_alt(Xs_1))) ) ) ).

fof(fact_171_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f1525366679l_bool(hAPP_f586020557l_bool(member1055039380t_bool,F),pi_Arr1306565967t_bool(A_1,B_1)))
     => ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_A568203993t_bool(F,X_2)),hAPP_A187815023l_bool(B_1,X_2)))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_2),A_1)) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tp_106,axiom,
    ! [P,Q] :
      ( P = hAPP_b1703662281t_bool(hAPP_f340261009t_bool(cOMBK_545135096l_bool,P),Q)
     <= is_fun961089132t_bool(P) ) ).

fof(fact_337_List_Onull__def,axiom,
    ! [Xs_1] :
      ( Xs_1 = nil_Ar126264853le_alt
    <=> hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,Xs_1)) ) ).

fof(fact_664_set__ConsD,axiom,
    ! [Y_2,X_2,Xs_1] :
      ( ( ( hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Y_2),set_fu335223357t_bool(Xs_1)))
          | X_2 = Y_2 )
       <= hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,Y_2),set_fu335223357t_bool(hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Xs_1)))) )
     <= ( is_fun1097062475t_bool(X_2)
        & is_fun1097062475t_bool(Y_2) ) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__prod_It,axiom,
    ! [P,Q] :
      ( hAPP_P324742453l_bool(hAPP_f2068374643l_bool(cOMBK_246631416le_alt,P),Q) = P
     <= is_fun_bool_bool(P) ) ).

fof(fact_149_Pi__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_f816335862ol_nat(F,X_2)),hAPP_f856106132t_bool(B_1,X_2)))
       <= hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f16559284l_bool(hAPP_f2142494605l_bool(member1846971697ol_nat,F),pi_fun1597968236ol_nat(A_1,B_1))) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabe_133,axiom,
    ! [P,Q] :
      ( hAPP_P1905961381l_bool(hAPP_f952375653l_bool(cOMBK_751995742le_alt,P),Q) = P
     <= is_fun279392540l_bool(P) ) ).

fof(gsy_c_hAPP_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__091,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Pro1725146340le_alt(B_2_1)
     => is_fun1236654035i_bool(hAPP_P1875867302i_bool(B_1_1,B_2_1)) ) ).

fof(fact_821_in__set__conv__decomp__last,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] :
          ( ~ hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Zs)))
          & Xs_1 = hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Ys),hAPP_l1493873365le_alt(hAPP_P734992695le_alt(cons_P893004579le_alt,X_2),Zs)) )
    <=> hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1))) ) ).

fof(fact_556_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Z_3),hAPP_P1711233733t_bool(hAPP_f1708325453t_bool(produc315582749t_bool,Ca),P_1)))
       <= ! [A_7,B_6] :
            ( ( is_Arr1861959080le_alt(B_6)
              & is_Arr1861959080le_alt(A_7) )
           => ( P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)
             => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Z_3),hAPP_A1664620203t_bool(hAPP_A210478249t_bool(Ca,A_7),B_6))) ) ) )
     <= is_Pro1725146340le_alt(P_1) ) ).

fof(fact_487_prod_Osimps_I2_J,axiom,
    ! [F1,Aa,Ba] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(F1,Aa),Ba))
    <=> hBOOL(hAPP_P606313927t_bool(hAPP_f791205069t_bool(produc2022255647t_bool,F1),hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,Aa),Ba))) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__fun_Itc__fun_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f899439636l_bool(B_1_1,B_2_1)) ).

fof(fact_998_top__le,axiom,
    ! [Aa] :
      ( is_fun288122577l_bool(Aa)
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f1146952189l_bool(ord_le1069525464l_bool,top_to522745736l_bool),Aa))
       => Aa = top_to522745736l_bool ) ) ).

fof(help_COMBS_1_1_COMBS_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_157,axiom,
    ! [P,Q,R] : hAPP_l1869074853le_alt(hAPP_f746471349le_alt(hAPP_f628327744le_alt(cOMBS_1294827559le_alt,P),Q),R) = hAPP_f1514103381le_alt(hAPP_l1701840224le_alt(P,R),hAPP_l1869074853le_alt(Q,R)) ).

fof(gsy_c_Set_OCollect_000tc__fun_Itc__prod_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [B_1_1] :
      ( is_fun279392540l_bool(B_1_1)
     => is_fun279392540l_bool(collec1553055422t_bool(B_1_1)) ) ).

fof(gsy_v_a____,hypothesis,
    is_Arr1861959080le_alt(a) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell,axiom,
    ! [P,Q] : P = hAPP_A408086601le_alt(hAPP_f1608056749le_alt(cOMBK_1696648346le_alt,P),Q) ).

fof(fact_495_split__curry,axiom,
    ! [F] :
      ( F = hAPP_f791205069t_bool(produc2022255647t_bool,produc212588606t_bool(F))
     <= is_fun961089132t_bool(F) ) ).

fof(fact_541_lexord__lex,axiom,
    ! [X_2,Y_2,R_2] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),hAPP_f1865483825t_bool(lex_Ar255587961le_alt,R_2)))
    <=> ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,hAPP_l391088160le_alt(hAPP_l1869074853le_alt(produc237774329le_alt,X_2),Y_2)),hAPP_f1865483825t_bool(lexord1945649794le_alt,R_2)))
        & hAPP_l1872264749lt_nat(size_s1873794948le_alt,X_2) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Y_2) ) ) ).

fof(fact_712_distinct_Osimps_I2_J,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l2060223415l_bool(distin1991771627t_bool,hAPP_l210315413t_bool(hAPP_f1812326636t_bool(cons_f14678382t_bool,X_2),Xs_1)))
    <=> ( hBOOL(hAPP_l2060223415l_bool(distin1991771627t_bool,Xs_1))
        & ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),set_fu335223357t_bool(Xs_1))) ) ) ).

fof(fact_298_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f785974231l_bool(hAPP_f937842381l_bool(member383660628t_bool,F),pi_Arr1936979349t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1))
           => hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,hAPP_A479848479t_bool(F,X_1)),hAPP_A1112981887l_bool(B_1,X_1))) )
         <= is_Arr43961803e_indi(X_1) ) ) ).

fof(gsy_c_List_Oset_000tc__HOL__Obool,axiom,
    ! [B_1_1] : is_fun_bool_bool(set_bool(B_1_1)) ).

fof(fact_718_takeWhile__append1,axiom,
    ! [Ys_1,Pa,X_2,Xs_1] :
      ( hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_2),set_Pr1404309362le_alt(Xs_1)))
     => ( ~ hBOOL(hAPP_P1327827171t_bool(Pa,X_2))
       => hAPP_l1493873365le_alt(takeWh416411546le_alt(Pa),Xs_1) = hAPP_l1493873365le_alt(takeWh416411546le_alt(Pa),hAPP_l1493873365le_alt(hAPP_l1686876398le_alt(append1415857790le_alt,Xs_1),Ys_1)) ) ) ).

fof(gsy_c_Set_OCollect_000tc__prod_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__O,axiom,
    ! [B_1_1] :
      ( is_fun961089132t_bool(collec2096990994le_alt(B_1_1))
     <= is_fun961089132t_bool(B_1_1) ) ).

fof(fact_554_mem__splitI2,axiom,
    ! [Z_3,Ca,P_1] :
      ( is_Pro1725146340le_alt(P_1)
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_3),hAPP_P2136891882t_bool(hAPP_f1984771213t_bool(produc1527919682t_bool,Ca),P_1)))
       <= ! [A_7,B_6] :
            ( ( is_Arr1861959080le_alt(B_6)
              & is_Arr1861959080le_alt(A_7) )
           => ( P_1 = hAPP_A702847159le_alt(hAPP_A1505516597le_alt(produc1400112471le_alt,A_7),B_6)
             => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Z_3),hAPP_A1862272720t_bool(hAPP_A1470764750t_bool(Ca,A_7),B_6))) ) ) ) ) ).

fof(fact_292_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( hBOOL(hAPP_f354239713l_bool(hAPP_f720124009l_bool(member1139774916t_bool,F),pi_Pro623007021t_bool(A_1,B_1)))
     <= ! [X_1] :
          ( hBOOL(hAPP_f1749234559l_bool(hAPP_f566237389l_bool(member496995196t_bool,hAPP_P1861769507t_bool(F,X_1)),hAPP_P1905961381l_bool(B_1,X_1)))
         <= hBOOL(hAPP_f1634113933l_bool(hAPP_P1610428353l_bool(member1020705648le_alt,X_1),A_1)) ) ) ).

fof(fact_790_lexord__partial__trans,axiom,
    ! [Zs_1,Ys_1,R_2,Xs_1] :
      ( ! [X_1,Y_9,Z_4] :
          ( ( hBOOL(hAPP_f592646513l_bool(hAPP_P229966473l_bool(member1441201108le_alt,X_1),set_Pr604701398le_alt(Xs_1)))
           => ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,X_1),Y_9)),R_2))
             => ( hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,X_1),Z_4)),R_2))
               <= hBOOL(hAPP_f108029607l_bool(hAPP_P1336117749l_bool(member2144312714le_alt,hAPP_P1524963591le_alt(hAPP_P665560703le_alt(produc1593382163le_alt,Y_9),Z_4)),R_2)) ) ) )
         <= ( is_Pro1725146340le_alt(X_1)
            & is_Pro1725146340le_alt(Z_4)
            & is_Pro1725146340le_alt(Y_9) ) )
     => ( ( hBOOL(hAPP_f117508401l_bool(hAPP_P1215479305l_bool(member1385125268le_alt,hAPP_l1646733722le_alt(hAPP_l1152370491le_alt(produc556103063le_alt,Ys_1),Zs_1)),hAPP_f1823567903t_bool(lexord1728804490le_alt,R_2)))
         => hBOOL(hAPP_f117508401l_bool(hAPP_P1215479305l_bool(member1385125268le_alt,hAPP_l1646733722le_alt(hAPP_l1152370491le_alt(produc556103063le_alt,Xs_1),Zs_1)),hAPP_f1823567903t_bool(lexord1728804490le_alt,R_2))) )
       <= hBOOL(hAPP_f117508401l_bool(hAPP_P1215479305l_bool(member1385125268le_alt,hAPP_l1646733722le_alt(hAPP_l1152370491le_alt(produc556103063le_alt,Xs_1),Ys_1)),hAPP_f1823567903t_bool(lexord1728804490le_alt,R_2))) ) ) ).

fof(fact_119_funcset__mem,axiom,
    ! [X_2,F,A_1,B_1] :
      ( hBOOL(hAPP_f599145828l_bool(hAPP_f2116028941l_bool(member2056165217t_bool,F),pi_boo175444770t_bool(A_1,hAPP_f823172443l_bool(cOMBK_1021277149l_bool,B_1))))
     => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_b317196972t_bool(F,X_2)),B_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_2),A_1)) ) ) ).

fof(fact_85_PiE,axiom,
    ! [X_2,F,A_1,B_1] :
      ( ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_f312250286l_bool(F,X_2)),hAPP_f1624277646l_bool(B_1,X_2)))
       => ~ hBOOL(hAPP_f250445784l_bool(hAPP_f1253375959l_bool(member520425275t_bool,X_2),A_1)) )
     <= hBOOL(hAPP_f859154022l_bool(hAPP_f976491405l_bool(member2061588323l_bool,F),pi_fun52649508l_bool(A_1,B_1))) ) ).

fof(fact_835_in__set__conv__decomp,axiom,
    ! [X_2,Xs_1] :
      ( ? [Ys,Zs] : Xs_1 = hAPP_l1660244757t_bool(hAPP_l776124325t_bool(append1995644103t_bool,Ys),hAPP_l1660244757t_bool(hAPP_f726713198t_bool(cons_f1803648492t_bool,X_2),Zs))
    <=> hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,X_2),set_fu1865467835t_bool(Xs_1))) ) ).

fof(fact_289_Pi__I_H,axiom,
    ! [F,B_1,A_1] :
      ( ! [X_1] :
          ( is_Arr43961803e_indi(X_1)
         => ( hBOOL(hAPP_f777333846l_bool(hAPP_f461621971l_bool(member760917689t_bool,hAPP_A2102641565t_bool(F,X_1)),hAPP_A1952883197l_bool(B_1,X_1)))
           <= hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_1),A_1)) ) )
     => hBOOL(hAPP_f1252760917l_bool(hAPP_f40035149l_bool(member855864530t_bool,F),pi_Arr2020412179t_bool(A_1,B_1))) ) ).

fof(fact_348_top1I,axiom,
    ! [X_2] : hBOOL(hAPP_P606313927t_bool(top_to565915683t_bool,X_2)) ).

fof(fact_653_dropWhile__neq__rev,axiom,
    ! [X_2,Xs_1] :
      ( hBOOL(hAPP_l2034560823i_bool(distin1358019435e_indi,Xs_1))
     => ( hBOOL(hAPP_f1599966040l_bool(hAPP_A1602262231l_bool(member1493247163e_indi,X_2),set_Ar219761597e_indi(Xs_1)))
       => hAPP_l54953109e_indi(hAPP_A974963564e_indi(cons_A104257774e_indi,X_2),hAPP_l54953109e_indi(rev_Ar2090626622e_indi,hAPP_l54953109e_indi(takeWh273131493e_indi(hAPP_f580451669i_bool(hAPP_f1250179763i_bool(cOMBB_1141363506e_indi,fNot),hAPP_A313542399i_bool(hAPP_f585152361i_bool(cOMBC_1428934564i_bool,fequal1196706959e_indi),X_2))),Xs_1))) = hAPP_l54953109e_indi(dropWh601337149e_indi(hAPP_f580451669i_bool(hAPP_f1250179763i_bool(cOMBB_1141363506e_indi,fNot),hAPP_A313542399i_bool(hAPP_f585152361i_bool(cOMBC_1428934564i_bool,fequal1196706959e_indi),X_2))),hAPP_l54953109e_indi(rev_Ar2090626622e_indi,Xs_1)) ) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__fun_Itc__prod_Itc__Arrow____Order____Mirabell,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l982832318l_bool(B_1_1,B_2_1)) ).

fof(gsy_c_Orderings_Otop__class_Otop_000tc__HOL__Obool,axiom,
    is_bool(top_top_bool) ).

