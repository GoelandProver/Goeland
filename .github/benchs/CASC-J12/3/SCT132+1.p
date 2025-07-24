fof(fact_inf__left__commute,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_z)) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_z))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Int__absorb,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) ).

fof(fact__096F_AQ_A_058_ALin_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(v_F,v_Q____)),c_Arrow__Order__Mirabelle_OLin)) ).

fof(fact_acyclicI,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => c_Wellfounded_Oacyclic(T_a,V_r_2) ) ).

fof(fact_extensional__funcset__extend__domainI,axiom,
    ! [V_x_2,V_S_2,V_f_2,T_b,V_T_2,V_y_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_T_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_a)),c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_y_2)),c_FuncSet_Oextensional__funcset(T_b,T_a,c_Set_Oinsert(T_b,V_x_2,V_S_2),V_T_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_a)),V_f_2),c_FuncSet_Oextensional__funcset(T_b,T_a,V_S_2,V_T_2))) ) ) ).

fof(fact_insertCI,axiom,
    ! [V_ba_2,V_B_2,V_aa_2,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_B_2))
       => V_ba_2 = V_aa_2 )
     => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Set_Oinsert(T_a,V_ba_2,V_B_2))) ) ).

fof(fact_pair__lessI1,axiom,
    ! [V_t_2,V_s_2,V_ba_2,V_aa_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_aa_2),V_s_2)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_ba_2),V_t_2))),c_FunDef_Opair__less))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_aa_2,V_ba_2) ) ).

fof(fact_accp_Oequations,axiom,
    ! [V_aa_2,V_r_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),B_x))
         <= hBOOL(hAPP(hAPP(V_r_2,B_x),V_aa_2)) )
    <=> hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2)) ) ).

fof(fact_restrict__def,axiom,
    ! [V_f_2,T_b,V_A_2,V_x_2,T_a] :
      ( ( hAPP(V_f_2,V_x_2) = hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2)
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
      & ( hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2) = c_HOL_Oundefined(T_b)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_equalityCE,axiom,
    ! [V_c_2,T_a,V_B_2,V_A_2] :
      ( ( ~ ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
           => hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) )
       <= ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
         => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) ) )
     <= V_A_2 = V_B_2 ) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(fact_fun__upd__other,axiom,
    ! [V_y_2,V_f_2,T_b,T_a,V_x_2,V_z_2] :
      ( hAPP(V_f_2,V_z_2) = hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_z_2)
     <= V_z_2 != V_x_2 ) ).

fof(fact_trancl__into__trancl2,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_eqelem__imp__iff,axiom,
    ! [V_A_2,T_a,V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2))
      <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= V_y_2 = V_x_2 ) ).

fof(fact_RangeP__Range__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( c_Predicate_ORangeP(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2),V_x_2)
    <=> hBOOL(hAPP(hAPP(c_member(T_b),V_x_2),c_Relation_ORange(T_a,T_b,V_r_2))) ) ).

fof(fact_wf__insert,axiom,
    ! [V_r_2,V_x_2,V_y_2,T_a] :
      ( c_Wellfounded_Owf(T_a,c_Set_Oinsert(tc_prod(T_a,T_a),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2),V_r_2))
    <=> ( c_Wellfounded_Owf(T_a,V_r_2)
        & ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_assms_I3_J,axiom,
    c_Arrow__Order__Mirabelle_OIIA(v_F) ).

fof(fact_tranclp__into__tranclp2,axiom,
    ! [V_c_2,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
     => ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_c_2))
       <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_ba_2),V_c_2)) ) ) ).

fof(fact_pair__in__Id__conv,axiom,
    ! [V_ba_2,V_aa_2,T_a] :
      ( V_ba_2 = V_aa_2
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Relation_OId(T_a))) ) ).

fof(fact_inf__idem,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => V_x = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_x) ) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) ) ) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) ) ) ).

fof(fact_wfP__accp__iff,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x1] : hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),B_x1))
    <=> c_Wellfounded_OwfP(T_a,V_r_2) ) ).

fof(fact__096P_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_P____),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_rtrancl__into__trancl1,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_acc__subset,axiom,
    ! [V_R2_2,V_R1_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Oacc(T_a,V_R2_2),c_Wellfounded_Oacc(T_a,V_R1_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R1_2,V_R2_2) ) ).

fof(fact_Int__insert__left__if1,axiom,
    ! [V_B_2,V_C_2,V_aa_2,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_aa_2,V_B_2),V_C_2) = c_Set_Oinsert(T_a,V_aa_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_C_2)) ) ).

fof(arity_Nat__Onat__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_Nat_Onat) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_psubset__subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_IntE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ~ ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
         => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))) ) ).

fof(fact_Int__absorb1,axiom,
    ! [V_A_2,V_B_2,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) = V_B_2
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) ) ).

fof(fact_converse__rtranclE2,axiom,
    ! [V_r_2,V_zb_2,V_za_2,V_xb_2,V_xa_2,T_b,T_a] :
      ( ( ~ ! [B_a,B_b] :
              ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))),V_r_2)) )
       <= hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2) != hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))) ) ).

fof(fact_set__mp,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_Range__insert,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_a,T_b] : c_Relation_ORange(T_b,T_a,c_Set_Oinsert(tc_prod(T_b,T_a),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_aa_2),V_ba_2),V_r_2)) = c_Set_Oinsert(T_a,V_ba_2,c_Relation_ORange(T_b,T_a,V_r_2)) ).

fof(fact_extensional__funcset__mem,axiom,
    ! [V_x_2,V_T_2,V_S_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2)))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_S_2))
       => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),V_T_2)) ) ) ).

fof(fact_rtranclp__subset,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( ( c_Transitive__Closure_Ortranclp(T_a,V_S_2) = c_Transitive__Closure_Ortranclp(T_a,V_R_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_S_2,c_Transitive__Closure_Ortranclp(T_a,V_R_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_R_2,V_S_2) ) ).

fof(fact_O__assoc,axiom,
    ! [V_T_2,V_S_2,V_R_2,T_d,T_b,T_c,T_a] : c_Relation_Orel__comp(T_a,T_d,T_b,V_R_2,c_Relation_Orel__comp(T_d,T_c,T_b,V_S_2,V_T_2)) = c_Relation_Orel__comp(T_a,T_c,T_b,c_Relation_Orel__comp(T_a,T_d,T_c,V_R_2,V_S_2),V_T_2) ).

fof(fact_mkbot__Lin,axiom,
    ! [V_x_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Omkbot(V_L_2,V_x_2)),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_accp__downwards__aux,axiom,
    ! [V_aa_2,V_ba_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_ba_2),V_aa_2))
     => ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2))
       => hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_ba_2)) ) ) ).

fof(fact_inf__sup__aci_I3_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_z)) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_z))
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_Domain__iff,axiom,
    ! [V_r_2,T_b,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ODomain(T_a,T_b,V_r_2)))
    <=> ? [B_y] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),B_y)),V_r_2)) ) ).

fof(fact_Lin__irrefl,axiom,
    ! [V_ba_2,V_aa_2,V_L_2] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_ba_2),V_aa_2)),V_L_2))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),V_L_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_set__eq__subset,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
        & c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) )
    <=> V_B_2 = V_A_2 ) ).

fof(fact_tranclp__into__rtranclp,axiom,
    ! [V_ba_2,V_aa_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_ba_2))
     => hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_ba_2)) ) ).

fof(fact_min__ext__wf,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Omin__ext(T_a,V_r_2))
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_tfl__wfrec,axiom,
    ! [T_b,T_a,B_M,B_R] :
      ( ! [B_x] : hAPP(hAPP(B_M,hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),c_Recdef_Owfrec(T_a,T_b,B_R,B_M)),B_R),B_x)),B_x) = hAPP(c_Recdef_Owfrec(T_a,T_b,B_R,B_M),B_x)
     <= c_Wellfounded_Owf(T_a,B_R) ) ).

fof(fact_wf__Int1,axiom,
    ! [V_r_H_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_Wellfounded_Owf(T_a,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_r_H_2)) ) ).

fof(fact_wfrec__def,axiom,
    ! [V_x_2,V_Fa_2,V_R_2,T_a,T_b] : c_HOL_OThe(T_a,c_Recdef_Owfrec__rel(T_b,T_a,V_R_2,hAPP(hAPP(c_COMBC(tc_fun(T_b,T_a),tc_fun(T_b,T_b),tc_fun(T_b,T_a)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(T_b,T_a)),tc_fun(tc_fun(T_b,T_b),tc_fun(T_b,T_a)),tc_fun(T_b,T_a)),c_COMBS(T_b,T_b,T_a)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(T_b,T_a)),tc_fun(T_b,tc_fun(T_b,T_a)),tc_fun(T_b,T_a)),hAPP(c_COMBB(tc_fun(T_b,T_a),tc_fun(T_b,T_a),T_b),V_Fa_2)),hAPP(hAPP(c_COMBC(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(T_b,tc_fun(T_b,T_a))),c_Recdef_Ocut(T_b,T_a)),V_R_2)))),c_COMBI(T_b)),V_x_2)) = hAPP(c_Recdef_Owfrec(T_b,T_a,V_R_2,V_Fa_2),V_x_2) ).

fof(fact_le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_k)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_k) ) ) ).

fof(fact_pair__lessI2,axiom,
    ! [V_t_2,V_s_2,V_ba_2,V_aa_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_aa_2,V_ba_2)
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_s_2,V_t_2)
       => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_aa_2),V_s_2)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_ba_2),V_t_2))),c_FunDef_Opair__less)) ) ) ).

fof(fact_Int__lower1,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_A_2) ).

fof(fact_wfrec__rel_Oequations,axiom,
    ! [V_a2_2,V_a1_2,V_Fa_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,V_a1_2),hAPP(hAPP(V_Fa_2,V_a2_2),V_a1_2)))
    <=> ? [B_g] :
          ( ! [B_z] :
              ( hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,B_z),hAPP(B_g,B_z)))
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_a1_2)),V_R_2)) )
          & hAPP(hAPP(V_Fa_2,B_g),V_a1_2) = hAPP(hAPP(V_Fa_2,V_a2_2),V_a1_2) ) ) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_trancl__rtrancl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Otrancl(T_a,V_R_2)) = c_Transitive__Closure_Ortrancl(T_a,V_R_2) ).

fof(fact_single__valuedD,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),V_r_2))
       => ( V_y_2 = V_z_2
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_z_2)),V_r_2)) ) )
     <= c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_wfP__trancl,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_OwfP(T_a,c_Transitive__Closure_Otranclp(T_a,V_r_2))
     <= c_Wellfounded_OwfP(T_a,V_r_2) ) ).

fof(fact_RangeI,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),c_Relation_ORange(T_a,T_b,V_r_2))) ) ).

fof(fact_mlex__less,axiom,
    ! [V_R_2,T_a,V_y_2,V_x_2,V_f_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2)))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2)) ) ).

fof(fact_equalityI,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
       => V_A_2 = V_B_2 ) ) ).

fof(arity_HOL__Obool__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_HOL_Obool) ).

fof(fact_RangeP_Oequations,axiom,
    ! [V_a2_2,V_r_2,T_b,T_a] :
      ( c_Predicate_ORangeP(T_a,T_b,V_r_2,V_a2_2)
    <=> ? [B_a] : hBOOL(hAPP(hAPP(V_r_2,B_a),V_a2_2)) ) ).

fof(fact_rtranclp_Ortrancl__into__rtrancl,axiom,
    ! [V_c_2,V_ba_2,V_aa_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_r_2,V_ba_2),V_c_2))
       => hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_c_2)) )
     <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_ba_2)) ) ).

fof(fact_Domain__mono,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_r_2),c_Relation_ODomain(T_a,T_b,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_psubset__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
    <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
        & V_A_2 != V_B_2 ) ) ).

