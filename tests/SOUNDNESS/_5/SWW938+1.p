%------------------------------------------------------------------------------
% File     : SWW938+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : stack_to_labProof__29__state_rel_with_clock__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : stack_to_labProof__29__state_rel_with_clock__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   34 (   5 unt;   0 def)
%            Number of atoms       :  188 (  36 equ)
%            Maximal formula atoms :   27 (   5 avg)
%            Number of connectives :  198 (  44   ~;  25   |;  50   &)
%                                         (  36 <=>;  43  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (   6 avg)
%            Maximal term depth    :   16 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   79 (  79 usr;   9 con; 0-6 aty)
%            Number of variables   :   84 (  83   !;   1   ?)
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

fof('thm.bool.EXISTS_DEF',axiom,
    ! [V_27A_27,Vx] : s__02(cbool__00,c_24exists__01(s__02(cfun__02(V_27A_27,cbool__00),Vx))) = s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),Vx),s__02(V_27A_27,c_27const_2emin_2e_40_27__01(s__02(cfun__02(V_27A_27,cbool__00),Vx))))) ).

fof('thm.bool.SELECT_AX',axiom,
    ! [V_27A_27,V_27P_27,V_27x_27] :
      ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27x_27))))
     => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,c_27const_2emin_2e_40_27__01(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27)))))) ) ).

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

fof('thm.bool.RIGHT_OR_OVER_AND',axiom,
    ! [V_27A_270,V_27B_270,V_27C_27] :
      ( ( ( p__01(s__02(cbool__00,V_27B_270))
          & p__01(s__02(cbool__00,V_27C_27)) )
        | p__01(s__02(cbool__00,V_27A_270)) )
    <=> ( ( p__01(s__02(cbool__00,V_27B_270))
          | p__01(s__02(cbool__00,V_27A_270)) )
        & ( p__01(s__02(cbool__00,V_27C_27))
          | p__01(s__02(cbool__00,V_27A_270)) ) ) ) ).

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

fof('thm.combin.K_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27x_27,V_27y_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27B_27,V_27A_27),c_27const_2ecombin_2eK_27__01(s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27y_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.sat.NOT_NOT',axiom,
    ! [V_27t_27] :
      ( ~ ~ p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.sat.AND_INV_IMP',axiom,
    ! [V_27A_270] :
      ( p__01(s__02(cbool__00,V_27A_270))
     => ( ~ p__01(s__02(cbool__00,V_27A_270))
       => p__01(s__02(cbool__00,cF__00)) ) ) ).

fof('thm.sat.OR_DUAL2',axiom,
    ! [V_27B_270,V_27A_270] :
      ( ( ~ ( p__01(s__02(cbool__00,V_27A_270))
            | p__01(s__02(cbool__00,V_27B_270)) )
       => p__01(s__02(cbool__00,cF__00)) )
    <=> ( ( p__01(s__02(cbool__00,V_27A_270))
         => p__01(s__02(cbool__00,cF__00)) )
       => ( ~ p__01(s__02(cbool__00,V_27B_270))
         => p__01(s__02(cbool__00,cF__00)) ) ) ) ).

fof('thm.sat.OR_DUAL3',axiom,
    ! [V_27B_270,V_27A_270] :
      ( ( ~ ( ~ p__01(s__02(cbool__00,V_27A_270))
            | p__01(s__02(cbool__00,V_27B_270)) )
       => p__01(s__02(cbool__00,cF__00)) )
    <=> ( p__01(s__02(cbool__00,V_27A_270))
       => ( ~ p__01(s__02(cbool__00,V_27B_270))
         => p__01(s__02(cbool__00,cF__00)) ) ) ) ).

fof('thm.sat.AND_INV2',axiom,
    ! [V_27A_270] :
      ( ( ~ p__01(s__02(cbool__00,V_27A_270))
       => p__01(s__02(cbool__00,cF__00)) )
     => ( ( p__01(s__02(cbool__00,V_27A_270))
         => p__01(s__02(cbool__00,cF__00)) )
       => p__01(s__02(cbool__00,cF__00)) ) ) ).

fof('thm.sat.dc_eq',axiom,
    ! [V_27r_27,V_27q_27,V_27p_27] :
      ( ( p__01(s__02(cbool__00,V_27p_27))
      <=> s__02(cbool__00,V_27q_27) = s__02(cbool__00,V_27r_27) )
    <=> ( ( p__01(s__02(cbool__00,V_27p_27))
          | p__01(s__02(cbool__00,V_27q_27))
          | p__01(s__02(cbool__00,V_27r_27)) )
        & ( p__01(s__02(cbool__00,V_27p_27))
          | ~ p__01(s__02(cbool__00,V_27r_27))
          | ~ p__01(s__02(cbool__00,V_27q_27)) )
        & ( p__01(s__02(cbool__00,V_27q_27))
          | ~ p__01(s__02(cbool__00,V_27r_27))
          | ~ p__01(s__02(cbool__00,V_27p_27)) )
        & ( p__01(s__02(cbool__00,V_27r_27))
          | ~ p__01(s__02(cbool__00,V_27q_27))
          | ~ p__01(s__02(cbool__00,V_27p_27)) ) ) ) ).

fof('thm.sat.dc_disj',axiom,
    ! [V_27r_27,V_27q_27,V_27p_27] :
      ( ( p__01(s__02(cbool__00,V_27p_27))
      <=> ( p__01(s__02(cbool__00,V_27q_27))
          | p__01(s__02(cbool__00,V_27r_27)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27p_27))
          | ~ p__01(s__02(cbool__00,V_27q_27)) )
        & ( p__01(s__02(cbool__00,V_27p_27))
          | ~ p__01(s__02(cbool__00,V_27r_27)) )
        & ( p__01(s__02(cbool__00,V_27q_27))
          | p__01(s__02(cbool__00,V_27r_27))
          | ~ p__01(s__02(cbool__00,V_27p_27)) ) ) ) ).

