fof(fact_510_sorted__remove1,axiom,
    ! [A_83,Xs_46] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_46))
     => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,A_83),Xs_46))) ) ).

fof(fact_80_last__appendL,axiom,
    ! [Xs_85,Ys_27] :
      ( hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_85),Ys_27)) = hAPP_l1105242632le_alt(last_A57386030le_alt,Xs_85)
     <= Ys_27 = nil_Ar126264853le_alt ) ).

fof(fact_1027_zero__less__diff,axiom,
    ! [N_1,M_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_1),M_1)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1)) ) ).

fof(help_If_1_1_If_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu,axiom,
    ! [X,Y] : X = if_lis1340954026le_alt(fTrue,X,Y) ).

fof(fact_344_member__set,axiom,
    member_nat_1 = set_nat ).

fof(fact_777_min__max_Oinf__assoc,axiom,
    ! [X_51,Y_36,Z_18] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_51),Y_36)),Z_18) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_51),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_36),Z_18)) ).

fof(fact_31_list__nonempty__induct,axiom,
    ! [P_1,Xs] :
      ( ( ! [X_4] :
            ( hBOOL(hAPP_l1386638586t_bool(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),nil_Ar126264853le_alt)))
           <= is_Arr1861959080le_alt(X_4) )
       => ( ! [X_4,Xs_19] :
              ( is_Arr1861959080le_alt(X_4)
             => ( ( hBOOL(hAPP_l1386638586t_bool(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Xs_19)))
                 <= hBOOL(hAPP_l1386638586t_bool(P_1,Xs_19)) )
               <= nil_Ar126264853le_alt != Xs_19 ) )
         => hBOOL(hAPP_l1386638586t_bool(P_1,Xs)) ) )
     <= Xs != nil_Ar126264853le_alt ) ).

fof(fact_312_takeWhile__not__last,axiom,
    ! [Xs] :
      ( nil_Ar126264853le_alt != Xs
     => ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
       => butlas1262502241le_alt(Xs) = takeWh536362254le_alt(cOMBB_2104979073le_alt(fNot,hAPP_A1664620203t_bool(cOMBC_1628726426t_bool(fequal1160105444le_alt),hAPP_l1105242632le_alt(last_A57386030le_alt,Xs))),Xs) ) ) ).

fof(fact_988_xt1_I9_J,axiom,
    ! [B_19,A_18] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_18),B_19))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_19),A_18)) ) ).

fof(fact_613_foldr__foldl,axiom,
    ! [F,Xs,Aa] : hAPP_nat_nat(foldr_nat_nat(F,Xs),Aa) = foldl_nat_nat(cOMBC_nat_nat_nat(F),Aa,rev_nat(Xs)) ).

fof(help_fdisj_2_1_U,axiom,
    ! [P,Q] :
      ( ~ hBOOL(Q)
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q)) ) ).

fof(fact_167_hd__append2,axiom,
    ! [Ys_18,Xs_69] :
      ( hAPP_list_nat_nat(hd_nat,Xs_69) = hAPP_list_nat_nat(hd_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_69),Ys_18))
     <= Xs_69 != nil_nat ) ).

fof(fact_739_min__max_Osup__least,axiom,
    ! [Z_21,Y_45,X_64] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_45),X_64))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_21),X_64))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_45),Z_21)),X_64)) ) ) ).

fof(fact_209_hd_Osimps,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_bool_bool(hd_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)))
    <=> hBOOL(X_1) ) ).

fof(fact_377_sorted__distinct__set__unique,axiom,
    ! [Ys,Xs] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs))
     => ( ( ( ( hAPP_l1821533378t_bool(set_nat,Ys) = hAPP_l1821533378t_bool(set_nat,Xs)
             => Xs = Ys )
           <= hBOOL(hAPP_list_nat_bool(distinct_nat,Ys)) )
         <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Ys)) )
       <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ) ).

fof(fact_515_list__all__simps_I2_J,axiom,
    ! [P_1] : hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),nil_nat)) ).

fof(fact_102_append__Nil2,axiom,
    ! [Xs_79] : Xs_79 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_79),nil_Ar126264853le_alt) ).

fof(fact_1102_length__takeWhile__less__P__nth,axiom,
    ! [P_1,Xs,J_1] :
      ( ! [I_4] :
          ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),I_4)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),J_1)) )
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_list_nat_nat(size_size_list_nat,Xs)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs)))) ) ) ).

fof(fact_448_replicate__Suc,axiom,
    ! [N_1,X_1] : hAPP_bool_list_bool(replicate_bool(hAPP_nat_nat(suc,N_1)),X_1) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_bool_list_bool(replicate_bool(N_1),X_1)) ).

fof(fact_405_in__set__conv__decomp__first,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
    <=> ? [Ys_6,Zs_2] :
          ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Zs_2)) = Xs
          & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Ys_6))) ) ) ).

fof(fact_868_nth__append__length,axiom,
    ! [Xs_31,X_37,Ys_8] :
      ( is_Arr1861959080le_alt(X_37)
     => X_37 = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_31),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_37),Ys_8))),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_31)) ) ).

fof(fact_75_same__append__eq,axiom,
    ! [Xs,Ys,Zs] :
      ( Ys = Zs
    <=> hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Zs) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) ) ).

fof(fact_292_replicate__empty,axiom,
    ! [N_1,X_1] :
      ( N_1 = zero_zero_nat
    <=> hAPP_nat_list_nat(replicate_nat(N_1),X_1) = nil_nat ) ).

fof(fact_54_eq__Nil__null,axiom,
    ! [Xs] :
      ( Xs = nil_nat
    <=> hBOOL(hAPP_list_nat_bool(null_nat,Xs)) ) ).

fof(fact_250_elem,axiom,
    ! [X_101,Xs_55] : hBOOL(hAPP_list_nat_bool(listMem_nat(X_101),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_101),Xs_55))) ).

fof(fact_353_dropWhile__neq__rev,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_bool_bool(distinct_bool,Xs))
     => ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),rev_bool(takeWhile_bool(cOMBB_bool_bool_bool(fNot,hAPP_b589554111l_bool(cOMBC_bool_bool_bool(fequal_bool),X_1)),Xs))) = dropWhile_bool(cOMBB_bool_bool_bool(fNot,hAPP_b589554111l_bool(cOMBC_bool_bool_bool(fequal_bool),X_1)),rev_bool(Xs))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_744_Collect__mono,axiom,
    ! [Q_1,P_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,collect_nat(P_1)),collect_nat(Q_1)))
     <= ! [X_4] :
          ( hBOOL(hAPP_nat_bool(Q_1,X_4))
         <= hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_329_set__ConsD,axiom,
    ! [Y_2,X_1,Xs] :
      ( ( Y_2 = X_1
        | hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Y_2),hAPP_l1821533378t_bool(set_nat,Xs))) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Y_2),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)))) ) ).

fof(fact_1044_less__eq__Suc__le__raw,axiom,
    ! [X_4] : hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,X_4)) = hAPP_n1699378549t_bool(ord_less_nat,X_4) ).

fof(fact_674_sorted__append,axiom,
    ! [Xs,Ys] :
      ( ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Ys))
        & ! [X_4] :
            ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
           => ! [Xa] :
                ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_4),Xa))
               <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Ys))) ) )
        & hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs)) )
    <=> hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys))) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_002,axiom,
    ! [P,Q,R] : hAPP_b589554111l_bool(P,hAPP_bool_bool(Q,R)) = hAPP_b589554111l_bool(cOMBB_1914122979l_bool(P,Q),R) ).

fof(help_fTrue_1_1_T,axiom,
    ! [P] :
      ( ( P = fFalse
        | P = fTrue )
     <= is_bool(P) ) ).

fof(fact_556_rev__foldl__cons,axiom,
    ! [Xs] : rev_nat(Xs) = foldl_list_nat_nat(cOMBC_1204473209st_nat(cons_nat),nil_nat,Xs) ).

fof(fact_239_list__ex1__simps_I1_J,axiom,
    ! [P_1] : ~ hBOOL(hAPP_list_nat_bool(list_ex1_nat(P_1),nil_nat)) ).

fof(fact_149_rotate__simps,axiom,
    ! [X_1,Xs] :
      ( nil_nat = rotate1_nat(nil_nat)
      & hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool)) = rotate1_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) ) ).

fof(fact_1160_distinct__drop,axiom,
    ! [I_2,Xs_8] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_8))
     => hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,I_2),Xs_8))) ) ).

fof(fact_466_nat__case__0,axiom,
    ! [F1,F2] :
      ( hBOOL(F1)
    <=> hBOOL(hAPP_nat_bool(nat_case_bool(F1,F2),zero_zero_nat)) ) ).

fof(fact_125_Cons__eq__append__conv,axiom,
    ! [X_1,Xs,Ys,Zs] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),Zs)
    <=> ( ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) = Zs
          & Ys = nil_bool )
        | ? [Ys_20] :
            ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Ys_20) = Ys
            & Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_20),Zs) ) ) ) ).

fof(fact_898_DiffD2,axiom,
    ! [C_2,A,B] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),B))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B))) ) ).

fof(fact_916_order__le__imp__less__or__eq,axiom,
    ! [X_27,Y_19] :
      ( ( Y_19 = X_27
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_27),Y_19)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_27),Y_19)) ) ).

fof(fact_14_list_Oexhaust,axiom,
    ! [Y_68] :
      ( nil_nat != Y_68
     => ~ ! [A_74,List_3] : Y_68 != hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,A_74),List_3) ) ).

fof(fact_380_last__in__set,axiom,
    ! [As] :
      ( nil_Ar126264853le_alt != As
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_l1105242632le_alt(last_A57386030le_alt,As)),hAPP_l82377208t_bool(set_Ar1565008694le_alt,As))) ) ).

fof(fact_731_le__maxI2,axiom,
    ! [Y_48,X_70] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_48),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_70),Y_48))) ).

fof(fact_484_list__ex1__simps_I2_J,axiom,
    ! [P_1,X_1,Xs] :
      ( ( ( hBOOL(hAPP_list_bool_bool(list_ex1_bool(P_1),Xs))
         <= ~ hBOOL(hAPP_bool_bool(P_1,X_1)) )
        & ( hBOOL(hAPP_list_bool_bool(list_all_bool(cOMBS_bool_bool_bool(cOMBB_1914122979l_bool(fdisj,cOMBB_bool_bool_bool(fNot,P_1)),hAPP_b589554111l_bool(fequal_bool,X_1))),Xs))
         <= hBOOL(hAPP_bool_bool(P_1,X_1)) ) )
    <=> hBOOL(hAPP_list_bool_bool(list_ex1_bool(P_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))) ) ).

fof(fact_1114_list__ball__nth,axiom,
    ! [P_1,N_1,Xs] :
      ( ( hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),N_1)))
       <= ! [X_4] :
            ( is_Arr1861959080le_alt(X_4)
           => ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
             <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) ) ).

fof(fact_463_nat__case__0,axiom,
    ! [F1,F2] : F1 = hAPP_n1875670159le_alt(nat_ca14895078le_alt(F1,F2),zero_zero_nat) ).

fof(fact_384_in__set__butlast__appendI,axiom,
    ! [Ys,X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)))))
     <= ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,butlas1262502241le_alt(Xs))))
        | hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,butlas1262502241le_alt(Ys)))) ) ) ).

fof(fact_1092_rev__nth,axiom,
    ! [N_21,Xs_23] :
      ( hAPP_nat_nat(nth_nat(Xs_23),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_23)),hAPP_nat_nat(suc,N_21))) = hAPP_nat_nat(nth_nat(rev_nat(Xs_23)),N_21)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_21),hAPP_list_nat_nat(size_size_list_nat,Xs_23))) ) ).

fof(fact_451_Suc__neq__Zero,axiom,
    ! [M] : zero_zero_nat != hAPP_nat_nat(suc,M) ).

fof(fact_791_min__Suc__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)) = hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,M),N)) ).

fof(fact_955_add__less__mono1,axiom,
    ! [K,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),K)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J)) ) ).

fof(fact_757_min__max_Ole__infE,axiom,
    ! [X_63,A_41,B_41] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_63),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_41),B_41)))
     => ~ ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_63),A_41))
         => ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_63),B_41)) ) ) ).

fof(fact_347_List_Omember__def,axiom,
    ! [Xs,X_1] :
      ( hBOOL(hAPP_A862370221t_bool(hAPP_l82377208t_bool(member345038890le_alt,Xs),X_1))
    <=> hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_915_order__le__neq__trans,axiom,
    ! [A_30,B_31] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_30),B_31))
     => ( A_30 != B_31
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_30),B_31)) ) ) ).

fof(fact_233_equal__eq,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,X_1),Y_2))
    <=> Y_2 = X_1 ) ).

fof(fact_478_zero__induct,axiom,
    ! [P_1,K_3] :
      ( ( ! [N_19] :
            ( hBOOL(hAPP_nat_bool(P_1,N_19))
           <= hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(suc,N_19))) )
       => hBOOL(hAPP_nat_bool(P_1,zero_zero_nat)) )
     <= hBOOL(hAPP_nat_bool(P_1,K_3)) ) ).

fof(fact_527_take__Suc__Cons,axiom,
    ! [N_34,X_90,Xs_44] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_90),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_34),Xs_44)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(suc,N_34)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_90),Xs_44)) ).

fof(fact_298_takeWhile__tail,axiom,
    ! [Xs,L_2,P_1,X_1] :
      ( ~ hBOOL(hAPP_nat_bool(P_1,X_1))
     => takeWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),L_2))) = takeWhile_nat(P_1,Xs) ) ).

fof(fact_761_min__max_Oinf__absorb2,axiom,
    ! [Y_43,X_60] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_43),X_60))
     => Y_43 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_60),Y_43) ) ).

fof(fact_107_self__append__conv2,axiom,
    ! [Ys,Xs] :
      ( Xs = nil_nat
    <=> hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) = Ys ) ).

fof(fact_560_add__right__imp__eq,axiom,
    ! [B_70,A_82,C_43] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_70),A_82) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_43),A_82)
     => B_70 = C_43 ) ).

fof(fact_258_sorted__dropWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,dropWhile_nat(P_1,Xs)))
     <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs)) ) ).

fof(fact_487_insort__remove1,axiom,
    ! [Aa,Xs] :
      ( ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs))
       => Xs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),Aa),hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,Aa),Xs)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Aa),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_643_Suc__le__mono,axiom,
    ! [N_1,M_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N_1)),hAPP_nat_nat(suc,M_1))) ) ).

fof(fact_970_linorder__neqE__nat,axiom,
    ! [X,Y] :
      ( ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Y))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y),X)) )
     <= X != Y ) ).

fof(fact_390_not__in__set__insert,axiom,
    ! [X_1,Xs] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_1),Xs)
     <= ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ).

fof(fact_903_sorted__rev__nth__mono,axiom,
    ! [I_8,J_4,Xs_28] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(nth_nat(Xs_28),J_4)),hAPP_nat_nat(nth_nat(Xs_28),I_8)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_4),hAPP_list_nat_nat(size_size_list_nat,Xs_28))) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_8),J_4)) )
     <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,rev_nat(Xs_28))) ) ).

fof(fact_7_list_Osimps_I3_J,axiom,
    ! [A_84,List_2] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_84),List_2) != nil_Ar126264853le_alt ).

fof(fact_669_list__size__estimation_H,axiom,
    ! [Y_2,F,X_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),hAPP_A2113590458lt_nat(F,X_1)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),list_s1237850263le_alt(F,Xs))) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_1010_add__pos__pos,axiom,
    ! [B_11,A_10] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),B_11))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_10),B_11))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_10)) ) ).

fof(fact_132_butlast__append,axiom,
    ! [Xs_76,Ys_19] :
      ( ( butlast_nat(Xs_76) = butlast_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_76),Ys_19))
       <= nil_nat = Ys_19 )
      & ( Ys_19 != nil_nat
       => hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_76),butlast_nat(Ys_19)) = butlast_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_76),Ys_19)) ) ) ).

fof(fact_656_add__leD1,axiom,
    ! [M,K,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),K)),N)) ) ).

fof(fact_986_xt1_I1_J,axiom,
    ! [C_9,A_20,B_21] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,C_9),A_20))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,C_9),B_21)) )
     <= B_21 = A_20 ) ).

fof(fact_236_hd__dropWhile,axiom,
    ! [P_1,Xs] :
      ( nil_Ar126264853le_alt != dropWh156852662le_alt(P_1,Xs)
     => ~ hBOOL(hAPP_A862370221t_bool(P_1,hAPP_l1105242632le_alt(hd_Arr805754088le_alt,dropWh156852662le_alt(P_1,Xs)))) ) ).

fof(fact_412_takeWhile__cong,axiom,
    ! [Q_1,P_1,L_2,K_3] :
      ( K_3 = L_2
     => ( ! [X_4] :
            ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,L_2)))
           => ( hBOOL(hAPP_nat_bool(Q_1,X_4))
            <=> hBOOL(hAPP_nat_bool(P_1,X_4)) ) )
       => takeWhile_nat(P_1,L_2) = takeWhile_nat(Q_1,K_3) ) ) ).

fof(fact_363_rotate1__def,axiom,
    ! [Xs] : rotate1322903650le_alt(Xs) = list_c380068407le_alt(nil_Ar126264853le_alt,cOMBB_881934114le_alt(cOMBC_1058495865le_alt(append1166636842le_alt),hAPP_l618618165le_alt(cOMBC_1919297930le_alt(cons_A1216297413le_alt),nil_Ar126264853le_alt)),Xs) ).

fof(fact_232_equal__eq,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_list_nat_bool(hAPP_l120351551t_bool(equal_equal_list_nat,X_1),Y_2))
    <=> Y_2 = X_1 ) ).

fof(fact_483_insort__insert__insort,axiom,
    ! [X_1,Xs] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),X_1),Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord297828738at_nat(cOMBI_nat),X_1),Xs) ) ).

fof(fact_810_take__take,axiom,
    ! [N_29,M_6,Xs_37] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,N_29),M_6)),Xs_37) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_29),hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,M_6),Xs_37)) ).

fof(fact_286_sorted__takeWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,takeWhile_nat(P_1,Xs)))
     <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs)) ) ).

fof(fact_555_split__list__first__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( hBOOL(hAPP_bool_bool(P_1,X_4))
          & ! [Xa] :
              ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Xa),hAPP_l96088310l_bool(set_bool,Ys_6)))
             => ~ hBOOL(hAPP_bool_bool(P_1,Xa)) )
          & ? [Zs_2] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2)) = Xs
          & is_bool(X_4) )
     <= ? [X_4] :
          ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs)))
          & hBOOL(hAPP_bool_bool(P_1,X_4)) ) ) ).

fof(fact_954_trans__less__add2,axiom,
    ! [M,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),J))) ) ).

fof(fact_295_takeWhile_Osimps_I2_J,axiom,
    ! [Xs,P_1,X_1] :
      ( ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),takeWhile_nat(P_1,Xs)) = takeWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs))
       <= hBOOL(hAPP_nat_bool(P_1,X_1)) )
      & ( takeWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) = nil_nat
       <= ~ hBOOL(hAPP_nat_bool(P_1,X_1)) ) ) ).

fof(fact_821_length__replicate,axiom,
    ! [N_28,X_42] : N_28 = hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_28),X_42)) ).

fof(fact_389_dropWhile__append1,axiom,
    ! [Ys,P_1,X_1,Xs] :
      ( ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,dropWhile_nat(P_1,Xs)),Ys) = dropWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys))
       <= ~ hBOOL(hAPP_nat_bool(P_1,X_1)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_254_dropWhile_Osimps_I1_J,axiom,
    ! [P_1] : nil_Ar126264853le_alt = dropWh156852662le_alt(P_1,nil_Ar126264853le_alt) ).

fof(fact_210_hd_Osimps,axiom,
    ! [X_105,Xs_60] :
      ( is_Arr1861959080le_alt(X_105)
     => hAPP_l1105242632le_alt(hd_Arr805754088le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_105),Xs_60)) = X_105 ) ).

fof(fact_135_last_Osimps,axiom,
    ! [X_113,Xs_74] :
      ( is_Arr1861959080le_alt(X_113)
     => ( ( nil_Ar126264853le_alt = Xs_74
         => hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_113),Xs_74)) = X_113 )
        & ( hAPP_l1105242632le_alt(last_A57386030le_alt,Xs_74) = hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_113),Xs_74))
         <= Xs_74 != nil_Ar126264853le_alt ) ) ) ).

fof(fact_358_sublist__nil,axiom,
    ! [A] : nil_Ar126264853le_alt = sublis888024346le_alt(nil_Ar126264853le_alt,A) ).

fof(fact_993_order__less__imp__not__less,axiom,
    ! [X_15,Y_7] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_7),X_15))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_15),Y_7)) ) ).

fof(fact_923_linorder__antisym__conv1,axiom,
    ! [X_1,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2))
      <=> Y_2 = X_1 )
     <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) ) ).

fof(fact_459_nth_Osimps,axiom,
    ! [X_1,Xs,N_1] :
      ( hBOOL(hAPP_nat_bool(nat_case_bool(X_1,nth_bool(Xs)),N_1))
    <=> hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)),N_1)) ) ).

fof(fact_476_not0__implies__Suc,axiom,
    ! [N] :
      ( ? [M_5] : N = hAPP_nat_nat(suc,M_5)
     <= N != zero_zero_nat ) ).

fof(fact_753_list_Osize_I4_J,axiom,
    ! [A_42,List] : hAPP_list_nat_nat(size_size_list_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,A_42),List)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_list_nat_nat(size_size_list_nat,List)),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_1113_list__ball__nth,axiom,
    ! [P_1,N_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs)))
     => ( hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),N_1)))
       <= ! [X_4] :
            ( is_bool(X_4)
           => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs)))
             => hBOOL(hAPP_bool_bool(P_1,X_4)) ) ) ) ) ).

fof(fact_1196_upt__eq__Nil__conv,axiom,
    ! [I_1,J_1] :
      ( ( zero_zero_nat = J_1
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),I_1)) )
    <=> hAPP_nat_list_nat(upt(I_1),J_1) = nil_nat ) ).

fof(fact_181_rev__rev__ident,axiom,
    ! [Xs_66] : rev_nat(rev_nat(Xs_66)) = Xs_66 ).

fof(fact_1133_less__mono__imp__le__mono,axiom,
    ! [I_1,J_1,F] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,I_1)),hAPP_nat_nat(F,J_1))) )
     <= ! [I_4,J_2] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,I_4)),hAPP_nat_nat(F,J_2)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),J_2)) ) ) ).

fof(fact_443_sublist__Cons,axiom,
    ! [X_1,L_2,A] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,if_lis1340954026le_alt(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt),nil_Ar126264853le_alt)),sublis888024346le_alt(L_2,collect_nat(hAPP_f800510211t_bool(cOMBC_226598744l_bool(cOMBB_1146692694ol_nat(member_nat,suc)),A)))) = sublis888024346le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),L_2),A) ).

fof(fact_695_xt1_I3_J,axiom,
    ! [C_25,A_55,B_53] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_25),A_55))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_25),B_53)) )
     <= B_53 = A_55 ) ).

fof(fact_804_min__diff,axiom,
    ! [M,I,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,M),N)),I) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),I)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),I)) ).

fof(fact_1060_in__set__conv__nth,axiom,
    ! [X_1,Xs] :
      ( ( ? [I_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
            & hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4) = X_1 )
      <=> hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
     <= is_Arr1861959080le_alt(X_1) ) ).

fof(fact_888_DiffI,axiom,
    ! [B,C_2,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),A)) ) ).

fof(fact_82_last__appendR,axiom,
    ! [Xs_84,Ys_26] :
      ( Ys_26 != nil_Ar126264853le_alt
     => hAPP_l1105242632le_alt(last_A57386030le_alt,Ys_26) = hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_84),Ys_26)) ) ).

fof(fact_9_neq__Nil__conv,axiom,
    ! [Xs] :
      ( ? [Y_25,Ys_6] :
          ( is_bool(Y_25)
          & Xs = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6) )
    <=> Xs != nil_bool ) ).

fof(fact_642_le__Suc__eq,axiom,
    ! [M_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1))
        | M_1 = hAPP_nat_nat(suc,N_1) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),hAPP_nat_nat(suc,N_1))) ) ).

fof(fact_301_sublist__singleton,axiom,
    ! [X_1,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A))
       => hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat) = sublist_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat),A) )
      & ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A))
       => nil_nat = sublist_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat),A) ) ) ).

fof(fact_1075_nth__length__takeWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs))),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
     => ~ hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs))))) ) ).

fof(fact_509_distinct__remove1,axiom,
    ! [X_91,Xs_47] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_47))
     => hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_91),Xs_47))) ) ).

fof(fact_387_hd__in__set,axiom,
    ! [Xs] :
      ( nil_nat != Xs
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_list_nat_nat(hd_nat,Xs)),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_89_last__snoc,axiom,
    ! [Xs,X_1] :
      ( hBOOL(X_1)
    <=> hBOOL(hAPP_list_bool_bool(last_bool,hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool)))) ) ).

fof(fact_533_take__Cons,axiom,
    ! [N_1,X_1,Xs] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) = hAPP_n1875670159le_alt(nat_ca14895078le_alt(nil_Ar126264853le_alt,cOMBB_903467948lt_nat(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),hAPP_l382792410le_alt(cOMBC_1511969967le_alt(take_A1601602045le_alt),Xs))),N_1) ).

fof(fact_59_null__rec_I1_J,axiom,
    ! [X_1,Xs] : ~ hBOOL(hAPP_list_bool_bool(null_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))) ).

fof(fact_220_singleton__rev__conv,axiom,
    ! [X_1,Xs] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt) = Xs
    <=> hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt) = rev_Ar2093961333le_alt(Xs) ) ).

fof(fact_465_nat__case__0,axiom,
    ! [F1,F2] : F1 = hAPP_nat_nat(nat_case_nat(F1,F2),zero_zero_nat) ).

fof(fact_930_linorder__not__le,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),X_1))
    <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2)) ) ).

fof(fact_947_less__SucE,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),hAPP_nat_nat(suc,N)))
     => ( N = M
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ) ).

fof(fact_44_splice_Osimps_I1_J,axiom,
    ! [Ys_30] : Ys_30 = splice360969192le_alt(nil_Ar126264853le_alt,Ys_30) ).

fof(fact_221_singleton__rev__conv,axiom,
    ! [X_1,Xs] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat) = rev_nat(Xs)
    <=> hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat) = Xs ) ).

fof(fact_314_List_Oinsert__def,axiom,
    ! [X_1,Xs] :
      ( ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_1),Xs) = Xs
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) )
      & ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs)))
       => hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_1),Xs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) ) ) ).

fof(fact_841_add__diff__assoc,axiom,
    ! [I,K,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),J)),K) ) ).

fof(fact_307_zero__reorient,axiom,
    ! [X_1] :
      ( X_1 = zero_zero_nat
    <=> zero_zero_nat = X_1 ) ).

fof(fact_262_ListMem_Osimps,axiom,
    ! [A1,A2] :
      ( hBOOL(hAPP_list_bool_bool(listMem_bool(A1),A2))
    <=> ( ? [X_4,Xs_19] :
            ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19) = A2
            & ( hBOOL(X_4)
            <=> hBOOL(A1) )
            & is_bool(X_4) )
        | ? [X_4,Xs_19,Y_25] :
            ( is_bool(X_4)
            & A2 = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Xs_19)
            & hBOOL(hAPP_list_bool_bool(listMem_bool(X_4),Xs_19))
            & ( hBOOL(A1)
            <=> hBOOL(X_4) )
            & is_bool(Y_25) ) ) ) ).

fof(fact_382_dropWhile__eq__Nil__conv,axiom,
    ! [P_1,Xs] :
      ( nil_Ar126264853le_alt = dropWh156852662le_alt(P_1,Xs)
    <=> ! [X_4] :
          ( is_Arr1861959080le_alt(X_4)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
           => hBOOL(hAPP_A862370221t_bool(P_1,X_4)) ) ) ) ).

fof(fact_67_last__ConsL,axiom,
    ! [X_117,Xs_88] :
      ( ( Xs_88 = nil_Ar126264853le_alt
       => X_117 = hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_117),Xs_88)) )
     <= is_Arr1861959080le_alt(X_117) ) ).

fof(fact_768_min__max_Oinf__le1,axiom,
    ! [X_55,Y_40] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_55),Y_40)),X_55)) ).

fof(fact_71_append__assoc,axiom,
    ! [Xs_87,Ys_29,Zs_6] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_87),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_29),Zs_6)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_87),Ys_29)),Zs_6) ).

fof(fact_106_self__append__conv2,axiom,
    ! [Ys,Xs] :
      ( Ys = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)
    <=> Xs = nil_Ar126264853le_alt ) ).

fof(fact_177_mem__def,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
    <=> hBOOL(hAPP_nat_bool(A,X_1)) ) ).

fof(fact_754_list_Osize_I4_J,axiom,
    ! [A_42,List] : hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_42),List)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,List)),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_984_xt1_I2_J,axiom,
    ! [C_11,B_23,A_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_23),A_22))
     => ( B_23 = C_11
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,C_11),A_22)) ) ) ).

fof(fact_569_nat__add__assoc,axiom,
    ! [M,N,K] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N)),K) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),K)) ).

fof(fact_1038_nth__take,axiom,
    ! [Xs_27,I_7,N_25] :
      ( hAPP_nat_nat(nth_nat(Xs_27),I_7) = hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_25),Xs_27)),I_7)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_7),N_25)) ) ).

fof(fact_531_take__tl,axiom,
    ! [N_33,Xs_43] : tl_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(suc,N_33)),Xs_43)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_33),tl_nat(Xs_43)) ).

fof(fact_644_le__SucI,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_924_not__leE,axiom,
    ! [Y_16,X_24] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_16),X_24))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_24),Y_16)) ) ).

fof(fact_340_set__rotate1,axiom,
    ! [Xs] : hAPP_l1821533378t_bool(set_nat,Xs) = hAPP_l1821533378t_bool(set_nat,rotate1_nat(Xs)) ).

fof(fact_943_less__antisym,axiom,
    ! [N,M] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),hAPP_nat_nat(suc,M)))
       => M = N )
     <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),M)) ) ).

fof(help_COMBS_1_1_COMBS_000tc__HOL__Obool_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_b589554111l_bool(P,R),hAPP_bool_bool(Q,R)) = hAPP_bool_bool(cOMBS_bool_bool_bool(P,Q),R) ).

fof(fact_274_list__induct2_H,axiom,
    ! [Xs,Ys,P_1] :
      ( hBOOL(hAPP_list_nat_bool(hAPP_l909187928t_bool(P_1,nil_bool),nil_nat))
     => ( ! [X_4,Xs_19] :
            ( is_bool(X_4)
           => hBOOL(hAPP_list_nat_bool(hAPP_l909187928t_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19)),nil_nat)) )
       => ( ( ! [X_4,Xs_19,Y_25,Ys_6] :
                ( is_bool(X_4)
               => ( hBOOL(hAPP_list_nat_bool(hAPP_l909187928t_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Ys_6)))
                 <= hBOOL(hAPP_list_nat_bool(hAPP_l909187928t_bool(P_1,Xs_19),Ys_6)) ) )
           => hBOOL(hAPP_list_nat_bool(hAPP_l909187928t_bool(P_1,Xs),Ys)) )
         <= ! [Y_25,Ys_6] : hBOOL(hAPP_list_nat_bool(hAPP_l909187928t_bool(P_1,nil_bool),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Ys_6))) ) ) ) ).

fof(fact_156_not__distinct__decomp,axiom,
    ! [Ws] :
      ( ? [Xs_19,Ys_6,Zs_2,Y_25] : Ws = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_19),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),nil_nat)),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),nil_nat)),Zs_2))))
     <= ~ hBOOL(hAPP_list_nat_bool(distinct_nat,Ws)) ) ).

fof(fact_946_less__trans__Suc,axiom,
    ! [K,I,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,I)),K))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J),K)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J)) ) ).

fof(fact_189_rev_Osimps_I1_J,axiom,
    rev_Ar2093961333le_alt(nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(fact_838_le__diff__conv,axiom,
    ! [J_1,K_3,I_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I_1),K_3)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J_1),K_3)),I_1)) ) ).

fof(fact_72_append__eq__append__conv2,axiom,
    ! [Xs,Ys,Zs,Ts] :
      ( ? [Us_1] :
          ( ( Zs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Us_1)
            & Ys = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us_1),Ts) )
          | ( Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs),Us_1)
            & hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Us_1),Ys) = Ts ) )
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs),Ts) ) ).

fof(fact_960_max__less__iff__conj,axiom,
    ! [X_1,Y_2,Z] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_1),Y_2)),Z))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),Z))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Z)) ) ) ).

fof(fact_931_linorder__not__less,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),X_1))
    <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) ) ).

fof(fact_267_hd__replicate,axiom,
    ! [X_100,N_41] :
      ( is_Arr1861959080le_alt(X_100)
     => ( N_41 != zero_zero_nat
       => hAPP_l1105242632le_alt(hd_Arr805754088le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_41),X_100)) = X_100 ) ) ).

fof(fact_574_add__0,axiom,
    ! [A_76] : A_76 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,zero_zero_nat),A_76) ).

fof(fact_481_take__Suc,axiom,
    ! [N_37,Xs_51] :
      ( nil_Ar126264853le_alt != Xs_51
     => hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs_51)),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_37),tl_Arr1453005548le_alt(Xs_51))) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(suc,N_37)),Xs_51) ) ).

fof(fact_751_dual__min,axiom,
    ord_max_nat = min_nat(cOMBC_nat_nat_bool(ord_less_eq_nat)) ).

fof(fact_653_add__le__mono1,axiom,
    ! [K,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),K)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J)) ) ).

fof(fact_228_equal,axiom,
    equal_equal_list_nat = fequal_list_nat ).

fof(fact_842_le__diff__conv2,axiom,
    ! [I_1,K_3,J_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I_1),K_3)),J_1))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J_1),K_3))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),J_1)) ) ).

fof(fact_625_le__trans,axiom,
    ! [K,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J),K))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),K)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [P,Q,R] : hAPP_n1875670159le_alt(cOMBB_903467948lt_nat(P,Q),R) = hAPP_l726444215le_alt(P,hAPP_n1875670159le_alt(Q,R)) ).

fof(fact_630_max__Suc__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,M),N)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)) ).

fof(fact_865_diff__Suc__diff__eq2,axiom,
    ! [M,K,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(suc,J)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K),M)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K))),M) ) ).

fof(fact_1135_take__hd__drop,axiom,
    ! [N_18,Xs_18] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(suc,N_18)),Xs_18) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_18),Xs_18)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,hAPP_list_nat_nat(hd_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_18),Xs_18))),nil_nat))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_18),hAPP_list_nat_nat(size_size_list_nat,Xs_18))) ) ).

fof(fact_867_nth__append__length,axiom,
    ! [Xs,X_1,Ys] :
      ( hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Ys))),hAPP_list_bool_nat(size_size_list_bool,Xs)))
    <=> hBOOL(X_1) ) ).

fof(fact_677_sorted_OCons,axiom,
    ! [X_1,Xs] :
      ( ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),X_4)) )
     => ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs))
       => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs))) ) ) ).

fof(fact_563_add__right__cancel,axiom,
    ! [Ba,Aa,C_2] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Ba),Aa) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_2),Aa)
    <=> C_2 = Ba ) ).

fof(fact_58_null__rec_I2_J,axiom,
    hBOOL(hAPP_list_nat_bool(null_nat,nil_nat)) ).

fof(fact_1098_takeWhile__eq__take__P__nth,axiom,
    ! [P_1,Xs,N_1] :
      ( ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),N_1)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
       => takeWh536362254le_alt(P_1,Xs) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_1),Xs) )
     <= ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),N_1))
         => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
           => hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4))) ) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo,axiom,
    ! [P,Q,R] : hAPP_n1006566506l_bool(cOMBB_1015721476ol_nat(P,Q),R) = hAPP_b589554111l_bool(P,hAPP_nat_bool(Q,R)) ).

