%------------------------------------------------------------------------------
% File     : SWW908+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : word_to_stackProof__52__tactictoe_prove_51__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : word_to_stackProof__52__tactictoe_prove_51__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   26 (   6 unt;   0 def)
%            Number of atoms       :  105 (  33 equ)
%            Maximal formula atoms :   15 (   4 avg)
%            Number of connectives :   84 (   5   ~;   1   |;  27   &)
%                                         (  24 <=>;  27  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   6 avg)
%            Maximal term depth    :   13 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   20 (  20 usr;   5 con; 0-3 aty)
%            Number of variables   :   85 (  83   !;   2   ?)
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

fof('thm.bool.TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('thm.bool.IMP_ANTISYM_AX',axiom,
    ! [V_27t1_27,V_27t2_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
       => p__01(s__02(cbool__00,V_27t2_27)) )
     => ( ( p__01(s__02(cbool__00,V_27t2_27))
         => p__01(s__02(cbool__00,V_27t1_27)) )
       => s__02(cbool__00,V_27t1_27) = s__02(cbool__00,V_27t2_27) ) ) ).

fof('thm.bool.FORALL_SIMP',axiom,
    ! [V_27A_27,V_27t_27] :
      ( ! [V_27x_27] : p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.AND_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( ( p__01(s__02(cbool__00,cT__00))
          & p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
          & p__01(s__02(cbool__00,cT__00)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( ( p__01(s__02(cbool__00,cF__00))
          & p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,cF__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
          & p__01(s__02(cbool__00,cF__00)) )
      <=> p__01(s__02(cbool__00,cF__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
          & p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.bool.IMP_CLAUSES',axiom,
    ! [V_27t_27] :
      ( ( ( p__01(s__02(cbool__00,cT__00))
         => p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,V_27t_27)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
         => p__01(s__02(cbool__00,cT__00)) )
      <=> p__01(s__02(cbool__00,cT__00)) )
      & ( ( p__01(s__02(cbool__00,cF__00))
         => p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,cT__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
         => p__01(s__02(cbool__00,V_27t_27)) )
      <=> p__01(s__02(cbool__00,cT__00)) )
      & ( ( p__01(s__02(cbool__00,V_27t_27))
         => p__01(s__02(cbool__00,cF__00)) )
      <=> ~ p__01(s__02(cbool__00,V_27t_27)) ) ) ).

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.bool.EQ_SYM_EQ',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27)
    <=> s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27x_27) ) ).

fof('thm.bool.FUN_EQ_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27g_27] :
      ( s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27) = s__02(cfun__02(V_27A_27,V_27B_27),V_27g_27)
    <=> ! [V_27x_27] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27g_27),s__02(V_27A_27,V_27x_27))) ) ).

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

fof('thm.bool.IMP_CONG',axiom,
    ! [V_27x_27,V_27x_7c39_7c_27,V_27y_27,V_27y_7c39_7c_27] :
      ( ( s__02(cbool__00,V_27x_27) = s__02(cbool__00,V_27x_7c39_7c_27)
        & ( p__01(s__02(cbool__00,V_27x_7c39_7c_27))
         => s__02(cbool__00,V_27y_27) = s__02(cbool__00,V_27y_7c39_7c_27) ) )
     => ( ( p__01(s__02(cbool__00,V_27x_27))
         => p__01(s__02(cbool__00,V_27y_27)) )
      <=> ( p__01(s__02(cbool__00,V_27x_7c39_7c_27))
         => p__01(s__02(cbool__00,V_27y_7c39_7c_27)) ) ) ) ).

fof('thm.bool.COND_CONG',axiom,
    ! [V_27A_27,V_27P_27,V_27Q_27,V_27x_27,V_27x_7c39_7c_27,V_27y_27,V_27y_7c39_7c_27] :
      ( ( s__02(cbool__00,V_27P_27) = s__02(cbool__00,V_27Q_27)
        & ( p__01(s__02(cbool__00,V_27Q_27))
         => s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_7c39_7c_27) )
        & ( ~ p__01(s__02(cbool__00,V_27Q_27))
         => s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27y_7c39_7c_27) ) )
     => s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27P_27),s__02(V_27A_27,V_27x_27),s__02(V_27A_27,V_27y_27))) = s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27Q_27),s__02(V_27A_27,V_27x_7c39_7c_27),s__02(V_27A_27,V_27y_7c39_7c_27))) ) ).