fof('thm.sat.dc_imp',axiom,
    ! [V_27r_27,V_27q_27,V_27p_27] :
      ( ( p__01(s__02(cbool__00,V_27p_27))
      <=> ( p__01(s__02(cbool__00,V_27q_27))
         => p__01(s__02(cbool__00,V_27r_27)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27p_27))
          | p__01(s__02(cbool__00,V_27q_27)) )
        & ( p__01(s__02(cbool__00,V_27p_27))
          | ~ p__01(s__02(cbool__00,V_27r_27)) )
        & ( ~ p__01(s__02(cbool__00,V_27q_27))
          | p__01(s__02(cbool__00,V_27r_27))
          | ~ p__01(s__02(cbool__00,V_27p_27)) ) ) ) ).

fof('thm.sat.dc_neg',axiom,
    ! [V_27q_27,V_27p_27] :
      ( ( p__01(s__02(cbool__00,V_27p_27))
      <=> ~ p__01(s__02(cbool__00,V_27q_27)) )
    <=> ( ( p__01(s__02(cbool__00,V_27p_27))
          | p__01(s__02(cbool__00,V_27q_27)) )
        & ( ~ p__01(s__02(cbool__00,V_27q_27))
          | ~ p__01(s__02(cbool__00,V_27p_27)) ) ) ) ).

fof('thm.sat.pth_ni1',axiom,
    ! [V_27q_27,V_27p_27] :
      ( ~ ( p__01(s__02(cbool__00,V_27p_27))
         => p__01(s__02(cbool__00,V_27q_27)) )
     => p__01(s__02(cbool__00,V_27p_27)) ) ).

fof('thm.sat.pth_ni2',axiom,
    ! [V_27q_27,V_27p_27] :
      ( ~ ( p__01(s__02(cbool__00,V_27p_27))
         => p__01(s__02(cbool__00,V_27q_27)) )
     => ~ p__01(s__02(cbool__00,V_27q_27)) ) ).

fof('thm.option.SOME_11',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27x_27))) = s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27y_27)))
    <=> s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27) ) ).