fof(fact_1179_drop__append,axiom,
    ! [N_2,Xs_1,Ys_1] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_2),Xs_1)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_2),hAPP_list_nat_nat(size_size_list_nat,Xs_1))),Ys_1)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_2),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_1),Ys_1)) ).

fof(fact_558_rev__foldl__cons,axiom,
    ! [Xs] : foldl_list_bool_bool(cOMBC_80330970t_bool(cons_bool),nil_bool,Xs) = rev_bool(Xs) ).

fof(fact_875_sublist__append,axiom,
    ! [L_2,L_1,A] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,sublist_nat(L_2,A)),sublist_nat(L_1,collect_nat(hAPP_f800510211t_bool(cOMBC_226598744l_bool(cOMBB_1146692694ol_nat(member_nat,hAPP_nat_fun_nat_nat(cOMBC_nat_nat_nat(plus_plus_nat),hAPP_list_nat_nat(size_size_list_nat,L_2)))),A)))) = sublist_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,L_2),L_1),A) ).

fof(fact_876_min__Suc1,axiom,
    ! [N_1,M_1] : hAPP_nat_nat(nat_case_nat(zero_zero_nat,cOMBB_nat_nat_nat(suc,hAPP_nat_fun_nat_nat(ord_min_nat,N_1))),M_1) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(suc,N_1)),M_1) ).

fof(fact_231_equal__refl,axiom,
    ! [X_103] : hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,X_103),X_103)) ).

fof(fact_1131_psubset__imp__ex__mem,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le1384968325t_bool,A),B))
     => ? [B_1] :
          ( is_Arr1861959080le_alt(B_1)
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,B_1),hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,B),A))) ) ) ).

fof(fact_573_add__0__right,axiom,
    ! [A_77] : A_77 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_77),zero_zero_nat) ).

fof(fact_139_last__ConsR,axiom,
    ! [X_112,Xs_73] :
      ( hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_112),Xs_73)) = hAPP_list_nat_nat(last_nat,Xs_73)
     <= Xs_73 != nil_nat ) ).

fof(fact_48_butlast_Osimps_I2_J,axiom,
    ! [X_121,Xs_91] :
      ( ( nil_nat != Xs_91
       => butlast_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_121),Xs_91)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_121),butlast_nat(Xs_91)) )
      & ( butlast_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_121),Xs_91)) = nil_nat
       <= Xs_91 = nil_nat ) ) ).

fof(fact_1069_distinct__conv__nth,axiom,
    ! [Xs] :
      ( ! [I_4] :
          ( ! [J_2] :
              ( ( hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4) != hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),J_2)
               <= I_4 != J_2 )
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_2),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
    <=> hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs)) ) ).

fof(fact_672_start__le__sum,axiom,
    ! [Ns,M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),foldl_nat_nat(plus_plus_nat,N_1,Ns)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ).

fof(fact_807_length__take,axiom,
    ! [N_30,Xs_39] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_39)),N_30) = hAPP_list_nat_nat(size_size_list_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_30),Xs_39)) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa_001,hypothesis,
    ! [B_1_1,B_2_1] : is_bool(hAPP_l1386638586t_bool(B_1_1,B_2_1)) ).

fof(help_fequal_2_1_fequal_000tc__Nat__Onat_T,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(fequal_nat,X),Y)) ) ).

fof(fact_1173_set__drop__subset__set__drop,axiom,
    ! [Xs,N_1,M_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,M_1),Xs))),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_1),Xs))))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M_1)) ) ).

fof(fact_628_max__0R,axiom,
    ! [N] : N = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,N),zero_zero_nat) ).

fof(fact_516_list__all__iff,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),Xs))
    <=> ! [X_4] :
          ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
           => hBOOL(hAPP_A862370221t_bool(P_1,X_4)) )
         <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(help_fequal_2_1_fequal_000tc__HOL__Obool_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fequal_bool,X),Y))
      | Y != X ) ).

fof(fact_1183_Suc__lessE,axiom,
    ! [I,K] :
      ( ~ ! [J_2] :
            ( hAPP_nat_nat(suc,J_2) != K
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,I)),K)) ) ).

fof(fact_832_diff__is__0__eq_H,axiom,
    ! [M,N] :
      ( zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_1032_less__diff__iff,axiom,
    ! [N_1,K_3,M_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),M_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),N_1))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
        <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_1),K_3)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_1),K_3))) ) ) ) ).

fof(fact_762_min__max_Oinf__absorb1,axiom,
    ! [X_59,Y_42] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_59),Y_42) = X_59
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_59),Y_42)) ) ).

fof(fact_501_remove1_Osimps_I1_J,axiom,
    ! [X_92] : nil_nat = hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_92),nil_nat) ).

fof(fact_128_append1__eq__conv,axiom,
    ! [Xs,X_1,Ys,Y_2] :
      ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool)) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),nil_bool))
    <=> ( ( hBOOL(X_1)
        <=> hBOOL(Y_2) )
        & Xs = Ys ) ) ).

fof(fact_911_order__le__less__trans,axiom,
    ! [Z_6,X_30,Y_22] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_30),Y_22))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_22),Z_6))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_30),Z_6)) ) ) ).

fof(fact_809_take__take,axiom,
    ! [N_29,M_6,Xs_37] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,N_29),M_6)),Xs_37) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_29),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,M_6),Xs_37)) ).

fof(fact_706_max__leastR,axiom,
    ! [X_78,Least_3] :
      ( X_78 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_78),Least_3)
     <= ! [X_4] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Least_3),X_4)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t_004,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(hAPP_f2014742713t_bool(cOMBC_1745481870l_bool(P),Q),R) = hAPP_f2013399995l_bool(hAPP_A297543629l_bool(P,R),Q) ).

fof(fact_68_last__ConsL,axiom,
    ! [X_117,Xs_88] :
      ( X_117 = hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_117),Xs_88))
     <= Xs_88 = nil_nat ) ).

fof(fact_1154_drop__Suc,axiom,
    ! [N_11,Xs_11] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_11),tl_nat(Xs_11)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,hAPP_nat_nat(suc,N_11)),Xs_11) ).

fof(fact_29_insert__Nil,axiom,
    ! [X_124] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_124),nil_nat) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_124),nil_nat) ).

fof(help_fequal_1_1_fequal_000tc__HOL__Obool_T,axiom,
    ! [X,Y] :
      ( ( is_bool(Y)
        & is_bool(X) )
     => ( ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fequal_bool,X),Y))
        | Y = X ) ) ).

fof(fact_548_split__list__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( hBOOL(hAPP_nat_bool(P_1,X_4))
          & ? [Zs_2] : Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) )
     <= ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
          & hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(help_If_1_1_If_000tc__List__Olist_Itc__HOL__Obool_J_T,axiom,
    ! [X,Y] : X = if_list_bool(fTrue,X,Y) ).

fof(fact_461_nth_Osimps,axiom,
    ! [X_1,Xs,N_1] : hAPP_nat_nat(nat_case_nat(X_1,nth_nat(Xs)),N_1) = hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)),N_1) ).

fof(fact_230_equal__refl,axiom,
    ! [X_103] : hBOOL(hAPP_list_nat_bool(hAPP_l120351551t_bool(equal_equal_list_nat,X_103),X_103)) ).

fof(fact_428_split__list__first,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Ys_6)))
          & Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs_2)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_591_foldl__cong,axiom,
    ! [F,G,L_2,K_3,Aa,Ba] :
      ( ( K_3 = L_2
       => ( ! [A_74,X_4] :
              ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(G,A_74),X_4) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,A_74),X_4)
             <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,L_2))) )
         => foldl_nat_nat(G,Ba,K_3) = foldl_nat_nat(F,Aa,L_2) ) )
     <= Ba = Aa ) ).

fof(fact_1127_gr0__implies__Suc,axiom,
    ! [N] :
      ( ? [M_5] : N = hAPP_nat_nat(suc,M_5)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_249_elem,axiom,
    ! [X_101,Xs_55] : hBOOL(hAPP_l1386638586t_bool(listMe1065601537le_alt(X_101),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_101),Xs_55))) ).

fof(fact_576_add__eq__self__zero,axiom,
    ! [M,N] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N) = M
     => zero_zero_nat = N ) ).

fof(fact_772_min__max_Oinf_Oleft__idem,axiom,
    ! [A_34,B_35] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_34),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_34),B_35)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_34),B_35) ).

fof(fact_1016_less__add__Suc1,axiom,
    ! [I,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),M)))) ).

fof(fact_600_comm__semiring__1__class_Onormalizing__semiring__rules_I23_J,axiom,
    ! [A_70,B_65,C_38] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_70),C_38)),B_65) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_70),B_65)),C_38) ).

fof(fact_371_in__set__replicate,axiom,
    ! [X_1,N_1,Y_2] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_1),Y_2))))
      <=> ( Y_2 = X_1
          & N_1 != zero_zero_nat ) )
     <= ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_1) ) ) ).

fof(fact_430_split__list__last,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Zs_2)))
          & Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Zs_2)) )
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ).

fof(fact_883_min__max_Odistrib__imp2,axiom,
    ! [X_35,Y_26,Z_10] :
      ( ! [X_4,Y_25,Z_9] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_4),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_25),Z_9)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_4),Y_25)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_4),Z_9))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_35),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_26),Z_10)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_35),Y_26)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_35),Z_10)) ) ).

fof(fact_215_rotate1__is__Nil__conv,axiom,
    ! [Xs] :
      ( nil_Ar126264853le_alt = rotate1322903650le_alt(Xs)
    <=> Xs = nil_Ar126264853le_alt ) ).

fof(fact_273_list__induct2_H,axiom,
    ! [Xs,Ys,P_1] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1686219315t_bool(P_1,nil_bool),nil_Ar126264853le_alt))
     => ( ( ! [Y_25,Ys_6] :
              ( is_Arr1861959080le_alt(Y_25)
             => hBOOL(hAPP_l1386638586t_bool(hAPP_l1686219315t_bool(P_1,nil_bool),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Ys_6))) )
         => ( ! [X_4,Xs_19,Y_25,Ys_6] :
                ( ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1686219315t_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Ys_6)))
                 <= hBOOL(hAPP_l1386638586t_bool(hAPP_l1686219315t_bool(P_1,Xs_19),Ys_6)) )
               <= ( is_Arr1861959080le_alt(Y_25)
                  & is_bool(X_4) ) )
           => hBOOL(hAPP_l1386638586t_bool(hAPP_l1686219315t_bool(P_1,Xs),Ys)) ) )
       <= ! [X_4,Xs_19] :
            ( is_bool(X_4)
           => hBOOL(hAPP_l1386638586t_bool(hAPP_l1686219315t_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19)),nil_Ar126264853le_alt)) ) ) ) ).

fof(fact_252_dropWhile_Osimps_I2_J,axiom,
    ! [Xs,P_1,X_1] :
      ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,X_1))
       => dropWh156852662le_alt(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs) )
      & ( dropWh156852662le_alt(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) = dropWh156852662le_alt(P_1,Xs)
       <= hBOOL(hAPP_A862370221t_bool(P_1,X_1)) ) ) ).

fof(fact_1003_min__max_Oless__supI1,axiom,
    ! [B_16,X_8,A_15] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_8),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_15),B_16)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_8),A_15)) ) ).

fof(fact_211_hd_Osimps,axiom,
    ! [X_105,Xs_60] : X_105 = hAPP_list_nat_nat(hd_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_105),Xs_60)) ).

fof(fact_276_listrelp_ONil,axiom,
    ! [R_2] : hBOOL(hAPP_list_nat_bool(listrelp_nat(R_2,nil_nat),nil_nat)) ).

fof(fact_999_not__less__iff__gr__or__eq,axiom,
    ! [X_1,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),X_1))
        | X_1 = Y_2 )
    <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) ) ).

fof(fact_906_Suc__mono,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_150_rotate__simps,axiom,
    ! [X_111,Xs_71] :
      ( rotate1322903650le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_111),Xs_71)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_71),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_111),nil_Ar126264853le_alt))
      & nil_nat = rotate1_nat(nil_nat) ) ).

fof(fact_1187_upt__0,axiom,
    ! [I] : hAPP_nat_list_nat(upt(I),zero_zero_nat) = nil_nat ).

fof(fact_981_order__less__asym,axiom,
    ! [X_20,Y_12] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_12),X_20))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_20),Y_12)) ) ).

fof(fact_732_min__max_Ole__iff__sup,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2))
    <=> Y_2 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_1),Y_2) ) ).

fof(fact_182_rev__rev__ident,axiom,
    ! [Xs_66] : rev_Ar2093961333le_alt(rev_Ar2093961333le_alt(Xs_66)) = Xs_66 ).

fof(fact_415_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : map_fi695734538le_alt(F,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) = option468438226le_alt(map_fi695734538le_alt(F,Xs),hAPP_l618618165le_alt(cOMBC_1919297930le_alt(cons_A1216297413le_alt),map_fi695734538le_alt(F,Xs)),hAPP_A373227306le_alt(F,X_1)) ).

fof(fact_719_set__mp,axiom,
    ! [X_1,A,B] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A),B))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),B))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A)) ) ) ).

fof(fact_577_add__is__0,axiom,
    ! [M_1,N_1] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),N_1) = zero_zero_nat
    <=> ( zero_zero_nat = M_1
        & zero_zero_nat = N_1 ) ) ).

fof(fact_454_Suc__not__Zero,axiom,
    ! [M] : zero_zero_nat != hAPP_nat_nat(suc,M) ).

fof(fact_858_length__dropWhile__le,axiom,
    ! [P_1,Xs] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,dropWh156852662le_alt(P_1,Xs))),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) ).

fof(fact_693_order__antisym__conv,axiom,
    ! [Y_2,X_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2))
      <=> X_1 = Y_2 )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),X_1)) ) ).

fof(fact_726_min__max_Osup_Oleft__commute,axiom,
    ! [B_46,A_47,C_21] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,B_46),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_47),C_21)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_47),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,B_46),C_21)) ).

fof(fact_958_add__lessD1,axiom,
    ! [I,J,K] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),K))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),J)),K)) ) ).

fof(fact_524_take__eq__Nil,axiom,
    ! [N_1,Xs] :
      ( ( Xs = nil_Ar126264853le_alt
        | N_1 = zero_zero_nat )
    <=> hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_1),Xs) = nil_Ar126264853le_alt ) ).

fof(fact_681_set__subset__Cons,axiom,
    ! [Xs,X_1] : hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)))) ).

fof(fact_473_Suc__n__not__n,axiom,
    ! [N] : hAPP_nat_nat(suc,N) != N ).

fof(fact_1155_drop__Suc,axiom,
    ! [N_11,Xs_11] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_11),tl_Arr1453005548le_alt(Xs_11)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,hAPP_nat_nat(suc,N_11)),Xs_11) ).

fof(fact_42_splice__Nil2,axiom,
    ! [Xs_92] : Xs_92 = splice360969192le_alt(Xs_92,nil_Ar126264853le_alt) ).

fof(fact_529_remove1__insort,axiom,
    ! [X_1,Xs] : Xs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),X_1),Xs)) ).

fof(fact_513_list__all__simps_I1_J,axiom,
    ! [P_1,X_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(P_1,X_1))
        & hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),Xs)) )
    <=> hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs))) ) ).

fof(fact_1020_less__Suc__eq__le,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),hAPP_nat_nat(suc,N_1))) ) ).

fof(fact_763_min__max_Ole__infI2,axiom,
    ! [A_38,B_38,X_58] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_38),X_58))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_38),B_38)),X_58)) ) ).

fof(fact_820_length__replicate,axiom,
    ! [N_28,X_42] : N_28 = hAPP_list_nat_nat(size_size_list_nat,hAPP_nat_list_nat(replicate_nat(N_28),X_42)) ).

fof(fact_457_nth_Osimps,axiom,
    ! [X_1,Xs,N_1] : hAPP_nat_list_nat(nth_list_nat(hAPP_l1734754389st_nat(hAPP_l1872445307st_nat(cons_list_nat,X_1),Xs)),N_1) = hAPP_nat_list_nat(nat_case_list_nat(X_1,nth_list_nat(Xs)),N_1) ).

fof(fact_918_termination__basic__simps_I5_J,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),Y))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Y)) ) ).

fof(fact_176_mem__def,axiom,
    ! [X_1,A] :
      ( hBOOL(hAPP_A862370221t_bool(A,X_1))
    <=> hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A)) ) ).

fof(fact_1190_drop__upt,axiom,
    ! [M,I,J] : hAPP_nat_list_nat(upt(hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),M)),J) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,M),hAPP_nat_list_nat(upt(I),J)) ).

fof(fact_278_listrelp_OCons,axiom,
    ! [Xs,Ys,R_2,X_1,Y_2] :
      ( ( hBOOL(hAPP_l1386638586t_bool(listre53232751le_alt(R_2,Xs),Ys))
       => hBOOL(hAPP_l1386638586t_bool(listre53232751le_alt(R_2,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys))) )
     <= hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(R_2,X_1),Y_2)) ) ).

fof(fact_242_insert,axiom,
    ! [Y_2,X_1,Xs] :
      ( hBOOL(hAPP_list_bool_bool(listMem_bool(X_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Xs)))
     <= hBOOL(hAPP_list_bool_bool(listMem_bool(X_1),Xs)) ) ).

fof(fact_1147_take__drop,axiom,
    ! [N_14,M_4,Xs_14] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,M_4),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N_14),M_4)),Xs_14)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_14),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,M_4),Xs_14)) ).

fof(fact_834_impossible__Cons,axiom,
    ! [X_1,Xs,Ys] :
      ( Xs != hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Ys)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_bool_nat(size_size_list_bool,Xs)),hAPP_list_bool_nat(size_size_list_bool,Ys))) ) ).

fof(fact_794_diff__self__eq__0,axiom,
    ! [M] : zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),M) ).

fof(fact_977_add__strict__mono,axiom,
    ! [C_14,D_3,A_25,B_26] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_25),C_14)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_26),D_3)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,C_14),D_3)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_25),B_26)) ) ).

fof(fact_17_not__Cons__self,axiom,
    ! [Xs_97,X_126] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_126),Xs_97) != Xs_97 ).

fof(fact_1086_nth__append,axiom,
    ! [Ys_5,N_22,Xs_25] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_22),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_25)))
       => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_25),N_22) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_25),Ys_5)),N_22) )
      & ( hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_25),Ys_5)),N_22) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Ys_5),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_22),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_25)))
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_22),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_25))) ) ) ).

fof(fact_847_diff__add__assoc2,axiom,
    ! [I,K,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),I)),K) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K)),I) ) ).

fof(fact_455_nat_Osimps_I2_J,axiom,
    ! [Nat_4] : zero_zero_nat != hAPP_nat_nat(suc,Nat_4) ).

fof(fact_899_min__leastR,axiom,
    ! [X_32,Least] :
      ( Least = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_32),Least)
     <= ! [X_4] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Least),X_4)) ) ).

fof(fact_1116_nth__equalityI,axiom,
    ! [Xs,Ys] :
      ( hAPP_list_bool_nat(size_size_list_bool,Ys) = hAPP_list_bool_nat(size_size_list_bool,Xs)
     => ( Xs = Ys
       <= ! [I_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs)))
           => ( hBOOL(hAPP_nat_bool(nth_bool(Xs),I_4))
            <=> hBOOL(hAPP_nat_bool(nth_bool(Ys),I_4)) ) ) ) ) ).

fof(help_fconj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q)) ) ).

fof(fact_950_not__add__less1,axiom,
    ! [I,J] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),J)),I)) ).

fof(fact_356_takeWhile__neq__rev,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
     => ( takeWh536362254le_alt(cOMBB_2104979073le_alt(fNot,hAPP_A1664620203t_bool(cOMBC_1628726426t_bool(fequal1160105444le_alt),X_1)),rev_Ar2093961333le_alt(Xs)) = rev_Ar2093961333le_alt(tl_Arr1453005548le_alt(dropWh156852662le_alt(cOMBB_2104979073le_alt(fNot,hAPP_A1664620203t_bool(cOMBC_1628726426t_bool(fequal1160105444le_alt),X_1)),Xs)))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ) ).

fof(fact_95_Cons__eq__appendI,axiom,
    ! [Xs,Zs,X_1,Xs1_1,Ys] :
      ( Ys = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs1_1)
     => ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs1_1),Zs) = Xs
       => hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),Zs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) ) ) ).

fof(fact_425_split__list__last__propE,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
     => ~ ! [Ys_6,X_4,Zs_2] :
            ( ( ( ~ ! [Xa] :
                      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Zs_2)))
                     => ~ hBOOL(hAPP_A862370221t_bool(P_1,Xa)) )
               <= hBOOL(hAPP_A862370221t_bool(P_1,X_4)) )
             <= Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2)) )
           <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_198_hd__rev,axiom,
    ! [Xs_63] :
      ( hAPP_list_nat_nat(hd_nat,rev_nat(Xs_63)) = hAPP_list_nat_nat(last_nat,Xs_63)
     <= nil_nat != Xs_63 ) ).

fof(fact_812_diff__le__mono2,axiom,
    ! [L,M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,L),N)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,L),M))) ) ).

fof(fact_722_min__max_Osup_Ocommute,axiom,
    ! [A_49,B_48] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_49),B_48) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,B_48),A_49) ).

fof(fact_538_insort__insert__triv,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     => Xs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord297828738at_nat(cOMBI_nat),X_1),Xs) ) ).

fof(fact_361_distinct__sublistI,axiom,
    ! [I_11,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,sublist_nat(Xs,I_11)))
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__Nat__Onat_J_000tc__List__Olist_Itc_,axiom,
    ! [P,Q,R] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(cOMBC_950362600st_nat(P),Q),R) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(P,R),Q) ).

fof(fact_321_insort__key__left__comm,axiom,
    ! [Xs,F,X_1,Y_2] :
      ( hAPP_nat_nat(F,Y_2) != hAPP_nat_nat(F,X_1)
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),Y_2),hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),Xs)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),Y_2),Xs)) ) ).

fof(fact_671_nat_Osize_I3_J,axiom,
    zero_zero_nat = hAPP_nat_nat(size_size_nat,zero_zero_nat) ).

fof(fact_493_in__set__takeD,axiom,
    ! [X_1,N_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_1),Xs)))) ) ).

fof(fact_840_le__add__diff__inverse,axiom,
    ! [N,M] :
      ( M = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M)) ) ).

fof(fact_140_rev__induct,axiom,
    ! [Xs,P_1] :
      ( hBOOL(hAPP_list_bool_bool(P_1,nil_bool))
     => ( hBOOL(hAPP_list_bool_bool(P_1,Xs))
       <= ! [X_4,Xs_19] :
            ( is_bool(X_4)
           => ( hBOOL(hAPP_list_bool_bool(P_1,hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_19),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),nil_bool))))
             <= hBOOL(hAPP_list_bool_bool(P_1,Xs_19)) ) ) ) ) ).

fof(fact_740_subsetI,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A),B))
     <= ! [X_4] :
          ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),A))
           => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),B)) )
         <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_120_append__butlast__last__id,axiom,
    ! [Xs_77] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,butlas1262502241le_alt(Xs_77)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,hAPP_l1105242632le_alt(last_A57386030le_alt,Xs_77)),nil_Ar126264853le_alt)) = Xs_77
     <= Xs_77 != nil_Ar126264853le_alt ) ).

fof(fact_905_lessI,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),hAPP_nat_nat(suc,N))) ).

fof(fact_1142_length__drop,axiom,
    ! [N_16,Xs_16] : hAPP_list_nat_nat(size_size_list_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_16),Xs_16)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_16)),N_16) ).

fof(fact_1174_set__drop__subset__set__drop,axiom,
    ! [Xs,N_1,M_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,M_1),Xs))),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_1),Xs))))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),M_1)) ) ).

fof(fact_4_list_Osimps_I2_J,axiom,
    ! [A_85,List_4] : nil_Ar126264853le_alt != hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_85),List_4) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_nat_bool(cOMBB_bool_bool_nat(P,Q),R) = hAPP_bool_bool(P,hAPP_nat_bool(Q,R)) ).

fof(fact_1077_takeWhile__nth,axiom,
    ! [J_1,P_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_list_bool_nat(size_size_list_bool,takeWhile_bool(P_1,Xs))))
     => ( hBOOL(hAPP_nat_bool(nth_bool(Xs),J_1))
      <=> hBOOL(hAPP_nat_bool(nth_bool(takeWhile_bool(P_1,Xs)),J_1)) ) ) ).

fof(fact_492_in__set__takeD,axiom,
    ! [X_1,N_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_1),Xs))))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_41_splice_Osimps_I3_J,axiom,
    ! [X_122,Xs_93,Y_67,Ys_31] : splice_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_122),Xs_93),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_67),Ys_31)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_122),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_67),splice_nat(Xs_93,Ys_31))) ).

fof(fact_56_List_Onull__def,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_list_nat_bool(null_nat,Xs))
    <=> Xs = nil_nat ) ).

fof(fact_1144_nth__via__drop,axiom,
    ! [N_15,Xs_15,Y_1,Ys_2] :
      ( is_Arr1861959080le_alt(Y_1)
     => ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_1),Ys_2) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_15),Xs_15)
       => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_15),N_15) = Y_1 ) ) ).

fof(fact_294_takeWhile_Osimps_I2_J,axiom,
    ! [Xs,P_1,X_1] :
      ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,X_1))
       => takeWh536362254le_alt(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) = nil_Ar126264853le_alt )
      & ( hBOOL(hAPP_A862370221t_bool(P_1,X_1))
       => hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),takeWh536362254le_alt(P_1,Xs)) = takeWh536362254le_alt(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) ) ) ).

fof(fact_99_append__Nil,axiom,
    ! [Ys_22] : Ys_22 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,nil_nat),Ys_22) ).

fof(fact_697_xt1_I4_J,axiom,
    ! [C_23,B_51,A_53] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_51),A_53))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_23),A_53))
       <= C_23 = B_51 ) ) ).

fof(fact_442_sublist__Cons,axiom,
    ! [X_1,L_2,A] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,if_list_bool(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool),nil_bool)),sublist_bool(L_2,collect_nat(hAPP_f800510211t_bool(cOMBC_226598744l_bool(cOMBB_1146692694ol_nat(member_nat,suc)),A)))) = sublist_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),L_2),A) ).

fof(fact_1104_nth__take__lemma,axiom,
    ! [Ys_4,K_4,Xs_21] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_21)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_4)))
       => ( ! [I_4] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_4))
             => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Ys_4),I_4) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_21),I_4) )
         => hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,K_4),Xs_21) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,K_4),Ys_4) ) ) ) ).

fof(fact_990_order__less__imp__triv,axiom,
    ! [P_1,X_1,Y_2] :
      ( ( hBOOL(P_1)
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),X_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) ) ).

fof(fact_206_tl_Osimps_I2_J,axiom,
    ! [X_106,Xs_61] : tl_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_106),Xs_61)) = Xs_61 ).

fof(fact_201_rotate1__hd__tl,axiom,
    ! [Xs] :
      ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,tl_bool(Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,hAPP_list_bool_bool(hd_bool,Xs)),nil_bool)) = rotate1_bool(Xs)
     <= Xs != nil_bool ) ).

fof(fact_114_eq__Nil__appendI,axiom,
    ! [Xs_78,Ys_21] :
      ( Xs_78 = Ys_21
     => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,nil_Ar126264853le_alt),Ys_21) = Xs_78 ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__Nat__Onat_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(cOMBC_nat_nat_nat(P),Q),R) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(P,R),Q) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_,axiom,
    ! [P,Q,R] : hAPP_f54304608l_bool(hAPP_n215258509l_bool(P,R),Q) = hAPP_nat_bool(hAPP_f800510211t_bool(cOMBC_226598744l_bool(P),Q),R) ).

fof(fact_488_remove1__commute,axiom,
    ! [X_94,Y_64,Zs_3] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,Y_64),hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_94),Zs_3)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_94),hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,Y_64),Zs_3)) ).

fof(fact_1145_nth__via__drop,axiom,
    ! [N_15,Xs_15,Y_1,Ys_2] :
      ( Y_1 = hAPP_nat_nat(nth_nat(Xs_15),N_15)
     <= hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_15),Xs_15) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_1),Ys_2) ) ).

fof(fact_1012_gr0__conv__Suc,axiom,
    ! [N_1] :
      ( ? [M_5] : hAPP_nat_nat(suc,M_5) = N_1
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ).

fof(fact_423_split__list__first__propE,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
          & hBOOL(hAPP_nat_bool(P_1,X_4)) )
     => ~ ! [Ys_6,X_4] :
            ( ( ~ ! [Xa] :
                    ( ~ hBOOL(hAPP_nat_bool(P_1,Xa))
                   <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Ys_6))) )
             <= hBOOL(hAPP_nat_bool(P_1,X_4)) )
           <= ? [Zs_2] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) = Xs ) ) ).

fof(help_fconj_2_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(P)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q)) ) ).

fof(fact_966_nat__less__cases,axiom,
    ! [P_1,M_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_1,N_1),M_1)) )
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_1,N_1),M_1))
         <= N_1 = M_1 )
       => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),M_1))
           => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_1,N_1),M_1)) )
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_1,N_1),M_1)) ) ) ) ).

fof(fact_914_xt1_I11_J,axiom,
    ! [B_32,A_31] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_32),A_31))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_32),A_31))
       <= B_32 != A_31 ) ) ).

fof(fact_1167_drop__drop,axiom,
    ! [N_6,M_2,Xs_6] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N_6),M_2)),Xs_6) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,M_2),Xs_6)) ).

fof(fact_825_min__max_Odistrib__sup__le,axiom,
    ! [X_40,Y_27,Z_11] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_40),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_27),Z_11))),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_40),Y_27)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_40),Z_11)))) ).

fof(fact_1024_le__less__Suc__eq,axiom,
    ! [M_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_nat_nat(suc,M_1)))
      <=> N_1 = M_1 )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ).

fof(fact_502_in__set__remove1,axiom,
    ! [Xs,Aa,Ba] :
      ( ( Aa != Ba
       => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Aa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
        <=> hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Aa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,Ba),Xs)))) ) )
     <= ( is_Arr1861959080le_alt(Ba)
        & is_Arr1861959080le_alt(Aa) ) ) ).

fof(fact_1073_nth__eq__iff__index__eq,axiom,
    ! [J_1,I_1,Xs] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_list_nat_nat(size_size_list_nat,Xs)))
         => ( I_1 = J_1
          <=> hAPP_nat_nat(nth_nat(Xs),J_1) = hAPP_nat_nat(nth_nat(Xs),I_1) ) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_list_nat_nat(size_size_list_nat,Xs))) )
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ).

fof(fact_1138_drop__Suc__Cons,axiom,
    ! [N_1,X_1,Xs] : hAPP_l1189022293t_bool(hAPP_n479129736t_bool(drop_bool,hAPP_nat_nat(suc,N_1)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(drop_bool,N_1),Xs) ).

fof(help_fNot_2_1_U,axiom,
    ! [P] :
      ( hBOOL(P)
      | hBOOL(hAPP_bool_bool(fNot,P)) ) ).

fof(fact_934_not__less0,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),zero_zero_nat)) ).

fof(fact_326_tl__append,axiom,
    ! [Xs,Ys] : tl_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)) = list_c554461815at_nat(tl_nat(Ys),cOMBK_1717478773at_nat(hAPP_l710375585st_nat(cOMBC_950362600st_nat(append_nat),Ys)),Xs) ).

fof(fact_603_comm__semiring__1__class_Onormalizing__semiring__rules_I22_J,axiom,
    ! [A_67,C_35,D_7] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_35),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_67),D_7)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_67),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_35),D_7)) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa,axiom,
    ! [B_1_1,B_2_1] : is_Arr1861959080le_alt(hAPP_l1105242632le_alt(B_1_1,B_2_1)) ).

fof(fact_880_length__Suc__conv,axiom,
    ! [Xs,N_1] :
      ( ? [Y_25,Ys_6] :
          ( Xs = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6)
          & N_1 = hAPP_list_bool_nat(size_size_list_bool,Ys_6)
          & is_bool(Y_25) )
    <=> hAPP_list_bool_nat(size_size_list_bool,Xs) = hAPP_nat_nat(suc,N_1) ) ).

fof(fact_891_set__diff__eq,axiom,
    ! [A,B] : hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,A),B) = collec1729629178le_alt(cOMBS_1393264256l_bool(cOMBB_803794783le_alt(fconj,hAPP_f2014742713t_bool(cOMBC_1745481870l_bool(member1071917752le_alt),A)),cOMBB_2104979073le_alt(fNot,hAPP_f2014742713t_bool(cOMBC_1745481870l_bool(member1071917752le_alt),B)))) ).

fof(help_If_2_1_If_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu,axiom,
    ! [X,Y] : Y = if_lis1340954026le_alt(fFalse,X,Y) ).

fof(fact_781_min__max_Oinf__sup__distrib1,axiom,
    ! [X_47,Y_32,Z_16] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_47),Y_32)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_47),Z_16)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_47),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_32),Z_16)) ).

fof(fact_798_diff__cancel2,axiom,
    ! [M,K,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),K)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),K)) ).

fof(fact_831_diff__is__0__eq,axiom,
    ! [M_1,N_1] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_1),N_1) = zero_zero_nat
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ).

fof(help_fequal_1_1_fequal_000tc__Nat__Onat_T,axiom,
    ! [X,Y] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(fequal_nat,X),Y))
      | Y = X ) ).

fof(fact_622_le__refl,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),N)) ).

fof(fact_263_ListMem_Osimps,axiom,
    ! [A1,A2] :
      ( ( ( ? [X_4,Xs_19] :
              ( is_Arr1861959080le_alt(X_4)
              & A2 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Xs_19)
              & A1 = X_4 )
          | ? [X_4,Xs_19,Y_25] :
              ( is_Arr1861959080le_alt(X_4)
              & is_Arr1861959080le_alt(Y_25)
              & hBOOL(hAPP_l1386638586t_bool(listMe1065601537le_alt(X_4),Xs_19))
              & A2 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Xs_19)
              & A1 = X_4 ) )
      <=> hBOOL(hAPP_l1386638586t_bool(listMe1065601537le_alt(A1),A2)) )
     <= is_Arr1861959080le_alt(A1) ) ).

fof(gsy_c_hAPP_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000tc__HOL__Ob,axiom,
    ! [B_1_1,B_2_1] :
      ( is_Arr1861959080le_alt(B_2_1)
     => is_bool(hAPP_A862370221t_bool(B_1_1,B_2_1)) ) ).

fof(fact_948_Suc__lessD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_225_replicate__app__Cons__same,axiom,
    ! [N_1,X_1,Xs] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_bool_list_bool(replicate_bool(N_1),X_1)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_bool_list_bool(replicate_bool(N_1),X_1)),Xs)) ).

fof(fact_801_diff__add__inverse,axiom,
    ! [N,M] : M = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),M)),N) ).

fof(fact_811_diff__le__self,axiom,
    ! [M,N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)),M)) ).

fof(fact_213_distinct__tl,axiom,
    ! [Xs_59] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_59))
     => hBOOL(hAPP_list_nat_bool(distinct_nat,tl_nat(Xs_59))) ) ).

fof(fact_580_add__Suc__shift,axiom,
    ! [M,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(suc,M)),N) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),hAPP_nat_nat(suc,N)) ).

fof(fact_352_in__set__member,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
    <=> hBOOL(hAPP_nat_bool(hAPP_l1821533378t_bool(member_nat_1,Xs),X_1)) ) ).

fof(fact_157_replicate__append__same,axiom,
    ! [I_1,X_1] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_bool_list_bool(replicate_bool(I_1),X_1)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool)) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_bool_list_bool(replicate_bool(I_1),X_1)) ).

fof(fact_196_last__rev,axiom,
    ! [Xs_64] :
      ( nil_nat != Xs_64
     => hAPP_list_nat_nat(hd_nat,Xs_64) = hAPP_list_nat_nat(last_nat,rev_nat(Xs_64)) ) ).

fof(fact_1117_nth__equalityI,axiom,
    ! [Xs_20,Ys_3] :
      ( ( ! [I_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_20)))
           => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_20),I_4) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Ys_3),I_4) )
       => Ys_3 = Xs_20 )
     <= hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_3) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_20) ) ).

