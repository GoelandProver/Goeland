fof(fact_le__iff__sup,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_xa_2,V_ya_2) = V_ya_2
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_le__supI2,axiom,
    ! [V_a,V_b,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b)) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_trans__converse,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2))
    <=> c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_bot__apply,axiom,
    ! [V_xa_2,T_b,T_a] :
      ( class_Orderings_Obot(T_a)
     => hAPP(c_Orderings_Obot__class_Obot(tc_fun(T_b,T_a)),V_xa_2) = c_Orderings_Obot__class_Obot(T_a) ) ).

fof(fact_def__wfrec,axiom,
    ! [V_a_2,V_H_2,V_r_2,T_b,T_a,V_f_2] :
      ( V_f_2 = c_Recdef_Owfrec(T_a,T_b,V_r_2,V_H_2)
     => ( hAPP(V_f_2,V_a_2) = hAPP(hAPP(V_H_2,c_Recdef_Ocut(T_a,T_b,V_f_2,V_r_2,V_a_2)),V_a_2)
       <= c_Wellfounded_Owf(T_a,V_r_2) ) ) ).

fof(fact_refl__on__Un,axiom,
    ! [V_s_2,V_B_2,V_r_2,V_A_2,T_a] :
      ( ( c_Relation_Orefl__on(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2))
       <= c_Relation_Orefl__on(T_a,V_B_2,V_s_2) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_UnCI,axiom,
    ! [V_A_2,V_B_2,V_c_2,T_a] :
      ( ( c_member(T_a,V_c_2,V_A_2)
       <= ~ c_member(T_a,V_c_2,V_B_2) )
     => c_member(T_a,V_c_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ) ).

fof(fact_fold__graph_H_Ointros_I2_J,axiom,
    ! [V_ya_2,V_z_2,V_f_2,T_b,V_A_2,V_xa_2,T_a] :
      ( c_member(T_a,V_xa_2,V_A_2)
     => ( c_Nitpick_Ofold__graph_H(T_a,T_b,V_f_2,V_z_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),V_ya_2)
       => c_Nitpick_Ofold__graph_H(T_a,T_b,V_f_2,V_z_2,V_A_2,hAPP(hAPP(V_f_2,V_xa_2),V_ya_2)) ) ) ).

fof(fact_xt1_I8_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_inf__sup__ord_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_x)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_wf__acc__iff,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
    <=> ! [B_x] : c_member(T_a,B_x,c_Wellfounded_Oacc(T_a,V_r_2)) ) ).

fof(fact_pred__nat__trancl__eq__le,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat),c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat,V_m_2,V_n_2),c_Transitive__Closure_Ortrancl(tc_Nat_Onat,c_Wellfounded_Opred__nat)) ) ).

fof(fact_sup__absorb2,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y) = V_y )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_set__rev__mp,axiom,
    ! [V_B_2,V_A_2,V_xa_2,T_a] :
      ( c_member(T_a,V_xa_2,V_A_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
       => c_member(T_a,V_xa_2,V_B_2) ) ) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_xa_2,V_ya_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_ya_2,V_xa_2)
       => ( V_xa_2 = V_ya_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2) ) ) ) ).

fof(fact_sup__mono,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_d)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b),c_Lattices_Osemilattice__sup__class_Osup(T_a,V_c,V_d)) ) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_not__acc__down,axiom,
    ! [V_R_2,V_xa_2,T_a] :
      ( ~ c_member(T_a,V_xa_2,c_Wellfounded_Oacc(T_a,V_R_2))
     => ~ ! [B_z] :
            ( c_member(T_a,B_z,c_Wellfounded_Oacc(T_a,V_R_2))
           <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_xa_2),V_R_2) ) ) ).

fof(fact_double__diff,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( V_A_2 = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_A_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) ) ) ).

fof(fact_Un__least,axiom,
    ! [V_B_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_C_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_equalityI,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( V_B_2 = V_A_2
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) ) ) ).

fof(fact_UnE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ( c_member(T_a,V_c_2,V_B_2)
       <= ~ c_member(T_a,V_c_2,V_A_2) )
     <= c_member(T_a,V_c_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ) ).

fof(fact_mlex__less,axiom,
    ! [V_R_2,T_a,V_ya_2,V_xa_2,V_f_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_xa_2),hAPP(V_f_2,V_ya_2))
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2)) ) ).

fof(fact_order__less__le,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
      <=> ( V_ya_2 != V_xa_2
          & c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_converse__rtrancl__induct,axiom,
    ! [V_P_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
     => ( hBOOL(hAPP(V_P_2,V_b_2))
       => ( hBOOL(hAPP(V_P_2,V_a_2))
         <= ! [B_y,B_z] :
              ( ( ( hBOOL(hAPP(V_P_2,B_y))
                 <= hBOOL(hAPP(V_P_2,B_z)) )
               <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) )
             <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_z),V_r_2) ) ) ) ) ).

fof(fact_order__less__imp__not__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_in__above,axiom,
    ! [V_ya_2,V_xa_2,V_La_2,V_b_2,V_a_2] :
      ( ( ( ( ( V_xa_2 != V_b_2
             => ( ( V_b_2 != V_ya_2
                 => c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),V_La_2) )
                & ( V_b_2 = V_ya_2
                 => ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_a_2),V_La_2)
                    | V_a_2 = V_xa_2 ) ) ) )
            & ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_a_2,V_ya_2),V_La_2)
             <= V_xa_2 = V_b_2 )
            & V_xa_2 != V_ya_2 )
        <=> c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),c_Arrow__Order__Mirabelle_Oabove(V_La_2,V_a_2,V_b_2)) )
       <= c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin) )
     <= V_b_2 != V_a_2 ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( ~ hBOOL(hAPP(c_fequal(V_x_2),V_y_2))
      | V_y_2 = V_x_2 ) ).

fof(fact_antisym__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Oantisym(T_a,V_r_2)
    <=> ! [B_x,B_y] :
          ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_x),V_r_2)
           => B_y = B_x )
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_y),V_r_2) ) ) ).

fof(fact_refl__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Orefl__on(T_a,V_A_2,V_r_2)
    <=> c_Relation_Orefl__on(T_a,V_A_2,c_Relation_Oconverse(T_a,T_a,V_r_2)) ) ).

fof(fact_Diff__insert,axiom,
    ! [V_B_2,V_a_2,V_A_2,T_a] : c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_a_2,V_B_2)) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(fact_Transitive__Closure_Otrancl__into__trancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),V_r_2)
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_insertI1,axiom,
    ! [V_B_2,V_a_2,T_a] : c_member(T_a,V_a_2,c_Set_Oinsert(T_a,V_a_2,V_B_2)) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) ) ) ).

fof(fact_trans__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Otrans(T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_Un__empty__right,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_converse__Id,axiom,
    ! [T_a] : c_Relation_Oconverse(T_a,T_a,c_Relation_OId(T_a)) = c_Relation_OId(T_a) ).

fof(fact_insert__Diff__single,axiom,
    ! [V_A_2,V_a_2,T_a] : c_Set_Oinsert(T_a,V_a_2,V_A_2) = c_Set_Oinsert(T_a,V_a_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) ).

fof(fact_insert__ident,axiom,
    ! [V_B_2,V_A_2,V_xa_2,T_a] :
      ( ~ c_member(T_a,V_xa_2,V_A_2)
     => ( ~ c_member(T_a,V_xa_2,V_B_2)
       => ( V_B_2 = V_A_2
        <=> c_Set_Oinsert(T_a,V_xa_2,V_B_2) = c_Set_Oinsert(T_a,V_xa_2,V_A_2) ) ) ) ).

fof(fact_subsetD,axiom,
    ! [V_c_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_member(T_a,V_c_2,V_A_2)
       => c_member(T_a,V_c_2,V_B_2) ) ) ).

fof(fact_DomainE,axiom,
    ! [V_r_2,T_b,V_a_2,T_a] :
      ( ~ ! [B_y] : ~ c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,B_y),V_r_2)
     <= c_member(T_a,V_a_2,c_Relation_ODomain(T_a,T_b,V_r_2)) ) ).

fof(fact_refl__onD,axiom,
    ! [V_a_2,V_r_2,V_A_2,T_a] :
      ( ( c_member(T_a,V_a_2,V_A_2)
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_a_2),V_r_2) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_trans__lex__prod,axiom,
    ! [V_R2_2,T_b,V_R1_2,T_a] :
      ( c_Relation_Otrans(T_a,V_R1_2)
     => ( c_Relation_Otrans(tc_prod(T_a,T_b),c_Wellfounded_Olex__prod(T_a,T_b,V_R1_2,V_R2_2))
       <= c_Relation_Otrans(T_b,V_R2_2) ) ) ).

fof(fact_order__neq__le__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b)
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_b) )
       <= V_a != V_b )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_strict__linear__order__on__diff__Id,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Order__Relation_Ostrict__linear__order__on(T_a,V_A_2,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a)))
     <= c_Order__Relation_Olinear__order__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_less__than__iff,axiom,
    ! [V_ya_2,V_xa_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_xa_2,V_ya_2)
    <=> c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat),c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat,V_xa_2,V_ya_2),c_Wellfounded_Oless__than) ) ).

fof(fact_Diff__insert2,axiom,
    ! [V_B_2,V_a_2,V_A_2,T_a] : c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_a_2,V_B_2)) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),V_B_2) ).

fof(fact_Domain__mono,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_r_2),c_Relation_ODomain(T_a,T_b,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_Un__upper2,axiom,
    ! [V_A_2,V_B_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ).

fof(fact_Domain__Diff__subset,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_A_2),c_Relation_ODomain(T_a,T_b,V_B_2)),c_Relation_ODomain(T_a,T_b,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_A_2,V_B_2))) ).

fof(fact_rtrancl__subset__rtrancl,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Transitive__Closure_Ortrancl(T_a,V_s_2))
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2)) ) ).

fof(fact_not__less__iff__gr__or__eq,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
      <=> ( V_xa_2 = V_ya_2
          | c_Orderings_Oord__class_Oless(T_a,V_ya_2,V_xa_2) ) ) ) ).

fof(fact_trancl__trans,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_linear__order__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Order__Relation_Olinear__order__on(T_a,V_A_2,c_Relation_Oconverse(T_a,T_a,V_r_2))
    <=> c_Order__Relation_Olinear__order__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_in__lex__prod,axiom,
    ! [V_s_2,V_r_2,V_b_H_2,V_a_H_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Product__Type_OPair(T_a,T_b,V_a_H_2,V_b_H_2)),c_Wellfounded_Olex__prod(T_a,T_b,V_r_2,V_s_2))
    <=> ( ( c_member(tc_prod(T_b,T_b),c_Product__Type_OPair(T_b,T_b,V_b_2,V_b_H_2),V_s_2)
          & V_a_H_2 = V_a_2 )
        | c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_a_H_2),V_r_2) ) ) ).

fof(arity_Nat__Onat__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_Nat_Onat) ).

fof(fact_eqset__imp__iff,axiom,
    ! [V_xa_2,T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => ( c_member(T_a,V_xa_2,V_A_2)
      <=> c_member(T_a,V_xa_2,V_B_2) ) ) ).

fof(fact_Range__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_ORange(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) = V_A_2 ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(arity_fun__Lattices_Osemilattice__sup,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Osemilattice__sup(tc_fun(T_2,T_1))
     <= class_Lattices_Olattice(T_1) ) ).

fof(fact_acyclicI,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_x),c_Transitive__Closure_Otrancl(T_a,V_r_2))
     => c_Wellfounded_Oacyclic(T_a,V_r_2) ) ).

fof(fact_order__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_sup__bot__left,axiom,
    ! [V_x,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,c_Orderings_Obot__class_Obot(T_a),V_x) = V_x
     <= class_Lattices_Obounded__lattice__bot(T_a) ) ).

fof(fact_partial__order__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Order__Relation_Opartial__order__on(T_a,V_A_2,V_r_2)
    <=> c_Order__Relation_Opartial__order__on(T_a,V_A_2,c_Relation_Oconverse(T_a,T_a,V_r_2)) ) ).

fof(fact_linorder__not__le,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2)
      <=> c_Orderings_Oord__class_Oless(T_a,V_ya_2,V_xa_2) ) ) ).

fof(fact_UnI2,axiom,
    ! [V_A_2,V_B_2,V_c_2,T_a] :
      ( c_member(T_a,V_c_2,V_B_2)
     => c_member(T_a,V_c_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ) ).

fof(fact_less__le__not__le,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2)
          & ~ c_Orderings_Oord__class_Oless__eq(T_a,V_ya_2,V_xa_2) )
      <=> c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2) ) ) ).

fof(fact_irrefl__diff__Id,axiom,
    ! [V_r_2,T_a] : c_Relation_Oirrefl(T_a,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a))) ).

fof(fact_trans__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(T_a,V_r_2)
    <=> ! [B_x,B_y] :
          ( ! [B_z] :
              ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_z),V_r_2)
             <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_z),V_r_2) )
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_y),V_r_2) ) ) ).

fof(fact_r__r__into__trancl,axiom,
    ! [V_c_2,V_R_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),V_R_2)
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_R_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_R_2) ) ).

fof(fact_cut__apply,axiom,
    ! [V_f_2,T_b,V_r_2,V_a_2,V_xa_2,T_a] :
      ( hAPP(c_Recdef_Ocut(T_a,T_b,V_f_2,V_r_2,V_a_2),V_xa_2) = hAPP(V_f_2,V_xa_2)
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_a_2),V_r_2) ) ).

