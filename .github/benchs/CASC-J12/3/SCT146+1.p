fof(fact_Domain__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_ODomain(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) = V_A_2 ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_trans__lex__prod,axiom,
    ! [V_R2_2,T_b,V_R1_2,T_a] :
      ( c_Relation_Otrans(T_a,V_R1_2)
     => ( c_Relation_Otrans(tc_prod(T_a,T_b),c_Wellfounded_Olex__prod(T_a,T_b,V_R1_2,V_R2_2))
       <= c_Relation_Otrans(T_b,V_R2_2) ) ) ).

fof(fact_rtrancl__listrel1__ConsI2,axiom,
    ! [V_ys_2,V_xs_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_order__less__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & V_y_2 != V_x_2 )
      <=> c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_x_2 != V_y_2
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
          | c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact__C1_C,axiom,
    ! [V_P_Ha_2,V_Pa_2,V_b_H_2,V_a_H_2,V_ba_2,V_aa_2] :
      ( V_aa_2 != V_ba_2
     => ( ( V_aa_2 != V_b_H_2
         => ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_Pa_2),c_Arrow__Order__Mirabelle_OProf))
             => ( ( ! [B_i] :
                      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),hAPP(V_Pa_2,B_i)))
                    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_a_H_2),V_b_H_2)),hAPP(V_P_Ha_2,B_i))) )
                 => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_a_H_2),V_b_H_2)),hAPP(v_F,V_P_Ha_2)))
                   <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),hAPP(v_F,V_Pa_2))) ) )
               <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_P_Ha_2),c_Arrow__Order__Mirabelle_OProf)) ) )
           <= V_a_H_2 != V_ba_2 ) )
       <= V_a_H_2 != V_b_H_2 ) ) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ( ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2,V_f_2)
          & c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
      <=> c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(arity_fun__Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(T_1)
     => class_Lattices_Osemilattice__inf(tc_fun(T_2,T_1)) ) ).

fof(fact_append__Cons,axiom,
    ! [V_ys,V_xs,V_x,T_a] : hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) = hAPP(hAPP(c_List_Oappend(T_a),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs)),V_ys) ).

fof(fact_RangeP_Oequations,axiom,
    ! [V_a2_2,V_r_2,T_b,T_a] :
      ( ? [B_a] : hBOOL(hAPP(hAPP(V_r_2,B_a),V_a2_2))
    <=> c_Predicate_ORangeP(T_a,T_b,V_r_2,V_a2_2) ) ).

fof(fact_lexn__length,axiom,
    ! [V_n_2,V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olexn(T_a,V_r_2,V_n_2)))
     => ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys_2) = V_n_2
        & V_n_2 = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2) ) ) ).

fof(fact_less__imp__le__nat,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_listrel__trans,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(tc_List_Olist(T_a),c_List_Olistrel(T_a,V_r_2))
     <= c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_accp_Oequations,axiom,
    ! [V_aa_2,V_r_2,T_a] :
      ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2))
    <=> ! [B_x] :
          ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),B_x))
         <= hBOOL(hAPP(hAPP(V_r_2,B_x),V_aa_2)) ) ) ).

fof(fact_rtrancl__induct2,axiom,
    ! [V_Pa_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
     => ( hBOOL(hAPP(hAPP(V_Pa_2,V_ax_2),V_ay_2))
       => ( hBOOL(hAPP(hAPP(V_Pa_2,V_bx_2),V_by_2))
         <= ! [B_a,B_b] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
             => ! [B_aa,B_ba] :
                  ( ( hBOOL(hAPP(hAPP(V_Pa_2,B_a),B_b))
                   => hBOOL(hAPP(hAPP(V_Pa_2,B_aa),B_ba)) )
                 <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba))),V_r_2)) ) ) ) ) ) ).

fof(arity_Nat__Onat__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_Nat_Onat) ).

fof(fact_converse__rtrancl__into__rtrancl,axiom,
    ! [V_ca_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ca_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_ca_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2)) ) ).

fof(fact_listrel__subset,axiom,
    ! [V_A_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_HOL_Obool),c_List_Olistrel(T_a,V_r_2),c_Product__Type_OSigma(tc_List_Olist(T_a),tc_List_Olist(T_a),c_List_Olists(T_a,V_A_2),c_COMBK(tc_fun(tc_List_Olist(T_a),tc_HOL_Obool),tc_List_Olist(T_a),c_List_Olists(T_a,V_A_2))))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Product__Type_OSigma(T_a,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,V_A_2))) ) ).

fof(fact_Nil2__notin__lex,axiom,
    ! [V_r_2,V_xs_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),c_List_Olist_ONil(T_a))),c_List_Olex(T_a,V_r_2))) ).

fof(fact_curry__def,axiom,
    ! [V_y_2,V_x_2,V_ca_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Ocurry(T_b,T_c,T_a,V_ca_2),V_x_2),V_y_2) = hAPP(V_ca_2,hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_x_2),V_y_2)) ).

fof(fact_less__not__refl2,axiom,
    ! [V_m,V_n] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_m)
     => V_n != V_m ) ).

fof(fact_lexord__trans,axiom,
    ! [V_z_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_y_2),V_z_2)),c_List_Olexord(T_a,V_r_2)))
       => ( c_Relation_Otrans(T_a,V_r_2)
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_z_2)),c_List_Olexord(T_a,V_r_2))) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_y_2)),c_List_Olexord(T_a,V_r_2))) ) ).

fof(fact_Pi__I_H,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x)))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_RangeP__Range__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( c_Predicate_ORangeP(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2),V_x_2)
    <=> hBOOL(hAPP(hAPP(c_member(T_b),V_x_2),c_Relation_ORange(T_a,T_b,V_r_2))) ) ).

fof(fact_converse__rtranclE2,axiom,
    ! [V_r_2,V_zb_2,V_za_2,V_xb_2,V_xa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
     => ( ~ ! [B_a,B_b] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))),V_r_2))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))) )
       <= hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2) != hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2) ) ) ).

fof(fact_complete__Lin,axiom,
    ! [V_ba_2,V_aa_2] :
      ( V_aa_2 != V_ba_2
     => ? [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),B_x))
          & hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),B_x),c_Arrow__Order__Mirabelle_OLin)) ) ) ).

fof(fact_Lin__irrefl,axiom,
    ! [V_ba_2,V_aa_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_ba_2),V_aa_2)),V_L_2))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),V_L_2)) ) ) ).

fof(fact_inf_Ocommute,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),V_a)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_inf__sup__aci_I3_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_z))
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_lexord__transI,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(tc_List_Olist(T_a),c_List_Olexord(T_a,V_r_2))
     <= c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_le__eq__less__or__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> ( V_m_2 = V_n_2
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ) ).

fof(fact_rtrancl_Ortrancl__refl,axiom,
    ! [V_r_2,V_aa_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_aa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ).

fof(arity_Nat__Onat__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_Nat_Onat) ).

fof(fact_in__below,axiom,
    ! [V_y_2,V_x_2,V_L_2,V_ba_2,V_aa_2] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,V_L_2),V_aa_2),V_ba_2)))
        <=> ( ( V_aa_2 = V_y_2
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_ba_2)),V_L_2)) )
            & ( V_y_2 != V_aa_2
             => ( ( V_x_2 != V_aa_2
                 => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2)) )
                & ( V_aa_2 = V_x_2
                 => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_ba_2),V_y_2)),V_L_2))
                    | V_y_2 = V_ba_2 ) ) ) )
            & V_y_2 != V_x_2 ) )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) )
     <= V_ba_2 != V_aa_2 ) ).

fof(fact_acc__downwards,axiom,
    ! [V_ba_2,V_r_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_aa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(T_1)
     => class_Orderings_Opreorder(tc_fun(T_2,T_1)) ) ).

fof(fact_lexord__Nil__left,axiom,
    ! [V_r_2,V_y_2,T_a] :
      ( ? [B_a,B_x] : V_y_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),B_a),B_x)
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),V_y_2)),c_List_Olexord(T_a,V_r_2))) ) ).

fof(fact_in__above,axiom,
    ! [V_y_2,V_x_2,V_L_2,V_ba_2,V_aa_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
       => ( ( ( V_ba_2 != V_x_2
             => ( ( V_y_2 != V_ba_2
                 => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2)) )
                & ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_aa_2)),V_L_2))
                    | V_aa_2 = V_x_2 )
                 <= V_ba_2 = V_y_2 ) ) )
            & ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_y_2)),V_L_2))
             <= V_ba_2 = V_x_2 )
            & V_y_2 != V_x_2 )
        <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Oabove(V_L_2,V_aa_2,V_ba_2))) ) )
     <= V_aa_2 != V_ba_2 ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_y != V_x
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_butlast_Osimps_I1_J,axiom,
    ! [T_a] : c_List_Olist_ONil(T_a) = c_List_Obutlast(T_a,c_List_Olist_ONil(T_a)) ).

fof(fact_DomainE,axiom,
    ! [V_r_2,T_b,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ODomain(T_a,T_b,V_r_2)))
     => ~ ! [B_y] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),B_y)),V_r_2)) ) ).

fof(fact_listrel__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_HOL_Obool),c_List_Olistrel(T_a,V_r_2),c_List_Olistrel(T_a,V_s_2)) ) ).

fof(fact_in__measures_I1_J,axiom,
    ! [V_y_2,V_x_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_List_Omeasures(T_a,c_List_Olist_ONil(tc_fun(T_a,tc_Nat_Onat))))) ).

fof(fact_subset__psubset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)
       <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) ) ) ).

fof(fact_psubset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)
       <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_le__infI2,axiom,
    ! [V_a,V_x,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_x)
       => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),V_x) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_inf1I,axiom,
    ! [T_a,V_B_2,V_x_2,V_A_2] :
      ( hBOOL(hAPP(V_A_2,V_x_2))
     => ( hBOOL(hAPP(V_B_2,V_x_2))
       => hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2)) ) ) ).

fof(fact_inf__Int__eq2,axiom,
    ! [V_y_2,V_x_2,V_S_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2)),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2)),V_x_2),V_y_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),V_R_2),V_S_2))) ) ).

fof(fact_listrel1__eq__len,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,T_a] :
      ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys_2)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2))) ) ).

fof(fact_Int__greatest,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_B_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_A_2) ) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_distinct__takeWhile,axiom,
    ! [V_Pa_2,V_xs_2,T_a] :
      ( c_List_Odistinct(T_a,V_xs_2)
     => c_List_Odistinct(T_a,c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2)) ) ).

fof(fact_PiE,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     => ( ~ hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),hAPP(V_B_2,V_x_2)))
       => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_listrel__iff__nth,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,T_a] :
      ( ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)
        & ! [B_n] :
            ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),c_List_Onth(T_a,V_xs_2,B_n)),c_List_Onth(T_a,V_ys_2,B_n))),V_r_2))
           <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_n,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_inf__left__commute,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_z)) ) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_x != V_y
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_subset__image__iff,axiom,
    ! [V_A_2,V_f_2,T_b,V_B_2,T_a] :
      ( ? [B_AA] :
          ( c_Set_Oimage(T_b,T_a,V_f_2,B_AA) = V_B_2
          & c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),B_AA,V_A_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Set_Oimage(T_b,T_a,V_f_2,V_A_2)) ) ).

fof(fact_DomainP_Ointros,axiom,
    ! [T_b,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
     => c_Predicate_ODomainP(T_a,T_b,V_r_2,V_aa_2) ) ).

fof(fact_funcset__compose,axiom,
    ! [V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_c)),c_FuncSet_Ocompose(T_a,T_b,T_c,V_A_2,V_g_2,V_f_2)),c_FuncSet_OPi(T_a,T_c,V_A_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_a,V_C_2))))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_c)),V_g_2),c_FuncSet_OPi(T_b,T_c,V_B_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_b,V_C_2)))) ) ) ).

fof(fact_listsp_Oequations_I2_J,axiom,
    ! [V_a2_2,V_a1_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(V_A_2,V_a1_2))
        & hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),V_a2_2)) )
    <=> hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_a1_2),V_a2_2))) ) ).

fof(fact_splice__Nil2,axiom,
    ! [V_xs,T_a] : V_xs = c_List_Osplice(T_a,V_xs,c_List_Olist_ONil(T_a)) ).

fof(fact_listsp_ONil,axiom,
    ! [V_A_2,T_a] : hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),c_List_Olist_ONil(T_a))) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b) )
       <= V_a = V_b ) ) ).

fof(fact_prod_Osimps_I2_J,axiom,
    ! [V_ba_2,V_aa_2,V_f1_2,T_a,T_c,T_b] : hAPP(hAPP(V_f1_2,V_aa_2),V_ba_2) = hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,T_a),V_f1_2),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) ).

fof(fact_append__eq__appendI,axiom,
    ! [V_us,V_ys,V_zs,V_xs1,V_xs,T_a] :
      ( V_zs = hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_xs1)
     => ( hAPP(hAPP(c_List_Oappend(T_a),V_zs),V_us) = hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)
       <= V_ys = hAPP(hAPP(c_List_Oappend(T_a),V_xs1),V_us) ) ) ).

fof(fact_listrel1I,axiom,
    ! [V_ys_2,V_vs_2,V_us_2,V_xs_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2))
     => ( ( V_ys_2 = hAPP(hAPP(c_List_Oappend(T_a),V_us_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_vs_2))
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2))) )
       <= V_xs_2 = hAPP(hAPP(c_List_Oappend(T_a),V_us_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_vs_2)) ) ) ).

fof(fact_rtrancl__subset,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2)
     => ( c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Ortrancl(T_a,V_S_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_S_2,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ) ) ).