fof(fact_1029_add__diff__inverse,axiom,
    ! [M,N] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)) = M ) ).

fof(fact_1025_Suc__le__lessD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M)),N)) ) ).

fof(fact_745_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,R_1),S_1))
    <=> hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_f2014742713t_bool(cOMBC_1745481870l_bool(member1071917752le_alt),R_1)),hAPP_f2014742713t_bool(cOMBC_1745481870l_bool(member1071917752le_alt),S_1))) ) ).

fof(fact_35_butlast_Osimps_I1_J,axiom,
    butlas1262502241le_alt(nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(help_If_1_1_If_000tc__List__Olist_Itc__Nat__Onat_J_T,axiom,
    ! [X,Y] : X = if_list_nat(fTrue,X,Y) ).

fof(fact_750_full__nat__induct,axiom,
    ! [N_1,P_1] :
      ( hBOOL(hAPP_nat_bool(P_1,N_1))
     <= ! [N_19] :
          ( ! [M_5] :
              ( hBOOL(hAPP_nat_bool(P_1,M_5))
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M_5)),N_19)) )
         => hBOOL(hAPP_nat_bool(P_1,N_19)) ) ) ).

fof(fact_743_Max__fin__set__fold,axiom,
    ! [X_1,Xs] : foldl_nat_nat(ord_max_nat,X_1,Xs) = big_linorder_Max_nat(hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs))) ).

fof(fact_81_last__appendL,axiom,
    ! [Xs_85,Ys_27] :
      ( hAPP_list_nat_nat(last_nat,Xs_85) = hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_85),Ys_27))
     <= Ys_27 = nil_nat ) ).

fof(fact_734_min__max_Ole__supI1,axiom,
    ! [B_44,X_69,A_45] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_69),A_45))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_69),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_45),B_44))) ) ).

fof(fact_203_rotate1__hd__tl,axiom,
    ! [Xs_62] :
      ( nil_nat != Xs_62
     => hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,tl_nat(Xs_62)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,hAPP_list_nat_nat(hd_nat,Xs_62)),nil_nat)) = rotate1_nat(Xs_62) ) ).

fof(fact_355_dropWhile__neq__rev,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs))
     => ( dropWhile_nat(cOMBB_bool_bool_nat(fNot,hAPP_n1699378549t_bool(cOMBC_nat_nat_bool(fequal_nat),X_1)),rev_nat(Xs)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),rev_nat(takeWhile_nat(cOMBB_bool_bool_nat(fNot,hAPP_n1699378549t_bool(cOMBC_nat_nat_bool(fequal_nat),X_1)),Xs)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_1078_takeWhile__nth,axiom,
    ! [J_1,P_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs))))
     => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(takeWh536362254le_alt(P_1,Xs)),J_1) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),J_1) ) ).

fof(fact_635_add__mono,axiom,
    ! [C_31,D_6,A_63,B_61] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_63),C_31)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_61),D_6)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_31),D_6)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_63),B_61)) ) ).

fof(fact_799_diff__cancel,axiom,
    ! [K,M,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K),M)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K),N)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N) ).

fof(fact_688_set__sublist__subset,axiom,
    ! [Xs,I_11] : hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,sublis888024346le_alt(Xs,I_11))),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ).

fof(fact_299_sublist__singleton,axiom,
    ! [X_1,A] :
      ( ( sublist_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool),A) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool)
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A)) )
      & ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A))
       => sublist_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool),A) = nil_bool ) ) ).

fof(fact_349_ListMem__iff,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
    <=> hBOOL(hAPP_l1386638586t_bool(listMe1065601537le_alt(X_1),Xs)) ) ).

fof(fact_550_split__list__last__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4,Zs_2] :
          ( is_Arr1861959080le_alt(X_4)
          & ! [Xa] :
              ( ~ hBOOL(hAPP_A862370221t_bool(P_1,Xa))
             <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Zs_2))) )
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2)) )
     <= ? [X_4] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4)) ) ) ).

fof(fact_657_add__leE,axiom,
    ! [M,K,N] :
      ( ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),K)),N)) ) ).

fof(fact_401_in__set__conv__decomp__last,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
    <=> ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Zs_2)))
          & Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs_2)) ) ) ).

fof(fact_836_impossible__Cons,axiom,
    ! [X_39,Xs_35,Ys_11] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_39),Ys_11) != Xs_35
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_35)),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_11))) ) ).

fof(fact_913_order__less__le__trans,axiom,
    ! [Z_4,X_28,Y_20] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_28),Y_20))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_28),Z_4))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_20),Z_4)) ) ) ).

fof(fact_951_not__add__less2,axiom,
    ! [J,I] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),I)),I)) ).

fof(fact_178_Collect__def,axiom,
    ! [P_1] : P_1 = collect_nat(P_1) ).

fof(fact_130_append1__eq__conv,axiom,
    ! [Xs,X_1,Ys,Y_2] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),nil_nat)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat))
    <=> ( Y_2 = X_1
        & Xs = Ys ) ) ).

fof(fact_1054_length__pos__if__in__set,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_list_nat_nat(size_size_list_nat,Xs)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_394_dropWhile__append2,axiom,
    ! [Ys,P_1,Xs] :
      ( dropWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)) = dropWhile_nat(P_1,Ys)
     <= ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_514_list__all__simps_I2_J,axiom,
    ! [P_1] : hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),nil_Ar126264853le_alt)) ).

fof(fact_857_length__dropWhile__le,axiom,
    ! [P_1,Xs] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_nat_nat(size_size_list_nat,dropWhile_nat(P_1,Xs))),hAPP_list_nat_nat(size_size_list_nat,Xs))) ).

fof(fact_1091_rev__nth,axiom,
    ! [N_21,Xs_23] :
      ( hAPP_n401316912le_alt(nth_Ar1113433366le_alt(rev_Ar2093961333le_alt(Xs_23)),N_21) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_23),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_23)),hAPP_nat_nat(suc,N_21)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_21),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_23))) ) ).

fof(fact_864_length__splice,axiom,
    ! [Xs_32,Ys_9] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_32)),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_9)) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,splice360969192le_alt(Xs_32,Ys_9)) ).

fof(fact_360_distinct__sublistI,axiom,
    ! [I_11,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,sublis888024346le_alt(Xs,I_11))) ) ).

fof(fact_869_nth__append__length,axiom,
    ! [Xs_31,X_37,Ys_8] : hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_31),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_37),Ys_8))),hAPP_list_nat_nat(size_size_list_nat,Xs_31)) = X_37 ).

fof(fact_1087_nth__append,axiom,
    ! [Ys_5,N_22,Xs_25] :
      ( ( hAPP_nat_nat(nth_nat(Ys_5),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_22),hAPP_list_nat_nat(size_size_list_nat,Xs_25))) = hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_25),Ys_5)),N_22)
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_22),hAPP_list_nat_nat(size_size_list_nat,Xs_25))) )
      & ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_22),hAPP_list_nat_nat(size_size_list_nat,Xs_25)))
       => hAPP_nat_nat(nth_nat(Xs_25),N_22) = hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_25),Ys_5)),N_22) ) ) ).

fof(fact_1064_all__set__conv__all__nth,axiom,
    ! [P_1,Xs] :
      ( ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,X_4)) )
    <=> ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),I_4))) ) ) ).

fof(fact_1172_drop__tl,axiom,
    ! [N_4,Xs_3] : tl_Arr1453005548le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_4),Xs_3)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_4),tl_Arr1453005548le_alt(Xs_3)) ).

fof(fact_790_min__0R,axiom,
    ! [N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,N),zero_zero_nat) = zero_zero_nat ).

fof(fact_142_rev__induct,axiom,
    ! [Xs,P_1] :
      ( hBOOL(hAPP_list_nat_bool(P_1,nil_nat))
     => ( ! [X_4,Xs_19] :
            ( hBOOL(hAPP_list_nat_bool(P_1,Xs_19))
           => hBOOL(hAPP_list_nat_bool(P_1,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_19),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),nil_nat)))) )
       => hBOOL(hAPP_list_nat_bool(P_1,Xs)) ) ) ).

fof(fact_678_lift__Suc__mono__le,axiom,
    ! [N_1,N_20,F] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,N_1)),hAPP_nat_nat(F,N_20)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),N_20)) )
     <= ! [N_19] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,N_19)),hAPP_nat_nat(F,hAPP_nat_nat(suc,N_19)))) ) ).

fof(fact_439_split__list__last__prop__iff,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4,Zs_2] :
          ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2)) = Xs
          & hBOOL(hAPP_bool_bool(P_1,X_4))
          & ! [Xa] :
              ( is_bool(Xa)
             => ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Xa),hAPP_l96088310l_bool(set_bool,Zs_2)))
               => ~ hBOOL(hAPP_bool_bool(P_1,Xa)) ) )
          & is_bool(X_4) )
    <=> ? [X_4] :
          ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs)))
          & hBOOL(hAPP_bool_bool(P_1,X_4))
          & is_bool(X_4) ) ) ).

fof(fact_32_list__nonempty__induct,axiom,
    ! [P_1,Xs] :
      ( nil_nat != Xs
     => ( ( ! [X_4,Xs_19] :
              ( nil_nat != Xs_19
             => ( hBOOL(hAPP_list_nat_bool(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Xs_19)))
               <= hBOOL(hAPP_list_nat_bool(P_1,Xs_19)) ) )
         => hBOOL(hAPP_list_nat_bool(P_1,Xs)) )
       <= ! [X_4] : hBOOL(hAPP_list_nat_bool(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),nil_nat))) ) ) ).

fof(fact_965_less__or__eq__imp__le,axiom,
    ! [M,N] :
      ( ( M = N
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_994_order__less__not__sym,axiom,
    ! [X_14,Y_6] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_6),X_14))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_14),Y_6)) ) ).

fof(fact_109_append__is__Nil__conv,axiom,
    ! [Xs,Ys] :
      ( ( nil_nat = Ys
        & Xs = nil_nat )
    <=> nil_nat = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) ) ).

fof(fact_629_max__0L,axiom,
    ! [N] : N = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,zero_zero_nat),N) ).

fof(fact_976_add__strict__left__mono,axiom,
    ! [C_15,A_26,B_27] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_15),A_26)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_15),B_27)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_26),B_27)) ) ).

fof(fact_897_DiffD2,axiom,
    ! [C_2,A,B] :
      ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),B))
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,A),B))) ) ).

fof(fact_676_insort__is__Cons,axiom,
    ! [F,Aa,Xs] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Aa),Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),Aa),Xs)
     <= ! [X_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,Aa)),hAPP_nat_nat(F,X_4)))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_16_not__Cons__self,axiom,
    ! [Xs_97,X_126] : Xs_97 != hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_126),Xs_97) ).

fof(fact_386_hd__in__set,axiom,
    ! [Xs] :
      ( Xs != nil_Ar126264853le_alt
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs)),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_118_snoc__eq__iff__butlast,axiom,
    ! [Xs,X_1,Ys] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat)) = Ys
    <=> ( butlast_nat(Ys) = Xs
        & X_1 = hAPP_list_nat_nat(last_nat,Ys)
        & Ys != nil_nat ) ) ).

fof(fact_592_foldl__weak__invariant,axiom,
    ! [F,Xs,P_1,S_2] :
      ( ( ! [S_3,X_4] :
            ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
           => ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,S_3),X_4)))
             <= hBOOL(hAPP_nat_bool(P_1,S_3)) ) )
       => hBOOL(hAPP_nat_bool(P_1,foldl_nat_nat(F,S_2,Xs))) )
     <= hBOOL(hAPP_nat_bool(P_1,S_2)) ) ).

fof(fact_919_order__less__imp__le,axiom,
    ! [X_26,Y_18] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_26),Y_18))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_26),Y_18)) ) ).

fof(fact_324_sorted__insort,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),X_1),Xs)))
    <=> hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(hAPP_A1664620203t_bool(P,R),Q) = hAPP_A862370221t_bool(hAPP_A1664620203t_bool(cOMBC_1628726426t_bool(P),Q),R) ).

fof(fact_280_takeWhile_Osimps_I1_J,axiom,
    ! [P_1] : nil_Ar126264853le_alt = takeWh536362254le_alt(P_1,nil_Ar126264853le_alt) ).

fof(fact_522_take__0,axiom,
    ! [Xs_45] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,zero_zero_nat),Xs_45) = nil_Ar126264853le_alt ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oa,axiom,
    ! [B_1_1,B_2_1] : is_Arr1861959080le_alt(hAPP_n401316912le_alt(B_1_1,B_2_1)) ).

fof(fact_248_elem,axiom,
    ! [X_1,Xs] : hBOOL(hAPP_list_bool_bool(listMem_bool(X_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))) ).

fof(fact_503_in__set__remove1,axiom,
    ! [Xs,Aa,Ba] :
      ( Aa != Ba
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Aa),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,Ba),Xs))))
      <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Aa),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_303_listrelp_Osimps,axiom,
    ! [R_2,A1,A2] :
      ( hBOOL(hAPP_l1386638586t_bool(listre53232751le_alt(R_2,A1),A2))
    <=> ( ( nil_Ar126264853le_alt = A1
          & nil_Ar126264853le_alt = A2 )
        | ? [X_4,Y_25,Xs_19,Ys_6] :
            ( is_Arr1861959080le_alt(X_4)
            & is_Arr1861959080le_alt(Y_25)
            & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Xs_19) = A1
            & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Ys_6) = A2
            & hBOOL(hAPP_l1386638586t_bool(listre53232751le_alt(R_2,Xs_19),Ys_6))
            & hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(R_2,X_4),Y_25)) ) ) ) ).

fof(fact_1149_drop__take,axiom,
    ! [N_13,M_3,Xs_13] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_3),N_13)),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_13),Xs_13)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_13),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,M_3),Xs_13)) ).

fof(fact_235_eq__equal,axiom,
    fequal796301787le_alt = equal_499625528le_alt ).

fof(fact_1124_less__imp__Suc__add,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => ? [K_2] : hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),K_2)) = N ) ).

fof(fact_240_member__rec_I2_J,axiom,
    ! [Y_66] : ~ hBOOL(hAPP_A862370221t_bool(hAPP_l82377208t_bool(member345038890le_alt,nil_Ar126264853le_alt),Y_66)) ).

fof(fact_1058_nat__diff__split,axiom,
    ! [P_1,Aa,Ba] :
      ( ( ! [D] :
            ( Aa = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Ba),D)
           => hBOOL(hAPP_nat_bool(P_1,D)) )
        & ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Aa),Ba))
         => hBOOL(hAPP_nat_bool(P_1,zero_zero_nat)) ) )
    <=> hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,Aa),Ba))) ) ).

fof(fact_564_add__left__cancel,axiom,
    ! [Aa,Ba,C_2] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Aa),Ba) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Aa),C_2)
    <=> C_2 = Ba ) ).

fof(fact_1047_add__strict__increasing2,axiom,
    ! [B_6,C_4,A_5] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_5))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_6),C_4))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_6),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_5),C_4))) ) ) ).

fof(fact_168_hd__append,axiom,
    ! [Ys_17,Xs_68] :
      ( ( nil_Ar126264853le_alt != Xs_68
       => hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs_68) = hAPP_l1105242632le_alt(hd_Arr805754088le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_68),Ys_17)) )
      & ( hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Ys_17) = hAPP_l1105242632le_alt(hd_Arr805754088le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_68),Ys_17))
       <= nil_Ar126264853le_alt = Xs_68 ) ) ).

fof(fact_339_set__rotate1,axiom,
    ! [Xs] : hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs) = hAPP_l82377208t_bool(set_Ar1565008694le_alt,rotate1322903650le_alt(Xs)) ).

fof(fact_1099_takeWhile__eq__take__P__nth,axiom,
    ! [P_1,Xs,N_1] :
      ( ( ( ~ hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),N_1)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_nat_nat(size_size_list_nat,Xs))) )
       => takeWhile_nat(P_1,Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_1),Xs) )
     <= ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),N_1))
         => ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),I_4)))
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs))) ) ) ) ).

fof(fact_1007_min__max_Oless__infI1,axiom,
    ! [B_14,A_13,X_6] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_13),X_6))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_13),B_14)),X_6)) ) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__List__Olist_Itc__Arrow____Order____Mirabell,axiom,
    ! [P,Q] : hAPP_A408086601le_alt(cOMBK_1696648346le_alt(P),Q) = P ).

fof(fact_597_sum__eq__0__conv,axiom,
    ! [M_1,Ns] :
      ( ( ! [X_4] :
            ( X_4 = zero_zero_nat
           <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Ns))) )
        & zero_zero_nat = M_1 )
    <=> foldl_nat_nat(plus_plus_nat,M_1,Ns) = zero_zero_nat ) ).

fof(fact_1129_lift__Suc__mono__less__iff,axiom,
    ! [N_1,M_1,F] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),M_1))
      <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,N_1)),hAPP_nat_nat(F,M_1))) )
     <= ! [N_19] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,N_19)),hAPP_nat_nat(F,hAPP_nat_nat(suc,N_19)))) ) ).

fof(fact_143_rev__cases,axiom,
    ! [Xs] :
      ( ~ ! [Ys_6,Y_25] :
            ( Xs != hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),nil_bool))
           <= is_bool(Y_25) )
     <= Xs != nil_bool ) ).

fof(fact_15_not__Cons__self,axiom,
    ! [Xs,X_1] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) != Xs ).

fof(fact_441_split__list__last__prop__iff,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
          & hBOOL(hAPP_nat_bool(P_1,X_4)) )
    <=> ? [Ys_6,X_4,Zs_2] :
          ( ! [Xa] :
              ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Zs_2)))
             => ~ hBOOL(hAPP_nat_bool(P_1,Xa)) )
          & hBOOL(hAPP_nat_bool(P_1,X_4))
          & Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) ) ) ).

fof(fact_433_split__list,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] : Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Zs_2))
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ).

fof(fact_614_foldl__foldr,axiom,
    ! [F,Aa,Xs] : hAPP_nat_nat(foldr_nat_nat(cOMBC_nat_nat_nat(F),rev_nat(Xs)),Aa) = foldl_nat_nat(F,Aa,Xs) ).

fof(fact_789_min__0L,axiom,
    ! [N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,zero_zero_nat),N) = zero_zero_nat ).

fof(fact_469_nat__case__Suc,axiom,
    ! [F1,F2,Nat_3] : hAPP_n401316912le_alt(F2,Nat_3) = hAPP_n401316912le_alt(nat_ca391302041le_alt(F1,F2),hAPP_nat_nat(suc,Nat_3)) ).

fof(fact_683_set__subset__Cons,axiom,
    ! [Xs,X_1] : hBOOL(hAPP_f387058535l_bool(hAPP_f612708895l_bool(ord_le742797417l_bool,hAPP_l96088310l_bool(set_bool,Xs)),hAPP_l96088310l_bool(set_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)))) ).

fof(help_fFalse_1_1_T,axiom,
    ! [P] :
      ( ( fFalse = P
        | fTrue = P )
     <= is_bool(P) ) ).

fof(fact_870_nth__append__length__plus,axiom,
    ! [Xs,Ys,N_1] :
      ( hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),Ys)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_list_bool_nat(size_size_list_bool,Xs)),N_1)))
    <=> hBOOL(hAPP_nat_bool(nth_bool(Ys),N_1)) ) ).

fof(fact_1083_list__all__length,axiom,
    ! [P_1,Xs] :
      ( ! [N_19] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),N_19)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_19),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
    <=> hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),Xs)) ) ).

fof(fact_788_min__add__distrib__left,axiom,
    ! [X_44,Y_29,Z_13] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_44),Y_29)),Z_13) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X_44),Z_13)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y_29),Z_13)) ).

fof(fact_105_self__append__conv,axiom,
    ! [Xs,Ys] :
      ( nil_nat = Ys
    <=> hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) = Xs ) ).

fof(fact_815_eq__diff__iff,axiom,
    ! [N_1,K_3,M_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),N_1))
       => ( M_1 = N_1
        <=> hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_1),K_3) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_1),K_3) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),M_1)) ) ).

fof(fact_410_dropWhile__cong,axiom,
    ! [Q_1,P_1,L_2,K_3] :
      ( K_3 = L_2
     => ( dropWhile_nat(P_1,L_2) = dropWhile_nat(Q_1,K_3)
       <= ! [X_4] :
            ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,L_2)))
           => ( hBOOL(hAPP_nat_bool(Q_1,X_4))
            <=> hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ) ) ).

fof(fact_241_member__rec_I2_J,axiom,
    ! [Y_66] : ~ hBOOL(hAPP_nat_bool(hAPP_l1821533378t_bool(member_nat_1,nil_nat),Y_66)) ).

fof(fact_127_Cons__eq__append__conv,axiom,
    ! [X_1,Xs,Ys,Zs] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),Zs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)
    <=> ( ? [Ys_20] :
            ( Ys = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Ys_20)
            & hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_20),Zs) = Xs )
        | ( Zs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)
          & Ys = nil_nat ) ) ) ).

fof(fact_1128_lift__Suc__mono__less,axiom,
    ! [N_1,N_20,F] :
      ( ! [N_19] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,N_19)),hAPP_nat_nat(F,hAPP_nat_nat(suc,N_19))))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,N_1)),hAPP_nat_nat(F,N_20)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),N_20)) ) ) ).

fof(fact_313_takeWhile__not__last,axiom,
    ! [Xs] :
      ( nil_nat != Xs
     => ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs))
       => takeWhile_nat(cOMBB_bool_bool_nat(fNot,hAPP_n1699378549t_bool(cOMBC_nat_nat_bool(fequal_nat),hAPP_list_nat_nat(last_nat,Xs))),Xs) = butlast_nat(Xs) ) ) ).

fof(fact_183_equal__list__def,axiom,
    ! [X_1,Y_2] :
      ( Y_2 = X_1
    <=> hBOOL(hAPP_list_nat_bool(hAPP_l120351551t_bool(equal_equal_list_nat,X_1),Y_2)) ) ).

fof(help_fequal_2_1_fequal_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(fequal796301787le_alt,X),Y)) ) ).

fof(gsy_c_hAPP_000tc__HOL__Obool_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] :
      ( is_bool(B_2_1)
     => is_bool(hAPP_bool_bool(B_1_1,B_2_1)) ) ).

fof(fact_932_termination__basic__simps_I2_J,axiom,
    ! [Y,X,Z_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Z_3))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y),Z_3))) ) ).

fof(fact_528_take__Suc__Cons,axiom,
    ! [N_34,X_90,Xs_44] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_90),hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_34),Xs_44)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(suc,N_34)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_90),Xs_44)) ).

fof(fact_638_less__eq__nat_Osimps_I1_J,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),N)) ).

fof(fact_103_append__Nil2,axiom,
    ! [Xs_79] : Xs_79 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_79),nil_nat) ).

fof(fact_1084_list__all__length,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),Xs))
    <=> ! [N_19] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_19),hAPP_list_nat_nat(size_size_list_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),N_19))) ) ) ).

fof(fact_192_rev__append,axiom,
    ! [Xs_65,Ys_15] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,rev_nat(Ys_15)),rev_nat(Xs_65)) = rev_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_65),Ys_15)) ).

fof(fact_494_distinct__take,axiom,
    ! [I_12,Xs_50] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,I_12),Xs_50)))
     <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_50)) ) ).

fof(fact_456_Zero__not__Suc,axiom,
    ! [M] : zero_zero_nat != hAPP_nat_nat(suc,M) ).

fof(fact_323_in__set__sublistD,axiom,
    ! [X_1,Xs,I_11] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,sublist_nat(Xs,I_11)))) ) ).

fof(fact_936_less__nat__zero__code,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),zero_zero_nat)) ).

fof(fact_1068_distinct__conv__nth,axiom,
    ! [Xs] :
      ( ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs)))
         => ! [J_2] :
              ( ( J_2 != I_4
               => ~ ( hBOOL(hAPP_nat_bool(nth_bool(Xs),J_2))
                  <=> hBOOL(hAPP_nat_bool(nth_bool(Xs),I_4)) ) )
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_2),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) )
    <=> hBOOL(hAPP_list_bool_bool(distinct_bool,Xs)) ) ).

fof(fact_53_eq__Nil__null,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,Xs))
    <=> Xs = nil_Ar126264853le_alt ) ).

fof(fact_568_nat__add__left__cancel,axiom,
    ! [K_3,M_1,N_1] :
      ( N_1 = M_1
    <=> hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),N_1) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),M_1) ) ).

fof(fact_1062_all__set__conv__all__nth,axiom,
    ! [P_1,Xs] :
      ( ! [X_4] :
          ( ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs)))
           => hBOOL(hAPP_bool_bool(P_1,X_4)) )
         <= is_bool(X_4) )
    <=> ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs)))
         => hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),I_4))) ) ) ).

fof(fact_1095_dropWhile__nth,axiom,
    ! [J_1,P_1,Xs] :
      ( hAPP_nat_nat(nth_nat(dropWhile_nat(P_1,Xs)),J_1) = hAPP_nat_nat(nth_nat(Xs),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J_1),hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs))))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_list_nat_nat(size_size_list_nat,dropWhile_nat(P_1,Xs)))) ) ).

fof(fact_1067_nth__mem,axiom,
    ! [N_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_nat_nat(nth_nat(Xs),N_1)),hAPP_l1821533378t_bool(set_nat,Xs)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_nat_nat(size_size_list_nat,Xs))) ) ).

fof(fact_1021_Suc__le__eq,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M_1)),N_1)) ) ).

fof(fact_1035_list__eq__iff__nth__eq,axiom,
    ! [Xs,Ys] :
      ( ( ! [I_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs)))
           => hAPP_nat_nat(nth_nat(Ys),I_4) = hAPP_nat_nat(nth_nat(Xs),I_4) )
        & hAPP_list_nat_nat(size_size_list_nat,Xs) = hAPP_list_nat_nat(size_size_list_nat,Ys) )
    <=> Xs = Ys ) ).

fof(fact_778_min__max_Osup__inf__absorb,axiom,
    ! [X_50,Y_35] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_50),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_50),Y_35)) = X_50 ).

fof(fact_926_order__le__less,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2))
        | Y_2 = X_1 ) ) ).

fof(fact_627_max__add__distrib__left,axiom,
    ! [X_88,Y_62,Z_26] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X_88),Z_26)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y_62),Z_26)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_88),Y_62)),Z_26) ).

fof(fact_444_sublist__Cons,axiom,
    ! [X_1,L_2,A] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,if_list_nat(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat),nil_nat)),sublist_nat(L_2,collect_nat(hAPP_f800510211t_bool(cOMBC_226598744l_bool(cOMBB_1146692694ol_nat(member_nat,suc)),A)))) = sublist_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),L_2),A) ).

fof(fact_173_rev__is__rev__conv,axiom,
    ! [Xs,Ys] :
      ( rev_Ar2093961333le_alt(Ys) = rev_Ar2093961333le_alt(Xs)
    <=> Xs = Ys ) ).

fof(fact_944_less__SucI,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_187_Nil__is__rev__conv,axiom,
    ! [Xs] :
      ( nil_Ar126264853le_alt = Xs
    <=> rev_Ar2093961333le_alt(Xs) = nil_Ar126264853le_alt ) ).

fof(fact_822_length__rotate1,axiom,
    ! [Xs_36] : hAPP_list_nat_nat(size_size_list_nat,rotate1_nat(Xs_36)) = hAPP_list_nat_nat(size_size_list_nat,Xs_36) ).

fof(fact_844_le__imp__diff__is__add,axiom,
    ! [K_3,I_1,J_1] :
      ( ( K_3 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J_1),I_1)
      <=> J_1 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),I_1) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1)) ) ).

fof(fact_1014_less__Suc__eq__0__disj,axiom,
    ! [M_1,N_1] :
      ( ( M_1 = zero_zero_nat
        | ? [J_2] :
            ( M_1 = hAPP_nat_nat(suc,J_2)
            & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_2),N_1)) ) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),hAPP_nat_nat(suc,N_1))) ) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Nat__Onat_J_000tc__fun_Itc__List__O,axiom,
    ! [P,Q,R] : hAPP_l710375585st_nat(P,hAPP_nat_list_nat(Q,R)) = hAPP_n280362926st_nat(cOMBB_472649634at_nat(P,Q),R) ).

fof(fact_1195_upt__conv__Nil,axiom,
    ! [J,I] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J),I))
     => nil_nat = hAPP_nat_list_nat(upt(I),J) ) ).

fof(fact_860_takeWhile__eq__take,axiom,
    ! [P_1,Xs] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs))),Xs) = takeWh536362254le_alt(P_1,Xs) ).

fof(fact_111_append__self__conv,axiom,
    ! [Xs,Ys] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) = Xs
    <=> Ys = nil_nat ) ).

fof(fact_334_set__takeWhileD,axiom,
    ! [X_1,P_1,Xs] :
      ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_1))
        & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,takeWh536362254le_alt(P_1,Xs)))) ) ).

fof(fact_871_nth__append__length__plus,axiom,
    ! [Xs_30,Ys_7,N_26] : hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Ys_7),N_26) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_30),Ys_7)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_30)),N_26)) ).

fof(fact_1109_psubsetD,axiom,
    ! [C_2,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),B))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),A)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le382113706t_bool,A),B)) ) ).

fof(fact_705_le__max__iff__disj,axiom,
    ! [Z,X_1,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z),Y_2))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z),X_1)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_1),Y_2))) ) ).

fof(fact_885_zero__induct__lemma,axiom,
    ! [I_1,P_1,K_3] :
      ( ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,K_3),I_1)))
       <= ! [N_19] :
            ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(suc,N_19)))
           => hBOOL(hAPP_nat_bool(P_1,N_19)) ) )
     <= hBOOL(hAPP_nat_bool(P_1,K_3)) ) ).

fof(fact_83_last__appendR,axiom,
    ! [Xs_84,Ys_26] :
      ( Ys_26 != nil_nat
     => hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_84),Ys_26)) = hAPP_list_nat_nat(last_nat,Ys_26) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__List__Olist_Itc__Arrow____Order____,axiom,
    ! [P,Q,R] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(P,R),Q) = hAPP_n1875670159le_alt(hAPP_l382792410le_alt(cOMBC_1511969967le_alt(P),Q),R) ).

fof(fact_546_list_Osize_I2_J,axiom,
    ! [Fa,Aa,List_1] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(Fa,Aa)),list_size_nat(Fa,List_1))),hAPP_nat_nat(suc,zero_zero_nat)) = list_size_nat(Fa,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Aa),List_1)) ).

fof(fact_435_split__list,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     => ? [Ys_6,Zs_2] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Zs_2)) = Xs ) ).

fof(fact_774_min__max_Oinf_Oleft__commute,axiom,
    ! [B_34,A_33,C_18] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_33),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,B_34),C_18)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,B_34),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_33),C_18)) ).

fof(fact_953_trans__less__add1,axiom,
    ! [M,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),M)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J)) ) ).

fof(fact_66_last__ConsL,axiom,
    ! [X_1,Xs] :
      ( ( hBOOL(X_1)
      <=> hBOOL(hAPP_list_bool_bool(last_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))) )
     <= Xs = nil_bool ) ).

fof(fact_828_list_Osize_I3_J,axiom,
    hAPP_l1872264749lt_nat(size_s1873794948le_alt,nil_Ar126264853le_alt) = zero_zero_nat ).

fof(fact_43_splice__Nil2,axiom,
    ! [Xs_92] : Xs_92 = splice_nat(Xs_92,nil_nat) ).

fof(fact_1101_length__takeWhile__less__P__nth,axiom,
    ! [P_1,Xs,J_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs))))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
     <= ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),J_1))
         => hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4))) ) ) ).

fof(fact_927_less__le__not__le,axiom,
    ! [X_1,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2))
        & ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),X_1)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) ) ).

fof(fact_1186_nth__upt,axiom,
    ! [I,K,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K)),J))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K) = hAPP_nat_nat(nth_nat(hAPP_nat_list_nat(upt(I),J)),K) ) ).

fof(fact_708_max__ord__max,axiom,
    max_nat(ord_less_eq_nat) = ord_max_nat ).

fof(fact_878_Suc__length__conv,axiom,
    ! [N_1,Xs] :
      ( ? [Y_25,Ys_6] :
          ( hAPP_list_nat_nat(size_size_list_nat,Ys_6) = N_1
          & Xs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Ys_6) )
    <=> hAPP_nat_nat(suc,N_1) = hAPP_list_nat_nat(size_size_list_nat,Xs) ) ).

fof(fact_34_distinct__butlast,axiom,
    ! [Xs_95] :
      ( nil_nat != Xs_95
     => ( hBOOL(hAPP_list_nat_bool(distinct_nat,butlast_nat(Xs_95)))
       <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_95)) ) ) ).

fof(fact_184_equal__list__def,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,X_1),Y_2))
    <=> X_1 = Y_2 ) ).

fof(fact_432_split__list__last,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Zs_2)))
          & hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Zs_2)) = Xs )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_395_takeWhile__append2,axiom,
    ! [Ys,P_1,Xs] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),takeWh536362254le_alt(P_1,Ys)) = takeWh536362254le_alt(P_1,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys))
     <= ! [X_4] :
          ( is_Arr1861959080le_alt(X_4)
         => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
           => hBOOL(hAPP_A862370221t_bool(P_1,X_4)) ) ) ) ).

fof(fact_260_dropWhile__eq__Cons__conv,axiom,
    ! [P_1,Xs,Y_2,Ys] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys) = dropWh156852662le_alt(P_1,Xs)
    <=> ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,takeWh536362254le_alt(P_1,Xs)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys)) = Xs
        & ~ hBOOL(hAPP_A862370221t_bool(P_1,Y_2)) ) ) ).

fof(fact_1089_sorted__equals__nth__mono,axiom,
    ! [Xs] :
      ( ! [J_2] :
          ( ! [I_4] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(nth_nat(Xs),I_4)),hAPP_nat_nat(nth_nat(Xs),J_2)))
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_4),J_2)) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_2),hAPP_list_nat_nat(size_size_list_nat,Xs))) )
    <=> hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs)) ) ).

fof(fact_282_replicate__eq__replicate,axiom,
    ! [M_1,X_1,N_1,Y_2] :
      ( ( ( zero_zero_nat != M_1
         => X_1 = Y_2 )
        & M_1 = N_1 )
    <=> hAPP_nat_list_nat(replicate_nat(M_1),X_1) = hAPP_nat_list_nat(replicate_nat(N_1),Y_2) ) ).

fof(fact_752_list_Osize_I4_J,axiom,
    ! [Aa,List_1] : hAPP_list_bool_nat(size_size_list_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Aa),List_1)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_list_bool_nat(size_size_list_bool,List_1)),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_938_gr0I,axiom,
    ! [N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N))
     <= zero_zero_nat != N ) ).

fof(fact_588_replicate__add,axiom,
    ! [N_32,M_8,X_89] : hAPP_A832564074le_alt(replic351609551le_alt(hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N_32),M_8)),X_89) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_32),X_89)),hAPP_A832564074le_alt(replic351609551le_alt(M_8),X_89)) ).

fof(fact_491_take__Nil,axiom,
    ! [N_36] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_36),nil_nat) = nil_nat ).

fof(fact_952_nat__add__left__cancel__less,axiom,
    ! [K_3,M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),M_1)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),N_1))) ) ).

fof(fact_348_List_Omember__def,axiom,
    ! [Xs,X_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
    <=> hBOOL(hAPP_nat_bool(hAPP_l1821533378t_bool(member_nat_1,Xs),X_1)) ) ).

fof(fact_1031_diff__less__mono,axiom,
    ! [C_5,A_8,B_9] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,A_8),C_5)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,B_9),C_5)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_5),A_8)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_8),B_9)) ) ).

fof(fact_1050_add__pos__nonneg,axiom,
    ! [B_3,A_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_2))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_2),B_3)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_3)) ) ) ).

fof(fact_131_butlast__append,axiom,
    ! [Xs_76,Ys_19] :
      ( ( Ys_19 = nil_Ar126264853le_alt
       => butlas1262502241le_alt(Xs_76) = butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_76),Ys_19)) )
      & ( butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_76),Ys_19)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_76),butlas1262502241le_alt(Ys_19))
       <= nil_Ar126264853le_alt != Ys_19 ) ) ).