fof(fact_curryI,axiom,
    ! [V_b_2,V_a_2,T_b,T_a,V_f_2] :
      ( hBOOL(hAPP(V_f_2,c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2)))
     => hBOOL(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2,V_a_2,V_b_2)) ) ).

fof(arity_fun__Lattices_Obounded__lattice__bot,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Obounded__lattice__bot(tc_fun(T_2,T_1))
     <= class_Lattices_Obounded__lattice(T_1) ) ).

fof(fact_emptyE,axiom,
    ! [V_a_2,T_a] : ~ c_member(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_subset__insert__iff,axiom,
    ! [V_B_2,V_xa_2,V_A_2,T_a] :
      ( ( ( c_member(T_a,V_xa_2,V_A_2)
         => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),V_B_2) )
        & ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
         <= ~ c_member(T_a,V_xa_2,V_A_2) ) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,V_B_2)) ) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_UnI1,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( c_member(T_a,V_c_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
     <= c_member(T_a,V_c_2,V_A_2) ) ).

fof(fact_insert__is__Un,axiom,
    ! [V_A_2,V_a_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))),V_A_2) = c_Set_Oinsert(T_a,V_a_2,V_A_2) ).

fof(fact_strict__linear__order__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Order__Relation_Ostrict__linear__order__on(T_a,V_A_2,V_r_2)
    <=> ( c_Relation_Otrans(T_a,V_r_2)
        & c_Relation_Oirrefl(T_a,V_r_2)
        & c_Relation_Ototal__on(T_a,V_A_2,V_r_2) ) ) ).

fof(fact_trans__trancl,axiom,
    ! [V_r_2,T_a] : c_Relation_Otrans(T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ).

fof(fact_antisym__Id,axiom,
    ! [T_a] : c_Relation_Oantisym(T_a,c_Relation_OId(T_a)) ).

fof(fact_rtrancl__induct,axiom,
    ! [V_P_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( ( hBOOL(hAPP(V_P_2,V_b_2))
         <= ! [B_y] :
              ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,B_y),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
             => ! [B_z] :
                  ( ( hBOOL(hAPP(V_P_2,B_z))
                   <= hBOOL(hAPP(V_P_2,B_y)) )
                 <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_z),V_r_2) ) ) )
       <= hBOOL(hAPP(V_P_2,V_a_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_rtrancl__into__trancl2,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2) ) ).

fof(fact_DiffI,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ( c_member(T_a,V_c_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
       <= ~ c_member(T_a,V_c_2,V_B_2) )
     <= c_member(T_a,V_c_2,V_A_2) ) ).

fof(fact_le__supE,axiom,
    ! [V_x,V_b,V_a,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b),V_x)
       => ~ ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_x)
           => ~ c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_x) ) ) ) ).

fof(fact_insertCI,axiom,
    ! [V_b_2,V_B_2,V_a_2,T_a] :
      ( ( V_a_2 = V_b_2
       <= ~ c_member(T_a,V_a_2,V_B_2) )
     => c_member(T_a,V_a_2,c_Set_Oinsert(T_a,V_b_2,V_B_2)) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( ! [B_x] : hAPP(V_g_2,B_x) = hAPP(V_f_2,B_x)
     => V_f_2 = V_g_2 ) ).

fof(fact_antisym__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Oantisym(T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(arity_fun__Lattices_Obounded__lattice,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Obounded__lattice(T_1)
     => class_Lattices_Obounded__lattice(tc_fun(T_2,T_1)) ) ).

fof(fact_trans__Id,axiom,
    ! [T_a] : c_Relation_Otrans(T_a,c_Relation_OId(T_a)) ).

fof(fact_trancl_Or__into__trancl,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_wf__lex__prod,axiom,
    ! [V_rb_2,T_b,V_ra_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_ra_2)
     => ( c_Wellfounded_Owf(T_b,V_rb_2)
       => c_Wellfounded_Owf(tc_prod(T_a,T_b),c_Wellfounded_Olex__prod(T_a,T_b,V_ra_2,V_rb_2)) ) ) ).

fof(fact_internal__split__conv,axiom,
    ! [V_b_2,V_a_2,V_c_2,T_a,T_c,T_b] : hAPP(hAPP(V_c_2,V_a_2),V_b_2) = c_Product__Type_Ointernal__split(T_b,T_c,T_a,V_c_2,c_Product__Type_OPair(T_b,T_c,V_a_2,V_b_2)) ).

fof(fact_sup__eq__bot__iff,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( ( ( c_Orderings_Obot__class_Obot(T_a) = V_ya_2
          & c_Orderings_Obot__class_Obot(T_a) = V_xa_2 )
      <=> c_Orderings_Obot__class_Obot(T_a) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_xa_2,V_ya_2) )
     <= class_Lattices_Obounded__lattice__bot(T_a) ) ).

fof(fact_same__fstI,axiom,
    ! [T_a,V_R_2,V_ya_2,V_y_H_2,T_b,V_xa_2,V_P_2] :
      ( ( c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_y_H_2),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_ya_2)),c_Recdef_Osame__fst(T_a,T_b,V_P_2,V_R_2))
       <= c_member(tc_prod(T_b,T_b),c_Product__Type_OPair(T_b,T_b,V_y_H_2,V_ya_2),hAPP(V_R_2,V_xa_2)) )
     <= hBOOL(hAPP(V_P_2,V_xa_2)) ) ).

fof(fact_Domain__insert,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] : c_Relation_ODomain(T_a,T_b,c_Set_Oinsert(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),V_r_2)) = c_Set_Oinsert(T_a,V_a_2,c_Relation_ODomain(T_a,T_b,V_r_2)) ).

fof(fact_converse__in__Lin,axiom,
    ! [V_La_2] :
      ( c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Relation_Oconverse(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_La_2),c_Arrow__Order__Mirabelle_OLin)
    <=> c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin) ) ).

fof(fact_wf__inv__image,axiom,
    ! [V_f_2,T_b,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_Wellfounded_Owf(T_b,hAPP(c_Relation_Oinv__image(T_a,T_b,V_r_2),V_f_2)) ) ).

fof(fact_rtrancl__reflcl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_R_2),c_Relation_OId(T_a)) ).

fof(fact_Un__insert__right,axiom,
    ! [V_B_2,V_a_2,V_A_2,T_a] : c_Set_Oinsert(T_a,V_a_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_a_2,V_B_2)) ).

fof(fact_Un__commute,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ).

fof(fact_less__imp__neq,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_y != V_x ) ) ).

fof(arity_HOL__Obool__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_HOL_Obool) ).

fof(fact_insert__mono,axiom,
    ! [V_a_2,V_D_2,V_C_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_a_2,V_C_2),c_Set_Oinsert(T_a,V_a_2,V_D_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_D_2) ) ).

fof(fact_curryE,axiom,
    ! [V_b_2,V_a_2,V_f_2,T_b,T_a] :
      ( hBOOL(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2,V_a_2,V_b_2))
     => hBOOL(hAPP(V_f_2,c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2))) ) ).

fof(fact_Range__Un__eq,axiom,
    ! [V_B_2,V_A_2,T_a,T_b] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Relation_ORange(T_b,T_a,V_A_2),c_Relation_ORange(T_b,T_a,V_B_2)) = c_Relation_ORange(T_b,T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),V_A_2,V_B_2)) ).

fof(fact_inf__sup__aci_I6_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_z)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y),V_z)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_antisym__converse,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Oantisym(T_a,V_r_2)
    <=> c_Relation_Oantisym(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)) ) ).

fof(fact_le__funD,axiom,
    ! [V_xa_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_xa_2),hAPP(V_g_2,V_xa_2)) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( V_b = V_a
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) ) )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_equalityCE,axiom,
    ! [V_c_2,T_a,V_B_2,V_A_2] :
      ( V_B_2 = V_A_2
     => ( ( ~ c_member(T_a,V_c_2,V_B_2)
         <= c_member(T_a,V_c_2,V_A_2) )
       => ~ ( c_member(T_a,V_c_2,V_B_2)
           <= ~ c_member(T_a,V_c_2,V_A_2) ) ) ) ).

fof(fact_Image__Un,axiom,
    ! [V_B_2,V_A_2,V_R_2,T_a,T_b] : c_Relation_OImage(T_b,T_a,V_R_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_b,tc_HOL_Obool),V_A_2,V_B_2)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_b,T_a,V_R_2,V_A_2),c_Relation_OImage(T_b,T_a,V_R_2,V_B_2)) ).

fof(arity_Nat__Onat__Orderings_Olinorder,axiom,
    class_Orderings_Olinorder(tc_Nat_Onat) ).

fof(fact_subset__singletonD,axiom,
    ! [V_xa_2,V_A_2,T_a] :
      ( ( c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) = V_A_2
        | V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ) ).

fof(fact_eq__mem__trans,axiom,
    ! [V_A_2,T_a,V_b_2,V_a_2] :
      ( ( c_member(T_a,V_a_2,V_A_2)
       <= c_member(T_a,V_b_2,V_A_2) )
     <= V_a_2 = V_b_2 ) ).

fof(fact_diff__single__insert,axiom,
    ! [V_B_2,V_xa_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),V_B_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,V_B_2))
       <= c_member(T_a,V_xa_2,V_A_2) ) ) ).

fof(fact_equalityD2,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) ) ).

fof(fact_prod_Orecs,axiom,
    ! [V_b_2,V_a_2,V_f1_2,T_a,T_c,T_b] : c_Product__Type_Oprod_Oprod__rec(T_b,T_c,T_a,V_f1_2,c_Product__Type_OPair(T_b,T_c,V_a_2,V_b_2)) = hAPP(hAPP(V_f1_2,V_a_2),V_b_2) ).

fof(fact_sup__bot__right,axiom,
    ! [V_x,T_a] :
      ( V_x = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Orderings_Obot__class_Obot(T_a))
     <= class_Lattices_Obounded__lattice__bot(T_a) ) ).

fof(fact_inf__le1,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_x)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_Nat_Onat) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(T_1)
     => class_Orderings_Oorder(tc_fun(T_2,T_1)) ) ).

fof(fact_inf__le2,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_y)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_bex__Un,axiom,
    ! [V_P_2,V_B_2,V_A_2,T_a] :
      ( ? [B_x] :
          ( c_member(T_a,B_x,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
          & hBOOL(hAPP(V_P_2,B_x)) )
    <=> ( ? [B_x] :
            ( hBOOL(hAPP(V_P_2,B_x))
            & c_member(T_a,B_x,V_A_2) )
        | ? [B_x] :
            ( hBOOL(hAPP(V_P_2,B_x))
            & c_member(T_a,B_x,V_B_2) ) ) ) ).

fof(fact_Range__Diff__subset,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Relation_ORange(T_b,T_a,V_A_2),c_Relation_ORange(T_b,T_a,V_B_2)),c_Relation_ORange(T_b,T_a,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),V_A_2,V_B_2))) ).

fof(fact_lnear__order__on__empty,axiom,
    ! [T_a] : c_Order__Relation_Olinear__order__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_the__elem__eq,axiom,
    ! [V_xa_2,T_a] : c_Set_Othe__elem(T_a,c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = V_xa_2 ).

fof(arity_Nat__Onat__Lattices_Osemilattice__sup,axiom,
    class_Lattices_Osemilattice__sup(tc_Nat_Onat) ).

fof(fact_rtrancl__idemp,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) = c_Transitive__Closure_Ortrancl(T_a,V_r_2) ).

fof(fact_Diff__mono,axiom,
    ! [V_B_2,V_D_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_D_2,V_B_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_D_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_inf__sup__aci_I5_J,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_x) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_Refl__antisym__eq__Image1__Image1__iff,axiom,
    ! [V_b_2,V_a_2,V_r_2,T_a] :
      ( c_Relation_Orefl__on(T_a,c_Relation_OField(T_a,V_r_2),V_r_2)
     => ( c_Relation_Oantisym(T_a,V_r_2)
       => ( ( ( V_a_2 = V_b_2
            <=> c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) )
           <= c_member(T_a,V_b_2,c_Relation_OField(T_a,V_r_2)) )
         <= c_member(T_a,V_a_2,c_Relation_OField(T_a,V_r_2)) ) ) ) ).

fof(fact_Field__converse,axiom,
    ! [V_r_2,T_a] : c_Relation_OField(T_a,V_r_2) = c_Relation_OField(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)) ).

fof(fact_Un__mono,axiom,
    ! [V_D_2,V_B_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_D_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_D_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_Range__insert,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a,T_b] : c_Set_Oinsert(T_a,V_b_2,c_Relation_ORange(T_b,T_a,V_r_2)) = c_Relation_ORange(T_b,T_a,c_Set_Oinsert(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,V_a_2,V_b_2),V_r_2)) ).

fof(fact_refl__on__empty,axiom,
    ! [T_a] : c_Relation_Orefl__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_Image__empty,axiom,
    ! [V_R_2,T_a,T_b] : c_Relation_OImage(T_b,T_a,V_R_2,c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_refl__onD1,axiom,
    ! [V_ya_2,V_xa_2,V_r_2,V_A_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),V_r_2)
       => c_member(T_a,V_xa_2,V_A_2) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_irrefl__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_x),V_r_2)
    <=> c_Relation_Oirrefl(T_a,V_r_2) ) ).

fof(fact_wf__converse__trancl,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,c_Relation_Oconverse(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     <= c_Wellfounded_Owf(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)) ) ).