fof(fact_subsetD,axiom,
    ! [V_ca_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_Int__commute,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_A_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ).

fof(fact_takeWhile__nth,axiom,
    ! [V_xs_2,V_Pa_2,T_a,V_j_2] :
      ( c_List_Onth(T_a,c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2),V_j_2) = c_List_Onth(T_a,V_xs_2,V_j_2)
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_j_2,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2))) ) ).

fof(fact_lexord__Nil__right,axiom,
    ! [V_r_2,V_x_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),c_List_Olist_ONil(T_a))),c_List_Olexord(T_a,V_r_2))) ).

fof(fact_rtrancl__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2)) ) ).

fof(fact_linorder__neqE__nat,axiom,
    ! [V_y,V_x] :
      ( V_y != V_x
     => ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y) ) ) ).

fof(fact_inf__le2,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_y)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Int__left__absorb,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) ).

fof(fact_same__fstI,axiom,
    ! [T_a,V_R_2,V_y_2,V_y_H_2,T_b,V_x_2,V_Pa_2] :
      ( hBOOL(hAPP(V_Pa_2,V_x_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_H_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2))),c_Recdef_Osame__fst(T_a,T_b,V_Pa_2,V_R_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_y_H_2),V_y_2)),hAPP(V_R_2,V_x_2))) ) ) ).

fof(fact_inf2D2,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2))
     => hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2)) ) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(fact_below__Lin,axiom,
    ! [V_L_2,V_y_2,V_x_2] :
      ( V_y_2 != V_x_2
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,V_L_2),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_OLin))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) ) ) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_equalityD2,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
     <= V_A_2 = V_B_2 ) ).

fof(fact_inf__assoc,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)),V_z) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_snoc__eq__iff__butlast,axiom,
    ! [V_ys_2,V_x_2,V_xs_2,T_a] :
      ( V_ys_2 = hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),c_List_Olist_ONil(T_a)))
    <=> ( V_ys_2 != c_List_Olist_ONil(T_a)
        & V_xs_2 = c_List_Obutlast(T_a,V_ys_2)
        & c_List_Olast(T_a,V_ys_2) = V_x_2 ) ) ).

fof(fact_impossible__Cons,axiom,
    ! [V_x,V_ys,V_xs,T_a] :
      ( V_xs != hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_ys)
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs),c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys)) ) ).

fof(fact_set__mp,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_append__listrel1I,axiom,
    ! [V_vs_2,V_us_2,V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_us_2)),hAPP(hAPP(c_List_Oappend(T_a),V_ys_2),V_vs_2))),c_List_Olistrel1(T_a,V_r_2)))
     <= ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2)))
          & V_vs_2 = V_us_2 )
        | ( V_ys_2 = V_xs_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_us_2),V_vs_2)),c_List_Olistrel1(T_a,V_r_2))) ) ) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(fact_Sigma__Int__distrib1,axiom,
    ! [V_C_2,V_J_2,V_I_2,T_b,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),c_Product__Type_OSigma(T_a,T_b,V_I_2,V_C_2)),c_Product__Type_OSigma(T_a,T_b,V_J_2,V_C_2)) = c_Product__Type_OSigma(T_a,T_b,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_J_2),V_C_2) ).

fof(fact_Domain__Int__subset,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),V_A_2),V_B_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),c_Relation_ODomain(T_a,T_b,V_A_2)),c_Relation_ODomain(T_a,T_b,V_B_2))) ).

fof(fact_IntE,axiom,
    ! [V_B_2,V_A_2,V_ca_2,T_a] :
      ( ~ ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2))
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_rev__image__eqI,axiom,
    ! [T_b,V_f_2,V_ba_2,V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => ( hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),c_Set_Oimage(T_a,T_b,V_f_2,V_A_2)))
       <= hAPP(V_f_2,V_x_2) = V_ba_2 ) ) ).

fof(fact_list__eq__iff__nth__eq,axiom,
    ! [T_a,V_ys_2,V_xs_2] :
      ( ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys_2)
        & ! [B_i] :
            ( c_List_Onth(T_a,V_xs_2,B_i) = c_List_Onth(T_a,V_ys_2,B_i)
           <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_i,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) ) )
    <=> V_ys_2 = V_xs_2 ) ).

fof(fact_butlast_Osimps_I2_J,axiom,
    ! [V_x,T_a,V_xs] :
      ( ( c_List_Obutlast(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs)) = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),c_List_Obutlast(T_a,V_xs))
       <= c_List_Olist_ONil(T_a) != V_xs )
      & ( c_List_Olist_ONil(T_a) = c_List_Obutlast(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs))
       <= c_List_Olist_ONil(T_a) = V_xs ) ) ).

fof(fact_curry__conv,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Ocurry(T_b,T_c,T_a,V_f_2),V_aa_2),V_ba_2) = hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) ).

fof(fact_Pi__cong,axiom,
    ! [V_B_2,T_b,V_g_2,V_f_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
      <=> hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) )
     <= ! [B_w] :
          ( hAPP(V_g_2,B_w) = hAPP(V_f_2,B_w)
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_w),V_A_2)) ) ) ).

fof(fact_acc__subset,axiom,
    ! [V_R2_2,V_R1_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R1_2,V_R2_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Oacc(T_a,V_R2_2),c_Wellfounded_Oacc(T_a,V_R1_2)) ) ).

fof(fact_list_Oinject,axiom,
    ! [V_list_H_2,V_a_H_2,V_list_2,V_aa_2,T_a] :
      ( ( V_a_H_2 = V_aa_2
        & V_list_2 = V_list_H_2 )
    <=> hAPP(hAPP(c_List_Olist_OCons(T_a),V_a_H_2),V_list_H_2) = hAPP(hAPP(c_List_Olist_OCons(T_a),V_aa_2),V_list_2) ) ).

fof(fact_rotate1__def,axiom,
    ! [V_xs_2,T_a] : c_List_Olist_Olist__case(tc_List_Olist(T_a),T_a,c_List_Olist_ONil(T_a),hAPP(hAPP(c_COMBB(tc_List_Olist(T_a),tc_fun(tc_List_Olist(T_a),tc_List_Olist(T_a)),T_a),hAPP(c_COMBC(tc_List_Olist(T_a),tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Oappend(T_a))),hAPP(hAPP(c_COMBC(T_a,tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_OCons(T_a)),c_List_Olist_ONil(T_a))),V_xs_2) = c_List_Orotate1(T_a,V_xs_2) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( V_y_2 = V_x_2
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_le__inf__iff,axiom,
    ! [V_z_2,V_y_2,V_x_2,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y_2),V_z_2))
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_z_2) ) ) ) ).

fof(fact_iff,axiom,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_P____,B_i)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_a____)),hAPP(v_P_H____,B_i))) ) ).

fof(fact__096ALL_Ai_O_A_Ia_A_060_092_060_094bsub_062below_A_IP_Ai_J_Ac_Ab_092_060_094esub_062_Ac_J_A_061_A_Ib_A_060_092_060_094bsub_062below_A_Ibelow_A_IP_Ai_J_Ac_Ab_J_Ab_Aa_092_060_094esub_062_Ac_J_096,axiom,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_c____)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(v_P____,B_i)),v_c____),v_b____)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_c____)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(v_P____,B_i)),v_c____),v_b____)),v_b____),v_a____))) ) ).

fof(fact_dropWhile__eq__Cons__conv,axiom,
    ! [V_ys_2,V_y_2,V_xs_2,V_Pa_2,T_a] :
      ( ( hAPP(hAPP(c_List_Oappend(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2)) = V_xs_2
        & ~ hBOOL(hAPP(V_Pa_2,V_y_2)) )
    <=> hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2) = c_List_OdropWhile(T_a,V_Pa_2,V_xs_2) ) ).

fof(fact_append__self__conv,axiom,
    ! [V_ys_2,V_xs_2,T_a] :
      ( hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) = V_xs_2
    <=> c_List_Olist_ONil(T_a) = V_ys_2 ) ).

fof(fact__096_I_Fp_O_Abelow_A_IP_Ap_J_Ac_Ab_J_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____)),c_Arrow__Order__Mirabelle_OProf)) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(fact_Id__on__eqI,axiom,
    ! [V_A_2,T_a,V_ba_2,V_aa_2] :
      ( V_ba_2 = V_aa_2
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Relation_OId__on(T_a,V_A_2))) ) ) ).

fof(fact_append__in__lists__conv,axiom,
    ! [V_A_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2)),c_List_Olists(T_a,V_A_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_ys_2),c_List_Olists(T_a,V_A_2)))
        & hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_List_Olists(T_a,V_A_2))) ) ) ).

fof(fact__096_B_Bthesis_O_A_I_B_Bc_O_Adistinct_A_091a_M_Ab_M_Ac_093_A_061_061_062_Athesis_J_A_061_061_062_Athesis_096,axiom,
    ~ ! [B_c] : ~ c_List_Odistinct(tc_Arrow__Order__Mirabelle_Oalt,hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),v_a____),hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),v_b____),hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),B_c),c_List_Olist_ONil(tc_Arrow__Order__Mirabelle_Oalt))))) ).

fof(fact_length__rotate1,axiom,
    ! [V_xs,T_a] : c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_Orotate1(T_a,V_xs)) ).

fof(fact_listrelp_ONil,axiom,
    ! [V_r_2,T_a] : c_List_Olistrelp(T_a,V_r_2,c_List_Olist_ONil(T_a),c_List_Olist_ONil(T_a)) ).

fof(fact_lexord__append__left__rightI,axiom,
    ! [V_y_2,V_x_2,V_u_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Oappend(T_a),V_u_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_aa_2),V_x_2))),hAPP(hAPP(c_List_Oappend(T_a),V_u_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_ba_2),V_y_2)))),c_List_Olexord(T_a,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2)) ) ).

fof(fact_inf_Oidem,axiom,
    ! [V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => V_a = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_a) ) ).

fof(fact_pred__equals__eq2,axiom,
    ! [V_S_2,V_R_2,T_b,T_a] :
      ( hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2) = hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2)
    <=> V_R_2 = V_S_2 ) ).

fof(fact_listrel__rtrancl__eq__rtrancl__listrel1,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2)) = c_List_Olistrel(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(help_c__COMBS__1,axiom,
    ! [V_R_2,V_Q_2,V_Pa_2,T_a,T_c,T_b] : hAPP(hAPP(hAPP(c_COMBS(T_b,T_c,T_a),V_Pa_2),V_Q_2),V_R_2) = hAPP(hAPP(V_Pa_2,V_R_2),hAPP(V_Q_2,V_R_2)) ).

fof(fact_last__appendR,axiom,
    ! [V_xs,T_a,V_ys] :
      ( c_List_Olast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) = c_List_Olast(T_a,V_ys)
     <= c_List_Olist_ONil(T_a) != V_ys ) ).

fof(fact_Id__onE,axiom,
    ! [V_A_2,V_ca_2,T_a] :
      ( ~ ! [B_x] :
            ( V_ca_2 != hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)
           <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_ca_2),c_Relation_OId__on(T_a,V_A_2))) ) ).

fof(fact_split__paired__All,axiom,
    ! [T_b,T_a,V_Pa_2] :
      ( ! [B_x1] : hBOOL(hAPP(V_Pa_2,B_x1))
    <=> ! [B_a,B_b] : hBOOL(hAPP(V_Pa_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))) ) ).

fof(fact_takeWhile__tail,axiom,
    ! [V_l_2,V_xs_2,T_a,V_x_2,V_Pa_2] :
      ( ~ hBOOL(hAPP(V_Pa_2,V_x_2))
     => c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2) = c_List_OtakeWhile(T_a,V_Pa_2,hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_l_2))) ) ).

fof(fact_image__image,axiom,
    ! [V_A_2,V_g_2,T_c,V_f_2,T_a,T_b] : c_Set_Oimage(T_c,T_a,hAPP(hAPP(c_COMBB(T_b,T_a,T_c),V_f_2),V_g_2),V_A_2) = c_Set_Oimage(T_b,T_a,V_f_2,c_Set_Oimage(T_c,T_b,V_g_2,V_A_2)) ).

fof(fact_inf__greatest,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_nat__less__cases,axiom,
    ! [V_Pa_2,V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
       => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) )
     => ( ( V_n_2 = V_m_2
         => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) )
       => ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2)
           => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) )
         => hBOOL(hAPP(hAPP(V_Pa_2,V_n_2),V_m_2)) ) ) ) ).

fof(fact_split__weak__cong,axiom,
    ! [V_ca_2,T_c,T_b,T_a,V_q_2,V_p_2] :
      ( V_p_2 = V_q_2
     => hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),V_ca_2),V_p_2) = hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),V_ca_2),V_q_2) ) ).

fof(fact_psubsetD,axiom,
    ! [V_ca_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2)) )
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_internal__split__conv,axiom,
    ! [V_ba_2,V_aa_2,V_ca_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Ointernal__split(T_b,T_c,T_a),V_ca_2),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) = hAPP(hAPP(V_ca_2,V_aa_2),V_ba_2) ).

fof(fact_less__not__refl,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_lists_ONil,axiom,
    ! [V_A_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),c_List_Olists(T_a,V_A_2))) ).

fof(fact_insert__Nil,axiom,
    ! [V_x,T_a] : c_List_Oinsert(T_a,V_x,c_List_Olist_ONil(T_a)) = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),c_List_Olist_ONil(T_a)) ).