fof(fact_634_add__left__mono,axiom,
    ! [C_32,A_64,B_62] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_64),B_62))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_32),A_64)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_32),B_62))) ) ).

fof(fact_785_length__rev,axiom,
    ! [Xs_41] : hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_41) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,rev_Ar2093961333le_alt(Xs_41)) ).

fof(fact_636_add__le__imp__le__right,axiom,
    ! [A_62,C_30,B_60] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_62),B_60))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_62),C_30)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_60),C_30))) ) ).

fof(fact_979_add__less__imp__less__left,axiom,
    ! [C_12,A_23,B_24] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_23),B_24))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_12),A_23)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_12),B_24))) ) ).

fof(fact_882_length__Suc__conv,axiom,
    ! [Xs,N_1] :
      ( hAPP_nat_nat(suc,N_1) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)
    <=> ? [Y_25,Ys_6] :
          ( hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_6) = N_1
          & Xs = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Ys_6)
          & is_Arr1861959080le_alt(Y_25) ) ) ).

fof(fact_567_nat__add__right__cancel,axiom,
    ! [M_1,K_3,N_1] :
      ( M_1 = N_1
    <=> hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N_1),K_3) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),K_3) ) ).

fof(fact_300_sublist__singleton,axiom,
    ! [X_1,A] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A))
       => sublis888024346le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt),A) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt) )
      & ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,zero_zero_nat),A))
       => sublis888024346le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt),A) = nil_Ar126264853le_alt ) ) ).

fof(fact_850_take__all,axiom,
    ! [Xs_33,N_27] :
      ( Xs_33 = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_27),Xs_33)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_33)),N_27)) ) ).

fof(fact_640_Suc__n__not__le__n,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N)),N)) ).

fof(fact_620_le0,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),N)) ).

fof(fact_714_min__max_Osup__mono,axiom,
    ! [B_49,D_5,A_51,C_22] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_51),B_49)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,C_22),D_5)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_49),D_5)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_51),C_22)) ) ).

fof(gsy_c_hAPP_000tc__Nat__Onat_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_nat_bool(B_1_1,B_2_1)) ).

fof(fact_419_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : option468438226le_alt(map_fi1996871376le_alt(F,Xs),hAPP_l618618165le_alt(cOMBC_1919297930le_alt(cons_A1216297413le_alt),map_fi1996871376le_alt(F,Xs)),hAPP_b803953466le_alt(F,X_1)) = map_fi1996871376le_alt(F,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) ).

fof(fact_949_Suc__less__SucD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N))) ) ).

fof(fact_866_diff__Suc__diff__eq1,axiom,
    ! [M,K,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),K)),hAPP_nat_nat(suc,J)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K))) ) ).

fof(fact_126_Cons__eq__append__conv,axiom,
    ! [X_1,Xs,Ys,Zs] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),Zs) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)
    <=> ( ( Ys = nil_Ar126264853le_alt
          & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs) = Zs )
        | ? [Ys_20] :
            ( Ys = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Ys_20)
            & Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_20),Zs) ) ) ) ).

fof(fact_581_add__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(suc,M)),N) ).

fof(fact_30_list__nonempty__induct,axiom,
    ! [P_1,Xs] :
      ( Xs != nil_bool
     => ( ( hBOOL(hAPP_list_bool_bool(P_1,Xs))
         <= ! [X_4,Xs_19] :
              ( is_bool(X_4)
             => ( Xs_19 != nil_bool
               => ( hBOOL(hAPP_list_bool_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19)))
                 <= hBOOL(hAPP_list_bool_bool(P_1,Xs_19)) ) ) ) )
       <= ! [X_4] :
            ( is_bool(X_4)
           => hBOOL(hAPP_list_bool_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),nil_bool))) ) ) ) ).

fof(fact_571_nat__add__commute,axiom,
    ! [M,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),M) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N) ).

fof(fact_1193_length__upt,axiom,
    ! [I,J] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),I) = hAPP_list_nat_nat(size_size_list_nat,hAPP_nat_list_nat(upt(I),J)) ).

fof(help_If_3_1_If_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu,axiom,
    ! [P] :
      ( ( P = fFalse
        | P = fTrue )
     <= is_bool(P) ) ).

fof(fact_218_distinct1__rotate,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs))
    <=> hBOOL(hAPP_list_nat_bool(distinct_nat,rotate1_nat(Xs))) ) ).

fof(fact_521_list__all__rev,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),rev_Ar2093961333le_alt(Xs)))
    <=> hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),Xs)) ) ).

fof(fact_982_xt1_I10_J,axiom,
    ! [Z_2,Y_11,X_19] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z_2),Y_11))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z_2),X_19)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_11),X_19)) ) ).

fof(fact_1_distinct_Osimps_I1_J,axiom,
    hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,nil_Ar126264853le_alt)) ).

fof(fact_316_List_Oinsert__def,axiom,
    ! [X_1,Xs] :
      ( ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
       => hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_1),Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs) )
      & ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
       => Xs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_1),Xs) ) ) ).

fof(fact_721_min__max_Osup_Oidem,axiom,
    ! [A_50] : A_50 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_50),A_50) ).

fof(fact_305_list_Osize_I1_J,axiom,
    ! [Fa] : zero_zero_nat = list_s1237850263le_alt(Fa,nil_Ar126264853le_alt) ).

fof(fact_1048_add__strict__increasing,axiom,
    ! [B_5,C_3,A_4] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_5),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_4),C_3)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_5),C_3)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_4)) ) ).

fof(fact_393_dropWhile__append2,axiom,
    ! [Ys,P_1,Xs] :
      ( dropWh156852662le_alt(P_1,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)) = dropWh156852662le_alt(P_1,Ys)
     <= ! [X_4] :
          ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
         <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_315_List_Oinsert__def,axiom,
    ! [X_1,Xs] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
       => Xs = hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_1),Xs) )
      & ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_1),Xs) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)
       <= ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ) ).

fof(fact_421_split__list__first__propE,axiom,
    ! [P_1,Xs] :
      ( ~ ! [Ys_6,X_4] :
            ( is_bool(X_4)
           => ( ? [Zs_2] : Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2))
             => ( ~ ! [Xa] :
                      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Xa),hAPP_l96088310l_bool(set_bool,Ys_6)))
                     => ~ hBOOL(hAPP_bool_bool(P_1,Xa)) )
               <= hBOOL(hAPP_bool_bool(P_1,X_4)) ) ) )
     <= ? [X_4] :
          ( hBOOL(hAPP_bool_bool(P_1,X_4))
          & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_687_set__remove1__subset,axiom,
    ! [X_1,Xs] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),Xs))),hAPP_l1821533378t_bool(set_nat,Xs))) ).

fof(fact_194_distinct__rev,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs))
    <=> hBOOL(hAPP_list_nat_bool(distinct_nat,rev_nat(Xs))) ) ).

fof(fact_796_Suc__diff__diff,axiom,
    ! [M,N,K] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(suc,M)),N)),hAPP_nat_nat(suc,K)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)),K) ).

fof(fact_518_list__all__append,axiom,
    ! [P_1,Xs,Ys] :
      ( ( hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),Xs))
        & hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),Ys)) )
    <=> hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys))) ) ).

fof(fact_90_last__snoc,axiom,
    ! [Xs_82,X_116] :
      ( hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_82),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_116),nil_Ar126264853le_alt))) = X_116
     <= is_Arr1861959080le_alt(X_116) ) ).

fof(fact_224_rev__singleton__conv,axiom,
    ! [Xs,X_1] :
      ( rev_nat(Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat)
    <=> hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat) = Xs ) ).

fof(fact_270_last__replicate,axiom,
    ! [X_99,N_40] :
      ( ( hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_40),X_99)) = X_99
       <= N_40 != zero_zero_nat )
     <= is_Arr1861959080le_alt(X_99) ) ).

fof(help_fTrue_1_1_U,axiom,
    hBOOL(fTrue) ).

fof(fact_803_diff__commute,axiom,
    ! [I,J,K] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,I),K)),J) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,I),J)),K) ).

fof(fact_829_length__0__conv,axiom,
    ! [Xs] :
      ( Xs = nil_nat
    <=> hAPP_list_nat_nat(size_size_list_nat,Xs) = zero_zero_nat ) ).

fof(fact_694_ord__eq__le__trans,axiom,
    ! [C_26,A_56,B_54] :
      ( A_56 = B_54
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_56),C_26))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_54),C_26)) ) ) ).

fof(fact_477_nat__induct,axiom,
    ! [N_1,P_1] :
      ( hBOOL(hAPP_nat_bool(P_1,zero_zero_nat))
     => ( hBOOL(hAPP_nat_bool(P_1,N_1))
       <= ! [N_19] :
            ( hBOOL(hAPP_nat_bool(P_1,N_19))
           => hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(suc,N_19))) ) ) ) ).

fof(fact_1180_drop__append,axiom,
    ! [N_2,Xs_1,Ys_1] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_2),Xs_1)),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_2),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_1))),Ys_1)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_2),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_1),Ys_1)) ).

fof(fact_205_tl_Osimps_I2_J,axiom,
    ! [X_106,Xs_61] : Xs_61 = tl_Arr1453005548le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_106),Xs_61)) ).

fof(fact_512_list__all__simps_I1_J,axiom,
    ! [P_1,X_1,Xs] :
      ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_1))
        & hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),Xs)) )
    <=> hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(P_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs))) ) ).

fof(fact_617_elem__le__sum,axiom,
    ! [N_1,Ns] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,N_1),hAPP_l1821533378t_bool(set_nat,Ns)))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),foldl_nat_nat(plus_plus_nat,zero_zero_nat,Ns))) ) ).

fof(fact_619_bool_Osize_I2_J,axiom,
    hAPP_bool_nat(bool_size,fFalse) = zero_zero_nat ).

fof(help_fequal_1_1_fequal_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tp,axiom,
    ! [X,Y] :
      ( X = Y
      | ~ hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(fequal796301787le_alt,X),Y)) ) ).

fof(fact_70_append__assoc,axiom,
    ! [Xs_87,Ys_29,Zs_6] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_87),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_29),Zs_6)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_87),Ys_29)),Zs_6) ).

fof(fact_1042_list__size__estimation,axiom,
    ! [Y_2,F,X_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),hAPP_A2113590458lt_nat(F,X_1)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),list_s1237850263le_alt(F,Xs))) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_904_less__zeroE,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),zero_zero_nat)) ).

fof(fact_138_last__ConsR,axiom,
    ! [X_112,Xs_73] :
      ( hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_112),Xs_73)) = hAPP_l1105242632le_alt(last_A57386030le_alt,Xs_73)
     <= Xs_73 != nil_Ar126264853le_alt ) ).

fof(fact_596_add__0__iff,axiom,
    ! [Ba,Aa] :
      ( zero_zero_nat = Aa
    <=> hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Ba),Aa) = Ba ) ).

fof(fact_1033_list__eq__iff__nth__eq,axiom,
    ! [Xs,Ys] :
      ( Ys = Xs
    <=> ( ! [I_4] :
            ( ( hBOOL(hAPP_nat_bool(nth_bool(Xs),I_4))
            <=> hBOOL(hAPP_nat_bool(nth_bool(Ys),I_4)) )
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs))) )
        & hAPP_list_bool_nat(size_size_list_bool,Ys) = hAPP_list_bool_nat(size_size_list_bool,Xs) ) ) ).

fof(fact_1107_list__size__pointwise,axiom,
    ! [F,G,Xs] :
      ( ! [X_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,X_4)),hAPP_nat_nat(G,X_4)))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) )
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,list_size_nat(F,Xs)),list_size_nat(G,Xs))) ) ).

fof(gsy_v_b,hypothesis,
    is_Arr1861959080le_alt(b) ).

fof(fact_1096_sorted__nth__monoI,axiom,
    ! [Xs_22] :
      ( ! [I_4,J_2] :
          ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_2),hAPP_list_nat_nat(size_size_list_nat,Xs_22)))
           => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(nth_nat(Xs_22),I_4)),hAPP_nat_nat(nth_nat(Xs_22),J_2))) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_4),J_2)) )
     => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_22)) ) ).

fof(help_fdisj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Nat__Onat_Mtc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f54304608l_bool(B_1_1,B_2_1)) ).

fof(fact_396_takeWhile__append2,axiom,
    ! [Ys,P_1,Xs] :
      ( takeWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),takeWhile_nat(P_1,Ys))
     <= ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_1079_takeWhile__nth,axiom,
    ! [J_1,P_1,Xs] :
      ( hAPP_nat_nat(nth_nat(Xs),J_1) = hAPP_nat_nat(nth_nat(takeWhile_nat(P_1,Xs)),J_1)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs)))) ) ).

fof(fact_403_in__set__conv__decomp__first,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Ys_6)))
          & hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Zs_2)) = Xs )
    <=> hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Oboo_003,axiom,
    ! [P,Q,R] : hAPP_b589554111l_bool(P,hAPP_A862370221t_bool(Q,R)) = hAPP_A822657487l_bool(cOMBB_803794783le_alt(P,Q),R) ).

fof(fact_542_take__equalityI,axiom,
    ! [Xs_42,Ys_14] :
      ( Ys_14 = Xs_42
     <= ! [I_4] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,I_4),Xs_42) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,I_4),Ys_14) ) ).

fof(fact_698_order__antisym,axiom,
    ! [X_83,Y_58] :
      ( ( X_83 = Y_58
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_58),X_83)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_83),Y_58)) ) ).

fof(fact_816_Nat_Odiff__diff__eq,axiom,
    ! [N,K,M] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N))
       => hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),K)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),K)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),M)) ) ).

fof(fact_113_append__self__conv2,axiom,
    ! [Xs,Ys] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) = Ys
    <=> Xs = nil_nat ) ).

fof(fact_908_less__imp__diff__less,axiom,
    ! [N,J,K] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J),K))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),N)),K)) ) ).

fof(fact_802_diff__add__inverse2,axiom,
    ! [M,N] : M = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N)),N) ).

fof(fact_720_set__mp,axiom,
    ! [X_1,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A)) ) ) ).

fof(fact_675_sorted_Osimps,axiom,
    ! [Aa] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Aa))
    <=> ( Aa = nil_nat
        | ? [Xs_19,X_4] :
            ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Xs_19) = Aa
            & hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_19))
            & ! [Xa] :
                ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Xs_19)))
               => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_4),Xa)) ) ) ) ) ).

fof(fact_217_distinct1__rotate,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,rotate1322903650le_alt(Xs)))
    <=> hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs)) ) ).

fof(fact_716_in__mono,axiom,
    ! [X_1,A,B] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) ) ).

fof(fact_819_min__le__iff__disj,axiom,
    ! [X_1,Y_2,Z] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),Z))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Z)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_1),Y_2)),Z)) ) ).

fof(fact_1175_drop__eq__Nil,axiom,
    ! [N_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_nat_nat(size_size_list_nat,Xs)),N_1))
    <=> nil_nat = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_1),Xs) ) ).

fof(fact_606_foldl__fun__comm,axiom,
    ! [S_2,Xs,X_1,F] :
      ( ! [X_4,Y_25,S_3] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,S_3),X_4)),Y_25) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,S_3),Y_25)),X_4)
     => foldl_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,S_2),X_1),Xs) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,foldl_nat_nat(F,S_2,Xs)),X_1) ) ).

fof(fact_856_length__insort,axiom,
    ! [F,X_1,Xs] : hAPP_nat_nat(suc,hAPP_list_nat_nat(size_size_list_nat,Xs)) = hAPP_list_nat_nat(size_size_list_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),Xs)) ).

fof(fact_837_diff__diff__right,axiom,
    ! [I,K,J] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K)),J) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J)) ) ).

fof(fact_453_nat_Osimps_I3_J,axiom,
    ! [Nat_5] : hAPP_nat_nat(suc,Nat_5) != zero_zero_nat ).

fof(fact_959_less__max__iff__disj,axiom,
    ! [Z,X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_1),Y_2)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z),X_1))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z),Y_2)) ) ) ).

fof(fact_1169_tl__drop,axiom,
    ! [N_5,Xs_4] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_5),tl_nat(Xs_4)) = tl_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_5),Xs_4)) ).

fof(fact_155_not__distinct__decomp,axiom,
    ! [Ws] :
      ( ~ hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Ws))
     => ? [Xs_19,Ys_6,Zs_2,Y_25] :
          ( is_Arr1861959080le_alt(Y_25)
          & Ws = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_19),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),nil_Ar126264853le_alt)),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),nil_Ar126264853le_alt)),Zs_2)))) ) ) ).

fof(fact_1151_append__take__drop__id,axiom,
    ! [N_12,Xs_12] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_12),Xs_12)),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_12),Xs_12)) = Xs_12 ).

fof(fact_33_distinct__butlast,axiom,
    ! [Xs_95] :
      ( nil_Ar126264853le_alt != Xs_95
     => ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,butlas1262502241le_alt(Xs_95)))
       <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_95)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__Nat__Onat_000tc__fun_Itc__fun_Itc__Nat__Onat_Mtc__HO,axiom,
    ! [P,Q,R] : hAPP_n215258509l_bool(P,hAPP_nat_nat(Q,R)) = hAPP_n215258509l_bool(cOMBB_1146692694ol_nat(P,Q),R) ).

fof(fact_605_sort__key__simps_I2_J,axiom,
    ! [F,X_1,Xs] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),linord852754176at_nat(F,Xs)) = linord852754176at_nat(F,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) ).

fof(fact_97_Cons__eq__appendI,axiom,
    ! [Xs_80,Zs_4,X_114,Xs1,Ys_23] :
      ( ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_23),Zs_4) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_114),Xs_80)
       <= hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs1),Zs_4) = Xs_80 )
     <= hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_114),Xs1) = Ys_23 ) ).

fof(fact_830_length__0__conv,axiom,
    ! [Xs] :
      ( zero_zero_nat = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)
    <=> nil_Ar126264853le_alt = Xs ) ).

fof(fact_154_not__distinct__decomp,axiom,
    ! [Ws_1] :
      ( ? [Xs_19,Ys_6,Zs_2,Y_25] :
          ( is_bool(Y_25)
          & hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs_19),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),nil_bool)),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),nil_bool)),Zs_2)))) = Ws_1 )
     <= ~ hBOOL(hAPP_list_bool_bool(distinct_bool,Ws_1)) ) ).

fof(fact_992_order__less__imp__not__eq,axiom,
    ! [X_16,Y_8] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_16),Y_8))
     => X_16 != Y_8 ) ).

fof(fact_729_min__max_Osup__assoc,axiom,
    ! [X_72,Y_50,Z_22] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_72),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_50),Z_22)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_72),Y_50)),Z_22) ).

fof(fact_277_listrelp_OCons,axiom,
    ! [Xs,Ys,R_2,X_1,Y_2] :
      ( ( hBOOL(hAPP_list_bool_bool(listrelp_bool(R_2,Xs),Ys))
       => hBOOL(hAPP_list_bool_bool(listrelp_bool(R_2,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Ys))) )
     <= hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(R_2,X_1),Y_2)) ) ).

fof(fact_253_dropWhile_Osimps_I2_J,axiom,
    ! [Xs,P_1,X_1] :
      ( ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs) = dropWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs))
       <= ~ hBOOL(hAPP_nat_bool(P_1,X_1)) )
      & ( dropWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) = dropWhile_nat(P_1,Xs)
       <= hBOOL(hAPP_nat_bool(P_1,X_1)) ) ) ).

fof(fact_621_nat__size,axiom,
    ! [N] : N = hAPP_nat_nat(size_size_nat,N) ).

fof(fact_426_split__list__last__propE,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_nat_bool(P_1,X_4))
          & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) )
     => ~ ! [Ys_6,X_4,Zs_2] :
            ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) = Xs
           => ( hBOOL(hAPP_nat_bool(P_1,X_4))
             => ~ ! [Xa] :
                    ( ~ hBOOL(hAPP_nat_bool(P_1,Xa))
                   <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Zs_2))) ) ) ) ) ).

fof(fact_519_list__all__append,axiom,
    ! [P_1,Xs,Ys] :
      ( hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)))
    <=> ( hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),Xs))
        & hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),Ys)) ) ) ).

fof(fact_6_list_Osimps_I3_J,axiom,
    ! [A_84,List_2] : nil_bool != hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,A_84),List_2) ).

fof(fact_197_hd__rev,axiom,
    ! [Xs_63] :
      ( nil_Ar126264853le_alt != Xs_63
     => hAPP_l1105242632le_alt(last_A57386030le_alt,Xs_63) = hAPP_l1105242632le_alt(hd_Arr805754088le_alt,rev_Ar2093961333le_alt(Xs_63)) ) ).

fof(fact_1150_append__take__drop__id,axiom,
    ! [N_12,Xs_12] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_12),Xs_12)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_12),Xs_12)) = Xs_12 ).

fof(fact_0_alt3,axiom,
    ? [A_74,B_1,C] :
      ( is_Arr1861959080le_alt(B_1)
      & is_Arr1861959080le_alt(C)
      & hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_74),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,B_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,C),nil_Ar126264853le_alt)))))
      & is_Arr1861959080le_alt(A_74) ) ).

fof(fact_996_linorder__neqE,axiom,
    ! [X_12,Y_4] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_4),X_12))
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_12),Y_4)) )
     <= X_12 != Y_4 ) ).

fof(fact_437_split__list__first__prop__iff,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( is_Arr1861959080le_alt(X_4)
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & ! [Xa] :
              ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,Xa))
               <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Ys_6))) )
             <= is_Arr1861959080le_alt(Xa) )
          & ? [Zs_2] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2)) = Xs )
    <=> ? [X_4] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_589_replicate__add,axiom,
    ! [N_32,M_8,X_89] : hAPP_nat_list_nat(replicate_nat(hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N_32),M_8)),X_89) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(replicate_nat(N_32),X_89)),hAPP_nat_list_nat(replicate_nat(M_8),X_89)) ).

fof(fact_259_dropWhile__eq__Cons__conv,axiom,
    ! [P_1,Xs,Y_2,Ys] :
      ( ( Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,takeWhile_bool(P_1,Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Ys))
        & ~ hBOOL(hAPP_bool_bool(P_1,Y_2)) )
    <=> dropWhile_bool(P_1,Xs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Ys) ) ).

fof(fact_692_order__eq__refl,axiom,
    ! [X_84,Y_59] :
      ( Y_59 = X_84
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_84),Y_59)) ) ).

fof(fact_814_diff__diff__cancel,axiom,
    ! [I,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),N))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),I)) = I ) ).

fof(fact_561_add__imp__eq,axiom,
    ! [A_81,B_69,C_42] :
      ( B_69 = C_42
     <= hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_81),B_69) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_81),C_42) ) ).

fof(fact_26_splice_Osimps_I2_J,axiom,
    ! [V,Va] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,V),Va) = splice_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,V),Va),nil_nat) ).

fof(fact_257_distinct__dropWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,dropWhile_nat(P_1,Xs)))
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ).

fof(fact_88_maps__simps_I1_J,axiom,
    ! [F,X_1,Xs] : maps_bool_nat(F,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_bool_list_nat(F,X_1)),maps_bool_nat(F,Xs)) ).

fof(fact_422_split__list__first__propE,axiom,
    ! [P_1,Xs] :
      ( ~ ! [Ys_6,X_4] :
            ( ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
               => ~ ! [Xa] :
                      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Ys_6)))
                     => ~ hBOOL(hAPP_A862370221t_bool(P_1,Xa)) ) )
             <= ? [Zs_2] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2)) = Xs )
           <= is_Arr1861959080le_alt(X_4) )
     <= ? [X_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ) ).

fof(fact_848_length__append,axiom,
    ! [Xs_34,Ys_10] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_34)),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_10)) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_34),Ys_10)) ).

fof(conj_0,hypothesis,
    a != b ).

fof(fact_797_diff__Suc__Suc,axiom,
    ! [M,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(suc,M)),hAPP_nat_nat(suc,N)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N) ).

fof(fact_392_not__in__set__insert,axiom,
    ! [X_1,Xs] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_1),Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_637_add__le__imp__le__left,axiom,
    ! [C_29,A_61,B_59] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_29),A_61)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_29),B_59)))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_61),B_59)) ) ).

fof(fact_939_not__less__eq,axiom,
    ! [M_1,N_1] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_nat_nat(suc,M_1))) ) ).

fof(fact_275_listrelp_ONil,axiom,
    ! [R_2] : hBOOL(hAPP_l1386638586t_bool(listre53232751le_alt(R_2,nil_Ar126264853le_alt),nil_Ar126264853le_alt)) ).

fof(fact_1153_drop__replicate,axiom,
    ! [I_3,K_1,X_2] : hAPP_A832564074le_alt(replic351609551le_alt(hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,K_1),I_3)),X_2) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,I_3),hAPP_A832564074le_alt(replic351609551le_alt(K_1),X_2)) ).

fof(fact_945_Suc__lessI,axiom,
    ! [M,N] :
      ( ( hAPP_nat_nat(suc,M) != N
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M)),N)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N)) ) ).

fof(fact_229_equal,axiom,
    equal_499625528le_alt = fequal796301787le_alt ).

fof(fact_28_insert__Nil,axiom,
    ! [X_124] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_124),nil_Ar126264853le_alt) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_124),nil_Ar126264853le_alt) ).

fof(fact_160_rev_Osimps_I2_J,axiom,
    ! [X_1,Xs] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,rev_bool(Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool)) = rev_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) ).

fof(fact_545_list_Osize_I2_J,axiom,
    ! [Fa,Aa,List_1] : list_s1237850263le_alt(Fa,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),List_1)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_A2113590458lt_nat(Fa,Aa)),list_s1237850263le_alt(Fa,List_1))),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_649_le__iff__add,axiom,
    ! [M_1,N_1] :
      ( ? [K_2] : N_1 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),K_2)
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ).

fof(fact_308_hd__conv__nth,axiom,
    ! [Xs] :
      ( ( hBOOL(hAPP_nat_bool(nth_bool(Xs),zero_zero_nat))
      <=> hBOOL(hAPP_list_bool_bool(hd_bool,Xs)) )
     <= Xs != nil_bool ) ).

fof(fact_345_list__ex1__iff,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(list_e1226799320le_alt(P_1),Xs))
    <=> ? [X_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & ! [Y_25] :
              ( ( ( hBOOL(hAPP_A862370221t_bool(P_1,Y_25))
                  & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Y_25),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
               => Y_25 = X_4 )
             <= is_Arr1861959080le_alt(Y_25) )
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          & is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_872_nth__append__length__plus,axiom,
    ! [Xs_30,Ys_7,N_26] : hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_30),Ys_7)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_30)),N_26)) = hAPP_nat_nat(nth_nat(Ys_7),N_26) ).

fof(fact_575_add__0__left,axiom,
    ! [A_75] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,zero_zero_nat),A_75) = A_75 ).

fof(fact_119_append__butlast__last__id,axiom,
    ! [Xs] :
      ( Xs != nil_bool
     => hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,butlast_bool(Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,hAPP_list_bool_bool(last_bool,Xs)),nil_bool)) = Xs ) ).

fof(fact_328_set__ConsD,axiom,
    ! [Y_2,X_1,Xs] :
      ( ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_1) )
     => ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Y_2),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          | Y_2 = X_1 )
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Y_2),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)))) ) ) ).

fof(fact_92_append__Cons,axiom,
    ! [X_1,Xs,Ys] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),Ys)) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)),Ys) ).

fof(fact_200_append__replicate__commute,axiom,
    ! [N_43,X_107,K_6] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(replicate_nat(K_6),X_107)),hAPP_nat_list_nat(replicate_nat(N_43),X_107)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(replicate_nat(N_43),X_107)),hAPP_nat_list_nat(replicate_nat(K_6),X_107)) ).

fof(fact_73_append__eq__append__conv2,axiom,
    ! [Xs,Ys,Zs,Ts] :
      ( ? [Us_1] :
          ( ( Ts = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Us_1),Ys)
            & Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Zs),Us_1) )
          | ( Zs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Us_1)
            & hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Us_1),Ts) = Ys ) )
    <=> hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Zs),Ts) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) ) ).

fof(fact_497_remove1_Osimps_I2_J,axiom,
    ! [Xs,Y_2,X_1] :
      ( ( ( ~ hBOOL(Y_2)
        <=> hBOOL(X_1) )
       => hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(remove1_bool,X_1),Xs)) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(remove1_bool,X_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Xs)) )
      & ( Xs = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(remove1_bool,X_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Xs))
       <= ( hBOOL(Y_2)
        <=> hBOOL(X_1) ) ) ) ).

fof(fact_21_list_Oinject,axiom,
    ! [Aa,List_1,A_84,List_2] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Aa),List_1) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,A_84),List_2)
    <=> ( List_1 = List_2
        & ( hBOOL(Aa)
        <=> hBOOL(A_84) ) ) ) ).

fof(fact_479_nat_Oexhaust,axiom,
    ! [Y] :
      ( ~ ! [Nat_1] : hAPP_nat_nat(suc,Nat_1) != Y
     <= Y != zero_zero_nat ) ).

fof(fact_1009_add__less__le__mono,axiom,
    ! [C_6,D_1,A_11,B_12] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_6),D_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_11),C_6)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_12),D_1))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_11),B_12)) ) ).

fof(fact_1199_upt__add__eq__append,axiom,
    ! [K,I,J] :
      ( hAPP_nat_list_nat(upt(I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),K)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(upt(I),J)),hAPP_nat_list_nat(upt(J),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),K)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J)) ) ).

fof(fact_826_diff__add__0,axiom,
    ! [N,M] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),M)) = zero_zero_nat ).

fof(fact_372_in__set__replicate,axiom,
    ! [X_1,N_1,Y_2] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,hAPP_nat_list_nat(replicate_nat(N_1),Y_2))))
    <=> ( N_1 != zero_zero_nat
        & Y_2 = X_1 ) ) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf,axiom,
    ! [P,Q,R] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(cOMBC_1058495865le_alt(P),Q),R) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(P,R),Q) ).

fof(help_fequal_1_1_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_T,axiom,
    ! [X,Y] :
      ( ( is_Arr1861959080le_alt(X)
        & is_Arr1861959080le_alt(Y) )
     => ( Y = X
        | ~ hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(fequal1160105444le_alt,X),Y)) ) ) ).

fof(help_fequal_2_1_fequal_000tc__List__Olist_Itc__Nat__Onat_J_T,axiom,
    ! [X,Y] :
      ( hBOOL(hAPP_list_nat_bool(hAPP_l120351551t_bool(fequal_list_nat,X),Y))
      | X != Y ) ).

fof(fact_1093_dropWhile__nth,axiom,
    ! [J_1,P_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(nth_bool(Xs),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J_1),hAPP_list_bool_nat(size_size_list_bool,takeWhile_bool(P_1,Xs)))))
      <=> hBOOL(hAPP_nat_bool(nth_bool(dropWhile_bool(P_1,Xs)),J_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_list_bool_nat(size_size_list_bool,dropWhile_bool(P_1,Xs)))) ) ).

fof(fact_147_equal__Nil__null,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_list_nat_bool(hAPP_l120351551t_bool(equal_equal_list_nat,Xs),nil_nat))
    <=> hBOOL(hAPP_list_nat_bool(null_nat,Xs)) ) ).

fof(fact_112_append__self__conv2,axiom,
    ! [Xs,Ys] :
      ( Ys = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)
    <=> nil_Ar126264853le_alt = Xs ) ).

fof(help_fNot_1_1_U,axiom,
    ! [P] :
      ( ~ hBOOL(hAPP_bool_bool(fNot,P))
      | ~ hBOOL(P) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(P,hAPP_bool_bool(Q,R)) = hAPP_bool_bool(cOMBB_bool_bool_bool(P,Q),R) ).

fof(fact_268_hd__replicate,axiom,
    ! [X_100,N_41] :
      ( N_41 != zero_zero_nat
     => hAPP_list_nat_nat(hd_nat,hAPP_nat_list_nat(replicate_nat(N_41),X_100)) = X_100 ) ).

fof(help_COMBC_1_1_COMBC_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t_005,axiom,
    ! [P,Q,R] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(P,R),Q) = hAPP_A832564074le_alt(hAPP_l618618165le_alt(cOMBC_1919297930le_alt(P),Q),R) ).

fof(fact_84_last__append,axiom,
    ! [Xs_83,Ys_25] :
      ( ( Ys_25 = nil_Ar126264853le_alt
       => hAPP_l1105242632le_alt(last_A57386030le_alt,Xs_83) = hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_83),Ys_25)) )
      & ( nil_Ar126264853le_alt != Ys_25
       => hAPP_l1105242632le_alt(last_A57386030le_alt,Ys_25) = hAPP_l1105242632le_alt(last_A57386030le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_83),Ys_25)) ) ) ).

fof(fact_216_rotate1__is__Nil__conv,axiom,
    ! [Xs] :
      ( Xs = nil_nat
    <=> nil_nat = rotate1_nat(Xs) ) ).

fof(fact_279_listrelp_OCons,axiom,
    ! [Xs,Ys,R_2,X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(R_2,X_1),Y_2))
     => ( hBOOL(hAPP_list_nat_bool(listrelp_nat(R_2,Xs),Ys))
       => hBOOL(hAPP_list_nat_bool(listrelp_nat(R_2,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys))) ) ) ).

fof(fact_172_rev__is__rev__conv,axiom,
    ! [Xs,Ys] :
      ( Xs = Ys
    <=> rev_nat(Ys) = rev_nat(Xs) ) ).

fof(fact_658_max__Suc1,axiom,
    ! [N_1,M_1] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(suc,N_1)),M_1) = hAPP_nat_nat(nat_case_nat(hAPP_nat_nat(suc,N_1),cOMBB_nat_nat_nat(suc,hAPP_nat_fun_nat_nat(ord_max_nat,N_1))),M_1) ).

fof(fact_335_set__takeWhileD,axiom,
    ! [X_1,P_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(P_1,X_1))
        & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,takeWhile_nat(P_1,Xs)))) ) ).

fof(fact_701_xt1_I6_J,axiom,
    ! [Z_24,Y_55,X_80] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_55),X_80))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_24),X_80))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_24),Y_55)) ) ) ).

fof(fact_715_in__mono,axiom,
    ! [X_1,A,B] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),B))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A),B)) ) ).

fof(fact_1018_less__iff__Suc__add,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
    <=> ? [K_2] : hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),K_2)) = N_1 ) ).

fof(fact_498_remove1_Osimps_I2_J,axiom,
    ! [Xs_48,X_93,Y_63] :
      ( ( ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_93),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_63),Xs_48)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_63),hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_93),Xs_48))
         <= X_93 != Y_63 )
        & ( X_93 = Y_63
         => Xs_48 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_93),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_63),Xs_48)) ) )
     <= ( is_Arr1861959080le_alt(X_93)
        & is_Arr1861959080le_alt(Y_63) ) ) ).

fof(fact_709_termination__basic__simps_I3_J,axiom,
    ! [Z_3,X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y),Z_3)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),Y)) ) ).

fof(fact_783_min__max_Oinf__sup__distrib2,axiom,
    ! [Y_30,Z_14,X_45] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_30),Z_14)),X_45) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_30),X_45)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Z_14),X_45)) ).

fof(fact_404_in__set__conv__decomp__first,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
    <=> ? [Ys_6,Zs_2] :
          ( Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs_2))
          & ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Ys_6))) ) ) ).

fof(fact_991_order__less__imp__not__eq2,axiom,
    ! [X_17,Y_9] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_17),Y_9))
     => X_17 != Y_9 ) ).

fof(fact_207_tl_Osimps_I1_J,axiom,
    nil_Ar126264853le_alt = tl_Arr1453005548le_alt(nil_Ar126264853le_alt) ).

fof(fact_863_length__splice,axiom,
    ! [Xs_32,Ys_9] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_32)),hAPP_list_nat_nat(size_size_list_nat,Ys_9)) = hAPP_list_nat_nat(size_size_list_nat,splice_nat(Xs_32,Ys_9)) ).