fof(fact_wf__subset,axiom,
    ! [V_p_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ( c_Wellfounded_Owf(T_a,V_p_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_p_2,V_r_2) ) ) ).

fof(fact_insert__code,axiom,
    ! [V_xa_2,V_A_2,V_ya_2,T_a] :
      ( hBOOL(hAPP(c_Set_Oinsert(T_a,V_ya_2,V_A_2),V_xa_2))
    <=> ( V_xa_2 = V_ya_2
        | hBOOL(hAPP(V_A_2,V_xa_2)) ) ) ).

fof(fact_wfP__subset,axiom,
    ! [V_p_2,V_r_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_fun(T_a,tc_HOL_Obool)),V_p_2,V_r_2)
       => c_Wellfounded_OwfP(T_a,V_p_2) )
     <= c_Wellfounded_OwfP(T_a,V_r_2) ) ).

fof(fact_singleton__iff,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( c_member(T_a,V_b_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
    <=> V_b_2 = V_a_2 ) ).

fof(fact_refl__onD2,axiom,
    ! [V_ya_2,V_xa_2,V_r_2,V_A_2,T_a] :
      ( c_Relation_Orefl__on(T_a,V_A_2,V_r_2)
     => ( c_member(T_a,V_ya_2,V_A_2)
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),V_r_2) ) ) ).

fof(fact_acc__subset,axiom,
    ! [V_R2_2,V_R1_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R1_2,V_R2_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Oacc(T_a,V_R2_2),c_Wellfounded_Oacc(T_a,V_R1_2)) ) ).

fof(fact_sup1E,axiom,
    ! [V_xa_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_xa_2))
     => ( ~ hBOOL(hAPP(V_A_2,V_xa_2))
       => hBOOL(hAPP(V_B_2,V_xa_2)) ) ) ).

fof(fact_rtrancl__Un__subset,axiom,
    ! [V_S_2,V_R_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_R_2),c_Transitive__Closure_Ortrancl(T_a,V_S_2)),c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2))) ).

fof(fact_Range__iff,axiom,
    ! [V_r_2,T_b,V_a_2,T_a] :
      ( ? [B_y] : c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,B_y,V_a_2),V_r_2)
    <=> c_member(T_a,V_a_2,c_Relation_ORange(T_b,T_a,V_r_2)) ) ).

fof(fact_Id__on__eqI,axiom,
    ! [V_A_2,T_a,V_b_2,V_a_2] :
      ( V_a_2 = V_b_2
     => ( c_member(T_a,V_a_2,V_A_2)
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Relation_OId__on(T_a,V_A_2)) ) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ).

fof(fact_fold__graph_H_Oequations_I1_J,axiom,
    ! [V_a2_2,V_a1_2,T_b,T_a] : c_Nitpick_Ofold__graph_H(T_a,T_b,V_a1_2,V_a2_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_a2_2) ).

fof(fact_antisym__empty,axiom,
    ! [T_a] : c_Relation_Oantisym(T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_eqelem__imp__iff,axiom,
    ! [V_A_2,T_a,V_ya_2,V_xa_2] :
      ( ( c_member(T_a,V_ya_2,V_A_2)
      <=> c_member(T_a,V_xa_2,V_A_2) )
     <= V_ya_2 = V_xa_2 ) ).

fof(fact_order__le__neq__trans,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
         <= V_a != V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_in__rel__def,axiom,
    ! [V_ya_2,V_xa_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_FunDef_Oin__rel(T_a,T_b,V_R_2),V_xa_2),V_ya_2))
    <=> c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_ya_2),V_R_2) ) ).

fof(fact_xt1_I11_J,axiom,
    ! [V_a,V_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
       => ( V_a != V_b
         => c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_Pair__inject,axiom,
    ! [V_b_H,V_a_H,V_b,V_a,T_b,T_a] :
      ( ~ ( V_a_H = V_a
         => V_b_H != V_b )
     <= c_Product__Type_OPair(T_a,T_b,V_a,V_b) = c_Product__Type_OPair(T_a,T_b,V_a_H,V_b_H) ) ).

fof(fact_Diff__subset__conv,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_C_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) ) ).

fof(fact_IdE,axiom,
    ! [V_p_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),V_p_2,c_Relation_OId(T_a))
     => ~ ! [B_x] : c_Product__Type_OPair(T_a,T_a,B_x,B_x) != V_p_2 ) ).

fof(fact_distrib__inf__le,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_z)),c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_z))) ) ).

fof(fact_below__Lin,axiom,
    ! [V_La_2,V_ya_2,V_xa_2] :
      ( V_xa_2 != V_ya_2
     => ( c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin)
       => c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_Obelow(V_La_2,V_xa_2,V_ya_2),c_Arrow__Order__Mirabelle_OLin) ) ) ).

fof(fact_empty__subsetI,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_A_2) ).

fof(fact_sup_Oleft__commute,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_b,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_c)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_b,V_c)) ) ).

fof(fact_subset__psubset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_acyclic__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_x),c_Transitive__Closure_Otrancl(T_a,V_r_2))
    <=> c_Wellfounded_Oacyclic(T_a,V_r_2) ) ).

fof(fact_wf__in__rel,axiom,
    ! [V_R_2,T_a] :
      ( c_Wellfounded_OwfP(T_a,c_FunDef_Oin__rel(T_a,T_a,V_R_2))
     <= c_Wellfounded_Owf(T_a,V_R_2) ) ).

fof(fact_Lin__irrefl,axiom,
    ! [V_b_2,V_a_2,V_La_2] :
      ( c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin)
     => ( ~ c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_b_2,V_a_2),V_La_2)
       <= c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_a_2,V_b_2),V_La_2) ) ) ).

fof(fact_subset__insertI2,axiom,
    ! [V_b_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_b_2,V_B_2)) ) ).

fof(fact_Image__closed__trancl,axiom,
    ! [V_X_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_a,T_a,V_r_2,V_X_2),V_X_2)
     => V_X_2 = c_Relation_OImage(T_a,T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2),V_X_2) ) ).

fof(fact_bot__least,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Obot(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Orderings_Obot__class_Obot(T_a),V_x) ) ).

fof(fact_SigmaI,axiom,
    ! [V_B_2,V_b_2,T_b,V_A_2,V_a_2,T_a] :
      ( c_member(T_a,V_a_2,V_A_2)
     => ( c_member(T_b,V_b_2,hAPP(V_B_2,V_a_2))
       => c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)) ) ) ).

fof(arity_fun__Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( class_Groups_Ominus(T_1)
     => class_Groups_Ominus(tc_fun(T_2,T_1)) ) ).

fof(fact_transD,axiom,
    ! [V_c_2,V_b_2,V_a_2,V_r_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)
       => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),V_r_2)
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),V_r_2) ) )
     <= c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_Diff__partition,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)) = V_B_2
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_subset__insert,axiom,
    ! [V_B_2,V_A_2,V_xa_2,T_a] :
      ( ~ c_member(T_a,V_xa_2,V_A_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,V_B_2))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_converseE,axiom,
    ! [V_r_2,V_yx_2,T_b,T_a] :
      ( c_member(tc_prod(T_a,T_b),V_yx_2,c_Relation_Oconverse(T_b,T_a,V_r_2))
     => ~ ! [B_x,B_y] :
            ( ~ c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,B_x,B_y),V_r_2)
           <= c_Product__Type_OPair(T_a,T_b,B_y,B_x) = V_yx_2 ) ) ).

fof(fact_all__not__in__conv,axiom,
    ! [V_A_2,T_a] :
      ( V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
    <=> ! [B_x] : ~ c_member(T_a,B_x,V_A_2) ) ).

fof(fact_predicate1D,axiom,
    ! [V_xa_2,V_Q_2,V_P_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_P_2,V_Q_2)
     => ( hBOOL(hAPP(V_P_2,V_xa_2))
       => hBOOL(hAPP(V_Q_2,V_xa_2)) ) ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(tc_fun(T_2,T_1))
     <= class_Orderings_Opreorder(T_1) ) ).

fof(fact_partial__order__on__empty,axiom,
    ! [T_a] : c_Order__Relation_Opartial__order__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_single__valued__subset,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2)
     => ( c_Relation_Osingle__valued(T_a,T_b,V_s_2)
       => c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ) ).

fof(fact_singleton__inject,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) = c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))
     => V_b_2 = V_a_2 ) ).

fof(fact_Un__left__absorb,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ).

fof(fact_Domain__empty__iff,axiom,
    ! [V_r_2,T_b,T_a] :
      ( c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)) = V_r_2
    <=> c_Relation_ODomain(T_a,T_b,V_r_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

fof(arity_fun__Orderings_Obot,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Obot(tc_fun(T_2,T_1))
     <= class_Orderings_Obot(T_1) ) ).

fof(fact_less__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless(tc_fun(T_a,T_b),V_f_2,V_g_2)
      <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
          & ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_g_2,V_f_2) ) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_linorder__neq__iff,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
          | c_Orderings_Oord__class_Oless(T_a,V_ya_2,V_xa_2) )
      <=> V_ya_2 != V_xa_2 ) ) ).

fof(fact_Un__Int__assoc__eq,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_C_2) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2))
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_A_2) ) ).

fof(fact_less__than__def,axiom,
    c_Wellfounded_Oless__than = c_Transitive__Closure_Otrancl(tc_Nat_Onat,c_Wellfounded_Opred__nat) ).

fof(fact_insert__Diff1,axiom,
    ! [V_A_2,V_B_2,V_xa_2,T_a] :
      ( c_member(T_a,V_xa_2,V_B_2)
     => c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_xa_2,V_A_2),V_B_2) ) ).

fof(fact_subset__Image1__Image1__iff,axiom,
    ! [V_b_2,V_a_2,V_r_2,T_a] :
      ( c_Order__Relation_Opreorder__on(T_a,c_Relation_OField(T_a,V_r_2),V_r_2)
     => ( c_member(T_a,V_a_2,c_Relation_OField(T_a,V_r_2))
       => ( c_member(T_a,V_b_2,c_Relation_OField(T_a,V_r_2))
         => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))))
          <=> c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_a_2),V_r_2) ) ) ) ) ).

fof(fact_Un__absorb2,axiom,
    ! [V_A_2,V_B_2,T_a] :
      ( V_A_2 = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) ) ).

fof(fact_sup__ge2,axiom,
    ! [V_x,V_y,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y))
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_Nat_Onat) ).

fof(fact_Diff__subset,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_A_2) ).

fof(fact_trancl__mono,axiom,
    ! [V_s_2,V_r_2,V_p_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),V_p_2,c_Transitive__Closure_Otrancl(T_a,V_s_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) )
     <= c_member(tc_prod(T_a,T_a),V_p_2,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_split__paired__All,axiom,
    ! [T_b,T_a,V_P_2] :
      ( ! [B_a,B_b] : hBOOL(hAPP(V_P_2,c_Product__Type_OPair(T_a,T_b,B_a,B_b)))
    <=> ! [B_x1] : hBOOL(hAPP(V_P_2,B_x1)) ) ).

fof(fact_Range__def,axiom,
    ! [V_r_2,T_a,T_b] : c_Relation_ORange(T_b,T_a,V_r_2) = c_Relation_ODomain(T_a,T_b,c_Relation_Oconverse(T_b,T_a,V_r_2)) ).

fof(fact_IntE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( c_member(T_a,V_c_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
     => ~ ( c_member(T_a,V_c_2,V_A_2)
         => ~ c_member(T_a,V_c_2,V_B_2) ) ) ).

fof(fact_empty__Diff,axiom,
    ! [V_A_2,T_a] : c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_A_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_equalityE,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( ~ ( ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
         <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
     <= V_B_2 = V_A_2 ) ).

fof(fact_diff__eq__diff__less,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( ( c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) = c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)
       => ( c_Orderings_Oord__class_Oless(T_a,V_a_2,V_b_2)
        <=> c_Orderings_Oord__class_Oless(T_a,V_c_2,V_d_2) ) )
     <= class_Groups_Oordered__ab__group__add(T_a) ) ).

fof(fact_wfrec__rel_Osimps,axiom,
    ! [V_a2_2,V_a1_2,V_F_2,V_R_2,T_b,T_a] :
      ( c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_F_2,V_a1_2,V_a2_2)
    <=> ? [B_g] :
          ( ! [B_z] :
              ( c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_F_2,B_z,hAPP(B_g,B_z))
             <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_a1_2),V_R_2) )
          & hAPP(hAPP(V_F_2,B_g),V_a1_2) = V_a2_2 ) ) ).

fof(fact_cuts__eq,axiom,
    ! [V_g_2,V_xa_2,V_r_2,V_f_2,T_b,T_a] :
      ( ! [B_y] :
          ( hAPP(V_g_2,B_y) = hAPP(V_f_2,B_y)
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,V_xa_2),V_r_2) )
    <=> c_Recdef_Ocut(T_a,T_b,V_g_2,V_r_2,V_xa_2) = c_Recdef_Ocut(T_a,T_b,V_f_2,V_r_2,V_xa_2) ) ).

fof(fact_wf__irrefl,axiom,
    ! [V_a_2,V_r_2,T_a] :
      ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_a_2),V_r_2)
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_rtrancl__Un__separatorE,axiom,
    ! [V_Q_2,V_P_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_P_2,V_Q_2)))
     => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_P_2))
       <= ! [B_x] :
            ( ! [B_y] :
                ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_y),V_Q_2)
               => B_y = B_x )
           <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,B_x),c_Transitive__Closure_Ortrancl(T_a,V_P_2)) ) ) ) ).