fof(fact_append__Nil2,axiom,
    ! [V_xs,T_a] : hAPP(hAPP(c_List_Oappend(T_a),V_xs),c_List_Olist_ONil(T_a)) = V_xs ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_override__on__apply__in,axiom,
    ! [V_g_2,V_f_2,T_b,V_A_2,V_aa_2,T_a] :
      ( c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2) = hAPP(V_g_2,V_aa_2)
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_IntI,axiom,
    ! [V_B_2,V_A_2,V_ca_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2)) ) ).

fof(fact_acc_Osimps,axiom,
    ! [V_r_2,V_aa_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),c_Wellfounded_Oacc(T_a,V_r_2)))
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),V_aa_2)),V_r_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_c,V_a) )
       <= V_a = V_b ) ) ).

fof(fact_prod_Orecs,axiom,
    ! [V_ba_2,V_aa_2,V_f1_2,T_a,T_c,T_b] : hAPP(hAPP(V_f1_2,V_aa_2),V_ba_2) = c_Product__Type_Oprod_Oprod__rec(T_b,T_c,T_a,V_f1_2,hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_a != V_b
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ) ).

fof(fact_single__valued__def,axiom,
    ! [V_r_2,T_b,T_a] :
      ( ! [B_x,B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_y)),V_r_2))
         => ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_z)),V_r_2))
             => B_z = B_y ) )
    <=> c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_snoc__listrel1__snoc__iff,axiom,
    ! [V_r_2,V_y_2,V_ys_2,V_x_2,V_xs_2,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2))
          & V_ys_2 = V_xs_2 )
        | ( V_x_2 = V_y_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2))) ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),c_List_Olist_ONil(T_a)))),hAPP(hAPP(c_List_Oappend(T_a),V_ys_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),c_List_Olist_ONil(T_a))))),c_List_Olistrel1(T_a,V_r_2))) ) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_x_2 = V_y_2
        <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) ) ) ).

fof(fact_subset__refl,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( ! [B_x] : hAPP(V_g_2,B_x) = hAPP(V_f_2,B_x)
     => V_g_2 = V_f_2 ) ).

fof(fact_listrel_ONil,axiom,
    ! [V_r_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),c_List_Olist_ONil(T_a))),c_List_Olistrel(T_a,V_r_2))) ).

fof(fact_const__Lin__Prof,axiom,
    ! [V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),c_COMBK(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_Arrow__Order__Mirabelle_Oindi,V_L_2)),c_Arrow__Order__Mirabelle_OProf)) ) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(tc_fun(T_2,T_1))
     <= class_Orderings_Oorder(T_1) ) ).

fof(fact_le__iff__inf,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> V_x_2 = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x_2),V_y_2) ) ) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(fact_less__infI1,axiom,
    ! [V_b,V_x,V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_x) ) ) ).

fof(fact_splitD,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_f_2,V_aa_2),V_ba_2))
     <= hBOOL(hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,tc_HOL_Obool),V_f_2),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2))) ) ).

fof(fact_listrelp_Oequations_I2_J,axiom,
    ! [V_a4_2,V_a2_2,V_a3_2,V_a1_2,V_r_2,T_a] :
      ( c_List_Olistrelp(T_a,V_r_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_a1_2),V_a3_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_a2_2),V_a4_2))
    <=> ( c_List_Olistrelp(T_a,V_r_2,V_a3_2,V_a4_2)
        & hBOOL(hAPP(hAPP(V_r_2,V_a1_2),V_a2_2)) ) ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( V_y_2 = V_x_2
      | ~ hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2)) ) ).

fof(fact_append__assoc,axiom,
    ! [V_zs,V_ys,V_xs,T_a] : hAPP(hAPP(c_List_Oappend(T_a),V_xs),hAPP(hAPP(c_List_Oappend(T_a),V_ys),V_zs)) = hAPP(hAPP(c_List_Oappend(T_a),hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)),V_zs) ).

fof(fact_nth__length__takeWhile,axiom,
    ! [V_xs_2,V_Pa_2,T_a] :
      ( ~ hBOOL(hAPP(V_Pa_2,c_List_Onth(T_a,V_xs_2,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2)))))
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2)),c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) ) ).

fof(fact_list_Osimps_I4_J,axiom,
    ! [V_f2_2,V_f1_2,T_b,T_a] : c_List_Olist_Olist__case(T_a,T_b,V_f1_2,V_f2_2,c_List_Olist_ONil(T_b)) = V_f1_2 ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(fact_image__Int__subset,axiom,
    ! [V_B_2,V_A_2,V_f_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Set_Oimage(T_b,T_a,V_f_2,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),c_Set_Oimage(T_b,T_a,V_f_2,V_A_2)),c_Set_Oimage(T_b,T_a,V_f_2,V_B_2))) ).

fof(fact_trancl__subset__Sigma__aux,axiom,
    ! [V_A_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
          | V_aa_2 = V_ba_2 )
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Product__Type_OSigma(T_a,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,V_A_2))) ) ) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(fact_in__measures_I2_J,axiom,
    ! [V_fs_2,V_f_2,V_y_2,V_x_2,T_a] :
      ( ( ( hAPP(V_f_2,V_x_2) = hAPP(V_f_2,V_y_2)
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_List_Omeasures(T_a,V_fs_2))) )
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_List_Omeasures(T_a,hAPP(hAPP(c_List_Olist_OCons(tc_fun(T_a,tc_Nat_Onat)),V_f_2),V_fs_2)))) ) ).

fof(fact_self__append__conv2,axiom,
    ! [V_xs_2,T_a,V_ys_2] :
      ( V_xs_2 = c_List_Olist_ONil(T_a)
    <=> hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) = V_ys_2 ) ).

fof(fact_surj__compose,axiom,
    ! [V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_a,T_b] :
      ( c_Set_Oimage(T_b,T_a,V_f_2,V_A_2) = V_B_2
     => ( V_C_2 = c_Set_Oimage(T_a,T_c,V_g_2,V_B_2)
       => c_Set_Oimage(T_b,T_c,c_FuncSet_Ocompose(T_b,T_a,T_c,V_A_2,V_g_2,V_f_2),V_A_2) = V_C_2 ) ) ).

fof(fact_Pi__mono,axiom,
    ! [V_C_2,V_B_2,T_b,V_A_2,T_a] :
      ( ! [B_x] :
          ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),hAPP(V_B_2,B_x),hAPP(V_C_2,B_x))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_C_2)) ) ).

fof(fact_splice_Osimps_I2_J,axiom,
    ! [V_va,V_v,T_a] : hAPP(hAPP(c_List_Olist_OCons(T_a),V_v),V_va) = c_List_Osplice(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_v),V_va),c_List_Olist_ONil(T_a)) ).

fof(fact_compose__eq,axiom,
    ! [V_f_2,V_g_2,T_b,T_c,V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => hAPP(V_g_2,hAPP(V_f_2,V_x_2)) = hAPP(c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_g_2,V_f_2),V_x_2) ) ).

fof(help_c__fNot__1,axiom,
    ! [V_Pa_2] :
      ( ~ hBOOL(hAPP(c_fNot,V_Pa_2))
      | ~ hBOOL(V_Pa_2) ) ).

fof(fact_acc_OaccI,axiom,
    ! [V_r_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2)))
     <= ! [B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_x_2)),V_r_2))
         => hBOOL(hAPP(hAPP(c_member(T_a),B_y),c_Wellfounded_Oacc(T_a,V_r_2))) ) ) ).

fof(fact_pred__subset__eq,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_R_2,V_S_2) ) ).

fof(fact_split__curry,axiom,
    ! [V_f_2,T_c,T_b,T_a] : hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),c_Product__Type_Ocurry(T_a,T_b,T_c,V_f_2)) = V_f_2 ).

fof(fact_nth__eq__iff__index__eq,axiom,
    ! [V_j_2,V_i_2,V_xs_2,T_a] :
      ( ( ( ( V_j_2 = V_i_2
          <=> c_List_Onth(T_a,V_xs_2,V_i_2) = c_List_Onth(T_a,V_xs_2,V_j_2) )
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_j_2,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) )
       <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_i_2,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) )
     <= c_List_Odistinct(T_a,V_xs_2) ) ).

fof(fact_curryE,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)))
     <= hBOOL(hAPP(hAPP(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2),V_aa_2),V_ba_2)) ) ).

fof(fact_Cons__in__lex,axiom,
    ! [V_r_2,V_ys_2,V_y_2,V_xs_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))),c_List_Olex(T_a,V_r_2)))
    <=> ( ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys_2)
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) )
        | ( V_y_2 = V_x_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olex(T_a,V_r_2))) ) ) ) ).

fof(fact__096ALL_Ai_O_A_Ia_A_060_092_060_094bsub_062P_Ai_092_060_094esub_062_Ab_J_A_061_A_Ia_A_060_092_060_094bsub_062below_A_IP_Ai_J_Ac_Ab_092_060_094esub_062_Ac_J_096,axiom,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_c____)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(v_P____,B_i)),v_c____),v_b____)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_P____,B_i))) ) ).

fof(fact_listsp__infI,axiom,
    ! [V_B_2,V_l_2,V_A_2,T_a] :
      ( hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),V_l_2))
     => ( hBOOL(hAPP(c_List_Olistsp(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),V_l_2))
       <= hBOOL(hAPP(c_List_Olistsp(T_a,V_B_2),V_l_2)) ) ) ).

fof(fact_le__neq__implies__less,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     => ( V_n != V_m
       => c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) ) ) ).

fof(fact_Domain__iff,axiom,
    ! [V_r_2,T_b,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ODomain(T_a,T_b,V_r_2)))
    <=> ? [B_y] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),B_y)),V_r_2)) ) ).

fof(fact_mem__splitE,axiom,
    ! [V_p_2,V_ca_2,T_c,T_b,V_z_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_z_2),hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,tc_fun(T_a,tc_HOL_Obool)),V_ca_2),V_p_2)))
     => ~ ! [B_x,B_y] :
            ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_z_2),hAPP(hAPP(V_ca_2,B_x),B_y)))
           <= hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),B_x),B_y) = V_p_2 ) ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x) ) ).

fof(fact_equalityE,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_B_2 = V_A_2
     => ~ ( ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
         <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_Sigma__Int__distrib2,axiom,
    ! [V_B_2,V_A_2,V_I_2,T_b,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),c_Product__Type_OSigma(T_a,T_b,V_I_2,V_A_2)),c_Product__Type_OSigma(T_a,T_b,V_I_2,V_B_2)) = c_Product__Type_OSigma(T_a,T_b,V_I_2,hAPP(hAPP(c_COMBS(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2)) ).

fof(fact_linorder__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) ) ) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_r__into__rtrancl,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_Pair__eq,axiom,
    ! [V_b_H_2,V_a_H_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( ( V_b_H_2 = V_ba_2
        & V_aa_2 = V_a_H_2 )
    <=> hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2) = hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_H_2),V_b_H_2) ) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
       <= V_x != V_y ) ) ).

fof(fact_acc__downwards__aux,axiom,
    ! [V_r_2,V_aa_2,V_ba_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Wellfounded_Oacc(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_aa_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_inf__sup__aci_I4_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) ) ).

fof(fact_eqelem__imp__iff,axiom,
    ! [V_A_2,T_a,V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2))
      <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= V_y_2 = V_x_2 ) ).

fof(arity_HOL__Obool__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_HOL_Obool) ).

fof(fact_less__infI2,axiom,
    ! [V_a,V_x,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_x) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_split__eta,axiom,
    ! [V_f_2,T_c,T_b,T_a] : hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,T_c),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),T_c,T_b),V_f_2)),c_Product__Type_OPair(T_a,T_b))) = V_f_2 ).

fof(fact_inf__apply,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_b,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(V_f_2,V_x_2)),hAPP(V_g_2,V_x_2)) = hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,T_a)),V_f_2),V_g_2),V_x_2) ) ).

fof(fact_unanimity__def,axiom,
    ! [V_Fa_2] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf))
         => ! [B_a,B_b] :
              ( ! [B_i] : hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,B_i)))
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_x))) ) )
    <=> c_Arrow__Order__Mirabelle_Ounanimity(V_Fa_2) ) ).

fof(fact_listrel1E,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2)))
     => ~ ! [B_x,B_y] :
            ( ! [B_us,B_vs] :
                ( hAPP(hAPP(c_List_Oappend(T_a),B_us),hAPP(hAPP(c_List_Olist_OCons(T_a),B_y),B_vs)) != V_ys_2
               <= V_xs_2 = hAPP(hAPP(c_List_Oappend(T_a),B_us),hAPP(hAPP(c_List_Olist_OCons(T_a),B_x),B_vs)) )
           <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_y)),V_r_2)) ) ) ).

fof(fact_IntD1,axiom,
    ! [V_B_2,V_A_2,V_ca_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2)) ) ).

fof(arity_HOL__Obool__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_HOL_Obool) ).

fof(fact_image__iff,axiom,
    ! [V_A_2,V_f_2,T_b,V_z_2,T_a] :
      ( ? [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
          & hAPP(V_f_2,B_x) = V_z_2 )
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_z_2),c_Set_Oimage(T_b,T_a,V_f_2,V_A_2))) ) ).

fof(fact_dictator__def,axiom,
    ! [V_i_2,V_Fa_2] :
      ( c_Arrow__Order__Mirabelle_Odictator(V_Fa_2,V_i_2)
    <=> ! [B_x] :
          ( hAPP(V_Fa_2,B_x) = hAPP(B_x,V_i_2)
         <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf)) ) ) ).

