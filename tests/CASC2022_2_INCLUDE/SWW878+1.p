%------------------------------------------------------------------------------
% File     : SWW878+1 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Software Verification
% Problem  : wordProps__127__locals_rel_get_var_imm__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : wordProps__127__locals_rel_get_var_imm__dep [Kum18]

% Status   : Theorem
% Rating   : 0.78 v8.1.0, 0.75 v7.5.0, 0.78 v7.4.0, 0.67 v7.3.0
% Syntax   : Number of formulae    :   35 (   4 unt;   0 def)
%            Number of atoms       :  173 (  28 equ)
%            Maximal formula atoms :   15 (   4 avg)
%            Number of connectives :  183 (  45   ~;  29   |;  37   &)
%                                         (  35 <=>;  37  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   6 avg)
%            Maximal term depth    :   10 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   25 (  25 usr;   4 con; 0-3 aty)
%            Number of variables   :   88 (  86   !;   2   ?)
% SPC      : FOF_THM_RFO_SEQ

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

fof('thm.bool.EQ_REFL',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27) ).

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

fof('thm.bool.IMP_CONG',axiom,
    ! [V_27x_27,V_27x_7c39_7c_27,V_27y_27,V_27y_7c39_7c_27] :
      ( ( s__02(cbool__00,V_27x_27) = s__02(cbool__00,V_27x_7c39_7c_27)
        & ( p__01(s__02(cbool__00,V_27x_7c39_7c_27))
         => s__02(cbool__00,V_27y_27) = s__02(cbool__00,V_27y_7c39_7c_27) ) )
     => ( ( p__01(s__02(cbool__00,V_27x_27))
         => p__01(s__02(cbool__00,V_27y_27)) )
      <=> ( p__01(s__02(cbool__00,V_27x_7c39_7c_27))
         => p__01(s__02(cbool__00,V_27y_7c39_7c_27)) ) ) ) ).

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

fof('thm.sat.dc_conj',axiom,
    ! [V_27r_27,V_27q_27,V_27p_27] :
      ( ( p__01(s__02(cbool__00,V_27p_27))
      <=> ( p__01(s__02(cbool__00,V_27q_27))
          & p__01(s__02(cbool__00,V_27r_27)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27p_27))
          | ~ p__01(s__02(cbool__00,V_27q_27))
          | ~ p__01(s__02(cbool__00,V_27r_27)) )
        & ( p__01(s__02(cbool__00,V_27q_27))
          | ~ p__01(s__02(cbool__00,V_27p_27)) )
        & ( p__01(s__02(cbool__00,V_27r_27))
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

fof('thm.sat.pth_no1',axiom,
    ! [V_27q_27,V_27p_27] :
      ( ~ ( p__01(s__02(cbool__00,V_27p_27))
          | p__01(s__02(cbool__00,V_27q_27)) )
     => ~ p__01(s__02(cbool__00,V_27p_27)) ) ).

fof('thm.sat.pth_no2',axiom,
    ! [V_27q_27,V_27p_27] :
      ( ~ ( p__01(s__02(cbool__00,V_27p_27))
          | p__01(s__02(cbool__00,V_27q_27)) )
     => ~ p__01(s__02(cbool__00,V_27q_27)) ) ).

fof('thm.sat.pth_nn',axiom,
    ! [V_27p_27] :
      ( ~ ~ p__01(s__02(cbool__00,V_27p_27))
     => p__01(s__02(cbool__00,V_27p_27)) ) ).

fof('thm.option.SOME_11',axiom,
    ! [V_27A_27,V_27x_27,V_27y_27] :
      ( s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27x_27))) = s__02(c_27type_2eoption_2eoption_27__01(V_27A_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27A_27,V_27y_27)))
    <=> s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27y_27) ) ).

fof('thm.asm.reg_imm_nchotomy',axiom,
    ! [V_27A_27,V_27rr_27] :
      ( ? [V_27n_27] : s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27rr_27) = s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),c_27const_2easm_2eReg_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      | ? [V_27c_27] : s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27rr_27) = s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),c_27const_2easm_2eImm_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27c_27))) ) ).

fof('thm.wordLang.every_var_imm_def',axiom,
    ! [V_27A_27,V_27v3_27,V_27r_27,V_27P_27] :
      ( s__02(cbool__00,c_27const_2ewordLang_2eevery__var__imm_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),c_27const_2easm_2eReg_27__01(s__02(c_27type_2enum_2enum_27__00,V_27r_27))))) = s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27r_27)))
      & s__02(cbool__00,c_27const_2ewordLang_2eevery__var__imm_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),c_27const_2easm_2eImm_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v3_27))))) = s__02(cbool__00,cT__00) ) ).

fof('thm.wordSem.get_var_imm_def',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27n_27,V_27s_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var__imm_27__02(s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),c_27const_2easm_2eReg_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27)))
      & ! [V_27w_27,V_27s_27] : s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var__imm_27__02(s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),c_27const_2easm_2eImm_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27w_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27s_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27const_2ewordSem_2eWord_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27w_27))))) ) ).

fof('thm.wordProps.locals_rel_get_var',axiom,
    ! [V_27B_27,V_27A_27,V_27x_27,V_27temp_27,V_27st_27,V_27r_27,V_27loc_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27r_27),s__02(c_27type_2enum_2enum_27__00,V_27temp_27))))
        & s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var_27__02(s__02(c_27type_2enum_2enum_27__00,V_27r_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27st_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27)))
        & p__01(s__02(cbool__00,c_27const_2ewordProps_2elocals__rel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27temp_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2estate__locals_27__01(s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27st_27))),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27loc_27)))) )
     => s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var_27__02(s__02(c_27type_2enum_2enum_27__00,V_27r_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2ewordSem_2estate__locals__fupd_27__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27loc_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27st_27))))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27))) ) ).

fof(conjecture,conjecture,
    ! [V_27B_27,V_27A_27,V__0] :
      ( ! [V_27temp_27,V_27x0_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),V__0),s__02(c_27type_2enum_2enum_27__00,V_27temp_27))),s__02(c_27type_2enum_2enum_27__00,V_27x0_27))) = s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27x0_27),s__02(c_27type_2enum_2enum_27__00,V_27temp_27)))
     => ! [V_27temp_27,V_27r_27,V_27st_27,V_27x_27,V_27loc_27] :
          ( ( p__01(s__02(cbool__00,c_27const_2ewordLang_2eevery__var__imm_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),V__0),s__02(c_27type_2enum_2enum_27__00,V_27temp_27))),s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27r_27))))
            & s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var__imm_27__02(s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27r_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27st_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27)))
            & p__01(s__02(cbool__00,c_27const_2ewordProps_2elocals__rel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27temp_27),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2estate__locals_27__01(s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27st_27))),s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27loc_27)))) )
         => s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2ewordSem_2eget__var__imm_27__02(s__02(c_27type_2easm_2ereg__imm_27__01(V_27A_27),V_27r_27),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),c_27const_2ewordSem_2estate__locals__fupd_27__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2ecombin_2eK_27__01(s__02(c_27type_2esptree_2espt_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27loc_27))),s__02(c_27type_2ewordSem_2estate_27__02(V_27A_27,V_27B_27),V_27st_27))))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),V_27x_27))) ) ) ).

%------------------------------------------------------------------------------