fof(fact_trancl__rtrancl__trancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_sup_Oleft__idem,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b)) ) ).

fof(fact_equalityD1,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     <= V_A_2 = V_B_2 ) ).

fof(fact_fold__graph_H_Ointros_I1_J,axiom,
    ! [V_z_2,V_f_2,T_b,T_a] : c_Nitpick_Ofold__graph_H(T_a,T_b,V_f_2,V_z_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_z_2) ).

fof(fact_Domain__iff,axiom,
    ! [V_r_2,T_b,V_a_2,T_a] :
      ( c_member(T_a,V_a_2,c_Relation_ODomain(T_a,T_b,V_r_2))
    <=> ? [B_y] : c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,B_y),V_r_2) ) ).

fof(fact_trancl__id,axiom,
    ! [V_r_2,T_a] :
      ( c_Transitive__Closure_Otrancl(T_a,V_r_2) = V_r_2
     <= c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_measure__def,axiom,
    ! [T_a] : c_Wellfounded_Omeasure(T_a) = c_Relation_Oinv__image(tc_Nat_Onat,T_a,c_Wellfounded_Oless__than) ).

fof(fact_inf1I,axiom,
    ! [T_a,V_B_2,V_xa_2,V_A_2] :
      ( hBOOL(hAPP(V_A_2,V_xa_2))
     => ( hBOOL(hAPP(V_B_2,V_xa_2))
       => hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_xa_2)) ) ) ).

fof(fact_Un__assoc,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_C_2) ).

fof(fact_fold__graph_H_Oequations_I2_J,axiom,
    ! [V_a5_2,V_a1_2,V_a2_2,V_a4_2,V_a3_2,T_b,T_a] :
      ( c_Nitpick_Ofold__graph_H(T_a,T_b,V_a3_2,V_a4_2,V_a2_2,hAPP(hAPP(V_a3_2,V_a1_2),V_a5_2))
    <=> ( ? [B_x,B_y] :
            ( hAPP(hAPP(V_a3_2,V_a1_2),V_a5_2) = hAPP(hAPP(V_a3_2,B_x),B_y)
            & c_Nitpick_Ofold__graph_H(T_a,T_b,V_a3_2,V_a4_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_a2_2,c_Set_Oinsert(T_a,B_x,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),B_y)
            & c_member(T_a,B_x,V_a2_2) )
        | ( hAPP(hAPP(V_a3_2,V_a1_2),V_a5_2) = V_a4_2
          & c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_a2_2 ) ) ) ).

fof(fact_converse__converse,axiom,
    ! [V_r_2,T_a,T_b] : V_r_2 = c_Relation_Oconverse(T_b,T_a,c_Relation_Oconverse(T_a,T_b,V_r_2)) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(fact_converseI,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),V_r_2)
     => c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,V_b_2,V_a_2),c_Relation_Oconverse(T_a,T_b,V_r_2)) ) ).

fof(fact_sup__least,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_z),V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_le__sup__iff,axiom,
    ! [V_z_2,V_ya_2,V_xa_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_z_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_ya_2,V_z_2) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_xa_2,V_ya_2),V_z_2) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_trans__reflclI,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(T_a,V_r_2)
     => c_Relation_Otrans(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a))) ) ).

fof(fact_rtrancl__Un__separator__converseE,axiom,
    ! [V_Q_2,V_P_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_P_2))
       <= ! [B_x] :
            ( ! [B_y] :
                ( B_x = B_y
               <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_x),V_Q_2) )
           <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_P_2)) ) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_P_2,V_Q_2))) ) ).

fof(fact_Id__on__empty,axiom,
    ! [T_a] : c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = c_Relation_OId__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_rtranclD,axiom,
    ! [V_R_2,V_b_2,V_a_2,T_a] :
      ( ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_R_2))
          & V_b_2 != V_a_2 )
        | V_a_2 = V_b_2 )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ) ).

fof(fact_in__rtrancl__UnI,axiom,
    ! [V_S_2,V_R_2,V_xa_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),V_xa_2,c_Transitive__Closure_Ortrancl(T_a,V_S_2))
        | c_member(tc_prod(T_a,T_a),V_xa_2,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) )
     => c_member(tc_prod(T_a,T_a),V_xa_2,c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2))) ) ).

fof(fact_wfrec__rel_Ointros,axiom,
    ! [V_g_2,V_F_2,T_b,V_R_2,V_xa_2,T_a] :
      ( ! [B_z] :
          ( c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_F_2,B_z,hAPP(V_g_2,B_z))
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_xa_2),V_R_2) )
     => c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_F_2,V_xa_2,hAPP(hAPP(V_F_2,V_g_2),V_xa_2)) ) ).

fof(fact_single__valued__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Osingle__valued(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_rtrancl__subset,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_S_2,c_Transitive__Closure_Ortrancl(T_a,V_R_2))
       => c_Transitive__Closure_Ortrancl(T_a,V_S_2) = c_Transitive__Closure_Ortrancl(T_a,V_R_2) ) ) ).

fof(fact_inf__sup__aci_I8_J,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_insertI2,axiom,
    ! [V_b_2,V_B_2,V_a_2,T_a] :
      ( c_member(T_a,V_a_2,c_Set_Oinsert(T_a,V_b_2,V_B_2))
     <= c_member(T_a,V_a_2,V_B_2) ) ).

fof(fact_Id__onE,axiom,
    ! [V_A_2,V_c_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),V_c_2,c_Relation_OId__on(T_a,V_A_2))
     => ~ ! [B_x] :
            ( c_member(T_a,B_x,V_A_2)
           => V_c_2 != c_Product__Type_OPair(T_a,T_a,B_x,B_x) ) ) ).

fof(fact_subset__insertI,axiom,
    ! [V_a_2,V_B_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Set_Oinsert(T_a,V_a_2,V_B_2)) ).

fof(fact_insert__absorb,axiom,
    ! [V_A_2,V_a_2,T_a] :
      ( V_A_2 = c_Set_Oinsert(T_a,V_a_2,V_A_2)
     <= c_member(T_a,V_a_2,V_A_2) ) ).

fof(fact_psubsetD,axiom,
    ! [V_c_2,V_B_2,V_A_2,T_a] :
      ( ( c_member(T_a,V_c_2,V_B_2)
       <= c_member(T_a,V_c_2,V_A_2) )
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_Domain__converse,axiom,
    ! [V_r_2,T_b,T_a] : c_Relation_ODomain(T_a,T_b,c_Relation_Oconverse(T_b,T_a,V_r_2)) = c_Relation_ORange(T_b,T_a,V_r_2) ).

fof(fact_rtrancl__converseD,axiom,
    ! [V_r_2,V_ya_2,V_xa_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)))
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_ya_2,V_xa_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_Un__absorb1,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => V_B_2 = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_le__funE,axiom,
    ! [V_xa_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_xa_2),hAPP(V_g_2,V_xa_2)) ) ) ).

fof(fact_SigmaD1,axiom,
    ! [V_B_2,V_A_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(T_a,V_a_2,V_A_2)
     <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)) ) ).

fof(fact_xt1_I2_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_a)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless(T_a,V_b,V_a) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_wf__not__sym,axiom,
    ! [V_xa_2,V_a_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_a_2),V_r_2)
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_xa_2),V_r_2) ) ) ).

fof(fact_sup__apply,axiom,
    ! [V_xa_2,V_g_2,V_f_2,T_b,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_b,T_a),V_f_2,V_g_2),V_xa_2) = c_Lattices_Osemilattice__sup__class_Osup(T_a,hAPP(V_f_2,V_xa_2),hAPP(V_g_2,V_xa_2)) ) ).

fof(fact_linorder__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
         <= V_x != V_y )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_subset__Image__Image__iff,axiom,
    ! [V_B_2,V_A_2,V_r_2,T_a] :
      ( ( ( ( ! [B_x] :
                ( ? [B_xa] :
                    ( c_member(T_a,B_xa,V_B_2)
                    & c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_xa,B_x),V_r_2) )
               <= c_member(T_a,B_x,V_A_2) )
          <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_a,T_a,V_r_2,V_A_2),c_Relation_OImage(T_a,T_a,V_r_2,V_B_2)) )
         <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Relation_OField(T_a,V_r_2)) )
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Relation_OField(T_a,V_r_2)) )
     <= c_Order__Relation_Opreorder__on(T_a,c_Relation_OField(T_a,V_r_2),V_r_2) ) ).

fof(fact_leD,axiom,
    ! [V_x,V_y,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_acyclic__subset,axiom,
    ! [V_r_2,V_s_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
       => c_Wellfounded_Oacyclic(T_a,V_r_2) )
     <= c_Wellfounded_Oacyclic(T_a,V_s_2) ) ).

fof(fact_trancl__domain,axiom,
    ! [V_r_2,T_a] : c_Relation_ODomain(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) = c_Relation_ODomain(T_a,T_a,V_r_2) ).

fof(fact_rtrancl__eq__or__trancl,axiom,
    ! [V_R_2,V_ya_2,V_xa_2,T_a] :
      ( ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Otrancl(T_a,V_R_2))
          & V_ya_2 != V_xa_2 )
        | V_ya_2 = V_xa_2 )
    <=> c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ) ).

fof(fact_rtrancl__Un__rtrancl,axiom,
    ! [V_S_2,V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2)) = c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_R_2),c_Transitive__Closure_Ortrancl(T_a,V_S_2))) ).

fof(fact_reflcl__trancl,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_r_2) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Otrancl(T_a,V_r_2),c_Relation_OId(T_a)) ).

fof(fact_insert__Diff__if,axiom,
    ! [V_A_2,V_B_2,V_xa_2,T_a] :
      ( ( c_Set_Oinsert(T_a,V_xa_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_xa_2,V_A_2),V_B_2)
       <= ~ c_member(T_a,V_xa_2,V_B_2) )
      & ( c_member(T_a,V_xa_2,V_B_2)
       => c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_xa_2,V_A_2),V_B_2) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_inf__sup__ord_I4_J,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_y,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)) ) ).

fof(arity_HOL__Obool__Orderings_Obot,axiom,
    class_Orderings_Obot(tc_HOL_Obool) ).

fof(fact_SigmaE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_b,T_a] :
      ( c_member(tc_prod(T_a,T_b),V_c_2,c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2))
     => ~ ! [B_x] :
            ( c_member(T_a,B_x,V_A_2)
           => ! [B_y] :
                ( c_member(T_b,B_y,hAPP(V_B_2,B_x))
               => V_c_2 != c_Product__Type_OPair(T_a,T_b,B_x,B_y) ) ) ) ).

fof(fact_wf__insert,axiom,
    ! [V_r_2,V_xa_2,V_ya_2,T_a] :
      ( ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
        & c_Wellfounded_Owf(T_a,V_r_2) )
    <=> c_Wellfounded_Owf(T_a,c_Set_Oinsert(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_ya_2,V_xa_2),V_r_2)) ) ).

fof(fact_converse__rtranclE2,axiom,
    ! [V_r_2,V_zb_2,V_za_2,V_xb_2,V_xa_2,T_b,T_a] :
      ( c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_xb_2),c_Product__Type_OPair(T_a,T_b,V_za_2,V_zb_2)),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))
     => ( ~ ! [B_a,B_b] :
              ( ~ c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_a,B_b),c_Product__Type_OPair(T_a,T_b,V_za_2,V_zb_2)),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))
             <= c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_xb_2),c_Product__Type_OPair(T_a,T_b,B_a,B_b)),V_r_2) )
       <= c_Product__Type_OPair(T_a,T_b,V_za_2,V_zb_2) != c_Product__Type_OPair(T_a,T_b,V_xa_2,V_xb_2) ) ) ).

fof(fact_Pair__eq,axiom,
    ! [V_b_H_2,V_a_H_2,V_b_2,V_a_2,T_b,T_a] :
      ( ( V_a_2 = V_a_H_2
        & V_b_H_2 = V_b_2 )
    <=> c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2) = c_Product__Type_OPair(T_a,T_b,V_a_H_2,V_b_H_2) ) ).

fof(fact_trancl__range,axiom,
    ! [V_r_2,T_a] : c_Relation_ORange(T_a,T_a,V_r_2) = c_Relation_ORange(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ).

fof(fact_linorder__antisym__conv1,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( V_ya_2 = V_xa_2
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2) )
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2) ) ) ).

fof(fact_trancl__converseD,axiom,
    ! [V_r_2,V_ya_2,V_xa_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Otrancl(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)))
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Relation_Oconverse(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_insertE,axiom,
    ! [V_A_2,V_b_2,V_a_2,T_a] :
      ( ( V_a_2 != V_b_2
       => c_member(T_a,V_a_2,V_A_2) )
     <= c_member(T_a,V_a_2,c_Set_Oinsert(T_a,V_b_2,V_A_2)) ) ).

fof(fact_wf__measure,axiom,
    ! [V_f_2,T_a] : c_Wellfounded_Owf(T_a,hAPP(c_Wellfounded_Omeasure(T_a),V_f_2)) ).

fof(fact_Field__insert,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_a_2,c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),c_Relation_OField(T_a,V_r_2)) = c_Relation_OField(T_a,c_Set_Oinsert(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)) ).

fof(arity_Nat__Onat__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_Nat_Onat) ).

fof(fact_ord__less__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ( V_b = V_c
         => c_Orderings_Oord__class_Oless(T_a,V_a,V_c) ) ) ) ).