fof(fact_Nitpick_Orefl_H__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2))
    <=> c_Nitpick_Orefl_H(T_a,V_r_2) ) ).

fof(fact_Domain__insert,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_b,T_a] : c_Relation_ODomain(T_a,T_b,c_Set_Oinsert(tc_prod(T_a,T_b),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2),V_r_2)) = c_Set_Oinsert(T_a,V_aa_2,c_Relation_ODomain(T_a,T_b,V_r_2)) ).

fof(fact_rtrancl__eq__or__trancl,axiom,
    ! [V_R_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2)))
    <=> ( V_x_2 = V_y_2
        | ( V_x_2 != V_y_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2))) ) ) ) ).

fof(fact_in__mktop,axiom,
    ! [V_z_2,V_L_2,V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Omktop(V_L_2,V_z_2)))
    <=> ( ( V_z_2 = V_y_2
         => V_y_2 != V_x_2 )
        & ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2))
         <= V_y_2 != V_z_2 )
        & V_x_2 != V_z_2 ) ) ).

fof(fact_split__paired__All,axiom,
    ! [T_b,T_a,V_Pa_2] :
      ( ! [B_x1] : hBOOL(hAPP(V_Pa_2,B_x1))
    <=> ! [B_a,B_b] : hBOOL(hAPP(V_Pa_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))) ) ).

fof(fact_inf__absorb1,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y) = V_x ) ) ).

fof(fact_curryD,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)))
     <= hBOOL(hAPP(hAPP(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2),V_aa_2),V_ba_2)) ) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
       <= V_x != V_y ) ) ).

fof(fact_wf__inv__image,axiom,
    ! [V_f_2,T_b,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_b,hAPP(hAPP(c_Relation_Oinv__image(T_a,T_b),V_r_2),V_f_2))
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_subset__insert,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_x_2,V_B_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_the__inv__into__def,axiom,
    ! [V_x_2,V_f_2,V_A_2,T_b,T_a] : c_HOL_OThe(T_a,hAPP(hAPP(c_COMBS(T_a,tc_HOL_Obool,tc_HOL_Obool),hAPP(hAPP(c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),T_a),c_fconj),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_A_2))),hAPP(hAPP(c_COMBC(T_a,T_b,tc_HOL_Obool),hAPP(hAPP(c_COMBB(T_b,tc_fun(T_b,tc_HOL_Obool),T_a),c_fequal),V_f_2)),V_x_2))) = c_Fun_Othe__inv__into(T_a,T_b,V_A_2,V_f_2,V_x_2) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) ) ) ) ).

fof(fact_accp__subset,axiom,
    ! [V_R2_2,V_R1_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Oaccp(T_a,V_R2_2),c_Wellfounded_Oaccp(T_a,V_R1_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_R1_2,V_R2_2) ) ).

fof(fact_extensional__subset,axiom,
    ! [V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_B_2)))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ) ).

fof(fact_extensionalityI,axiom,
    ! [V_g_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( ( ! [B_x] :
              ( hAPP(V_g_2,B_x) = hAPP(V_f_2,B_x)
             <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
         => V_f_2 = V_g_2 )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ) ).

fof(fact_u,axiom,
    c_Arrow__Order__Mirabelle_Ounanimity(v_F) ).

fof(fact_Int__insert__right,axiom,
    ! [V_B_2,V_A_2,V_aa_2,T_a] :
      ( ( c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_aa_2,V_B_2)) = c_Set_Oinsert(T_a,V_aa_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) )
      & ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       => c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_aa_2,V_B_2)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_Int__absorb2,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) = V_A_2 ) ).

fof(fact_inf__greatest,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_z)) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_rtrancl__trancl__trancl,axiom,
    ! [V_z_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_z_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_internal__split__def,axiom,
    ! [T_c,T_b,T_a] : c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c) = c_Product__Type_Ointernal__split(T_a,T_b,T_c) ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_accp_Osimps,axiom,
    ! [V_aa_2,V_r_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),B_x))
         <= hBOOL(hAPP(hAPP(V_r_2,B_x),V_aa_2)) )
    <=> hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2)) ) ).

fof(fact_inf_Oleft__commute,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_b,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_c)) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_b,V_c))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Int__left__absorb,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ).

fof(fact_converse__tranclE,axiom,
    ! [V_r_2,V_z_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),V_r_2))
       => ~ ! [B_y] :
              ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_z_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_y)),V_r_2)) ) ) ) ).

fof(fact_rtranclp_Oequations_I2_J,axiom,
    ! [V_a3_2,V_a1_2,V_r_2,T_a] :
      ( ( ? [B_b] :
            ( hBOOL(hAPP(hAPP(V_r_2,B_b),V_a3_2))
            & hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_a1_2),B_b)) )
        | V_a3_2 = V_a1_2 )
    <=> hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_a1_2),V_a3_2)) ) ).

fof(fact_refl__onD,axiom,
    ! [V_aa_2,V_r_2,V_A_2,T_a] :
      ( c_Relation_Orefl__on(T_a,V_A_2,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_aa_2)),V_r_2)) ) ) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_le__infE,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( ~ ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b)) ) ) ).

fof(fact_refl__onD2,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( c_Relation_Orefl__on(T_a,V_A_2,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) ) ) ).

fof(fact_equalityD1,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     <= V_A_2 = V_B_2 ) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(fact_accp__wfPD,axiom,
    ! [V_x_2,V_r_2,T_a] :
      ( c_Wellfounded_OwfP(T_a,V_r_2)
     => hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_x_2)) ) ).

fof(fact_compose__Id,axiom,
    ! [V_B_2,V_A_2,V_g_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
       => V_g_2 = c_FuncSet_Ocompose(T_a,T_a,T_b,V_A_2,V_g_2,c_FuncSet_Orestrict(T_a,T_a,c_COMBI(T_a),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_rtranclp__trans,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_x_2),V_y_2))
     => ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_y_2),V_z_2))
       => hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_x_2),V_z_2)) ) ) ).

fof(fact_Range__iff,axiom,
    ! [V_r_2,T_b,V_aa_2,T_a] :
      ( ? [B_y] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_y),V_aa_2)),V_r_2))
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ORange(T_b,T_a,V_r_2))) ) ).

fof(help_c__COMBS__1,axiom,
    ! [V_R_2,V_Qa_2,V_Pa_2,T_a,T_c,T_b] : hAPP(hAPP(V_Pa_2,V_R_2),hAPP(V_Qa_2,V_R_2)) = hAPP(hAPP(hAPP(c_COMBS(T_b,T_c,T_a),V_Pa_2),V_Qa_2),V_R_2) ).

fof(help_c__COMBB__1,axiom,
    ! [V_R_2,V_Qa_2,V_Pa_2,T_c,T_a,T_b] : hAPP(V_Pa_2,hAPP(V_Qa_2,V_R_2)) = hAPP(hAPP(hAPP(c_COMBB(T_b,T_a,T_c),V_Pa_2),V_Qa_2),V_R_2) ).

fof(fact_nat__less__le,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_m_2 != V_n_2
        & c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_insert__iff,axiom,
    ! [V_A_2,V_ba_2,V_aa_2,T_a] :
      ( ( V_aa_2 = V_ba_2
        | hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Set_Oinsert(T_a,V_ba_2,V_A_2))) ) ).

fof(fact_tranclp_Oequations_I2_J,axiom,
    ! [V_a3_2,V_a1_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_a1_2),V_a3_2))
    <=> ( hBOOL(hAPP(hAPP(V_r_2,V_a1_2),V_a3_2))
        | ? [B_b] :
            ( hBOOL(hAPP(hAPP(V_r_2,B_b),V_a3_2))
            & hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_a1_2),B_b)) ) ) ) ).

fof(fact_insert__commute,axiom,
    ! [V_A_2,V_y_2,V_x_2,T_a] : c_Set_Oinsert(T_a,V_x_2,c_Set_Oinsert(T_a,V_y_2,V_A_2)) = c_Set_Oinsert(T_a,V_y_2,c_Set_Oinsert(T_a,V_x_2,V_A_2)) ).

fof(fact_wf__not__sym,axiom,
    ! [V_x_2,V_aa_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_aa_2)),V_r_2))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_x_2)),V_r_2)) ) ) ).

fof(fact_inf__sup__ord_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_x) ) ).

fof(fact_DomainP_Ointros,axiom,
    ! [T_b,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
     => c_Predicate_ODomainP(T_a,T_b,V_r_2,V_aa_2) ) ).

fof(fact_wmin__insertI,axiom,
    ! [V_YS_2,V_y_2,V_XS_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_x_2),V_XS_2))
     => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),V_XS_2),c_Set_Oinsert(tc_prod(tc_Nat_Onat,tc_Nat_Onat),V_y_2,V_YS_2))),c_FunDef_Omin__weak))
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),V_XS_2),V_YS_2)),c_FunDef_Omin__weak)) )
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_x_2),V_y_2)),c_FunDef_Opair__leq)) ) ) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ( V_y != V_x
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) )
       <= V_b = V_a )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_in__measure,axiom,
    ! [V_f_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),hAPP(c_Wellfounded_Omeasure(T_a),V_f_2)))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2)) ) ).

fof(arity_Nat__Onat__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_Nat_Onat) ).

fof(fact_Domain__Id__on,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Relation_ODomain(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
       => ( V_x_2 = V_y_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_tranclp__rtranclp__tranclp,axiom,
    ! [V_c_2,V_ba_2,V_aa_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_c_2))
       <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_ba_2),V_c_2)) )
     <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_ba_2)) ) ).

fof(fact_curryE,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2),V_aa_2),V_ba_2))
     => hBOOL(hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2))) ) ).

fof(fact_subset__iff__psubset__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( ( V_A_2 = V_B_2
        | c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_inf__sup__aci_I2_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_z)) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_z)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_refl__onD1,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_rtranclpD,axiom,
    ! [V_ba_2,V_aa_2,V_R_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_R_2),V_aa_2),V_ba_2))
     => ( ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_R_2),V_aa_2),V_ba_2))
          & V_aa_2 != V_ba_2 )
        | V_ba_2 = V_aa_2 ) ) ).

fof(fact_acc__wfD,axiom,
    ! [V_x_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_def__wfrec,axiom,
    ! [V_aa_2,V_H_2,V_r_2,T_b,T_a,V_f_2] :
      ( ( hAPP(V_f_2,V_aa_2) = hAPP(hAPP(V_H_2,hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_aa_2)),V_aa_2)
       <= c_Wellfounded_Owf(T_a,V_r_2) )
     <= c_Recdef_Owfrec(T_a,T_b,V_r_2,V_H_2) = V_f_2 ) ).

fof(fact_inf1E,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ~ ( ~ hBOOL(hAPP(V_B_2,V_x_2))
         <= hBOOL(hAPP(V_A_2,V_x_2)) )
     <= hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_x_2)) ) ).

fof(fact_Pair__inject,axiom,
    ! [V_b_H,V_a_H,V_b,V_a,T_b,T_a] :
      ( ~ ( V_a = V_a_H
         => V_b_H != V_b )
     <= hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_H),V_b_H) = hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a),V_b) ) ).

fof(fact_restrict__extensional,axiom,
    ! [V_A_2,V_f_2,T_b,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2)),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ).

fof(fact__096Q_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_Q____),c_Arrow__Order__Mirabelle_OProf)) ).

fof(help_c__fFalse__1,axiom,
    ~ hBOOL(c_fFalse) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_x_2 = V_y_2
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_RangeE,axiom,
    ! [V_r_2,T_b,V_ba_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Relation_ORange(T_b,T_a,V_r_2)))
     => ~ ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_x),V_ba_2)),V_r_2)) ) ).

fof(fact_acc__downwards,axiom,
    ! [V_ba_2,V_r_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_aa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ) ).