fof('thm.stack_to_labProof.state_rel_def',axiom,
    ! [V_27A_27,V_27B_27,V_27s_27,V_27t_27] :
      ( p__01(s__02(cbool__00,c_27const_2estack__to__labProof_2estate__rel_27__02(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27),s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))))
    <=> ( ! [V_27n_27,V_27v_27] :
            ( s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2efinite__map_2eFLOOKUP_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2estackSem_2estate__regs_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27v_27)))
           => s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27const_2elabSem_2estate__regs_27__02(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27v_27) )
        & ! [V_27n_27,V_27v_27] :
            ( s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))))),c_27const_2efinite__map_2eFLOOKUP_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))))),c_27const_2estackSem_2estate__fp__regs_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))))),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))))),V_27v_27)))
           => s__02(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))))),c_27const_2elabSem_2estate__fp__regs_27__02(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))))),V_27v_27) )
        & s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2elabSem_2estate__mem_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) = s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2estackSem_2estate__memory_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))
        & s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),cbool__00),c_27const_2elabSem_2estate__mem__domain_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) = s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),cbool__00),c_27const_2estackSem_2estate__mdomain_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))
        & s__02(cbool__00,c_27const_2elabSem_2estate__be_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) = s__02(cbool__00,c_27const_2estackSem_2estate__be_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))
        & s__02(c_27type_2effi_2effi__state_27__01(V_27B_27),c_27const_2elabSem_2estate__ffi_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) = s__02(c_27type_2effi_2effi__state_27__01(V_27B_27),c_27const_2estackSem_2estate__ffi_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))
        & s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__clock_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2estackSem_2estate__clock_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))
        & ! [V_27n_27,V_27prog_27] :
            ( s__02(c_27type_2eoption_2eoption_27__01(c_27type_2estackLang_2eprog_27__01(V_27A_27)),c_27const_2esptree_2elookup_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2estackLang_2eprog_27__01(V_27A_27)),c_27const_2estackSem_2estate__code_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2estackLang_2eprog_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27prog_27)))
           => ( p__01(s__02(cbool__00,c_27const_2estackProps_2ecall__args_27__06(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27prog_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__ptr__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__len__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__ptr2__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__len2__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__link__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))))))
              & ? [V_27pc_27] :
                  ( p__01(s__02(cbool__00,c_27const_2estack__to__labProof_2ecode__installed_27__03(s__02(c_27type_2enum_2enum_27__00,V_27pc_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2emisc_2eappend_27__01(s__02(c_27type_2emisc_2eapp__list_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2epair_2eFST_27__01(s__02(c_27type_2epair_2eprod_27__02(c_27type_2emisc_2eapp__list_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2enum_2enum_27__00)),c_27const_2estack__to__lab_2eflatten_27__03(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27prog_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2estack__alloc_2enext__lab_27__02(s__02(c_27type_2estackLang_2eprog_27__01(V_27A_27),V_27prog_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elabSem_2estate__code_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))))))
                  & s__02(c_27type_2eoption_2eoption_27__01(c_27type_2enum_2enum_27__00),c_27const_2elabSem_2eloc__to__pc_27__03(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elabSem_2estate__code_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2enum_2enum_27__00),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2enum_2enum_27__00,V_27pc_27))) ) ) )
        & ~ p__01(s__02(cbool__00,c_27const_2elabSem_2estate__failed_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))))
        & s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__link__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__len__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27)))
        & s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__link__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__ptr__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27)))
        & s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__link__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__len2__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27)))
        & s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__link__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))) != s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__ptr2__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27)))
        & ~ p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2elabSem_2estate__link__reg_27__01(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2estackSem_2estate__ffi__save__regs_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))))
        & ! [V_27k_27,V_27n_27] :
            ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2estackSem_2estate__ffi__save__regs_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))))
           => s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27)),c_27const_2elabSem_2estate__io__regs_27__03(s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27k_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27)),c_27const_2eoption_2eNONE_27__00) )
        & ! [V_27x_27] :
            ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27x_27),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),cbool__00),c_27const_2estackSem_2estate__mdomain_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))))
           => s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eMOD_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2ewords_2ew2n_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27x_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eDIV_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2efcp_2edimindex_27__01(s__02(c_27type_2ebool_2eitself_27__01(V_27A_27),c_27const_2ebool_2ethe__value_27__00))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
        & ~ p__01(s__02(cbool__00,c_27const_2estackSem_2estate__use__stack_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))
        & ~ p__01(s__02(cbool__00,c_27const_2estackSem_2estate__use__store_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))))
        & ~ p__01(s__02(cbool__00,c_27const_2estackSem_2estate__use__alloc_27__01(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27B_27,V_27s_27,V_27t_27,V_27k_27] :
      ( p__01(s__02(cbool__00,c_27const_2estack__to__labProof_2estate__rel_27__02(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27),s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27))))
     => p__01(s__02(cbool__00,c_27const_2estack__to__labProof_2estate__rel_27__02(s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2estackSem_2estate__clock__fupd_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2enum_2enum_27__00,V_27k_27))),s__02(c_27type_2estackSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))),s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2elabSem_2estate__clock__fupd_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2enum_2enum_27__00,V_27k_27))),s__02(c_27type_2elabSem_2estate_27__02(V_27A_27,V_27B_27),V_27t_27)))))) ) ).

%------------------------------------------------------------------------------
