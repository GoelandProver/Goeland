fof(fact_IntI,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) ) ) ).

fof(fact_inf__sup__aci_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_x) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)
     <= class_Lattices_Olattice(T_a) ) ).

fof(arity_fun__Orderings_Otop,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Otop(T_1)
     => class_Orderings_Otop(tc_fun(T_2,T_1)) ) ).

fof(fact_Range__converse,axiom,
    ! [V_r_2,T_a,T_b] : c_Relation_ODomain(T_a,T_b,V_r_2) = c_Relation_ORange(T_b,T_a,hAPP(c_Relation_Oconverse(T_a,T_b),V_r_2)) ).

fof(fact_rtrancl__subset,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R_2,V_S_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_S_2,c_Transitive__Closure_Ortrancl(T_a,V_R_2))
       => c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Ortrancl(T_a,V_S_2) ) ) ).

fof(fact_Int__insert__right__if1,axiom,
    ! [V_B_2,V_A_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
     => hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)) ) ).

fof(fact_refl__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Orefl__on(T_a,V_A_2,V_r_2)
    <=> c_Relation_Orefl__on(T_a,V_A_2,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)) ) ).

fof(fact_Pi__cong,axiom,
    ! [V_B_2,T_b,V_g_2,V_f_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
      <=> hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) )
     <= ! [B_w] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_w),V_A_2))
         => hAPP(V_g_2,B_w) = hAPP(V_f_2,B_w) ) ) ).

fof(fact_DomainP__Domain__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( c_Predicate_ODomainP(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2),V_x_2)
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_eq__equiv__class__iff2,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2))
          <=> c_Equiv__Relations_Oquotient(T_a,hAPP(hAPP(c_Set_Oinsert(T_a),V_y_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))),V_r_2) = c_Equiv__Relations_Oquotient(T_a,hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))),V_r_2) )
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2)) ) ) ) ).

fof(fact_UN__iff,axiom,
    ! [V_B_2,V_A_2,T_b,V_b_2,T_a] :
      ( ? [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
          & hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(V_B_2,B_x))) )
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_cut__apply,axiom,
    ! [V_f_2,T_b,V_r_2,V_a_2,V_x_2,T_a] :
      ( hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_a_2),V_x_2) = hAPP(V_f_2,V_x_2)
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_a_2)),V_r_2)) ) ).

fof(fact_trancl__rtrancl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Otrancl(T_a,V_R_2)) ).

fof(fact_inf1D2,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2))
     => hBOOL(hAPP(V_B_2,V_x_2)) ) ).

fof(fact_r__into__trancl_H,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),V_r_2)) ) ).

fof(fact_le__infI1,axiom,
    ! [V_b,V_x,V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_x)
       => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),V_x) ) ) ).

fof(fact_Int__empty__left,axiom,
    ! [V_B_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))),V_B_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(help_c__fNot__1,axiom,
    ! [V_P_2] :
      ( ~ hBOOL(hAPP(c_fNot,V_P_2))
      | ~ hBOOL(V_P_2) ) ).

fof(fact_iso__tuple__UNIV__I,axiom,
    ! [V_x_2,T_a] : hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(fact_single__valued__subset,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2)
     => ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
       <= c_Relation_Osingle__valued(T_a,T_b,V_s_2) ) ) ).

fof(fact_empty__Diff,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))),V_A_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_refl__rtrancl,axiom,
    ! [V_r_2,T_a] : c_Relation_Orefl__on(T_a,c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_Range__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_ORange(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) = V_A_2 ).

fof(fact_Prof__def,axiom,
    c_FuncSet_OPi(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Orderings_Otop__class_Otop(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_HOL_Obool)),c_COMBK(tc_fun(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_HOL_Obool),tc_Arrow__Order__Mirabelle_Oindi,c_Arrow__Order__Mirabelle_OLin)) = c_Arrow__Order__Mirabelle_OProf ).

fof(fact_in__above,axiom,
    ! [V_y_2,V_x_2,V_La_2,V_b_2,V_a_2] :
      ( V_a_2 != V_b_2
     => ( ( ( V_x_2 != V_y_2
            & ( V_x_2 = V_b_2
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_a_2),V_y_2)),V_La_2)) )
            & ( ( ( V_b_2 = V_y_2
                 => ( V_a_2 = V_x_2
                    | hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_a_2)),V_La_2)) ) )
                & ( V_b_2 != V_y_2
                 => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_La_2)) ) )
             <= V_b_2 != V_x_2 ) )
        <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Oabove(V_La_2,V_a_2,V_b_2))) )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin)) ) ) ).

fof(fact_order__eq__refl,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_x = V_y
       => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Orderings_Opreorder(T_a) ) ).

fof(fact_in__below,axiom,
    ! [V_y_2,V_x_2,V_La_2,V_b_2,V_a_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin))
       => ( ( V_x_2 != V_y_2
            & ( ( ( V_a_2 != V_x_2
                 => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_La_2)) )
                & ( V_x_2 = V_a_2
                 => ( V_y_2 = V_b_2
                    | hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_b_2),V_y_2)),V_La_2)) ) ) )
             <= V_y_2 != V_a_2 )
            & ( V_a_2 = V_y_2
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_b_2)),V_La_2)) ) )
        <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Obelow(V_La_2,V_a_2,V_b_2))) ) )
     <= V_b_2 != V_a_2 ) ).

fof(fact_le__INF__iff,axiom,
    ! [V_M_2,V_A_2,T_b,V_u_2,T_a] :
      ( ( ! [B_x] :
            ( c_Orderings_Oord__class_Oless__eq(T_a,V_u_2,hAPP(V_M_2,B_x))
           <= hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2)) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_u_2,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,T_a),V_A_2),V_M_2)) )
     <= class_Complete__Lattice_Ocomplete__lattice(T_a) ) ).

fof(fact_Lin__irrefl,axiom,
    ! [V_b_2,V_a_2,V_La_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin))
     => ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_b_2),V_a_2)),V_La_2))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_a_2),V_b_2)),V_La_2)) ) ) ).

fof(fact_irrefl__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2))
    <=> c_Relation_Oirrefl(T_a,V_r_2) ) ).

fof(fact_Image__UN,axiom,
    ! [V_B_2,V_A_2,T_c,V_r_2,T_a,T_b] : hAPP(c_Relation_OImage(T_b,T_a,V_r_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_c),c_Relation_OImage(T_b,T_a,V_r_2)),V_B_2)) ).

fof(fact_INF1__E,axiom,
    ! [V_a_2,V_b_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2))
     => ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
       <= ~ hBOOL(hAPP(hAPP(V_B_2,V_a_2),V_b_2)) ) ) ).

fof(fact_Image__empty,axiom,
    ! [V_R_2,T_a,T_b] : hAPP(c_Relation_OImage(T_b,T_a,V_R_2),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_conversep_Ointros,axiom,
    ! [T_b,T_a,V_b_2,V_a_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_a_2),V_b_2))
     => hBOOL(hAPP(hAPP(c_Predicate_Oconversep(T_a,T_b,V_r_2),V_b_2),V_a_2)) ) ).

fof(fact_inf__bot__right,axiom,
    ! [V_x,T_a] :
      ( c_Orderings_Obot__class_Obot(T_a) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),c_Orderings_Obot__class_Obot(T_a))
     <= class_Lattices_Obounded__lattice__bot(T_a) ) ).

fof(fact_Int__insert__left__if1,axiom,
    ! [V_B_2,V_C_2,V_a_2,T_a] :
      ( hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)),V_C_2)
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_C_2)) ) ).

fof(fact_Int__absorb,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_A_2) = V_A_2 ).

fof(fact_le__iff__inf,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
      <=> V_x_2 = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x_2),V_y_2) ) ) ).

fof(arity_HOL__Obool__Orderings_Opreorder,axiom,
    class_Orderings_Opreorder(tc_HOL_Obool) ).

fof(fact_inf__commute,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_x) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) ) ).

fof(fact_equiv__class__nondisjoint,axiom,
    ! [V_b_2,V_a_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))),hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))))) ) ) ).

fof(fact_Diff__empty,axiom,
    ! [V_A_2,T_a] : V_A_2 = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_insert__inter__insert,axiom,
    ! [V_B_2,V_A_2,V_a_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_A_2)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) ).

fof(fact_UN__empty2,axiom,
    ! [V_A_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_b,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_PiE,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     => ( ~ hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),hAPP(V_B_2,V_x_2)))
       => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_SUP2__E,axiom,
    ! [V_c_2,V_b_2,V_B_2,V_A_2,T_c,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2))
     => ~ ! [B_x] :
            ( ~ hBOOL(hAPP(hAPP(hAPP(V_B_2,B_x),V_b_2),V_c_2))
           <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_insert__Diff,axiom,
    ! [V_A_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
     => V_A_2 = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) ) ).

fof(fact_INT__extend__simps_I4_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_A_2)),V_B_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) )
      & ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_C_2
       => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) = V_A_2 ) ) ).

fof(fact_IIA__def,axiom,
    ! [V_F_2] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf))
         => ! [B_xa] :
              ( ! [B_a,B_b] :
                  ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_F_2,B_x)))
                  <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_F_2,B_xa))) )
                 <= ! [B_i] :
                      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,B_i)))
                    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_xa,B_i))) ) )
             <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_xa),c_Arrow__Order__Mirabelle_OProf)) ) )
    <=> c_Arrow__Order__Mirabelle_OIIA(V_F_2) ) ).

fof(fact_inf__greatest,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) ) ) ) ).

fof(fact_Image__INT__eq,axiom,
    ! [V_B_2,T_c,V_A_2,V_r_2,T_b,T_a] :
      ( ( V_A_2 != c_Orderings_Obot__class_Obot(tc_fun(T_c,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_c),c_Relation_OImage(T_b,T_a,V_r_2)),V_B_2)) = hAPP(c_Relation_OImage(T_b,T_a,V_r_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)) )
     <= c_Relation_Osingle__valued(T_a,T_b,hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2)) ) ).

fof(fact_Int__iff,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
        & hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) ) ) ).

fof(fact_Int__assoc,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) ).

fof(fact_funcset__mem,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),V_B_2)) ) ) ).

fof(fact_RangeP_Ointros,axiom,
    ! [T_b,T_a,V_b_2,V_a_2,V_r_2] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_a_2),V_b_2))
     => c_Predicate_ORangeP(T_a,T_b,V_r_2,V_b_2) ) ).

fof(fact_Domain__mono,axiom,
    ! [V_s_2,V_r_2,T_b,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_2,V_s_2)
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Relation_ODomain(T_a,T_b,V_r_2),c_Relation_ODomain(T_a,T_b,V_s_2)) ) ).

fof(fact_empty__subsetI,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_A_2) ).

fof(fact_adm__lemma,axiom,
    ! [V_F_2,V_R_2,T_b,T_a] : c_Recdef_Oadm__wf(T_a,T_b,V_R_2,hAPP(hAPP(c_COMBC(tc_fun(T_a,T_b),tc_fun(T_a,T_a),tc_fun(T_a,T_b)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(tc_fun(T_a,T_a),tc_fun(T_a,T_b)),tc_fun(T_a,T_b)),c_COMBS(T_a,T_a,T_b)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(T_a,tc_fun(T_a,T_b)),tc_fun(T_a,T_b)),hAPP(c_COMBB(tc_fun(T_a,T_b),tc_fun(T_a,T_b),T_a),V_F_2)),hAPP(hAPP(c_COMBC(tc_fun(T_a,T_b),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_fun(T_a,T_b))),c_Recdef_Ocut(T_a,T_b)),V_R_2)))),c_COMBI(T_a))) ).

fof(fact_set__rev__mp,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_equalityE,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( ~ ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
         => ~ c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) )
     <= V_A_2 = V_B_2 ) ).

fof(fact_converseE,axiom,
    ! [V_r_2,V_yx_2,T_b,T_a] :
      ( ~ ! [B_x,B_y] :
            ( V_yx_2 = hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_y),B_x)
           => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_x),B_y)),V_r_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),V_yx_2),hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2))) ) ).

fof(fact_INT__insert,axiom,
    ! [V_B_2,V_A_2,V_a_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(V_B_2,V_a_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) ).

fof(fact_inf1E,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ~ ( hBOOL(hAPP(V_A_2,V_x_2))
         => ~ hBOOL(hAPP(V_B_2,V_x_2)) )
     <= hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2)) ) ).

fof(arity_fun__Orderings_Oord,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oord(T_1)
     => class_Orderings_Oord(tc_fun(T_2,T_1)) ) ).

fof(fact_Diff__Int2,axiom,
    ! [V_B_2,V_C_2,V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_C_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_C_2)),V_B_2) ).

fof(fact_refl__onD2,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2)) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_extensional__funcset__extend__domainI,axiom,
    ! [V_x_2,V_S_2,V_f_2,T_b,V_T_2,V_y_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_a)),V_f_2),c_FuncSet_Oextensional__funcset(T_b,T_a,V_S_2,V_T_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_a)),c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_y_2)),c_FuncSet_Oextensional__funcset(T_b,T_a,hAPP(hAPP(c_Set_Oinsert(T_b),V_x_2),V_S_2),V_T_2))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_T_2)) ) ).

fof(fact_extensional__funcset__empty__range,axiom,
    ! [T_b,T_a,V_S_2] :
      ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != V_S_2
     => c_Orderings_Obot__class_Obot(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool)) = c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))) ) ).

fof(fact_ex__in__conv,axiom,
    ! [V_A_2,T_a] :
      ( ? [B_x] : hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
    <=> V_A_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

fof(fact_inf1I,axiom,
    ! [T_a,V_B_2,V_x_2,V_A_2] :
      ( ( hBOOL(hAPP(V_B_2,V_x_2))
       => hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2)) )
     <= hBOOL(hAPP(V_A_2,V_x_2)) ) ).

fof(fact_fun__upd__idem__iff,axiom,
    ! [V_y_2,V_x_2,V_f_2,T_b,T_a] :
      ( hAPP(V_f_2,V_x_2) = V_y_2
    <=> c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2) = V_f_2 ) ).

fof(fact_single__valued__def,axiom,
    ! [V_r_2,T_b,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
    <=> ! [B_x,B_y] :
          ( ! [B_z] :
              ( B_y = B_z
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_z)),V_r_2)) )
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_y)),V_r_2)) ) ) ).

fof(fact_insert__iff,axiom,
    ! [V_A_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),V_A_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
        | V_a_2 = V_b_2 ) ) ).

fof(arity_fun__Lattices_Obounded__lattice__bot,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Obounded__lattice(T_1)
     => class_Lattices_Obounded__lattice__bot(tc_fun(T_2,T_1)) ) ).

fof(fact_unanimity__def,axiom,
    ! [V_F_2] :
      ( c_Arrow__Order__Mirabelle_Ounanimity(V_F_2)
    <=> ! [B_x] :
          ( ! [B_a,B_b] :
              ( ! [B_i] : hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,B_i)))
             => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_F_2,B_x))) )
         <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf)) ) ) ).