fof(fact_linorder__neqE__nat,axiom,
    ! [V_y,V_x] :
      ( V_y != V_x
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y) ) ) ).

fof(fact_wf__eq__minimal,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
    <=> ! [B_Q] :
          ( ? [B_x] :
              ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),B_Q))
              & ! [B_y] :
                  ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_x)),V_r_2))
                 => ~ hBOOL(hAPP(hAPP(c_member(T_a),B_y),B_Q)) ) )
         <= ? [B_x] : hBOOL(hAPP(hAPP(c_member(T_a),B_x),B_Q)) ) ) ).

fof(fact_fun__upd__apply,axiom,
    ! [V_y_2,V_f_2,T_b,T_a,V_x_2,V_z_2] :
      ( ( V_z_2 != V_x_2
       => hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_z_2) = hAPP(V_f_2,V_z_2) )
      & ( V_x_2 = V_z_2
       => hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_z_2) = V_y_2 ) ) ).

fof(fact_inf_Oassoc,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b),V_c) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_b,V_c))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_subset__insertI,axiom,
    ! [V_aa_2,V_B_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Set_Oinsert(T_a,V_aa_2,V_B_2)) ).

fof(fact_smin__insertI,axiom,
    ! [V_YS_2,V_y_2,V_XS_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_x_2),V_XS_2))
     => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),V_XS_2),V_YS_2)),c_FunDef_Omin__strict))
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),V_XS_2),c_Set_Oinsert(tc_prod(tc_Nat_Onat,tc_Nat_Onat),V_y_2,V_YS_2))),c_FunDef_Omin__strict)) )
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_x_2),V_y_2)),c_FunDef_Opair__less)) ) ) ).

fof(fact_rev__predicate1D,axiom,
    ! [V_Qa_2,T_a,V_x_2,V_Pa_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_Pa_2,V_Qa_2)
       => hBOOL(hAPP(V_Qa_2,V_x_2)) )
     <= hBOOL(hAPP(V_Pa_2,V_x_2)) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_Id__onE,axiom,
    ! [V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_c_2),c_Relation_OId__on(T_a,V_A_2)))
     => ~ ! [B_x] :
            ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
           => hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x) != V_c_2 ) ) ).

fof(help_c__fconj__1,axiom,
    ! [V_Qa_2,V_Pa_2] :
      ( ~ hBOOL(V_Pa_2)
      | ~ hBOOL(V_Qa_2)
      | hBOOL(hAPP(hAPP(c_fconj,V_Pa_2),V_Qa_2)) ) ).

fof(fact_Transitive__Closure_Otrancl__into__trancl,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),V_r_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_wf__asym,axiom,
    ! [V_x_2,V_aa_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_x_2)),V_r_2))
       => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_aa_2)),V_r_2)) )
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 = V_x_2
      | ~ hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2)) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= V_b = V_c ) ) ) ).

fof(fact_adm__wf__def,axiom,
    ! [V_Fa_2,V_R_2,T_b,T_a] :
      ( c_Recdef_Oadm__wf(T_a,T_b,V_R_2,V_Fa_2)
    <=> ! [B_f,B_g,B_x] :
          ( hAPP(hAPP(V_Fa_2,B_g),B_x) = hAPP(hAPP(V_Fa_2,B_f),B_x)
         <= ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),B_x)),V_R_2))
             => hAPP(B_g,B_z) = hAPP(B_f,B_z) ) ) ) ).

fof(fact_in__above,axiom,
    ! [V_y_2,V_x_2,V_L_2,V_ba_2,V_aa_2] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Oabove,V_L_2),V_aa_2),V_ba_2)))
        <=> ( V_y_2 != V_x_2
            & ( V_x_2 = V_ba_2
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_y_2)),V_L_2)) )
            & ( ( ( V_y_2 = V_ba_2
                 => ( V_aa_2 = V_x_2
                    | hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_aa_2)),V_L_2)) ) )
                & ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2))
                 <= V_ba_2 != V_y_2 ) )
             <= V_ba_2 != V_x_2 ) ) )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) )
     <= V_ba_2 != V_aa_2 ) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
          | V_x = V_y ) ) ) ).

fof(fact_Int__iff,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
        & hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) ) ) ).

fof(fact_acyclic__impl__antisym__rtrancl,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_r_2)
     => c_Relation_Oantisym(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_rtranclp__tranclp__tranclp,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_x_2),V_z_2))
       <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_y_2),V_z_2)) )
     <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_x_2),V_y_2)) ) ).

fof(fact_wf__irrefl,axiom,
    ! [V_aa_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_aa_2)),V_r_2)) ) ).

fof(fact_wf__in__rel,axiom,
    ! [V_R_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_R_2)
     => c_Wellfounded_OwfP(T_a,c_FunDef_Oin__rel(T_a,T_a,V_R_2)) ) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_single__valued__rel__comp,axiom,
    ! [V_s_2,T_c,V_r_2,T_b,T_a] :
      ( ( c_Relation_Osingle__valued(T_b,T_c,V_s_2)
       => c_Relation_Osingle__valued(T_a,T_c,c_Relation_Orel__comp(T_a,T_b,T_c,V_r_2,V_s_2)) )
     <= c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_less__infI2,axiom,
    ! [V_a,V_x,V_b,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b),V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_x) ) ) ).

fof(fact_Pair__eq,axiom,
    ! [V_b_Ha_2,V_a_Ha_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2) = hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_Ha_2),V_b_Ha_2)
    <=> ( V_a_Ha_2 = V_aa_2
        & V_b_Ha_2 = V_ba_2 ) ) ).

fof(fact_funcsetI,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),V_B_2)) ) ) ).

fof(fact_inf1D2,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_x_2))
     => hBOOL(hAPP(V_B_2,V_x_2)) ) ).

fof(fact_predicate2D,axiom,
    ! [V_y_2,V_x_2,V_Qa_2,V_Pa_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_Pa_2,V_x_2),V_y_2))
       => hBOOL(hAPP(hAPP(V_Qa_2,V_x_2),V_y_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_Pa_2,V_Qa_2) ) ).

fof(fact_fun__upd__triv,axiom,
    ! [V_x_2,V_f_2,T_b,T_a] : c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,hAPP(V_f_2,V_x_2)) = V_f_2 ).

fof(fact_inf__sup__aci_I4_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y)) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y) ) ).

fof(fact_restrict__ext,axiom,
    ! [T_b,V_g_2,V_f_2,V_A_2,T_a] :
      ( c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2) = c_FuncSet_Orestrict(T_a,T_b,V_g_2,V_A_2)
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hAPP(V_g_2,B_x) = hAPP(V_f_2,B_x) ) ) ).

fof(fact_Range__Int__subset,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ORange(T_b,T_a,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),V_A_2,V_B_2)),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Relation_ORange(T_b,T_a,V_A_2),c_Relation_ORange(T_b,T_a,V_B_2))) ).

fof(fact_rtrancl__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2)) ) ).

fof(fact_extensional__funcset__restrict__domain,axiom,
    ! [V_T_2,V_f_2,T_b,V_S_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,c_HOL_Oundefined(T_b))),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,c_Set_Oinsert(T_a,V_x_2,V_S_2),V_T_2))) )
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_S_2)) ) ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_unanimity__def,axiom,
    ! [V_Fa_2] :
      ( c_Arrow__Order__Mirabelle_Ounanimity(V_Fa_2)
    <=> ! [B_x] :
          ( ! [B_a,B_b] :
              ( ! [B_i] : hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,B_i)))
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_x))) )
         <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf)) ) ) ).

fof(fact_complete__Lin,axiom,
    ! [V_ba_2,V_aa_2] :
      ( V_aa_2 != V_ba_2
     => ? [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),B_x),c_Arrow__Order__Mirabelle_OLin))
          & hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),B_x)) ) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(tc_fun(T_2,T_1))
     <= class_Orderings_Oord(T_1) ) ).

fof(fact_wf__acyclic,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_r_2)
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_d1_I2_J,axiom,
    v_b_H____ != v_a_H____ ).

fof(fact_in__lex__prod,axiom,
    ! [V_s_2,V_r_2,V_b_Ha_2,V_a_Ha_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_a_Ha_2)),V_r_2))
        | ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_ba_2),V_b_Ha_2)),V_s_2))
          & V_a_Ha_2 = V_aa_2 ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_Ha_2),V_b_Ha_2))),c_Wellfounded_Olex__prod(T_a,T_b,V_r_2,V_s_2))) ) ).

fof(help_c__fconj__3,axiom,
    ! [V_Qa_2,V_Pa_2] :
      ( hBOOL(V_Qa_2)
      | ~ hBOOL(hAPP(hAPP(c_fconj,V_Pa_2),V_Qa_2)) ) ).

fof(fact_accp__acc__eq,axiom,
    ! [V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2)))
    <=> hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2)),V_x_2)) ) ).

fof(fact_r__into__rtrancl,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),V_r_2)) ) ).

fof(fact_rev__predicate2D,axiom,
    ! [V_Qa_2,T_b,T_a,V_y_2,V_x_2,V_Pa_2] :
      ( ( hBOOL(hAPP(hAPP(V_Qa_2,V_x_2),V_y_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_Pa_2,V_Qa_2) )
     <= hBOOL(hAPP(hAPP(V_Pa_2,V_x_2),V_y_2)) ) ).

fof(arity_fun__Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(T_1)
     => class_Lattices_Osemilattice__inf(tc_fun(T_2,T_1)) ) ).

fof(fact_tranclD,axiom,
    ! [V_R_2,V_y_2,V_x_2,T_a] :
      ( ? [B_z] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2)))
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_z)),V_R_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2))) ) ).

fof(fact_inf__mono,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b),c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_c,V_d))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_d) ) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_funcset__id,axiom,
    ! [V_A_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_a)),c_COMBI(T_a)),c_FuncSet_OPi(T_a,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,V_A_2)))) ).

fof(fact__096a_A_060_092_060_094bsub_062F_AP_092_060_094esub_062_Ab_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_F,v_P____))) ).

fof(fact_override__on__apply__in,axiom,
    ! [V_g_2,V_f_2,T_b,V_A_2,V_aa_2,T_a] :
      ( hAPP(V_g_2,V_aa_2) = c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2)
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_subset__insertI2,axiom,
    ! [V_ba_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_ba_2,V_B_2)) ) ).

fof(fact_PiE,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),hAPP(V_B_2,V_x_2)))
       => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) ) ).

fof(fact_insert__subset,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
        & hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_x_2,V_A_2),V_B_2) ) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(T_1)
     => class_Orderings_Oorder(tc_fun(T_2,T_1)) ) ).

fof(fact_Int__insert__right__if0,axiom,
    ! [V_B_2,V_A_2,V_aa_2,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_aa_2,V_B_2))
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_extensional__arb,axiom,
    ! [V_x_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
     => ( c_HOL_Oundefined(T_b) = hAPP(V_f_2,V_x_2)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) )
       <= V_b = V_a ) ) ).

fof(fact_curry__conv,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_a,T_c,T_b] : hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) = hAPP(hAPP(c_Product__Type_Ocurry(T_b,T_c,T_a,V_f_2),V_aa_2),V_ba_2) ).

fof(fact__096P_H_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_P_H____),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_funcset__mem,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),V_B_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_insert__ident,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( ( ( c_Set_Oinsert(T_a,V_x_2,V_A_2) = c_Set_Oinsert(T_a,V_x_2,V_B_2)
        <=> V_B_2 = V_A_2 )
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ).

fof(fact_less__le__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ) ).

fof(fact_Int__insert__left,axiom,
    ! [V_B_2,V_C_2,V_aa_2,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_C_2))
       => c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_aa_2,V_B_2),V_C_2) )
      & ( c_Set_Oinsert(T_a,V_aa_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_aa_2,V_B_2),V_C_2)
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_C_2)) ) ) ).