fof(arity_Nat__Onat__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_Nat_Onat) ).

fof(fact_psubset__imp__subset,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(arity_fun__Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(T_1)
     => class_Lattices_Olattice(tc_fun(T_2,T_1)) ) ).

fof(fact_not__psubset__empty,axiom,
    ! [V_A_2,T_a] : ~ c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_rtrancl_Ortrancl__into__rtrancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),V_r_2)
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_Field__Un,axiom,
    ! [V_s_2,V_r_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Relation_OField(T_a,V_r_2),c_Relation_OField(T_a,V_s_2)) = c_Relation_OField(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)) ).

fof(fact_order__less__asym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_mono__Field,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_OField(T_a,V_r_2),c_Relation_OField(T_a,V_s_2)) ) ).

fof(fact_linorder__antisym__conv2,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
        <=> V_xa_2 = V_ya_2 )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2) ) ) ).

fof(fact_Un__Diff,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_C_2) ).

fof(fact_wf__asym,axiom,
    ! [V_xa_2,V_a_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_a_2),V_r_2)
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_xa_2),V_r_2) ) ) ).

fof(fact_Range__empty,axiom,
    ! [T_a,T_b] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = c_Relation_ORange(T_b,T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool))) ).

fof(fact_diff__eq__diff__less__eq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( class_Groups_Oordered__ab__group__add(T_a)
     => ( c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2) = c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_c_2,V_d_2)
        <=> c_Orderings_Oord__class_Oless__eq(T_a,V_a_2,V_b_2) ) ) ) ).

fof(fact_linear__alt,axiom,
    ? [B_L] : c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),B_L,c_Arrow__Order__Mirabelle_OLin) ).

fof(fact_linorder__not__less,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_ya_2,V_xa_2) ) ) ).

fof(fact_antisym__subset,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2)
     => ( c_Relation_Oantisym(T_a,V_s_2)
       => c_Relation_Oantisym(T_a,V_r_2) ) ) ).

fof(fact_rtrancl__trancl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Otrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) = c_Transitive__Closure_Ortrancl(T_a,V_R_2) ).

fof(fact_xt1_I9_J,axiom,
    ! [V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_b,V_a)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_a,V_b) ) ) ).

fof(fact_Domain__Id__on,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Relation_ODomain(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_eq__mem,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( c_member(T_a,V_xa_2,c_fequal(V_ya_2))
    <=> V_xa_2 = V_ya_2 ) ).

fof(fact_mem__Sigma__iff,axiom,
    ! [V_B_2,V_A_2,V_b_2,V_a_2,T_b,T_a] :
      ( ( c_member(T_b,V_b_2,hAPP(V_B_2,V_a_2))
        & c_member(T_a,V_a_2,V_A_2) )
    <=> c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)) ) ).

fof(fact_rtrancl__trancl__trancl,axiom,
    ! [V_z_2,V_r_2,V_ya_2,V_xa_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_z_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_ya_2,V_z_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_diff__eq__diff__eq,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( ( c_Groups_Ominus__class_Ominus(T_a,V_c_2,V_d_2) = c_Groups_Ominus__class_Ominus(T_a,V_a_2,V_b_2)
       => ( V_a_2 = V_b_2
        <=> V_d_2 = V_c_2 ) )
     <= class_Groups_Oab__group__add(T_a) ) ).

fof(fact_trancl__converseI,axiom,
    ! [V_r_2,V_ya_2,V_xa_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Relation_Oconverse(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Otrancl(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2))) ) ).

fof(fact_le__supI,axiom,
    ! [V_b,V_x,V_a,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_x)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_x)
         => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b),V_x) ) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_single__valued__confluent,axiom,
    ! [V_z_2,V_ya_2,V_xa_2,V_r_2,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_a,V_r_2)
     => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
       => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_z_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
         => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_z_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
            | c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_ya_2,V_z_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ) ) ) ).

fof(fact_less__by__empty,axiom,
    ! [V_B_2,T_a,V_A_2] :
      ( c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = V_A_2
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_Diff__cancel,axiom,
    ! [V_A_2,T_a] : c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_trancl__converse,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Otrancl(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)) = c_Relation_Oconverse(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ).

fof(fact_Diff__insert__absorb,axiom,
    ! [V_A_2,V_xa_2,T_a] :
      ( ~ c_member(T_a,V_xa_2,V_A_2)
     => V_A_2 = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_xa_2,V_A_2),c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ) ).

fof(fact_not__leE,axiom,
    ! [V_x,V_y,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_inf__sup__ord_I3_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)) ) ).

fof(fact_psubset__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
    <=> ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
        & V_A_2 != V_B_2 ) ) ).

fof(fact_distrib__sup__le,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_y,V_z)),c_Lattices_Osemilattice__inf__class_Oinf(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y),c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_z)))
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_Range__converse,axiom,
    ! [V_r_2,T_a,T_b] : c_Relation_ODomain(T_a,T_b,V_r_2) = c_Relation_ORange(T_b,T_a,c_Relation_Oconverse(T_a,T_b,V_r_2)) ).

fof(fact_insert__Diff,axiom,
    ! [V_A_2,V_a_2,T_a] :
      ( c_member(T_a,V_a_2,V_A_2)
     => c_Set_Oinsert(T_a,V_a_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) = V_A_2 ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(c_fequal(V_x_2),V_y_2))
      | V_x_2 != V_y_2 ) ).

fof(fact_converse__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Oconverse(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) = c_Relation_OId__on(T_a,V_A_2) ).

fof(fact_rtrancl__empty,axiom,
    ! [T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) = c_Relation_OId(T_a) ).

fof(fact_Un__Diff__cancel,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( V_x = V_y
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_insert__absorb2,axiom,
    ! [V_A_2,V_xa_2,T_a] : c_Set_Oinsert(T_a,V_xa_2,V_A_2) = c_Set_Oinsert(T_a,V_xa_2,c_Set_Oinsert(T_a,V_xa_2,V_A_2)) ).

fof(fact_rev__predicate1D,axiom,
    ! [V_Q_2,T_a,V_xa_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,V_xa_2))
     => ( hBOOL(hAPP(V_Q_2,V_xa_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_P_2,V_Q_2) ) ) ).

fof(fact_well__order__on__empty,axiom,
    ! [T_a] : c_Order__Relation_Owell__order__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_rtrancl__trans,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_antisym__reflcl,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Oantisym(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a)))
    <=> c_Relation_Oantisym(T_a,V_r_2) ) ).

fof(fact_irrefl__trancl__rD,axiom,
    ! [V_ya_2,V_xa_2,V_r_2,T_a] :
      ( ! [B_x] : ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_x),c_Transitive__Closure_Otrancl(T_a,V_r_2))
     => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),V_r_2)
       => V_ya_2 != V_xa_2 ) ) ).

fof(fact_subset__equiv__class,axiom,
    ! [V_a_2,V_b_2,V_r_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
     => ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)
         <= c_member(T_a,V_b_2,V_A_2) )
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) ) ) ).

fof(fact_rtrancl__into__trancl1,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
     => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),V_r_2) ) ) ).

fof(fact_insert__iff,axiom,
    ! [V_A_2,V_b_2,V_a_2,T_a] :
      ( ( V_b_2 = V_a_2
        | c_member(T_a,V_a_2,V_A_2) )
    <=> c_member(T_a,V_a_2,c_Set_Oinsert(T_a,V_b_2,V_A_2)) ) ).

fof(fact_curryD,axiom,
    ! [V_b_2,V_a_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(V_f_2,c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2)))
     <= hBOOL(c_Product__Type_Ocurry(T_a,T_b,tc_HOL_Obool,V_f_2,V_a_2,V_b_2)) ) ).

fof(fact_Not__Domain__rtrancl,axiom,
    ! [V_ya_2,V_R_2,V_xa_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_R_2))
      <=> V_ya_2 = V_xa_2 )
     <= ~ c_member(T_a,V_xa_2,c_Relation_ODomain(T_a,T_a,V_R_2)) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       <= V_y = V_x ) ) ).

fof(fact_total__on__empty,axiom,
    ! [V_r_2,T_a] : c_Relation_Ototal__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_r_2) ).

fof(fact_Image__Int__subset,axiom,
    ! [V_B_2,V_A_2,V_R_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_b,T_a,V_R_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool),V_A_2,V_B_2)),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_b,T_a,V_R_2,V_A_2),c_Relation_OImage(T_b,T_a,V_R_2,V_B_2))) ).

fof(fact_leI,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       <= ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_acc__downwards,axiom,
    ! [V_b_2,V_r_2,V_a_2,T_a] :
      ( ( c_member(T_a,V_b_2,c_Wellfounded_Oacc(T_a,V_r_2))
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_a_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) )
     <= c_member(T_a,V_a_2,c_Wellfounded_Oacc(T_a,V_r_2)) ) ).

fof(fact_order__le__less__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_y,V_z)
         => c_Orderings_Oord__class_Oless(T_a,V_x,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_rtranclE,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( ( V_a_2 != V_b_2
       => ~ ! [B_y] :
              ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,B_y),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
             => ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,V_b_2),V_r_2) ) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_antisymD,axiom,
    ! [V_b_2,V_a_2,V_r_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)
       => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_a_2),V_r_2)
         => V_b_2 = V_a_2 ) )
     <= c_Relation_Oantisym(T_a,V_r_2) ) ).

fof(fact_notin__Lin__iff,axiom,
    ! [V_ya_2,V_xa_2,V_La_2] :
      ( c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin)
     => ( V_xa_2 != V_ya_2
       => ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_ya_2,V_xa_2),V_La_2)
        <=> ~ c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),V_La_2) ) ) ) ).

fof(fact_in__measure,axiom,
    ! [V_f_2,V_ya_2,V_xa_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,hAPP(V_f_2,V_xa_2),hAPP(V_f_2,V_ya_2))
    <=> c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),hAPP(c_Wellfounded_Omeasure(T_a),V_f_2)) ) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_converseD,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Relation_Oconverse(T_b,T_a,V_r_2))
     => c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,V_b_2,V_a_2),V_r_2) ) ).

fof(fact_less__eq,axiom,
    ! [V_n_2,V_m_2] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_m_2,V_n_2)
    <=> c_member(tc_prod(tc_Nat_Onat,tc_Nat_Onat),c_Product__Type_OPair(tc_Nat_Onat,tc_Nat_Onat,V_m_2,V_n_2),c_Transitive__Closure_Otrancl(tc_Nat_Onat,c_Wellfounded_Opred__nat)) ) ).

fof(fact_sup_Oassoc,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b),V_c) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_b,V_c)) ) ).

fof(fact_sup_Ocommute,axiom,
    ! [V_b,V_a,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_b,V_a)
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_ord__eq__less__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oord(T_a)
     => ( V_b = V_a
       => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_c)
         <= c_Orderings_Oord__class_Oless(T_a,V_b,V_c) ) ) ) ).

fof(fact_Partial__order__eq__Image1__Image1__iff,axiom,
    ! [V_b_2,V_a_2,V_r_2,T_a] :
      ( ( ( ( V_b_2 = V_a_2
          <=> c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = c_Relation_OImage(T_a,T_a,V_r_2,c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) )
         <= c_member(T_a,V_b_2,c_Relation_OField(T_a,V_r_2)) )
       <= c_member(T_a,V_a_2,c_Relation_OField(T_a,V_r_2)) )
     <= c_Order__Relation_Opartial__order__on(T_a,c_Relation_OField(T_a,V_r_2),V_r_2) ) ).

fof(fact_tfl__cut__apply,axiom,
    ! [T_b,V_a_2,V_xa_2,T_a,B_f,B_R] :
      ( hAPP(B_f,V_xa_2) = hAPP(c_Recdef_Ocut(T_a,T_b,B_f,B_R,V_a_2),V_xa_2)
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_a_2),B_R) ) ).

fof(fact_xt1_I1_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_c,V_a)
         <= c_Orderings_Oord__class_Oless(T_a,V_c,V_b) )
       <= V_a = V_b )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_psubset__subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_preorder__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Order__Relation_Opreorder__on(T_a,V_A_2,c_Relation_Oconverse(T_a,T_a,V_r_2))
    <=> c_Order__Relation_Opreorder__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_DomainI,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(T_a,V_a_2,c_Relation_ODomain(T_a,T_b,V_r_2))
     <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),V_r_2) ) ).

fof(fact_refl__on__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Orefl__on(T_a,V_A_2,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_sup__left__idem,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(arity_Nat__Onat__Orderings_Obot,axiom,
    class_Orderings_Obot(tc_Nat_Onat) ).

fof(fact_insert__subset,axiom,
    ! [V_B_2,V_A_2,V_xa_2,T_a] :
      ( ( c_member(T_a,V_xa_2,V_B_2)
        & c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_xa_2,V_A_2),V_B_2) ) ).

fof(fact_Image__mono,axiom,
    ! [V_A_2,V_A_H_2,V_r_2,V_r_H_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_H_2,V_r_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_H_2,V_A_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),c_Relation_OImage(T_a,T_b,V_r_H_2,V_A_H_2),c_Relation_OImage(T_a,T_b,V_r_2,V_A_2)) ) ) ).