fof(fact_416_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : map_filter_nat_bool(F,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) = option718651152l_bool(map_filter_nat_bool(F,Xs),hAPP_l1045755451t_bool(cOMBC_80330970t_bool(cons_bool),map_filter_nat_bool(F,Xs)),hAPP_nat_option_bool(F,X_1)) ).

fof(fact_909_diff__less__mono2,axiom,
    ! [L,M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),L))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,L),N)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,L),M))) ) ) ).

fof(fact_359_sublist__nil,axiom,
    ! [A] : nil_nat = sublist_nat(nil_nat,A) ).

fof(fact_440_split__list__last__prop__iff,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          & is_Arr1861959080le_alt(X_4) )
    <=> ? [Ys_6,X_4,Zs_2] :
          ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2)) = Xs
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & ! [Xa] :
              ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Zs_2)))
               => ~ hBOOL(hAPP_A862370221t_bool(P_1,Xa)) )
             <= is_Arr1861959080le_alt(Xa) )
          & is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_1121_Skolem__list__nth,axiom,
    ! [P_1,K_3] :
      ( ? [Xs_19] :
          ( K_3 = hAPP_list_nat_nat(size_size_list_nat,Xs_19)
          & ! [I_4] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_1,I_4),hAPP_nat_nat(nth_nat(Xs_19),I_4)))
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3)) ) )
    <=> ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3))
         => ? [X1] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(P_1,I_4),X1)) ) ) ).

fof(fact_38_distinct__insert,axiom,
    ! [X_123,Xs_94] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_123),Xs_94)))
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_94)) ) ).

fof(fact_51_list_Osimps_I5_J,axiom,
    ! [F1,F2,Aa,List_1] : list_c380068407le_alt(F1,F2,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),List_1)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(F2,Aa),List_1) ).

fof(fact_877_Suc__length__conv,axiom,
    ! [N_1,Xs] :
      ( ? [Y_25,Ys_6] :
          ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6) = Xs
          & N_1 = hAPP_list_bool_nat(size_size_list_bool,Ys_6)
          & is_bool(Y_25) )
    <=> hAPP_nat_nat(suc,N_1) = hAPP_list_bool_nat(size_size_list_bool,Xs) ) ).

fof(fact_543_take__equalityI,axiom,
    ! [Xs_42,Ys_14] :
      ( Ys_14 = Xs_42
     <= ! [I_4] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,I_4),Ys_14) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,I_4),Xs_42) ) ).

fof(fact_805_Min_Oidem,axiom,
    ! [X_43] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_43),X_43) = X_43 ).

fof(help_fFalse_1_1_U,axiom,
    ~ hBOOL(fFalse) ).

fof(fact_584_foldl__Nil,axiom,
    ! [F,Aa] : foldl_nat_nat(F,Aa,nil_nat) = Aa ).

fof(fact_191_rev__append,axiom,
    ! [Xs_65,Ys_15] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,rev_Ar2093961333le_alt(Ys_15)),rev_Ar2093961333le_alt(Xs_65)) = rev_Ar2093961333le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_65),Ys_15)) ).

fof(fact_1065_nth__mem,axiom,
    ! [N_1,Xs] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,hAPP_nat_bool(nth_bool(Xs),N_1)),hAPP_l96088310l_bool(set_bool,Xs)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) ).

fof(fact_330_set__rev,axiom,
    ! [Xs] : hAPP_l82377208t_bool(set_Ar1565008694le_alt,rev_Ar2093961333le_alt(Xs)) = hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs) ).

fof(fact_408_split__list__propE,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_nat_bool(P_1,X_4))
          & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) )
     => ~ ! [Ys_6,X_4] :
            ( ~ hBOOL(hAPP_nat_bool(P_1,X_4))
           <= ? [Zs_2] : Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) ) ) ).

fof(fact_793_minus__nat_Odiff__0,axiom,
    ! [M] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),zero_zero_nat) = M ).

fof(fact_1152_drop__replicate,axiom,
    ! [I_3,K_1,X_2] : hAPP_nat_list_nat(replicate_nat(hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,K_1),I_3)),X_2) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,I_3),hAPP_nat_list_nat(replicate_nat(K_1),X_2)) ).

fof(fact_1017_less__add__Suc2,axiom,
    ! [I,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),I)))) ).

fof(fact_601_comm__semiring__1__class_Onormalizing__semiring__rules_I21_J,axiom,
    ! [A_69,B_64,C_37] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_69),B_64)),C_37) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_69),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_64),C_37)) ).

fof(fact_655_add__leD2,axiom,
    ! [M,K,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),K)),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N)) ) ).

fof(fact_967_less__not__refl3,axiom,
    ! [S,T] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,S),T))
     => S != T ) ).

fof(fact_420_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : map_filter_bool_nat(F,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = option306705938at_nat(map_filter_bool_nat(F,Xs),hAPP_l383341732st_nat(cOMBC_1204473209st_nat(cons_nat),map_filter_bool_nat(F,Xs)),hAPP_bool_option_nat(F,X_1)) ).

fof(fact_704_set__take__subset__set__take,axiom,
    ! [Xs,M_1,N_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,M_1),Xs))),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_1),Xs))))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ).

fof(fact_929_linorder__le__less__linear,axiom,
    ! [X_22,Y_14] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_14),X_22))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_22),Y_14)) ) ).

fof(fact_1192_distinct__upt,axiom,
    ! [I,J] : hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_nat_list_nat(upt(I),J))) ).

fof(fact_226_replicate__app__Cons__same,axiom,
    ! [N_42,X_104,Xs_57] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_104),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_42),X_104)),Xs_57)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_42),X_104)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_104),Xs_57)) ).

fof(help_COMBC_1_1_COMBC_000tc__List__Olist_Itc__HOL__Obool_J_000tc__List__Olist_Itc,axiom,
    ! [P,Q,R] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(cOMBC_1789016513t_bool(P),Q),R) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(P,R),Q) ).

fof(fact_1157_drop__butlast,axiom,
    ! [N_10,Xs_10] : butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_10),Xs_10)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_10),butlas1262502241le_alt(Xs_10)) ).

fof(fact_839_le__add__diff,axiom,
    ! [M,K,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),M)),K)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),N)) ) ).

fof(fact_736_min__max_Osup__absorb2,axiom,
    ! [X_67,Y_47] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_67),Y_47))
     => Y_47 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_67),Y_47) ) ).

fof(fact_978_add__less__imp__less__right,axiom,
    ! [A_24,C_13,B_25] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_24),C_13)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_25),C_13)))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_24),B_25)) ) ).

fof(fact_879_Suc__length__conv,axiom,
    ! [N_1,Xs] :
      ( ? [Y_25,Ys_6] :
          ( is_Arr1861959080le_alt(Y_25)
          & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Ys_6) = Xs
          & hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys_6) = N_1 )
    <=> hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs) = hAPP_nat_nat(suc,N_1) ) ).

fof(fact_1056_diff__Suc__less,axiom,
    ! [I,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),hAPP_nat_nat(suc,I))),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_565_ab__semigroup__add__class_Oadd__ac_I1_J,axiom,
    ! [A_79,B_67,C_40] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_79),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_67),C_40)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_79),B_67)),C_40) ).

fof(gsy_c_fFalse,axiom,
    is_bool(fFalse) ).

fof(fact_320_notin__set__sublistI,axiom,
    ! [I_11,X_1,Xs] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,sublist_nat(Xs,I_11))))
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_631_add__le__cancel__right,axiom,
    ! [Aa,C_2,Ba] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Aa),C_2)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Ba),C_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Aa),Ba)) ) ).

fof(fact_186_rev__is__Nil__conv,axiom,
    ! [Xs] :
      ( nil_nat = rev_nat(Xs)
    <=> Xs = nil_nat ) ).

fof(fact_289_empty__replicate,axiom,
    ! [N_1,X_1] :
      ( hAPP_A832564074le_alt(replic351609551le_alt(N_1),X_1) = nil_Ar126264853le_alt
    <=> N_1 = zero_zero_nat ) ).

fof(fact_602_comm__semiring__1__class_Onormalizing__semiring__rules_I25_J,axiom,
    ! [A_68,C_36,D_8] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_68),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_36),D_8)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_68),C_36)),D_8) ).

fof(fact_338_insort__not__Nil,axiom,
    ! [F,Aa,Xs] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),Aa),Xs) != nil_nat ).

fof(fact_370_distinct_Osimps_I2_J,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)))
    <=> ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs))
        & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_1137_drop__Suc__Cons,axiom,
    ! [N_17,X_3,Xs_17] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,hAPP_nat_nat(suc,N_17)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_3),Xs_17)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_17),Xs_17) ).

fof(fact_171_tl__append2,axiom,
    ! [Ys_16,Xs_67] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,tl_nat(Xs_67)),Ys_16) = tl_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_67),Ys_16))
     <= nil_nat != Xs_67 ) ).

fof(fact_956_add__less__mono,axiom,
    ! [K,L,I,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K),L))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),L))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J)) ) ).

fof(fact_737_min__max_Osup__absorb1,axiom,
    ! [Y_46,X_66] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_66),Y_46) = X_66
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_46),X_66)) ) ).

fof(fact_264_ListMem_Osimps,axiom,
    ! [A1,A2] :
      ( ( ? [X_4,Xs_19] :
            ( A1 = X_4
            & A2 = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Xs_19) )
        | ? [X_4,Xs_19,Y_25] :
            ( A1 = X_4
            & A2 = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Xs_19)
            & hBOOL(hAPP_list_nat_bool(listMem_nat(X_4),Xs_19)) ) )
    <=> hBOOL(hAPP_list_nat_bool(listMem_nat(A1),A2)) ) ).

fof(fact_997_linorder__antisym__conv3,axiom,
    ! [Y_2,X_1] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),X_1))
     => ( Y_2 = X_1
      <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) ) ) ).

fof(fact_94_append__Cons,axiom,
    ! [X_115,Xs_81,Ys_24] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_115),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_81),Ys_24)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_115),Xs_81)),Ys_24) ).

fof(help_COMBC_1_1_COMBC_000tc__HOL__Obool_000tc__List__Olist_Itc__HOL__Obool_J_000t,axiom,
    ! [P,Q,R] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(P,R),Q) = hAPP_bool_list_bool(hAPP_l1045755451t_bool(cOMBC_80330970t_bool(P),Q),R) ).

fof(fact_1088_sorted__nth__mono,axiom,
    ! [I_5,J_3,Xs_24] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_24))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_3),hAPP_list_nat_nat(size_size_list_nat,Xs_24)))
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(nth_nat(Xs_24),I_5)),hAPP_nat_nat(nth_nat(Xs_24),J_3))) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_5),J_3)) ) ) ).

fof(fact_327_set__ConsD,axiom,
    ! [Y_2,X_1,Xs] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Y_2),hAPP_l96088310l_bool(set_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))))
     => ( ( hBOOL(Y_2)
        <=> hBOOL(X_1) )
        | hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Y_2),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_896_DiffD1,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),A)) ) ).

fof(fact_418_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : option468438226le_alt(map_fi302768037le_alt(F,Xs),hAPP_l618618165le_alt(cOMBC_1919297930le_alt(cons_A1216297413le_alt),map_fi302768037le_alt(F,Xs)),hAPP_n2020361039le_alt(F,X_1)) = map_fi302768037le_alt(F,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) ).

fof(fact_18_not__Cons__self2,axiom,
    ! [X_1,Xs] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) != Xs ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__HOL__Obool_J_000tc__fun_Itc__List__,axiom,
    ! [P,Q,R] : hAPP_b994696797t_bool(cOMBB_1663860504l_bool(P,Q),R) = hAPP_l1947611924t_bool(P,hAPP_bool_list_bool(Q,R)) ).

fof(fact_1140_set__drop__subset,axiom,
    ! [N_1,Xs] : hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_1),Xs))),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ).

fof(fact_65_sorted__single,axiom,
    ! [X_118] : hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_118),nil_nat))) ).

fof(fact_204_tl_Osimps_I2_J,axiom,
    ! [X_1,Xs] : tl_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = Xs ).

fof(fact_1115_list__ball__nth,axiom,
    ! [P_1,N_1,Xs] :
      ( ( ! [X_4] :
            ( hBOOL(hAPP_nat_bool(P_1,X_4))
           <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) )
       => hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),N_1))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_nat_nat(size_size_list_nat,Xs))) ) ).

fof(fact_39_splice_Osimps_I3_J,axiom,
    ! [X_1,Xs,Y_2,Ys] : splice_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Ys)) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),splice_bool(Xs,Ys))) ).

fof(fact_115_eq__Nil__appendI,axiom,
    ! [Xs_78,Ys_21] :
      ( Xs_78 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,nil_nat),Ys_21)
     <= Xs_78 = Ys_21 ) ).

fof(fact_223_rev__singleton__conv,axiom,
    ! [Xs,X_1] :
      ( Xs = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt)
    <=> hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt) = rev_Ar2093961333le_alt(Xs) ) ).

fof(fact_758_min__max_Oinf__mono,axiom,
    ! [B_40,D_4,A_40,C_19] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_40),C_19))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_40),B_40)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,C_19),D_4)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_40),D_4)) ) ) ).

fof(fact_169_hd__append,axiom,
    ! [Ys_17,Xs_68] :
      ( ( nil_nat = Xs_68
       => hAPP_list_nat_nat(hd_nat,Ys_17) = hAPP_list_nat_nat(hd_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_68),Ys_17)) )
      & ( nil_nat != Xs_68
       => hAPP_list_nat_nat(hd_nat,Xs_68) = hAPP_list_nat_nat(hd_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_68),Ys_17)) ) ) ).

fof(fact_1074_nth__length__takeWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_list_bool_nat(size_size_list_bool,takeWhile_bool(P_1,Xs))),hAPP_list_bool_nat(size_size_list_bool,Xs)))
     => ~ hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),hAPP_list_bool_nat(size_size_list_bool,takeWhile_bool(P_1,Xs))))) ) ).

fof(fact_1197_upt__Suc,axiom,
    ! [I,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J))
       => hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(upt(I),J)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,J),nil_nat)) = hAPP_nat_list_nat(upt(I),hAPP_nat_nat(suc,J)) )
      & ( hAPP_nat_list_nat(upt(I),hAPP_nat_nat(suc,J)) = nil_nat
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J)) ) ) ).

fof(fact_351_in__set__member,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
    <=> hBOOL(hAPP_A862370221t_bool(hAPP_l82377208t_bool(member345038890le_alt,Xs),X_1)) ) ).

fof(fact_350_ListMem__iff,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(listMem_nat(X_1),Xs))
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_1019_less__eq__Suc__le,axiom,
    ! [N_1,M_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N_1)),M_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),M_1)) ) ).

fof(fact_862_dual__max,axiom,
    max_nat(cOMBC_nat_nat_bool(ord_less_eq_nat)) = ord_min_nat ).

fof(fact_917_linorder__antisym__conv2,axiom,
    ! [X_1,Y_2] :
      ( ( X_1 = Y_2
      <=> ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2)) ) ).

fof(fact_925_leI,axiom,
    ! [X_23,Y_15] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_23),Y_15))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_15),X_23)) ) ).

fof(fact_889_DiffE,axiom,
    ! [C_2,A,B] :
      ( ~ ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),A))
         => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),B)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,A),B))) ) ).

fof(fact_874_sublist__append,axiom,
    ! [L_2,L_1,A] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,sublis888024346le_alt(L_2,A)),sublis888024346le_alt(L_1,collect_nat(hAPP_f800510211t_bool(cOMBC_226598744l_bool(cOMBB_1146692694ol_nat(member_nat,hAPP_nat_fun_nat_nat(cOMBC_nat_nat_nat(plus_plus_nat),hAPP_l1872264749lt_nat(size_s1873794948le_alt,L_2)))),A)))) = sublis888024346le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,L_2),L_1),A) ).

fof(fact_717_set__rev__mp,axiom,
    ! [B,X_1,A] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),A))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),B))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A),B)) ) ) ).

fof(fact_824_min__max_Odistrib__inf__le,axiom,
    ! [X_41,Y_28,Z_12] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_41),Y_28)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_41),Z_12))),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_41),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_28),Z_12)))) ).

fof(fact_431_split__list__last,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Zs_2)))
          & Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs_2)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_499_remove1_Osimps_I2_J,axiom,
    ! [Xs_48,X_93,Y_63] :
      ( ( X_93 != Y_63
       => hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_93),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_63),Xs_48)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_63),hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_93),Xs_48)) )
      & ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_93),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_63),Xs_48)) = Xs_48
       <= Y_63 = X_93 ) ) ).

fof(fact_633_add__right__mono,axiom,
    ! [C_33,A_65,B_63] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_65),B_63))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_65),C_33)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_63),C_33))) ) ).

fof(fact_1148_drop__take,axiom,
    ! [N_13,M_3,Xs_13] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_13),hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,M_3),Xs_13)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_3),N_13)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_13),Xs_13)) ).

fof(fact_468_nat__case__Suc,axiom,
    ! [F1,F2,Nat_3] : hAPP_n1875670159le_alt(F2,Nat_3) = hAPP_n1875670159le_alt(nat_ca14895078le_alt(F1,F2),hAPP_nat_nat(suc,Nat_3)) ).

fof(fact_759_min__max_Oinf__greatest,axiom,
    ! [Z_20,X_62,Y_44] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_62),Y_44))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_62),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_44),Z_20)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_62),Z_20)) ) ) ).

fof(fact_137_last__ConsR,axiom,
    ! [X_1,Xs] :
      ( nil_bool != Xs
     => ( hBOOL(hAPP_list_bool_bool(last_bool,Xs))
      <=> hBOOL(hAPP_list_bool_bool(last_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))) ) ) ).

fof(fact_180_rev__replicate,axiom,
    ! [N_44,X_108] : hAPP_A832564074le_alt(replic351609551le_alt(N_44),X_108) = rev_Ar2093961333le_alt(hAPP_A832564074le_alt(replic351609551le_alt(N_44),X_108)) ).

fof(fact_121_append__butlast__last__id,axiom,
    ! [Xs_77] :
      ( Xs_77 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,butlast_nat(Xs_77)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,hAPP_list_nat_nat(last_nat,Xs_77)),nil_nat))
     <= nil_nat != Xs_77 ) ).

fof(fact_1143_nth__via__drop,axiom,
    ! [N_1,Xs,Y_2,Ys] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Ys) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(drop_bool,N_1),Xs)
     => ( hBOOL(Y_2)
      <=> hBOOL(hAPP_nat_bool(nth_bool(Xs),N_1)) ) ) ).

fof(fact_859_nat__minus__add__max,axiom,
    ! [N,M] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),M)),M) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,N),M) ).

fof(fact_525_take__eq__Nil,axiom,
    ! [N_1,Xs] :
      ( nil_nat = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_1),Xs)
    <=> ( N_1 = zero_zero_nat
        | nil_nat = Xs ) ) ).

fof(fact_193_distinct__rev,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
    <=> hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,rev_Ar2093961333le_alt(Xs))) ) ).

fof(fact_963_less__imp__le__nat,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_615_nat_Osize_I4_J,axiom,
    ! [Nat] : hAPP_nat_nat(size_size_nat,hAPP_nat_nat(suc,Nat)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(size_size_nat,Nat)),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_682_set__subset__Cons,axiom,
    ! [Xs,X_1] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,Xs)),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)))) ).

fof(fact_304_listrelp_Osimps,axiom,
    ! [R_2,A1,A2] :
      ( ( ? [X_4,Y_25,Xs_19,Ys_6] :
            ( A1 = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Xs_19)
            & A2 = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Ys_6)
            & hBOOL(hAPP_list_nat_bool(listrelp_nat(R_2,Xs_19),Ys_6))
            & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(R_2,X_4),Y_25)) )
        | ( A2 = nil_nat
          & A1 = nil_nat ) )
    <=> hBOOL(hAPP_list_nat_bool(listrelp_nat(R_2,A1),A2)) ) ).

fof(fact_511_list__all__simps_I1_J,axiom,
    ! [P_1,X_1,Xs] :
      ( hBOOL(hAPP_list_bool_bool(list_all_bool(P_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)))
    <=> ( hBOOL(hAPP_bool_bool(P_1,X_1))
        & hBOOL(hAPP_list_bool_bool(list_all_bool(P_1),Xs)) ) ) ).

fof(fact_55_List_Onull__def,axiom,
    ! [Xs] :
      ( nil_Ar126264853le_alt = Xs
    <=> hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,Xs)) ) ).

fof(fact_153_rotate__simps,axiom,
    ! [X_111,Xs_71] :
      ( rotate1322903650le_alt(nil_Ar126264853le_alt) = nil_Ar126264853le_alt
      & rotate1_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_111),Xs_71)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_71),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_111),nil_nat)) ) ).

fof(fact_110_append__self__conv,axiom,
    ! [Xs,Ys] :
      ( Ys = nil_Ar126264853le_alt
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) = Xs ) ).

fof(fact_271_list__induct2_H,axiom,
    ! [Xs,Ys,P_1] :
      ( ( ( ( ! [X_4,Xs_19,Y_25,Ys_6] :
                ( ( is_bool(Y_25)
                  & is_Arr1861959080le_alt(X_4) )
               => ( hBOOL(hAPP_list_bool_bool(hAPP_l273023249l_bool(P_1,Xs_19),Ys_6))
                 => hBOOL(hAPP_list_bool_bool(hAPP_l273023249l_bool(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Xs_19)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6))) ) )
           => hBOOL(hAPP_list_bool_bool(hAPP_l273023249l_bool(P_1,Xs),Ys)) )
         <= ! [Y_25,Ys_6] :
              ( is_bool(Y_25)
             => hBOOL(hAPP_list_bool_bool(hAPP_l273023249l_bool(P_1,nil_Ar126264853le_alt),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6))) ) )
       <= ! [X_4,Xs_19] :
            ( hBOOL(hAPP_list_bool_bool(hAPP_l273023249l_bool(P_1,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Xs_19)),nil_bool))
           <= is_Arr1861959080le_alt(X_4) ) )
     <= hBOOL(hAPP_list_bool_bool(hAPP_l273023249l_bool(P_1,nil_Ar126264853le_alt),nil_bool)) ) ).

fof(fact_429_split__list__first,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Ys_6)))
          & hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Zs_2)) = Xs )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_668_insort__key_Osimps_I2_J,axiom,
    ! [Ys,F,X_1,Y_2] :
      ( ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),Ys))
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,X_1)),hAPP_nat_nat(F,Y_2))) )
      & ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,X_1)),hAPP_nat_nat(F,Y_2)))
       => hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys)) ) ) ).

fof(fact_520_list__all__rev,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),rev_nat(Xs)))
    <=> hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),Xs)) ) ).

fof(fact_639_le__0__eq,axiom,
    ! [N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N_1),zero_zero_nat))
    <=> zero_zero_nat = N_1 ) ).

fof(fact_1039_nth__replicate,axiom,
    ! [X_1,I_1,N_1] :
      ( ( hBOOL(X_1)
      <=> hBOOL(hAPP_nat_bool(nth_bool(hAPP_bool_list_bool(replicate_bool(N_1),X_1)),I_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),N_1)) ) ).

fof(fact_594_comm__semiring__1__class_Onormalizing__semiring__rules_I5_J,axiom,
    ! [A_73] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,zero_zero_nat),A_73) = A_73 ).

fof(fact_587_add__is__1,axiom,
    ! [M_1,N_1] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),N_1) = hAPP_nat_nat(suc,zero_zero_nat)
    <=> ( ( zero_zero_nat = N_1
          & M_1 = hAPP_nat_nat(suc,zero_zero_nat) )
        | ( hAPP_nat_nat(suc,zero_zero_nat) = N_1
          & M_1 = zero_zero_nat ) ) ) ).

fof(fact_452_Zero__neq__Suc,axiom,
    ! [M] : hAPP_nat_nat(suc,M) != zero_zero_nat ).

fof(fact_391_not__in__set__insert,axiom,
    ! [X_1,Xs] :
      ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
     => hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_1),Xs) ) ).

fof(fact_436_split__list__first__prop__iff,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( ? [Zs_2] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2)) = Xs
          & hBOOL(hAPP_bool_bool(P_1,X_4))
          & ! [Xa] :
              ( ( ~ hBOOL(hAPP_bool_bool(P_1,Xa))
               <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Xa),hAPP_l96088310l_bool(set_bool,Ys_6))) )
             <= is_bool(Xa) )
          & is_bool(X_4) )
    <=> ? [X_4] :
          ( is_bool(X_4)
          & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs)))
          & hBOOL(hAPP_bool_bool(P_1,X_4)) ) ) ).

fof(fact_362_rotate1__def,axiom,
    ! [Xs] : rotate1_bool(Xs) = list_c1750880501l_bool(nil_bool,cOMBB_1663860504l_bool(cOMBC_1789016513t_bool(append_bool),hAPP_l1045755451t_bool(cOMBC_80330970t_bool(cons_bool),nil_bool)),Xs) ).

fof(fact_159_replicate__append__same,axiom,
    ! [I_13,X_110] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_110),hAPP_nat_list_nat(replicate_nat(I_13),X_110)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(replicate_nat(I_13),X_110)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_110),nil_nat)) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Arrow____Order____Mirabelle____tpnf_006,axiom,
    ! [P,Q,R] : hAPP_A408086601le_alt(cOMBB_881934114le_alt(P,Q),R) = hAPP_l568342716le_alt(P,hAPP_A832564074le_alt(Q,R)) ).

fof(fact_654_add__le__mono,axiom,
    ! [K,L,I,J] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),L)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),L)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J)) ) ).

fof(fact_1139_drop__Suc__Cons,axiom,
    ! [N_17,X_3,Xs_17] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,hAPP_nat_nat(suc,N_17)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_3),Xs_17)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_17),Xs_17) ).

fof(fact_886_min__leastL,axiom,
    ! [X_33,Least_1] :
      ( ! [X_4] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Least_1),X_4))
     => Least_1 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Least_1),X_33) ) ).

fof(fact_608_foldl__foldr1,axiom,
    ! [Xs] : hAPP_nat_nat(foldr_nat_nat(plus_plus_nat,Xs),zero_zero_nat) = foldl_nat_nat(plus_plus_nat,zero_zero_nat,Xs) ).

fof(fact_957_less__add__eq__less,axiom,
    ! [M,N,K,L] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,K),L))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
       <= hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),L) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K),N) ) ) ).

fof(fact_624_eq__imp__le,axiom,
    ! [M,N] :
      ( N = M
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_590_foldl__rev,axiom,
    ! [S_2,Xs,F] :
      ( foldl_nat_nat(F,S_2,rev_nat(Xs)) = foldl_nat_nat(F,S_2,Xs)
     <= ! [X_4,Y_25,S_3] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,S_3),X_4)),Y_25) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,S_3),Y_25)),X_4) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_000t,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(cOMBS_1393264256l_bool(P,Q),R) = hAPP_bool_bool(hAPP_A822657487l_bool(P,R),hAPP_A862370221t_bool(Q,R)) ).

fof(fact_1076_nth__length__takeWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs))),hAPP_list_nat_nat(size_size_list_nat,Xs)))
     => ~ hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs))))) ) ).

fof(fact_756_min__Suc2,axiom,
    ! [M_1,N_1] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,M_1),hAPP_nat_nat(suc,N_1)) = hAPP_nat_nat(nat_case_nat(zero_zero_nat,cOMBB_nat_nat_nat(suc,hAPP_nat_fun_nat_nat(cOMBC_nat_nat_nat(ord_min_nat),N_1))),M_1) ).

fof(fact_166_hd__append2,axiom,
    ! [Ys_18,Xs_69] :
      ( Xs_69 != nil_Ar126264853le_alt
     => hAPP_l1105242632le_alt(hd_Arr805754088le_alt,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_69),Ys_18)) = hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs_69) ) ).

fof(fact_650_nat__add__left__cancel__le,axiom,
    ! [K_3,M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),M_1)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,K_3),N_1)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ).

fof(fact_152_rotate__simps,axiom,
    ! [X_111,Xs_71] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_71),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_111),nil_nat)) = rotate1_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_111),Xs_71))
      & rotate1_nat(nil_nat) = nil_nat ) ).

fof(fact_530_take__tl,axiom,
    ! [N_33,Xs_43] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_33),tl_Arr1453005548le_alt(Xs_43)) = tl_Arr1453005548le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(suc,N_33)),Xs_43)) ).

fof(fact_311_insort__key_Osimps_I1_J,axiom,
    ! [F,X_1] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),nil_nat) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),nil_nat) ).

fof(fact_161_rev_Osimps_I2_J,axiom,
    ! [X_109,Xs_70] : rev_Ar2093961333le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_109),Xs_70)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,rev_Ar2093961333le_alt(Xs_70)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_109),nil_Ar126264853le_alt)) ).

fof(fact_47_butlast_Osimps_I2_J,axiom,
    ! [X_121,Xs_91] :
      ( ( nil_Ar126264853le_alt = butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_121),Xs_91))
       <= Xs_91 = nil_Ar126264853le_alt )
      & ( Xs_91 != nil_Ar126264853le_alt
       => butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_121),Xs_91)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_121),butlas1262502241le_alt(Xs_91)) ) ) ).

fof(fact_933_termination__basic__simps_I1_J,axiom,
    ! [Z_3,X,Y] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),Y))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y),Z_3))) ) ).

fof(fact_96_Cons__eq__appendI,axiom,
    ! [Xs_80,Zs_4,X_114,Xs1,Ys_23] :
      ( Ys_23 = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_114),Xs1)
     => ( Xs_80 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs1),Zs_4)
       => hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_114),Xs_80) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_23),Zs_4) ) ) ).

fof(fact_818_min__ord__min,axiom,
    min_nat(ord_less_eq_nat) = ord_min_nat ).

fof(fact_464_nat__case__0,axiom,
    ! [F1,F2] :
      ( is_Arr1861959080le_alt(F1)
     => hAPP_n401316912le_alt(nat_ca391302041le_alt(F1,F2),zero_zero_nat) = F1 ) ).

fof(fact_1040_nth__replicate,axiom,
    ! [X_5,I_6,N_24] :
      ( ( X_5 = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_A832564074le_alt(replic351609551le_alt(N_24),X_5)),I_6)
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_6),N_24)) )
     <= is_Arr1861959080le_alt(X_5) ) ).

fof(fact_1049_add__nonneg__pos,axiom,
    ! [B_4,A_3] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_3),B_4)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),B_4)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_3)) ) ).

fof(help_COMBC_1_1_COMBC_000tc__HOL__Obool_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_bool_bool(hAPP_b589554111l_bool(P,R),Q) = hAPP_bool_bool(hAPP_b589554111l_bool(cOMBC_bool_bool_bool(P),Q),R) ).

fof(fact_296_takeWhile__tail,axiom,
    ! [Xs,L_2,P_1,X_1] :
      ( ~ hBOOL(hAPP_bool_bool(P_1,X_1))
     => takeWhile_bool(P_1,Xs) = takeWhile_bool(P_1,hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),L_2))) ) ).

fof(fact_532_take__Cons,axiom,
    ! [N_1,X_1,Xs] : hAPP_nat_list_bool(nat_case_list_bool(nil_bool,cOMBB_1891801486ol_nat(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_l1656175496t_bool(cOMBC_1038295629t_bool(take_bool),Xs))),N_1) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_1),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) ).

fof(fact_414_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : option306705938at_nat(map_fi2015041583lt_nat(F,Xs),hAPP_l383341732st_nat(cOMBC_1204473209st_nat(cons_nat),map_fi2015041583lt_nat(F,Xs)),hAPP_A1356081999on_nat(F,X_1)) = map_fi2015041583lt_nat(F,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) ).

fof(fact_333_takeWhile__eq__all__conv,axiom,
    ! [P_1,Xs] :
      ( Xs = takeWhile_nat(P_1,Xs)
    <=> ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_500_remove1_Osimps_I1_J,axiom,
    ! [X_92] : nil_Ar126264853le_alt = hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_92),nil_Ar126264853le_alt) ).

fof(fact_141_rev__induct,axiom,
    ! [Xs,P_1] :
      ( hBOOL(hAPP_l1386638586t_bool(P_1,nil_Ar126264853le_alt))
     => ( ! [X_4,Xs_19] :
            ( is_Arr1861959080le_alt(X_4)
           => ( hBOOL(hAPP_l1386638586t_bool(P_1,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_19),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),nil_Ar126264853le_alt))))
             <= hBOOL(hAPP_l1386638586t_bool(P_1,Xs_19)) ) )
       => hBOOL(hAPP_l1386638586t_bool(P_1,Xs)) ) ) ).

fof(fact_1051_length__greater__0__conv,axiom,
    ! [Xs] :
      ( Xs != nil_nat
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_list_nat_nat(size_size_list_nat,Xs))) ) ).

fof(fact_341_in__set__insert,axiom,
    ! [X_1,Xs] :
      ( Xs = hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_1),Xs)
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_2_distinct_Osimps_I1_J,axiom,
    hBOOL(hAPP_list_nat_bool(distinct_nat,nil_nat)) ).

fof(fact_713_min__max_Ole__supE,axiom,
    ! [A_52,B_50,X_76] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_52),B_50)),X_76))
     => ~ ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_50),X_76))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_52),X_76)) ) ) ).

fof(fact_1156_drop__butlast,axiom,
    ! [N_10,Xs_10] : butlast_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_10),Xs_10)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_10),butlast_nat(Xs_10)) ).

fof(fact_61_null__rec_I1_J,axiom,
    ! [X_120,Xs_90] : ~ hBOOL(hAPP_list_nat_bool(null_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_120),Xs_90))) ).

fof(fact_1130_pos__add__strict,axiom,
    ! [B_2,C_1,A_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),A_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_2),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_1),C_1)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_2),C_1)) ) ) ).

fof(fact_968_less__not__refl2,axiom,
    ! [N,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),M))
     => N != M ) ).

fof(fact_272_list__induct2_H,axiom,
    ! [Xs,Ys,P_1] :
      ( hBOOL(hAPP_list_bool_bool(hAPP_l1101248310l_bool(P_1,nil_nat),nil_bool))
     => ( ! [X_4,Xs_19] : hBOOL(hAPP_list_bool_bool(hAPP_l1101248310l_bool(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Xs_19)),nil_bool))
       => ( ! [Y_25,Ys_6] :
              ( is_bool(Y_25)
             => hBOOL(hAPP_list_bool_bool(hAPP_l1101248310l_bool(P_1,nil_nat),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6))) )
         => ( hBOOL(hAPP_list_bool_bool(hAPP_l1101248310l_bool(P_1,Xs),Ys))
           <= ! [X_4,Xs_19,Y_25,Ys_6] :
                ( ( hBOOL(hAPP_list_bool_bool(hAPP_l1101248310l_bool(P_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Xs_19)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6)))
                 <= hBOOL(hAPP_list_bool_bool(hAPP_l1101248310l_bool(P_1,Xs_19),Ys_6)) )
               <= is_bool(Y_25) ) ) ) ) ) ).

fof(fact_244_insert,axiom,
    ! [Y_65,X_102,Xs_56] :
      ( hBOOL(hAPP_list_nat_bool(listMem_nat(X_102),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_65),Xs_56)))
     <= hBOOL(hAPP_list_nat_bool(listMem_nat(X_102),Xs_56)) ) ).

fof(fact_557_rev__foldl__cons,axiom,
    ! [Xs] : foldl_1200072380le_alt(cOMBC_1919297930le_alt(cons_A1216297413le_alt),nil_Ar126264853le_alt,Xs) = rev_Ar2093961333le_alt(Xs) ).

fof(fact_23_list_Oinject,axiom,
    ! [Aa,List_1,A_84,List_2] :
      ( ( Aa = A_84
        & List_2 = List_1 )
    <=> hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Aa),List_1) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,A_84),List_2) ) ).

fof(fact_46_butlast_Osimps_I2_J,axiom,
    ! [X_1,Xs] :
      ( ( nil_bool != Xs
       => hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),butlast_bool(Xs)) = butlast_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) )
      & ( nil_bool = Xs
       => nil_bool = butlast_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) ) ) ).

fof(fact_1146_take__drop,axiom,
    ! [N_14,M_4,Xs_14] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_14),hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,M_4),Xs_14)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,M_4),hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N_14),M_4)),Xs_14)) ).