fof(fact_inf__commute,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_x) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_x = V_y
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_fun__upd__same,axiom,
    ! [V_y_2,V_x_2,V_f_2,T_a,T_b] : hAPP(c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_y_2),V_x_2) = V_y_2 ).

fof(fact_above__Lin,axiom,
    ! [V_L_2,V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
       => hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Oabove,V_L_2),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_OLin)) )
     <= V_x_2 != V_y_2 ) ).

fof(fact_rel__comp__mono,axiom,
    ! [V_s_2,V_s_H_2,T_c,V_r_2,V_r_H_2,T_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),V_s_H_2,V_s_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_c),tc_HOL_Obool),c_Relation_Orel__comp(T_a,T_b,T_c,V_r_H_2,V_s_H_2),c_Relation_Orel__comp(T_a,T_b,T_c,V_r_2,V_s_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_H_2,V_r_2) ) ).

fof(fact_wf__pred__nat,axiom,
    c_Wellfounded_Owf(tc_Nat_Onat,c_Wellfounded_Opred__nat) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
          & ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2,V_f_2) )
      <=> c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_irrefl__trancl__rD,axiom,
    ! [V_y_2,V_x_2,V_r_2,T_a] :
      ( ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => ( V_y_2 != V_x_2
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) ) ) ).

fof(fact_curryI,axiom,
    ! [V_ba_2,V_aa_2,T_b,T_a,V_f_2] :
      ( hBOOL(hAPP(hAPP(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2),V_aa_2),V_ba_2))
     <= hBOOL(hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2))) ) ).

fof(fact_eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( V_m = V_n
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2))
      | V_x_2 != V_y_2 ) ).

fof(fact_wfrec,axiom,
    ! [V_aa_2,V_H_2,T_b,V_r_2,T_a] :
      ( hAPP(c_Recdef_Owfrec(T_a,T_b,V_r_2,V_H_2),V_aa_2) = hAPP(hAPP(V_H_2,hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),c_Recdef_Owfrec(T_a,T_b,V_r_2,V_H_2)),V_r_2),V_aa_2)),V_aa_2)
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_RangeP_Ointros,axiom,
    ! [T_b,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( c_Predicate_ORangeP(T_a,T_b,V_r_2,V_ba_2)
     <= hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2)) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) ) ) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_Id__on__eqI,axiom,
    ! [V_A_2,T_a,V_ba_2,V_aa_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Relation_OId__on(T_a,V_A_2))) )
     <= V_ba_2 = V_aa_2 ) ).

fof(fact_less__imp__le__nat,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_acc__wfI,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     <= ! [B_x] : hBOOL(hAPP(hAPP(c_member(T_a),B_x),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_fun__upd__twist,axiom,
    ! [V_d_2,V_ba_2,V_m_2,T_b,T_a,V_c_2,V_aa_2] :
      ( c_Fun_Ofun__upd(T_a,T_b,c_Fun_Ofun__upd(T_a,T_b,V_m_2,V_aa_2,V_ba_2),V_c_2,V_d_2) = c_Fun_Ofun__upd(T_a,T_b,c_Fun_Ofun__upd(T_a,T_b,V_m_2,V_c_2,V_d_2),V_aa_2,V_ba_2)
     <= V_aa_2 != V_c_2 ) ).

fof(fact_Not__Domain__rtrancl,axiom,
    ! [V_y_2,V_R_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2)))
      <=> V_x_2 = V_y_2 )
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Relation_ODomain(T_a,T_a,V_R_2))) ) ).

fof(fact_Pi__cong,axiom,
    ! [V_B_2,T_b,V_g_2,V_f_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
      <=> hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) )
     <= ! [B_w] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_w),V_A_2))
         => hAPP(V_f_2,B_w) = hAPP(V_g_2,B_w) ) ) ).

fof(fact_r__into__rtranclp,axiom,
    ! [T_a,V_y_2,V_x_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_x_2),V_y_2))
     <= hBOOL(hAPP(hAPP(V_r_2,V_x_2),V_y_2)) ) ).

fof(fact_pred__equals__eq2,axiom,
    ! [V_S_2,V_R_2,T_b,T_a] :
      ( hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2) = hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2)
    <=> V_R_2 = V_S_2 ) ).

fof(fact_le__iff__inf,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x_2,V_y_2) = V_x_2 ) ) ).

fof(fact_trancl__into__rtrancl,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_converse__rtranclE,axiom,
    ! [V_r_2,V_z_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( ~ ! [B_y] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_y)),V_r_2))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
       <= V_z_2 != V_x_2 ) ) ).

fof(fact_smax__insertI,axiom,
    ! [V_X_2,V_x_2,V_Y_2,V_y_2] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),V_X_2),V_Y_2)),c_FunDef_Omax__strict))
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),c_Set_Oinsert(tc_prod(tc_Nat_Onat,tc_Nat_Onat),V_x_2,V_X_2)),V_Y_2)),c_FunDef_Omax__strict)) )
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_x_2),V_y_2)),c_FunDef_Opair__less)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_y_2),V_Y_2)) ) ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
       <= V_b != V_a ) ) ).

fof(fact_set__rev__mp,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_pair__leqI2,axiom,
    ! [V_t_2,V_s_2,V_ba_2,V_aa_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_s_2,V_t_2)
       => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_aa_2),V_s_2)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_ba_2),V_t_2))),c_FunDef_Opair__leq)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_aa_2,V_ba_2) ) ).

fof(fact_le__infI2,axiom,
    ! [V_a,V_x,V_b,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_x)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b),V_x) ) ) ).

fof(fact_rtranclp_Oequations_I1_J,axiom,
    ! [V_aa_2,V_r_2,T_a] : hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_aa_2)) ).

fof(fact_linorder__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
      <=> ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_rel__compI,axiom,
    ! [V_s_2,V_c_2,T_c,V_r_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_c)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_ba_2),V_c_2)),V_s_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_c)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_c),V_aa_2),V_c_2)),c_Relation_Orel__comp(T_a,T_b,T_c,V_r_2,V_s_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_r_2)) ) ).

fof(fact_accp__downward,axiom,
    ! [V_aa_2,V_ba_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
       => hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2)) )
     <= hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_ba_2)) ) ).

fof(fact_rtranclE,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( ~ ! [B_y] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),B_y)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_ba_2)),V_r_2)) )
       <= V_ba_2 != V_aa_2 )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_inf1I,axiom,
    ! [T_a,V_B_2,V_x_2,V_A_2] :
      ( ( hBOOL(hAPP(V_B_2,V_x_2))
       => hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_x_2)) )
     <= hBOOL(hAPP(V_A_2,V_x_2)) ) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> ( V_y_2 = V_x_2
          | c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) ) ) ) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_insert__absorb2,axiom,
    ! [V_A_2,V_x_2,T_a] : c_Set_Oinsert(T_a,V_x_2,c_Set_Oinsert(T_a,V_x_2,V_A_2)) = c_Set_Oinsert(T_a,V_x_2,V_A_2) ).

fof(help_c__COMBC__1,axiom,
    ! [V_R_2,V_Qa_2,V_Pa_2,T_a,T_c,T_b] : hAPP(hAPP(hAPP(c_COMBC(T_b,T_c,T_a),V_Pa_2),V_Qa_2),V_R_2) = hAPP(hAPP(V_Pa_2,V_R_2),V_Qa_2) ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(fact_IdE,axiom,
    ! [V_p_2,T_a] :
      ( ~ ! [B_x] : V_p_2 != hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Relation_OId(T_a))) ) ).

fof(arity_HOL__Obool__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_HOL_Obool) ).

fof(fact_same__fstI,axiom,
    ! [T_a,V_R_2,V_y_2,V_y_H_2,T_b,V_x_2,V_Pa_2] :
      ( hBOOL(hAPP(V_Pa_2,V_x_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_H_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2))),c_Recdef_Osame__fst(T_a,T_b,V_Pa_2,V_R_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_y_H_2),V_y_2)),hAPP(V_R_2,V_x_2))) ) ) ).

fof(fact_refl__on__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Orefl__on(T_a,V_A_2,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2)
       => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
        <=> V_x_2 = V_y_2 ) ) ) ).

fof(fact_inf__absorb2,axiom,
    ! [V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => V_y = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_rtranclp__into__tranclp1,axiom,
    ! [V_c_2,V_ba_2,V_aa_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_r_2,V_ba_2),V_c_2))
       => hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_c_2)) )
     <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_ba_2)) ) ).

fof(fact_inf1D1,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(V_A_2,V_x_2))
     <= hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_x_2)) ) ).

fof(fact_compose__assoc,axiom,
    ! [V_D_2,V_h_2,T_d,V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( ( c_FuncSet_Ocompose(T_a,T_c,T_d,V_A_2,V_h_2,c_FuncSet_Ocompose(T_a,T_b,T_c,V_A_2,V_g_2,V_f_2)) = c_FuncSet_Ocompose(T_a,T_b,T_d,V_A_2,c_FuncSet_Ocompose(T_b,T_c,T_d,V_B_2,V_h_2,V_g_2),V_f_2)
         <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_c,T_d)),V_h_2),c_FuncSet_OPi(T_c,T_d,V_C_2,c_COMBK(tc_fun(T_d,tc_HOL_Obool),T_c,V_D_2)))) )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_c)),V_g_2),c_FuncSet_OPi(T_b,T_c,V_B_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_b,V_C_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_trancl_Or__into__trancl,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_psubset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ) ).

fof(fact_dictator__def,axiom,
    ! [V_i_2,V_Fa_2] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf))
         => hAPP(V_Fa_2,B_x) = hAPP(B_x,V_i_2) )
    <=> c_Arrow__Order__Mirabelle_Odictator(V_Fa_2,V_i_2) ) ).

fof(fact_restrictI,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x)))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
     => hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2)),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) ) ).

fof(fact_inf__assoc,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_z)) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_z) ) ).

fof(fact_in__mkbot,axiom,
    ! [V_z_2,V_L_2,V_y_2,V_x_2] :
      ( ( ( V_z_2 = V_x_2
         => V_x_2 != V_y_2 )
        & ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2))
         <= V_z_2 != V_x_2 )
        & V_z_2 != V_y_2 )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Omkbot(V_L_2,V_z_2))) ) ).

fof(fact_wf__Int2,axiom,
    ! [V_r_H_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_Wellfounded_Owf(T_a,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_H_2,V_r_2)) ) ).

fof(fact__096ALL_Ai_O_A_Ia_A_060_092_060_094bsub_062P_Ai_092_060_094esub_062_Ab_J_A_061_A_Ia_A_060_092_060_094bsub_062Q_Ai_092_060_094esub_062_Ab_J_096,axiom,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_Q____,B_i)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_P____,B_i))) ) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_a != V_b
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ) ).

fof(fact_wf__pair__less,axiom,
    c_Wellfounded_Owf(tc_prod(tc_Nat_Onat,tc_Nat_Onat),c_FunDef_Opair__less) ).

fof(fact_less__or__eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
        | V_m = V_n )
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_wf__measure,axiom,
    ! [V_f_2,T_a] : c_Wellfounded_Owf(T_a,hAPP(c_Wellfounded_Omeasure(T_a),V_f_2)) ).

fof(fact_inf_Ocommute,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_b,V_a)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_fun__upd__idem__iff,axiom,
    ! [V_y_2,V_x_2,V_f_2,T_b,T_a] :
      ( hAPP(V_f_2,V_x_2) = V_y_2
    <=> V_f_2 = c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2) ) ).

fof(fact_Int__commute,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x) ) ).

fof(fact_extensional__funcset__arb,axiom,
    ! [V_x_2,V_T_2,V_S_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2)))
     => ( c_HOL_Oundefined(T_b) = hAPP(V_f_2,V_x_2)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_S_2)) ) ) ).