fof(fact_le__infE,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b))
       => ~ ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a)
           => ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b) ) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Int__iff,axiom,
    ! [V_B_2,V_A_2,V_ca_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2))
        & hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2)) ) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_SigmaD1,axiom,
    ! [V_B_2,V_A_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_lists__Int__eq,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_List_Olist(T_a),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_List_Olist(T_a),tc_fun(tc_List_Olist(T_a),tc_HOL_Obool),tc_HOL_Obool),c_member(tc_List_Olist(T_a))),c_List_Olists(T_a,V_A_2))),hAPP(hAPP(c_COMBC(tc_List_Olist(T_a),tc_fun(tc_List_Olist(T_a),tc_HOL_Obool),tc_HOL_Obool),c_member(tc_List_Olist(T_a))),c_List_Olists(T_a,V_B_2))) = c_List_Olistsp(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_A_2)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_B_2))) ).

fof(fact_inf_Oleft__idem,axiom,
    ! [V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Int__mono,axiom,
    ! [V_D_2,V_B_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_D_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_D_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_Cons__listrel1E1,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,V_x_2,T_a] :
      ( ( ! [B_y] :
            ( V_ys_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),B_y),V_xs_2)
           => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_y)),V_r_2)) )
       => ~ ! [B_zs] :
              ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),B_zs)),c_List_Olistrel1(T_a,V_r_2)))
             <= V_ys_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),B_zs) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),V_ys_2)),c_List_Olistrel1(T_a,V_r_2))) ) ).

fof(fact_lists__IntI,axiom,
    ! [V_B_2,V_A_2,V_l_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_l_2),c_List_Olists(T_a,V_A_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_l_2),c_List_Olists(T_a,V_B_2)))
       => hBOOL(hAPP(c_List_Olistsp(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_A_2)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_B_2))),V_l_2)) ) ) ).

fof(fact_list_Osimps_I5_J,axiom,
    ! [V_list_2,V_aa_2,V_f2_2,V_f1_2,T_b,T_a] : c_List_Olist_Olist__case(T_a,T_b,V_f1_2,V_f2_2,hAPP(hAPP(c_List_Olist_OCons(T_b),V_aa_2),V_list_2)) = hAPP(hAPP(V_f2_2,V_aa_2),V_list_2) ).

fof(fact_single__valued__confluent,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
            | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_z_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) )
     <= c_Relation_Osingle__valued(T_a,T_a,V_r_2) ) ).

fof(fact_third__alt,axiom,
    ! [V_b,V_a] :
      ( V_a != V_b
     => ? [B_c] : c_List_Odistinct(tc_Arrow__Order__Mirabelle_Oalt,hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),V_a),hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),V_b),hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),B_c),c_List_Olist_ONil(tc_Arrow__Order__Mirabelle_Oalt))))) ) ).

fof(fact_listrel_OCons,axiom,
    ! [V_ys_2,V_xs_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))),c_List_Olistrel(T_a,V_r_2))) ) ) ).

fof(fact_set__rev__mp,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ).

fof(fact_Nil__is__append__conv,axiom,
    ! [V_ys_2,V_xs_2,T_a] :
      ( ( c_List_Olist_ONil(T_a) = V_xs_2
        & c_List_Olist_ONil(T_a) = V_ys_2 )
    <=> c_List_Olist_ONil(T_a) = hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) ) ).

fof(fact_RangeI,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),c_Relation_ORange(T_a,T_b,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_r_2)) ) ).

fof(fact_imageI,axiom,
    ! [V_f_2,T_b,V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),c_Set_Oimage(T_a,T_b,V_f_2,V_A_2)))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ).

fof(fact_Times__eq__cancel2,axiom,
    ! [V_B_2,V_A_2,T_b,V_C_2,V_x_2,T_a] :
      ( ( V_B_2 = V_A_2
      <=> c_Product__Type_OSigma(T_b,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_b,V_C_2)) = c_Product__Type_OSigma(T_b,T_a,V_B_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_b,V_C_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_C_2)) ) ).

fof(help_c__fconj__1,axiom,
    ! [V_Q_2,V_Pa_2] :
      ( ~ hBOOL(V_Q_2)
      | hBOOL(hAPP(hAPP(c_fconj,V_Pa_2),V_Q_2))
      | ~ hBOOL(V_Pa_2) ) ).

fof(fact_accp__subset,axiom,
    ! [V_R2_2,V_R1_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Oaccp(T_a,V_R2_2),c_Wellfounded_Oaccp(T_a,V_R1_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_R1_2,V_R2_2) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_nat__neq__iff,axiom,
    ! [V_n_2,V_m_2] :
      ( ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n_2,V_m_2) )
    <=> V_m_2 != V_n_2 ) ).

fof(fact_last__snoc,axiom,
    ! [V_x,V_xs,T_a] : c_List_Olast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),c_List_Olist_ONil(T_a)))) = V_x ).

fof(fact_rtrancl_Ortrancl__into__rtrancl,axiom,
    ! [V_ca_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_ca_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ca_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_subset__iff__psubset__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( ( V_A_2 = V_B_2
        | c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_listsp__mono,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_List_Olist(T_a),tc_HOL_Obool),c_List_Olistsp(T_a,V_A_2),c_List_Olistsp(T_a,V_B_2)) ) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_y_2 = V_x_2
          | c_Orderings_Oord__class_Oless(T_a,V_y_2,V_x_2) )
      <=> ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_inf__fun__def,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_b,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(V_f_2,V_x_2)),hAPP(V_g_2,V_x_2)) = hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,T_a)),V_f_2),V_g_2),V_x_2)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_inf1D2,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2))
     => hBOOL(hAPP(V_B_2,V_x_2)) ) ).

fof(fact_listsp__conj__eq,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(c_List_Olistsp(T_a,hAPP(hAPP(c_COMBS(T_a,tc_HOL_Obool,tc_HOL_Obool),hAPP(hAPP(c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),T_a),c_fconj),V_A_2)),V_B_2)),V_x_2))
    <=> ( hBOOL(hAPP(c_List_Olistsp(T_a,V_B_2),V_x_2))
        & hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),V_x_2)) ) ) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_image__ident,axiom,
    ! [V_Y_2,T_a] : V_Y_2 = c_Set_Oimage(T_a,T_a,c_COMBI(T_a),V_Y_2) ).

fof(fact_self__append__conv,axiom,
    ! [V_ys_2,T_a,V_xs_2] :
      ( hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) = V_xs_2
    <=> V_ys_2 = c_List_Olist_ONil(T_a) ) ).

fof(fact_append__is__Nil__conv,axiom,
    ! [V_ys_2,V_xs_2,T_a] :
      ( ( c_List_Olist_ONil(T_a) = V_xs_2
        & V_ys_2 = c_List_Olist_ONil(T_a) )
    <=> c_List_Olist_ONil(T_a) = hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) ) ).

fof(fact_Range__Id__on,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Relation_ORange(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_inf1D1,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2))
     => hBOOL(hAPP(V_A_2,V_x_2)) ) ).

fof(fact_prod__caseI,axiom,
    ! [T_b,T_a,V_ba_2,V_aa_2,V_f1_2] :
      ( hBOOL(hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,tc_HOL_Obool),V_f1_2),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)))
     <= hBOOL(hAPP(hAPP(V_f1_2,V_aa_2),V_ba_2)) ) ).

fof(fact_image__eqI,axiom,
    ! [T_a,V_A_2,T_b,V_x_2,V_f_2,V_ba_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_b),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Set_Oimage(T_b,T_a,V_f_2,V_A_2))) )
     <= hAPP(V_f_2,V_x_2) = V_ba_2 ) ).

fof(fact_listrel__subset__rtrancl__listrel1,axiom,
    ! [V_r_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_HOL_Obool),c_List_Olistrel(T_a,V_r_2),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))) ).

fof(fact_SigmaI,axiom,
    ! [V_B_2,V_ba_2,T_b,V_A_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),hAPP(V_B_2,V_aa_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_Nil__notin__lex,axiom,
    ! [V_r_2,V_ys_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),V_ys_2)),c_List_Olex(T_a,V_r_2))) ).

fof(fact_rtrancl__listrel1__eq__len,axiom,
    ! [V_r_2,V_y_2,V_x_2,T_a] :
      ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_y_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_x_2)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2)))) ) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
       => ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
        <=> V_y_2 = V_x_2 ) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_Id__on__iff,axiom,
    ! [V_A_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Relation_OId__on(T_a,V_A_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
        & V_y_2 = V_x_2 ) ) ).

fof(fact_listrel1__rtrancl__subset__rtrancl__listrel1,axiom,
    ! [V_r_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_HOL_Obool),c_List_Olistrel1(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))) ).

fof(fact_inf__idem,axiom,
    ! [V_x,T_a] :
      ( V_x = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_x)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_SigmaE2,axiom,
    ! [V_B_2,V_A_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)))
     => ~ ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
         => ~ hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),hAPP(V_B_2,V_aa_2))) ) ) ).

fof(fact_inf__absorb1,axiom,
    ! [V_y,V_x,T_a] :
      ( ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) = V_x
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_inf__mono,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_d)
         => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_c),V_d)) ) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(help_c__fconj__2,axiom,
    ! [V_Q_2,V_Pa_2] :
      ( hBOOL(V_Pa_2)
      | ~ hBOOL(hAPP(hAPP(c_fconj,V_Pa_2),V_Q_2)) ) ).

fof(fact_lists_Osimps,axiom,
    ! [V_A_2,V_aa_2,T_a] :
      ( ( V_aa_2 = c_List_Olist_ONil(T_a)
        | ? [B_a,B_l] :
            ( hBOOL(hAPP(hAPP(c_member(T_a),B_a),V_A_2))
            & hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),B_l),c_List_Olists(T_a,V_A_2)))
            & hAPP(hAPP(c_List_Olist_OCons(T_a),B_a),B_l) = V_aa_2 ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_aa_2),c_List_Olists(T_a,V_A_2))) ) ).

fof(help_c__fconj__3,axiom,
    ! [V_Q_2,V_Pa_2] :
      ( ~ hBOOL(hAPP(hAPP(c_fconj,V_Pa_2),V_Q_2))
      | hBOOL(V_Q_2) ) ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( V_a != V_b
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_lexord__append__rightI,axiom,
    ! [V_r_2,V_x_2,T_a,V_y_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),hAPP(hAPP(c_List_Oappend(T_a),V_x_2),V_y_2))),c_List_Olexord(T_a,V_r_2)))
     <= ? [B_b,B_z] : hAPP(hAPP(c_List_Olist_OCons(T_a),B_b),B_z) = V_y_2 ) ).

fof(fact_lists__accI,axiom,
    ! [V_r_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_List_Olists(T_a,c_Wellfounded_Oacc(T_a,V_r_2))))
     <= hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_Wellfounded_Oacc(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2)))) ) ).

fof(fact_listrel__rtrancl__trans,axiom,
    ! [V_zs_2,V_r_2,V_ys_2,V_xs_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_ys_2),V_zs_2)),c_List_Olistrel(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2))))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_zs_2)),c_List_Olistrel(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)))) ) ).

fof(fact_mlex__leq,axiom,
    ! [V_R_2,T_a,V_y_2,V_x_2,V_f_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_R_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2))) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2)) ) ).

fof(fact_listrel1__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_HOL_Obool),c_List_Olistrel1(T_a,V_r_2),c_List_Olistrel1(T_a,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_listrel__reflcl__if__listrel1,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2)))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)))) ) ).

fof(fact_maps__simps_I1_J,axiom,
    ! [V_xs_2,V_x_2,V_f_2,T_a,T_b] : c_List_Omaps(T_b,T_a,V_f_2,hAPP(hAPP(c_List_Olist_OCons(T_b),V_x_2),V_xs_2)) = hAPP(hAPP(c_List_Oappend(T_a),hAPP(V_f_2,V_x_2)),c_List_Omaps(T_b,T_a,V_f_2,V_xs_2)) ).

fof(fact_listrel__rtrancl__refl,axiom,
    ! [V_r_2,V_xs_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_xs_2)),c_List_Olistrel(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)))) ).

fof(fact_measures__less,axiom,
    ! [V_fs_2,T_a,V_y_2,V_x_2,V_f_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_List_Omeasures(T_a,hAPP(hAPP(c_List_Olist_OCons(tc_fun(T_a,tc_Nat_Onat)),V_f_2),V_fs_2)))) ) ).

fof(fact_RangeP_Ointros,axiom,
    ! [T_b,T_a,V_ba_2,V_aa_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
     => c_Predicate_ORangeP(T_a,T_b,V_r_2,V_ba_2) ) ).

fof(fact_distinct__dropWhile,axiom,
    ! [V_Pa_2,V_xs_2,T_a] :
      ( c_List_Odistinct(T_a,V_xs_2)
     => c_List_Odistinct(T_a,c_List_OdropWhile(T_a,V_Pa_2,V_xs_2)) ) ).

fof(fact_accp__downward,axiom,
    ! [V_aa_2,V_ba_2,V_r_2,T_a] :
      ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_ba_2))
     => ( hBOOL(hAPP(hAPP(V_r_2,V_aa_2),V_ba_2))
       => hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2)) ) ) ).

fof(fact_pair__imageI,axiom,
    ! [V_f_2,T_c,V_A_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_A_2))
     => hBOOL(hAPP(hAPP(c_member(T_c),hAPP(hAPP(V_f_2,V_aa_2),V_ba_2)),c_Set_Oimage(tc_prod(T_a,T_b),T_c,hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),V_f_2),V_A_2))) ) ).