fof(fact_converse__meet,axiom,
    ! [V_s_2,V_r_2,T_a,T_b] : c_Predicate_Oconversep(T_b,T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool))),V_r_2),V_s_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),c_Predicate_Oconversep(T_b,T_a,V_r_2)),c_Predicate_Oconversep(T_b,T_a,V_s_2)) ).

fof(fact_single__valuedI,axiom,
    ! [V_r_2,T_b,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
     <= ! [B_x,B_y] :
          ( ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_z)),V_r_2))
             => B_z = B_y )
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_x),B_y)),V_r_2)) ) ) ).

fof(fact_IntD2,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_bot__empty__eq2,axiom,
    ! [V_y_2,V_x_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool))))
    <=> hBOOL(hAPP(hAPP(c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_x_2),V_y_2)) ) ).

fof(fact_in__mono,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_trancl__into__trancl2,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2)) ) ).

fof(fact_RangeE,axiom,
    ! [V_r_2,T_b,V_b_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),c_Relation_ORange(T_b,T_a,V_r_2)))
     => ~ ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_x),V_b_2)),V_r_2)) ) ).

fof(fact_insert__code,axiom,
    ! [V_x_2,V_A_2,V_y_2,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Set_Oinsert(T_a),V_y_2),V_A_2),V_x_2))
    <=> ( hBOOL(hAPP(V_A_2,V_x_2))
        | V_x_2 = V_y_2 ) ) ).

fof(fact_subsetD,axiom,
    ! [V_c_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) ) ) ).

fof(fact_fun__upd__triv,axiom,
    ! [V_x_2,V_f_2,T_b,T_a] : c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,hAPP(V_f_2,V_x_2)) = V_f_2 ).

fof(fact_top__greatest,axiom,
    ! [V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,c_Orderings_Otop__class_Otop(T_a))
     <= class_Orderings_Otop(T_a) ) ).

fof(fact_single__valuedD,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_b,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_b,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),V_r_2))
       => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_z_2)),V_r_2))
         => V_z_2 = V_y_2 ) ) ) ).

fof(fact_Int__mono,axiom,
    ! [V_D_2,V_B_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_D_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_D_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_converse__inv__image,axiom,
    ! [V_f_2,V_R_2,T_b,T_a] : c_Relation_Oinv__image(T_b,T_a,hAPP(c_Relation_Oconverse(T_b,T_b),V_R_2),V_f_2) = hAPP(c_Relation_Oconverse(T_a,T_a),c_Relation_Oinv__image(T_b,T_a,V_R_2,V_f_2)) ).

fof(fact_insertE,axiom,
    ! [V_A_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),V_A_2)))
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
       <= V_b_2 != V_a_2 ) ) ).

fof(fact_same__fstI,axiom,
    ! [T_a,V_R_2,V_y_2,V_y_H_2,T_b,V_x_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,V_x_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_y_H_2),V_y_2)),hAPP(V_R_2,V_x_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_H_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2))),c_Recdef_Osame__fst(T_a,T_b,V_P_2,V_R_2))) ) ) ).

fof(help_c__fequal__2,axiom,
    ! [V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2))
      | V_x_2 != V_y_2 ) ).

fof(fact_top1I,axiom,
    ! [V_x_2,T_a] : hBOOL(hAPP(c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)),V_x_2)) ).

fof(fact_converse__in__Lin,axiom,
    ! [V_La_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),hAPP(c_Relation_Oconverse(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_La_2)),c_Arrow__Order__Mirabelle_OLin))
    <=> hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_Image__Id__on,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = hAPP(c_Relation_OImage(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)),V_B_2) ).

fof(fact_Int__insert__left,axiom,
    ! [V_B_2,V_C_2,V_a_2,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_C_2))
       => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)),V_C_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2) )
      & ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)),V_C_2) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_C_2)) ) ) ).

fof(fact_subset__empty,axiom,
    ! [V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))
    <=> c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_A_2 ) ).

fof(fact_inf__fun__def,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_b,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(V_f_2,V_x_2)),hAPP(V_g_2,V_x_2)) = hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,T_a)),V_f_2),V_g_2),V_x_2) ) ).

fof(fact_inf__eq__top__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( c_Orderings_Otop__class_Otop(T_a) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x_2),V_y_2)
      <=> ( V_x_2 = c_Orderings_Otop__class_Otop(T_a)
          & c_Orderings_Otop__class_Otop(T_a) = V_y_2 ) )
     <= class_Lattices_Obounded__lattice__top(T_a) ) ).

fof(fact_SUP__subset,axiom,
    ! [V_f_2,V_B_2,V_A_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,T_b),V_A_2),V_f_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,T_b),V_B_2),V_f_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
     <= class_Complete__Lattice_Ocomplete__lattice(T_b) ) ).

fof(fact_refl__onD,axiom,
    ! [V_a_2,V_r_2,V_A_2,T_a] :
      ( c_Relation_Orefl__on(T_a,V_A_2,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_a_2)),V_r_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ) ).

fof(fact_pred__equals__eq2,axiom,
    ! [V_S_2,V_R_2,T_b,T_a] :
      ( V_R_2 = V_S_2
    <=> hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2) = hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2) ) ).

fof(fact_trancl__into__rtrancl,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_UN__simps_I5_J,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2)),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) ).

fof(fact_le__infI,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b) ) ) ) ).

fof(fact_UN__singleton,axiom,
    ! [V_A_2,T_a] : V_A_2 = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),c_Set_Oinsert(T_a)),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(help_c__COMBB__1,axiom,
    ! [V_R_2,V_Q_2,V_P_2,T_c,T_a,T_b] : hAPP(V_P_2,hAPP(V_Q_2,V_R_2)) = hAPP(hAPP(hAPP(c_COMBB(T_b,T_a,T_c),V_P_2),V_Q_2),V_R_2) ).

fof(fact_Not__Domain__rtrancl,axiom,
    ! [V_y_2,V_R_2,V_x_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Relation_ODomain(T_a,T_a,V_R_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2)))
      <=> V_x_2 = V_y_2 ) ) ).

fof(fact_acc__downwards__aux,axiom,
    ! [V_r_2,V_a_2,V_b_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Wellfounded_Oacc(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),c_Wellfounded_Oacc(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_a_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_INT__E,axiom,
    ! [V_a_2,V_B_2,V_A_2,T_b,V_b_2,T_a] :
      ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(V_B_2,V_a_2)))
       => ~ hBOOL(hAPP(hAPP(c_member(T_b),V_a_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_acc_OaccI,axiom,
    ! [V_r_2,V_x_2,T_a] :
      ( ! [B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_x_2)),V_r_2))
         => hBOOL(hAPP(hAPP(c_member(T_a),B_y),c_Wellfounded_Oacc(T_a,V_r_2))) )
     => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_insert__Diff__if,axiom,
    ! [V_A_2,V_B_2,V_x_2,T_a] :
      ( ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
      & ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) ) ) ).

fof(fact_insertI2,axiom,
    ! [V_b_2,V_B_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_B_2))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),V_B_2))) ) ).

fof(fact_acc__subset,axiom,
    ! [V_R2_2,V_R1_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),c_Wellfounded_Oacc(T_a,V_R2_2),c_Wellfounded_Oacc(T_a,V_R1_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_R1_2,V_R2_2) ) ).

fof(arity_HOL__Obool__Orderings_Oorder,axiom,
    class_Orderings_Oorder(tc_HOL_Obool) ).

fof(fact_extensional__funcset__restrict__domain,axiom,
    ! [V_T_2,V_f_2,T_b,V_S_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,c_HOL_Oundefined(T_b))),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_S_2),V_T_2))) )
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_S_2)) ) ).

fof(fact_Int__empty__right,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_Int__insert__right,axiom,
    ! [V_B_2,V_A_2,V_a_2,T_a] :
      ( ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) )
      & ( hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ) ).

fof(fact_congruentD,axiom,
    ! [V_z_2,V_y_2,V_f_2,V_r_2,T_b,T_a] :
      ( c_Equiv__Relations_Ocongruent(T_a,T_b,V_r_2,V_f_2)
     => ( hAPP(V_f_2,V_z_2) = hAPP(V_f_2,V_y_2)
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_z_2)),V_r_2)) ) ) ).

fof(fact_in__lex__prod,axiom,
    ! [V_s_2,V_r_2,V_b_H_2,V_a_H_2,V_b_2,V_a_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_a_H_2)),V_r_2))
        | ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_b_2),V_b_H_2)),V_s_2))
          & V_a_H_2 = V_a_2 ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_H_2),V_b_H_2))),c_Wellfounded_Olex__prod(T_a,T_b,V_r_2,V_s_2))) ) ).

fof(fact_in__mkbot,axiom,
    ! [V_z_2,V_La_2,V_y_2,V_x_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Omkbot(V_La_2,V_z_2)))
    <=> ( V_y_2 != V_z_2
        & ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_La_2))
         <= V_z_2 != V_x_2 )
        & ( V_x_2 = V_z_2
         => V_y_2 != V_x_2 ) ) ) ).

fof(fact_Image__mono,axiom,
    ! [V_A_2,V_A_H_2,V_r_2,V_r_H_2,T_b,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),hAPP(c_Relation_OImage(T_a,T_b,V_r_H_2),V_A_H_2),hAPP(c_Relation_OImage(T_a,T_b,V_r_2),V_A_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_H_2,V_A_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),V_r_H_2,V_r_2) ) ).

fof(fact_acyclic__insert,axiom,
    ! [V_r_2,V_x_2,V_y_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,hAPP(hAPP(c_Set_Oinsert(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),V_r_2))
    <=> ( c_Wellfounded_Oacyclic(T_a,V_r_2)
        & ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_acyclic__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
    <=> c_Wellfounded_Oacyclic(T_a,V_r_2) ) ).

fof(fact_SUP2__I,axiom,
    ! [T_c,T_b,V_c_2,V_b_2,V_B_2,V_A_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(hAPP(V_B_2,V_a_2),V_b_2),V_c_2))
       => hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ).

fof(fact_total__on__empty,axiom,
    ! [V_r_2,T_a] : c_Relation_Ototal__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_r_2) ).

fof(fact_congruent2D,axiom,
    ! [V_z2_2,V_y2_2,V_z1_2,V_y1_2,V_f_2,V_r2_2,V_r1_2,T_c,T_b,T_a] :
      ( c_Equiv__Relations_Ocongruent2(T_a,T_b,T_c,V_r1_2,V_r2_2,V_f_2)
     => ( ( hAPP(hAPP(V_f_2,V_z1_2),V_z2_2) = hAPP(hAPP(V_f_2,V_y1_2),V_y2_2)
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),V_y2_2),V_z2_2)),V_r2_2)) )
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y1_2),V_z1_2)),V_r1_2)) ) ) ).

fof(fact_rtranclD,axiom,
    ! [V_R_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2)))
     => ( V_b_2 = V_a_2
        | ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
          & V_b_2 != V_a_2 ) ) ) ).

fof(conj_0,hypothesis,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),v_L),c_Arrow__Order__Mirabelle_OLin)) ).

fof(fact_Pi__mem,axiom,
    ! [V_x_2,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     => ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),hAPP(V_B_2,V_x_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_Int__UNIV__left,axiom,
    ! [V_B_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),V_B_2) = V_B_2 ).

fof(fact_INF2__E,axiom,
    ! [V_a_2,V_c_2,V_b_2,V_B_2,V_A_2,T_c,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2))
     => ( ~ hBOOL(hAPP(hAPP(hAPP(V_B_2,V_a_2),V_b_2),V_c_2))
       => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ) ).

fof(fact_rtrancl__mono,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) ) ).

fof(fact_inf2E,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( ~ ( hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2))
         => ~ hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2)) )
     <= hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2)) ) ).

fof(fact_inf__idem,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_x) = V_x ) ).

fof(fact_insert__commute,axiom,
    ! [V_A_2,V_y_2,V_x_2,T_a] : hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_y_2),V_A_2)) = hAPP(hAPP(c_Set_Oinsert(T_a),V_y_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)) ).

fof(fact_rtrancl__idemp,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_r_2) = c_Transitive__Closure_Ortrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_UN__simps_I7_J,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a,T_b] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2)),V_B_2)) ).

fof(fact_refl__on__INTER,axiom,
    ! [V_r_2,V_A_2,T_b,V_S_2,T_a] :
      ( c_Relation_Orefl__on(T_b,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_S_2),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(tc_prod(T_b,T_b),tc_HOL_Obool)),V_S_2),V_r_2))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_S_2))
         => c_Relation_Orefl__on(T_b,hAPP(V_A_2,B_x),hAPP(V_r_2,B_x)) ) ) ).

fof(fact_le__fun__def,axiom,
    ! [V_g_2,V_f_2,T_a,T_b] :
      ( ( ! [B_x] : c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,B_x),hAPP(V_g_2,B_x))
      <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_inf_Oleft__commute,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),V_c)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_c))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_UN__insert__distrib,axiom,
    ! [V_B_2,V_a_2,T_b,V_A_2,V_u_2,T_a] :
      ( hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Set_Oinsert(T_b),V_a_2)),V_B_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_u_2),V_A_2)) ) ).

fof(fact_Diff__Int__distrib,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_A_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) ).

fof(fact_Diff__mono,axiom,
    ! [V_B_2,V_D_2,V_C_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_D_2,V_B_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_D_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) ) ).

fof(fact_IntE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
     => ~ ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) ) ) ).

fof(fact_in__mktop,axiom,
    ! [V_z_2,V_La_2,V_y_2,V_x_2] :
      ( ( V_x_2 != V_z_2
        & ( V_y_2 = V_z_2
         => V_y_2 != V_x_2 )
        & ( V_y_2 != V_z_2
         => hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_La_2)) ) )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),c_Arrow__Order__Mirabelle_Omktop(V_La_2,V_z_2))) ) ).

fof(fact_rtrancl__converseD,axiom,
    ! [V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)))) ) ).

fof(fact_ball__UN,axiom,
    ! [V_P_2,V_B_2,V_A_2,T_b,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
         => ! [B_xa] :
              ( hBOOL(hAPP(V_P_2,B_xa))
             <= hBOOL(hAPP(hAPP(c_member(T_a),B_xa),hAPP(V_B_2,B_x))) ) )
    <=> ! [B_x] :
          ( hBOOL(hAPP(V_P_2,B_x))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ) ).

fof(arity_HOL__Obool__Lattices_Olattice,axiom,
    class_Lattices_Olattice(tc_HOL_Obool) ).

fof(fact_converse__rtrancl__into__rtrancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_fun__upd__same,axiom,
    ! [V_y_2,V_x_2,V_f_2,T_a,T_b] : V_y_2 = hAPP(c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_y_2),V_x_2) ).

fof(fact_INF2__D,axiom,
    ! [V_a_2,V_c_2,V_b_2,V_B_2,V_A_2,T_c,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(hAPP(V_B_2,V_a_2),V_b_2),V_c_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2)) ) ).