fof(fact_single__valued__def,axiom,
    ! [V_r_2,T_b,T_a] :
      ( ! [B_x,B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_y)),V_r_2))
         => ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_z)),V_r_2))
             => B_y = B_z ) )
    <=> c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) )
       <= V_a = V_b )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_less__not__refl3,axiom,
    ! [V_t,V_s] :
      ( V_t != V_s
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_s,V_t) ) ).

fof(fact_order__less__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & V_x_2 != V_y_2 ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_psubsetD,axiom,
    ! [V_c_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) )
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_acyclic__insert,axiom,
    ! [V_r_2,V_x_2,V_y_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,c_Set_Oinsert(tc_prod(T_a,T_a),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2),V_r_2))
    <=> ( c_Wellfounded_Oacyclic(T_a,V_r_2)
        & ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_wfP__empty,axiom,
    ! [T_a] : c_Wellfounded_OwfP(T_a,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,c_COMBK(tc_HOL_Obool,T_a,c_fFalse))) ).

fof(fact_pair__leqI1,axiom,
    ! [V_t_2,V_s_2,V_ba_2,V_aa_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_aa_2),V_s_2)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_ba_2),V_t_2))),c_FunDef_Opair__leq))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_aa_2,V_ba_2) ) ).

fof(fact_inf__le1,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_x) ) ).

fof(fact_reduction__pairI,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( ( c_FunDef_Oreduction__pair(T_a,hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),V_R_2),V_S_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Relation_Orel__comp(T_a,T_a,T_a,V_R_2,V_S_2),V_R_2) )
     <= c_Wellfounded_Owf(T_a,V_R_2) ) ).

fof(fact_wfP__subset,axiom,
    ! [V_p_2,V_r_2,T_a] :
      ( c_Wellfounded_OwfP(T_a,V_r_2)
     => ( c_Wellfounded_OwfP(T_a,V_p_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_p_2,V_r_2) ) ) ).

fof(fact_Id__compose,axiom,
    ! [V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
       => V_f_2 = c_FuncSet_Ocompose(T_a,T_b,T_b,V_A_2,c_FuncSet_Orestrict(T_b,T_b,c_COMBI(T_b),V_B_2),V_f_2) ) ) ).

fof(fact_inf_Oidem,axiom,
    ! [V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_a) = V_a ) ).

fof(fact_override__on__apply__notin,axiom,
    ! [V_g_2,V_f_2,T_b,V_A_2,V_aa_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
     => hAPP(V_f_2,V_aa_2) = c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2) ) ).

fof(fact_Pi__mem,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),hAPP(V_B_2,V_x_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) ) ).

fof(fact_prod_Orecs,axiom,
    ! [V_ba_2,V_aa_2,V_f1_2,T_a,T_c,T_b] : c_Product__Type_Oprod_Oprod__rec(T_b,T_c,T_a,V_f1_2,hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) = hAPP(hAPP(V_f1_2,V_aa_2),V_ba_2) ).

fof(fact_inf_Oleft__idem,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_psubset__imp__subset,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_inf2E,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2,V_B_2),V_x_2),V_y_2))
     => ~ ( ~ hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2))
         <= hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2)) ) ) ).

fof(fact_mlex__leq,axiom,
    ! [V_R_2,T_a,V_y_2,V_x_2,V_f_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_R_2)) ) ) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
       => ( V_x_2 = V_y_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ) ).

fof(fact_r__r__into__trancl,axiom,
    ! [V_c_2,V_R_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),V_R_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_R_2)) ) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_nat__neq__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( V_n_2 != V_m_2
    <=> ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2) ) ) ).

fof(fact_override__on__def,axiom,
    ! [V_g_2,V_f_2,T_b,V_A_2,V_aa_2,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       => hAPP(V_f_2,V_aa_2) = c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2) )
      & ( c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2) = hAPP(V_g_2,V_aa_2)
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ) ).

fof(arity_fun__Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(tc_fun(T_2,T_1))
     <= class_Lattices_Olattice(T_1) ) ).

fof(fact_trancl__mono,axiom,
    ! [V_s_2,V_r_2,V_p_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Otrancl(T_a,V_s_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_rtranclp_Ortrancl__refl,axiom,
    ! [V_aa_2,V_r_2,T_a] : hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_aa_2)) ).

fof(fact_equalityD2,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_refl__on__Int,axiom,
    ! [V_s_2,V_B_2,V_r_2,V_A_2,T_a] :
      ( ( c_Relation_Orefl__on(T_a,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2))
       <= c_Relation_Orefl__on(T_a,V_B_2,V_s_2) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_subset__psubset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ) ).

fof(help_c__fNot__1,axiom,
    ! [V_Pa_2] :
      ( ~ hBOOL(V_Pa_2)
      | ~ hBOOL(hAPP(c_fNot,V_Pa_2)) ) ).

fof(fact_cut__apply,axiom,
    ! [V_f_2,T_b,V_r_2,V_aa_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_aa_2)),V_r_2))
     => hAPP(V_f_2,V_x_2) = hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_aa_2),V_x_2) ) ).

fof(fact_rtrancl__subset__rtrancl,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Transitive__Closure_Ortrancl(T_a,V_s_2))
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2)) ) ).

fof(fact_inf2I,axiom,
    ! [T_b,T_a,V_B_2,V_y_2,V_x_2,V_A_2] :
      ( ( hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2))
       => hBOOL(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2,V_B_2),V_x_2),V_y_2)) )
     <= hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2)) ) ).

fof(fact_cut__def,axiom,
    ! [V_f_2,T_b,V_r_2,V_x_2,V_y_2,T_a] :
      ( ( hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_x_2),V_y_2) = hAPP(V_f_2,V_y_2)
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),V_r_2)) )
      & ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),V_r_2))
       => hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_x_2),V_y_2) = c_HOL_Oundefined(T_b) ) ) ).

fof(fact_curry__split,axiom,
    ! [V_f_2,T_c,T_b,T_a] : V_f_2 = c_Product__Type_Ocurry(T_a,T_b,T_c,hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),V_f_2)) ).

fof(fact_tranclp_Or__into__trancl,axiom,
    ! [T_a,V_ba_2,V_aa_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
     => hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_ba_2)) ) ).

fof(fact_d2_I1_J,axiom,
    v_b_H____ != v_a____ ).

fof(fact_nat__le__linear,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
      | c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_tranclp__trans,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_x_2),V_y_2))
     => ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_x_2),V_z_2))
       <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_y_2),V_z_2)) ) ) ).

fof(fact_pred__equals__eq,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( V_R_2 = V_S_2
    <=> hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2) = hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2) ) ).

fof(fact_fun__upd__idem,axiom,
    ! [T_a,T_b,V_y_2,V_x_2,V_f_2] :
      ( c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_y_2) = V_f_2
     <= hAPP(V_f_2,V_x_2) = V_y_2 ) ).

fof(fact_accp__downwards,axiom,
    ! [V_ba_2,V_aa_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_ba_2),V_aa_2))
       => hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_ba_2)) )
     <= hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2)) ) ).

fof(fact_Id__on__iff,axiom,
    ! [V_A_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Relation_OId__on(T_a,V_A_2)))
    <=> ( V_x_2 = V_y_2
        & hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_wf__mlex,axiom,
    ! [V_f_2,V_R_2,T_a] :
      ( c_Wellfounded_Owf(T_a,c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2))
     <= c_Wellfounded_Owf(T_a,V_R_2) ) ).

fof(fact_tranclp_Otrancl__into__trancl,axiom,
    ! [V_c_2,V_ba_2,V_aa_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_ba_2))
     => ( hBOOL(hAPP(hAPP(V_r_2,V_ba_2),V_c_2))
       => hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_c_2)) ) ) ).

fof(fact_tranclp_Oequations_I1_J,axiom,
    ! [V_a2_2,V_a1_2,V_r_2,T_a] :
      ( ( ? [B_b] :
            ( hBOOL(hAPP(hAPP(V_r_2,B_b),V_a2_2))
            & hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_a1_2),B_b)) )
        | hBOOL(hAPP(hAPP(V_r_2,V_a1_2),V_a2_2)) )
    <=> hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_a1_2),V_a2_2)) ) ).

fof(fact_IntD2,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))) ) ).

fof(fact_Int__greatest,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_A_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_B_2) ) ) ).

fof(fact_rtrancl_Ortrancl__refl,axiom,
    ! [V_r_2,V_aa_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_aa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ( V_c = V_b
         => c_Orderings_Oord__class_Oless(T_a,V_c,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_rtrancl__induct2,axiom,
    ! [V_Pa_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
     => ( hBOOL(hAPP(hAPP(V_Pa_2,V_ax_2),V_ay_2))
       => ( hBOOL(hAPP(hAPP(V_Pa_2,V_bx_2),V_by_2))
         <= ! [B_a,B_b] :
              ( ! [B_aa,B_ba] :
                  ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba))),V_r_2))
                 => ( hBOOL(hAPP(hAPP(V_Pa_2,B_a),B_b))
                   => hBOOL(hAPP(hAPP(V_Pa_2,B_aa),B_ba)) ) )
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))) ) ) ) ) ).

fof(fact_insertI1,axiom,
    ! [V_B_2,V_aa_2,T_a] : hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Set_Oinsert(T_a,V_aa_2,V_B_2))) ).

fof(fact_not__acc__down,axiom,
    ! [V_R_2,V_x_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_R_2)))
     => ~ ! [B_z] :
            ( hBOOL(hAPP(hAPP(c_member(T_a),B_z),c_Wellfounded_Oacc(T_a,V_R_2)))
           <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_x_2)),V_R_2)) ) ) ).

fof(fact_less__irrefl__nat,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_pred__subset__eq2,axiom,
    ! [V_S_2,V_R_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_R_2,V_S_2) ) ).

fof(fact_pred__nat__trancl__eq__le,axiom,
    ! [V_n_2,V_m_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_m_2),V_n_2)),c_Transitive__Closure_Ortrancl(tc_Nat_Onat,c_Wellfounded_Opred__nat)))
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_wf__not__refl,axiom,
    ! [V_aa_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_aa_2)),V_r_2)) ) ).

fof(fact_d2_I2_J,axiom,
    v_b____ != v_a_H____ ).

fof(fact_rp__inv__image__def,axiom,
    ! [T_b,T_a] : hAPP(c_Product__Type_Oprod_Oprod__case(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_fun(T_b,T_a),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),hAPP(hAPP(c_COMBC(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool))),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_fun(T_b,T_a),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool))))),hAPP(hAPP(c_COMBB(tc_fun(tc_fun(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)),tc_fun(tc_fun(T_b,T_a),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),tc_fun(tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool))),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_fun(T_b,T_a),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool))))),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),c_COMBB(tc_fun(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)),tc_fun(tc_fun(T_b,T_a),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool))),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_fun(T_b,T_a),tc_fun(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),tc_fun(tc_fun(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)),tc_fun(tc_fun(T_b,T_a),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),c_COMBS(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),hAPP(hAPP(c_COMBB(tc_fun(tc_fun(T_b,T_a),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)),tc_fun(tc_fun(T_b,T_a),tc_fun(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),hAPP(c_COMBB(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_prod(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool))),tc_fun(T_b,T_a)),c_Product__Type_OPair(tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool),tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)))),c_Relation_Oinv__image(T_a,T_b))))),c_Relation_Oinv__image(T_a,T_b))) = c_FunDef_Orp__inv__image(T_a,T_b) ).

fof(fact_split__curry,axiom,
    ! [V_f_2,T_c,T_b,T_a] : hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),c_Product__Type_Ocurry(T_a,T_b,T_c,V_f_2)) = V_f_2 ).