fof(fact_measures__lesseq,axiom,
    ! [V_fs_2,T_a,V_y_2,V_x_2,V_f_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_List_Omeasures(T_a,V_fs_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_List_Omeasures(T_a,hAPP(hAPP(c_List_Olist_OCons(tc_fun(T_a,tc_Nat_Onat)),V_f_2),V_fs_2)))) ) ) ).

fof(fact_lists__accD,axiom,
    ! [V_r_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_Wellfounded_Oacc(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))))
     <= hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_List_Olists(T_a,c_Wellfounded_Oacc(T_a,V_r_2)))) ) ).

fof(help_c__COMBC__1,axiom,
    ! [V_R_2,V_Q_2,V_Pa_2,T_a,T_c,T_b] : hAPP(hAPP(V_Pa_2,V_R_2),V_Q_2) = hAPP(hAPP(hAPP(c_COMBC(T_b,T_c,T_a),V_Pa_2),V_Q_2),V_R_2) ).

fof(fact_distinct__insert,axiom,
    ! [V_x,V_xs,T_a] :
      ( c_List_Odistinct(T_a,V_xs)
     => c_List_Odistinct(T_a,c_List_Oinsert(T_a,V_x,V_xs)) ) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_x_2 = V_y_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) ) ) ).

fof(fact_Int__absorb,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_A_2) = V_A_2 ).

fof(fact_predicate2D,axiom,
    ! [V_y_2,V_x_2,V_Q_2,V_Pa_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_Pa_2,V_x_2),V_y_2))
       => hBOOL(hAPP(hAPP(V_Q_2,V_x_2),V_y_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_Pa_2,V_Q_2) ) ).

fof(fact_eq__mem,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),hAPP(c_fequal,V_y_2)))
    <=> V_x_2 = V_y_2 ) ).

fof(fact_not__listrel1__Nil,axiom,
    ! [V_r_2,V_xs_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),c_List_Olist_ONil(T_a))),c_List_Olistrel1(T_a,V_r_2))) ).

fof(fact_le__infI,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)) ) ) ) ).

fof(fact_less__irrefl__nat,axiom,
    ! [V_n] : ~ c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_n,V_n) ).

fof(fact_bc,axiom,
    ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_a____)),hAPP(v_F,hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____))),v_b____)),v_a____))),v_a____)),v_c____))))
  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_c____)),hAPP(v_F,hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____))),v_b____)),v_a____)))) ) ).

fof(fact_rtrancl__idemp,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) = c_Transitive__Closure_Ortrancl(T_a,V_r_2) ).

fof(fact_distinct__conv__nth,axiom,
    ! [V_xs_2,T_a] :
      ( ! [B_i] :
          ( ! [B_j] :
              ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_j,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2))
             => ( c_List_Onth(T_a,V_xs_2,B_j) != c_List_Onth(T_a,V_xs_2,B_i)
               <= B_j != B_i ) )
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_i,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) )
    <=> c_List_Odistinct(T_a,V_xs_2) ) ).

fof(fact_mkbot__Lin,axiom,
    ! [V_x_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Omkbot(V_L_2,V_x_2)),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_acc__downward,axiom,
    ! [V_aa_2,V_r_2,V_ba_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Wellfounded_Oacc(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_Nitpick_Orefl_H__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Nitpick_Orefl_H(T_a,V_r_2)
    <=> ! [B_x] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2)) ) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_rotate1__is__Nil__conv,axiom,
    ! [V_xs_2,T_a] :
      ( V_xs_2 = c_List_Olist_ONil(T_a)
    <=> c_List_Orotate1(T_a,V_xs_2) = c_List_Olist_ONil(T_a) ) ).

fof(fact_linorder__not__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_inf__absorb2,axiom,
    ! [V_x,V_y,T_a] :
      ( ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) = V_y
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_listrel__Cons1,axiom,
    ! [V_r_2,V_xs_2,V_ys_2,V_y_2,T_a] :
      ( ~ ! [B_y,B_ys] :
            ( V_xs_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),B_y),B_ys)
           => ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_ys_2),B_ys)),c_List_Olistrel(T_a,V_r_2)))
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),B_y)),V_r_2)) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2)),V_xs_2)),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_listrel__Nil1,axiom,
    ! [V_r_2,V_xs_2,T_a] :
      ( V_xs_2 = c_List_Olist_ONil(T_a)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),V_xs_2)),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_order__le__less,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
          | V_y_2 = V_x_2 ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_listrelp_OCons,axiom,
    ! [V_ys_2,V_xs_2,T_a,V_y_2,V_x_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_x_2),V_y_2))
     => ( c_List_Olistrelp(T_a,V_r_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))
       <= c_List_Olistrelp(T_a,V_r_2,V_xs_2,V_ys_2) ) ) ).

fof(fact__096ALL_Ai_O_A_Ib_A_060_092_060_094bsub_062below_A_Ibelow_A_IP_Ai_J_Ac_Ab_J_Ab_Aa_092_060_094esub_062_Ac_J_A_061_A_Ib_A_060_092_060_094bsub_062below_A_Ibelow_A_Ibelow_A_IP_Ai_J_Ac_Ab_J_Ab_Aa_J_Aa_Ac_092_060_094esub_062_Aa_J_096,axiom,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_c____)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(v_P____,B_i)),v_c____),v_b____)),v_b____),v_a____)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_a____)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(v_P____,B_i)),v_c____),v_b____)),v_b____),v_a____)),v_a____),v_c____))) ) ).

fof(fact__096P_H_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_P_H____),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_ab,axiom,
    ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_F,v_P____)))
  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_c____)),hAPP(v_F,hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____)))) ) ).

fof(fact__096_I_Fp_O_Abelow_A_Ibelow_A_Ibelow_A_IP_Ap_J_Ac_Ab_J_Ab_Aa_J_Aa_Ac_J_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____))),v_b____)),v_a____))),v_a____)),v_c____)),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
         <= V_b != V_a ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_lexord__lex,axiom,
    ! [V_r_2,V_y_2,V_x_2,T_a] :
      ( ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_x_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_y_2)
        & hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_y_2)),c_List_Olexord(T_a,V_r_2))) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_y_2)),c_List_Olex(T_a,V_r_2))) ) ).

fof(fact_lexord__append__leftI,axiom,
    ! [V_x_2,V_r_2,V_v_2,V_u_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_u_2),V_v_2)),c_List_Olexord(T_a,V_r_2)))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Oappend(T_a),V_x_2),V_u_2)),hAPP(hAPP(c_List_Oappend(T_a),V_x_2),V_v_2))),c_List_Olexord(T_a,V_r_2))) ) ).

fof(fact_Cons__listrel1__Cons,axiom,
    ! [V_r_2,V_ys_2,V_y_2,V_xs_2,V_x_2,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2)))
          & V_x_2 = V_y_2 )
        | ( V_ys_2 = V_xs_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))),c_List_Olistrel1(T_a,V_r_2))) ) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_y = V_x
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_Pair__inject,axiom,
    ! [V_b_H,V_a_H,V_b,V_a,T_b,T_a] :
      ( hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a),V_b) = hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_H),V_b_H)
     => ~ ( V_a_H = V_a
         => V_b_H != V_b ) ) ).

fof(fact__C2_C,axiom,
    ! [V_P_Ha_2,V_Pa_2,V_b_H_2,V_a_H_2,V_ba_2,V_aa_2] :
      ( V_aa_2 != V_ba_2
     => ( V_a_H_2 != V_b_H_2
       => ( V_b_H_2 != V_aa_2
         => ( V_a_H_2 != V_ba_2
           => ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_Pa_2),c_Arrow__Order__Mirabelle_OProf))
             => ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_P_Ha_2),c_Arrow__Order__Mirabelle_OProf))
               => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_a_H_2),V_b_H_2)),hAPP(v_F,V_P_Ha_2)))
                  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),hAPP(v_F,V_Pa_2))) )
                 <= ! [B_i] :
                      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_aa_2),V_ba_2)),hAPP(V_Pa_2,B_i)))
                    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_a_H_2),V_b_H_2)),hAPP(V_P_Ha_2,B_i))) ) ) ) ) ) ) ) ) ).

fof(fact_inf__sup__aci_I2_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)),V_z)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_listrel__Nil2,axiom,
    ! [V_r_2,V_xs_2,T_a] :
      ( V_xs_2 = c_List_Olist_ONil(T_a)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),c_List_Olist_ONil(T_a))),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_le__refl,axiom,
    ! [V_n] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_n) ).

fof(fact_single__valuedI,axiom,
    ! [V_r_2,T_b,T_a] :
      ( ! [B_x,B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_y)),V_r_2))
         => ! [B_z] :
              ( B_z = B_y
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_z)),V_r_2)) ) )
     => c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_curry__split,axiom,
    ! [V_f_2,T_c,T_b,T_a] : c_Product__Type_Ocurry(T_a,T_b,T_c,hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c),V_f_2)) = V_f_2 ).

fof(fact_IntD2,axiom,
    ! [V_B_2,V_A_2,V_ca_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_accp_Osimps,axiom,
    ! [V_aa_2,V_r_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),B_x))
         <= hBOOL(hAPP(hAPP(V_r_2,B_x),V_aa_2)) )
    <=> hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,V_r_2),V_aa_2)) ) ).

fof(fact_append__butlast__last__id,axiom,
    ! [T_a,V_xs] :
      ( hAPP(hAPP(c_List_Oappend(T_a),c_List_Obutlast(T_a,V_xs)),hAPP(hAPP(c_List_Olist_OCons(T_a),c_List_Olast(T_a,V_xs)),c_List_Olist_ONil(T_a))) = V_xs
     <= c_List_Olist_ONil(T_a) != V_xs ) ).

fof(fact_le__trans,axiom,
    ! [V_k,V_j,V_i] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_j)
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j,V_k)
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_i,V_k) ) ) ).

fof(fact_dropWhile_Osimps_I2_J,axiom,
    ! [V_xs_2,T_a,V_x_2,V_Pa_2] :
      ( ( ~ hBOOL(hAPP(V_Pa_2,V_x_2))
       => hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2) = c_List_OdropWhile(T_a,V_Pa_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)) )
      & ( hBOOL(hAPP(V_Pa_2,V_x_2))
       => c_List_OdropWhile(T_a,V_Pa_2,V_xs_2) = c_List_OdropWhile(T_a,V_Pa_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)) ) ) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_x != V_y
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
       => ( V_b != V_a
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_c)
         <= V_b = V_c )
       <= c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_inf__commute,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_x) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) ) ).

fof(fact_le__infI1,axiom,
    ! [V_b,V_x,V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_x)
       => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),V_x) ) ) ).

fof(fact_Cons__acc__listrel1I,axiom,
    ! [V_xs_2,V_r_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_Wellfounded_Oacc(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))))
       => hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),c_Wellfounded_Oacc(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_Pi__I,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x)))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_internal__split__def,axiom,
    ! [T_c,T_b,T_a] : c_Product__Type_Ointernal__split(T_a,T_b,T_c) = c_Product__Type_Oprod_Oprod__case(T_a,T_b,T_c) ).

fof(fact_distinct1__rotate,axiom,
    ! [V_xs_2,T_a] :
      ( c_List_Odistinct(T_a,c_List_Orotate1(T_a,V_xs_2))
    <=> c_List_Odistinct(T_a,V_xs_2) ) ).

fof(help_c__COMBK__1,axiom,
    ! [V_Q,V_P,T_b,T_a] : V_P = hAPP(c_COMBK(T_a,T_b,V_P),V_Q) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= V_b = V_c )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_trans__rtrancl,axiom,
    ! [V_r_2,T_a] : c_Relation_Otrans(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_lexord__linear,axiom,
    ! [V_y_2,V_x_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_y_2),V_x_2)),c_List_Olexord(T_a,V_r_2)))
        | V_y_2 = V_x_2
        | hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_y_2)),c_List_Olexord(T_a,V_r_2))) )
     <= ! [B_a,B_b] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_a),B_b)),V_r_2))
          | B_b = B_a
          | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_b),B_a)),V_r_2)) ) ) ).

fof(fact_append__eq__append__conv2,axiom,
    ! [V_ts_2,V_zs_2,V_ys_2,V_xs_2,T_a] :
      ( hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) = hAPP(hAPP(c_List_Oappend(T_a),V_zs_2),V_ts_2)
    <=> ? [B_us] :
          ( ( V_xs_2 = hAPP(hAPP(c_List_Oappend(T_a),V_zs_2),B_us)
            & V_ts_2 = hAPP(hAPP(c_List_Oappend(T_a),B_us),V_ys_2) )
          | ( hAPP(hAPP(c_List_Oappend(T_a),B_us),V_ts_2) = V_ys_2
            & V_zs_2 = hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),B_us) ) ) ) ).

fof(fact_listrel__Cons2,axiom,
    ! [V_r_2,V_ys_2,V_y_2,V_xs_2,T_a] :
      ( ~ ! [B_x,B_xs] :
            ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),V_y_2)),V_r_2))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),B_xs),V_ys_2)),c_List_Olistrel(T_a,V_r_2))) )
           <= hAPP(hAPP(c_List_Olist_OCons(T_a),B_x),B_xs) = V_xs_2 )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_Cons__in__lists__iff,axiom,
    ! [V_A_2,V_xs_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),c_List_Olists(T_a,V_A_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
        & hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_xs_2),c_List_Olists(T_a,V_A_2))) ) ) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) ) ) ) ).

fof(fact_inf2I,axiom,
    ! [T_b,T_a,V_B_2,V_y_2,V_x_2,V_A_2] :
      ( ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2))
       <= hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2)) )
     <= hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2)) ) ).

fof(fact_assms_I3_J,axiom,
    c_Arrow__Order__Mirabelle_OIIA(v_F) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
          | V_y = V_x ) ) ) ).