fof(fact_INT__simps_I3_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2))
       <= V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) )
      & ( V_C_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2)) = c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool)) ) ) ).

fof(fact_INF__commute,axiom,
    ! [V_f_2,V_B_2,T_c,V_A_2,T_b,T_a] :
      ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,T_a),V_B_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,T_a),T_a,T_c),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,T_a),V_A_2)),hAPP(c_COMBC(T_b,T_c,T_a),V_f_2))) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,T_a),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_c,T_a),T_a,T_b),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,T_a),V_B_2)),V_f_2))
     <= class_Complete__Lattice_Ocomplete__lattice(T_a) ) ).

fof(fact_rtrancl__trancl__trancl,axiom,
    ! [V_z_2,V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_z_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_in__rel__def,axiom,
    ! [V_y_2,V_x_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),V_R_2))
    <=> c_FunDef_Oin__rel(T_a,T_b,V_R_2,V_x_2,V_y_2) ) ).

fof(fact_Image__eq__UN,axiom,
    ! [V_B_2,V_r_2,T_a,T_b] : hAPP(c_Relation_OImage(T_b,T_a,V_r_2),V_B_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_B_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),c_Relation_OImage(T_b,T_a,V_r_2)),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),c_Set_Oinsert(T_b)),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))))) ).

fof(arity_fun__Lattices_Olattice,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(T_1)
     => class_Lattices_Olattice(tc_fun(T_2,T_1)) ) ).

fof(fact_fun__upd__upd,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_f_2,T_b,T_a] : c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_z_2) = c_Fun_Ofun__upd(T_a,T_b,c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_x_2,V_z_2) ).

fof(fact_fold__graph_H_Ointros_I2_J,axiom,
    ! [V_y_2,V_z_2,V_f_2,T_b,V_A_2,V_x_2,T_a] :
      ( ( c_Nitpick_Ofold__graph_H(T_a,T_b,V_f_2,V_z_2,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),V_y_2)
       => c_Nitpick_Ofold__graph_H(T_a,T_b,V_f_2,V_z_2,V_A_2,hAPP(hAPP(V_f_2,V_x_2),V_y_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ).

fof(fact_xt1_I4_J,axiom,
    ! [V_c,V_a,V_b,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_a) ) ) ).

fof(fact_refl__onD1,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_Diff__idemp,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),V_B_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ).

fof(fact_Image__INT__subset,axiom,
    ! [V_B_2,V_A_2,T_c,V_r_2,T_b,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(c_Relation_OImage(T_b,T_a,V_r_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_c),c_Relation_OImage(T_b,T_a,V_r_2)),V_B_2))) ).

fof(fact_conversep__noteq,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_Predicate_Oconversep(T_a,T_a,hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_a),hAPP(c_COMBB(tc_HOL_Obool,tc_HOL_Obool,T_a),c_fNot)),c_fequal)),V_x_2),V_y_2))
    <=> V_x_2 != V_y_2 ) ).

fof(fact_INT__iff,axiom,
    ! [V_B_2,V_A_2,T_b,V_b_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
    <=> ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(V_B_2,B_x))) ) ) ).

fof(fact_extensional__funcset__mem,axiom,
    ! [V_x_2,V_T_2,V_S_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,V_x_2)),V_T_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_S_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2))) ) ).

fof(fact_INTER__UNIV__conv_I1_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] :
      ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))
    <=> ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
         => hAPP(V_B_2,B_x) = c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) ) ) ).

fof(fact_set__mp,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2)) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(arity_HOL__Obool__Complete__Lattice_Ocomplete__lattice,axiom,
    class_Complete__Lattice_Ocomplete__lattice(tc_HOL_Obool) ).

fof(fact_top__apply,axiom,
    ! [V_x_2,T_b,T_a] :
      ( c_Orderings_Otop__class_Otop(T_a) = hAPP(c_Orderings_Otop__class_Otop(tc_fun(T_b,T_a)),V_x_2)
     <= class_Orderings_Otop(T_a) ) ).

fof(fact_rtrancl_Ortrancl__refl,axiom,
    ! [V_r_2,V_a_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_a_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ).

fof(fact_UN__extend__simps_I5_J,axiom,
    ! [V_B_2,V_C_2,T_b,V_A_2,T_a] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2)),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) ).

fof(fact_Int__left__absorb,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)) ).

fof(arity_HOL__Obool__Lattices_Osemilattice__inf,axiom,
    class_Lattices_Osemilattice__inf(tc_HOL_Obool) ).

fof(fact_UN__extend__simps_I1_J,axiom,
    ! [V_B_2,V_a_2,T_b,T_a,V_C_2] :
      ( ( hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Set_Oinsert(T_b),V_a_2)),V_B_2))
       <= V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) )
      & ( V_C_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))) = hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) ) ) ).

fof(fact_conversep__iff,axiom,
    ! [V_b_2,V_a_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_b_2),V_a_2))
    <=> hBOOL(hAPP(hAPP(c_Predicate_Oconversep(T_a,T_b,V_r_2),V_a_2),V_b_2)) ) ).

fof(fact_order__trans,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_z)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_z) ) ) ) ).

fof(fact_acyclic__converse,axiom,
    ! [V_r_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_r_2)
    <=> c_Wellfounded_Oacyclic(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)) ) ).

fof(fact_UN__simps_I1_J,axiom,
    ! [V_B_2,V_a_2,T_b,T_a,V_C_2] :
      ( ( c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Set_Oinsert(T_b),V_a_2)),V_B_2))
       <= V_C_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) )
      & ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Set_Oinsert(T_b),V_a_2)),V_B_2)) = hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2))
       <= V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ) ).

fof(fact_dictatorI,axiom,
    ! [V_i_2,V_F_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),V_F_2),c_FuncSet_OPi(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),c_Arrow__Order__Mirabelle_OProf,c_COMBK(tc_fun(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_HOL_Obool),tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_OLin))))
     => ( c_Arrow__Order__Mirabelle_Odictator(V_F_2,V_i_2)
       <= ! [B_x] :
            ( ! [B_a,B_b] :
                ( B_b != B_a
               => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(V_F_2,B_x)))
                 <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),B_a),B_b)),hAPP(B_x,V_i_2))) ) )
           <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf)) ) ) ) ).

fof(fact_rtrancl__trans,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_refl__on__Int,axiom,
    ! [V_s_2,V_B_2,V_r_2,V_A_2,T_a] :
      ( ( c_Relation_Orefl__on(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),V_r_2),V_s_2))
       <= c_Relation_Orefl__on(T_a,V_B_2,V_s_2) )
     <= c_Relation_Orefl__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_extensional__funcset__def,axiom,
    ! [V_T_2,V_S_2,T_b,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool)),c_FuncSet_OPi(T_a,T_b,V_S_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_T_2))),c_FuncSet_Oextensional(T_a,T_b,V_S_2)) = c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2) ).

fof(fact_set__eq__subset,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
        & c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
    <=> V_A_2 = V_B_2 ) ).

fof(fact_INT__extend__simps_I5_J,axiom,
    ! [V_B_2,V_C_2,T_b,V_a_2,T_a] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Set_Oinsert(T_a),V_a_2)),V_B_2)) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) ).

fof(fact_Range__insert,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a,T_b] : hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Relation_ORange(T_b,T_a,V_r_2)) = c_Relation_ORange(T_b,T_a,hAPP(hAPP(c_Set_Oinsert(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_a_2),V_b_2)),V_r_2)) ).

fof(fact_SUP__const,axiom,
    ! [V_M_2,T_a,V_A_2,T_b] :
      ( class_Complete__Lattice_Ocomplete__lattice(T_b)
     => ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != V_A_2
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,T_b),V_A_2),c_COMBK(T_b,T_a,V_M_2)) = V_M_2 ) ) ).

fof(fact_rtrancl__converseI,axiom,
    ! [V_r_2,V_x_2,V_y_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2))))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_linorder__linear,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Orderings_Olinorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
        | c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_inf__bot__left,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Obounded__lattice__bot(T_a)
     => c_Orderings_Obot__class_Obot(T_a) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),c_Orderings_Obot__class_Obot(T_a)),V_x) ) ).

fof(arity_HOL__Obool__Orderings_Obot,axiom,
    class_Orderings_Obot(tc_HOL_Obool) ).

fof(fact_eq__equiv__class,axiom,
    ! [V_A_2,V_b_2,V_a_2,V_r_2,T_a] :
      ( hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
     => ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
       => ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2)) ) ) ) ).

fof(fact_equiv__class__self,axiom,
    ! [V_a_2,V_r_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))))) )
     <= c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2) ) ).

fof(fact_INT__Int__distrib,axiom,
    ! [V_B_2,V_A_2,V_I_2,T_a,T_b] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_A_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),hAPP(hAPP(c_COMBS(T_b,tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool))),V_A_2)),V_B_2)) ).

fof(fact_inf__left__idem,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_INT__extend__simps_I1_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2)) )
      & ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = V_B_2
       <= c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_C_2 ) ) ).

fof(fact_Range__iff,axiom,
    ! [V_r_2,T_b,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Relation_ORange(T_b,T_a,V_r_2)))
    <=> ? [B_y] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_y),V_a_2)),V_r_2)) ) ).

fof(fact_equalityD2,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( V_B_2 = V_A_2
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) ) ).

fof(fact_order__antisym__conv,axiom,
    ! [V_x_2,V_y_2,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2)
        <=> V_y_2 = V_x_2 ) ) ) ).

fof(fact_in__inv__imagep,axiom,
    ! [V_y_2,V_x_2,V_f_2,V_r_2,T_b,T_a] :
      ( c_Predicate_Oinv__imagep(T_a,T_b,V_r_2,V_f_2,V_x_2,V_y_2)
    <=> hBOOL(hAPP(hAPP(V_r_2,hAPP(V_f_2,V_x_2)),hAPP(V_f_2,V_y_2))) ) ).

fof(fact_Transitive__Closure_Otrancl__into__trancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_Diff__cancel,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_A_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_DiffE,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
     => ~ ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) ) ) ).

fof(fact_SUPR__apply,axiom,
    ! [V_x_2,V_f_2,V_A_2,T_c,T_b,T_a] :
      ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,T_a),V_A_2),hAPP(hAPP(c_COMBC(T_b,T_c,T_a),V_f_2),V_x_2)) = hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_c,T_a)),V_A_2),V_f_2),V_x_2)
     <= class_Complete__Lattice_Ocomplete__lattice(T_a) ) ).

fof(fact_ext,axiom,
    ! [V_g_2,V_f_2] :
      ( ! [B_x] : hAPP(V_f_2,B_x) = hAPP(V_g_2,B_x)
     => V_g_2 = V_f_2 ) ).

fof(fact_equalityCE,axiom,
    ! [V_c_2,T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => ( ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) )
       => ~ ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
           <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) ) ) ) ).

fof(fact_refl__on__empty,axiom,
    ! [T_a] : c_Relation_Orefl__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_in__inv__image,axiom,
    ! [V_f_2,V_r_2,T_b,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Relation_Oinv__image(T_b,T_a,V_r_2,V_f_2)))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_b),hAPP(V_f_2,V_x_2)),hAPP(V_f_2,V_y_2))),V_r_2)) ) ).

fof(fact_INT__subset__iff,axiom,
    ! [V_A_2,V_I_2,T_b,V_B_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_A_2))
    <=> ! [B_x] :
          ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,hAPP(V_A_2,B_x))
         <= hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_I_2)) ) ) ).

fof(fact_INT__simps_I9_J,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_c,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_c,tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),T_c),c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool))),V_B_2)),V_C_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) ).

fof(fact_accp__acc__eq,axiom,
    ! [V_x_2,V_r_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_r_2)))
    <=> c_Wellfounded_Oaccp(T_a,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_a),c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_prod(T_a,T_a)),tc_fun(T_a,tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_HOL_Obool),T_a),c_member(tc_prod(T_a,T_a)))),c_Product__Type_OPair(T_a,T_a)))),V_r_2),V_x_2) ) ).

fof(fact_le__infE,axiom,
    ! [V_b,V_a,V_x,T_a] :
      ( ( ~ ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_b)
           <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_a) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_INT__I,axiom,
    ! [V_B_2,V_b_2,T_b,V_A_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),V_b_2),hAPP(V_B_2,B_x)))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
     => hBOOL(hAPP(hAPP(c_member(T_b),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(arity_fun__Orderings_Oorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Oorder(tc_fun(T_2,T_1))
     <= class_Orderings_Oorder(T_1) ) ).

fof(fact_equiv__class__eq,axiom,
    ! [V_b_2,V_a_2,V_r_2,V_A_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2))
       => hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) )
     <= c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2) ) ).

fof(fact_RangeI,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(T_b),V_b_2),c_Relation_ORange(T_a,T_b,V_r_2))) ) ).

fof(fact_pred__subset__eq,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_R_2,V_S_2)
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2)) ) ).

fof(fact_trancl__converse,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Otrancl(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)) = hAPP(c_Relation_Oconverse(T_a,T_a),c_Transitive__Closure_Otrancl(T_a,V_r_2)) ).

fof(fact_Pi__I_H,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x))) ) ) ).

fof(fact_rtrancl__induct2,axiom,
    ! [V_P_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( ( ( ! [B_a,B_b] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
             => ! [B_aa,B_ba] :
                  ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba))),V_r_2))
                 => ( hBOOL(hAPP(hAPP(V_P_2,B_aa),B_ba))
                   <= hBOOL(hAPP(hAPP(V_P_2,B_a),B_b)) ) ) )
         => hBOOL(hAPP(hAPP(V_P_2,V_bx_2),V_by_2)) )
       <= hBOOL(hAPP(hAPP(V_P_2,V_ax_2),V_ay_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2))) ) ).

fof(fact_DiffD2,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
     => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) ) ).

fof(fact_Diff__insert2,axiom,
    ! [V_B_2,V_a_2,V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))),V_B_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)) ).

fof(fact_r__r__into__trancl,axiom,
    ! [V_c_2,V_R_2,V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),V_R_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_R_2)) ) ).

fof(fact_Int__insert__left__if0,axiom,
    ! [V_B_2,V_C_2,V_a_2,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)),V_C_2)
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_C_2)) ) ).

fof(fact_fun__diff__def,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( class_Groups_Ominus(T_a)
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(V_A_2,V_x_2)),hAPP(V_B_2,V_x_2)) = hAPP(hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,T_a)),V_A_2),V_B_2),V_x_2) ) ).

fof(fact_rtrancl__induct,axiom,
    ! [V_P_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(V_P_2,V_a_2))
       => ( hBOOL(hAPP(V_P_2,V_b_2))
         <= ! [B_y] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),B_y)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
             => ! [B_z] :
                  ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_z)),V_r_2))
                 => ( hBOOL(hAPP(V_P_2,B_y))
                   => hBOOL(hAPP(V_P_2,B_z)) ) ) ) ) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_INT__simps_I5_J,axiom,
    ! [V_B_2,V_a_2,V_C_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Set_Oinsert(T_a),V_a_2)),V_B_2)) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) ).