fof(help_c__fconj__2,axiom,
    ! [V_Qa_2,V_Pa_2] :
      ( ~ hBOOL(hAPP(hAPP(c_fconj,V_Pa_2),V_Qa_2))
      | hBOOL(V_Pa_2) ) ).

fof(fact_fun__upd__def,axiom,
    ! [V_ba_2,V_f_2,T_b,T_a,V_aa_2,V_x_2] :
      ( ( V_x_2 = V_aa_2
       => hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_aa_2,V_ba_2),V_x_2) = V_ba_2 )
      & ( hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_aa_2,V_ba_2),V_x_2) = hAPP(V_f_2,V_x_2)
       <= V_aa_2 != V_x_2 ) ) ).

fof(fact_inf__le2,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_y)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_less__than__iff,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_x_2),V_y_2)),c_Wellfounded_Oless__than))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x_2,V_y_2) ) ).

fof(fact_rtrancl__subset,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_S_2,c_Transitive__Closure_Ortrancl(T_a,V_R_2))
       => c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Ortrancl(T_a,V_S_2) ) ) ).

fof(fact_compose__eq,axiom,
    ! [V_f_2,V_g_2,T_b,T_c,V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => hAPP(c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_g_2,V_f_2),V_x_2) = hAPP(V_g_2,hAPP(V_f_2,V_x_2)) ) ).

fof(fact_in__mono,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_mktop__Lin,axiom,
    ! [V_x_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Omktop(V_L_2,V_x_2)),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ) ).

fof(fact_pred__subset__eq,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_R_2,V_S_2) ) ).

fof(fact_in__rel__def,axiom,
    ! [V_y_2,V_x_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_FunDef_Oin__rel(T_a,T_b,V_R_2),V_x_2),V_y_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),V_R_2)) ) ).

fof(fact_trancl__unfold__right,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Otrancl(T_a,V_r_2) = c_Relation_Orel__comp(T_a,T_a,T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2),V_r_2) ).

fof(fact_compose__extensional,axiom,
    ! [V_g_2,V_f_2,V_A_2,T_c,T_b,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_f_2,V_g_2)),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ).

fof(fact_dictatorI,axiom,
    ! [V_i_2,V_Fa_2] :
      ( ( ! [B_x] :
            ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf))
           => ! [B_a,B_b] :
                ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,V_i_2)))
                 => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_x))) )
               <= B_b != B_a ) )
       => c_Arrow__Order__Mirabelle_Odictator(V_Fa_2,V_i_2) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_Fa_2),c_FuncSet_OPi(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_OProf,c_COMBK(tc_fun(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_OLin)))) ) ).

fof(fact_the__sym__eq__trivial,axiom,
    ! [V_x_2,T_a] : V_x_2 = c_HOL_OThe(T_a,hAPP(c_fequal,V_x_2)) ).

fof(fact_inf__fun__def,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_b,T_a] :
      ( hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,T_a),V_f_2,V_g_2),V_x_2) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_acc__downwards__aux,axiom,
    ! [V_r_2,V_aa_2,V_ba_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_aa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Wellfounded_Oacc(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= V_a != V_b ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_inf2D2,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2))
     <= hBOOL(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2,V_B_2),V_x_2),V_y_2)) ) ).

fof(fact_rtranclp__rtrancl__eq,axiom,
    ! [V_xa_2,V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_xa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
    <=> hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2)),V_x_2),V_xa_2)) ) ).

fof(fact_converse__rtrancl__into__rtrancl,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2)) ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_y != V_x
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_less__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),hAPP(hAPP(c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat),V_m_2),V_n_2)),c_Transitive__Closure_Otrancl(tc_Nat_Onat,c_Wellfounded_Opred__nat))) ) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_wfrec__rel_Ointros,axiom,
    ! [V_g_2,V_Fa_2,T_b,V_R_2,V_x_2,T_a] :
      ( hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,V_x_2),hAPP(hAPP(V_Fa_2,V_g_2),V_x_2)))
     <= ! [B_z] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_x_2)),V_R_2))
         => hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,B_z),hAPP(V_g_2,B_z))) ) ) ).

fof(fact_rtrancl_Ortrancl__into__rtrancl,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_single__valued__confluent,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_a] :
      ( ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
            | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_z_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
     <= c_Relation_Osingle__valued(T_a,T_a,V_r_2) ) ).

fof(fact__096a_A_126_061_Aa_H_A_061_061_062_Aa_H_A_060_092_060_094bsub_062F_AQ_092_060_094esub_062_Aa_096,axiom,
    ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a_H____),v_a____)),hAPP(v_F,v_Q____)))
   <= v_a_H____ != v_a____ ) ).

fof(fact_mem__def,axiom,
    ! [V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
    <=> hBOOL(hAPP(V_A_2,V_x_2)) ) ).

fof(fact_min__strict__def,axiom,
    c_Wellfounded_Omin__ext(tc_prod(tc_Nat_Onat,tc_Nat_Onat),c_FunDef_Opair__less) = c_FunDef_Omin__strict ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( V_a != V_b
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ) ).

fof(fact_trancl__unfold__left,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Otrancl(T_a,V_r_2) = c_Relation_Orel__comp(T_a,T_a,T_a,V_r_2,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_const__Lin__Prof,axiom,
    ! [V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),c_COMBK(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_Arrow__Order__Mirabelle_Oindi,V_L_2)),c_Arrow__Order__Mirabelle_OProf))
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_insertI2,axiom,
    ! [V_ba_2,V_B_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Set_Oinsert(T_a,V_ba_2,V_B_2)))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_B_2)) ) ).

fof(fact_IntD1,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))) ) ).

fof(fact_rtrancl__into__trancl2,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_inf__Int__eq2,axiom,
    ! [V_y_2,V_x_2,V_S_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2)),V_x_2),V_y_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_R_2,V_S_2))) ) ).

fof(fact_single__valuedI,axiom,
    ! [V_r_2,T_b,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
     <= ! [B_x,B_y] :
          ( ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_z)),V_r_2))
             => B_y = B_z )
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_y)),V_r_2)) ) ) ).

fof(fact_IdI,axiom,
    ! [V_aa_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_aa_2)),c_Relation_OId(T_a))) ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_b = V_a
       => ( c_Orderings_Oord__class_Oless(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_c,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_the__eq__trivial,axiom,
    ! [V_aa_2,T_a] : c_HOL_OThe(T_a,hAPP(hAPP(c_COMBC(T_a,T_a,tc_HOL_Obool),c_fequal),V_aa_2)) = V_aa_2 ).

fof(fact_trancl__rtrancl__trancl,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_inf__sup__aci_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_x) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y) ) ).

fof(fact_le__eq__less__or__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        | V_n_2 = V_m_2 )
    <=> c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_eq__mem,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( V_x_2 = V_y_2
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),hAPP(c_fequal,V_y_2))) ) ).

fof(fact__096a_A_060_092_060_094bsub_062F_AQ_092_060_094esub_062_Ab_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_F,v_Q____))) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_inf__apply,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_b,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2)) = hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,T_a),V_f_2,V_g_2),V_x_2)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_rtrancl__idemp,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) = c_Transitive__Closure_Ortrancl(T_a,V_r_2) ).

fof(help_c__fNot__2,axiom,
    ! [V_Pa_2] :
      ( ~ ~ hBOOL(V_Pa_2)
      | hBOOL(hAPP(c_fNot,V_Pa_2)) ) ).

fof(fact_mlex__prod__def,axiom,
    ! [V_R_2,V_f_2,T_a] : hAPP(hAPP(c_Relation_Oinv__image(tc_prod(tc_Nat_Onat,T_a),T_a),c_Wellfounded_Olex__prod(tc_Nat_Onat,T_a,c_Wellfounded_Oless__than,V_R_2)),hAPP(hAPP(c_COMBS(T_a,T_a,tc_prod(tc_Nat_Onat,T_a)),hAPP(hAPP(c_COMBB(tc_Nat_Onat,tc_fun(T_a,tc_prod(tc_Nat_Onat,T_a)),T_a),c_Product__Type_OPair(tc_Nat_Onat,T_a)),V_f_2)),c_COMBI(T_a))) = c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2) ).

fof(fact_wf__lex__prod,axiom,
    ! [V_rb_2,T_b,V_ra_2,T_a] :
      ( ( c_Wellfounded_Owf(tc_prod(T_a,T_b),c_Wellfounded_Olex__prod(T_a,T_b,V_ra_2,V_rb_2))
       <= c_Wellfounded_Owf(T_b,V_rb_2) )
     <= c_Wellfounded_Owf(T_a,V_ra_2) ) ).

fof(fact_eqset__imp__iff,axiom,
    ! [V_x_2,T_a,V_B_2,V_A_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
      <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
     <= V_A_2 = V_B_2 ) ).

fof(fact_assms_I1_J,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_F),c_FuncSet_OPi(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_OProf,c_COMBK(tc_fun(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_OLin)))) ).

fof(fact_curry__def,axiom,
    ! [V_y_2,V_x_2,V_c_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Ocurry(T_b,T_c,T_a,V_c_2),V_x_2),V_y_2) = hAPP(V_c_2,hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_x_2),V_y_2)) ).

fof(fact_pair__less__def,axiom,
    c_FunDef_Opair__less = c_Wellfounded_Olex__prod(tc_Nat_Onat,tc_Nat_Onat,c_Wellfounded_Oless__than,c_Wellfounded_Oless__than) ).

fof(fact_less__not__refl,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_Domain__Int__subset,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_A_2,V_B_2)),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_A_2),c_Relation_ODomain(T_a,T_b,V_B_2))) ).

fof(fact__C1_C,axiom,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a_H____),v_b_H____)),hAPP(v_P_H____,B_i)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_P____,B_i))) ) ).

fof(fact_predicate1D,axiom,
    ! [V_x_2,V_Qa_2,V_Pa_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_Pa_2,V_Qa_2)
     => ( hBOOL(hAPP(V_Qa_2,V_x_2))
       <= hBOOL(hAPP(V_Pa_2,V_x_2)) ) ) ).

fof(fact_single__valued__subset,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2)
     => ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
       <= c_Relation_Osingle__valued(T_a,T_b,V_s_2) ) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
         => V_x = V_y ) ) ) ).

fof(fact_Int__mono,axiom,
    ! [V_D_2,V_B_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_D_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_D_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( V_g_2 = V_f_2
     <= ! [B_x] : hAPP(V_f_2,B_x) = hAPP(V_g_2,B_x) ) ).

fof(fact_rtranclp__idemp,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortranclp(T_a,V_r_2) = c_Transitive__Closure_Ortranclp(T_a,c_Transitive__Closure_Ortranclp(T_a,V_r_2)) ).

fof(fact_single__valued__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Osingle__valued(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_total__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Ototal__on(T_a,V_A_2,V_r_2)
    <=> ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => ! [B_xa] :
              ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_xa),B_x)),V_r_2))
                  | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_xa)),V_r_2)) )
               <= B_xa != B_x )
             <= hBOOL(hAPP(hAPP(c_member(T_a),B_xa),V_A_2)) ) ) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       <= ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_tranclp__trancl__eq,axiom,
    ! [V_xa_2,V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2)),V_x_2),V_xa_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_xa_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_acyclic__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_r_2)
    <=> ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_rtranclp__into__tranclp2,axiom,
    ! [V_c_2,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
     => ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Otranclp(T_a,V_r_2),V_aa_2),V_c_2))
       <= hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_ba_2),V_c_2)) ) ) ).

fof(fact_wf__less__than,axiom,
    c_Wellfounded_Owf(tc_Nat_Onat,c_Wellfounded_Oless__than) ).

fof(fact_extensional__funcset__def,axiom,
    ! [V_T_2,V_S_2,T_b,T_a] : c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool),c_FuncSet_OPi(T_a,T_b,V_S_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_T_2)),c_FuncSet_Oextensional(T_a,T_b,V_S_2)) = c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2) ).