fof('thm.bool.UNWIND_THM2',axiom,
    ! [V_27A_27,V_27P_27,V_27a_27] :
      ( ? [V_27x_27] :
          ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27a_27)
          & p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27x_27)))) )
    <=> p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27a_27)))) ) ).

fof('thm.bool.bool_case_thm',axiom,
    ! [V_27A_27] :
      ( ! [V_27t1_27,V_27t2_27] : s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cT__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t1_27)
      & ! [V_27t1_27,V_27t2_27] : s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cF__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t2_27) ) ).

fof('thm.combin.I_THM',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27A_27,V_27A_27),c_27const_2ecombin_2eI_27__00),s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.pred_set.INJ_DEF',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27s_27,V_27t_27] :
      ( p__01(s__02(cbool__00,c_27const_2epred__set_2eINJ_27__03(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27))))
    <=> ( ! [V_27x_27] :
            ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27A_27,V_27x_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27))))
           => p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27)))) )
        & ! [V_27x_27,V_27y_27] :
            ( ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27A_27,V_27x_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27))))
              & p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27A_27,V_27y_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27)))) )
           => ( s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27y_27)))
             => s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27) ) ) ) ) ).

fof('thm.pred_set.SURJ_DEF',axiom,
    ! [V_27A_27,V_27B_27,V_27f_27,V_27s_27,V_27t_27] :
      ( p__01(s__02(cbool__00,c_27const_2epred__set_2eSURJ_27__03(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27))))
    <=> ( ! [V_27x_27] :
            ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27A_27,V_27x_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27))))
           => p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27)))) )
        & ! [V_27x_27] :
            ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27B_27,V_27x_27),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27))))
           => ? [V_27y_27] :
                ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27A_27,V_27y_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27))))
                & s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27y_27))) = s__02(V_27B_27,V_27x_27) ) ) ) ) ).

fof('thm.pred_set.BIJ_DEF',axiom,
    ! [V_27A_27,V_27B_27,V_27f_27,V_27s_27,V_27t_27] :
      ( p__01(s__02(cbool__00,c_27const_2epred__set_2eBIJ_27__03(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27))))
    <=> ( p__01(s__02(cbool__00,c_27const_2epred__set_2eINJ_27__03(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27))))
        & p__01(s__02(cbool__00,c_27const_2epred__set_2eSURJ_27__03(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,cbool__00),V_27s_27),s__02(cfun__02(V_27B_27,cbool__00),V_27t_27)))) ) ) ).

fof('thm.pred_set.IN_COUNT',axiom,
    ! [V_27m_27,V_27n_27] : s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2epred__set_2ecount_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) ).

fof('thm.misc.GENLIST_ID',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27x_27,V_27i_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,V_27A_27)),V__0),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))) = s__02(V_27A_27,c_27const_2elist_2eEL_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27)))
     => ! [V_27x_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eGENLIST_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,V_27A_27)),V__0),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27) ) ).

fof('thm.wordSem.list_rearrange_def',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27mover_27,V_27xs_27,V_27i_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,V_27A_27)),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,V_27A_27))),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27mover_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))) = s__02(V_27A_27,c_27const_2elist_2eEL_27__02(s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27mover_27),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27)))
     => ! [V_27mover_27,V_27xs_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)),c_27const_2ewordSem_2elist__rearrange_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27mover_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,c_27const_2epred__set_2eBIJ_27__03(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27mover_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2epred__set_2ecount_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))))),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2epred__set_2ecount_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))))))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eGENLIST_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,V_27A_27)),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cfun__02(c_27type_2enum_2enum_27__00,V_27A_27))),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27mover_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27] : s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)),c_27const_2ewordSem_2elist__rearrange_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2ecombin_2eI_27__00))) = s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)),c_27const_2ecombin_2eI_27__00) ).

%------------------------------------------------------------------------------