fof(fact_order__antisym,axiom,
    ! [V_y,V_x,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => ( c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x)
         => V_x = V_y ) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_Id__on__eqI,axiom,
    ! [V_A_2,T_a,V_b_2,V_a_2] :
      ( V_a_2 = V_b_2
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Relation_OId__on(T_a,V_A_2))) ) ) ).

fof(fact_xt1_I3_J,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_b)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_c,V_a) )
       <= V_a = V_b )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_disjoint__iff__not__equal,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
    <=> ! [B_x] :
          ( ! [B_xa] :
              ( B_xa != B_x
             <= hBOOL(hAPP(hAPP(c_member(T_a),B_xa),V_B_2)) )
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_empty__iff,axiom,
    ! [V_c_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(fact_insert__Diff__single,axiom,
    ! [V_A_2,V_a_2,T_a] : hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_A_2) ).

fof(fact_converse__converse,axiom,
    ! [V_r_2,T_a,T_b] : V_r_2 = hAPP(c_Relation_Oconverse(T_b,T_a),hAPP(c_Relation_Oconverse(T_a,T_b),V_r_2)) ).

fof(fact_UN__extend__simps_I7_J,axiom,
    ! [V_B_2,V_C_2,T_b,V_A_2,T_a] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2)),V_B_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_B_2)) ).

fof(fact_UN__simps_I9_J,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_c,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_c,tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),T_c),c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool))),V_B_2)),V_C_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) ).

fof(fact_order__eq__iff,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_y_2,V_x_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> V_x_2 = V_y_2 )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_compose__extensional,axiom,
    ! [V_g_2,V_f_2,V_A_2,T_c,T_b,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_f_2,V_g_2)),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ).

fof(fact_Pi__anti__mono,axiom,
    ! [V_B_2,T_b,V_A_2,V_A_H_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2),c_FuncSet_OPi(T_a,T_b,V_A_H_2,V_B_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_H_2,V_A_2) ) ).

fof(fact_fun__upd__idem,axiom,
    ! [T_a,T_b,V_y_2,V_x_2,V_f_2] :
      ( V_y_2 = hAPP(V_f_2,V_x_2)
     => V_f_2 = c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_y_2) ) ).

fof(fact_cuts__eq,axiom,
    ! [V_g_2,V_x_2,V_r_2,V_f_2,T_b,T_a] :
      ( hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_g_2),V_r_2),V_x_2) = hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_x_2)
    <=> ! [B_y] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_x_2)),V_r_2))
         => hAPP(V_f_2,B_y) = hAPP(V_g_2,B_y) ) ) ).

fof(fact_trancl__domain,axiom,
    ! [V_r_2,T_a] : c_Relation_ODomain(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) = c_Relation_ODomain(T_a,T_a,V_r_2) ).

fof(fact_Image__Int__eq,axiom,
    ! [V_B_2,V_A_2,V_R_2,T_b,T_a] :
      ( hAPP(c_Relation_OImage(T_b,T_a,V_R_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(c_Relation_OImage(T_b,T_a,V_R_2),V_A_2)),hAPP(c_Relation_OImage(T_b,T_a,V_R_2),V_B_2))
     <= c_Relation_Osingle__valued(T_a,T_b,hAPP(c_Relation_Oconverse(T_b,T_a),V_R_2)) ) ).

fof(fact_fun__upd__twist,axiom,
    ! [V_d_2,V_b_2,V_m_2,T_b,T_a,V_c_2,V_a_2] :
      ( c_Fun_Ofun__upd(T_a,T_b,c_Fun_Ofun__upd(T_a,T_b,V_m_2,V_a_2,V_b_2),V_c_2,V_d_2) = c_Fun_Ofun__upd(T_a,T_b,c_Fun_Ofun__upd(T_a,T_b,V_m_2,V_c_2,V_d_2),V_a_2,V_b_2)
     <= V_a_2 != V_c_2 ) ).

fof(fact_INT__constant,axiom,
    ! [V_c_2,T_b,T_a,V_A_2] :
      ( ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_c_2)) = V_c_2
       <= c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != V_A_2 )
      & ( V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_c_2)) = c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool)) ) ) ).

fof(fact_INF__INT__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_COMBC(T_b,tc_fun(T_b,tc_HOL_Obool),tc_HOL_Obool),c_member(T_b))),V_r_2)),V_x_2))
    <=> hBOOL(hAPP(hAPP(c_member(T_b),V_x_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),V_r_2))) ) ).

fof(fact_fold__graph_H_Oequations_I1_J,axiom,
    ! [V_a2_2,V_a1_2,T_b,T_a] : c_Nitpick_Ofold__graph_H(T_a,T_b,V_a1_2,V_a2_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_a2_2) ).

fof(fact_Int__left__commute,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_C_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) ).

fof(fact_converse__Int,axiom,
    ! [V_s_2,V_r_2,T_a,T_b] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2)),hAPP(c_Relation_Oconverse(T_b,T_a),V_s_2)) = hAPP(c_Relation_Oconverse(T_b,T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool)),V_r_2),V_s_2)) ).

fof(fact_Range__def,axiom,
    ! [V_r_2,T_a,T_b] : c_Relation_ODomain(T_a,T_b,hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2)) = c_Relation_ORange(T_b,T_a,V_r_2) ).

fof(fact_inf__sup__aci_I2_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)),V_z) ) ).

fof(fact_predicate1D,axiom,
    ! [V_x_2,V_Q_2,V_P_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_P_2,V_Q_2)
     => ( hBOOL(hAPP(V_Q_2,V_x_2))
       <= hBOOL(hAPP(V_P_2,V_x_2)) ) ) ).

fof(fact_xt1_I5_J,axiom,
    ! [V_x,V_y,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
         => V_y = V_x )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Oorder(T_a) ) ).

fof(fact_Int__UN__distrib,axiom,
    ! [V_A_2,V_I_2,T_b,V_B_2,T_a] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2)),V_A_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_A_2)) ).

fof(fact_singleton__inject,axiom,
    ! [V_b_2,V_a_2,T_a] :
      ( V_a_2 = V_b_2
     <= hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ) ).

fof(fact_extensional__restrict,axiom,
    ! [V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
     => V_f_2 = c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2) ) ).

fof(fact_inf_Oidem,axiom,
    ! [V_a,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_a) = V_a
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_extensional__subset,axiom,
    ! [V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_B_2)))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ) ).

fof(fact_INT__extend__simps_I2_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != V_C_2
       => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2)),V_B_2)) )
      & ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) = V_A_2
       <= c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_C_2 ) ) ).

fof(arity_HOL__Obool__Lattices_Obounded__lattice__top,axiom,
    class_Lattices_Obounded__lattice__top(tc_HOL_Obool) ).

fof(fact_fun__upd__other,axiom,
    ! [V_y_2,V_f_2,T_b,T_a,V_x_2,V_z_2] :
      ( hAPP(V_f_2,V_z_2) = hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_z_2)
     <= V_x_2 != V_z_2 ) ).

fof(fact_UN__I,axiom,
    ! [V_B_2,V_b_2,T_b,V_A_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
     => ( hBOOL(hAPP(hAPP(c_member(T_b),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)))
       <= hBOOL(hAPP(hAPP(c_member(T_b),V_b_2),hAPP(V_B_2,V_a_2))) ) ) ).

fof(fact_Domain__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_ODomain(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) = V_A_2 ).

fof(fact_subset__refl,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_A_2) ).

fof(fact_inf__le2,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_y) ) ).

fof(fact_inf1D1,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_a] :
      ( hBOOL(hAPP(V_A_2,V_x_2))
     <= hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_x_2)) ) ).

fof(fact_DiffD1,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2)) ) ).

fof(fact_rtrancl__into__trancl2,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_INT__simps_I4_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_A_2)),V_B_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) )
      & ( c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_A_2)),V_B_2))
       <= V_C_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ) ).

fof(fact_le__funE,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( class_Orderings_Oord(T_b)
     => ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2) ) ) ).

fof(fact_SUP__commute,axiom,
    ! [V_f_2,V_B_2,T_c,V_A_2,T_b,T_a] :
      ( class_Complete__Lattice_Ocomplete__lattice(T_a)
     => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,T_a),V_B_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,T_a),T_a,T_c),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,T_a),V_A_2)),hAPP(c_COMBC(T_b,T_c,T_a),V_f_2))) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,T_a),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_c,T_a),T_a,T_b),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,T_a),V_B_2)),V_f_2)) ) ).

fof(fact_total__on__def,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Ototal__on(T_a,V_A_2,V_r_2)
    <=> ! [B_x] :
          ( ! [B_xa] :
              ( hBOOL(hAPP(hAPP(c_member(T_a),B_xa),V_A_2))
             => ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_xa)),V_r_2))
                  | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_xa),B_x)),V_r_2)) )
               <= B_x != B_xa ) )
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_Int__Diff,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) ).

fof(fact_converse__iff,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_b_2),V_a_2)),V_r_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2))) ) ).

fof(fact_less__by__empty,axiom,
    ! [V_B_2,T_a,V_A_2] :
      ( c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = V_A_2
     => c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_equalityI,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( ( V_B_2 = V_A_2
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_inf__absorb1,axiom,
    ! [V_y,V_x,T_a] :
      ( ( V_x = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_compose__Id,axiom,
    ! [V_B_2,V_A_2,V_g_2,T_b,T_a] :
      ( ( c_FuncSet_Ocompose(T_a,T_a,T_b,V_A_2,V_g_2,c_FuncSet_Orestrict(T_a,T_a,c_COMBI(T_a),V_A_2)) = V_g_2
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_single__valued__confluent,axiom,
    ! [V_z_2,V_y_2,V_x_2,V_r_2,T_a] :
      ( c_Relation_Osingle__valued(T_a,T_a,V_r_2)
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
         => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_z_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
            | hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ) ) ).

fof(fact_congruent2__implies__congruent__UN,axiom,
    ! [V_a_2,V_f_2,T_c,V_r2_2,V_A2_2,T_b,V_r1_2,V_A1_2,T_a] :
      ( ( c_Equiv__Relations_Oequiv(T_b,V_A2_2,V_r2_2)
       => ( c_Equiv__Relations_Ocongruent2(T_a,T_b,tc_fun(T_c,tc_HOL_Obool),V_r1_2,V_r2_2,V_f_2)
         => ( hBOOL(hAPP(hAPP(c_member(T_b),V_a_2),V_A2_2))
           => c_Equiv__Relations_Ocongruent(T_a,tc_fun(T_c,tc_HOL_Obool),V_r1_2,hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool)),tc_fun(T_c,tc_HOL_Obool),T_a),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_c,tc_HOL_Obool)),hAPP(c_Relation_OImage(T_b,T_b,V_r2_2),hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool)))))),V_f_2)) ) ) )
     <= c_Equiv__Relations_Oequiv(T_a,V_A1_2,V_r1_2) ) ).

fof(fact_funcset__compose,axiom,
    ! [V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_c)),c_FuncSet_Ocompose(T_a,T_b,T_c,V_A_2,V_g_2,V_f_2)),c_FuncSet_OPi(T_a,T_c,V_A_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_a,V_C_2))))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_c)),V_g_2),c_FuncSet_OPi(T_b,T_c,V_B_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_b,V_C_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_Int__absorb2,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( V_A_2 = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_inf__assoc,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)),V_z)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_UNIV__I,axiom,
    ! [V_x_2,T_a] : hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(fact_xt1_I6_J,axiom,
    ! [V_z,V_x,V_y,T_a] :
      ( class_Orderings_Oorder(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_y)
         => c_Orderings_Oord__class_Oless__eq(T_a,V_z,V_x) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) ) ) ).

fof(fact_Range__empty__iff,axiom,
    ! [V_r_2,T_a,T_b] :
      ( V_r_2 = c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool))
    <=> c_Relation_ORange(T_b,T_a,V_r_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

fof(fact_linorder__le__cases,axiom,
    ! [V_y,V_x,T_a] :
      ( ( ~ c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_y)
       => c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Orderings_Olinorder(T_a) ) ).

fof(fact_SUP1__I,axiom,
    ! [T_b,V_b_2,V_B_2,V_A_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_B_2,V_a_2),V_b_2))
       => hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ).

fof(fact_conversep__eq,axiom,
    ! [T_a] : c_Predicate_Oconversep(T_a,T_a,c_fequal) = c_fequal ).

fof(fact_Diff__iff,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
    <=> ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
        & ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2)) ) ) ).

fof(fact_subset__equiv__class,axiom,
    ! [V_a_2,V_b_2,V_r_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))))
       => ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2)) ) ) ) ).

fof(fact_inf__mono,axiom,
    ! [V_d,V_b,V_c,V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_c),V_d))
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_d) )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c) ) ) ).

fof(fact_converseI,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_b_2),V_a_2)),hAPP(c_Relation_Oconverse(T_a,T_b),V_r_2))) ) ).

fof(fact_inf__sup__ord_I2_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_y) ) ).

fof(fact_conversepD,axiom,
    ! [V_b_2,V_a_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_Predicate_Oconversep(T_a,T_b,V_r_2),V_a_2),V_b_2))
     => hBOOL(hAPP(hAPP(V_r_2,V_b_2),V_a_2)) ) ).

fof(fact_trancl_Or__into__trancl,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ).

fof(fact_all__not__in__conv,axiom,
    ! [V_A_2,T_a] :
      ( V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
    <=> ! [B_x] : ~ hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ).

fof(fact_singleton__iff,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( V_b_2 = V_a_2
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) ) ).

fof(fact_inf2I,axiom,
    ! [T_b,T_a,V_B_2,V_y_2,V_x_2,V_A_2] :
      ( ( hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2))
       => hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2)) )
     <= hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2)) ) ).

fof(fact_bot2E,axiom,
    ! [V_y_2,V_x_2,T_b,T_a] : ~ hBOOL(hAPP(hAPP(c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_x_2),V_y_2)) ).

fof(arity_HOL__Obool__Lattices_Obounded__lattice,axiom,
    class_Lattices_Obounded__lattice(tc_HOL_Obool) ).

fof(fact_funcsetI,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),V_B_2)) ) ) ).

fof(fact_tfl__cut__apply,axiom,
    ! [T_b,V_a_2,V_x_2,T_a,B_f,B_R] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_a_2)),B_R))
     => hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),B_f),B_R),V_a_2),V_x_2) = hAPP(B_f,V_x_2) ) ).

fof(arity_fun__Lattices_Obounded__lattice__top,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Obounded__lattice__top(tc_fun(T_2,T_1))
     <= class_Lattices_Obounded__lattice(T_1) ) ).

fof(fact_Domain__empty__iff,axiom,
    ! [V_r_2,T_b,T_a] :
      ( V_r_2 = c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool))
    <=> c_Relation_ODomain(T_a,T_b,V_r_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

fof(fact_Pi__UNIV,axiom,
    ! [V_A_2,T_b,T_a] : c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool)))) = c_Orderings_Otop__class_Otop(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool)) ).