fof(fact_inf2D1,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2))
     <= hBOOL(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2,V_B_2),V_x_2),V_y_2)) ) ).

fof(fact_IntI,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) ) ).

fof(fact_rtranclp__r__diff__Id,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortranclp(T_a,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_r_2,hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_a),hAPP(c_COMBB(tc_HOL_Obool,tc_HOL_Obool,T_a),c_fNot)),c_fequal))) = c_Transitive__Closure_Ortranclp(T_a,V_r_2) ).

fof(fact_extensional__restrict,axiom,
    ! [V_A_2,V_f_2,T_b,T_a] :
      ( c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2) = V_f_2
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ) ).

fof(fact_d1_I1_J,axiom,
    v_b____ != v_a____ ).

fof(fact_eq__mem__trans,axiom,
    ! [V_A_2,T_a,V_ba_2,V_aa_2] :
      ( V_aa_2 = V_ba_2
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ) ).

fof(fact_Nitpick_Owfrec_H__def,axiom,
    ! [V_x_2,V_Fa_2,T_b,V_R_2,T_a] :
      ( ( ~ c_Wellfounded_Owf(T_a,V_R_2)
       => c_Nitpick_Owfrec_H(T_a,T_b,V_R_2,V_Fa_2,V_x_2) = c_HOL_OThe(T_b,c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,hAPP(hAPP(c_COMBC(tc_fun(T_a,T_b),tc_fun(T_a,T_a),tc_fun(T_a,T_b)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(tc_fun(T_a,T_a),tc_fun(T_a,T_b)),tc_fun(T_a,T_b)),c_COMBS(T_a,T_a,T_b)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(T_a,T_b)),hAPP(c_COMBB(tc_fun(T_a,T_b),tc_fun(T_a,T_b),T_a),V_Fa_2)),hAPP(hAPP(c_COMBC(tc_fun(T_a,T_b),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_fun(T_a,T_b))),c_Recdef_Ocut(T_a,T_b)),V_R_2)))),c_COMBI(T_a)),V_x_2)) )
      & ( c_Wellfounded_Owf(T_a,V_R_2)
       => c_Nitpick_Owf__wfrec_H(T_a,T_b,V_R_2,V_Fa_2,V_x_2) = c_Nitpick_Owfrec_H(T_a,T_b,V_R_2,V_Fa_2,V_x_2) ) ) ).

fof(fact_max__rpair__set,axiom,
    c_FunDef_Oreduction__pair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),tc_HOL_Obool),tc_fun(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),tc_HOL_Obool)),c_FunDef_Omax__strict),c_FunDef_Omax__weak)) ).

fof(fact_DomainE,axiom,
    ! [V_r_2,T_b,V_aa_2,T_a] :
      ( ~ ! [B_y] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),B_y)),V_r_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_insert__code,axiom,
    ! [V_x_2,V_A_2,V_y_2,T_a] :
      ( hBOOL(hAPP(c_Set_Oinsert(T_a,V_y_2,V_A_2),V_x_2))
    <=> ( V_y_2 = V_x_2
        | hBOOL(hAPP(V_A_2,V_x_2)) ) ) ).

fof(fact_antisym__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Oantisym(T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact__096b_A_126_061_Ab_H_A_061_061_062_Ab_A_060_092_060_094bsub_062F_AQ_092_060_094esub_062_Ab_H_096,axiom,
    ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_b_H____)),hAPP(v_F,v_Q____)))
   <= v_b_H____ != v_b____ ) ).

fof(fact_fun__upd__upd,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_f_2,T_b,T_a] : c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_z_2) = c_Fun_Ofun__upd(T_a,T_b,c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_x_2,V_z_2) ).

fof(fact_below__Lin,axiom,
    ! [V_L_2,V_y_2,V_x_2] :
      ( V_y_2 != V_x_2
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
       => hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Obelow(V_L_2,V_x_2,V_y_2)),c_Arrow__Order__Mirabelle_OLin)) ) ) ).

fof(fact_acc__downward,axiom,
    ! [V_aa_2,V_r_2,V_ba_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Wellfounded_Oacc(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ) ).

fof(fact_nat__less__cases,axiom,
    ! [V_Pa_2,V_n_2,V_m_2] :
      ( ( ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2)
           => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) )
         => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) )
       <= ( V_n_2 = V_m_2
         => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) ) )
     <= ( hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2))
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_acc_OaccI,axiom,
    ! [V_r_2,V_x_2,T_a] :
      ( ! [B_y] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_y),c_Wellfounded_Oacc(T_a,V_r_2)))
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_x_2)),V_r_2)) )
     => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x ) ) ).

fof(fact_Range__Id__on,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Relation_ORange(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_funcset__compose,axiom,
    ! [V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_c)),V_g_2),c_FuncSet_OPi(T_b,T_c,V_B_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_b,V_C_2))))
       => hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_c)),c_FuncSet_Ocompose(T_a,T_b,T_c,V_A_2,V_g_2,V_f_2)),c_FuncSet_OPi(T_a,T_c,V_A_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_a,V_C_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_wfP__wf__eq,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
    <=> c_Wellfounded_OwfP(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2)) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(fact_wf__same__fst,axiom,
    ! [T_a,V_R_2,T_b,V_Pa_2] :
      ( ! [B_x] :
          ( hBOOL(hAPP(V_Pa_2,B_x))
         => c_Wellfounded_Owf(T_b,hAPP(V_R_2,B_x)) )
     => c_Wellfounded_Owf(tc_prod(T_a,T_b),c_Recdef_Osame__fst(T_a,T_b,V_Pa_2,V_R_2)) ) ).

fof(fact_inf__sup__ord_I2_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_y) ) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( ( V_c = V_b
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_rtrancl__trancl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Otrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ).

fof(fact_Int__lower2,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_B_2) ).

fof(fact_in__below,axiom,
    ! [V_y_2,V_x_2,V_L_2,V_ba_2,V_aa_2] :
      ( V_aa_2 != V_ba_2
     => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Obelow(V_L_2,V_aa_2,V_ba_2)))
        <=> ( ( V_y_2 = V_aa_2
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_ba_2)),V_L_2)) )
            & ( V_y_2 != V_aa_2
             => ( ( V_x_2 = V_aa_2
                 => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_ba_2),V_y_2)),V_L_2))
                    | V_y_2 = V_ba_2 ) )
                & ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2))
                 <= V_aa_2 != V_x_2 ) ) )
            & V_y_2 != V_x_2 ) )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) ) ) ).

fof(fact_le__infI,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b) ) ) ) ).

fof(fact_Int__assoc,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_C_2) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) ).

fof(fact_less__not__refl2,axiom,
    ! [V_m,V_n] :
      ( V_m != V_n
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_wf__trancl,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_Wellfounded_Owf(T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_Inf__fin_Oidem,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_x) = V_x ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(T_1)
     => class_Orderings_Opreorder(tc_fun(T_2,T_1)) ) ).

fof(fact_insert__inter__insert,axiom,
    ! [V_B_2,V_A_2,V_aa_2,T_a] : c_Set_Oinsert(T_a,V_aa_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_aa_2,V_A_2),c_Set_Oinsert(T_a,V_aa_2,V_B_2)) ).

fof(fact_single__valued__Id,axiom,
    ! [T_a] : c_Relation_Osingle__valued(T_a,T_a,c_Relation_OId(T_a)) ).

fof(fact_notin__Lin__iff,axiom,
    ! [V_y_2,V_x_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => ( V_x_2 != V_y_2
       => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_y_2),V_x_2)),V_L_2))
        <=> ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2)) ) ) ) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x ) ) ).

fof(fact_insert__mono,axiom,
    ! [V_aa_2,V_D_2,V_C_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_D_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_aa_2,V_C_2),c_Set_Oinsert(T_a,V_aa_2,V_D_2)) ) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
       => ( V_y_2 = V_x_2
        <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ) ).

fof(fact_equalityE,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => ~ ( ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
         <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_Nitpick_Owf__wfrec_H__def,axiom,
    ! [V_x_2,V_Fa_2,V_R_2,T_a,T_b] : c_Nitpick_Owf__wfrec_H(T_b,T_a,V_R_2,V_Fa_2,V_x_2) = hAPP(hAPP(V_Fa_2,hAPP(hAPP(hAPP(c_Recdef_Ocut(T_b,T_a),c_Nitpick_Owf__wfrec(T_b,T_a,V_R_2,V_Fa_2)),V_R_2),V_x_2)),V_x_2) ).

fof(fact_restrict__in__funcset,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2)),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),V_B_2)) ) ) ).

fof(fact_irrefl__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Oirrefl(T_a,V_r_2)
    <=> ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2)) ) ).

fof(fact_converse__rtrancl__induct2,axiom,
    ! [V_Pa_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
     => ( hBOOL(hAPP(hAPP(V_Pa_2,V_bx_2),V_by_2))
       => ( hBOOL(hAPP(hAPP(V_Pa_2,V_ax_2),V_ay_2))
         <= ! [B_a,B_b,B_aa,B_ba] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba))),V_r_2))
             => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
               => ( hBOOL(hAPP(hAPP(V_Pa_2,B_aa),B_ba))
                 => hBOOL(hAPP(hAPP(V_Pa_2,B_a),B_b)) ) ) ) ) ) ) ).

fof(fact_Int__insert__left__if0,axiom,
    ! [V_B_2,V_C_2,V_aa_2,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_aa_2,V_B_2),V_C_2) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_C_2)) ) ).

fof(fact_wfrec__unique,axiom,
    ! [V_x_2,V_Fa_2,V_R_2,T_b,T_a] :
      ( ( c_Wellfounded_Owf(T_a,V_R_2)
       => ? [B_x] :
            ( ! [B_y] :
                ( hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,V_x_2),B_y))
               => B_x = B_y )
            & hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,V_x_2),B_x)) ) )
     <= c_Recdef_Oadm__wf(T_a,T_b,V_R_2,V_Fa_2) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_x)
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_trancl__trans,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(conj_0,conjecture,
    hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a_H____),v_b_H____)),hAPP(v_F,v_Q____))) ).

fof(fact_antisym__Id,axiom,
    ! [T_a] : c_Relation_Oantisym(T_a,c_Relation_OId(T_a)) ).

fof(fact_le__refl,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_n) ).

fof(fact_measure__def,axiom,
    ! [T_a] : hAPP(c_Relation_Oinv__image(tc_Nat_Onat,T_a),c_Wellfounded_Oless__than) = c_Wellfounded_Omeasure(T_a) ).

fof(fact_antisym__subset,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( ( c_Relation_Oantisym(T_a,V_r_2)
       <= c_Relation_Oantisym(T_a,V_s_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_acyclic__subset,axiom,
    ! [V_r_2,V_s_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_s_2)
     => ( c_Wellfounded_Oacyclic(T_a,V_r_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) ) ) ).

fof(fact_restrict__apply,axiom,
    ! [V_f_2,T_b,V_A_2,V_x_2,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2) = c_HOL_Oundefined(T_b) )
      & ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2) = hAPP(V_f_2,V_x_2) ) ) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(help_c__COMBK__1,axiom,
    ! [V_Q,V_P,T_b,T_a] : hAPP(c_COMBK(T_a,T_b,V_P),V_Q) = V_P ).