fof(fact_acyclic__impl__antisym__rtrancl,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_r_2)
     => c_Relation_Oantisym(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_linorder__le__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(arity_HOL__Obool__Lattices_Obounded__lattice,axiom,
    class_Lattices_Obounded__lattice(tc_HOL_Obool) ).

fof(fact_xt1_I10_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless(T_a,V_z,V_y) )
       <= c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_SigmaE2,axiom,
    ! [V_B_2,V_A_2,V_b_2,V_a_2,T_b,T_a] :
      ( ~ ( c_member(T_a,V_a_2,V_A_2)
         => ~ c_member(T_b,V_b_2,hAPP(V_B_2,V_a_2)) )
     <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)) ) ).

fof(fact_tranclD,axiom,
    ! [V_R_2,V_ya_2,V_xa_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Otrancl(T_a,V_R_2))
     => ? [B_z] :
          ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,B_z),V_R_2)
          & c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ) ) ).

fof(fact_le__supI1,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b))
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_sup__ge1,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)) ) ).

fof(fact_Un__left__commute,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)) ).

fof(fact_acc__downward,axiom,
    ! [V_a_2,V_r_2,V_b_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)
       => c_member(T_a,V_a_2,c_Wellfounded_Oacc(T_a,V_r_2)) )
     <= c_member(T_a,V_b_2,c_Wellfounded_Oacc(T_a,V_r_2)) ) ).

fof(fact_acc__wfD,axiom,
    ! [V_xa_2,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_member(T_a,V_xa_2,c_Wellfounded_Oacc(T_a,V_r_2)) ) ).

fof(arity_fun__Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Osemilattice__inf(tc_fun(T_2,T_1))
     <= class_Lattices_Olattice(T_1) ) ).

fof(fact_order__less__irrefl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_x) ) ).

fof(fact_subset__Un__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
    <=> V_B_2 = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_Diff__iff,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ( ~ c_member(T_a,V_c_2,V_B_2)
        & c_member(T_a,V_c_2,V_A_2) )
    <=> c_member(T_a,V_c_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ) ).

fof(fact_pair__in__Id__conv,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Relation_OId(T_a))
    <=> V_a_2 = V_b_2 ) ).

fof(fact_trans__inv__image,axiom,
    ! [V_f_2,T_b,V_r_2,T_a] :
      ( c_Relation_Otrans(T_b,hAPP(c_Relation_Oinv__image(T_a,T_b,V_r_2),V_f_2))
     <= c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_Image__Id,axiom,
    ! [V_A_2,T_a] : c_Relation_OImage(T_a,T_a,c_Relation_OId(T_a),V_A_2) = V_A_2 ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(T_1)
     => class_Orderings_Oord(tc_fun(T_2,T_1)) ) ).

fof(fact_single__valued__def,axiom,
    ! [V_r_2,T_b,T_a] :
      ( ! [B_x,B_y] :
          ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_x,B_y),V_r_2)
         => ! [B_z] :
              ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_x,B_z),V_r_2)
             => B_y = B_z ) )
    <=> c_Relation_Osingle__valued(T_a,T_b,V_r_2) ) ).

fof(fact_Un__upper1,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ).

fof(fact_trans__rtrancl,axiom,
    ! [V_r_2,T_a] : c_Relation_Otrans(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_transI,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x,B_y] :
          ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_y),V_r_2)
         => ! [B_z] :
              ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_z),V_r_2)
             <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_z),V_r_2) ) )
     => c_Relation_Otrans(T_a,V_r_2) ) ).

fof(fact_ball__Un,axiom,
    ! [V_P_2,V_B_2,V_A_2,T_a] :
      ( ( ! [B_x] :
            ( c_member(T_a,B_x,V_A_2)
           => hBOOL(hAPP(V_P_2,B_x)) )
        & ! [B_x] :
            ( c_member(T_a,B_x,V_B_2)
           => hBOOL(hAPP(V_P_2,B_x)) ) )
    <=> ! [B_x] :
          ( c_member(T_a,B_x,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
         => hBOOL(hAPP(V_P_2,B_x)) ) ) ).

fof(fact_rtrancl__converseI,axiom,
    ! [V_r_2,V_xa_2,V_ya_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_ya_2,V_xa_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2))) ) ).

fof(fact_trans__less__than,axiom,
    c_Relation_Otrans(tc_Nat_Onat,c_Wellfounded_Oless__than) ).

fof(fact_Un__insert__left,axiom,
    ! [V_C_2,V_B_2,V_a_2,T_a] : c_Set_Oinsert(T_a,V_a_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Set_Oinsert(T_a,V_a_2,V_B_2),V_C_2) ).

fof(fact_sup1I1,axiom,
    ! [V_B_2,T_a,V_xa_2,V_A_2] :
      ( hBOOL(hAPP(V_A_2,V_xa_2))
     => hBOOL(hAPP(c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_xa_2)) ) ).

fof(fact_subset__refl,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) ).

fof(fact_in__inv__image,axiom,
    ! [V_f_2,V_r_2,T_b,V_ya_2,V_xa_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),hAPP(c_Relation_Oinv__image(T_b,T_a,V_r_2),V_f_2))
    <=> c_member(tc_prod(T_b,T_b),c_Product__Type_OPair(T_b,T_b,hAPP(V_f_2,V_xa_2),hAPP(V_f_2,V_ya_2)),V_r_2) ) ).

fof(fact_wfE__pf,axiom,
    ! [V_A_2,V_R_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_R_2)
     => ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_A_2
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Relation_OImage(T_a,T_a,V_R_2,V_A_2)) ) ) ).

fof(fact_sup__left__commute,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_z)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_z)) ) ).

fof(fact_order__less__imp__le,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_well__order__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( ( c_Order__Relation_Olinear__order__on(T_a,V_A_2,V_r_2)
        & c_Wellfounded_Owf(T_a,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a))) )
    <=> c_Order__Relation_Owell__order__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_converse__iff,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Relation_Oconverse(T_b,T_a,V_r_2))
    <=> c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,V_b_2,V_a_2),V_r_2) ) ).

fof(fact_RangeI,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),V_r_2)
     => c_member(T_b,V_b_2,c_Relation_ORange(T_a,T_b,V_r_2)) ) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_le__iff__inf,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( ( V_xa_2 = c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_xa_2,V_ya_2)
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Un__empty,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
    <=> ( V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
        & V_B_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ) ).

fof(fact_termination__basic__simps_I5_J,axiom,
    ! [V_y,V_x] :
      ( c_Orderings_Oord__class_Oless(tc_Nat_Onat,V_x,V_y)
     => c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,V_x,V_y) ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x) ) ).

fof(conj_1,hypothesis,
    ( ! [B_x] : ~ c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_x),v_L)
    & ! [B_x,B_y] :
        ( ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,B_x),v_L)
          | c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_y),v_L) )
       <= B_y != B_x )
    & ! [B_x,B_y] :
        ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_y),v_L)
       => ! [B_z] :
            ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,B_z),v_L)
           => c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_z),v_L) ) ) ) ).

fof(fact_less__supI1,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b))
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_a) )
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) ) ) ).

fof(fact_wf__less__than,axiom,
    c_Wellfounded_Owf(tc_Nat_Onat,c_Wellfounded_Oless__than) ).

fof(fact_Un__Image,axiom,
    ! [V_A_2,V_S_2,V_R_2,T_a,T_b] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Relation_OImage(T_b,T_a,V_R_2,V_A_2),c_Relation_OImage(T_b,T_a,V_S_2,V_A_2)) = c_Relation_OImage(T_b,T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),V_R_2,V_S_2),V_A_2) ).

fof(fact_Diff__idemp,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_B_2) = c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ).

fof(fact_wf__not__refl,axiom,
    ! [V_a_2,V_r_2,T_a] :
      ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_a_2),V_r_2)
     <= c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_partial__order__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( ( c_Relation_Oantisym(T_a,V_r_2)
        & c_Order__Relation_Opreorder__on(T_a,V_A_2,V_r_2) )
    <=> c_Order__Relation_Opartial__order__on(T_a,V_A_2,V_r_2) ) ).

fof(arity_HOL__Obool__Lattices_Osemilattice__sup,axiom,
    class_Lattices_Osemilattice__sup(tc_HOL_Obool) ).

fof(fact_SigmaD2,axiom,
    ! [V_B_2,V_A_2,V_b_2,V_a_2,T_b,T_a] :
      ( c_member(T_b,V_b_2,hAPP(V_B_2,V_a_2))
     <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),c_Product__Type_OSigma(T_a,T_b,V_A_2,V_B_2)) ) ).

fof(fact_subset__empty,axiom,
    ! [V_A_2,T_a] :
      ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_A_2
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ) ).

fof(fact_less__supI2,axiom,
    ! [V_a,V_b,V_x,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_b)
       => c_Orderings_Oord__class_Oless(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_b)) ) ) ).

fof(fact_sup__idem,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_x) = V_x ) ).

fof(fact_single__valued__Id,axiom,
    ! [T_a] : c_Relation_Osingle__valued(T_a,T_a,c_Relation_OId(T_a)) ).

fof(fact_acyclic__insert,axiom,
    ! [V_r_2,V_xa_2,V_ya_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,c_Set_Oinsert(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_ya_2,V_xa_2),V_r_2))
    <=> ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
        & c_Wellfounded_Oacyclic(T_a,V_r_2) ) ) ).

fof(fact_tranclE,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
     => ( ~ ! [B_c] :
              ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,B_c),c_Transitive__Closure_Otrancl(T_a,V_r_2))
             => ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_c,V_b_2),V_r_2) )
       <= ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2) ) ) ).

fof(fact_DiffD1,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( c_member(T_a,V_c_2,V_A_2)
     <= c_member(T_a,V_c_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ) ).

fof(fact_psubset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)
       <= c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) ) ) ).

fof(fact_RangeE,axiom,
    ! [V_r_2,T_b,V_b_2,T_a] :
      ( ~ ! [B_x] : ~ c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,B_x,V_b_2),V_r_2)
     <= c_member(T_a,V_b_2,c_Relation_ORange(T_b,T_a,V_r_2)) ) ).

fof(fact_inf1E,axiom,
    ! [V_xa_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_xa_2))
     => ~ ( hBOOL(hAPP(V_A_2,V_xa_2))
         => ~ hBOOL(hAPP(V_B_2,V_xa_2)) ) ) ).

fof(fact_tranclD2,axiom,
    ! [V_R_2,V_ya_2,V_xa_2,T_a] :
      ( ? [B_z] :
          ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,B_z),c_Transitive__Closure_Ortrancl(T_a,V_R_2))
          & c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_ya_2),V_R_2) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Transitive__Closure_Otrancl(T_a,V_R_2)) ) ).

fof(fact_Nitpick_Orefl_H__def,axiom,
    ! [V_r_2,T_a] :
      ( c_Nitpick_Orefl_H(T_a,V_r_2)
    <=> ! [B_x] : c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_x),V_r_2) ) ).

fof(fact_insert__commute,axiom,
    ! [V_A_2,V_ya_2,V_xa_2,T_a] : c_Set_Oinsert(T_a,V_xa_2,c_Set_Oinsert(T_a,V_ya_2,V_A_2)) = c_Set_Oinsert(T_a,V_ya_2,c_Set_Oinsert(T_a,V_xa_2,V_A_2)) ).

fof(fact_Image__iff,axiom,
    ! [V_A_2,V_r_2,T_b,V_b_2,T_a] :
      ( ? [B_x] :
          ( c_member(T_b,B_x,V_A_2)
          & c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,B_x,V_b_2),V_r_2) )
    <=> c_member(T_a,V_b_2,c_Relation_OImage(T_b,T_a,V_r_2,V_A_2)) ) ).

fof(fact_wfrec__rel_Oequations,axiom,
    ! [V_a2_2,V_a1_2,V_F_2,V_R_2,T_b,T_a] :
      ( ? [B_g] :
          ( hAPP(hAPP(V_F_2,B_g),V_a1_2) = hAPP(hAPP(V_F_2,V_a2_2),V_a1_2)
          & ! [B_z] :
              ( c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_F_2,B_z,hAPP(B_g,B_z))
             <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_z,V_a1_2),V_R_2) ) )
    <=> c_Recdef_Owfrec__rel(T_a,T_b,V_R_2,V_F_2,V_a1_2,hAPP(hAPP(V_F_2,V_a2_2),V_a1_2)) ) ).

fof(fact_tfl__wfrec,axiom,
    ! [T_b,T_a,B_M,B_R] :
      ( ! [B_x] : hAPP(c_Recdef_Owfrec(T_a,T_b,B_R,B_M),B_x) = hAPP(hAPP(B_M,c_Recdef_Ocut(T_a,T_b,c_Recdef_Owfrec(T_a,T_b,B_R,B_M),B_R,B_x)),B_x)
     <= c_Wellfounded_Owf(T_a,B_R) ) ).

fof(fact_total__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Ototal__on(T_a,V_A_2,V_r_2)
    <=> c_Relation_Ototal__on(T_a,V_A_2,c_Relation_Oconverse(T_a,T_a,V_r_2)) ) ).

fof(fact_rtrancl__r__diff__Id,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a))) = c_Transitive__Closure_Ortrancl(T_a,V_r_2) ).

fof(fact_in__mkbot,axiom,
    ! [V_z_2,V_La_2,V_ya_2,V_xa_2] :
      ( ( V_ya_2 != V_z_2
        & ( V_xa_2 != V_z_2
         => c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),V_La_2) )
        & ( V_xa_2 = V_z_2
         => V_xa_2 != V_ya_2 ) )
    <=> c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),c_Arrow__Order__Mirabelle_Omkbot(V_La_2,V_z_2)) ) ).