fof(fact_insert__not__empty,axiom,
    ! [V_A_2,V_a_2,T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_A_2) ).

fof(fact_DomainP_Ointros,axiom,
    ! [T_b,T_a,V_b_2,V_a_2,V_r_2] :
      ( c_Predicate_ODomainP(T_a,T_b,V_r_2,V_a_2)
     <= hBOOL(hAPP(hAPP(V_r_2,V_a_2),V_b_2)) ) ).

fof(arity_fun__Lattices_Obounded__lattice,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Obounded__lattice(tc_fun(T_2,T_1))
     <= class_Lattices_Obounded__lattice(T_1) ) ).

fof(fact_extensionalityI,axiom,
    ! [V_g_2,V_A_2,V_f_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_g_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2)))
       => ( ! [B_x] :
              ( hAPP(V_f_2,B_x) = hAPP(V_g_2,B_x)
             <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
         => V_f_2 = V_g_2 ) ) ) ).

fof(fact_Diff__insert__absorb,axiom,
    ! [V_A_2,V_x_2,T_a] :
      ( V_A_2 = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ).

fof(fact_UN__subset__iff,axiom,
    ! [V_B_2,V_A_2,V_I_2,T_b,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_I_2))
         => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(V_A_2,B_x),V_B_2) )
    <=> c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_A_2),V_B_2) ) ).

fof(fact_congruent2__implies__congruent,axiom,
    ! [V_a_2,V_f_2,V_r2_2,T_c,T_b,V_r1_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r1_2)
     => ( c_Equiv__Relations_Ocongruent2(T_a,T_b,T_c,V_r1_2,V_r2_2,V_f_2)
       => ( c_Equiv__Relations_Ocongruent(T_b,T_c,V_r2_2,hAPP(V_f_2,V_a_2))
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ) ) ).

fof(fact_le__funD,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,T_b),V_f_2,V_g_2)
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(V_f_2,V_x_2),hAPP(V_g_2,V_x_2)) )
     <= class_Orderings_Oord(T_b) ) ).

fof(fact_mem__def,axiom,
    ! [V_A_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
    <=> hBOOL(hAPP(V_A_2,V_x_2)) ) ).

fof(fact_mkbot__Lin,axiom,
    ! [V_x_2,V_La_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Omkbot(V_La_2,V_x_2)),c_Arrow__Order__Mirabelle_OLin))
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_restrict__in__funcset,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2)),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2))))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),V_B_2)) ) ) ).

fof(fact_fold__graph_H_Oequations_I2_J,axiom,
    ! [V_a5_2,V_a1_2,V_a2_2,V_a4_2,V_a3_2,T_b,T_a] :
      ( c_Nitpick_Ofold__graph_H(T_a,T_b,V_a3_2,V_a4_2,V_a2_2,hAPP(hAPP(V_a3_2,V_a1_2),V_a5_2))
    <=> ( ( V_a4_2 = hAPP(hAPP(V_a3_2,V_a1_2),V_a5_2)
          & V_a2_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) )
        | ? [B_x,B_y] :
            ( hAPP(hAPP(V_a3_2,V_a1_2),V_a5_2) = hAPP(hAPP(V_a3_2,B_x),B_y)
            & c_Nitpick_Ofold__graph_H(T_a,T_b,V_a3_2,V_a4_2,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_a2_2),hAPP(hAPP(c_Set_Oinsert(T_a),B_x),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))),B_y)
            & hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_a2_2)) ) ) ) ).

fof(fact_Diff__disjoint,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_A_2)) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_converse__rtranclE2,axiom,
    ! [V_r_2,V_zb_2,V_za_2,V_xb_2,V_xa_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
     => ( hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2) != hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2)
       => ~ ! [B_a,B_b] :
              ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_za_2),V_zb_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
             <= hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_xa_2),V_xb_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b))),V_r_2)) ) ) ) ).

fof(fact_trancl__trans,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_trancl__converseI,axiom,
    ! [V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),hAPP(c_Relation_Oconverse(T_a,T_a),c_Transitive__Closure_Otrancl(T_a,V_r_2))))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)))) ) ).

fof(fact_conversep__converse__eq,axiom,
    ! [V_y_2,V_x_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_x_2),V_y_2)),hAPP(c_Relation_Oconverse(T_a,T_b),V_r_2)))
    <=> hBOOL(hAPP(hAPP(c_Predicate_Oconversep(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2)),V_x_2),V_y_2)) ) ).

fof(fact_accp__downward,axiom,
    ! [V_a_2,V_b_2,V_r_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_r_2,V_a_2),V_b_2))
       => c_Wellfounded_Oaccp(T_a,V_r_2,V_a_2) )
     <= c_Wellfounded_Oaccp(T_a,V_r_2,V_b_2) ) ).

fof(fact_UNION__empty__conv_I1_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] :
      ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)
    <=> ! [B_x] :
          ( hAPP(V_B_2,B_x) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
         <= hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2)) ) ) ).

fof(fact_inf__apply,axiom,
    ! [V_x_2,V_g_2,V_f_2,T_b,T_a] :
      ( hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,T_a)),V_f_2),V_g_2),V_x_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(V_f_2,V_x_2)),hAPP(V_g_2,V_x_2))
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_UN__equiv__class,axiom,
    ! [V_a_2,V_f_2,T_b,V_r_2,V_A_2,T_a] :
      ( ( ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))),V_f_2) = hAPP(V_f_2,V_a_2)
         <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) )
       <= c_Equiv__Relations_Ocongruent(T_a,tc_fun(T_b,tc_HOL_Obool),V_r_2,V_f_2) )
     <= c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2) ) ).

fof(fact_insertCI,axiom,
    ! [V_b_2,V_B_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),V_B_2)))
     <= ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_B_2))
       => V_b_2 = V_a_2 ) ) ).

fof(fact_rtrancl__trancl__absorb,axiom,
    ! [V_R_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,V_R_2) = c_Transitive__Closure_Otrancl(T_a,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ).

fof(fact_rev__ImageI,axiom,
    ! [V_r_2,V_b_2,T_b,V_A_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(T_b),V_b_2),hAPP(c_Relation_OImage(T_a,T_b,V_r_2),V_A_2))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ).

fof(fact_fun__upd__apply,axiom,
    ! [V_y_2,V_f_2,T_b,T_a,V_x_2,V_z_2] :
      ( ( V_z_2 != V_x_2
       => hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_z_2) = hAPP(V_f_2,V_z_2) )
      & ( V_z_2 = V_x_2
       => hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,V_y_2),V_z_2) = V_y_2 ) ) ).

fof(fact_converse__rtranclE,axiom,
    ! [V_r_2,V_z_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( V_x_2 != V_z_2
       => ~ ! [B_y] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_y)),V_r_2))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_z_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ) ).

fof(fact_converse__rtrancl__induct,axiom,
    ! [V_P_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(V_P_2,V_b_2))
       => ( hBOOL(hAPP(V_P_2,V_a_2))
         <= ! [B_y,B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),B_z)),V_r_2))
             => ( ( hBOOL(hAPP(V_P_2,B_z))
                 => hBOOL(hAPP(V_P_2,B_y)) )
               <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ) ) ) ).

fof(fact_extensional__funcset__fun__upd__restricts__rangeI,axiom,
    ! [V_T_2,T_b,V_x_2,V_f_2,V_S_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_S_2),V_T_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_x_2,c_HOL_Oundefined(T_b))),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),V_T_2),hAPP(hAPP(c_Set_Oinsert(T_b),hAPP(V_f_2,V_x_2)),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))))))) )
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_S_2))
         => hAPP(V_f_2,V_x_2) != hAPP(V_f_2,B_x) ) ) ).

fof(fact_INF2__iff,axiom,
    ! [V_c_2,V_b_2,V_B_2,V_A_2,T_c,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2))
    <=> ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(hAPP(V_B_2,B_x),V_b_2),V_c_2)) ) ) ).

fof(fact_inf__sup__aci_I4_J,axiom,
    ! [V_y,V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)
     <= class_Lattices_Olattice(T_a) ) ).

fof(fact_below__Lin,axiom,
    ! [V_La_2,V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Obelow(V_La_2,V_x_2,V_y_2)),c_Arrow__Order__Mirabelle_OLin))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin)) )
     <= V_y_2 != V_x_2 ) ).

fof(fact_DomainI,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_conversep_Oequations,axiom,
    ! [V_a1_2,V_a2_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_r_2,V_a1_2),V_a2_2))
    <=> hBOOL(hAPP(hAPP(c_Predicate_Oconversep(T_a,T_b,V_r_2),V_a2_2),V_a1_2)) ) ).

fof(help_c__COMBK__1,axiom,
    ! [V_Q,V_P,T_b,T_a] : hAPP(c_COMBK(T_a,T_b,V_P),V_Q) = V_P ).

fof(fact_fold__graph_H_Ointros_I1_J,axiom,
    ! [V_z_2,V_f_2,T_b,T_a] : c_Nitpick_Ofold__graph_H(T_a,T_b,V_f_2,V_z_2,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_z_2) ).

fof(arity_fun__Lattices_Osemilattice__inf,axiom,
    ! [T_2,T_1] :
      ( class_Lattices_Olattice(T_1)
     => class_Lattices_Osemilattice__inf(tc_fun(T_2,T_1)) ) ).

fof(arity_fun__Complete__Lattice_Ocomplete__lattice,axiom,
    ! [T_2,T_1] :
      ( class_Complete__Lattice_Ocomplete__lattice(tc_fun(T_2,T_1))
     <= class_Complete__Lattice_Ocomplete__lattice(T_1) ) ).

fof(fact_converse__UNION,axiom,
    ! [V_r_2,V_S_2,T_c,T_a,T_b] : hAPP(c_Relation_Oconverse(T_b,T_a),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool)),V_S_2),V_r_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),V_S_2),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),T_c),c_Relation_Oconverse(T_b,T_a)),V_r_2)) ).

fof(help_c__COMBS__1,axiom,
    ! [V_R_2,V_Q_2,V_P_2,T_a,T_c,T_b] : hAPP(hAPP(hAPP(c_COMBS(T_b,T_c,T_a),V_P_2),V_Q_2),V_R_2) = hAPP(hAPP(V_P_2,V_R_2),hAPP(V_Q_2,V_R_2)) ).

fof(fact_inf_Ocommute,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),V_a) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b) ) ).

fof(fact_Image__singleton__iff,axiom,
    ! [V_a_2,V_r_2,T_b,V_b_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(c_Relation_OImage(T_b,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))))))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_a_2),V_b_2)),V_r_2)) ) ).

fof(fact_emptyE,axiom,
    ! [V_a_2,T_a] : ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(fact_UN__equiv__class2,axiom,
    ! [V_a2_2,V_a1_2,V_f_2,T_c,V_r2_2,V_A2_2,T_b,V_r1_2,V_A1_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A1_2,V_r1_2)
     => ( c_Equiv__Relations_Oequiv(T_b,V_A2_2,V_r2_2)
       => ( c_Equiv__Relations_Ocongruent2(T_a,T_b,tc_fun(T_c,tc_HOL_Obool),V_r1_2,V_r2_2,V_f_2)
         => ( hBOOL(hAPP(hAPP(c_member(T_a),V_a1_2),V_A1_2))
           => ( hBOOL(hAPP(hAPP(c_member(T_b),V_a2_2),V_A2_2))
             => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_c,tc_HOL_Obool)),hAPP(c_Relation_OImage(T_a,T_a,V_r1_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a1_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool)),tc_fun(T_c,tc_HOL_Obool),T_a),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_c,tc_HOL_Obool)),hAPP(c_Relation_OImage(T_b,T_b,V_r2_2),hAPP(hAPP(c_Set_Oinsert(T_b),V_a2_2),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool)))))),V_f_2)) = hAPP(hAPP(V_f_2,V_a1_2),V_a2_2) ) ) ) ) ) ).

fof(fact_insert__absorb2,axiom,
    ! [V_A_2,V_x_2,T_a] : hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2) = hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)) ).

fof(fact_Pi__eq__empty,axiom,
    ! [V_B_2,V_A_2,T_b,T_a] :
      ( c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2) = c_Orderings_Obot__class_Obot(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool))
    <=> ? [B_x] :
          ( hAPP(V_B_2,B_x) = c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))
          & hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_converse__rtrancl__induct2,axiom,
    ! [V_P_2,V_r_2,V_by_2,V_bx_2,V_ay_2,V_ax_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_ax_2),V_ay_2)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
     => ( hBOOL(hAPP(hAPP(V_P_2,V_bx_2),V_by_2))
       => ( ! [B_a,B_b,B_aa,B_ba] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_a),B_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba))),V_r_2))
             => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_prod(T_a,T_b),tc_prod(T_a,T_b))),hAPP(hAPP(c_Product__Type_OPair(tc_prod(T_a,T_b),tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),B_aa),B_ba)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_bx_2),V_by_2))),c_Transitive__Closure_Ortrancl(tc_prod(T_a,T_b),V_r_2)))
               => ( hBOOL(hAPP(hAPP(V_P_2,B_aa),B_ba))
                 => hBOOL(hAPP(hAPP(V_P_2,B_a),B_b)) ) ) )
         => hBOOL(hAPP(hAPP(V_P_2,V_ax_2),V_ay_2)) ) ) ) ).

fof(fact_Id__on__iff,axiom,
    ! [V_A_2,V_y_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
        & V_y_2 = V_x_2 )
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Relation_OId__on(T_a,V_A_2))) ) ).

fof(fact_equiv__class__eq__iff,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
     => ( ( hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_y_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
          & hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
          & hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2)) )
      <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) ) ) ).

fof(fact_inf__absorb2,axiom,
    ! [V_x,V_y,T_a] :
      ( ( V_y = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y)
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_y,V_x) )
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_Domain__converse,axiom,
    ! [V_r_2,T_b,T_a] : c_Relation_ORange(T_b,T_a,V_r_2) = c_Relation_ODomain(T_a,T_b,hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2)) ).

fof(fact_trancl__range,axiom,
    ! [V_r_2,T_a] : c_Relation_ORange(T_a,T_a,c_Transitive__Closure_Otrancl(T_a,V_r_2)) = c_Relation_ORange(T_a,T_a,V_r_2) ).

fof(fact_acc__downward,axiom,
    ! [V_a_2,V_r_2,V_b_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Wellfounded_Oacc(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),V_r_2)) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_extensional__funcset__arb,axiom,
    ! [V_x_2,V_T_2,V_S_2,V_f_2,T_b,T_a] :
      ( ( hAPP(V_f_2,V_x_2) = c_HOL_Oundefined(T_b)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_S_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional__funcset(T_a,T_b,V_S_2,V_T_2))) ) ).

fof(fact_INTER__UNIV__conv_I2_J,axiom,
    ! [V_B_2,V_A_2,T_a,T_b] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
         => c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) = hAPP(V_B_2,B_x) )
    <=> c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ) ).