fof(fact_63_butlast__snoc,axiom,
    ! [Xs_89,X_119] : Xs_89 = butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_89),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_119),nil_Ar126264853le_alt))) ).

fof(fact_787_take__append,axiom,
    ! [N_31,Xs_40,Ys_13] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_31),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_40),Ys_13)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_31),Xs_40)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_31),hAPP_list_nat_nat(size_size_list_nat,Xs_40))),Ys_13)) ).

fof(fact_823_length__rotate1,axiom,
    ! [Xs_36] : hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_36) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,rotate1322903650le_alt(Xs_36)) ).

fof(fact_447_nth__Cons__Suc,axiom,
    ! [X_96,Xs_52,N_39] : hAPP_nat_nat(nth_nat(Xs_52),N_39) = hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_96),Xs_52)),hAPP_nat_nat(suc,N_39)) ).

fof(fact_24_splice_Osimps_I2_J,axiom,
    ! [V_1,Va_1] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,V_1),Va_1) = splice_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,V_1),Va_1),nil_bool) ).

fof(fact_710_termination__basic__simps_I4_J,axiom,
    ! [Y,X,Z_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),Z_3))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y),Z_3))) ) ).

fof(fact_1057_nat__diff__split__asm,axiom,
    ! [P_1,Aa,Ba] :
      ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,Aa),Ba)))
    <=> ~ ( ? [D] :
              ( Aa = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Ba),D)
              & ~ hBOOL(hAPP_nat_bool(P_1,D)) )
          | ( ~ hBOOL(hAPP_nat_bool(P_1,zero_zero_nat))
            & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Aa),Ba)) ) ) ) ).

fof(fact_552_split__list__last__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4,Zs_2] :
          ( is_bool(X_4)
          & ! [Xa] :
              ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Xa),hAPP_l96088310l_bool(set_bool,Zs_2)))
             => ~ hBOOL(hAPP_bool_bool(P_1,Xa)) )
          & hBOOL(hAPP_bool_bool(P_1,X_4))
          & Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2)) )
     <= ? [X_4] :
          ( hBOOL(hAPP_bool_bool(P_1,X_4))
          & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_77_append__same__eq,axiom,
    ! [Ys,Xs,Zs] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Zs),Xs) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),Xs)
    <=> Ys = Zs ) ).

fof(fact_593_sort__foldl__insort,axiom,
    ! [Xs] : foldl_list_nat_nat(cOMBC_1204473209st_nat(linord1850739451at_nat(cOMBI_nat)),nil_nat,Xs) = linord852754176at_nat(cOMBI_nat,Xs) ).

fof(fact_450_replicate__Suc,axiom,
    ! [N_38,X_95] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_95),hAPP_nat_list_nat(replicate_nat(N_38),X_95)) = hAPP_nat_list_nat(replicate_nat(hAPP_nat_nat(suc,N_38)),X_95) ).

fof(fact_623_nat__le__linear,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_541_list__all__cong,axiom,
    ! [G,F,Xs,Ys] :
      ( ( ! [X_4] :
            ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Ys)))
           => ( hBOOL(hAPP_nat_bool(G,X_4))
            <=> hBOOL(hAPP_nat_bool(F,X_4)) ) )
       => ( hBOOL(hAPP_list_nat_bool(list_all_nat(F),Xs))
        <=> hBOOL(hAPP_list_nat_bool(list_all_nat(G),Ys)) ) )
     <= Xs = Ys ) ).

fof(fact_1043_list__size__estimation,axiom,
    ! [Y_2,F,X_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),hAPP_nat_nat(F,X_1)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),list_size_nat(F,Xs))) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_1134_take__hd__drop,axiom,
    ! [N_18,Xs_18] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_18),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_18)))
     => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_18),Xs_18)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,hAPP_l1105242632le_alt(hd_Arr805754088le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_18),Xs_18))),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(suc,N_18)),Xs_18) ) ).

fof(help_fequal_1_1_fequal_000tc__List__Olist_Itc__Nat__Onat_J_T,axiom,
    ! [X,Y] :
      ( Y = X
      | ~ hBOOL(hAPP_list_nat_bool(hAPP_l120351551t_bool(fequal_list_nat,X),Y)) ) ).

fof(fact_1126_less__imp__add__positive,axiom,
    ! [I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J))
     => ? [K_2] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),K_2))
          & hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),K_2) = J ) ) ).

fof(fact_1111_all__nth__imp__all__set,axiom,
    ! [X_1,P_1,Xs] :
      ( ! [I_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
       => hBOOL(hAPP_A862370221t_bool(P_1,X_1)) ) ) ).

fof(fact_165_rev__eq__Cons__iff,axiom,
    ! [Xs,Y_2,Ys] :
      ( rev_nat(Xs) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys)
    <=> Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,rev_nat(Ys)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),nil_nat)) ) ).

fof(fact_1132_psubset__imp__ex__mem,axiom,
    ! [A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le382113706t_bool,A),B))
     => ? [B_1] : hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,B_1),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,B),A))) ) ).

fof(fact_1161_distinct__drop,axiom,
    ! [I_2,Xs_8] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,I_2),Xs_8)))
     <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_8)) ) ).

fof(fact_1163_drop__Nil,axiom,
    ! [N_7] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_7),nil_nat) = nil_nat ).

fof(fact_124_append__eq__Cons__conv,axiom,
    ! [Ys,Zs,X_1,Xs] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys),Zs)
    <=> ( ? [Ys_20] :
            ( Ys = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Ys_20)
            & hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_20),Zs) = Xs )
        | ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs) = Zs
          & nil_nat = Ys ) ) ) ).

fof(fact_845_diff__add__assoc,axiom,
    ! [I,K,J] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),J)),K) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J)) ) ).

fof(fact_746_pred__subset__eq,axiom,
    ! [R_1,S_1] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_f800510211t_bool(cOMBC_226598744l_bool(member_nat),R_1)),hAPP_f800510211t_bool(cOMBC_226598744l_bool(member_nat),S_1)))
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,R_1),S_1)) ) ).

fof(fact_100_Nil__is__append__conv,axiom,
    ! [Xs,Ys] :
      ( ( nil_Ar126264853le_alt = Ys
        & nil_Ar126264853le_alt = Xs )
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) = nil_Ar126264853le_alt ) ).

fof(fact_755_diff__Suc,axiom,
    ! [M_1,N_1] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_1),hAPP_nat_nat(suc,N_1)) = hAPP_nat_nat(nat_case_nat(zero_zero_nat,cOMBI_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_1),N_1)) ).

fof(fact_472_n__not__Suc__n,axiom,
    ! [N] : hAPP_nat_nat(suc,N) != N ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__List__Olist_Itc__HOL__Obool_J_000tc,axiom,
    ! [P,Q,R] : hAPP_nat_list_bool(hAPP_l1656175496t_bool(cOMBC_1038295629t_bool(P),Q),R) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(P,R),Q) ).

fof(fact_1141_set__drop__subset,axiom,
    ! [N_1,Xs] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_1),Xs))),hAPP_l1821533378t_bool(set_nat,Xs))) ).

fof(fact_998_linorder__less__linear,axiom,
    ! [X_11,Y_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_3),X_11))
      | Y_3 = X_11
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_11),Y_3)) ) ).

fof(fact_74_same__append__eq,axiom,
    ! [Xs,Ys,Zs] :
      ( Zs = Ys
    <=> hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Zs) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) ) ).

fof(fact_364_rotate1__def,axiom,
    ! [Xs] : list_c554461815at_nat(nil_nat,cOMBB_472649634at_nat(cOMBC_950362600st_nat(append_nat),hAPP_l383341732st_nat(cOMBC_1204473209st_nat(cons_nat),nil_nat)),Xs) = rotate1_nat(Xs) ).

fof(fact_79_append__eq__appendI,axiom,
    ! [Ys_28,Us,Xs_86,Xs1_2,Zs_5] :
      ( Zs_5 = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_86),Xs1_2)
     => ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs1_2),Us) = Ys_28
       => hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Zs_5),Us) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_86),Ys_28) ) ) ).

fof(fact_93_append__Cons,axiom,
    ! [X_115,Xs_81,Ys_24] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_115),Xs_81)),Ys_24) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_115),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_81),Ys_24)) ).

fof(fact_495_distinct__take,axiom,
    ! [I_12,Xs_50] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,I_12),Xs_50)))
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs_50)) ) ).

fof(fact_406_split__list__propE,axiom,
    ! [P_1,Xs] :
      ( ~ ! [Ys_6,X_4] :
            ( ( ~ hBOOL(hAPP_bool_bool(P_1,X_4))
             <= ? [Zs_2] : Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2)) )
           <= is_bool(X_4) )
     <= ? [X_4] :
          ( hBOOL(hAPP_bool_bool(P_1,X_4))
          & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_1008_add__le__less__mono,axiom,
    ! [C_7,D_2,A_12,B_13] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_12),C_7)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_13),D_2)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,C_7),D_2)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_12),B_13)) ) ).

fof(help_If_2_1_If_000tc__List__Olist_Itc__HOL__Obool_J_T,axiom,
    ! [X,Y] : if_list_bool(fFalse,X,Y) = Y ).

fof(fact_281_takeWhile_Osimps_I1_J,axiom,
    ! [P_1] : nil_nat = takeWhile_nat(P_1,nil_nat) ).

fof(fact_148_rotate__simps,axiom,
    ! [X_1,Xs] :
      ( rotate1_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool))
      & nil_Ar126264853le_alt = rotate1322903650le_alt(nil_Ar126264853le_alt) ) ).

fof(fact_62_butlast__snoc,axiom,
    ! [Xs,X_1] : butlast_bool(hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool))) = Xs ).

fof(fact_728_min__max_Osup_Oassoc,axiom,
    ! [A_46,B_45,C_20] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_46),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,B_45),C_20)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_46),B_45)),C_20) ).

fof(fact_460_nth_Osimps,axiom,
    ! [X_1,Xs,N_1] : hAPP_n401316912le_alt(nat_ca391302041le_alt(X_1,nth_Ar1113433366le_alt(Xs)),N_1) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)),N_1) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__Nat__Onat_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_nat_bool(hAPP_n1699378549t_bool(P,R),Q) = hAPP_nat_bool(hAPP_n1699378549t_bool(cOMBC_nat_nat_bool(P),Q),R) ).

fof(fact_1000_linorder__neq__iff,axiom,
    ! [X_1,Y_2] :
      ( Y_2 != X_1
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),X_1)) ) ) ).

fof(fact_853_take__replicate,axiom,
    ! [I_10,K_5,X_38] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,I_10),hAPP_nat_list_nat(replicate_nat(K_5),X_38)) = hAPP_nat_list_nat(replicate_nat(hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,I_10),K_5)),X_38) ).

fof(fact_134_last_Osimps,axiom,
    ! [X_1,Xs] :
      ( ( ( hBOOL(hAPP_list_bool_bool(last_bool,Xs))
         <= Xs != nil_bool )
        & ( hBOOL(X_1)
         <= nil_bool = Xs ) )
    <=> hBOOL(hAPP_list_bool_bool(last_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))) ) ).

fof(fact_175_rev__swap,axiom,
    ! [Xs,Ys] :
      ( rev_Ar2093961333le_alt(Xs) = Ys
    <=> rev_Ar2093961333le_alt(Ys) = Xs ) ).

fof(fact_199_append__replicate__commute,axiom,
    ! [N_43,X_107,K_6] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_43),X_107)),hAPP_A832564074le_alt(replic351609551le_alt(K_6),X_107)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(K_6),X_107)),hAPP_A832564074le_alt(replic351609551le_alt(N_43),X_107)) ).

fof(fact_462_nat__case__0,axiom,
    ! [F1,F2] : hAPP_nat_list_nat(nat_case_list_nat(F1,F2),zero_zero_nat) = F1 ).

fof(fact_366_nth__Cons__0,axiom,
    ! [X_97,Xs_53] :
      ( is_Arr1861959080le_alt(X_97)
     => X_97 = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_97),Xs_53)),zero_zero_nat) ) ).

fof(fact_101_Nil__is__append__conv,axiom,
    ! [Xs,Ys] :
      ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys) = nil_nat
    <=> ( Ys = nil_nat
        & nil_nat = Xs ) ) ).

fof(fact_378_takeWhile__append1,axiom,
    ! [Ys,P_1,X_1,Xs] :
      ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,X_1))
       => takeWh536362254le_alt(P_1,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)) = takeWh536362254le_alt(P_1,Xs) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_962_le__eq__less__or__eq,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1))
    <=> ( M_1 = N_1
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1)) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__HOL__Obool_000tc__HOL__Obool_000tc__Arrow____Order__,axiom,
    ! [P,Q,R] : hAPP_A862370221t_bool(cOMBB_2104979073le_alt(P,Q),R) = hAPP_bool_bool(P,hAPP_A862370221t_bool(Q,R)) ).

fof(fact_647_le__add2,axiom,
    ! [N,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N))) ).

fof(fact_309_hd__conv__nth,axiom,
    ! [Xs_54] :
      ( hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_54),zero_zero_nat) = hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs_54)
     <= nil_Ar126264853le_alt != Xs_54 ) ).

fof(fact_116_snoc__eq__iff__butlast,axiom,
    ! [Xs,X_1,Ys] :
      ( Ys = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool))
    <=> ( Ys != nil_bool
        & ( hBOOL(X_1)
        <=> hBOOL(hAPP_list_bool_bool(last_bool,Ys)) )
        & butlast_bool(Ys) = Xs ) ) ).

fof(fact_1168_drop__0,axiom,
    ! [Xs_5] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,zero_zero_nat),Xs_5) = Xs_5 ).

fof(fact_1081_take__butlast,axiom,
    ! [N_23,Xs_26] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_23),hAPP_list_nat_nat(size_size_list_nat,Xs_26)))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_23),Xs_26) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_23),butlast_nat(Xs_26)) ) ).

fof(fact_445_nth__Cons__Suc,axiom,
    ! [X_1,Xs,N_1] :
      ( hBOOL(hAPP_nat_bool(nth_bool(Xs),N_1))
    <=> hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)),hAPP_nat_nat(suc,N_1))) ) ).

fof(fact_749_xt1_I16_J,axiom,
    ! [F,C_2,Ba,Aa] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Ba),Aa))
     => ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_2),hAPP_nat_nat(F,Aa)))
         <= ! [X_4,Y_25] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_25),X_4))
             => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,Y_25)),hAPP_nat_nat(F,X_4))) ) )
       <= C_2 = hAPP_nat_nat(F,Ba) ) ) ).

fof(fact_458_nth_Osimps,axiom,
    ! [X_1,Xs,N_1] : hAPP_n1875670159le_alt(nat_ca14895078le_alt(X_1,nth_li2119471145le_alt(Xs)),N_1) = hAPP_n1875670159le_alt(nth_li2119471145le_alt(hAPP_l1891879573le_alt(hAPP_l656323104le_alt(cons_l650111674le_alt,X_1),Xs)),N_1) ).

fof(fact_91_last__snoc,axiom,
    ! [Xs_82,X_116] : hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_82),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_116),nil_nat))) = X_116 ).

fof(fact_322_in__set__sublistD,axiom,
    ! [X_1,Xs,I_11] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,sublis888024346le_alt(Xs,I_11))))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_424_split__list__last__propE,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs)))
          & hBOOL(hAPP_bool_bool(P_1,X_4)) )
     => ~ ! [Ys_6,X_4,Zs_2] :
            ( ( Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2))
             => ( hBOOL(hAPP_bool_bool(P_1,X_4))
               => ~ ! [Xa] :
                      ( ~ hBOOL(hAPP_bool_bool(P_1,Xa))
                     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,Xa),hAPP_l96088310l_bool(set_bool,Zs_2))) ) ) )
           <= is_bool(X_4) ) ) ).

fof(fact_616_foldr__max__sorted,axiom,
    ! [Y_2,Xs] :
      ( ( ( nil_nat != Xs
         => hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(nth_nat(Xs),zero_zero_nat)),Y_2) = hAPP_nat_nat(foldr_nat_nat(ord_max_nat,Xs),Y_2) )
        & ( Y_2 = hAPP_nat_nat(foldr_nat_nat(ord_max_nat,Xs),Y_2)
         <= Xs = nil_nat ) )
     <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,rev_nat(Xs))) ) ).

fof(fact_1085_nth__append,axiom,
    ! [Xs,Ys,N_1] :
      ( ( ( hBOOL(hAPP_nat_bool(nth_bool(Ys),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs))))
         <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) )
        & ( hBOOL(hAPP_nat_bool(nth_bool(Xs),N_1))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) )
    <=> hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Xs),Ys)),N_1)) ) ).

fof(fact_730_le__maxI1,axiom,
    ! [X_71,Y_49] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_71),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_71),Y_49))) ).

fof(fact_570_nat__add__left__commute,axiom,
    ! [X,Y,Z_3] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X),Z_3)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Y),Z_3)) ).

fof(fact_983_order__less__trans,axiom,
    ! [Z_1,X_18,Y_10] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_10),Z_1))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_18),Z_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_18),Y_10)) ) ).

fof(fact_383_dropWhile__eq__Nil__conv,axiom,
    ! [P_1,Xs] :
      ( ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
         => hBOOL(hAPP_nat_bool(P_1,X_4)) )
    <=> nil_nat = dropWhile_nat(P_1,Xs) ) ).

fof(fact_1198_upt__Suc__append,axiom,
    ! [I,J] :
      ( hAPP_nat_list_nat(upt(I),hAPP_nat_nat(suc,J)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(upt(I),J)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,J),nil_nat))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J)) ) ).

fof(help_COMBI_1_1_COMBI_000tc__Nat__Onat_U,axiom,
    ! [P] : hAPP_nat_nat(cOMBI_nat,P) = P ).

fof(fact_402_in__set__conv__decomp__last,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
    <=> ? [Ys_6,Zs_2] :
          ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Zs_2)))
          & hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Zs_2)) = Xs ) ) ).

fof(fact_795_diffs0__imp__equal,axiom,
    ! [M,N] :
      ( ( zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),M)
       => N = M )
     <= zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N) ) ).

fof(fact_60_null__rec_I1_J,axiom,
    ! [X_120,Xs_90] : ~ hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_120),Xs_90))) ).

fof(fact_652_trans__le__add2,axiom,
    ! [M,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),J)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J)) ) ).

fof(fact_342_in__set__insert,axiom,
    ! [X_1,Xs] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(insert_nat,X_1),Xs) = Xs
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_227_replicate__app__Cons__same,axiom,
    ! [N_42,X_104,Xs_57] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(replicate_nat(N_42),X_104)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_104),Xs_57)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_104),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_nat_list_nat(replicate_nat(N_42),X_104)),Xs_57)) ).

fof(fact_310_hd__conv__nth,axiom,
    ! [Xs_54] :
      ( hAPP_nat_nat(nth_nat(Xs_54),zero_zero_nat) = hAPP_list_nat_nat(hd_nat,Xs_54)
     <= nil_nat != Xs_54 ) ).

fof(fact_690_linorder__linear,axiom,
    ! [X_85,Y_60] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_60),X_85))
      | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_85),Y_60)) ) ).

fof(fact_505_notin__set__remove1,axiom,
    ! [Y_2,X_1,Xs] :
      ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     => ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,Y_2),Xs)))) ) ).

fof(fact_583_foldl__Cons,axiom,
    ! [F,Aa,X_1,Xs] : foldl_nat_nat(F,Aa,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) = foldl_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,Aa),X_1),Xs) ).

fof(fact_1158_butlast__drop,axiom,
    ! [N_9,Xs_9] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_9),butlast_nat(Xs_9)) = butlast_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_9),Xs_9)) ).

fof(fact_604_comm__semiring__1__class_Onormalizing__semiring__rules_I24_J,axiom,
    ! [A_66,C_34] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_34),A_66) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_66),C_34) ).

fof(gsy_c_hAPP_000tc__fun_Itc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_Mtc__,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f2013399995l_bool(B_1_1,B_2_1)) ).

fof(fact_1170_tl__drop,axiom,
    ! [N_5,Xs_4] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_5),tl_Arr1453005548le_alt(Xs_4)) = tl_Arr1453005548le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_5),Xs_4)) ).

fof(fact_582_add__Suc__right,axiom,
    ! [M,N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),hAPP_nat_nat(suc,N)) = hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),N)) ).

fof(fact_806_length__take,axiom,
    ! [N_30,Xs_39] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_39)),N_30) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_30),Xs_39)) ).

fof(fact_471_nat__case__Suc,axiom,
    ! [F1,F2,Nat_3] :
      ( hBOOL(hAPP_nat_bool(nat_case_bool(F1,F2),hAPP_nat_nat(suc,Nat_3)))
    <=> hBOOL(hAPP_nat_bool(F2,Nat_3)) ) ).

fof(fact_578_Nat_Oadd__0__right,axiom,
    ! [M] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M),zero_zero_nat) = M ).

fof(fact_767_min__max_Oinf__le2,axiom,
    ! [X_56,Y_41] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_56),Y_41)),Y_41)) ).

fof(fact_725_min__max_Osup__left__idem,axiom,
    ! [X_74,Y_52] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_74),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_74),Y_52)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_74),Y_52) ).

fof(fact_251_dropWhile_Osimps_I2_J,axiom,
    ! [Xs,P_1,X_1] :
      ( ( dropWhile_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)
       <= ~ hBOOL(hAPP_bool_bool(P_1,X_1)) )
      & ( dropWhile_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = dropWhile_bool(P_1,Xs)
       <= hBOOL(hAPP_bool_bool(P_1,X_1)) ) ) ).

fof(fact_686_set__remove1__subset,axiom,
    ! [X_1,Xs] : hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_1),Xs))),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ).

fof(help_COMBK_1_1_COMBK_000tc__fun_Itc__List__Olist_Itc__Nat__Onat_J_Mtc__List__Oli,axiom,
    ! [P,Q] : hAPP_n280362926st_nat(cOMBK_1717478773at_nat(P),Q) = P ).

fof(fact_1052_length__greater__0__conv,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
    <=> Xs != nil_Ar126264853le_alt ) ).

fof(fact_37_distinct__insert,axiom,
    ! [X_123,Xs_94] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(insert960637483le_alt,X_123),Xs_94)))
     <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_94)) ) ).

fof(fact_98_append__Nil,axiom,
    ! [Ys_22] : Ys_22 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,nil_Ar126264853le_alt),Ys_22) ).

fof(fact_190_rev_Osimps_I1_J,axiom,
    nil_nat = rev_nat(nil_nat) ).

fof(fact_855_length__takeWhile__le,axiom,
    ! [P_1,Xs] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs))),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) ).

fof(fact_662_add__increasing2,axiom,
    ! [B_57,A_59,C_28] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_57),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_59),C_28)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_57),A_59)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),C_28)) ) ).

fof(fact_1118_nth__equalityI,axiom,
    ! [Xs_20,Ys_3] :
      ( ( ! [I_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs_20)))
           => hAPP_nat_nat(nth_nat(Ys_3),I_4) = hAPP_nat_nat(nth_nat(Xs_20),I_4) )
       => Ys_3 = Xs_20 )
     <= hAPP_list_nat_nat(size_size_list_nat,Xs_20) = hAPP_list_nat_nat(size_size_list_nat,Ys_3) ) ).

fof(fact_1184_map__Suc__upt,axiom,
    ! [M_1,N_1] : map_nat_nat(suc,hAPP_nat_list_nat(upt(M_1),N_1)) = hAPP_nat_list_nat(upt(hAPP_nat_nat(suc,M_1)),hAPP_nat_nat(suc,N_1)) ).

fof(fact_940_less__Suc__eq,axiom,
    ! [M_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
        | M_1 = N_1 )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),hAPP_nat_nat(suc,N_1))) ) ).

fof(fact_174_rev__swap,axiom,
    ! [Xs,Ys] :
      ( Ys = rev_nat(Xs)
    <=> rev_nat(Ys) = Xs ) ).

fof(fact_325_tl__append,axiom,
    ! [Xs,Ys] : list_c380068407le_alt(tl_Arr1453005548le_alt(Ys),cOMBK_1696648346le_alt(hAPP_l568342716le_alt(cOMBC_1058495865le_alt(append1166636842le_alt),Ys)),Xs) = tl_Arr1453005548le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)) ).

fof(fact_265_takeWhile__dropWhile__id,axiom,
    ! [P_1,Xs] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,takeWh536362254le_alt(P_1,Xs)),dropWh156852662le_alt(P_1,Xs)) = Xs ).

fof(fact_1055_Suc__pred,axiom,
    ! [N] :
      ( hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),hAPP_nat_nat(suc,zero_zero_nat))) = N
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_646_Suc__leD,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M)),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_506_remove1__idem,axiom,
    ! [X_1,Xs] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_1),Xs) = Xs
     <= ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_375_Ball__set__replicate,axiom,
    ! [P_1,N_1,Aa] :
      ( ( N_1 = zero_zero_nat
        | hBOOL(hAPP_A862370221t_bool(P_1,Aa)) )
    <=> ! [X_4] :
          ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_1),Aa)))) )
         <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__HOL__Obool_J_000tc__List__Olist_Itc,axiom,
    ! [P,Q,R] : hAPP_nat_list_bool(cOMBB_1891801486ol_nat(P,Q),R) = hAPP_l1189022293t_bool(P,hAPP_nat_list_bool(Q,R)) ).

fof(fact_1162_sorted__drop,axiom,
    ! [N_8,Xs_7] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_7))
     => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_8),Xs_7))) ) ).

fof(fact_434_split__list,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
     => ? [Ys_6,Zs_2] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs_2)) = Xs ) ).

fof(fact_1100_length__takeWhile__less__P__nth,axiom,
    ! [P_1,Xs,J_1] :
      ( ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),J_1))
         => hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),I_4))) )
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_list_bool_nat(size_size_list_bool,Xs)))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,J_1),hAPP_list_bool_nat(size_size_list_bool,takeWhile_bool(P_1,Xs)))) ) ) ).

fof(fact_738_min__max_Ole__supI,axiom,
    ! [B_42,A_43,X_65] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_43),X_65))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_43),B_42)),X_65))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_42),X_65)) ) ) ).

fof(fact_942_not__less__less__Suc__eq,axiom,
    ! [N_1,M_1] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),M_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_nat_nat(suc,M_1)))
      <=> M_1 = N_1 ) ) ).

fof(fact_490_take__Nil,axiom,
    ! [N_36] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_36),nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(fact_287_replicate__0,axiom,
    ! [X_98] : hAPP_A832564074le_alt(replic351609551le_alt(zero_zero_nat),X_98) = nil_Ar126264853le_alt ).

fof(fact_381_last__in__set,axiom,
    ! [As] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,hAPP_list_nat_nat(last_nat,As)),hAPP_l1821533378t_bool(set_nat,As)))
     <= As != nil_nat ) ).

fof(fact_20_not__Cons__self2,axiom,
    ! [X_125,Xs_96] : Xs_96 != hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_125),Xs_96) ).

fof(fact_25_splice_Osimps_I2_J,axiom,
    ! [V,Va] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,V),Va) = splice360969192le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,V),Va),nil_Ar126264853le_alt) ).

fof(fact_1015_add__gr__0,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),N_1)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M_1)) ) ) ).

fof(fact_1022_le__imp__less__Suc,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_895_DiffD1,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,A),B)))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),A)) ) ).

fof(fact_1071_nth__eq__iff__index__eq,axiom,
    ! [J_1,I_1,Xs] :
      ( hBOOL(hAPP_list_bool_bool(distinct_bool,Xs))
     => ( ( ( ( hBOOL(hAPP_nat_bool(nth_bool(Xs),I_1))
            <=> hBOOL(hAPP_nat_bool(nth_bool(Xs),J_1)) )
          <=> I_1 = J_1 )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) ) ).

fof(fact_660_less__eq__nat_Osimps_I2_J,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(nat_case_bool(fFalse,hAPP_n1699378549t_bool(ord_less_eq_nat,M_1)),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M_1)),N_1)) ) ).

fof(fact_246_member__rec_I1_J,axiom,
    ! [X_1,Xs,Y_2] :
      ( ( is_Arr1861959080le_alt(X_1)
        & is_Arr1861959080le_alt(Y_2) )
     => ( ( Y_2 = X_1
          | hBOOL(hAPP_A862370221t_bool(hAPP_l82377208t_bool(member345038890le_alt,Xs),Y_2)) )
      <=> hBOOL(hAPP_A862370221t_bool(hAPP_l82377208t_bool(member345038890le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)),Y_2)) ) ) ).

fof(fact_572_add_Ocomm__neutral,axiom,
    ! [A_78] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_78),zero_zero_nat) = A_78 ).

fof(fact_291_replicate__empty,axiom,
    ! [N_1,X_1] :
      ( nil_Ar126264853le_alt = hAPP_A832564074le_alt(replic351609551le_alt(N_1),X_1)
    <=> N_1 = zero_zero_nat ) ).

fof(fact_724_min__max_Osup_Oleft__idem,axiom,
    ! [A_48,B_47] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_48),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_48),B_47)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_48),B_47) ).

fof(fact_136_last_Osimps,axiom,
    ! [X_113,Xs_74] :
      ( ( nil_nat != Xs_74
       => hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_113),Xs_74)) = hAPP_list_nat_nat(last_nat,Xs_74) )
      & ( nil_nat = Xs_74
       => hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_113),Xs_74)) = X_113 ) ) ).

fof(fact_771_min__max_Oinf__commute,axiom,
    ! [X_54,Y_39] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_39),X_54) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_54),Y_39) ).

fof(fact_1185_sorted__upt,axiom,
    ! [I,J] : hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_nat_list_nat(upt(I),J))) ).

fof(fact_144_rev__cases,axiom,
    ! [Xs_72] :
      ( nil_Ar126264853le_alt != Xs_72
     => ~ ! [Ys_6,Y_25] :
            ( is_Arr1861959080le_alt(Y_25)
           => Xs_72 != hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),nil_Ar126264853le_alt)) ) ) ).

fof(fact_775_min__max_Oinf__left__commute,axiom,
    ! [X_52,Y_37,Z_19] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_52),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_37),Z_19)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_37),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_52),Z_19)) ).

fof(fact_266_takeWhile__dropWhile__id,axiom,
    ! [P_1,Xs] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,takeWhile_nat(P_1,Xs)),dropWhile_nat(P_1,Xs)) = Xs ).

fof(fact_645_le__SucE,axiom,
    ! [M,N] :
      ( ( M = hAPP_nat_nat(suc,N)
       <= ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),hAPP_nat_nat(suc,N))) ) ).

fof(fact_843_le__add__diff__inverse2,axiom,
    ! [N,M] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M))
     => M = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)),N) ) ).

fof(fact_779_min__max_Oinf__sup__absorb,axiom,
    ! [X_49,Y_34] : X_49 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_49),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_49),Y_34)) ).

fof(fact_1037_nth__take,axiom,
    ! [Xs_27,I_7,N_25] :
      ( hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_25),Xs_27)),I_7) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_27),I_7)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_7),N_25)) ) ).

fof(fact_747_min__max_OSup__fin__set__fold,axiom,
    ! [X_1,Xs] : big_Sup_fin_nat(ord_max_nat,hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs))) = foldl_nat_nat(ord_max_nat,X_1,Xs) ).

fof(fact_214_sorted__tl,axiom,
    ! [Xs_58] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_58))
     => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,tl_nat(Xs_58))) ) ).

fof(help_COMBS_1_1_COMBS_000tc__Nat__Onat_000tc__HOL__Obool_000tc__HOL__Obool_U,axiom,
    ! [P,Q,R] : hAPP_nat_bool(cOMBS_nat_bool_bool(P,Q),R) = hAPP_bool_bool(hAPP_n1006566506l_bool(P,R),hAPP_nat_bool(Q,R)) ).

fof(fact_332_takeWhile__eq__all__conv,axiom,
    ! [P_1,Xs] :
      ( ! [X_4] :
          ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
           => hBOOL(hAPP_A862370221t_bool(P_1,X_4)) )
         <= is_Arr1861959080le_alt(X_4) )
    <=> Xs = takeWh536362254le_alt(P_1,Xs) ) ).

fof(fact_727_min__max_Osup__left__commute,axiom,
    ! [X_73,Y_51,Z_23] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_51),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_73),Z_23)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_73),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_51),Z_23)) ).

fof(fact_892_set__diff__eq,axiom,
    ! [A,B] : collect_nat(cOMBS_nat_bool_bool(cOMBB_1015721476ol_nat(fconj,hAPP_f800510211t_bool(cOMBC_226598744l_bool(member_nat),A)),cOMBB_bool_bool_nat(fNot,hAPP_f800510211t_bool(cOMBC_226598744l_bool(member_nat),B)))) = hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B) ).

fof(fact_376_Ball__set__replicate,axiom,
    ! [P_1,N_1,Aa] :
      ( ( hBOOL(hAPP_nat_bool(P_1,Aa))
        | zero_zero_nat = N_1 )
    <=> ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,hAPP_nat_list_nat(replicate_nat(N_1),Aa))))
         => hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_188_Nil__is__rev__conv,axiom,
    ! [Xs] :
      ( rev_nat(Xs) = nil_nat
    <=> Xs = nil_nat ) ).

fof(fact_8_list_Osimps_I3_J,axiom,
    ! [A_84,List_2] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,A_84),List_2) != nil_nat ).

fof(fact_920_leD,axiom,
    ! [Y_17,X_25] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_17),X_25))
     => ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_25),Y_17)) ) ).

fof(fact_718_set__rev__mp,axiom,
    ! [B,X_1,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),A))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),B))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B)) ) ) ).

fof(fact_665_add__nonneg__nonneg,axiom,
    ! [B_55,A_57] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),B_55))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_57),B_55))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_57)) ) ).

fof(fact_496_sorted__take,axiom,
    ! [N_35,Xs_49] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_35),Xs_49)))
     <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_49)) ) ).

fof(fact_748_xt1_I15_J,axiom,
    ! [C_2,Aa,F,Ba] :
      ( ( ( ! [X_4,Y_25] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_25),X_4))
             => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,Y_25)),hAPP_nat_nat(F,X_4))) )
         => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,C_2)),Aa)) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,C_2),Ba)) )
     <= Aa = hAPP_nat_nat(F,Ba) ) ).

fof(fact_661_add__nonpos__nonpos,axiom,
    ! [B_58,A_60] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_60),B_58)),zero_zero_nat))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_58),zero_zero_nat)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_60),zero_zero_nat)) ) ).

fof(fact_764_min__max_Ole__infI1,axiom,
    ! [B_37,A_37,X_57] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_37),X_57))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_37),B_37)),X_57)) ) ).

fof(fact_769_min__max_Oinf_Oidem,axiom,
    ! [A_36] : A_36 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_36),A_36) ).

fof(fact_1125_ex__least__nat__le,axiom,
    ! [N_1,P_1] :
      ( ( hBOOL(hAPP_nat_bool(P_1,N_1))
       => ? [K_2] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_2),N_1))
            & ! [I_4] :
                ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_2))
               => ~ hBOOL(hAPP_nat_bool(P_1,I_4)) )
            & hBOOL(hAPP_nat_bool(P_1,K_2)) ) )
     <= ~ hBOOL(hAPP_nat_bool(P_1,zero_zero_nat)) ) ).

fof(fact_1188_upt__rec,axiom,
    ! [I,J] :
      ( ( hAPP_nat_list_nat(upt(I),J) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,I),hAPP_nat_list_nat(upt(hAPP_nat_nat(suc,I)),J))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J)) )
      & ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J))
       => hAPP_nat_list_nat(upt(I),J) = nil_nat ) ) ).

fof(fact_974_add__less__cancel__left,axiom,
    ! [C_2,Aa,Ba] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_2),Aa)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_2),Ba)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Aa),Ba)) ) ).

fof(fact_467_nat__case__Suc,axiom,
    ! [F1,F2,Nat_3] : hAPP_nat_list_nat(nat_case_list_nat(F1,F2),hAPP_nat_nat(suc,Nat_3)) = hAPP_nat_list_nat(F2,Nat_3) ).