fof(fact_listrelp_Oequations_I1_J,axiom,
    ! [V_r_2,T_a] : c_List_Olistrelp(T_a,V_r_2,c_List_Olist_ONil(T_a),c_List_Olist_ONil(T_a)) ).

fof(fact_inf2E,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2))
     => ~ ( ~ hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2))
         <= hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2)) ) ) ).

fof(fact_in__rel__def,axiom,
    ! [V_y_2,V_x_2,V_R_2,T_b,T_a] :
      ( c_FunDef_Oin__rel(T_a,T_b,V_R_2,V_x_2,V_y_2)
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),V_R_2)) ) ).

fof(fact_le__antisym,axiom,
    ! [V_n,V_m] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m)
       => V_n = V_m )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_rev__predicate1D,axiom,
    ! [V_Q_2,T_a,V_x_2,V_Pa_2] :
      ( hBOOL(hAPP(V_Pa_2,V_x_2))
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_Pa_2,V_Q_2)
       => hBOOL(hAPP(V_Q_2,V_x_2)) ) ) ).

fof(fact_listrel1I1,axiom,
    ! [V_xs_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_xs_2))),c_List_Olistrel1(T_a,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) ) ).

fof(fact_lexord__append__leftD,axiom,
    ! [V_r_2,V_v_2,V_u_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Oappend(T_a),V_x_2),V_u_2)),hAPP(hAPP(c_List_Oappend(T_a),V_x_2),V_v_2))),c_List_Olexord(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_u_2),V_v_2)),c_List_Olexord(T_a,V_r_2)))
       <= ! [B_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_a),B_a)),V_r_2)) ) ) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_curryD,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2),V_aa_2),V_ba_2))
     => hBOOL(hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2))) ) ).

fof(fact_inf__Int__eq,axiom,
    ! [V_x_2,V_S_2,V_R_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_R_2),V_S_2)))
    <=> hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2)),V_x_2)) ) ).

fof(fact_list_Osimps_I3_J,axiom,
    ! [V_list_H,V_a_H,T_a] : c_List_Olist_ONil(T_a) != hAPP(hAPP(c_List_Olist_OCons(T_a),V_a_H),V_list_H) ).

fof(fact_mem__splitI,axiom,
    ! [T_c,T_b,V_ba_2,V_aa_2,V_ca_2,V_z_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_z_2),hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,tc_fun(T_a,tc_HOL_Obool)),V_ca_2),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2))))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_z_2),hAPP(hAPP(V_ca_2,V_aa_2),V_ba_2))) ) ).

fof(fact_splitD_H,axiom,
    ! [V_ca_2,V_ba_2,V_aa_2,V_R_2,T_c,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,tc_fun(T_c,tc_HOL_Obool)),V_R_2),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_ca_2))
     => hBOOL(hAPP(hAPP(hAPP(V_R_2,V_aa_2),V_ba_2),V_ca_2)) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(T_1)
     => class_Orderings_Oord(tc_fun(T_2,T_1)) ) ).

fof(fact_last__ConsR,axiom,
    ! [V_x,T_a,V_xs] :
      ( c_List_Olist_ONil(T_a) != V_xs
     => c_List_Olast(T_a,V_xs) = c_List_Olast(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs)) ) ).

fof(fact_listrel1I2,axiom,
    ! [V_x_2,V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel1(T_a,V_r_2)))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_ys_2))),c_List_Olistrel1(T_a,V_r_2))) ) ).

fof(fact_SigmaD2,axiom,
    ! [V_B_2,V_A_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)))
     => hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),hAPP(V_B_2,V_aa_2))) ) ).

fof(fact_in__mono,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact__096a_A_126_061_Ab_096,axiom,
    v_a____ != v_b____ ).

fof(fact_eq__mem__trans,axiom,
    ! [V_A_2,T_a,V_ba_2,V_aa_2] :
      ( V_ba_2 = V_aa_2
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),V_A_2)) ) ) ).

fof(help_c__fNot__2,axiom,
    ! [V_Pa_2] :
      ( ~ ~ hBOOL(V_Pa_2)
      | hBOOL(hAPP(c_fNot,V_Pa_2)) ) ).

fof(fact_takeWhile__dropWhile__id,axiom,
    ! [V_xs_2,V_Pa_2,T_a] : V_xs_2 = hAPP(hAPP(c_List_Oappend(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2)),c_List_OdropWhile(T_a,V_Pa_2,V_xs_2)) ).

fof(fact_Int__lower1,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_A_2) ).

fof(fact_splitI,axiom,
    ! [T_b,T_a,V_ba_2,V_aa_2,V_f_2] :
      ( hBOOL(hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,tc_HOL_Obool),V_f_2),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)))
     <= hBOOL(hAPP(hAPP(V_f_2,V_aa_2),V_ba_2)) ) ).

fof(fact_append__self__conv2,axiom,
    ! [V_ys_2,V_xs_2,T_a] :
      ( V_xs_2 = c_List_Olist_ONil(T_a)
    <=> hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) = V_ys_2 ) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) )
       <= V_a = V_b ) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2)) ) ) ).

fof(fact_swap__product,axiom,
    ! [V_B_2,V_A_2,T_a,T_b] : c_Set_Oimage(tc_prod(T_b,T_a),tc_prod(T_a,T_b),hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_a,tc_prod(T_a,T_b)),hAPP(c_COMBC(T_a,T_b,tc_prod(T_a,T_b)),c_Product__Type_OPair(T_a,T_b))),c_Product__Type_OSigma(T_b,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_b,V_B_2))) = c_Product__Type_OSigma(T_a,T_b,V_B_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_A_2)) ).

fof(fact_rev__predicate2D,axiom,
    ! [V_Q_2,T_b,T_a,V_y_2,V_x_2,V_Pa_2] :
      ( hBOOL(hAPP(hAPP(V_Pa_2,V_x_2),V_y_2))
     => ( hBOOL(hAPP(hAPP(V_Q_2,V_x_2),V_y_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),V_Pa_2,V_Q_2) ) ) ).

fof(fact_funcset__mem,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),V_B_2)) ) ) ).

fof(fact_mem__def,axiom,
    ! [V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
    <=> hBOOL(hAPP(V_A_2,V_x_2)) ) ).

fof(fact_curryI,axiom,
    ! [V_ba_2,V_aa_2,T_b,T_a,V_f_2] :
      ( hBOOL(hAPP(hAPP(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2),V_aa_2),V_ba_2))
     <= hBOOL(hAPP(V_f_2,hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2))) ) ).

fof(fact_Int__absorb1,axiom,
    ! [V_A_2,V_B_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
     => V_B_2 = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ) ).

fof(fact_split__twice,axiom,
    ! [V_p_2,V_g_2,T_e,T_d,V_f_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_d,T_e,T_a),hAPP(hAPP(c_COMBB(tc_fun(T_e,tc_prod(T_b,T_c)),tc_fun(T_e,T_a),T_d),hAPP(c_COMBB(tc_prod(T_b,T_c),T_a,T_e),hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,T_a),V_f_2))),V_g_2)),V_p_2) = hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,T_a),V_f_2),hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_d,T_e,tc_prod(T_b,T_c)),V_g_2),V_p_2)) ).

fof(fact_predicate1D,axiom,
    ! [V_x_2,V_Q_2,V_Pa_2,T_a] :
      ( ( hBOOL(hAPP(V_Q_2,V_x_2))
       <= hBOOL(hAPP(V_Pa_2,V_x_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_Pa_2,V_Q_2) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_x) ) ).

fof(fact_lexord__cons__cons,axiom,
    ! [V_r_2,V_y_2,V_ba_2,V_x_2,V_aa_2,T_a] :
      ( ( ( V_ba_2 = V_aa_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_y_2)),c_List_Olexord(T_a,V_r_2))) )
        | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_aa_2),V_x_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_ba_2),V_y_2))),c_List_Olexord(T_a,V_r_2))) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) ) ) ) ).

fof(fact_last__appendL,axiom,
    ! [V_xs,T_a,V_ys] :
      ( c_List_Olast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) = c_List_Olast(T_a,V_xs)
     <= V_ys = c_List_Olist_ONil(T_a) ) ).

fof(fact_less__not__refl3,axiom,
    ! [V_t,V_s] :
      ( V_s != V_t
     <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_s,V_t) ) ).

fof(fact_partition_Osimps_I1_J,axiom,
    ! [V_Pa_2,T_a] : hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),c_List_Olist_ONil(T_a)) = c_List_Opartition(T_a,V_Pa_2,c_List_Olist_ONil(T_a)) ).

fof(fact_in__lex__prod,axiom,
    ! [V_s_2,V_r_2,V_b_H_2,V_a_H_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_ba_2),V_b_H_2)),V_s_2))
          & V_a_H_2 = V_aa_2 )
        | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_a_H_2)),V_r_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_H_2),V_b_H_2))),c_Wellfounded_Olex__prod(T_a,T_b,V_r_2,V_s_2))) ) ).

fof(fact_listsp_Oequations_I1_J,axiom,
    ! [V_A_2,T_a] : hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),c_List_Olist_ONil(T_a))) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_less__le__not__le,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2)
      <=> ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) ) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_trans__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Otrans(T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_less__or__eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( ( V_n = V_m
        | c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m,V_n) )
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n) ) ).

fof(fact_single__valued__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Osingle__valued(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_inf__sup__ord_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_x)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_length__dropWhile__le,axiom,
    ! [V_xs_2,V_Pa_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_OdropWhile(T_a,V_Pa_2,V_xs_2)),c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_b = V_a
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) ) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_nat__less__le,axiom,
    ! [V_n_2,V_m_2] :
      ( ( V_m_2 != V_n_2
        & c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2) )
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2) ) ).

fof(fact_above__Lin,axiom,
    ! [V_L_2,V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Oabove(V_L_2,V_x_2,V_y_2)),c_Arrow__Order__Mirabelle_OLin))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) )
     <= V_x_2 != V_y_2 ) ).

fof(fact_equalityCE,axiom,
    ! [V_ca_2,T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2))
         => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2)) )
       => ~ ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_A_2))
           => hBOOL(hAPP(hAPP(c_member(T_a),V_ca_2),V_B_2)) ) ) ) ).

fof(fact_rtrancl__subset__rtrancl,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Transitive__Closure_Ortrancl(T_a,V_s_2)) ) ).

fof(fact_lexord__irreflexive,axiom,
    ! [V_y_2,V_r_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_y_2),V_y_2)),c_List_Olexord(T_a,V_r_2)))
     <= ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2)) ) ).

fof(fact_same__append__eq,axiom,
    ! [V_zs_2,V_ys_2,V_xs_2,T_a] :
      ( V_ys_2 = V_zs_2
    <=> hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_zs_2) = hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2) ) ).

fof(fact_listsp__lists__eq,axiom,
    ! [V_x_2,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_List_Olist(T_a)),V_x_2),c_List_Olists(T_a,V_A_2)))
    <=> hBOOL(hAPP(c_List_Olistsp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_A_2)),V_x_2)) ) ).

fof(fact_assms_I1_J,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_F),c_FuncSet_OPi(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_OProf,c_COMBK(tc_fun(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_OLin)))) ).

fof(fact_single__valuedD,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),V_r_2))
       => ( V_y_2 = V_z_2
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_z_2)),V_r_2)) ) )
     <= c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_rtrancl__listrel1__ConsI1,axiom,
    ! [V_x_2,V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_ys_2))),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2)))) ) ).

fof(fact_Int__assoc,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) ).

fof(fact_ac,axiom,
    ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_c____)),hAPP(v_F,hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____))),v_b____)),v_a____))))
  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_c____)),hAPP(v_F,hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____)))) ) ).

fof(fact_last_Osimps,axiom,
    ! [V_x,T_a,V_xs] :
      ( ( c_List_Olast(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs)) = c_List_Olast(T_a,V_xs)
       <= c_List_Olist_ONil(T_a) != V_xs )
      & ( V_xs = c_List_Olist_ONil(T_a)
       => V_x = c_List_Olast(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs)) ) ) ).

fof(fact_distinct_Osimps_I1_J,axiom,
    ! [T_a] : c_List_Odistinct(T_a,c_List_Olist_ONil(T_a)) ).

fof(fact_transI,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x,B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_y)),V_r_2))
         => ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_z)),V_r_2))
             => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_z)),V_r_2)) ) )
     => c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_funcset__image,axiom,
    ! [V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),c_Set_Oimage(T_a,T_b,V_f_2,V_A_2),V_B_2) ) ).

fof(fact_butlast__snoc,axiom,
    ! [V_x,V_xs,T_a] : V_xs = c_List_Obutlast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),c_List_Olist_ONil(T_a)))) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_a)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_pred__equals__eq,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( V_R_2 = V_S_2
    <=> hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2) = hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2) ) ).

fof(fact_funcset__id,axiom,
    ! [V_A_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_a)),c_COMBI(T_a)),c_FuncSet_OPi(T_a,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,V_A_2)))) ).

fof(fact_list_Osimps_I2_J,axiom,
    ! [V_list_H,V_a_H,T_a] : c_List_Olist_ONil(T_a) != hAPP(hAPP(c_List_Olist_OCons(T_a),V_a_H),V_list_H) ).

fof(fact_psubset__imp__subset,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_last__append,axiom,
    ! [V_xs,T_a,V_ys] :
      ( ( c_List_Olist_ONil(T_a) != V_ys
       => c_List_Olast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) = c_List_Olast(T_a,V_ys) )
      & ( c_List_Olist_ONil(T_a) = V_ys
       => c_List_Olast(T_a,V_xs) = c_List_Olast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) ) ) ).