fof(fact_IntD1,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_rtrancl__into__trancl1,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_single__valued__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Osingle__valued(T_a,T_a,c_Relation_OId__on(T_a,V_A_2)) ).

fof(help_c__COMBC__1,axiom,
    ! [V_R_2,V_Q_2,V_P_2,T_a,T_c,T_b] : hAPP(hAPP(V_P_2,V_R_2),V_Q_2) = hAPP(hAPP(hAPP(c_COMBC(T_b,T_c,T_a),V_P_2),V_Q_2),V_R_2) ).

fof(fact_INF1__iff,axiom,
    ! [V_b_2,V_B_2,V_A_2,T_b,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(V_B_2,B_x),V_b_2)) )
    <=> hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2)) ) ).

fof(fact_inf__top__left,axiom,
    ! [V_x,T_a] :
      ( class_Lattices_Obounded__lattice__top(T_a)
     => V_x = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),c_Orderings_Otop__class_Otop(T_a)),V_x) ) ).

fof(fact_inf2D2,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2))
     => hBOOL(hAPP(hAPP(V_B_2,V_x_2),V_y_2)) ) ).

fof(fact_minus__apply,axiom,
    ! [V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hAPP(hAPP(c_Groups_Ominus__class_Ominus(T_a),hAPP(V_A_2,V_x_2)),hAPP(V_B_2,V_x_2)) = hAPP(hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,T_a)),V_A_2),V_B_2),V_x_2)
     <= class_Groups_Ominus(T_a) ) ).

fof(fact_Domain__rtrancl,axiom,
    ! [V_R_2,T_a] : c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) = c_Relation_ODomain(T_a,T_a,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) ).

fof(fact_converse__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_OId__on(T_a,V_A_2) = hAPP(c_Relation_Oconverse(T_a,T_a),c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_trancl__empty,axiom,
    ! [T_a] : c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = c_Transitive__Closure_Otrancl(T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool))) ).

fof(fact_Range__rtrancl,axiom,
    ! [V_R_2,T_a] : c_Relation_ORange(T_a,T_a,c_Transitive__Closure_Ortrancl(T_a,V_R_2)) = c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_Pi__I,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x))) )
     => hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2))) ) ).

fof(fact_Int__insert__right__if0,axiom,
    ! [V_B_2,V_A_2,V_a_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)) ) ).

fof(fact_UN__extend__simps_I4_J,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_b,T_a] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool))),V_A_2)),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) ).

fof(fact_restrict__def,axiom,
    ! [V_f_2,T_b,V_A_2,V_x_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2) = hAPP(V_f_2,V_x_2) )
      & ( hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2) = c_HOL_Oundefined(T_b)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_pred__equals__eq,axiom,
    ! [V_S_2,V_R_2,T_a] :
      ( V_S_2 = V_R_2
    <=> hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2) = hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2) ) ).

fof(fact_inf__Int__eq2,axiom,
    ! [V_y_2,V_x_2,V_S_2,V_R_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_x_2),V_y_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),V_R_2),V_S_2)))
    <=> hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_R_2)),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_S_2)),V_x_2),V_y_2)) ) ).

fof(fact_cut__def,axiom,
    ! [V_f_2,T_b,V_r_2,V_x_2,V_y_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),V_r_2))
       => hAPP(V_f_2,V_y_2) = hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_x_2),V_y_2) )
      & ( hAPP(hAPP(hAPP(hAPP(c_Recdef_Ocut(T_a,T_b),V_f_2),V_r_2),V_x_2),V_y_2) = c_HOL_Oundefined(T_b)
       <= ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_y_2),V_x_2)),V_r_2)) ) ) ).

fof(fact_linear__alt,axiom,
    ? [B_L] : hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),B_L),c_Arrow__Order__Mirabelle_OLin)) ).

fof(fact_equalityD1,axiom,
    ! [T_a,V_B_2,V_A_2] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     <= V_A_2 = V_B_2 ) ).

fof(fact_Domain__iff,axiom,
    ! [V_r_2,T_b,V_a_2,T_a] :
      ( ? [B_y] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),B_y)),V_r_2))
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_Image__iff,axiom,
    ! [V_A_2,V_r_2,T_b,V_b_2,T_a] :
      ( ? [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_x),V_b_2)),V_r_2))
          & hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(c_Relation_OImage(T_b,T_a,V_r_2),V_A_2))) ) ).

fof(fact_tranclD2,axiom,
    ! [V_R_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
     => ? [B_z] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_y_2)),V_R_2))
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_z)),c_Transitive__Closure_Ortrancl(T_a,V_R_2))) ) ) ).

fof(conj_1,conjecture,
    hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),c_COMBK(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool),tc_Arrow__Order__Mirabelle_Oindi,v_L)),c_Arrow__Order__Mirabelle_OProf)) ).

fof(fact_rtrancl__subset__rtrancl,axiom,
    ! [V_s_2,V_r_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),c_Transitive__Closure_Ortrancl(T_a,V_r_2),c_Transitive__Closure_Ortrancl(T_a,V_s_2))
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,c_Transitive__Closure_Ortrancl(T_a,V_s_2)) ) ).

fof(fact_insert__Diff1,axiom,
    ! [V_A_2,V_B_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
     => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)),V_B_2) ) ).

fof(fact_subset__trans,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_C_2) )
     <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) ) ).

fof(fact_double__diff,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_C_2)
       => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_B_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_A_2)) = V_A_2 ) ) ).

fof(fact_RangeP__Range__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( c_Predicate_ORangeP(T_a,T_b,hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_COMBC(T_b,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_prod(T_a,T_b)),tc_fun(T_b,tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool)),T_a),hAPP(c_COMBB(tc_prod(T_a,T_b),tc_fun(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),tc_HOL_Obool),T_b),c_member(tc_prod(T_a,T_b)))),c_Product__Type_OPair(T_a,T_b)))),V_r_2),V_x_2)
    <=> hBOOL(hAPP(hAPP(c_member(T_b),V_x_2),c_Relation_ORange(T_a,T_b,V_r_2))) ) ).

fof(fact_not__acc__down,axiom,
    ! [V_R_2,V_x_2,T_a] :
      ( ~ ! [B_z] :
            ( hBOOL(hAPP(hAPP(c_member(T_a),B_z),c_Wellfounded_Oacc(T_a,V_R_2)))
           <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_x_2)),V_R_2)) )
     <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Wellfounded_Oacc(T_a,V_R_2))) ) ).

fof(fact_inf__top__right,axiom,
    ! [V_x,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),c_Orderings_Otop__class_Otop(T_a)) = V_x
     <= class_Lattices_Obounded__lattice__top(T_a) ) ).

fof(fact_empty__not__insert,axiom,
    ! [V_A_2,V_a_2,T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_A_2) ).

fof(fact_Id__on__empty,axiom,
    ! [T_a] : c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = c_Relation_OId__on(T_a,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_Domain__empty,axiom,
    ! [T_b,T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = c_Relation_ODomain(T_a,T_b,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool))) ).

fof(fact_ImageE,axiom,
    ! [V_A_2,V_r_2,T_b,V_b_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(c_Relation_OImage(T_b,T_a,V_r_2),V_A_2)))
     => ~ ! [B_x] :
            ( ~ hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
           <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),B_x),V_b_2)),V_r_2)) ) ) ).

fof(fact_compose__eq,axiom,
    ! [V_f_2,V_g_2,T_b,T_c,V_A_2,V_x_2,T_a] :
      ( hAPP(c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_g_2,V_f_2),V_x_2) = hAPP(V_g_2,hAPP(V_f_2,V_x_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ).

fof(arity_HOL__Obool__Orderings_Otop,axiom,
    class_Orderings_Otop(tc_HOL_Obool) ).

fof(fact_accp_Osimps,axiom,
    ! [V_a_2,V_r_2,T_a] :
      ( c_Wellfounded_Oaccp(T_a,V_r_2,V_a_2)
    <=> ! [B_x] :
          ( c_Wellfounded_Oaccp(T_a,V_r_2,B_x)
         <= hBOOL(hAPP(hAPP(V_r_2,B_x),V_a_2)) ) ) ).

fof(fact_UN__UN__flatten,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_c,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_c,tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),T_c),c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool))),V_B_2)),V_C_2)) ).

fof(arity_fun__Groups_Ominus,axiom,
    ! [T_2,T_1] :
      ( class_Groups_Ominus(tc_fun(T_2,T_1))
     <= class_Groups_Ominus(T_1) ) ).

fof(fact_Range__empty,axiom,
    ! [T_a,T_b] : c_Relation_ORange(T_b,T_a,c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_eq__equiv__class__iff,axiom,
    ! [V_y_2,V_x_2,V_r_2,V_A_2,T_a] :
      ( c_Equiv__Relations_Oequiv(T_a,V_A_2,V_r_2)
     => ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2))
         => ( hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = hAPP(c_Relation_OImage(T_a,T_a,V_r_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_y_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
          <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),V_r_2)) ) )
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_INF1__I,axiom,
    ! [T_b,V_b_2,V_B_2,V_A_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(V_B_2,B_x),V_b_2)) )
     => hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2)) ) ).

fof(fact_bot__fun__def,axiom,
    ! [V_x_2,T_b,T_a] :
      ( class_Orderings_Obot(T_a)
     => c_Orderings_Obot__class_Obot(T_a) = hAPP(c_Orderings_Obot__class_Obot(tc_fun(T_b,T_a)),V_x_2) ) ).

fof(fact_INF2__I,axiom,
    ! [T_c,T_b,V_c_2,V_b_2,V_B_2,V_A_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(hAPP(V_B_2,B_x),V_b_2),V_c_2))
         <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
     => hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2)) ) ).

fof(fact_eqelem__imp__iff,axiom,
    ! [V_A_2,T_a,V_y_2,V_x_2] :
      ( V_y_2 = V_x_2
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_y_2),V_A_2))
      <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_Nitpick_Orefl_H__def,axiom,
    ! [V_r_2,T_a] :
      ( ! [B_x] : hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)),V_r_2))
    <=> c_Nitpick_Orefl_H(T_a,V_r_2) ) ).

fof(fact_rtrancl__eq__or__trancl,axiom,
    ! [V_R_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2)))
    <=> ( V_y_2 = V_x_2
        | ( V_y_2 != V_x_2
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2))) ) ) ) ).

fof(fact_ord__le__eq__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= V_c = V_b )
       <= c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_b) )
     <= class_Orderings_Oord(T_a) ) ).

fof(arity_fun__Orderings_Opreorder,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Opreorder(tc_fun(T_2,T_1))
     <= class_Orderings_Opreorder(T_1) ) ).

fof(fact_INF__leI,axiom,
    ! [V_M_2,V_A_2,V_i_2,T_a,T_b] :
      ( class_Complete__Lattice_Ocomplete__lattice(T_b)
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_i_2),V_A_2))
       => c_Orderings_Oord__class_Oless__eq(T_b,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,T_b),V_A_2),V_M_2),hAPP(V_M_2,V_i_2)) ) ) ).

fof(fact_above__Lin,axiom,
    ! [V_La_2,V_y_2,V_x_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Oabove(V_La_2,V_x_2,V_y_2)),c_Arrow__Order__Mirabelle_OLin))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin)) )
     <= V_x_2 != V_y_2 ) ).

fof(fact_order__refl,axiom,
    ! [V_x,T_a] :
      ( class_Orderings_Opreorder(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,V_x,V_x) ) ).

fof(fact_INT__absorb,axiom,
    ! [V_A_2,T_b,V_I_2,V_k_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_k_2),V_I_2))
     => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_I_2),V_A_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),hAPP(V_A_2,V_k_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_I_2),V_A_2)) ) ).

fof(fact_trancl__rtrancl__trancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2))) ) ) ).

fof(fact_UN__extend__simps_I9_J,axiom,
    ! [V_C_2,V_B_2,T_c,V_A_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_HOL_Obool),tc_fun(tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool))),V_B_2)),V_C_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_c,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) ).

fof(fact_Pi__empty,axiom,
    ! [V_B_2,T_b,T_a] : c_Orderings_Otop__class_Otop(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool)) = c_FuncSet_OPi(T_a,T_b,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_B_2) ).

fof(fact_bot__least,axiom,
    ! [V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,c_Orderings_Obot__class_Obot(T_a),V_x)
     <= class_Orderings_Obot(T_a) ) ).

fof(fact_acc__downwards,axiom,
    ! [V_b_2,V_r_2,V_a_2,T_a] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),c_Wellfounded_Oacc(T_a,V_r_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_a_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_eqset__imp__iff,axiom,
    ! [V_x_2,T_a,V_B_2,V_A_2] :
      ( V_A_2 = V_B_2
     => ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
      <=> hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) ) ) ).

fof(fact_le__inf__iff,axiom,
    ! [V_z_2,V_y_2,V_x_2,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_z_2)
          & c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,V_y_2) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,V_x_2,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y_2),V_z_2)) ) ) ).

fof(help_c__fequal__1,axiom,
    ! [V_y_2,V_x_2] :
      ( V_x_2 = V_y_2
      | ~ hBOOL(hAPP(hAPP(c_fequal,V_x_2),V_y_2)) ) ).

fof(fact_UN__upper,axiom,
    ! [V_B_2,T_b,V_A_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
     => c_Orderings_Oord__class_Oless__eq(tc_fun(T_b,tc_HOL_Obool),hAPP(V_B_2,V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)) ) ).

fof(fact_converseD,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_a),V_b_2),V_a_2)),V_r_2))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),hAPP(c_Relation_Oconverse(T_b,T_a),V_r_2))) ) ).

fof(fact_INF__const,axiom,
    ! [V_M_2,T_a,V_A_2,T_b] :
      ( class_Complete__Lattice_Ocomplete__lattice(T_b)
     => ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != V_A_2
       => V_M_2 = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,T_b),V_A_2),c_COMBK(T_b,T_a,V_M_2)) ) ) ).

fof(fact_le__infI2,axiom,
    ! [V_a,V_x,V_b,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => ( c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_x)
       => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b),V_x) ) ) ).

fof(fact_INF__subset,axiom,
    ! [V_f_2,V_B_2,V_A_2,T_a,T_b] :
      ( ( c_Orderings_Oord__class_Oless__eq(T_b,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,T_b),V_B_2),V_f_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,T_b),V_A_2),V_f_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,V_B_2) )
     <= class_Complete__Lattice_Ocomplete__lattice(T_b) ) ).

fof(fact_Diff__UNIV,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_SUP__UN__eq,axiom,
    ! [V_x_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_COMBC(T_b,tc_fun(T_b,tc_HOL_Obool),tc_HOL_Obool),c_member(T_b))),V_r_2)),V_x_2))
    <=> hBOOL(hAPP(hAPP(c_member(T_b),V_x_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),V_r_2))) ) ).

