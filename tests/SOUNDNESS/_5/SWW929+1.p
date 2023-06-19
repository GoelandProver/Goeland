%------------------------------------------------------------------------------
% File     : SWW929+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : bvl_inlineProof__36__tactictoe_prove_35__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : bvl_inlineProof__36__tactictoe_prove_35__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   32 (   6 unt;   0 def)
%            Number of atoms       :  189 (  98 equ)
%            Maximal formula atoms :   58 (   5 avg)
%            Number of connectives :  185 (  28   ~;  16   |;  67   &)
%                                         (  26 <=>;  48  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   26 (   7 avg)
%            Maximal term depth    :   14 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   31 (  31 usr;   9 con; 0-3 aty)
%            Number of variables   :  201 ( 177   !;  24   ?)
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

fof('thm.bool.EXCLUDED_MIDDLE',axiom,
    ! [V_27t_27] :
      ( p__01(s__02(cbool__00,V_27t_27))
      | ~ p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.LET_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27x_27] : s__02(V_27B_27,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) ).

fof('thm.bool.FORALL_SIMP',axiom,
    ! [V_27A_27,V_27t_27] :
      ( ! [V_27x_27] : p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.NOT_CLAUSES',axiom,
    ( ! [V_27t_27] :
        ( ~ ~ p__01(s__02(cbool__00,V_27t_27))
      <=> p__01(s__02(cbool__00,V_27t_27)) )
    & ( ~ p__01(s__02(cbool__00,cT__00))
    <=> p__01(s__02(cbool__00,cF__00)) )
    & ( ~ p__01(s__02(cbool__00,cF__00))
    <=> p__01(s__02(cbool__00,cT__00)) ) ) ).

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

fof('thm.bool.COND_CLAUSES',axiom,
    ! [V_27A_27,V_27t1_27,V_27t2_27] :
      ( s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cT__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t1_27)
      & s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cF__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t2_27) ) ).

fof('thm.bool.DISJ_ASSOC',axiom,
    ! [V_27A_270,V_27B_270,V_27C_27] :
      ( ( p__01(s__02(cbool__00,V_27A_270))
        | p__01(s__02(cbool__00,V_27B_270))
        | p__01(s__02(cbool__00,V_27C_27)) )
    <=> ( p__01(s__02(cbool__00,V_27A_270))
        | p__01(s__02(cbool__00,V_27B_270))
        | p__01(s__02(cbool__00,V_27C_27)) ) ) ).

fof('thm.bool.DISJ_COMM',axiom,
    ! [V_27A_270,V_27B_270] :
      ( ( p__01(s__02(cbool__00,V_27A_270))
        | p__01(s__02(cbool__00,V_27B_270)) )
    <=> ( p__01(s__02(cbool__00,V_27B_270))
        | p__01(s__02(cbool__00,V_27A_270)) ) ) ).

fof('thm.bool.IMP_DISJ_THM',axiom,
    ! [V_27A_270,V_27B_270] :
      ( ( p__01(s__02(cbool__00,V_27A_270))
       => p__01(s__02(cbool__00,V_27B_270)) )
    <=> ( ~ p__01(s__02(cbool__00,V_27A_270))
        | p__01(s__02(cbool__00,V_27B_270)) ) ) ).

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

fof('thm.bool.UNWIND_FORALL_THM2',axiom,
    ! [V_27A_27,V_27f_27,V_27v_27] :
      ( ! [V_27x_27] :
          ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27v_27)
         => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27f_27),s__02(V_27A_27,V_27x_27)))) )
    <=> p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27f_27),s__02(V_27A_27,V_27v_27)))) ) ).

fof('thm.bool.bool_case_thm',axiom,
    ! [V_27A_27] :
      ( ! [V_27t1_27,V_27t2_27] : s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cT__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t1_27)
      & ! [V_27t1_27,V_27t2_27] : s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cF__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t2_27) ) ).

fof('thm.combin.I_THM',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,c_27const_2ecombin_2eI_27__01(s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.arithmetic.SUB_0',axiom,
    ! [V_27m_27] :
      ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) ) ).