fof(fact_474_nat_Oinject,axiom,
    ! [Nat_3,Nat_2] :
      ( hAPP_nat_nat(suc,Nat_2) = hAPP_nat_nat(suc,Nat_3)
    <=> Nat_2 = Nat_3 ) ).

fof(help_If_2_1_If_000tc__List__Olist_Itc__Nat__Onat_J_T,axiom,
    ! [X,Y] : Y = if_list_nat(fFalse,X,Y) ).

fof(fact_1120_Skolem__list__nth,axiom,
    ! [P_1,K_3] :
      ( ? [Xs_19] :
          ( ! [I_4] :
              ( hBOOL(hAPP_A862370221t_bool(hAPP_n315299280t_bool(P_1,I_4),hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_19),I_4)))
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3)) )
          & hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_19) = K_3 )
    <=> ! [I_4] :
          ( ? [X1] :
              ( hBOOL(hAPP_A862370221t_bool(hAPP_n315299280t_bool(P_1,I_4),X1))
              & is_Arr1861959080le_alt(X1) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3)) ) ) ).

fof(fact_10_neq__Nil__conv,axiom,
    ! [Xs] :
      ( nil_Ar126264853le_alt != Xs
    <=> ? [Y_25,Ys_6] :
          ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_25),Ys_6) = Xs
          & is_Arr1861959080le_alt(Y_25) ) ) ).

fof(fact_1005_min__less__iff__conj,axiom,
    ! [Z,X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_1),Y_2)))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z),X_1))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z),Y_2)) ) ) ).

fof(fact_1159_butlast__drop,axiom,
    ! [N_9,Xs_9] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_9),butlas1262502241le_alt(Xs_9)) = butlas1262502241le_alt(hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_9),Xs_9)) ).

fof(fact_357_takeWhile__neq__rev,axiom,
    ! [X_1,Xs] :
      ( ( takeWhile_nat(cOMBB_bool_bool_nat(fNot,hAPP_n1699378549t_bool(cOMBC_nat_nat_bool(fequal_nat),X_1)),rev_nat(Xs)) = rev_nat(tl_nat(dropWhile_nat(cOMBB_bool_bool_nat(fNot,hAPP_n1699378549t_bool(cOMBC_nat_nat_bool(fequal_nat),X_1)),Xs)))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) )
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ).

fof(fact_1171_drop__tl,axiom,
    ! [N_4,Xs_3] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_4),tl_nat(Xs_3)) = tl_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_4),Xs_3)) ).

fof(fact_400_in__set__conv__decomp__last,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Zs_2))
          & ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Zs_2))) )
    <=> hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ).

fof(fact_881_length__Suc__conv,axiom,
    ! [Xs,N_1] :
      ( hAPP_list_nat_nat(size_size_list_nat,Xs) = hAPP_nat_nat(suc,N_1)
    <=> ? [Y_25,Ys_6] :
          ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Ys_6) = Xs
          & hAPP_list_nat_nat(size_size_list_nat,Ys_6) = N_1 ) ) ).

fof(fact_1094_dropWhile__nth,axiom,
    ! [J_1,P_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,dropWh156852662le_alt(P_1,Xs))))
     => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(dropWh156852662le_alt(P_1,Xs)),J_1) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,takeWh536362254le_alt(P_1,Xs)))) ) ).

fof(fact_607_nat_Osize_I2_J,axiom,
    ! [Nat] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(nat_size,Nat)),hAPP_nat_nat(suc,zero_zero_nat)) = hAPP_nat_nat(nat_size,hAPP_nat_nat(suc,Nat)) ).

fof(fact_901_take__Suc__conv__app__nth,axiom,
    ! [I_9,Xs_29] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,I_9),Xs_29)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_29),I_9)),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(suc,I_9)),Xs_29)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_9),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_29))) ) ).

fof(fact_164_rev__eq__Cons__iff,axiom,
    ! [Xs,Y_2,Ys] :
      ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),Ys) = rev_Ar2093961333le_alt(Xs)
    <=> Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,rev_Ar2093961333le_alt(Ys)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),nil_Ar126264853le_alt)) ) ).

fof(fact_123_append__eq__Cons__conv,axiom,
    ! [Ys,Zs,X_1,Xs] :
      ( ( ( nil_Ar126264853le_alt = Ys
          & hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs) = Zs )
        | ? [Ys_20] :
            ( Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_20),Zs)
            & Ys = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Ys_20) ) )
    <=> hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),Zs) ) ).

fof(help_fequal_2_1_fequal_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt_T,axiom,
    ! [X,Y] :
      ( Y != X
      | hBOOL(hAPP_A862370221t_bool(hAPP_A1664620203t_bool(fequal1160105444le_alt,X),Y)) ) ).

fof(fact_935_neq0__conv,axiom,
    ! [N_1] :
      ( N_1 != zero_zero_nat
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N_1)) ) ).

fof(fact_664_add__nonneg__eq__0__iff,axiom,
    ! [Y_2,X_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),Y_2))
       => ( zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X_1),Y_2)
        <=> ( Y_2 = zero_zero_nat
            & X_1 = zero_zero_nat ) ) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),X_1)) ) ).

fof(fact_1119_Skolem__list__nth,axiom,
    ! [P_1,K_3] :
      ( ! [I_4] :
          ( ? [X1] :
              ( is_bool(X1)
              & hBOOL(hAPP_bool_bool(hAPP_n1006566506l_bool(P_1,I_4),X1)) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3)) )
    <=> ? [Xs_19] :
          ( ! [I_4] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3))
             => hBOOL(hAPP_bool_bool(hAPP_n1006566506l_bool(P_1,I_4),hAPP_nat_bool(nth_bool(Xs_19),I_4))) )
          & K_3 = hAPP_list_bool_nat(size_size_list_bool,Xs_19) ) ) ).

fof(fact_536_remove1__append,axiom,
    ! [Ys,X_1,Xs] :
      ( ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
       => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_1),Ys)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_1),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)) )
      & ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
       => hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_1),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_1),Xs)),Ys) ) ) ).

fof(fact_1072_nth__eq__iff__index__eq,axiom,
    ! [J_1,I_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
         => ( hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_1) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),J_1)
          <=> I_1 = J_1 ) ) )
     <= hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs)) ) ).

fof(conj_1,conjecture,
    ? [C] : hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,a),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,b),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,C),nil_Ar126264853le_alt))))) ).

fof(fact_151_rotate__simps,axiom,
    ! [X_111,Xs_71] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_71),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_111),nil_Ar126264853le_alt)) = rotate1322903650le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_111),Xs_71))
      & nil_Ar126264853le_alt = rotate1322903650le_alt(nil_Ar126264853le_alt) ) ).

fof(fact_163_rev__eq__Cons__iff,axiom,
    ! [Xs,Y_2,Ys] :
      ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,rev_bool(Ys)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),nil_bool)) = Xs
    <=> rev_bool(Xs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_2),Ys) ) ).

fof(fact_666_sorted__many,axiom,
    ! [Zs_1,X_87,Y_61] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_87),Y_61))
     => ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_87),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_61),Zs_1))))
       <= hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_61),Zs_1))) ) ) ).

fof(fact_1112_all__nth__imp__all__set,axiom,
    ! [X_1,P_1,Xs] :
      ( ! [I_4] :
          ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(nth_nat(Xs),I_4)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs))) )
     => ( hBOOL(hAPP_nat_bool(P_1,X_1))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_1028_diff__less__Suc,axiom,
    ! [M,N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)),hAPP_nat_nat(suc,M))) ).

fof(fact_13_list_Oexhaust,axiom,
    ! [Y_68] :
      ( ~ ! [A_74,List_3] :
            ( Y_68 != hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_74),List_3)
           <= is_Arr1861959080le_alt(A_74) )
     <= nil_Ar126264853le_alt != Y_68 ) ).

fof(fact_367_nth__Cons__0,axiom,
    ! [X_97,Xs_53] : X_97 = hAPP_nat_nat(nth_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_97),Xs_53)),zero_zero_nat) ).

fof(fact_995_less__imp__neq,axiom,
    ! [X_13,Y_5] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_13),Y_5))
     => X_13 != Y_5 ) ).

fof(fact_397_in__set__conv__decomp,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs)))
    <=> ? [Ys_6,Zs_2] : Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Zs_2)) ) ).

fof(fact_374_Bex__set__replicate,axiom,
    ! [P_1,N_1,Aa] :
      ( ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,hAPP_nat_list_nat(replicate_nat(N_1),Aa))))
          & hBOOL(hAPP_nat_bool(P_1,X_4)) )
    <=> ( hBOOL(hAPP_nat_bool(P_1,Aa))
        & zero_zero_nat != N_1 ) ) ).

fof(gsy_c_HOL_Oundefined_000tc__HOL__Obool,axiom,
    is_bool(undefined_bool(bool)) ).

fof(fact_696_ord__le__eq__trans,axiom,
    ! [C_24,A_54,B_52] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_54),B_52))
     => ( B_52 = C_24
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_54),C_24)) ) ) ).

fof(fact_1041_nth__replicate,axiom,
    ! [X_5,I_6,N_24] :
      ( hAPP_nat_nat(nth_nat(hAPP_nat_list_nat(replicate_nat(N_24),X_5)),I_6) = X_5
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_6),N_24)) ) ).

fof(fact_610_foldl__invariant,axiom,
    ! [F,P_1,Xs,Q_1,X_1] :
      ( ( ( ! [X_4,Y_25] :
              ( ( hBOOL(hAPP_nat_bool(P_1,X_4))
                & hBOOL(hAPP_nat_bool(Q_1,Y_25)) )
             => hBOOL(hAPP_nat_bool(Q_1,hAPP_nat_nat(hAPP_nat_fun_nat_nat(F,Y_25),X_4))) )
         => hBOOL(hAPP_nat_bool(Q_1,foldl_nat_nat(F,X_1,Xs))) )
       <= ! [X_4] :
            ( hBOOL(hAPP_nat_bool(P_1,X_4))
           <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) ) )
     <= hBOOL(hAPP_nat_bool(Q_1,X_1)) ) ).

fof(gsy_c_hAPP_000tc__fun_Itc__HOL__Obool_Mtc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_f387058535l_bool(B_1_1,B_2_1)) ).

fof(fact_170_tl__append2,axiom,
    ! [Ys_16,Xs_67] :
      ( nil_Ar126264853le_alt != Xs_67
     => tl_Arr1453005548le_alt(hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_67),Ys_16)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,tl_Arr1453005548le_alt(Xs_67)),Ys_16) ) ).

fof(fact_535_distinct__insort__insert,axiom,
    ! [F,X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord297828738at_nat(F),X_1),Xs)))
     <= hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ).

fof(fact_680_order__refl,axiom,
    ! [X_86] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_86),X_86)) ).

fof(fact_972_less__not__refl,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),N)) ).

fof(fact_27_insert__Nil,axiom,
    ! [X_1] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(insert_bool,X_1),nil_bool) ).

fof(fact_346_list__ex1__iff,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(list_ex1_nat(P_1),Xs))
    <=> ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
          & ! [Y_25] :
              ( X_4 = Y_25
             <= ( hBOOL(hAPP_nat_bool(P_1,Y_25))
                & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Y_25),hAPP_l1821533378t_bool(set_nat,Xs))) ) )
          & hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_158_replicate__append__same,axiom,
    ! [I_13,X_110] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(replic351609551le_alt(I_13),X_110)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_110),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_110),hAPP_A832564074le_alt(replic351609551le_alt(I_13),X_110)) ).

fof(fact_699_order__trans,axiom,
    ! [Z_25,X_82,Y_57] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_82),Y_57))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_57),Z_25))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_82),Z_25)) ) ) ).

fof(fact_1013_less__Suc0,axiom,
    ! [N_1] :
      ( zero_zero_nat = N_1
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_nat_nat(suc,zero_zero_nat))) ) ).

fof(gsy_v_a,hypothesis,
    is_Arr1861959080le_alt(a) ).

fof(fact_641_not__less__eq__eq,axiom,
    ! [M_1,N_1] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N_1)),M_1)) ) ).

fof(fact_910_xt1_I8_J,axiom,
    ! [Z_7,Y_23,X_31] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z_7),Y_23))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z_7),X_31)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_23),X_31)) ) ).

fof(fact_290_empty__replicate,axiom,
    ! [N_1,X_1] :
      ( N_1 = zero_zero_nat
    <=> hAPP_nat_list_nat(replicate_nat(N_1),X_1) = nil_nat ) ).

fof(fact_817_le__diff__iff,axiom,
    ! [N_1,K_3,M_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),M_1))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),N_1))
       => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1))
        <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M_1),K_3)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_1),K_3))) ) ) ) ).

fof(fact_379_takeWhile__append1,axiom,
    ! [Ys,P_1,X_1,Xs] :
      ( ( ~ hBOOL(hAPP_nat_bool(P_1,X_1))
       => takeWhile_nat(P_1,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)) = takeWhile_nat(P_1,Xs) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_887_DiffI,axiom,
    ! [B,C_2,A] :
      ( ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),B))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,A),B))) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),A)) ) ).

fof(fact_741_subsetI,axiom,
    ! [B,A] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
     <= ! [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),A))
         => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),B)) ) ) ).

fof(fact_337_in__set__butlastD,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,butlast_nat(Xs)))) ) ).

fof(fact_482_take__Suc,axiom,
    ! [N_37,Xs_51] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,hAPP_list_nat_nat(hd_nat,Xs_51)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_37),tl_nat(Xs_51))) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(suc,N_37)),Xs_51)
     <= Xs_51 != nil_nat ) ).

fof(help_fconj_1_1_U,axiom,
    ! [Q,P] :
      ( ~ hBOOL(P)
      | hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fconj,P),Q))
      | ~ hBOOL(Q) ) ).

fof(fact_1053_length__pos__if__in__set,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) ) ).

fof(fact_336_in__set__butlastD,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,butlas1262502241le_alt(Xs)))) ) ).

fof(fact_446_nth__Cons__Suc,axiom,
    ! [X_96,Xs_52,N_39] : hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs_52),N_39) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_96),Xs_52)),hAPP_nat_nat(suc,N_39)) ).

fof(fact_1136_take__hd__drop,axiom,
    ! [N_1,Xs] :
      ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_1),Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,hAPP_list_bool_bool(hd_bool,hAPP_l1189022293t_bool(hAPP_n479129736t_bool(drop_bool,N_1),Xs))),nil_bool)) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,hAPP_nat_nat(suc,N_1)),Xs)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) ).

fof(fact_85_last__append,axiom,
    ! [Xs_83,Ys_25] :
      ( ( Ys_25 != nil_nat
       => hAPP_list_nat_nat(last_nat,Ys_25) = hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_83),Ys_25)) )
      & ( nil_nat = Ys_25
       => hAPP_list_nat_nat(last_nat,Xs_83) = hAPP_list_nat_nat(last_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_83),Ys_25)) ) ) ).

fof(fact_551_split__list__last__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4,Zs_2] :
          ( hBOOL(hAPP_nat_bool(P_1,X_4))
          & ! [Xa] :
              ( ~ hBOOL(hAPP_nat_bool(P_1,Xa))
             <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Zs_2))) )
          & Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) )
     <= ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
          & hBOOL(hAPP_nat_bool(P_1,X_4)) ) ) ).

fof(fact_195_last__rev,axiom,
    ! [Xs_64] :
      ( Xs_64 != nil_Ar126264853le_alt
     => hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs_64) = hAPP_l1105242632le_alt(last_A57386030le_alt,rev_Ar2093961333le_alt(Xs_64)) ) ).

fof(fact_659_max__Suc2,axiom,
    ! [M_1,N_1] : hAPP_nat_nat(nat_case_nat(hAPP_nat_nat(suc,N_1),cOMBB_nat_nat_nat(suc,hAPP_nat_fun_nat_nat(cOMBC_nat_nat_nat(ord_max_nat),N_1))),M_1) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,M_1),hAPP_nat_nat(suc,N_1)) ).

fof(fact_547_split__list__prop,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
     => ? [Ys_6,X_4] :
          ( is_Arr1861959080le_alt(X_4)
          & ? [Zs_2] : Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4)) ) ) ).

fof(fact_1105_nth__take__lemma,axiom,
    ! [Ys_4,K_4,Xs_21] :
      ( ( ( ! [I_4] :
              ( hAPP_nat_nat(nth_nat(Ys_4),I_4) = hAPP_nat_nat(nth_nat(Xs_21),I_4)
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_4)) )
         => hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,K_4),Xs_21) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,K_4),Ys_4) )
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_4),hAPP_list_nat_nat(size_size_list_nat,Ys_4))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_4),hAPP_list_nat_nat(size_size_list_nat,Xs_21))) ) ).

fof(fact_11_neq__Nil__conv,axiom,
    ! [Xs] :
      ( nil_nat != Xs
    <=> ? [Y_25,Ys_6] : Xs = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),Ys_6) ) ).

fof(fact_407_split__list__propE,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4)) )
     => ~ ! [Ys_6,X_4] :
            ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,X_4))
             <= ? [Zs_2] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2)) = Xs )
           <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_813_diff__le__mono,axiom,
    ! [L,M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),L)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N),L)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_162_rev_Osimps_I2_J,axiom,
    ! [X_109,Xs_70] : rev_nat(hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_109),Xs_70)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,rev_nat(Xs_70)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_109),nil_nat)) ).

fof(fact_586_one__is__add,axiom,
    ! [M_1,N_1] :
      ( ( ( zero_zero_nat = N_1
          & M_1 = hAPP_nat_nat(suc,zero_zero_nat) )
        | ( hAPP_nat_nat(suc,zero_zero_nat) = N_1
          & zero_zero_nat = M_1 ) )
    <=> hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),N_1) = hAPP_nat_nat(suc,zero_zero_nat) ) ).

fof(fact_1090_rev__nth,axiom,
    ! [N_1,Xs] :
      ( ( hBOOL(hAPP_nat_bool(nth_bool(rev_bool(Xs)),N_1))
      <=> hBOOL(hAPP_nat_bool(nth_bool(Xs),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_list_bool_nat(size_size_list_bool,Xs)),hAPP_nat_nat(suc,N_1)))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) ).

fof(fact_1110_all__nth__imp__all__set,axiom,
    ! [X_1,P_1,Xs] :
      ( ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs)))
         => hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),I_4))) )
     => ( hBOOL(hAPP_bool_bool(P_1,X_1))
       <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_1070_distinct__conv__nth,axiom,
    ! [Xs] :
      ( ! [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs)))
         => ! [J_2] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,J_2),hAPP_list_nat_nat(size_size_list_nat,Xs)))
             => ( hAPP_nat_nat(nth_nat(Xs),I_4) != hAPP_nat_nat(nth_nat(Xs),J_2)
               <= I_4 != J_2 ) ) )
    <=> hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ).

fof(fact_86_maps__simps_I1_J,axiom,
    ! [F,X_1,Xs] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_A832564074le_alt(F,X_1)),maps_A461338881le_alt(F,Xs)) = maps_A461338881le_alt(F,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) ).

fof(fact_222_rev__singleton__conv,axiom,
    ! [Xs,X_1] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool) = rev_bool(Xs)
    <=> hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool) = Xs ) ).

fof(fact_723_min__max_Osup__commute,axiom,
    ! [X_75,Y_53] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_75),Y_53) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_53),X_75) ).

fof(fact_808_neq__if__length__neq,axiom,
    ! [Xs_38,Ys_12] :
      ( Ys_12 != Xs_38
     <= hAPP_list_nat_nat(size_size_list_nat,Xs_38) != hAPP_list_nat_nat(size_size_list_nat,Ys_12) ) ).

fof(fact_973_add__less__cancel__right,axiom,
    ! [Aa,C_2,Ba] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Aa),C_2)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Ba),C_2)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Aa),Ba)) ) ).

fof(fact_800_diff__diff__left,axiom,
    ! [I,J,K] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,I),J)),K) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),K)) ).

fof(fact_537_remove1__append,axiom,
    ! [Ys,X_1,Xs] :
      ( ( hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),Xs)),Ys) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys))
       <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) )
      & ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),Ys))
       <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_185_rev__is__Nil__conv,axiom,
    ! [Xs] :
      ( nil_Ar126264853le_alt = rev_Ar2093961333le_alt(Xs)
    <=> Xs = nil_Ar126264853le_alt ) ).

fof(fact_884_min__max_Odistrib__imp1,axiom,
    ! [X_34,Y_24,Z_8] :
      ( ! [X_4,Y_25,Z_9] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_4),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_25),Z_9)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_4),Y_25)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_4),Z_9))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_34),Y_24)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_34),Z_8)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_34),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_24),Z_8)) ) ).

fof(fact_766_min__max_Ole__iff__inf,axiom,
    ! [X_1,Y_2] :
      ( X_1 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_1),Y_2)
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2)) ) ).

fof(fact_1122_mono__nat__linear__lb,axiom,
    ! [M_1,K_3,F] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(F,M_1)),K_3)),hAPP_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,M_1),K_3))))
     <= ! [M_5,N_19] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(F,M_5)),hAPP_nat_nat(F,N_19)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_5),N_19)) ) ) ).

fof(fact_427_split__list__first,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] :
          ( Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Zs_2))
          & ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Ys_6))) )
     <= hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ).

fof(fact_1066_nth__mem,axiom,
    ! [N_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),N_1)),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_539_sorted__insort__insert,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs))
     => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord297828738at_nat(cOMBI_nat),X_1),Xs))) ) ).

fof(fact_1164_drop__Nil,axiom,
    ! [N_7] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_7),nil_Ar126264853le_alt) = nil_Ar126264853le_alt ).

fof(fact_1108_psubsetD,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le1384968325t_bool,A),B))
     => ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),A))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),B)) ) ) ).

fof(fact_598_sorted__sort,axiom,
    ! [Xs] : hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,linord852754176at_nat(cOMBI_nat,Xs))) ).

fof(fact_179_rev__replicate,axiom,
    ! [N_44,X_108] : hAPP_nat_list_nat(replicate_nat(N_44),X_108) = rev_nat(hAPP_nat_list_nat(replicate_nat(N_44),X_108)) ).

fof(fact_1194_take__upt,axiom,
    ! [I,M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),M)),N))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,M),hAPP_nat_list_nat(upt(I),N)) = hAPP_nat_list_nat(upt(I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I),M)) ) ).

fof(fact_78_append__eq__appendI,axiom,
    ! [Ys_28,Us,Xs_86,Xs1_2,Zs_5] :
      ( ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs_5),Us) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_86),Ys_28)
       <= hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs1_2),Us) = Ys_28 )
     <= Zs_5 = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_86),Xs1_2) ) ).

fof(fact_663_add__increasing,axiom,
    ! [B_56,C_27,A_58] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_56),C_27))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_56),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_58),C_27))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,zero_zero_nat),A_58)) ) ).

fof(fact_703_set__take__subset__set__take,axiom,
    ! [Xs,M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1))
     => hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,M_1),Xs))),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_1),Xs)))) ) ).

fof(fact_742_weak__decr__stable,axiom,
    ! [F] :
      ( ? [I_4] :
        ! [K_2] : hAPP_nat_nat(F,I_4) = hAPP_nat_nat(F,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I_4),K_2))
     <= ! [I_4] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(F,hAPP_nat_nat(suc,I_4))),hAPP_nat_nat(F,I_4))) ) ).

fof(help_If_3_1_If_000tc__List__Olist_Itc__Nat__Onat_J_T,axiom,
    ! [P] :
      ( ( fFalse = P
        | fTrue = P )
     <= is_bool(P) ) ).

fof(fact_5_list_Osimps_I2_J,axiom,
    ! [A_85,List_4] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,A_85),List_4) != nil_nat ).

fof(fact_1103_nth__take__lemma,axiom,
    ! [Ys,K_3,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),hAPP_list_bool_nat(size_size_list_bool,Xs)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K_3),hAPP_list_bool_nat(size_size_list_bool,Ys)))
       => ( hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,K_3),Xs) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,K_3),Ys)
         <= ! [I_4] :
              ( ( hBOOL(hAPP_nat_bool(nth_bool(Xs),I_4))
              <=> hBOOL(hAPP_nat_bool(nth_bool(Ys),I_4)) )
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),K_3)) ) ) ) ) ).

fof(fact_1181_append__eq__conv__conj,axiom,
    ! [Xs,Ys,Zs] :
      ( ( hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)),Zs) = Xs
        & hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)),Zs) = Ys )
    <=> Zs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) ) ).

fof(help_If_3_1_If_000tc__List__Olist_Itc__HOL__Obool_J_T,axiom,
    ! [P] :
      ( ( fTrue = P
        | P = fFalse )
     <= is_bool(P) ) ).

fof(fact_760_min__max_Ole__infI,axiom,
    ! [B_39,X_61,A_39] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_61),B_39))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_61),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_39),B_39))) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_61),A_39)) ) ).

fof(fact_773_min__max_Oinf__left__idem,axiom,
    ! [X_53,Y_38] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_53),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_53),Y_38)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_53),Y_38) ).

fof(fact_1063_all__set__conv__all__nth,axiom,
    ! [P_1,Xs] :
      ( ! [I_4] :
          ( hBOOL(hAPP_A862370221t_bool(P_1,hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4)))
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs))) )
    <=> ! [X_4] :
          ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
         <= is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_851_take__all,axiom,
    ! [Xs_33,N_27] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_27),Xs_33) = Xs_33
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_33)),N_27)) ) ).

fof(help_COMBB_1_1_COMBB_000tc__Nat__Onat_000tc__Nat__Onat_000tc__Nat__Onat_U,axiom,
    ! [P,Q,R] : hAPP_nat_nat(P,hAPP_nat_nat(Q,R)) = hAPP_nat_nat(cOMBB_nat_nat_nat(P,Q),R) ).

fof(fact_1011_add__neg__neg,axiom,
    ! [B_10,A_9] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_9),B_10)),zero_zero_nat))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_10),zero_zero_nat)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_9),zero_zero_nat)) ) ).

fof(fact_413_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : map_fi80499576t_bool(F,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)) = option718651152l_bool(map_fi80499576t_bool(F,Xs),hAPP_l1045755451t_bool(cOMBC_80330970t_bool(cons_bool),map_fi80499576t_bool(F,Xs)),hAPP_A524667246n_bool(F,X_1)) ).

fof(fact_1106_list__size__pointwise,axiom,
    ! [F,G,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,list_s1237850263le_alt(F,Xs)),list_s1237850263le_alt(G,Xs)))
     <= ! [X_4] :
          ( is_Arr1861959080le_alt(X_4)
         => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_A2113590458lt_nat(F,X_4)),hAPP_A2113590458lt_nat(G,X_4)))
           <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ) ) ).

fof(fact_673_sorted__Cons,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)))
    <=> ( ! [X_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),X_4))
           <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) )
        & hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs)) ) ) ).

fof(fact_3_list_Osimps_I2_J,axiom,
    ! [A_84,List_2] : nil_bool != hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,A_84),List_2) ).

fof(fact_937_gr__implies__not0,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => N != zero_zero_nat ) ).

fof(fact_373_Bex__set__replicate,axiom,
    ! [P_1,N_1,Aa] :
      ( ( hBOOL(hAPP_A862370221t_bool(P_1,Aa))
        & zero_zero_nat != N_1 )
    <=> ? [X_4] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_A832564074le_alt(replic351609551le_alt(N_1),Aa))))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & is_Arr1861959080le_alt(X_4) ) ) ).

fof(fact_684_set__take__subset,axiom,
    ! [N_1,Xs] : hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_1),Xs))),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ).

fof(fact_735_min__max_Ole__supI2,axiom,
    ! [A_44,X_68,B_43] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_68),B_43))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_68),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_44),B_43))) ) ).

fof(fact_989_order__less__asym_H,axiom,
    ! [A_17,B_18] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_17),B_18))
     => ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_18),A_17)) ) ).

fof(fact_1166_in__set__dropD,axiom,
    ! [X_1,N_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_1),Xs)))) ) ).

fof(fact_526_take__Suc__Cons,axiom,
    ! [N_1,X_1,Xs] : hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_1),Xs)) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,hAPP_nat_nat(suc,N_1)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) ).

fof(fact_122_append__eq__Cons__conv,axiom,
    ! [Ys,Zs,X_1,Xs] :
      ( hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys),Zs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)
    <=> ( ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs) = Zs
          & nil_bool = Ys )
        | ? [Ys_20] :
            ( Ys = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Ys_20)
            & Xs = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_20),Zs) ) ) ) ).

fof(fact_700_xt1_I5_J,axiom,
    ! [Y_56,X_81] :
      ( ( Y_56 = X_81
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_81),Y_56)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_56),X_81)) ) ).

fof(fact_712_subsetD,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,A),B))
     => ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),A))
       => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),B)) ) ) ).

fof(fact_1036_nth__take,axiom,
    ! [Xs,I_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_1),Xs)),I_1))
      <=> hBOOL(hAPP_nat_bool(nth_bool(Xs),I_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),N_1)) ) ).

fof(fact_985_ord__less__eq__trans,axiom,
    ! [C_10,A_21,B_22] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_21),C_10))
       <= C_10 = B_22 )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_21),B_22)) ) ).

fof(fact_1178_drop__all,axiom,
    ! [Xs_2,N_3] :
      ( hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_3),Xs_2) = nil_Ar126264853le_alt
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_2)),N_3)) ) ).

fof(fact_470_nat__case__Suc,axiom,
    ! [F1,F2,Nat_3] : hAPP_nat_nat(nat_case_nat(F1,F2),hAPP_nat_nat(suc,Nat_3)) = hAPP_nat_nat(F2,Nat_3) ).

fof(fact_22_list_Oinject,axiom,
    ! [Aa,List_1,A_84,List_2] :
      ( ( is_Arr1861959080le_alt(Aa)
        & is_Arr1861959080le_alt(A_84) )
     => ( hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,A_84),List_2) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Aa),List_1)
      <=> ( A_84 = Aa
          & List_1 = List_2 ) ) ) ).

fof(fact_293_takeWhile_Osimps_I2_J,axiom,
    ! [Xs,P_1,X_1] :
      ( ( ~ hBOOL(hAPP_bool_bool(P_1,X_1))
       => takeWhile_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)) = nil_bool )
      & ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),takeWhile_bool(P_1,Xs)) = takeWhile_bool(P_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs))
       <= hBOOL(hAPP_bool_bool(P_1,X_1)) ) ) ).

fof(fact_398_in__set__conv__decomp,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
    <=> ? [Ys_6,Zs_2] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Zs_2)) = Xs ) ).

fof(fact_987_ord__eq__less__trans,axiom,
    ! [C_8,A_19,B_20] :
      ( A_19 = B_20
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_19),C_8))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_20),C_8)) ) ) ).

fof(fact_1082_list__all__length,axiom,
    ! [P_1,Xs] :
      ( ! [N_19] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_19),hAPP_list_bool_nat(size_size_list_bool,Xs)))
         => hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),N_19))) )
    <=> hBOOL(hAPP_list_bool_bool(list_all_bool(P_1),Xs)) ) ).

fof(fact_648_le__add1,axiom,
    ! [N,M] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,N),M))) ).

fof(fact_900_take__Suc__conv__app__nth,axiom,
    ! [I_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_list_bool_nat(size_size_list_bool,Xs)))
     => hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,hAPP_nat_nat(suc,I_1)),Xs) = hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,I_1),Xs)),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,hAPP_nat_bool(nth_bool(Xs),I_1)),nil_bool)) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__Nat__Onat_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_list_nat_bool(B_1_1,B_2_1)) ).

fof(fact_486_list__ex1__simps_I2_J,axiom,
    ! [P_1,X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(list_ex1_nat(P_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)))
    <=> ( ( hBOOL(hAPP_list_nat_bool(list_all_nat(cOMBS_nat_bool_bool(cOMBB_1015721476ol_nat(fdisj,cOMBB_bool_bool_nat(fNot,P_1)),hAPP_n1699378549t_bool(fequal_nat,X_1))),Xs))
         <= hBOOL(hAPP_nat_bool(P_1,X_1)) )
        & ( ~ hBOOL(hAPP_nat_bool(P_1,X_1))
         => hBOOL(hAPP_list_nat_bool(list_ex1_nat(P_1),Xs)) ) ) ) ).

fof(fact_852_take__replicate,axiom,
    ! [I_10,K_5,X_38] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,I_10),hAPP_A832564074le_alt(replic351609551le_alt(K_5),X_38)) = hAPP_A832564074le_alt(replic351609551le_alt(hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,I_10),K_5)),X_38) ).

fof(fact_618_bool_Osize_I1_J,axiom,
    zero_zero_nat = hAPP_bool_nat(bool_size,fTrue) ).

fof(gsy_c_fTrue,axiom,
    is_bool(fTrue) ).

fof(fact_579_plus__nat_Oadd__0,axiom,
    ! [N] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,zero_zero_nat),N) = N ).

fof(fact_319_notin__set__sublistI,axiom,
    ! [I_11,X_1,Xs] :
      ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
     => ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,sublis888024346le_alt(Xs,I_11)))) ) ).

fof(fact_707_max__leastL,axiom,
    ! [X_77,Least_2] :
      ( ! [X_4] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Least_2),X_4))
     => X_77 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Least_2),X_77) ) ).

fof(fact_912_xt1_I7_J,axiom,
    ! [Z_5,Y_21,X_29] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_21),X_29))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Z_5),Y_21))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Z_5),X_29)) ) ) ).

fof(fact_64_butlast__snoc,axiom,
    ! [Xs_89,X_119] : Xs_89 = butlast_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_89),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_119),nil_nat))) ).

fof(fact_508_distinct__remove1,axiom,
    ! [X_91,Xs_47] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_47))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_91),Xs_47))) ) ).

fof(gsy_c_hAPP_000tc__List__Olist_Itc__HOL__Obool_J_000tc__HOL__Obool,axiom,
    ! [B_1_1,B_2_1] : is_bool(hAPP_list_bool_bool(B_1_1,B_2_1)) ).

fof(fact_49_list_Osimps_I4_J,axiom,
    ! [F1,F2] : list_c380068407le_alt(F1,F2,nil_Ar126264853le_alt) = F1 ).

fof(fact_1165_in__set__dropD,axiom,
    ! [X_1,N_1,Xs] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_1),Xs)))) ) ).

fof(fact_145_rev__cases,axiom,
    ! [Xs_72] :
      ( ~ ! [Ys_6,Y_25] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_25),nil_nat)) != Xs_72
     <= Xs_72 != nil_nat ) ).

fof(fact_212_distinct__tl,axiom,
    ! [Xs_59] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs_59))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,tl_Arr1453005548le_alt(Xs_59))) ) ).

fof(fact_438_split__list__first__prop__iff,axiom,
    ! [P_1,Xs] :
      ( ? [X_4] :
          ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs)))
          & hBOOL(hAPP_nat_bool(P_1,X_4)) )
    <=> ? [Ys_6,X_4] :
          ( ? [Zs_2] : Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2))
          & hBOOL(hAPP_nat_bool(P_1,X_4))
          & ! [Xa] :
              ( ~ hBOOL(hAPP_nat_bool(P_1,Xa))
             <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Ys_6))) ) ) ) ).

fof(fact_585_foldl__append,axiom,
    ! [F,Aa,Xs,Ys] : foldl_nat_nat(F,foldl_nat_nat(F,Aa,Xs),Ys) = foldl_nat_nat(F,Aa,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys)) ).

fof(fact_411_takeWhile__cong,axiom,
    ! [Q_1,P_1,L_2,K_3] :
      ( L_2 = K_3
     => ( takeWh536362254le_alt(P_1,L_2) = takeWh536362254le_alt(Q_1,K_3)
       <= ! [X_4] :
            ( is_Arr1861959080le_alt(X_4)
           => ( ( hBOOL(hAPP_A862370221t_bool(Q_1,X_4))
              <=> hBOOL(hAPP_A862370221t_bool(P_1,X_4)) )
             <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,L_2))) ) ) ) ) ).

fof(help_fdisj_3_1_U,axiom,
    ! [P,Q] :
      ( hBOOL(Q)
      | hBOOL(P)
      | ~ hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(fdisj,P),Q)) ) ).

fof(fact_873_Max_Oidem,axiom,
    ! [X_36] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_36),X_36) = X_36 ).

