%------------------------------------------------------------------------------
% File     : SWW940+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : data_to_word_assignProof__154__get_vars_delete_lemma__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : data_to_word_assignProof__154__get_vars_delete_lemma__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   23 (   7 unt;   0 def)
%            Number of atoms       :   66 (  38 equ)
%            Maximal formula atoms :    8 (   2 avg)
%            Number of connectives :   55 (  12   ~;   1   |;  17   &)
%                                         (   9 <=>;  16  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   6 avg)
%            Maximal term depth    :   20 (   3 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   32 (  32 usr;   9 con; 0-3 aty)
%            Number of variables   :   81 (  81   !;   0   ?)
% SPC      : FOF_CSA_RFO_SEQ

% Comments :
%------------------------------------------------------------------------------
fof('HL_TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('HL_FALSITY',axiom,
    ~ p__01(s__02(cbool__00,cF__00)) ).

fof('HL_BOOL_CASES',axiom,
    ! [Vt] :
      ( s__02(cbool__00,Vt) = s__02(cbool__00,cT__00)
      | s__02(cbool__00,Vt) = s__02(cbool__00,cF__00) ) ).

fof('HL_EXT',axiom,
    ! [V_3f2384,V_3f2380,Vf,Vg] :
      ( ! [Vx] : s__02(V_3f2380,chapp__02(s__02(cfun__02(V_3f2384,V_3f2380),Vf),s__02(V_3f2384,Vx))) = s__02(V_3f2380,chapp__02(s__02(cfun__02(V_3f2384,V_3f2380),Vg),s__02(V_3f2384,Vx)))
     => s__02(cfun__02(V_3f2384,V_3f2380),Vf) = s__02(cfun__02(V_3f2384,V_3f2380),Vg) ) ).

fof('thm.bool.ETA_AX',axiom,
    ! [V_27B_27,V_27A_27,V_27t_27,Vx] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27t_27),s__02(V_27A_27,Vx))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27t_27),s__02(V_27A_27,Vx))) ).

fof('thm.bool.TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('thm.bool.IMP_ANTISYM_AX',axiom,
    ! [V_27t1_27,V_27t2_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
       => p__01(s__02(cbool__00,V_27t2_27)) )
     => ( ( p__01(s__02(cbool__00,V_27t2_27))
         => p__01(s__02(cbool__00,V_27t1_27)) )
       => s__02(cbool__00,V_27t1_27) = s__02(cbool__00,V_27t2_27) ) ) ).

fof('thm.bool.FALSITY',axiom,
    ! [V_27t_27] :
      ( p__01(s__02(cbool__00,cF__00))
     => p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.FORALL_SIMP',axiom,
    ! [V_27A_27,V_27t_27] :
      ( ! [V_27x_27] : p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.bool.EQ_SYM_EQ',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27)
    <=> s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27x_27) ) ).

fof('thm.bool.EQ_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( s__02(cbool__00,cT__00) = s__02(cbool__00,V_27t_27)
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cT__00)
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,cF__00) = s__02(cbool__00,V_27t_27)
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) )
      & ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cF__00)
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.bool.AND_IMP_INTRO',axiom,
    ! [V_27t1_27,V_27t2_27,V_27t3_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
       => ( p__01(s__02(cbool__00,V_27t2_27))
         => p__01(s__02(cbool__00,V_27t3_27)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27t1_27))
          & p__01(s__02(cbool__00,V_27t2_27)) )
       => p__01(s__02(cbool__00,V_27t3_27)) ) ) ).

fof('thm.bool.COND_CONG',axiom,
    ! [V_27A_27,V_27P_27,V_27Q_27,V_27x_27,V_27x_7c39_7c_27,V_27y_27,V_27y_7c39_7c_27] :
      ( ( s__02(cbool__00,V_27P_27) = s__02(cbool__00,V_27Q_27)
        & ( p__01(s__02(cbool__00,V_27Q_27))
         => s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_7c39_7c_27) )
        & ( ~ p__01(s__02(cbool__00,V_27Q_27))
         => s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27y_7c39_7c_27) ) )
     => s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27P_27),s__02(V_27A_27,V_27x_27),s__02(V_27A_27,V_27y_27))) = s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27Q_27),s__02(V_27A_27,V_27x_7c39_7c_27),s__02(V_27A_27,V_27y_7c39_7c_27))) ) ).

fof('thm.bool.bool_case_thm',axiom,
    ! [V_27A_27] :
      ( ! [V_27t1_27,V_27t2_27] : s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cT__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t1_27)
      & ! [V_27t1_27,V_27t2_27] : s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cF__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t2_27) ) ).

fof('thm.combin.K_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27x_27,V_27y_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27B_27,V_27A_27),c_27const_2ecombin_2eK_27__01(s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27y_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.option.SOME_11',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27x_27))) = s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27y_27)))
    <=> s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27) ) ).

fof('thm.list.MAP',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27f_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27f_27,V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eCONS_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27h_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) ) ).

fof('thm.list.list_induction',axiom,
    ! [V_27A_27,V_27P_27] :
      ( ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))
        & ! [V_27t_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))
           => ! [V_27h_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))))) ) )
     => ! [V_27l_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)))) ) ).

fof('thm.wordSem.get_var_def',axiom,
    ! [V_27A_27,V_27FFI_27,V_27v_27,V_27s_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27FFI_27),V_27s_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2esptree_2elookup_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2estate__locals_27__01(s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27FFI_27),V_27s_27))))) ).

fof('thm.wordSem.get_vars_def',axiom,
    ! [V_27A_27,V_27B_27,V__1] :
      ( ! [V_27x_27,V_27xs_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V__1),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27xs_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27xs_27)))))
     => ! [V__0] :
          ( ! [V_27vs_27,V_27s_27,V_27x_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))))),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),V_27vs_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ewordSem_2eget__vars_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),V_27vs_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2eoption_2eNONE_27__00),s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V__1),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27)))))
         => ( ! [V_27s_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ewordSem_2eget__vars_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2elist_2eNIL_27__00)))
            & ! [V_27v_27,V_27vs_27,V_27s_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ewordSem_2eget__vars_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),V_27vs_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2eoption_2eoption__CASE_27__03(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var_27__02(s__02(c_27type_2enum_2enum_27__00,V_27v_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2eoption_2eNONE_27__00),s__02(cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),cfun__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),cfun__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))))),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),V_27vs_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))) ) ) ) ).

fof('thm.data_to_word_gcProof.adjust_var_NEQ',axiom,
    ! [V_27n_27] :
      ( s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27B_27,V_27x9_27,V_27x7_27,V_27x5_27,V_27x1_27,V_27s1_27,V_27t7_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ewordSem_2eget__vars_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),V_27t7_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2ewordSem_2estate__locals__fupd_27__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x9_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x7_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x5_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))),s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x1_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2estate__locals_27__01(s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s1_27))))))))))))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s1_27))))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ewordSem_2eget__vars_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2edata__to__word_2eadjust__var_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00),V_27t7_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s1_27))) ).

%------------------------------------------------------------------------------