fof(fact_INF__INT__eq2,axiom,
    ! [V_y_2,V_x_2,V_r_2,T_c,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool)),T_a),hAPP(c_COMBC(T_b,tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_fun(T_c,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_fun(T_c,tc_HOL_Obool)),T_b),c_COMBC(T_c,tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_prod(T_b,T_c)),tc_fun(T_c,tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool)),T_b),hAPP(c_COMBB(tc_prod(T_b,T_c),tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool),T_c),c_member(tc_prod(T_b,T_c)))),c_Product__Type_OPair(T_b,T_c))))),V_r_2)),V_x_2),V_y_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_c)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_x_2),V_y_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),V_r_2))) ) ).

fof(fact_Diff__insert,axiom,
    ! [V_B_2,V_a_2,V_A_2,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) ).

fof(fact_Int__greatest,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_A_2)
     => ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_C_2,V_B_2) ) ) ).

fof(fact_insert__ident,axiom,
    ! [V_B_2,V_A_2,V_x_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
     => ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_B_2))
       => ( hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_B_2) = hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),V_A_2)
        <=> V_B_2 = V_A_2 ) ) ) ).

fof(fact_RangeP_Oequations,axiom,
    ! [V_a2_2,V_r_2,T_b,T_a] :
      ( ? [B_a] : hBOOL(hAPP(hAPP(V_r_2,B_a),V_a2_2))
    <=> c_Predicate_ORangeP(T_a,T_b,V_r_2,V_a2_2) ) ).

fof(fact_UN__simps_I4_J,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a,T_b] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool))),V_A_2)),V_B_2)) ).

fof(fact_INT__extend__simps_I3_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( V_C_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool))),V_B_2) )
      & ( V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Groups_Ominus__class_Ominus(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2)) ) ) ).

fof(fact_Id__on__def,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_prod(T_a,T_a),tc_fun(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),T_a),c_Set_Oinsert(tc_prod(T_a,T_a))),hAPP(hAPP(c_COMBS(T_a,T_a,tc_prod(T_a,T_a)),c_Product__Type_OPair(T_a,T_a)),c_COMBI(T_a)))),c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)))) = c_Relation_OId__on(T_a,V_A_2) ).

fof(fact_Id__onE,axiom,
    ! [V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_c_2),c_Relation_OId__on(T_a,V_A_2)))
     => ~ ! [B_x] :
            ( V_c_2 != hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),B_x)
           <= hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) ) ) ).

fof(fact_extensional__funcset__fun__upd__extends__rangeI,axiom,
    ! [V_x_2,V_S_2,V_f_2,T_b,V_T_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_T_2))
     => ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_a)),c_Fun_Ofun__upd(T_b,T_a,V_f_2,V_x_2,V_a_2)),c_FuncSet_Oextensional__funcset(T_b,T_a,hAPP(hAPP(c_Set_Oinsert(T_b),V_x_2),V_S_2),V_T_2)))
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_a)),V_f_2),c_FuncSet_Oextensional__funcset(T_b,T_a,V_S_2,hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_T_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))))) ) ) ).

fof(fact_inf_Oassoc,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)),V_c) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_b),V_c))
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_restrictI,axiom,
    ! [V_B_2,V_f_2,T_b,V_A_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2)),c_FuncSet_OPi(T_a,T_b,V_A_2,V_B_2)))
     <= ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
         => hBOOL(hAPP(hAPP(c_member(T_b),hAPP(V_f_2,B_x)),hAPP(V_B_2,B_x))) ) ) ).

fof(fact_INT__D,axiom,
    ! [V_a_2,V_B_2,V_A_2,T_b,V_b_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)))
     => ( hBOOL(hAPP(hAPP(c_member(T_b),V_a_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(V_B_2,V_a_2))) ) ) ).

fof(fact_conversep__conversep,axiom,
    ! [V_r_2,T_a,T_b] : V_r_2 = c_Predicate_Oconversep(T_b,T_a,c_Predicate_Oconversep(T_a,T_b,V_r_2)) ).

fof(fact_accp_Oequations,axiom,
    ! [V_a_2,V_r_2,T_a] :
      ( c_Wellfounded_Oaccp(T_a,V_r_2,V_a_2)
    <=> ! [B_x] :
          ( c_Wellfounded_Oaccp(T_a,V_r_2,B_x)
         <= hBOOL(hAPP(hAPP(V_r_2,B_x),V_a_2)) ) ) ).

fof(help_c__COMBI__1,axiom,
    ! [V_P,T_a] : hAPP(c_COMBI(T_a),V_P) = V_P ).

fof(fact_INFI__apply,axiom,
    ! [V_x_2,V_f_2,V_A_2,T_c,T_b,T_a] :
      ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,T_a),V_A_2),hAPP(hAPP(c_COMBC(T_b,T_c,T_a),V_f_2),V_x_2)) = hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_c,T_a)),V_A_2),V_f_2),V_x_2)
     <= class_Complete__Lattice_Ocomplete__lattice(T_a) ) ).

fof(fact_INT__insert__distrib,axiom,
    ! [V_B_2,V_a_2,T_b,V_A_2,V_u_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_u_2),V_A_2))
     => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Set_Oinsert(T_b),V_a_2)),V_B_2)) = hAPP(hAPP(c_Set_Oinsert(T_b),V_a_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2)) ) ).

fof(fact_INT__extend__simps_I9_J,axiom,
    ! [V_C_2,V_B_2,T_c,V_A_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_c,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_HOL_Obool),tc_fun(tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(T_a,tc_HOL_Obool))),V_B_2)),V_C_2)) ).

fof(fact_UN__constant,axiom,
    ! [V_c_2,T_b,T_a,V_A_2] :
      ( ( hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_c_2)) = V_c_2
       <= c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != V_A_2 )
      & ( c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_c_2))
       <= V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ) ).

fof(fact_the__elem__eq,axiom,
    ! [V_x_2,T_a] : c_Set_Othe__elem(T_a,hAPP(hAPP(c_Set_Oinsert(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = V_x_2 ).

fof(fact_dictator__def,axiom,
    ! [V_i_2,V_F_2] :
      ( ! [B_x] :
          ( hAPP(B_x,V_i_2) = hAPP(V_F_2,B_x)
         <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_Arrow__Order__Mirabelle_Oindi,tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool))),B_x),c_Arrow__Order__Mirabelle_OProf)) )
    <=> c_Arrow__Order__Mirabelle_Odictator(V_F_2,V_i_2) ) ).

fof(fact_bot__empty__eq,axiom,
    ! [V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
    <=> hBOOL(hAPP(c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_x_2)) ) ).

fof(fact_trancl__converseD,axiom,
    ! [V_r_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),hAPP(c_Relation_Oconverse(T_a,T_a),c_Transitive__Closure_Otrancl(T_a,V_r_2))))
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)))) ) ).

fof(fact_inf__left__commute,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) ) ).

fof(arity_HOL__Obool__Lattices_Obounded__lattice__bot,axiom,
    class_Lattices_Obounded__lattice__bot(tc_HOL_Obool) ).

fof(fact_Id__compose,axiom,
    ! [V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( V_f_2 = c_FuncSet_Ocompose(T_a,T_b,T_b,V_A_2,c_FuncSet_Orestrict(T_b,T_b,c_COMBI(T_b),V_B_2),V_f_2)
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_doubleton__eq__iff,axiom,
    ! [V_d_2,V_c_2,V_b_2,V_a_2,T_a] :
      ( hAPP(hAPP(c_Set_Oinsert(T_a),V_c_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_d_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)))) = hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_b_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))
    <=> ( ( V_c_2 = V_b_2
          & V_a_2 = V_d_2 )
        | ( V_b_2 = V_d_2
          & V_c_2 = V_a_2 ) ) ) ).

fof(fact_fun__upd__def,axiom,
    ! [V_b_2,V_f_2,T_b,T_a,V_a_2,V_x_2] :
      ( ( V_x_2 != V_a_2
       => hAPP(V_f_2,V_x_2) = hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_a_2,V_b_2),V_x_2) )
      & ( V_a_2 = V_x_2
       => V_b_2 = hAPP(c_Fun_Ofun__upd(T_a,T_b,V_f_2,V_a_2,V_b_2),V_x_2) ) ) ).

fof(fact_Int__UN__distrib2,axiom,
    ! [V_B_2,V_J_2,T_c,V_A_2,V_I_2,T_b,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),V_A_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool)),V_J_2),V_B_2)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_I_2),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_a,tc_HOL_Obool),T_b),hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_c,tc_fun(T_a,tc_HOL_Obool)),V_J_2)),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),tc_fun(tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool)),tc_fun(T_c,tc_fun(T_a,tc_HOL_Obool))),T_b),c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool),T_c)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool))),V_A_2))),V_B_2))) ).

fof(fact_eq__mem__trans,axiom,
    ! [V_A_2,T_a,V_b_2,V_a_2] :
      ( ( hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),V_A_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) )
     <= V_a_2 = V_b_2 ) ).

fof(fact_UN__simps_I6_J,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool))),V_A_2)),V_B_2)) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) ).

fof(fact_extensional__arb,axiom,
    ! [V_x_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( c_HOL_Oundefined(T_b) = hAPP(V_f_2,V_x_2)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ) ).

fof(fact_rtrancl__converse,axiom,
    ! [V_r_2,T_a] : c_Transitive__Closure_Ortrancl(T_a,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)) = hAPP(c_Relation_Oconverse(T_a,T_a),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ).

fof(fact_DiffI,axiom,
    ! [V_B_2,V_A_2,V_c_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_A_2))
     => ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),V_B_2))
       => hBOOL(hAPP(hAPP(c_member(T_a),V_c_2),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ) ).

fof(arity_fun__Orderings_Obot,axiom,
    ! [T_2,T_1] :
      ( class_Orderings_Obot(T_1)
     => class_Orderings_Obot(tc_fun(T_2,T_1)) ) ).

fof(fact_notin__Lin__iff,axiom,
    ! [V_y_2,V_x_2,V_La_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin))
     => ( V_y_2 != V_x_2
       => ( hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_y_2),V_x_2)),V_La_2))
        <=> ~ hBOOL(hAPP(hAPP(c_member(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt)),hAPP(hAPP(c_Product__Type_OPair(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),V_x_2),V_y_2)),V_La_2)) ) ) ) ).

fof(fact_rtrancl_Ortrancl__into__rtrancl,axiom,
    ! [V_c_2,V_r_2,V_b_2,V_a_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
     => ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_b_2),V_c_2)),V_r_2))
       => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_c_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ) ).

fof(fact_mktop__Lin,axiom,
    ! [V_x_2,V_La_2] :
      ( hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),c_Arrow__Order__Mirabelle_Omktop(V_La_2,V_x_2)),c_Arrow__Order__Mirabelle_OLin))
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(tc_prod(tc_Arrow__Order__Mirabelle_Oalt,tc_Arrow__Order__Mirabelle_Oalt),tc_HOL_Obool)),V_La_2),c_Arrow__Order__Mirabelle_OLin)) ) ).

fof(fact_acc_Osimps,axiom,
    ! [V_r_2,V_a_2,T_a] :
      ( ! [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),c_Wellfounded_Oacc(T_a,V_r_2)))
         <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_x),V_a_2)),V_r_2)) )
    <=> hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Wellfounded_Oacc(T_a,V_r_2))) ) ).

fof(fact_inf__sup__aci_I3_J,axiom,
    ! [V_z,V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),V_z)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_y),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_z)) ) ).

fof(arity_HOL__Obool__Groups_Ominus,axiom,
    class_Groups_Ominus(tc_HOL_Obool) ).

fof(fact_UNIV__not__empty,axiom,
    ! [T_a] : c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) != c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) ).

fof(fact_funcset__id,axiom,
    ! [V_A_2,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_a)),c_COMBI(T_a)),c_FuncSet_OPi(T_a,T_a,V_A_2,c_COMBK(tc_fun(T_a,tc_HOL_Obool),T_a,V_A_2)))) ).

fof(fact_inv__imagep__def,axiom,
    ! [V_y_2,V_x_2,V_f_2,V_r_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_r_2,hAPP(V_f_2,V_x_2)),hAPP(V_f_2,V_y_2)))
    <=> c_Predicate_Oinv__imagep(T_a,T_b,V_r_2,V_f_2,V_x_2,V_y_2) ) ).

fof(fact_inf_Oleft__idem,axiom,
    ! [V_b,V_a,T_a] :
      ( class_Lattices_Osemilattice__inf(T_a)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_a),V_b)) ) ).

fof(fact_bot__apply,axiom,
    ! [V_x_2,T_b,T_a] :
      ( class_Orderings_Obot(T_a)
     => hAPP(c_Orderings_Obot__class_Obot(tc_fun(T_b,T_a)),V_x_2) = c_Orderings_Obot__class_Obot(T_a) ) ).

fof(help_c__fNot__2,axiom,
    ! [V_P_2] :
      ( ~ ~ hBOOL(V_P_2)
      | hBOOL(hAPP(c_fNot,V_P_2)) ) ).

fof(fact_DomainE,axiom,
    ! [V_r_2,T_b,V_a_2,T_a] :
      ( ~ ! [B_y] : ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),B_y)),V_r_2))
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),c_Relation_ODomain(T_a,T_b,V_r_2))) ) ).

fof(fact_inf__le1,axiom,
    ! [V_y,V_x,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_x)
     <= class_Lattices_Osemilattice__inf(T_a) ) ).

fof(fact_SUP1__E,axiom,
    ! [V_b_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2))
     => ~ ! [B_x] :
            ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
           => ~ hBOOL(hAPP(hAPP(V_B_2,B_x),V_b_2)) ) ) ).

fof(fact_rtranclE,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_a] :
      ( ( ~ ! [B_y] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),B_y)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)))
             => ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_y),V_b_2)),V_r_2)) )
       <= V_a_2 != V_b_2 )
     <= hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_a_2),V_b_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_compose__assoc,axiom,
    ! [V_D_2,V_h_2,T_d,V_C_2,V_g_2,T_c,V_B_2,V_A_2,V_f_2,T_b,T_a] :
      ( ( ( hBOOL(hAPP(hAPP(c_member(tc_fun(T_c,T_d)),V_h_2),c_FuncSet_OPi(T_c,T_d,V_C_2,c_COMBK(tc_fun(T_d,tc_HOL_Obool),T_c,V_D_2))))
         => c_FuncSet_Ocompose(T_a,T_b,T_d,V_A_2,c_FuncSet_Ocompose(T_b,T_c,T_d,V_B_2,V_h_2,V_g_2),V_f_2) = c_FuncSet_Ocompose(T_a,T_c,T_d,V_A_2,V_h_2,c_FuncSet_Ocompose(T_a,T_b,T_c,V_A_2,V_g_2,V_f_2)) )
       <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_b,T_c)),V_g_2),c_FuncSet_OPi(T_b,T_c,V_B_2,c_COMBK(tc_fun(T_c,tc_HOL_Obool),T_b,V_C_2)))) )
     <= hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),V_f_2),c_FuncSet_OPi(T_a,T_b,V_A_2,c_COMBK(tc_fun(T_b,tc_HOL_Obool),T_a,V_B_2)))) ) ).