fof(help_c__COMBB__1,axiom,
    ! [V_R_2,V_Q_2,V_Pa_2,T_c,T_a,T_b] : hAPP(V_Pa_2,hAPP(V_Q_2,V_R_2)) = hAPP(hAPP(hAPP(c_COMBB(T_b,T_a,T_c),V_Pa_2),V_Q_2),V_R_2) ).

fof(fact_rtrancl__listrel1__if__listrel,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_Transitive__Closure_Ortrancl(tc_List_Olist(T_a),c_List_Olistrel1(T_a,V_r_2))))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_maps__simps_I2_J,axiom,
    ! [V_f_2,T_a,T_b] : c_List_Omaps(T_b,T_a,V_f_2,c_List_Olist_ONil(T_b)) = c_List_Olist_ONil(T_a) ).

fof(fact_Range__iff,axiom,
    ! [V_r_2,T_b,V_aa_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ORange(T_b,T_a,V_r_2)))
    <=> ? [B_y] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_y),V_aa_2)),V_r_2)) ) ).

fof(fact_nat__le__linear,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
      | c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_n,V_m) ) ).

fof(fact_inf2D1,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2))
     => hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2)) ) ).

fof(fact_listsp__inf__eq,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_List_Olist(T_a),tc_HOL_Obool)),c_List_Olistsp(T_a,V_A_2)),c_List_Olistsp(T_a,V_B_2)) = c_List_Olistsp(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) ).

fof(fact_inf__left__idem,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_append__same__eq,axiom,
    ! [V_zs_2,V_xs_2,V_ys_2,T_a] :
      ( V_zs_2 = V_ys_2
    <=> hAPP(hAPP(c_List_Oappend(T_a),V_ys_2),V_xs_2) = hAPP(hAPP(c_List_Oappend(T_a),V_zs_2),V_xs_2) ) ).

fof(fact_dist,axiom,
    c_List_Odistinct(tc_Arrow__Order__Mirabelle_Oalt,hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),v_a____),hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),v_b____),hAPP(hAPP(c_List_Olist_OCons(tc_Arrow__Order__Mirabelle_Oalt),v_c____),c_List_Olist_ONil(tc_Arrow__Order__Mirabelle_Oalt))))) ).

fof(fact_eq__imp__le,axiom,
    ! [V_n,V_m] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m,V_n)
     <= V_m = V_n ) ).

fof(fact_Int__absorb2,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => V_A_2 = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ) ).

fof(fact_psubset__subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ) ).

fof(fact_u,axiom,
    c_Arrow__Order__Mirabelle_Ounanimity(v_F) ).

fof(fact__096P_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),v_P____),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_equalityI,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
       => V_A_2 = V_B_2 ) ) ).

fof(fact_inf__le1,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_x) ) ).

fof(fact_inf_Oleft__commute,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_c)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),V_c))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_butlast__append,axiom,
    ! [V_xs,T_a,V_ys] :
      ( ( V_ys = c_List_Olist_ONil(T_a)
       => c_List_Obutlast(T_a,V_xs) = c_List_Obutlast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) )
      & ( c_List_Obutlast(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),V_ys)) = hAPP(hAPP(c_List_Oappend(T_a),V_xs),c_List_Obutlast(T_a,V_ys))
       <= c_List_Olist_ONil(T_a) != V_ys ) ) ).

fof(fact_Int__lower2,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_B_2) ).

fof(fact_funcsetI,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),V_B_2)) ) ) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_dropWhile_Osimps_I1_J,axiom,
    ! [V_Pa_2,T_a] : c_List_Olist_ONil(T_a) = c_List_OdropWhile(T_a,V_Pa_2,c_List_Olist_ONil(T_a)) ).

fof(help_c__COMBI__1,axiom,
    ! [V_P,T_a] : V_P = hAPP(c_COMBI(T_a),V_P) ).

fof(fact_in__measure,axiom,
    ! [V_f_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Wellfounded_Omeasure(T_a,V_f_2)))
    <=> c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2)) ) ).

fof(fact_Range__Int__subset,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ORange(T_b,T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool)),V_A_2),V_B_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),c_Relation_ORange(T_b,T_a,V_A_2)),c_Relation_ORange(T_b,T_a,V_B_2))) ).

fof(fact_Times__Int__distrib1,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_b,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),c_Product__Type_OSigma(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_C_2))),c_Product__Type_OSigma(T_a,T_b,V_B_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_C_2))) = c_Product__Type_OSigma(T_a,T_b,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_C_2)) ).

fof(fact_Cons__eq__appendI,axiom,
    ! [V_zs,V_xs,V_ys,V_xs1,V_x,T_a] :
      ( ( V_xs = hAPP(hAPP(c_List_Oappend(T_a),V_xs1),V_zs)
       => hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs) = hAPP(hAPP(c_List_Oappend(T_a),V_ys),V_zs) )
     <= hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs1) = V_ys ) ).

fof(fact_splice_Osimps_I1_J,axiom,
    ! [V_ys,T_a] : c_List_Osplice(T_a,c_List_Olist_ONil(T_a),V_ys) = V_ys ).

fof(fact_Cons__listrel1E2,axiom,
    ! [V_r_2,V_ys_2,V_y_2,V_xs_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),V_ys_2))),c_List_Olistrel1(T_a,V_r_2)))
     => ( ! [B_x] :
            ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),V_y_2)),V_r_2))
           <= V_xs_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),B_x),V_ys_2) )
       => ~ ! [B_zs] :
              ( hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),B_zs) = V_xs_2
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),B_zs),V_ys_2)),c_List_Olistrel1(T_a,V_r_2))) ) ) ) ).

fof(fact_takeWhile__not__last,axiom,
    ! [T_a,V_xs_2] :
      ( ( c_List_Odistinct(T_a,V_xs_2)
       => c_List_OtakeWhile(T_a,hAPP(hAPP(c_COMBB(tc_HOL_Obool,tc_HOL_Obool,T_a),c_fNot),hAPP(hAPP(c_COMBC(T_a,T_a,tc_HOL_Obool),c_fequal),c_List_Olast(T_a,V_xs_2))),V_xs_2) = c_List_Obutlast(T_a,V_xs_2) )
     <= V_xs_2 != c_List_Olist_ONil(T_a) ) ).

fof(fact_listrel__eq__len,axiom,
    ! [V_r_2,V_ys_2,V_xs_2,T_a] :
      ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2) = c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys_2)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_xs_2),V_ys_2)),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact_append__in__listsp__conv,axiom,
    ! [V_ys_2,V_xs_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),V_ys_2))
        & hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),V_xs_2)) )
    <=> hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),V_ys_2))) ) ).

fof(fact_not__acc__down,axiom,
    ! [V_R_2,V_x_2,T_a] :
      ( ~ ! [B_z] :
            ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_x_2)),V_R_2))
           => hBOOL(hAPP(hAPP(c_member(T_a),B_z),c_Wellfounded_Oacc(T_a,V_R_2))) )
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_R_2))) ) ).

fof(fact_single__valued__subset,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2)
     => ( c_Relation_Osingle__valued(T_a,T_b,V_s_2)
       => c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2))
      | V_x_2 != V_y_2 ) ).

fof(fact_not__Nil__listrel1,axiom,
    ! [V_r_2,V_xs_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),c_List_Olist_ONil(T_a)),V_xs_2)),c_List_Olistrel1(T_a,V_r_2))) ).

fof(fact_image__mono,axiom,
    ! [V_f_2,T_b,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),c_Set_Oimage(T_a,T_b,V_f_2,V_A_2),c_Set_Oimage(T_a,T_b,V_f_2,V_B_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_Pi__anti__mono,axiom,
    ! [V_B_2,T_b,V_A_2,V_A_H_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2),c_FuncSet_OPi(T_a,T_b,V_A_H_2,V_B_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_H_2,V_A_2) ) ).

fof(fact_last__ConsL,axiom,
    ! [V_x,T_a,V_xs] :
      ( c_List_Olast(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs)) = V_x
     <= V_xs = c_List_Olist_ONil(T_a) ) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_y = V_x
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
        | c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_Pi__mem,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),hAPP(V_B_2,V_x_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) ) ).

fof(fact_psubset__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
    <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
        & V_B_2 != V_A_2 ) ) ).

fof(fact_append1__eq__conv,axiom,
    ! [V_y_2,V_ys_2,V_x_2,V_xs_2,T_a] :
      ( hAPP(hAPP(c_List_Oappend(T_a),V_ys_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y_2),c_List_Olist_ONil(T_a))) = hAPP(hAPP(c_List_Oappend(T_a),V_xs_2),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),c_List_Olist_ONil(T_a)))
    <=> ( V_x_2 = V_y_2
        & V_xs_2 = V_ys_2 ) ) ).

fof(fact_Int__left__commute,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_C_2)) ).

fof(fact_in__mktop,axiom,
    ! [V_z_2,V_L_2,V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Omktop(V_L_2,V_z_2)))
    <=> ( V_z_2 != V_x_2
        & ( V_y_2 != V_z_2
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2)) )
        & ( V_z_2 = V_y_2
         => V_x_2 != V_y_2 ) ) ) ).

fof(fact_set__eq__subset,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
    <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
        & c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
         => V_y = V_x ) ) ) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
        <=> V_y_2 = V_x_2 )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x_2,V_y_2) ) ) ).

fof(fact_append__Nil,axiom,
    ! [V_ys,T_a] : V_ys = hAPP(hAPP(c_List_Oappend(T_a),c_List_Olist_ONil(T_a)),V_ys) ).

fof(fact_splice_Osimps_I3_J,axiom,
    ! [V_ys,V_y,V_xs,V_x,T_a] : c_List_Osplice(T_a,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y),V_ys)) = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),hAPP(hAPP(c_List_Olist_OCons(T_a),V_y),c_List_Osplice(T_a,V_xs,V_ys))) ).

fof(fact_mktop__Lin,axiom,
    ! [V_x_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Omktop(V_L_2,V_x_2)),c_Arrow__Order__Mirabelle_OLin))
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_eq__Nil__appendI,axiom,
    ! [T_a,V_ys,V_xs] :
      ( V_xs = hAPP(hAPP(c_List_Oappend(T_a),c_List_Olist_ONil(T_a)),V_ys)
     <= V_ys = V_xs ) ).

fof(fact_mlex__less,axiom,
    ! [V_R_2,T_a,V_y_2,V_x_2,V_f_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_x_2),hAPP(V_f_2,V_y_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2))) ) ).

fof(arity_fun__Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(T_1)
     => class_Lattices_Olattice(tc_fun(T_2,T_1)) ) ).

fof(fact_inf_Oassoc,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),V_c))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_length__takeWhile__le,axiom,
    ! [V_xs_2,V_Pa_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2)),c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2)) ).

fof(fact_listsp_Osimps,axiom,
    ! [V_aa_2,V_A_2,T_a] :
      ( ( c_List_Olist_ONil(T_a) = V_aa_2
        | ? [B_a,B_l] :
            ( V_aa_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),B_a),B_l)
            & hBOOL(hAPP(V_A_2,B_a))
            & hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),B_l)) ) )
    <=> hBOOL(hAPP(c_List_Olistsp(T_a,V_A_2),V_aa_2)) ) ).

fof(fact_Id__on__subset__Times,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Relation_OId__on(T_a,V_A_2),c_Product__Type_OSigma(T_a,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,V_A_2))) ).

fof(fact_not__Cons__self2,axiom,
    ! [V_xs,V_x,T_a] : hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs) != V_xs ).

fof(fact_takeWhile_Osimps_I2_J,axiom,
    ! [V_xs_2,T_a,V_x_2,V_Pa_2] :
      ( ( ~ hBOOL(hAPP(V_Pa_2,V_x_2))
       => c_List_OtakeWhile(T_a,V_Pa_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)) = c_List_Olist_ONil(T_a) )
      & ( c_List_OtakeWhile(T_a,V_Pa_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)) = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2))
       <= hBOOL(hAPP(V_Pa_2,V_x_2)) ) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( V_b = V_c
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_override__on__def,axiom,
    ! [V_g_2,V_f_2,T_b,V_A_2,V_aa_2,T_a] :
      ( ( hAPP(V_f_2,V_aa_2) = c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) )
      & ( c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2) = hAPP(V_g_2,V_aa_2)
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_in__mkbot,axiom,
    ! [V_z_2,V_L_2,V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Omkbot(V_L_2,V_z_2)))
    <=> ( ( V_z_2 != V_x_2
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2)) )
        & ( V_z_2 = V_x_2
         => V_x_2 != V_y_2 )
        & V_z_2 != V_y_2 ) ) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_Domain__mono,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_r_2),c_Relation_ODomain(T_a,T_b,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_compose__assoc,axiom,
    ! [V_D_2,V_h_2,T_d,V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_c)),V_g_2),c_FuncSet_OPi(T_b,T_c,V_B_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_b,V_C_2))))
       => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_c,T_d)),V_h_2),c_FuncSet_OPi(T_c,T_d,V_C_2,c_COMBK(tc_fun(T_d,tc_HOL_Obool),T_c,V_D_2))))
         => c_FuncSet_Ocompose(T_a,T_b,T_d,V_A_2,c_FuncSet_Ocompose(T_b,T_c,T_d,V_B_2,V_h_2,V_g_2),V_f_2) = c_FuncSet_Ocompose(T_a,T_c,T_d,V_A_2,V_h_2,c_FuncSet_Ocompose(T_a,T_b,T_c,V_A_2,V_g_2,V_f_2)) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_eqset__imp__iff,axiom,
    ! [V_x_2,T_a,V_B_2,V_A_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
      <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= V_B_2 = V_A_2 ) ).