fof(fact_Range__empty__iff,axiom,
    ! [V_r_2,T_a,T_b] :
      ( c_Relation_ORange(T_b,T_a,V_r_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
    <=> V_r_2 = c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool)) ) ).

fof(arity_HOL__Obool__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_HOL_Obool) ).

fof(fact_inf__sup__ord_I2_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,c_Lattices_Osemilattice__inf__class_Oinf(T_a,V_x,V_y),V_y) ) ).

fof(fact_ImageE,axiom,
    ! [V_A_2,V_r_2,T_b,V_b_2,T_a] :
      ( ~ ! [B_x] :
            ( ~ c_member(T_b,B_x,V_A_2)
           <= c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,B_x,V_b_2),V_r_2) )
     <= c_member(T_a,V_b_2,c_Relation_OImage(T_b,T_a,V_r_2,V_A_2)) ) ).

fof(conj_0,hypothesis,
    v_x != v_y ).

fof(fact_trancl__reflcl,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_r_2) = c_Transitive__Closure_Otrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a))) ).

fof(fact_converse__tranclE,axiom,
    ! [V_r_2,V_z_2,V_xa_2,T_a] :
      ( ( ~ ! [B_y] :
              ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,B_y),V_r_2)
             => ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,V_z_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) )
       <= ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_z_2),V_r_2) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_z_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_converse__inv__image,axiom,
    ! [V_f_2,V_R_2,T_b,T_a] : c_Relation_Oconverse(T_a,T_a,hAPP(c_Relation_Oinv__image(T_b,T_a,V_R_2),V_f_2)) = hAPP(c_Relation_Oinv__image(T_b,T_a,c_Relation_Oconverse(T_b,T_b,V_R_2)),V_f_2) ).

fof(fact_Un__iff,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( c_member(T_a,V_c_2,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
    <=> ( c_member(T_a,V_c_2,V_A_2)
        | c_member(T_a,V_c_2,V_B_2) ) ) ).

fof(fact_irrefl__tranclI,axiom,
    ! [V_xa_2,V_r_2,T_a] :
      ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_xa_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
     <= c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Relation_Oconverse(T_a,T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_Field__empty,axiom,
    ! [T_a] : c_Relation_OField(T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b) )
       <= V_b = V_a ) ) ).

fof(fact_wf__mlex,axiom,
    ! [V_f_2,V_R_2,T_a] :
      ( c_Wellfounded_Owf(T_a,c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2))
     <= c_Wellfounded_Owf(T_a,V_R_2) ) ).

fof(fact_insert__not__empty,axiom,
    ! [V_A_2,V_a_2,T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != c_Set_Oinsert(T_a,V_a_2,V_A_2) ).

fof(fact_DiffE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( c_member(T_a,V_c_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2))
     => ~ ( c_member(T_a,V_c_2,V_A_2)
         => c_member(T_a,V_c_2,V_B_2) ) ) ).

fof(fact_wf__acyclic,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_Wellfounded_Oacyclic(T_a,V_r_2) ) ).

fof(fact_acc__wfI,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : c_member(T_a,B_x,c_Wellfounded_Oacc(T_a,V_r_2))
     => c_Wellfounded_Owf(T_a,V_r_2) ) ).

fof(fact_IntI,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ( c_member(T_a,V_c_2,V_B_2)
       => c_member(T_a,V_c_2,c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) )
     <= c_member(T_a,V_c_2,V_A_2) ) ).

fof(fact_rtrancl__reflcl,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Ortrancl(T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,c_Relation_OId(T_a))) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
         => V_y = V_x )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_in__mono,axiom,
    ! [V_xa_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_member(T_a,V_xa_2,V_A_2)
       => c_member(T_a,V_xa_2,V_B_2) ) ) ).

fof(fact_sup1CI,axiom,
    ! [T_a,V_A_2,V_xa_2,V_B_2] :
      ( ( hBOOL(hAPP(V_A_2,V_xa_2))
       <= ~ hBOOL(hAPP(V_B_2,V_xa_2)) )
     => hBOOL(hAPP(c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_xa_2)) ) ).

fof(fact_set__eq__subset,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
        & c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
    <=> V_B_2 = V_A_2 ) ).

fof(fact_Image__singleton__iff,axiom,
    ! [V_a_2,V_r_2,T_b,V_b_2,T_a] :
      ( c_member(T_a,V_b_2,c_Relation_OImage(T_b,T_a,V_r_2,c_Set_Oinsert(T_b,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool)))))
    <=> c_member(tc_prod(T_b,T_a),c_Product__Type_OPair(T_b,T_a,V_a_2,V_b_2),V_r_2) ) ).

fof(fact_total__on__diff__Id,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Ototal__on(T_a,V_A_2,V_r_2)
    <=> c_Relation_Ototal__on(T_a,V_A_2,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a))) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_preorder__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Order__Relation_Opreorder__on(T_a,V_A_2,V_r_2)
    <=> ( c_Relation_Otrans(T_a,V_r_2)
        & c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ) ).

fof(fact_acc__downwards__aux,axiom,
    ! [V_r_2,V_a_2,V_b_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_a_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
     => ( c_member(T_a,V_a_2,c_Wellfounded_Oacc(T_a,V_r_2))
       => c_member(T_a,V_b_2,c_Wellfounded_Oacc(T_a,V_r_2)) ) ) ).

fof(fact_empty__not__insert,axiom,
    ! [V_A_2,V_a_2,T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != c_Set_Oinsert(T_a,V_a_2,V_A_2) ).

fof(fact_trancl__empty,axiom,
    ! [T_a] : c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = c_Transitive__Closure_Otrancl(T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_rtrancl__induct2,axiom,
    ! [V_P_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(V_P_2,V_bx_2),V_by_2))
         <= ! [B_a,B_b] :
              ( ! [B_aa,B_ba] :
                  ( ( hBOOL(hAPP(hAPP(V_P_2,B_a),B_b))
                   => hBOOL(hAPP(hAPP(V_P_2,B_aa),B_ba)) )
                 <= c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_a,B_b),c_Product__Type_OPair(T_a,T_b,B_aa,B_ba)),V_r_2) )
             <= c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_ax_2,V_ay_2),c_Product__Type_OPair(T_a,T_b,B_a,B_b)),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)) ) )
       <= hBOOL(hAPP(hAPP(V_P_2,V_ax_2),V_ay_2)) )
     <= c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_ax_2,V_ay_2),c_Product__Type_OPair(T_a,T_b,V_bx_2,V_by_2)),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)) ) ).

fof(fact_rtrancl__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_order__eq__iff,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( V_ya_2 = V_xa_2
      <=> ( c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_ya_2,V_xa_2) ) ) ) ).

fof(fact_order__less__not__sym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_trancl__into__rtrancl,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
     => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_rtrancl_Ortrancl__refl,axiom,
    ! [V_r_2,V_a_2,T_a] : c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_a_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_Diff__empty,axiom,
    ! [V_A_2,T_a] : c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) = V_A_2 ).

fof(fact_sup__assoc,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_z)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y),V_z) ) ).

fof(fact_acc_Osimps,axiom,
    ! [V_r_2,V_a_2,T_a] :
      ( c_member(T_a,V_a_2,c_Wellfounded_Oacc(T_a,V_r_2))
    <=> ! [B_x] :
          ( c_member(T_a,B_x,c_Wellfounded_Oacc(T_a,V_r_2))
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,V_a_2),V_r_2) ) ) ).

fof(fact_trancl__into__trancl2,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2)
     => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2))
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ) ).

fof(fact_in__mktop,axiom,
    ! [V_z_2,V_La_2,V_ya_2,V_xa_2] :
      ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),c_Arrow__Order__Mirabelle_Omktop(V_La_2,V_z_2))
    <=> ( V_z_2 != V_xa_2
        & ( V_ya_2 = V_z_2
         => V_ya_2 != V_xa_2 )
        & ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),V_La_2)
         <= V_z_2 != V_ya_2 ) ) ) ).

fof(fact_order__less__asym_H,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_a,V_b)
       => ~ c_Orderings_Oord__class_Oless(T_a,V_b,V_a) ) ) ).

fof(fact_psubset__insert__iff,axiom,
    ! [V_B_2,V_xa_2,V_A_2,T_a] :
      ( ( ( ( ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),V_B_2)
             <= c_member(T_a,V_xa_2,V_A_2) )
            & ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
             <= ~ c_member(T_a,V_xa_2,V_A_2) ) )
         <= ~ c_member(T_a,V_xa_2,V_B_2) )
        & ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
         <= c_member(T_a,V_xa_2,V_B_2) ) )
    <=> c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Set_Oinsert(T_a,V_xa_2,V_B_2)) ) ).

fof(fact_r__into__trancl_H,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),V_p_2,c_Transitive__Closure_Otrancl(T_a,V_r_2))
     <= c_member(tc_prod(T_a,T_a),V_p_2,V_r_2) ) ).

fof(fact_rev__ImageI,axiom,
    ! [V_r_2,V_b_2,T_b,V_A_2,V_a_2,T_a] :
      ( c_member(T_a,V_a_2,V_A_2)
     => ( c_member(T_b,V_b_2,c_Relation_OImage(T_a,T_b,V_r_2,V_A_2))
       <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_a_2,V_b_2),V_r_2) ) ) ).

fof(fact_set__mp,axiom,
    ! [V_xa_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_member(T_a,V_xa_2,V_A_2)
       => c_member(T_a,V_xa_2,V_B_2) ) ) ).

fof(fact_converse__rtrancl__induct2,axiom,
    ! [V_P_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(V_P_2,V_ax_2),V_ay_2))
         <= ! [B_a,B_b,B_aa,B_ba] :
              ( ( c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_aa,B_ba),c_Product__Type_OPair(T_a,T_b,V_bx_2,V_by_2)),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))
               => ( hBOOL(hAPP(hAPP(V_P_2,B_aa),B_ba))
                 => hBOOL(hAPP(hAPP(V_P_2,B_a),B_b)) ) )
             <= c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_a,B_b),c_Product__Type_OPair(T_a,T_b,B_aa,B_ba)),V_r_2) ) )
       <= hBOOL(hAPP(hAPP(V_P_2,V_bx_2),V_by_2)) )
     <= c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_ax_2,V_ay_2),c_Product__Type_OPair(T_a,T_b,V_bx_2,V_by_2)),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)) ) ).

fof(fact_trancl__rtrancl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Otrancl(T_a,V_R_2)) ).

fof(fact_linorder__neqE,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( ~ c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
         => c_Orderings_Oord__class_Oless(T_a,V_y,V_x) )
       <= V_x != V_y )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_equals0D,axiom,
    ! [V_a_2,T_a,V_A_2] :
      ( ~ c_member(T_a,V_a_2,V_A_2)
     <= V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

fof(conj_2,conjecture,
    ( ! [B_x,B_y] :
        ( B_y != B_x
       => ( ( v_y = B_y
            & B_x = v_x )
          | ( v_y != B_y
            & v_y != B_x
            & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_y),v_L) )
          | ( v_x = B_y
            & v_y = B_x )
          | ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,B_x),v_L)
            & B_y != v_y
            & B_x != v_y )
          | ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,v_x,B_x),v_L)
            & B_x != v_y
            & v_y = B_y )
          | ( v_y = B_x
            & B_y != v_y
            & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,v_x),v_L) )
          | ( B_x = v_y
            & v_y != B_y
            & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,v_x,B_y),v_L) )
          | ( v_y = B_y
            & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,v_x),v_L)
            & B_x != v_y ) ) )
    & ! [B_x,B_y] :
        ( ( ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_y),v_L)
            & v_y != B_y
            & B_x != v_y )
         => ! [B_z] :
              ( ( ( v_y != B_z
                  & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,B_z),v_L) )
               => c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_z),v_L) )
              & ( ( B_x = v_x
                  | c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,v_x),v_L) )
               <= ( B_z = v_y
                  & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,v_x),v_L) ) )
              & ( ( v_x = B_y
                  & v_y = B_z )
               => ( B_x = v_x
                  | c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,v_x),v_L) ) ) ) )
        & ( ! [B_z] :
              ( ( ~ c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,v_x),v_L)
               <= B_z = v_y )
              & ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,v_x,B_z),v_L)
               <= ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_y,B_z),v_L)
                  & v_y != B_z ) )
              & ( B_z != v_y
               <= B_y = v_x ) )
         <= ( v_y = B_x
            & c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,v_x,B_y),v_L)
            & v_y != B_y ) )
        & ( ! [B_z] :
              ( ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,v_x,B_z),v_L)
                & B_z != v_y )
             => c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,B_z),v_L) )
         <= ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,B_x,v_x),v_L)
            & B_x != v_y
            & v_y = B_y ) ) ) ) ).

fof(fact_rtrancl__converse,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)) = c_Relation_Oconverse(T_a,T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_wf__eq__minimal,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
    <=> ! [B_Q] :
          ( ? [B_x] : c_member(T_a,B_x,B_Q)
         => ? [B_x] :
              ( ! [B_y] :
                  ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_x),V_r_2)
                 => ~ c_member(T_a,B_y,B_Q) )
              & c_member(T_a,B_x,B_Q) ) ) ) ).

fof(fact_wfrec,axiom,
    ! [V_a_2,V_H_2,T_b,V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => hAPP(c_Recdef_Owfrec(T_a,T_b,V_r_2,V_H_2),V_a_2) = hAPP(hAPP(V_H_2,c_Recdef_Ocut(T_a,T_b,c_Recdef_Owfrec(T_a,T_b,V_r_2,V_H_2),V_r_2,V_a_2)),V_a_2) ) ).