fof(fact_554_split__list__first__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( ! [Xa] :
              ( ~ hBOOL(hAPP_nat_bool(P_1,Xa))
             <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,Xa),hAPP_l1821533378t_bool(set_nat,Ys_6))) )
          & hBOOL(hAPP_nat_bool(P_1,X_4))
          & ? [Zs_2] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_4),Zs_2)) = Xs )
     <= ? [X_4] :
          ( hBOOL(hAPP_nat_bool(P_1,X_4))
          & hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_1176_drop__eq__Nil,axiom,
    ! [N_1,Xs] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)),N_1))
    <=> hAPP_l726444215le_alt(hAPP_n2139729636le_alt(drop_A186780501le_alt,N_1),Xs) = nil_Ar126264853le_alt ) ).

fof(fact_941_Suc__less__eq,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(suc,M_1)),hAPP_nat_nat(suc,N_1))) ) ).

fof(fact_40_splice_Osimps_I3_J,axiom,
    ! [X_122,Xs_93,Y_67,Ys_31] : splice360969192le_alt(hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_122),Xs_93),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_67),Ys_31)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_122),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_67),splice360969192le_alt(Xs_93,Ys_31))) ).

fof(fact_670_list__size__estimation_H,axiom,
    ! [Y_2,F,X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),list_size_nat(F,Xs)))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),hAPP_nat_nat(F,X_1))) ) ) ).

fof(fact_907_zero__less__Suc,axiom,
    ! [N] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),hAPP_nat_nat(suc,N))) ).

fof(fact_685_set__take__subset,axiom,
    ! [N_1,Xs] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_1),Xs))),hAPP_l1821533378t_bool(set_nat,Xs))) ).

fof(fact_921_xt1_I12_J,axiom,
    ! [A_29,B_30] :
      ( B_30 != A_29
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_30),A_29))
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_30),A_29)) ) ) ).

fof(fact_784_length__rev,axiom,
    ! [Xs_41] : hAPP_list_nat_nat(size_size_list_nat,Xs_41) = hAPP_list_nat_nat(size_size_list_nat,rev_nat(Xs_41)) ).

fof(fact_1004_min__less__iff__disj,axiom,
    ! [X_1,Y_2,Z] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Z))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_2),Z)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,X_1),Y_2)),Z)) ) ).

fof(fact_504_notin__set__remove1,axiom,
    ! [Y_2,X_1,Xs] :
      ( ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,Y_2),Xs))))
     <= ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_776_min__max_Oinf_Oassoc,axiom,
    ! [A_32,B_33,C_17] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_32),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,B_33),C_17)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_32),B_33)),C_17) ).

fof(fact_247_member__rec_I1_J,axiom,
    ! [X_1,Xs,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_l1821533378t_bool(member_nat_1,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)),Y_2))
    <=> ( hBOOL(hAPP_nat_bool(hAPP_l1821533378t_bool(member_nat_1,Xs),Y_2))
        | X_1 = Y_2 ) ) ).

fof(fact_1080_take__butlast,axiom,
    ! [N_23,Xs_26] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_23),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_26)))
     => hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_23),Xs_26) = hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_23),butlas1262502241le_alt(Xs_26)) ) ).

fof(fact_861_takeWhile__eq__take,axiom,
    ! [P_1,Xs] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs))),Xs) = takeWhile_nat(P_1,Xs) ).

fof(fact_553_split__list__first__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( ? [Zs_2] : Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys_6),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_4),Zs_2))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4))
          & ! [Xa] :
              ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,Xa),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Ys_6)))
             => ~ hBOOL(hAPP_A862370221t_bool(P_1,Xa)) )
          & is_Arr1861959080le_alt(X_4) )
     <= ? [X_4] :
          ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs)))
          & hBOOL(hAPP_A862370221t_bool(P_1,X_4)) ) ) ).

fof(fact_780_min__max_Osup__inf__distrib1,axiom,
    ! [X_48,Y_33,Z_17] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_48),Y_33)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_48),Z_17)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_48),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_33),Z_17)) ).

fof(fact_76_append__same__eq,axiom,
    ! [Ys,Xs,Zs] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),Xs) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Zs),Xs)
    <=> Zs = Ys ) ).

fof(fact_1023_Suc__leI,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,M)),N)) ) ).

fof(fact_1002_min__max_Oless__supI2,axiom,
    ! [A_16,X_9,B_17] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_9),B_17))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_9),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,A_16),B_17))) ) ).

fof(fact_238_list__ex1__simps_I1_J,axiom,
    ! [P_1] : ~ hBOOL(hAPP_l1386638586t_bool(list_e1226799320le_alt(P_1),nil_Ar126264853le_alt)) ).

fof(fact_595_comm__semiring__1__class_Onormalizing__semiring__rules_I6_J,axiom,
    ! [A_72] : A_72 = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_72),zero_zero_nat) ).

fof(fact_36_butlast_Osimps_I1_J,axiom,
    butlast_nat(nil_nat) = nil_nat ).

fof(fact_317_distinct__insort,axiom,
    ! [F,X_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(F),X_1),Xs)))
    <=> ( ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
        & hBOOL(hAPP_list_nat_bool(distinct_nat,Xs)) ) ) ).

fof(fact_485_list__ex1__simps_I2_J,axiom,
    ! [P_1,X_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(list_e1226799320le_alt(P_1),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs)))
    <=> ( ( hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(cOMBS_1393264256l_bool(cOMBB_803794783le_alt(fdisj,cOMBB_2104979073le_alt(fNot,P_1)),hAPP_A1664620203t_bool(fequal1160105444le_alt,X_1))),Xs))
         <= hBOOL(hAPP_A862370221t_bool(P_1,X_1)) )
        & ( hBOOL(hAPP_l1386638586t_bool(list_e1226799320le_alt(P_1),Xs))
         <= ~ hBOOL(hAPP_A862370221t_bool(P_1,X_1)) ) ) ) ).

fof(fact_243_insert,axiom,
    ! [Y_65,X_102,Xs_56] :
      ( hBOOL(hAPP_l1386638586t_bool(listMe1065601537le_alt(X_102),Xs_56))
     => hBOOL(hAPP_l1386638586t_bool(listMe1065601537le_alt(X_102),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_65),Xs_56))) ) ).

fof(fact_770_min__max_Oinf_Ocommute,axiom,
    ! [A_35,B_36] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,B_36),A_35) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_35),B_36) ).

fof(fact_288_replicate__0,axiom,
    ! [X_98] : nil_nat = hAPP_nat_list_nat(replicate_nat(zero_zero_nat),X_98) ).

fof(fact_50_list_Osimps_I4_J,axiom,
    ! [F1,F2] : F1 = list_c554461815at_nat(F1,F2,nil_nat) ).

fof(fact_399_in__set__conv__decomp,axiom,
    ! [X_1,Xs] :
      ( ? [Ys_6,Zs_2] : hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Ys_6),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Zs_2)) = Xs
    <=> hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_612_foldr__conv__foldl,axiom,
    ! [Xs,Aa] : foldl_nat_nat(plus_plus_nat,Aa,Xs) = hAPP_nat_nat(foldr_nat_nat(plus_plus_nat,Xs),Aa) ).

fof(fact_237_hd__dropWhile,axiom,
    ! [P_1,Xs] :
      ( ~ hBOOL(hAPP_nat_bool(P_1,hAPP_list_nat_nat(hd_nat,dropWhile_nat(P_1,Xs))))
     <= dropWhile_nat(P_1,Xs) != nil_nat ) ).

fof(fact_1189_upt__conv__Cons,axiom,
    ! [I,J] :
      ( hAPP_nat_list_nat(upt(I),J) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,I),hAPP_nat_list_nat(upt(hAPP_nat_nat(suc,I)),J))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J)) ) ).

fof(fact_1001_order__less__irrefl,axiom,
    ! [X_10] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_10),X_10)) ).

fof(fact_689_set__sublist__subset,axiom,
    ! [Xs,I_11] : hBOOL(hAPP_f54304608l_bool(hAPP_f103356543l_bool(ord_le1568362934t_bool,hAPP_l1821533378t_bool(set_nat,sublist_nat(Xs,I_11))),hAPP_l1821533378t_bool(set_nat,Xs))) ).

fof(fact_385_in__set__butlast__appendI,axiom,
    ! [Ys,X_1,Xs] :
      ( ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,butlast_nat(Ys))))
        | hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,butlast_nat(Xs)))) )
     => hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,butlast_nat(hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs),Ys))))) ) ).

fof(fact_846_add__diff__assoc2,axiom,
    ! [I,K,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,K),J))
     => hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),I)),K) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J),K)),I) ) ).

fof(fact_133_sorted__butlast,axiom,
    ! [Xs_75] :
      ( ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,Xs_75))
       => hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,butlast_nat(Xs_75))) )
     <= nil_nat != Xs_75 ) ).

fof(fact_87_maps__simps_I1_J,axiom,
    ! [F,X_1,Xs] : hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_n1875670159le_alt(F,X_1)),maps_n2115510812le_alt(F,Xs)) = maps_n2115510812le_alt(F,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) ).

fof(fact_318_insort__left__comm,axiom,
    ! [X_1,Y_2,Xs] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),Y_2),hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),X_1),Xs)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(linord1850739451at_nat(cOMBI_nat),Y_2),Xs)) ).

fof(fact_827_list_Osize_I3_J,axiom,
    hAPP_list_nat_nat(size_size_list_nat,nil_nat) = zero_zero_nat ).

fof(help_COMBB_1_1_COMBB_000tc__List__Olist_Itc__Nat__Onat_J_000tc__List__Olist_Itc_,axiom,
    ! [P,Q,R] : hAPP_nat_list_nat(cOMBB_850496866at_nat(P,Q),R) = hAPP_l248265089st_nat(P,hAPP_nat_list_nat(Q,R)) ).

fof(fact_562_add__left__imp__eq,axiom,
    ! [A_80,B_68,C_41] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_80),B_68) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_80),C_41)
     => C_41 = B_68 ) ).

fof(fact_928_order__less__le,axiom,
    ! [X_1,Y_2] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_1),Y_2))
    <=> ( X_1 != Y_2
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2)) ) ) ).

fof(fact_1182_lessE,axiom,
    ! [I,K] :
      ( ( ~ ! [J_2] :
              ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J_2))
             => K != hAPP_nat_nat(suc,J_2) )
       <= hAPP_nat_nat(suc,I) != K )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),K)) ) ).

fof(fact_302_listrelp_Osimps,axiom,
    ! [R_2,A1,A2] :
      ( ( ? [X_4,Y_25,Xs_19,Ys_6] :
            ( is_bool(Y_25)
            & hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Xs_19) = A1
            & A2 = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Y_25),Ys_6)
            & hBOOL(hAPP_list_bool_bool(listrelp_bool(R_2,Xs_19),Ys_6))
            & hBOOL(hAPP_bool_bool(hAPP_b589554111l_bool(R_2,X_4),Y_25))
            & is_bool(X_4) )
        | ( A2 = nil_bool
          & A1 = nil_bool ) )
    <=> hBOOL(hAPP_list_bool_bool(listrelp_bool(R_2,A1),A2)) ) ).

fof(fact_782_min__max_Osup__inf__distrib2,axiom,
    ! [Y_31,Z_15,X_46] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Y_31),X_46)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,Z_15),X_46)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_31),Z_15)),X_46) ).

fof(fact_702_linorder__le__cases,axiom,
    ! [X_79,Y_54] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_79),Y_54))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_54),X_79)) ) ).

fof(fact_1026_diff__less,axiom,
    ! [M,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),M))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N)),M)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,zero_zero_nat),N)) ) ).

fof(fact_733_min__max_Ole__sup__iff,axiom,
    ! [X_1,Y_2,Z] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Z))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),Z)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_max_nat,X_1),Y_2)),Z)) ) ).

fof(fact_599_comm__semiring__1__class_Onormalizing__semiring__rules_I20_J,axiom,
    ! [A_71,B_66,C_39,D_9] : hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_71),C_39)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_66),D_9)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_71),B_66)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_39),D_9)) ).

fof(fact_786_take__append,axiom,
    ! [N_31,Xs_40,Ys_13] : hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_31),hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs_40),Ys_13)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,N_31),Xs_40)),hAPP_l726444215le_alt(hAPP_n2139729636le_alt(take_A1601602045le_alt,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,N_31),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs_40))),Ys_13)) ).

fof(fact_368_distinct_Osimps_I2_J,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_list_bool_bool(distinct_bool,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)))
    <=> ( hBOOL(hAPP_list_bool_bool(distinct_bool,Xs))
        & ~ hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_365_nth__Cons__0,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_nat_bool(nth_bool(hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)),zero_zero_nat))
    <=> hBOOL(X_1) ) ).

fof(fact_261_dropWhile__eq__Cons__conv,axiom,
    ! [P_1,Xs,Y_2,Ys] :
      ( ( Xs = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,takeWhile_nat(P_1,Xs)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys))
        & ~ hBOOL(hAPP_nat_bool(P_1,Y_2)) )
    <=> hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Ys) = dropWhile_nat(P_1,Xs) ) ).

fof(fact_1059_in__set__conv__nth,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_1),hAPP_l96088310l_bool(set_bool,Xs)))
    <=> ? [I_4] :
          ( ( hBOOL(hAPP_nat_bool(nth_bool(Xs),I_4))
          <=> hBOOL(X_1) )
          & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs))) ) ) ).

fof(fact_540_list__all__cong,axiom,
    ! [G,F,Xs,Ys] :
      ( Ys = Xs
     => ( ( hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(F),Xs))
        <=> hBOOL(hAPP_l1386638586t_bool(list_a1557668565le_alt(G),Ys)) )
       <= ! [X_4] :
            ( is_Arr1861959080le_alt(X_4)
           => ( ( hBOOL(hAPP_A862370221t_bool(G,X_4))
              <=> hBOOL(hAPP_A862370221t_bool(F,X_4)) )
             <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Ys))) ) ) ) ) ).

fof(fact_849_length__append,axiom,
    ! [Xs_34,Ys_10] : hAPP_list_nat_nat(size_size_list_nat,hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,Xs_34),Ys_10)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_34)),hAPP_list_nat_nat(size_size_list_nat,Ys_10)) ).

fof(fact_611_nat_Osize_I1_J,axiom,
    zero_zero_nat = hAPP_nat_nat(nat_size,zero_zero_nat) ).

fof(fact_969_less__irrefl__nat,axiom,
    ! [N] : ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N),N)) ).

fof(fact_297_takeWhile__tail,axiom,
    ! [Xs,L_2,P_1,X_1] :
      ( takeWh536362254le_alt(P_1,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),L_2))) = takeWh536362254le_alt(P_1,Xs)
     <= ~ hBOOL(hAPP_A862370221t_bool(P_1,X_1)) ) ).

fof(fact_417_map__filter__simps_I1_J,axiom,
    ! [F,X_1,Xs] : map_filter_nat_nat(F,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) = option306705938at_nat(map_filter_nat_nat(F,Xs),hAPP_l383341732st_nat(cOMBC_1204473209st_nat(cons_nat),map_filter_nat_nat(F,Xs)),hAPP_nat_option_nat(F,X_1)) ).

fof(fact_833_Suc__diff__le,axiom,
    ! [N,M] :
      ( hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,hAPP_nat_nat(suc,M)),N) = hAPP_nat_nat(suc,hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,M),N))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M)) ) ).

fof(fact_1030_less__diff__conv,axiom,
    ! [I_1,J_1,K_3] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,I_1),K_3)),J_1))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_1),hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,J_1),K_3))) ) ).

fof(fact_691_order__eq__iff,axiom,
    ! [X_1,Y_2] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Y_2),X_1)) )
    <=> X_1 = Y_2 ) ).

fof(fact_975_add__strict__right__mono,axiom,
    ! [C_16,A_27,B_28] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_27),C_16)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,B_28),C_16)))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_27),B_28)) ) ).

fof(fact_480_take__Suc,axiom,
    ! [N_1,Xs] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,hAPP_list_bool_bool(hd_bool,Xs)),hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_1),tl_bool(Xs))) = hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,hAPP_nat_nat(suc,N_1)),Xs)
     <= nil_bool != Xs ) ).

fof(fact_980_linorder__cases,axiom,
    ! [X_21,Y_13] :
      ( ~ hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,X_21),Y_13))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,Y_13),X_21))
       <= Y_13 != X_21 ) ) ).

fof(fact_388_dropWhile__append1,axiom,
    ! [Ys,P_1,X_1,Xs] :
      ( ( ~ hBOOL(hAPP_A862370221t_bool(P_1,X_1))
       => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,dropWh156852662le_alt(P_1,Xs)),Ys) = dropWh156852662le_alt(P_1,hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ).

fof(fact_269_last__replicate,axiom,
    ! [X_99,N_40] :
      ( zero_zero_nat != N_40
     => X_99 = hAPP_list_nat_nat(last_nat,hAPP_nat_list_nat(replicate_nat(N_40),X_99)) ) ).

fof(fact_343_member__set,axiom,
    set_Ar1565008694le_alt = member345038890le_alt ).

fof(fact_117_snoc__eq__iff__butlast,axiom,
    ! [Xs,X_1,Ys] :
      ( ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt)) = Ys
      <=> ( Xs = butlas1262502241le_alt(Ys)
          & hAPP_l1105242632le_alt(last_A57386030le_alt,Ys) = X_1
          & nil_Ar126264853le_alt != Ys ) )
     <= is_Arr1861959080le_alt(X_1) ) ).

fof(fact_961_nat__less__le,axiom,
    ! [M_1,N_1] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
    <=> ( M_1 != N_1
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M_1),N_1)) ) ) ).

fof(fact_331_set__rev,axiom,
    ! [Xs] : hAPP_l1821533378t_bool(set_nat,rev_nat(Xs)) = hAPP_l1821533378t_bool(set_nat,Xs) ).

fof(fact_108_append__is__Nil__conv,axiom,
    ! [Xs,Ys] :
      ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) = nil_Ar126264853le_alt
    <=> ( nil_Ar126264853le_alt = Xs
        & Ys = nil_Ar126264853le_alt ) ) ).

fof(fact_890_DiffE,axiom,
    ! [C_2,A,B] :
      ( ~ ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),B))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),A)) )
     <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B))) ) ).

fof(help_COMBC_1_1_COMBC_000tc__Nat__Onat_000tc__List__Olist_Itc__Nat__Onat_J_000tc_,axiom,
    ! [P,Q,R] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(P,R),Q) = hAPP_nat_list_nat(hAPP_l383341732st_nat(cOMBC_1204473209st_nat(P),Q),R) ).

fof(fact_449_replicate__Suc,axiom,
    ! [N_38,X_95] : hAPP_A832564074le_alt(replic351609551le_alt(hAPP_nat_nat(suc,N_38)),X_95) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_95),hAPP_A832564074le_alt(replic351609551le_alt(N_38),X_95)) ).

fof(fact_835_impossible__Cons,axiom,
    ! [X_39,Xs_35,Ys_11] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_35)),hAPP_list_nat_nat(size_size_list_nat,Ys_11)))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_39),Ys_11) != Xs_35 ) ).

fof(fact_1006_min__max_Oless__infI2,axiom,
    ! [A_14,B_15,X_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,A_14),B_15)),X_7))
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_15),X_7)) ) ).

fof(fact_893_Diff__iff,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),hAPP_f2014742713t_bool(hAPP_f2012267069t_bool(minus_988785290t_bool,A),B)))
    <=> ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),A))
        & ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),B)) ) ) ).

fof(fact_544_list_Osize_I2_J,axiom,
    ! [Fa,Aa,List_1] : list_size_bool(Fa,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,Aa),List_1)) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,hAPP_bool_nat(Fa,Aa)),list_size_bool(Fa,List_1))),hAPP_nat_nat(suc,zero_zero_nat)) ).

fof(fact_354_dropWhile__neq__rev,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
     => ( dropWh156852662le_alt(cOMBB_2104979073le_alt(fNot,hAPP_A1664620203t_bool(cOMBC_1628726426t_bool(fequal1160105444le_alt),X_1)),rev_Ar2093961333le_alt(Xs)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),rev_Ar2093961333le_alt(takeWh536362254le_alt(cOMBB_2104979073le_alt(fNot,hAPP_A1664620203t_bool(cOMBC_1628726426t_bool(fequal1160105444le_alt),X_1)),Xs)))
       <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) ) ) ).

fof(fact_964_le__neq__implies__less,axiom,
    ! [M,N] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M),N))
       <= N != M )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N)) ) ).

fof(fact_19_not__Cons__self2,axiom,
    ! [X_125,Xs_96] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_125),Xs_96) != Xs_96 ).

fof(fact_202_rotate1__hd__tl,axiom,
    ! [Xs_62] :
      ( nil_Ar126264853le_alt != Xs_62
     => hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,tl_Arr1453005548le_alt(Xs_62)),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,hAPP_l1105242632le_alt(hd_Arr805754088le_alt,Xs_62)),nil_Ar126264853le_alt)) = rotate1322903650le_alt(Xs_62) ) ).

fof(fact_549_split__list__prop,axiom,
    ! [P_1,Xs] :
      ( ? [Ys_6,X_4] :
          ( ? [Zs_2] : hAPP_l1189022293t_bool(hAPP_l1947611924t_bool(append_bool,Ys_6),hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_4),Zs_2)) = Xs
          & hBOOL(hAPP_bool_bool(P_1,X_4))
          & is_bool(X_4) )
     <= ? [X_4] :
          ( hBOOL(hAPP_bool_bool(P_1,X_4))
          & hBOOL(hAPP_f387058535l_bool(hAPP_b1787118453l_bool(member_bool,X_4),hAPP_l96088310l_bool(set_bool,Xs))) ) ) ).

fof(fact_283_replicate__eq__replicate,axiom,
    ! [M_1,X_1,N_1,Y_2] :
      ( ( ( ( M_1 != zero_zero_nat
           => X_1 = Y_2 )
          & M_1 = N_1 )
      <=> hAPP_A832564074le_alt(replic351609551le_alt(N_1),Y_2) = hAPP_A832564074le_alt(replic351609551le_alt(M_1),X_1) )
     <= ( is_Arr1861959080le_alt(X_1)
        & is_Arr1861959080le_alt(Y_2) ) ) ).

fof(fact_1191_hd__upt,axiom,
    ! [I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I),J))
     => hAPP_list_nat_nat(hd_nat,hAPP_nat_list_nat(upt(I),J)) = I ) ).

fof(fact_765_min__max_Ole__inf__iff,axiom,
    ! [X_1,Y_2,Z] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Z))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2)) )
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),hAPP_nat_nat(hAPP_nat_fun_nat_nat(ord_min_nat,Y_2),Z))) ) ).

fof(fact_129_append1__eq__conv,axiom,
    ! [Xs,X_1,Ys,Y_2] :
      ( ( is_Arr1861959080le_alt(Y_2)
        & is_Arr1861959080le_alt(X_1) )
     => ( hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),nil_Ar126264853le_alt)) = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Ys),hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,Y_2),nil_Ar126264853le_alt))
      <=> ( Y_2 = X_1
          & Ys = Xs ) ) ) ).

fof(fact_667_sorted__many__eq,axiom,
    ! [X_1,Y_2,Zs] :
      ( ( hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Zs)))
        & hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,X_1),Y_2)) )
    <=> hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Y_2),Zs)))) ) ).

fof(fact_632_add__le__cancel__left,axiom,
    ! [C_2,Aa,Ba] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_2),Aa)),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,C_2),Ba)))
    <=> hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,Aa),Ba)) ) ).

fof(fact_1177_drop__all,axiom,
    ! [Xs_2,N_3] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(drop_nat,N_3),Xs_2) = nil_nat
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_nat_nat(size_size_list_nat,Xs_2)),N_3)) ) ).

fof(fact_1061_in__set__conv__nth,axiom,
    ! [X_1,Xs] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs)))
    <=> ? [I_4] :
          ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_nat_nat(size_size_list_nat,Xs)))
          & hAPP_nat_nat(nth_nat(Xs),I_4) = X_1 ) ) ).

fof(fact_104_self__append__conv,axiom,
    ! [Xs,Ys] :
      ( nil_Ar126264853le_alt = Ys
    <=> Xs = hAPP_l726444215le_alt(hAPP_l568342716le_alt(append1166636842le_alt,Xs),Ys) ) ).

fof(fact_57_null__rec_I2_J,axiom,
    hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,nil_Ar126264853le_alt)) ).

fof(fact_245_member__rec_I1_J,axiom,
    ! [X_1,Xs,Y_2] :
      ( ( ( hBOOL(X_1)
        <=> hBOOL(Y_2) )
        | hBOOL(hAPP_bool_bool(hAPP_l96088310l_bool(member_bool_1,Xs),Y_2)) )
    <=> hBOOL(hAPP_bool_bool(hAPP_l96088310l_bool(member_bool_1,hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),Xs)),Y_2)) ) ).

fof(fact_609_foldl__foldr1__lemma,axiom,
    ! [Aa,Xs] : foldl_nat_nat(plus_plus_nat,Aa,Xs) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,Aa),hAPP_nat_nat(foldr_nat_nat(plus_plus_nat,Xs),zero_zero_nat)) ).

fof(fact_208_tl_Osimps_I1_J,axiom,
    tl_nat(nil_nat) = nil_nat ).

fof(fact_146_equal__Nil__null,axiom,
    ! [Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(null_A361035805le_alt,Xs))
    <=> hBOOL(hAPP_l1386638586t_bool(hAPP_l1747810175t_bool(equal_499625528le_alt,Xs),nil_Ar126264853le_alt)) ) ).

fof(fact_306_list_Osize_I1_J,axiom,
    ! [Fa] : list_size_nat(Fa,nil_nat) = zero_zero_nat ).

fof(fact_894_Diff__iff,axiom,
    ! [C_2,A,B] :
      ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),hAPP_f800510211t_bool(hAPP_f1730770594t_bool(minus_2067140911t_bool,A),B)))
    <=> ( hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),A))
        & ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,C_2),B)) ) ) ).

fof(fact_409_dropWhile__cong,axiom,
    ! [Q_1,P_1,L_2,K_3] :
      ( L_2 = K_3
     => ( dropWh156852662le_alt(Q_1,K_3) = dropWh156852662le_alt(P_1,L_2)
       <= ! [X_4] :
            ( ( ( hBOOL(hAPP_A862370221t_bool(P_1,X_4))
              <=> hBOOL(hAPP_A862370221t_bool(Q_1,X_4)) )
             <= hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_4),hAPP_l82377208t_bool(set_Ar1565008694le_alt,L_2))) )
           <= is_Arr1861959080le_alt(X_4) ) ) ) ).

fof(fact_12_list_Oexhaust,axiom,
    ! [Y_2] :
      ( Y_2 != nil_bool
     => ~ ! [A_74,List_3] :
            ( is_bool(A_74)
           => hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,A_74),List_3) != Y_2 ) ) ).

fof(fact_523_take__0,axiom,
    ! [Xs_45] : hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,zero_zero_nat),Xs_45) = nil_nat ).

fof(fact_1046_add__neg__nonpos,axiom,
    ! [B_7,A_6] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,B_7),zero_zero_nat))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_6),B_7)),zero_zero_nat)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_6),zero_zero_nat)) ) ).

fof(fact_489_remove1__commute,axiom,
    ! [X_94,Y_64,Zs_3] : hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_94),hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,Y_64),Zs_3)) = hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,Y_64),hAPP_l726444215le_alt(hAPP_A408086601le_alt(remove430413995le_alt,X_94),Zs_3)) ).

fof(fact_1097_takeWhile__eq__take__P__nth,axiom,
    ! [P_1,Xs,N_1] :
      ( ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),hAPP_list_bool_nat(size_size_list_bool,Xs)))
         => ~ hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),N_1))) )
       => hAPP_l1189022293t_bool(hAPP_n479129736t_bool(take_bool,N_1),Xs) = takeWhile_bool(P_1,Xs) )
     <= ! [I_4] :
          ( ( hBOOL(hAPP_bool_bool(P_1,hAPP_nat_bool(nth_bool(Xs),I_4)))
           <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_list_bool_nat(size_size_list_bool,Xs))) )
         <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),N_1)) ) ) ).

fof(fact_234_eq__equal,axiom,
    fequal_list_nat = equal_equal_list_nat ).

fof(fact_566_foldl__assoc,axiom,
    ! [X_1,Y_2,Zs] : foldl_nat_nat(plus_plus_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X_1),Y_2),Zs) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X_1),foldl_nat_nat(plus_plus_nat,Y_2,Zs)) ).

fof(fact_679_Suc__le__D,axiom,
    ! [N,M_7] :
      ( ? [M_5] : M_7 = hAPP_nat_nat(suc,M_5)
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_nat_nat(suc,N)),M_7)) ) ).

fof(fact_854_length__takeWhile__le,axiom,
    ! [P_1,Xs] : hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,hAPP_list_nat_nat(size_size_list_nat,takeWhile_nat(P_1,Xs))),hAPP_list_nat_nat(size_size_list_nat,Xs))) ).

fof(fact_517_list__all__iff,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(list_all_nat(P_1),Xs))
    <=> ! [X_4] :
          ( hBOOL(hAPP_nat_bool(P_1,X_4))
         <= hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_4),hAPP_l1821533378t_bool(set_nat,Xs))) ) ) ).

fof(fact_256_distinct__dropWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,dropWh156852662le_alt(P_1,Xs))) ) ).

fof(fact_559_foldl__absorb0,axiom,
    ! [X_1,Zs] : foldl_nat_nat(plus_plus_nat,X_1,Zs) = hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,X_1),foldl_nat_nat(plus_plus_nat,zero_zero_nat,Zs)) ).

fof(fact_922_order__neq__le__trans,axiom,
    ! [A_28,B_29] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_28),B_29))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,A_28),B_29)) )
     <= A_28 != B_29 ) ).

fof(fact_475_Suc__inject,axiom,
    ! [X,Y] :
      ( hAPP_nat_nat(suc,Y) = hAPP_nat_nat(suc,X)
     => Y = X ) ).

fof(fact_284_distinct__takeWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
     => hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,takeWh536362254le_alt(P_1,Xs))) ) ).

fof(fact_534_take__Cons,axiom,
    ! [N_1,X_1,Xs] : hAPP_nat_list_nat(nat_case_list_nat(nil_nat,cOMBB_850496866at_nat(hAPP_n280362926st_nat(cons_nat,X_1),hAPP_l383341732st_nat(cOMBC_1204473209st_nat(take_nat),Xs))),N_1) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,N_1),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,X_1),Xs)) ).

fof(fact_1123_inc__induct,axiom,
    ! [P_1,I_1,J_1] :
      ( ( ( ! [I_4] :
              ( ( hBOOL(hAPP_nat_bool(P_1,hAPP_nat_nat(suc,I_4)))
               => hBOOL(hAPP_nat_bool(P_1,I_4)) )
             <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),J_1)) )
         => hBOOL(hAPP_nat_bool(P_1,I_1)) )
       <= hBOOL(hAPP_nat_bool(P_1,J_1)) )
     <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I_1),J_1)) ) ).

fof(fact_626_le__antisym,axiom,
    ! [M,N] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,M),N))
     => ( M = N
       <= hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,N),M)) ) ) ).

fof(fact_902_take__Suc__conv__app__nth,axiom,
    ! [I_9,Xs_29] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_9),hAPP_list_nat_nat(size_size_list_nat,Xs_29)))
     => hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,hAPP_nat_nat(suc,I_9)),Xs_29) = hAPP_l248265089st_nat(hAPP_l710375585st_nat(append_nat,hAPP_l248265089st_nat(hAPP_n280362926st_nat(take_nat,I_9),Xs_29)),hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,hAPP_nat_nat(nth_nat(Xs_29),I_9)),nil_nat)) ) ).

fof(fact_255_dropWhile_Osimps_I1_J,axiom,
    ! [P_1] : dropWhile_nat(P_1,nil_nat) = nil_nat ).

fof(gsy_c_HOL_Oundefined_000tc__Arrow____Order____Mirabelle____tpnfnnbpuu__Oalt,axiom,
    is_Arr1861959080le_alt(undefi462180727le_alt(arrow_107136085le_alt)) ).

fof(fact_369_distinct_Osimps_I2_J,axiom,
    ! [X_1,Xs] :
      ( ( hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,Xs))
        & ~ hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,X_1),hAPP_l82377208t_bool(set_Ar1565008694le_alt,Xs))) )
    <=> hBOOL(hAPP_l1386638586t_bool(distin1223878664le_alt,hAPP_l726444215le_alt(hAPP_A408086601le_alt(cons_A1216297413le_alt,X_1),Xs))) ) ).

fof(fact_651_trans__le__add1,axiom,
    ! [M,I,J] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),J))
     => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,I),hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,J),M))) ) ).

fof(fact_711_subsetD,axiom,
    ! [C_2,A,B] :
      ( ( hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),A))
       => hBOOL(hAPP_f2013399995l_bool(hAPP_A297543629l_bool(member1071917752le_alt,C_2),B)) )
     <= hBOOL(hAPP_f2013399995l_bool(hAPP_f1721660479l_bool(ord_le893483153t_bool,A),B)) ) ).

fof(fact_45_splice_Osimps_I1_J,axiom,
    ! [Ys_30] : splice_nat(nil_nat,Ys_30) = Ys_30 ).

fof(fact_52_list_Osimps_I5_J,axiom,
    ! [F1,F2,Aa,List_1] : list_c554461815at_nat(F1,F2,hAPP_l248265089st_nat(hAPP_n280362926st_nat(cons_nat,Aa),List_1)) = hAPP_l248265089st_nat(hAPP_n280362926st_nat(F2,Aa),List_1) ).

fof(fact_1034_list__eq__iff__nth__eq,axiom,
    ! [Xs,Ys] :
      ( ( hAPP_l1872264749lt_nat(size_s1873794948le_alt,Ys) = hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)
        & ! [I_4] :
            ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,I_4),hAPP_l1872264749lt_nat(size_s1873794948le_alt,Xs)))
           => hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Ys),I_4) = hAPP_n401316912le_alt(nth_Ar1113433366le_alt(Xs),I_4) ) )
    <=> Xs = Ys ) ).

fof(fact_69_sorted_ONil,axiom,
    hBOOL(hAPP_list_nat_bool(linorder_sorted_nat,nil_nat)) ).

fof(fact_507_remove1__idem,axiom,
    ! [X_1,Xs] :
      ( hAPP_l248265089st_nat(hAPP_n280362926st_nat(remove1_nat,X_1),Xs) = Xs
     <= ~ hBOOL(hAPP_f54304608l_bool(hAPP_n215258509l_bool(member_nat,X_1),hAPP_l1821533378t_bool(set_nat,Xs))) ) ).

fof(fact_285_distinct__takeWhile,axiom,
    ! [P_1,Xs] :
      ( hBOOL(hAPP_list_nat_bool(distinct_nat,Xs))
     => hBOOL(hAPP_list_nat_bool(distinct_nat,takeWhile_nat(P_1,Xs))) ) ).

fof(fact_219_singleton__rev__conv,axiom,
    ! [X_1,Xs] :
      ( hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool) = Xs
    <=> rev_bool(Xs) = hAPP_l1189022293t_bool(hAPP_b994696797t_bool(cons_bool,X_1),nil_bool) ) ).

fof(fact_1045_add__nonpos__neg,axiom,
    ! [B_8,A_7] :
      ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_eq_nat,A_7),zero_zero_nat))
     => ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,B_8),zero_zero_nat))
       => hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,hAPP_nat_nat(hAPP_nat_fun_nat_nat(plus_plus_nat,A_7),B_8)),zero_zero_nat)) ) ) ).

fof(fact_971_nat__neq__iff,axiom,
    ! [M_1,N_1] :
      ( ( hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,M_1),N_1))
        | hBOOL(hAPP_nat_bool(hAPP_n1699378549t_bool(ord_less_nat,N_1),M_1)) )
    <=> M_1 != N_1 ) ).

fof(fact_792_diff__0__eq__0,axiom,
    ! [N] : zero_zero_nat = hAPP_nat_nat(hAPP_nat_fun_nat_nat(minus_minus_nat,zero_zero_nat),N) ).