fof('thm.arithmetic.SUB_EQ_0',axiom,
    ! [V_27m_27,V_27n_27] :
      ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    <=> p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))) ) ).

fof('thm.list.list_induction',axiom,
    ! [V_27A_27,V_27P_27] :
      ( ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))
        & ! [V_27t_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))
           => ! [V_27h_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))))) ) )
     => ! [V_27l_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)))) ) ).

fof('thm.bvl.exp_nchotomy',axiom,
    ! [V_27ee_27] :
      ( ? [V_27n_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      | ? [V_27e_27,V_27e0_27,V_27e1_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eIf_27__03(s__02(c_27type_2ebvl_2eexp_27__00,V_27e_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27e0_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27e1_27)))
      | ? [V_27l_27,V_27e_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eLet_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27l_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27e_27)))
      | ? [V_27e_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eRaise_27__01(s__02(c_27type_2ebvl_2eexp_27__00,V_27e_27)))
      | ? [V_27e_27,V_27e0_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eHandle_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27e_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27e0_27)))
      | ? [V_27e_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eTick_27__01(s__02(c_27type_2ebvl_2eexp_27__00,V_27e_27)))
      | ? [V_27n_27,V_27o_7c39_7c_27,V_27l_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eCall_27__03(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2enum_2enum_27__00),V_27o_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27l_27)))
      | ? [V_27o_7c39_7c_27,V_27l_27] : s__02(c_27type_2ebvl_2eexp_27__00,V_27ee_27) = s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eOp_27__02(s__02(c_27type_2eclosLang_2eop_27__00,V_27o_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27l_27))) ) ).

fof('thm.bvl_inline.is_small_aux_ind',axiom,
    ! [V_27P_27] :
      ( ( ! [V_27n_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))
        & ! [V_27n_27,V_27x_27,V_27y_27,V_27xs_27] :
            ( ( ! [V_27n_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27y_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27)))))) )
              & ( s__02(c_27type_2enum_2enum_27__00,V_27n_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
               => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) ) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27y_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27)))))))) )
        & ! [V_27n_27,V_27v_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))
        & ! [V_27n_27,V_27x1_27,V_27x2_27,V_27x3_27] :
            ( ( ! [V_27n_7c39_7c_27,V_27n_7c39_7c_7c39_7c_27,V_27n_7c39_7c_7c39_7c_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
              & ! [V_27n_7c39_7c_27,V_27n_7c39_7c_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
              & ! [V_27n_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) ) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eIf_27__03(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
        & ! [V_27n_27,V_27xs_27,V_27x2_27] :
            ( ( ! [V_27n_7c39_7c_27,V_27n_7c39_7c_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27)))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
              & ! [V_27n_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27)))) ) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eLet_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
        & ! [V_27n_27,V_27x1_27] :
            ( ! [V_27n_7c39_7c_27] :
                ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                  & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
               => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eRaise_27__01(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
        & ! [V_27n_27,V_27x1_27,V_27x2_27] :
            ( ( ! [V_27n_7c39_7c_27,V_27n_7c39_7c_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
              & ! [V_27n_7c39_7c_27] :
                  ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                    & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                 => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) ) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eHandle_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
        & ! [V_27n_27,V_27op_27,V_27xs_27] :
            ( ! [V_27n_7c39_7c_27] :
                ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                  & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
               => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27)))) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eOp_27__02(s__02(c_27type_2eclosLang_2eop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
        & ! [V_27n_27,V_27x_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eTick_27__01(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) )
        & ! [V_27n_27,V_27ticks_27,V_27dest_27,V_27xs_27] :
            ( ! [V_27n_7c39_7c_27] :
                ( ( s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))
                  & s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) != s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
               => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27)))) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eCall_27__03(s__02(c_27type_2enum_2enum_27__00,V_27ticks_27),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2enum_2enum_27__00),V_27dest_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))) ) )
     => ! [V_27v_27,V_27v1_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cbool__00)),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27v_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27v1_27)))) ) ).