fof(fact_converse__rtranclE,axiom,
    ! [V_r_2,V_z_2,V_xa_2,T_a] :
      ( ( ~ ! [B_y] :
              ( ~ c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,V_z_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
             <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,B_y),V_r_2) )
       <= V_z_2 != V_xa_2 )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_z_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_sup__commute,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_x) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y)
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_ex__in__conv,axiom,
    ! [V_A_2,T_a] :
      ( V_A_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
    <=> ? [B_x] : c_member(T_a,B_x,V_A_2) ) ).

fof(fact_antisymI,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x,B_y] :
          ( ( B_y = B_x
           <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,B_x),V_r_2) )
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_y),V_r_2) )
     => c_Relation_Oantisym(T_a,V_r_2) ) ).

fof(fact_converse__Un,axiom,
    ! [V_s_2,V_r_2,T_a,T_b] : c_Relation_Oconverse(T_b,T_a,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),V_r_2,V_s_2)) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),c_Relation_Oconverse(T_b,T_a,V_r_2),c_Relation_Oconverse(T_b,T_a,V_s_2)) ).

fof(fact_order__less__imp__not__less,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_y,V_x)
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_linear__order__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( ( c_Relation_Ototal__on(T_a,V_A_2,V_r_2)
        & c_Order__Relation_Opartial__order__on(T_a,V_A_2,V_r_2) )
    <=> c_Order__Relation_Olinear__order__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_wf__trancl,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Owf(T_a,V_r_2)
     => c_Wellfounded_Owf(T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) ) ).

fof(fact_empty__iff,axiom,
    ! [V_c_2,T_a] : ~ c_member(T_a,V_c_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_linorder__less__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
        | V_x = V_y
        | c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_Id__on__iff,axiom,
    ! [V_A_2,V_ya_2,V_xa_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Relation_OId__on(T_a,V_A_2))
    <=> ( V_ya_2 = V_xa_2
        & c_member(T_a,V_xa_2,V_A_2) ) ) ).

fof(fact_acc_OaccI,axiom,
    ! [V_r_2,V_xa_2,T_a] :
      ( c_member(T_a,V_xa_2,c_Wellfounded_Oacc(T_a,V_r_2))
     <= ! [B_y] :
          ( c_member(T_a,B_y,c_Wellfounded_Oacc(T_a,V_r_2))
         <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_y,V_xa_2),V_r_2) ) ) ).

fof(fact_order__less__le__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) )
       <= c_Orderings_Oord__class_Oless(T_a,V_x,V_y) ) ) ).

fof(fact_Nitpick_Owf__wfrec_H__def,axiom,
    ! [V_xa_2,V_F_2,V_R_2,T_a,T_b] : hAPP(hAPP(V_F_2,c_Recdef_Ocut(T_b,T_a,c_Nitpick_Owf__wfrec(T_b,T_a,V_R_2,V_F_2),V_R_2,V_xa_2)),V_xa_2) = c_Nitpick_Owf__wfrec_H(T_b,T_a,V_R_2,V_F_2,V_xa_2) ).

fof(fact_converse__rtrancl__into__rtrancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))
       <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_b_2,V_c_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) )
     <= c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_b_2),V_r_2) ) ).

fof(fact_xt1_I12_J,axiom,
    ! [V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a)
         => c_Orderings_Oord__class_Oless(T_a,V_b,V_a) )
       <= V_a != V_b )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_linorder__antisym__conv3,axiom,
    ! [V_xa_2,V_ya_2,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( ~ c_Orderings_Oord__class_Oless(T_a,V_ya_2,V_xa_2)
       => ( ~ c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
        <=> V_xa_2 = V_ya_2 ) ) ) ).

fof(fact_doubleton__eq__iff,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( c_Set_Oinsert(T_a,V_c_2,c_Set_Oinsert(T_a,V_d_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = c_Set_Oinsert(T_a,V_a_2,c_Set_Oinsert(T_a,V_b_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
    <=> ( ( V_d_2 = V_a_2
          & V_c_2 = V_b_2 )
        | ( V_b_2 = V_d_2
          & V_c_2 = V_a_2 ) ) ) ).

fof(fact_Un__Diff__cancel2,axiom,
    ! [V_A_2,V_B_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2),V_A_2) ).

fof(fact_in__below,axiom,
    ! [V_ya_2,V_xa_2,V_La_2,V_b_2,V_a_2] :
      ( ( ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),c_Arrow__Order__Mirabelle_Obelow(V_La_2,V_a_2,V_b_2))
        <=> ( V_xa_2 != V_ya_2
            & ( V_ya_2 = V_a_2
             => c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_b_2),V_La_2) )
            & ( ( ( ( V_b_2 = V_ya_2
                    | c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_b_2,V_ya_2),V_La_2) )
                 <= V_a_2 = V_xa_2 )
                & ( c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt,V_xa_2,V_ya_2),V_La_2)
                 <= V_a_2 != V_xa_2 ) )
             <= V_a_2 != V_ya_2 ) ) )
       <= c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin) )
     <= V_a_2 != V_b_2 ) ).

fof(fact_Un__empty__left,axiom,
    ! [V_B_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_B_2) = V_B_2 ).

fof(fact_mlex__leq,axiom,
    ! [V_R_2,T_a,V_ya_2,V_xa_2,V_f_2] :
      ( ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),V_R_2)
       => c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_xa_2,V_ya_2),c_Wellfounded_Omlex__prod(T_a,V_f_2,V_R_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_Nat_Onat,hAPP(V_f_2,V_xa_2),hAPP(V_f_2,V_ya_2)) ) ).

fof(fact_Un__absorb,axiom,
    ! [V_A_2,T_a] : V_A_2 = c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) ).

fof(fact_IdI,axiom,
    ! [V_a_2,T_a] : c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,V_a_2,V_a_2),c_Relation_OId(T_a)) ).

fof(fact_preorder__on__empty,axiom,
    ! [T_a] : c_Order__Relation_Opreorder__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_Domain__Un__eq,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_A_2),c_Relation_ODomain(T_a,T_b,V_B_2)) = c_Relation_ODomain(T_a,T_b,c_Lattices_Osemilattice__sup__class_Osup(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_A_2,V_B_2)) ).

fof(fact_order__le__less,axiom,
    ! [V_ya_2,V_xa_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_xa_2,V_ya_2)
      <=> ( c_Orderings_Oord__class_Oless(T_a,V_xa_2,V_ya_2)
          | V_ya_2 = V_xa_2 ) ) ) ).

fof(fact_mem__def,axiom,
    ! [V_A_2,V_xa_2,T_a] :
      ( hBOOL(hAPP(V_A_2,V_xa_2))
    <=> c_member(T_a,V_xa_2,V_A_2) ) ).

fof(fact_subset__iff__psubset__eq,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
    <=> ( c_Orderings_Oord__class_Oless(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
        | V_B_2 = V_A_2 ) ) ).

fof(fact_r__into__rtrancl,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( c_member(tc_prod(T_a,T_a),V_p_2,c_Transitive__Closure_Ortrancl(T_a,V_r_2))
     <= c_member(tc_prod(T_a,T_a),V_p_2,V_r_2) ) ).

fof(fact_Field__def,axiom,
    ! [V_r_2,T_a] : c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_a,V_r_2),c_Relation_ORange(T_a,T_a,V_r_2)) = c_Relation_OField(T_a,V_r_2) ).

fof(fact_singletonE,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( V_b_2 = V_a_2
     <= c_member(T_a,V_b_2,c_Set_Oinsert(T_a,V_a_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ) ).

fof(fact_mkbot__Lin,axiom,
    ! [V_xa_2,V_La_2] :
      ( c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin)
     => c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_Omkbot(V_La_2,V_xa_2),c_Arrow__Order__Mirabelle_OLin) ) ).

fof(fact_Domain__empty,axiom,
    ! [T_b,T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = c_Relation_ODomain(T_a,T_b,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool))) ).

fof(arity_HOL__Obool__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_HOL_Obool) ).

fof(fact_order__less__imp__not__eq2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
       => V_x != V_y ) ) ).

fof(fact_mktop__Lin,axiom,
    ! [V_xa_2,V_La_2] :
      ( c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),V_La_2,c_Arrow__Order__Mirabelle_OLin)
     => c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_Omktop(V_La_2,V_xa_2),c_Arrow__Order__Mirabelle_OLin) ) ).

fof(fact_order__le__imp__less__or__eq,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless(T_a,V_x,V_y)
          | V_y = V_x )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( V_c = V_b
         => c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Orderings_Oord(T_a) ) ).

fof(arity_HOL__Obool__Lattices_Obounded__lattice__bot,axiom,
    class_Lattices_Obounded__lattice__bot(tc_HOL_Obool) ).

fof(fact_Sigma__empty1,axiom,
    ! [V_B_2,T_b,T_a] : c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)) = c_Product__Type_OSigma(T_a,T_b,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_B_2) ).

fof(fact_wf__empty,axiom,
    ! [T_a] : c_Wellfounded_Owf(T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_sup__absorb1,axiom,
    ! [V_x,V_y,T_a] :
      ( class_Lattices_Osemilattice__sup(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
       => V_x = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_y) ) ) ).

fof(fact_single__valuedD,axiom,
    ! [V_z_2,V_ya_2,V_xa_2,V_r_2,T_b,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
     => ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_ya_2),V_r_2)
       => ( c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,V_xa_2,V_z_2),V_r_2)
         => V_z_2 = V_ya_2 ) ) ) ).

fof(fact_xt1_I7_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless(T_a,V_z,V_x)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y) )
       <= c_Orderings_Oord__class_Oless(T_a,V_y,V_x) ) ) ).

fof(fact_total__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Ototal__on(T_a,V_A_2,V_r_2)
    <=> ! [B_x] :
          ( c_member(T_a,B_x,V_A_2)
         => ! [B_xa] :
              ( c_member(T_a,B_xa,V_A_2)
             => ( B_xa != B_x
               => ( c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_x,B_xa),V_r_2)
                  | c_member(tc_prod(T_a,T_a),c_Product__Type_OPair(T_a,T_a,B_xa,B_x),V_r_2) ) ) ) ) ) ).

fof(fact_curry__conv,axiom,
    ! [V_b_2,V_a_2,V_f_2,T_a,T_c,T_b] : hAPP(V_f_2,c_Product__Type_OPair(T_b,T_c,V_a_2,V_b_2)) = c_Product__Type_Ocurry(T_b,T_c,T_a,V_f_2,V_a_2,V_b_2) ).

fof(fact_wf__same__fst,axiom,
    ! [T_a,V_R_2,T_b,V_P_2] :
      ( ! [B_x] :
          ( hBOOL(hAPP(V_P_2,B_x))
         => c_Wellfounded_Owf(T_b,hAPP(V_R_2,B_x)) )
     => c_Wellfounded_Owf(tc_prod(T_a,T_b),c_Recdef_Osame__fst(T_a,T_b,V_P_2,V_R_2)) ) ).

fof(fact_single__valuedI,axiom,
    ! [V_r_2,T_b,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
     <= ! [B_x,B_y] :
          ( ! [B_z] :
              ( B_y = B_z
             <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_x,B_z),V_r_2) )
         <= c_member(tc_prod(T_a,T_b),c_Product__Type_OPair(T_a,T_b,B_x,B_y),V_r_2) ) ) ).

fof(fact_trans__diff__Id,axiom,
    ! [V_r_2,T_a] :
      ( c_Relation_Otrans(T_a,V_r_2)
     => ( c_Relation_Otrans(T_a,c_Groups_Ominus__class_Ominus(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Relation_OId(T_a)))
       <= c_Relation_Oantisym(T_a,V_r_2) ) ) ).

fof(fact_inf__sup__aci_I7_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,V_z)) = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_x,c_Lattices_Osemilattice__sup__class_Osup(T_a,V_y,V_z)) ) ).

fof(fact_minus__apply,axiom,
    ! [V_xa_2,V_B_2,V_A_2,T_b,T_a] :
      ( class_Groups_Ominus(T_a)
     => hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,T_a),V_A_2,V_B_2),V_xa_2) = c_Groups_Ominus__class_Ominus(T_a,hAPP(V_A_2,V_xa_2),hAPP(V_B_2,V_xa_2)) ) ).

fof(fact_sup1I2,axiom,
    ! [V_A_2,T_a,V_xa_2,V_B_2] :
      ( hBOOL(hAPP(c_Lattices_Osemilattice__sup__class_Osup(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2),V_xa_2))
     <= hBOOL(hAPP(V_B_2,V_xa_2)) ) ).

fof(fact_DiffD2,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( ~ c_member(T_a,V_c_2,V_B_2)
     <= c_member(T_a,V_c_2,c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)) ) ).

fof(fact_acyclic__converse,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_r_2)
    <=> c_Wellfounded_Oacyclic(T_a,c_Relation_Oconverse(T_a,T_a,V_r_2)) ) ).

fof(fact_sup_Oidem,axiom,
    ! [V_a,T_a] :
      ( V_a = c_Lattices_Osemilattice__sup__class_Osup(T_a,V_a,V_a)
     <= class_Lattices_Osemilattice__sup(T_a) ) ).

fof(fact_wf__pred__nat,axiom,
    c_Wellfounded_Owf(tc_Nat_Onat,c_Wellfounded_Opred__nat) ).

fof(arity_Nat__Onat__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_Nat_Onat) ).