fof(fact_r__into__trancl_H,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless(T_a,V_z,V_y) )
       <= c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_insert__absorb,axiom,
    ! [V_A_2,V_aa_2,T_a] :
      ( c_Set_Oinsert(T_a,V_aa_2,V_A_2) = V_A_2
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_inf__left__idem,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y) = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_le__antisym,axiom,
    ! [V_n,V_m] :
      ( ( V_m = V_n
       <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_Int__left__commute,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_linorder__not__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
        | V_x = V_y
        | c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_Q__def,axiom,
    ! [V_i_2] : hAPP(v_Q____,V_i_2) = c_HOL_OLet(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),hAPP(hAPP(c_If(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),hAPP(hAPP(c_fequal,v_a____),v_a_H____)),hAPP(v_P____,V_i_2)),c_Arrow__Order__Mirabelle_Obelow(hAPP(v_P____,V_i_2),v_a_H____,v_a____)),hAPP(hAPP(c_COMBS(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_If(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),hAPP(hAPP(c_fequal,v_b____),v_b_H____))),hAPP(hAPP(c_COMBC(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),c_Arrow__Order__Mirabelle_Oabove),v_b____)),v_b_H____))) ).

fof(fact_wf__subset,axiom,
    ! [V_p_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_p_2,V_r_2)
       => c_Wellfounded_Owf(T_a,V_p_2) ) ) ).

fof(fact_antisym__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Oantisym(T_a,V_r_2)
    <=> ! [B_x,B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_y)),V_r_2))
         => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_x)),V_r_2))
           => B_x = B_y ) ) ) ).

fof(fact_wf__acc__iff,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
    <=> ! [B_x] : hBOOL(hAPP(hAPP(c_member(T_a),B_x),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_DomainI,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_converse__rtrancl__induct,axiom,
    ! [V_Pa_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(V_Pa_2,V_ba_2))
       => ( ! [B_y,B_z] :
              ( ( ( hBOOL(hAPP(V_Pa_2,B_y))
                 <= hBOOL(hAPP(V_Pa_2,B_z)) )
               <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_z)),V_r_2)) )
         => hBOOL(hAPP(V_Pa_2,V_aa_2)) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_x_2 != V_y_2
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
          | c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_le__inf__iff,axiom,
    ! [V_z_2,V_y_2,V_x_2,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y_2,V_z_2))
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_z_2) ) ) ) ).

fof(fact_rtrancl__trans,axiom,
    ! [V_c_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_insertE,axiom,
    ! [V_A_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       <= V_aa_2 != V_ba_2 )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Set_Oinsert(T_a,V_ba_2,V_A_2))) ) ).

fof(fact_Pi__I_H,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x))) ) ) ).

fof(fact_trancl__range,axiom,
    ! [V_r_2,T_a] : c_Relation_ORange(T_a,T_a,V_r_2) = c_Relation_ORange(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ).

fof(help_c__COMBI__1,axiom,
    ! [V_P,T_a] : hAPP(c_COMBI(T_a),V_P) = V_P ).

fof(fact_DomainP__Domain__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Relation_ODomain(T_a,T_b,V_r_2)))
    <=> c_Predicate_ODomainP(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2),V_x_2) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_subsetD,axiom,
    ! [V_c_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_in__inv__image,axiom,
    ! [V_f_2,V_r_2,T_b,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),hAPP(V_f_2,V_x_2)),hAPP(V_f_2,V_y_2))),V_r_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),hAPP(hAPP(c_Relation_Oinv__image(T_b,T_a),V_r_2),V_f_2))) ) ).

fof(fact_converse__rtranclp__into__rtranclp,axiom,
    ! [V_c_2,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( ( hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_ba_2),V_c_2))
       => hBOOL(hAPP(hAPP(c_Transitive__Closure_Ortranclp(T_a,V_r_2),V_aa_2),V_c_2)) )
     <= hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2)) ) ).

fof(fact_antisymD,axiom,
    ! [V_ba_2,V_aa_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2))
       => ( V_aa_2 = V_ba_2
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_aa_2)),V_r_2)) ) )
     <= c_Relation_Oantisym(T_a,V_r_2) ) ).

fof(fact_inf__Int__eq,axiom,
    ! [V_x_2,V_S_2,V_R_2,T_a] :
      ( hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2)),V_x_2))
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_R_2,V_S_2))) ) ).

fof(fact_rtranclp__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_r_2,V_s_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),c_Transitive__Closure_Ortranclp(T_a,V_r_2),c_Transitive__Closure_Ortranclp(T_a,V_s_2)) ) ).

fof(fact_rp__inv__image__rp,axiom,
    ! [V_f_2,T_b,V_Pa_2,T_a] :
      ( c_FunDef_Oreduction__pair(T_b,hAPP(hAPP(c_FunDef_Orp__inv__image(T_a,T_b),V_Pa_2),V_f_2))
     <= c_FunDef_Oreduction__pair(T_a,V_Pa_2) ) ).

fof(fact_less__than__def,axiom,
    c_Wellfounded_Oless__than = c_Transitive__Closure_Otrancl(tc_Nat_Onat,c_Wellfounded_Opred__nat) ).

fof(fact_Pi__anti__mono,axiom,
    ! [V_B_2,T_b,V_A_2,V_A_H_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_H_2,V_A_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2),c_FuncSet_OPi(T_a,T_b,V_A_H_2,V_B_2)) ) ).

fof(fact_wmax__insertI,axiom,
    ! [V_XS_2,V_x_2,V_YS_2,V_y_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_y_2),V_YS_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_prod(tc_Nat_Onat,tc_Nat_Onat)),V_x_2),V_y_2)),c_FunDef_Opair__leq))
       => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),c_Set_Oinsert(tc_prod(tc_Nat_Onat,tc_Nat_Onat),V_x_2,V_XS_2)),V_YS_2)),c_FunDef_Omax__weak))
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool))),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),V_XS_2),V_YS_2)),c_FunDef_Omax__weak)) ) ) ) ).

fof(fact_cuts__eq,axiom,
    ! [V_g_2,V_x_2,V_r_2,V_f_2,T_b,T_a] :
      ( ! [B_y] :
          ( hAPP(V_g_2,B_y) = hAPP(V_f_2,B_y)
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_x_2)),V_r_2)) )
    <=> hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_g_2),V_r_2),V_x_2) = hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_x_2) ) ).

fof(fact_acc_Osimps,axiom,
    ! [V_r_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2)))
    <=> ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),V_aa_2)),V_r_2))
         => hBOOL(hAPP(hAPP(c_member(T_a),B_x),c_Wellfounded_Oacc(T_a,V_r_2))) ) ) ).

fof(fact_tfl__cut__apply,axiom,
    ! [T_b,V_aa_2,V_x_2,T_a,B_f,B_R] :
      ( hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),B_f),B_R),V_aa_2),V_x_2) = hAPP(B_f,V_x_2)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_aa_2)),B_R)) ) ).

fof(fact_min__rpair__set,axiom,
    c_FunDef_Oreduction__pair(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),hAPP(hAPP(c_Product__Type_OPair(tc_fun(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),tc_HOL_Obool),tc_fun(tc_prod(tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool),tc_fun(tc_prod(tc_Nat_Onat,tc_Nat_Onat),tc_HOL_Obool)),tc_HOL_Obool)),c_FunDef_Omin__strict),c_FunDef_Omin__weak)) ).

fof(fact_wfrec__rel_Osimps,axiom,
    ! [V_a2_2,V_a1_2,V_Fa_2,V_R_2,T_b,T_a] :
      ( ? [B_g] :
          ( ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_a1_2)),V_R_2))
             => hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,B_z),hAPP(B_g,B_z))) )
          & hAPP(hAPP(V_Fa_2,B_g),V_a1_2) = V_a2_2 )
    <=> hBOOL(hAPP(c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_Fa_2,V_a1_2),V_a2_2)) ) ).

fof(fact_rtrancl__induct,axiom,
    ! [V_Pa_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(V_Pa_2,V_aa_2))
       => ( hBOOL(hAPP(V_Pa_2,V_ba_2))
         <= ! [B_y] :
              ( ! [B_z] :
                  ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_z)),V_r_2))
                 => ( hBOOL(hAPP(V_Pa_2,B_y))
                   => hBOOL(hAPP(V_Pa_2,B_z)) ) )
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),B_y)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_tranclD2,axiom,
    ! [V_R_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
     => ? [B_z] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_y_2)),V_R_2))
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_z)),c_Transitive__Closure_Ortrancl(T_a,V_R_2))) ) ) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_rtranclD,axiom,
    ! [V_R_2,V_ba_2,V_aa_2,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
          & V_ba_2 != V_aa_2 )
        | V_ba_2 = V_aa_2 )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2))) ) ).

fof(fact_split__twice,axiom,
    ! [V_p_2,V_g_2,T_e,T_d,V_f_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,T_a),V_f_2),hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_d,T_e,tc_prod(T_b,T_c)),V_g_2),V_p_2)) = hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_d,T_e,T_a),hAPP(hAPP(c_COMBB(tc_fun(T_e,tc_prod(T_b,T_c)),tc_fun(T_e,T_a),T_d),hAPP(c_COMBB(tc_prod(T_b,T_c),T_a,T_e),hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,T_a),V_f_2))),V_g_2)),V_p_2) ).

fof(fact_le__infI1,axiom,
    ! [V_b,V_x,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_x)
       => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b),V_x) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_subset__refl,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) ).

fof(fact_Pi__I,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x))) ) ) ).

fof(fact_tranclE,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( ~ ! [B_c] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),B_c)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_c),V_ba_2)),V_r_2)) )
       <= ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_x = V_y
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_le__neq__implies__less,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n)
       <= V_m != V_n )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_trancl__domain,axiom,
    ! [V_r_2,T_a] : c_Relation_ODomain(T_a,T_a,V_r_2) = c_Relation_ODomain(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ).

fof(fact_internal__split__conv,axiom,
    ! [V_ba_2,V_aa_2,V_c_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Ointernal__split(T_b,T_c,T_a),V_c_2),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) = hAPP(hAPP(V_c_2,V_aa_2),V_ba_2) ).

fof(fact_less__infI1,axiom,
    ! [V_b,V_x,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_a,V_b),V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_x) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Int__insert__right__if1,axiom,
    ! [V_B_2,V_A_2,V_aa_2,T_a] :
      ( c_Set_Oinsert(T_a,V_aa_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_aa_2,V_B_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_IIA__def,axiom,
    ! [V_Fa_2] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf))
         => ! [B_xa] :
              ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_xa),c_Arrow__Order__Mirabelle_OProf))
             => ! [B_a,B_b] :
                  ( ! [B_i] :
                      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_xa,B_i)))
                    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,B_i))) )
                 => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_xa)))
                  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_x))) ) ) ) )
    <=> c_Arrow__Order__Mirabelle_OIIA(V_Fa_2) ) ).

fof(fact_order__le__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_y_2 = V_x_2
          | c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_compose__def,axiom,
    ! [V_f_2,V_g_2,V_A_2,T_b,T_c,T_a] : c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_g_2,V_f_2) = c_FuncSet_Orestrict(T_a,T_b,hAPP(hAPP(c_COMBB(T_c,T_b,T_a),V_g_2),V_f_2),V_A_2) ).

fof(fact_adm__lemma,axiom,
    ! [V_Fa_2,V_R_2,T_b,T_a] : c_Recdef_Oadm__wf(T_a,T_b,V_R_2,hAPP(hAPP(c_COMBC(tc_fun(T_a,T_b),tc_fun(T_a,T_a),tc_fun(T_a,T_b)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(tc_fun(T_a,T_a),tc_fun(T_a,T_b)),tc_fun(T_a,T_b)),c_COMBS(T_a,T_a,T_b)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(T_a,T_b)),hAPP(c_COMBB(tc_fun(T_a,T_b),tc_fun(T_a,T_b),T_a),V_Fa_2)),hAPP(hAPP(c_COMBC(tc_fun(T_a,T_b),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_fun(T_a,T_b))),c_Recdef_Ocut(T_a,T_b)),V_R_2)))),c_COMBI(T_a))) ).