fof(fact_SUP__UN__eq2,axiom,
    ! [V_y_2,V_x_2,V_r_2,T_c,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool)),T_a),hAPP(c_COMBC(T_b,tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_fun(T_c,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool)),tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_fun(T_c,tc_HOL_Obool)),T_b),c_COMBC(T_c,tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_c,tc_prod(T_b,T_c)),tc_fun(T_c,tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool)),T_b),hAPP(c_COMBB(tc_prod(T_b,T_c),tc_fun(tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool),tc_HOL_Obool),T_c),c_member(tc_prod(T_b,T_c)))),c_Product__Type_OPair(T_b,T_c))))),V_r_2)),V_x_2),V_y_2))
    <=> hBOOL(hAPP(hAPP(c_member(tc_prod(T_b,T_c)),hAPP(hAPP(c_Product__Type_OPair(T_b,T_c),V_x_2),V_y_2)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(tc_prod(T_b,T_c),tc_HOL_Obool)),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))),V_r_2))) ) ).

fof(fact_UN__extend__simps_I6_J,axiom,
    ! [V_B_2,V_A_2,V_C_2,T_b,T_a] : hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_b,tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_a,tc_HOL_Obool),tc_fun(tc_fun(T_a,tc_HOL_Obool),tc_fun(T_a,tc_HOL_Obool)),T_b),c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool))),V_A_2)),V_B_2)) ).

fof(fact_SUP1__iff,axiom,
    ! [V_b_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2))
    <=> ? [B_x] :
          ( hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2))
          & hBOOL(hAPP(hAPP(V_B_2,B_x),V_b_2)) ) ) ).

fof(fact_Int__UNIV__right,axiom,
    ! [V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))) = V_A_2 ).

fof(fact_subset__UNIV,axiom,
    ! [V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_A_2,c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool))) ).

fof(fact_INT__empty,axiom,
    ! [V_B_2,T_a,T_b] : c_Orderings_Otop__class_Otop(tc_fun(T_a,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_b,tc_fun(T_a,tc_HOL_Obool)),c_Orderings_Obot__class_Obot(tc_fun(T_b,tc_HOL_Obool))),V_B_2) ).

fof(fact_inf__sup__ord_I1_J,axiom,
    ! [V_y,V_x,T_a] :
      ( class_Lattices_Olattice(T_a)
     => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(T_a),V_x),V_y),V_x) ) ).

fof(fact_converse__INTER,axiom,
    ! [V_r_2,V_S_2,T_c,T_a,T_b] : hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool)),V_S_2),hAPP(hAPP(c_COMBB(tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool),tc_fun(tc_prod(T_a,T_b),tc_HOL_Obool),T_c),c_Relation_Oconverse(T_b,T_a)),V_r_2)) = hAPP(c_Relation_Oconverse(T_b,T_a),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_c,tc_fun(tc_prod(T_b,T_a),tc_HOL_Obool)),V_S_2),V_r_2)) ).

fof(fact_equals0D,axiom,
    ! [V_a_2,T_a,V_A_2] :
      ( ~ hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2))
     <= V_A_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

fof(fact_restrict__apply,axiom,
    ! [V_f_2,T_b,V_A_2,V_x_2,T_a] :
      ( ( c_HOL_Oundefined(T_b) = hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2)
       <= ~ hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2)) )
      & ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),V_A_2))
       => hAPP(c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2),V_x_2) = hAPP(V_f_2,V_x_2) ) ) ).

fof(fact_Diff__triv,axiom,
    ! [V_B_2,V_A_2,T_a] :
      ( V_A_2 = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)
     <= c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ) ).

fof(fact_singletonE,axiom,
    ! [V_a_2,V_b_2,T_a] :
      ( V_a_2 = V_b_2
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))))) ) ).

fof(fact_SUP__le__iff,axiom,
    ! [V_u_2,V_M_2,V_A_2,T_b,T_a] :
      ( ( ! [B_x] :
            ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
           => c_Orderings_Oord__class_Oless__eq(T_a,hAPP(V_M_2,B_x),V_u_2) )
      <=> c_Orderings_Oord__class_Oless__eq(T_a,hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,T_a),V_A_2),V_M_2),V_u_2) )
     <= class_Complete__Lattice_Ocomplete__lattice(T_a) ) ).

fof(fact_INT__simps_I2_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) = V_C_2
       => c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2)),V_B_2)) )
      & ( V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool),T_a),hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2)),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),V_A_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_B_2)) ) ) ).

fof(fact_Domain__insert,axiom,
    ! [V_r_2,V_b_2,V_a_2,T_b,T_a] : hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),c_Relation_ODomain(T_a,T_b,V_r_2)) = c_Relation_ODomain(T_a,T_b,hAPP(hAPP(c_Set_Oinsert(tc_prod(T_a,T_b)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_b),V_a_2),V_b_2)),V_r_2)) ).

fof(fact_Int__lower2,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_B_2) ).

fof(fact_adm__wf__def,axiom,
    ! [V_F_2,V_R_2,T_b,T_a] :
      ( ! [B_f,B_g,B_x] :
          ( hAPP(hAPP(V_F_2,B_g),B_x) = hAPP(hAPP(V_F_2,B_f),B_x)
         <= ! [B_z] :
              ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),B_x)),V_R_2))
             => hAPP(B_g,B_z) = hAPP(B_f,B_z) ) )
    <=> c_Recdef_Oadm__wf(T_a,T_b,V_R_2,V_F_2) ) ).

fof(fact_tranclD,axiom,
    ! [V_R_2,V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_y_2)),c_Transitive__Closure_Otrancl(T_a,V_R_2)))
     => ? [B_z] :
          ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),B_z)),V_R_2))
          & hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),B_z),V_y_2)),c_Transitive__Closure_Ortrancl(T_a,V_R_2))) ) ) ).

fof(fact_Int__lower1,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_A_2) ).

fof(fact_total__on__converse,axiom,
    ! [V_r_2,V_A_2,T_a] :
      ( c_Relation_Ototal__on(T_a,V_A_2,hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2))
    <=> c_Relation_Ototal__on(T_a,V_A_2,V_r_2) ) ).

fof(fact_INT__simps_I1_J,axiom,
    ! [V_B_2,V_A_2,T_b,T_a,V_C_2] :
      ( ( V_C_2 != c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),V_A_2)),V_B_2) )
      & ( V_C_2 = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
       => c_Orderings_Otop__class_Otop(tc_fun(T_b,tc_HOL_Obool)) = hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_C_2),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),hAPP(hAPP(c_COMBB(tc_fun(T_b,tc_HOL_Obool),tc_fun(tc_fun(T_b,tc_HOL_Obool),tc_fun(T_b,tc_HOL_Obool)),T_a),c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_b,tc_HOL_Obool))),V_A_2)),V_B_2)) ) ) ).

fof(fact_SUP2__iff,axiom,
    ! [V_c_2,V_b_2,V_B_2,V_A_2,T_c,T_b,T_a] :
      ( ? [B_x] :
          ( hBOOL(hAPP(hAPP(hAPP(V_B_2,B_x),V_b_2),V_c_2))
          & hBOOL(hAPP(hAPP(c_member(T_a),B_x),V_A_2)) )
    <=> hBOOL(hAPP(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_a,tc_fun(T_b,tc_fun(T_c,tc_HOL_Obool))),V_A_2),V_B_2),V_b_2),V_c_2)) ) ).

fof(arity_HOL__Obool__Orderings_Oord,axiom,
    class_Orderings_Oord(tc_HOL_Obool) ).

fof(fact_acyclic__subset,axiom,
    ! [V_r_2,V_s_2,T_a] :
      ( c_Wellfounded_Oacyclic(T_a,V_s_2)
     => ( c_Wellfounded_Oacyclic(T_a,V_r_2)
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool),V_r_2,V_s_2) ) ) ).

fof(fact_r__into__rtrancl,axiom,
    ! [V_r_2,V_p_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),V_r_2))
     => hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),V_p_2),c_Transitive__Closure_Ortrancl(T_a,V_r_2))) ) ).

fof(fact_extensional__funcset__empty__domain,axiom,
    ! [V_T_2,T_b,T_a] : hAPP(hAPP(c_Set_Oinsert(tc_fun(T_a,T_b)),c_COMBK(T_b,T_a,c_HOL_Oundefined(T_b))),c_Orderings_Obot__class_Obot(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool))) = c_FuncSet_Oextensional__funcset(T_a,T_b,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)),V_T_2) ).

fof(fact_irrefl__tranclI,axiom,
    ! [V_x_2,V_r_2,T_a] :
      ( ~ hBOOL(hAPP(hAPP(c_member(tc_prod(T_a,T_a)),hAPP(hAPP(c_Product__Type_OPair(T_a,T_a),V_x_2),V_x_2)),c_Transitive__Closure_Otrancl(T_a,V_r_2)))
     <= c_Orderings_Obot__class_Obot(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(tc_prod(T_a,T_a),tc_HOL_Obool)),hAPP(c_Relation_Oconverse(T_a,T_a),V_r_2)),c_Transitive__Closure_Ortrancl(T_a,V_r_2)) ) ).

fof(fact_restrict__extensional,axiom,
    ! [V_A_2,V_f_2,T_b,T_a] : hBOOL(hAPP(hAPP(c_member(tc_fun(T_a,T_b)),c_FuncSet_Orestrict(T_a,T_b,V_f_2,V_A_2)),c_FuncSet_Oextensional(T_a,T_b,V_A_2))) ).

fof(fact_Int__absorb1,axiom,
    ! [V_A_2,V_B_2,T_a] :
      ( c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_B_2,V_A_2)
     => hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = V_B_2 ) ).

fof(fact_extensional__empty,axiom,
    ! [T_b,T_a] : c_FuncSet_Oextensional(T_a,T_b,c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))) = hAPP(hAPP(c_Set_Oinsert(tc_fun(T_a,T_b)),c_COMBK(T_b,T_a,c_HOL_Oundefined(T_b))),c_Orderings_Obot__class_Obot(tc_fun(tc_fun(T_a,T_b),tc_HOL_Obool))) ).

fof(fact_refl__on__Id__on,axiom,
    ! [V_A_2,T_a] : c_Relation_Orefl__on(T_a,V_A_2,c_Relation_OId__on(T_a,V_A_2)) ).

fof(fact_eq__mem,axiom,
    ! [V_y_2,V_x_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),hAPP(c_fequal,V_y_2)))
    <=> V_y_2 = V_x_2 ) ).

fof(fact_insertI1,axiom,
    ! [V_B_2,V_a_2,T_a] : hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_B_2))) ).

fof(fact_ord__eq__le__trans,axiom,
    ! [V_c,V_b,V_a,T_a] :
      ( ( ( c_Orderings_Oord__class_Oless__eq(T_a,V_a,V_c)
         <= c_Orderings_Oord__class_Oless__eq(T_a,V_b,V_c) )
       <= V_a = V_b )
     <= class_Orderings_Oord(T_a) ) ).

fof(fact_INF1__D,axiom,
    ! [V_a_2,V_b_2,V_B_2,V_A_2,T_b,T_a] :
      ( ( hBOOL(hAPP(hAPP(V_B_2,V_a_2),V_b_2))
       <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) )
     <= hBOOL(hAPP(hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OINFI(T_a,tc_fun(T_b,tc_HOL_Obool)),V_A_2),V_B_2),V_b_2)) ) ).

fof(fact_inf2D1,axiom,
    ! [V_y_2,V_x_2,V_B_2,V_A_2,T_b,T_a] :
      ( hBOOL(hAPP(hAPP(V_A_2,V_x_2),V_y_2))
     <= hBOOL(hAPP(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_fun(T_b,tc_HOL_Obool))),V_A_2),V_B_2),V_x_2),V_y_2)) ) ).

fof(fact_insert__absorb,axiom,
    ! [V_A_2,V_a_2,T_a] :
      ( hAPP(hAPP(c_Set_Oinsert(T_a),V_a_2),V_A_2) = V_A_2
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_a_2),V_A_2)) ) ).

fof(fact_inf__Int__eq,axiom,
    ! [V_x_2,V_S_2,V_R_2,T_a] :
      ( hBOOL(hAPP(hAPP(c_member(T_a),V_x_2),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_R_2),V_S_2)))
    <=> hBOOL(hAPP(hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_R_2)),hAPP(hAPP(c_COMBC(T_a,tc_fun(T_a,tc_HOL_Obool),tc_HOL_Obool),c_member(T_a)),V_S_2)),V_x_2)) ) ).

fof(fact_rev__predicate1D,axiom,
    ! [V_Q_2,T_a,V_x_2,V_P_2] :
      ( hBOOL(hAPP(V_P_2,V_x_2))
     => ( hBOOL(hAPP(V_Q_2,V_x_2))
       <= c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),V_P_2,V_Q_2) ) ) ).

fof(fact_Diff__Int__distrib2,axiom,
    ! [V_C_2,V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2)),V_C_2) = hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_C_2)),hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_C_2)) ).

fof(fact_compose__def,axiom,
    ! [V_f_2,V_g_2,V_A_2,T_b,T_c,T_a] : c_FuncSet_Orestrict(T_a,T_b,hAPP(hAPP(c_COMBB(T_c,T_b,T_a),V_g_2),V_f_2),V_A_2) = c_FuncSet_Ocompose(T_a,T_c,T_b,V_A_2,V_g_2,V_f_2) ).

fof(fact_UN__E,axiom,
    ! [V_B_2,V_A_2,T_b,V_b_2,T_a] :
      ( ~ ! [B_x] :
            ( hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2))
           => ~ hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(V_B_2,B_x))) )
     <= hBOOL(hAPP(hAPP(c_member(T_a),V_b_2),hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2))) ) ).

fof(fact_Int__commute,axiom,
    ! [V_B_2,V_A_2,T_a] : hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_B_2),V_A_2) = hAPP(hAPP(c_Lattices_Osemilattice__inf__class_Oinf(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) ).

fof(fact_Diff__subset,axiom,
    ! [V_B_2,V_A_2,T_a] : c_Orderings_Oord__class_Oless__eq(tc_fun(T_a,tc_HOL_Obool),hAPP(hAPP(c_Groups_Ominus__class_Ominus(tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2),V_A_2) ).

fof(fact_UNION__empty__conv_I2_J,axiom,
    ! [V_B_2,V_A_2,T_a,T_b] :
      ( ! [B_x] :
          ( hAPP(V_B_2,B_x) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool))
         <= hBOOL(hAPP(hAPP(c_member(T_b),B_x),V_A_2)) )
    <=> hAPP(hAPP(c_Complete__Lattice_Ocomplete__lattice__class_OSUPR(T_b,tc_fun(T_a,tc_HOL_Obool)),V_A_2),V_B_2) = c_Orderings_Obot__class_Obot(tc_fun(T_a,tc_HOL_Obool)) ) ).