fof(fact_mem__splitI2,axiom,
    ! [V_ca_2,V_z_2,T_c,T_b,T_a,V_p_2] :
      ( ! [B_a,B_b] :
          ( hBOOL(hAPP(hAPP(c_member(T_c),V_z_2),hAPP(hAPP(V_ca_2,B_a),B_b)))
         <= hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b) = V_p_2 )
     => hBOOL(hAPP(hAPP(c_member(T_c),V_z_2),hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_b,tc_fun(T_c,tc_HOL_Obool)),V_ca_2),V_p_2))) ) ).

fof(fact_DomainI,axiom,
    ! [V_r_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_transD,axiom,
    ! [V_ca_2,V_ba_2,V_aa_2,V_r_2,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_ca_2)),V_r_2))
         => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ca_2)),V_r_2)) )
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),V_r_2)) )
     <= c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_inf__sup__aci_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_x) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) ) ).

fof(fact_rotate__simps,axiom,
    ! [V_xs,V_x,T_b,T_a] :
      ( c_List_Orotate1(T_b,hAPP(hAPP(c_List_Olist_OCons(T_b),V_x),V_xs)) = hAPP(hAPP(c_List_Oappend(T_b),V_xs),hAPP(hAPP(c_List_Olist_OCons(T_b),V_x),c_List_Olist_ONil(T_b)))
      & c_List_Orotate1(T_a,c_List_Olist_ONil(T_a)) = c_List_Olist_ONil(T_a) ) ).

fof(fact_distinct__butlast,axiom,
    ! [T_a,V_xs] :
      ( ( c_List_Odistinct(T_a,V_xs)
       => c_List_Odistinct(T_a,c_List_Obutlast(T_a,V_xs)) )
     <= c_List_Olist_ONil(T_a) != V_xs ) ).

fof(fact_trans__Int,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Relation_Otrans(T_a,V_r_2)
     => ( c_Relation_Otrans(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),V_r_2),V_s_2))
       <= c_Relation_Otrans(T_a,V_s_2) ) ) ).

fof(fact_irrefl__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2))
    <=> c_Relation_Oirrefl(T_a,V_r_2) ) ).

fof(fact_converse__rtrancl__induct2,axiom,
    ! [V_Pa_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_Pa_2,V_bx_2),V_by_2))
       => ( hBOOL(hAPP(hAPP(V_Pa_2,V_ax_2),V_ay_2))
         <= ! [B_a,B_b,B_aa,B_ba] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba))),V_r_2))
             => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
               => ( hBOOL(hAPP(hAPP(V_Pa_2,B_aa),B_ba))
                 => hBOOL(hAPP(hAPP(V_Pa_2,B_a),B_b)) ) ) ) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))) ) ).

fof(fact_Cons__eq__append__conv,axiom,
    ! [V_zs_2,V_ys_2,V_xs_2,V_x_2,T_a] :
      ( hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2) = hAPP(hAPP(c_List_Oappend(T_a),V_ys_2),V_zs_2)
    <=> ( ? [B_ys_H] :
            ( hAPP(hAPP(c_List_Oappend(T_a),B_ys_H),V_zs_2) = V_xs_2
            & V_ys_2 = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),B_ys_H) )
        | ( V_ys_2 = c_List_Olist_ONil(T_a)
          & hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2) = V_zs_2 ) ) ) ).

fof(fact_Id__on__def_H,axiom,
    ! [V_A_2,T_a] : c_Relation_OId__on(T_a,V_A_2) = hAPP(c_Product__Type_Oprod_Oprod__case(T_a,T_a,tc_HOL_Obool),hAPP(hAPP(c_COMBS(T_a,tc_HOL_Obool,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),tc_fun(tc_HOL_Obool,tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_HOL_Obool,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_fun(tc_HOL_Obool,tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_HOL_Obool,tc_fun(tc_HOL_Obool,tc_HOL_Obool),T_a),c_fconj)),c_fequal))),V_A_2)) ).

fof(fact_notin__Lin__iff,axiom,
    ! [V_y_2,V_x_2,V_L_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_L_2),c_Arrow__Order__Mirabelle_OLin))
     => ( ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_L_2))
        <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_y_2),V_x_2)),V_L_2)) )
       <= V_y_2 != V_x_2 ) ) ).

fof(fact_dictatorI,axiom,
    ! [V_i_2,V_Fa_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_Fa_2),c_FuncSet_OPi(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_OProf,c_COMBK(tc_fun(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_OLin))))
     => ( c_Arrow__Order__Mirabelle_Odictator(V_Fa_2,V_i_2)
       <= ! [B_x] :
            ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf))
           => ! [B_a,B_b] :
                ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_x)))
                 <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,V_i_2))) )
               <= B_a != B_b ) ) ) ) ).

fof(fact_equalityD1,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_accp__acc__eq,axiom,
    ! [V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2)))
    <=> hBOOL(hAPP(c_Wellfounded_Oaccp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2)),V_x_2)) ) ).

fof(fact_pred__subset__eq2,axiom,
    ! [V_S_2,V_R_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_R_2,V_S_2) ) ).

fof(fact_Not__Domain__rtrancl,axiom,
    ! [V_y_2,V_R_2,V_x_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Relation_ODomain(T_a,T_a,V_R_2)))
     => ( V_y_2 = V_x_2
      <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2))) ) ) ).

fof(fact_not__Cons__self,axiom,
    ! [V_x,T_a,V_xs] : V_xs != hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_xs) ).

fof(fact_lists__mono,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_List_Olist(T_a),tc_HOL_Obool),c_List_Olists(T_a,V_A_2),c_List_Olists(T_a,V_B_2)) ) ).

fof(fact_append__eq__Cons__conv,axiom,
    ! [V_xs_2,V_x_2,V_zs_2,V_ys_2,T_a] :
      ( hAPP(hAPP(c_List_Oappend(T_a),V_ys_2),V_zs_2) = hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)
    <=> ( ? [B_ys_H] :
            ( hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),B_ys_H) = V_ys_2
            & V_xs_2 = hAPP(hAPP(c_List_Oappend(T_a),B_ys_H),V_zs_2) )
        | ( c_List_Olist_ONil(T_a) = V_ys_2
          & hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2) = V_zs_2 ) ) ) ).

fof(fact_rtrancl__trans,axiom,
    ! [V_ca_2,V_r_2,V_ba_2,V_aa_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ca_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_ba_2),V_ca_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_aa_2),V_ba_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(fact_takeWhile_Osimps_I1_J,axiom,
    ! [V_Pa_2,T_a] : c_List_OtakeWhile(T_a,V_Pa_2,c_List_Olist_ONil(T_a)) = c_List_Olist_ONil(T_a) ).

fof(fact_mem__Sigma__iff,axiom,
    ! [V_B_2,V_A_2,V_ba_2,V_aa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_aa_2),V_ba_2)),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2))
        & hBOOL(hAPP(hAPP(c_member(T_b),V_ba_2),hAPP(V_B_2,V_aa_2))) ) ) ).

fof(conj_0,conjecture,
    ! [B_i] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_b____),v_a____)),hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(hAPP(hAPP(c_Arrow__Order__Mirabelle_Obelow,hAPP(v_P____,B_i)),v_c____),v_b____)),v_b____),v_a____)),v_a____),v_c____)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),v_a____),v_b____)),hAPP(v_P____,B_i))) ) ).

fof(fact_split__conv,axiom,
    ! [V_ba_2,V_aa_2,V_f_2,T_a,T_c,T_b] : hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(T_b,T_c,T_a),V_f_2),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_aa_2),V_ba_2)) = hAPP(hAPP(V_f_2,V_aa_2),V_ba_2) ).

fof(fact_override__on__apply__notin,axiom,
    ! [V_g_2,V_f_2,T_b,V_A_2,V_aa_2,T_a] :
      ( c_Fun_Ooverride__on(T_a,T_b,V_f_2,V_g_2,V_A_2,V_aa_2) = hAPP(V_f_2,V_aa_2)
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_aa_2),V_A_2)) ) ).

fof(fact_length__takeWhile__less__P__nth,axiom,
    ! [V_xs_2,T_a,V_Pa_2,V_j_2] :
      ( ! [B_i] :
          ( hBOOL(hAPP(V_Pa_2,c_List_Onth(T_a,V_xs_2,B_i)))
         <= c_Orderings_Oord__class_Oless(tc_Nat_Onat,B_i,V_j_2) )
     => ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs_2))
       => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_j_2,c_Nat_Osize__class_Osize(tc_List_Olist(T_a),c_List_OtakeWhile(T_a,V_Pa_2,V_xs_2))) ) ) ).

fof(fact_nth__append__length,axiom,
    ! [V_ys,V_x,V_xs,T_a] : c_List_Onth(T_a,hAPP(hAPP(c_List_Oappend(T_a),V_xs),hAPP(hAPP(c_List_Olist_OCons(T_a),V_x),V_ys)),c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs)) = V_x ).

fof(fact_listrelp__listrel__eq,axiom,
    ! [V_xa_2,V_x_2,V_r_2,T_a] :
      ( c_List_Olistrelp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2),V_x_2,V_xa_2)
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)),V_x_2),V_xa_2)),c_List_Olistrel(T_a,V_r_2))) ) ).

fof(fact__096_I_Fp_O_Abelow_A_Ibelow_A_IP_Ap_J_Ac_Ab_J_Ab_Aa_J_A_058_AProf_096,axiom,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(hAPP(c_COMBC(tc_Arrow__Order__Mirabelle_Oindi,tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_Arrow__Order__Mirabelle_Oalt,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),tc_Arrow__Order__Mirabelle_Oindi),c_Arrow__Order__Mirabelle_Obelow),v_P____)),v_c____)),v_b____))),v_b____)),v_a____)),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_RangeE,axiom,
    ! [V_r_2,T_b,V_ba_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_ba_2),c_Relation_ORange(T_b,T_a,V_r_2)))
     => ~ ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_x),V_ba_2)),V_r_2)) ) ).

fof(fact_IIA__def,axiom,
    ! [V_Fa_2] :
      ( c_Arrow__Order__Mirabelle_OIIA(V_Fa_2)
    <=> ! [B_x] :
          ( ! [B_xa] :
              ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_xa),c_Arrow__Order__Mirabelle_OProf))
             => ! [B_a,B_b] :
                  ( ! [B_i] :
                      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,B_i)))
                    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_xa,B_i))) )
                 => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_xa)))
                  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_Fa_2,B_x))) ) ) )
         <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf)) ) ) ).

fof(fact_neq__if__length__neq,axiom,
    ! [V_ys,V_xs,T_a] :
      ( c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_xs) != c_Nat_Osize__class_Osize(tc_List_Olist(T_a),V_ys)
     => V_xs != V_ys ) ).

fof(fact_trans__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(T_a,V_r_2)
    <=> ! [B_x,B_y] :
          ( ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_z)),V_r_2))
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_z)),V_r_2)) )
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_y)),V_r_2)) ) ) ).

fof(fact_Times__subset__cancel2,axiom,
    ! [V_B_2,V_A_2,T_b,V_C_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_C_2))
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),c_Product__Type_OSigma(T_b,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_b,V_C_2)),c_Product__Type_OSigma(T_b,T_a,V_B_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_b,V_C_2)))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( V_y = V_x
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_partition_Osimps_I2_J,axiom,
    ! [V_xs_2,V_x_2,V_Pa_2,T_a] : hAPP(hAPP(c_Product__Type_Oprod_Oprod__case(tc_List_Olist(T_a),tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(hAPP(c_COMBS(tc_List_Olist(T_a),tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),hAPP(hAPP(c_COMBB(tc_fun(tc_List_Olist(T_a),tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),tc_fun(tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),tc_List_Olist(T_a)),c_COMBS(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),hAPP(hAPP(c_COMBB(tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),tc_fun(tc_List_Olist(T_a),tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),tc_List_Olist(T_a)),hAPP(c_COMBB(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_fun(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),tc_List_Olist(T_a)),c_If(tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),hAPP(V_Pa_2,V_x_2)))),hAPP(hAPP(c_COMBB(tc_List_Olist(T_a),tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),tc_List_Olist(T_a)),c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a))),hAPP(c_List_Olist_OCons(T_a),V_x_2))))),hAPP(hAPP(c_COMBC(tc_List_Olist(T_a),tc_fun(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),hAPP(hAPP(c_COMBB(tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a))),tc_fun(tc_fun(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_fun(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)))),tc_List_Olist(T_a)),c_COMBB(tc_List_Olist(T_a),tc_prod(tc_List_Olist(T_a),tc_List_Olist(T_a)),tc_List_Olist(T_a))),c_Product__Type_OPair(tc_List_Olist(T_a),tc_List_Olist(T_a)))),hAPP(c_List_Olist_OCons(T_a),V_x_2)))),c_List_Opartition(T_a,V_Pa_2,V_xs_2)) = c_List_Opartition(T_a,V_Pa_2,hAPP(hAPP(c_List_Olist_OCons(T_a),V_x_2),V_xs_2)) ).

fof(fact_inf__sup__ord_I2_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_y) ) ).

fof(fact_DomainP__Domain__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( c_Predicate_ODomainP(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2),V_x_2)
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_inf1E,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2))
     => ~ ( hBOOL(hAPP(V_A_2,V_x_2))
         => ~ hBOOL(hAPP(V_B_2,V_x_2)) ) ) ).