fof('thm.bvl_inline.is_small_aux_def',axiom,
    ! [V__5] :
      ( ! [V_27xs_27,V_27n_7c39_7c_27] :
        ? [Vv] :
          ( ( p__01(s__02(cbool__00,Vv))
          <=> s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
          & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__5),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))))) )
     => ! [V__4] :
          ( ! [V__3,V_27x2_27,V_27xs_27,V_27n_7c39_7c_27] :
            ? [Vv] :
              ( ( p__01(s__02(cbool__00,Vv))
              <=> s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
              & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),chapp__02(s__02(cfun__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)))),V__4),s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__3))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__3),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))))))) )
         => ! [V__3] :
              ( ! [V_27x3_27,V_27n_7c39_7c_7c39_7c_7c39_7c_27] :
                ? [Vv] :
                  ( ( p__01(s__02(cbool__00,Vv))
                  <=> s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                  & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__3),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_7c39_7c_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))) )
             => ! [V__2] :
                  ( ! [V_27x3_27,V_27x2_27,V_27n_7c39_7c_7c39_7c_27] :
                    ? [Vv] :
                      ( ( p__01(s__02(cbool__00,Vv))
                      <=> s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                      & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V__2),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__3),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))))) )
                 => ! [V__1] :
                      ( ! [V_27x3_27,V_27x2_27,V_27x1_27,V_27n_7c39_7c_27] :
                        ? [Vv] :
                          ( ( p__01(s__02(cbool__00,Vv))
                          <=> s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                          & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)))),V__1),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V__2),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))))) )
                     => ! [V__0] :
                          ( ! [V_27y_27,V_27xs_27,V_27n_7c39_7c_27] :
                            ? [Vv] :
                              ( ( p__01(s__02(cbool__00,Vv))
                              <=> s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                              & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V__0),s__02(c_27type_2ebvl_2eexp_27__00,V_27y_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27y_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))))))) )
                         => ( ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27n_27)
                            & ! [V_27y_27,V_27xs_27,V_27x_27,V_27n_27] :
                              ? [Vv] :
                                ( ( p__01(s__02(cbool__00,Vv))
                                <=> s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
                                & s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27y_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V__0),s__02(c_27type_2ebvl_2eexp_27__00,V_27y_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))))) )
                            & ! [V_27v_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27v_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,V_27n_27)
                            & ! [V_27x3_27,V_27x2_27,V_27x1_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eIf_27__03(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)))),V__1),s__02(c_27type_2ebvl_2eexp_27__00,V_27x3_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
                            & ! [V_27xs_27,V_27x2_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eLet_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),chapp__02(s__02(cfun__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)))),V__4),s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__3))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
                            & ! [V_27x1_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eRaise_27__01(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__3),s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
                            & ! [V_27x2_27,V_27x1_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eHandle_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),chapp__02(s__02(cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2ebvl_2eexp_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00))),V__2),s__02(c_27type_2ebvl_2eexp_27__00,V_27x2_27))),s__02(c_27type_2ebvl_2eexp_27__00,V_27x1_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
                            & ! [V_27xs_27,V_27op_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eOp_27__02(s__02(c_27type_2eclosLang_2eop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__5),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))))))
                            & ! [V_27x_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eTick_27__01(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00)))))
                            & ! [V_27xs_27,V_27ticks_27,V_27n_27,V_27dest_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,c_27const_2ebvl_2eCall_27__03(s__02(c_27type_2enum_2enum_27__00,V_27ticks_27),s__02(c_27type_2eoption_2eoption_27__01(c_27type_2enum_2enum_27__00),V_27dest_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__5),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))) ) ) ) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V__0] :
      ( ! [V_27xs_27,V_27n0_27] :
        ? [Vv] :
          ( ( p__01(s__02(cbool__00,Vv))
          <=> s__02(c_27type_2enum_2enum_27__00,V_27n0_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
          & s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27n0_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,V_27n0_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n0_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))))) )
     => ! [V_27n_27,V_27x_27,V_27xs_27] :
        ? [Vv] :
          ( ( p__01(s__02(cbool__00,Vv))
          <=> s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
          & s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00)),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebvl__inline_2eis__small__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ebvl_2eexp_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvl_2eexp_27__00),c_27const_2elist_2eNIL_27__00))))))))) ) ) ).

%------------------------------------------------------------------------------
