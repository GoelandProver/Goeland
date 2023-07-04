%------------------------------------------------------------------------------
% File     : SWW919+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : lab_to_targetProof__233__tactictoe_prove_232__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : lab_to_targetProof__233__tactictoe_prove_232__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   28 (   9 unt;   0 def)
%            Number of atoms       :   99 (  39 equ)
%            Maximal formula atoms :   15 (   3 avg)
%            Number of connectives :   75 (   4   ~;   3   |;  26   &)
%                                         (  20 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   6 avg)
%            Maximal term depth    :   15 (   3 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   47 (  47 usr;  10 con; 0-4 aty)
%            Number of variables   :  130 ( 118   !;  12   ?)
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

fof('thm.bool.LET_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27x_27] : s__02(V_27B_27,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) ).

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

fof('thm.combin.I_THM',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,c_27const_2ecombin_2eI_27__01(s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.list.MAP',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27f_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27f_27,V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eCONS_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27h_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) ) ).

fof('thm.list.EVERY_DEF',axiom,
    ! [V_27A_27] :
      ( ! [V_27P_27] : s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(cbool__00,cT__00)
      & ! [V_27P_27,V_27h_27,V_27t_27] :
          ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))))
        <=> ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27h_27))))
            & p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))) ) ) ) ).

fof('thm.list.list_induction',axiom,
    ! [V_27A_27,V_27P_27] :
      ( ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))
        & ! [V_27t_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))
           => ! [V_27h_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))))) ) )
     => ! [V_27l_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)))) ) ).

fof('thm.labLang.line_nchotomy',axiom,
    ! [V_27A_27,V_27ll_27] :
      ( ? [V_27n_27,V_27n0_27,V_27n1_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),V_27ll_27) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27n0_27),s__02(c_27type_2enum_2enum_27__00,V_27n1_27)))
      | ? [V_27a_27,V_27l_27,V_27n_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),V_27ll_27) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27l_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      | ? [V_27a_27,V_27c_27,V_27l_27,V_27n_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),V_27ll_27) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27a_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27l_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) ) ).

fof('thm.labLang.sec_nchotomy',axiom,
    ! [V_27A_27,V_27ss_27] :
    ? [V_27n_27,V_27l_27] : s__02(c_27type_2elabLang_2esec_27__01(V_27A_27),V_27ss_27) = s__02(c_27type_2elabLang_2esec_27__01(V_27A_27),c_27const_2elabLang_2eSection_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27l_27))) ).

fof('thm.lab_to_target.cbw_to_asm_def',axiom,
    ! [V_27A_27,V__2] :
      ( ! [V_27r1_27,V_27r2_27] : s__02(c_27type_2easm_2easm_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27r1_27))),s__02(c_27type_2enum_2enum_27__00,V_27r2_27))) = s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2easm_2eInst_27__01(s__02(c_27type_2easm_2einst_27__01(V_27A_27),c_27const_2easm_2eMem_27__03(s__02(c_27type_2easm_2ememop_27__00,c_27const_2easm_2eStore8_27__00),s__02(c_27type_2enum_2enum_27__00,V_27r2_27),s__02(c_27type_2easm_2eaddr_27__01(V_27A_27),c_27const_2easm_2eAddr_27__02(s__02(c_27type_2enum_2enum_27__00,V_27r1_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2ewords_2en2w_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)))))))))
     => ! [V__1] :
          ( ! [V_27r1_27] : s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27r1_27))) = s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27r1_27)))
         => ! [V__0] :
              ( ! [V_27a0_27] : s__02(c_27type_2easm_2easm_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2easm_2easm_27__01(V_27A_27)),V__0),s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27a0_27))) = s__02(c_27type_2easm_2easm_27__01(V_27A_27),V_27a0_27)
             => ! [V_27a_27] : s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2elab__to__target_2ecbw__to__asm_27__01(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27))) = s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2elabLang_2easm__or__cbw__CASE_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27),s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2easm_2easm_27__01(V_27A_27)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,c_27type_2easm_2easm_27__01(V_27A_27))),V__1))) ) ) ) ).

fof('thm.lab_to_target.enc_line_def',axiom,
    ! [V_27A_27,V__1] :
      ( ! [V_27l_27,V_27bs_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27))),V__1),s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27l_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bs_27))) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27l_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2ewords_2en2w_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bs_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bs_27)))))
     => ! [V__0] :
          ( ! [V_27a_27,V_27bs_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27))),V__0),s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bs_27))) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bs_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bs_27)))))
         => ( ! [V_27enc_27,V_27skip__len_27,V_27n1_27,V_27n2_27,V_27n3_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__line_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27n1_27),s__02(c_27type_2enum_2enum_27__00,V_27n2_27),s__02(c_27type_2enum_2enum_27__00,V_27n3_27))))) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27n1_27),s__02(c_27type_2enum_2enum_27__00,V_27n2_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27)))
            & ! [V_27enc_27,V_27skip__len_27,V_27a_27,V_27v0_27,V_27v1_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__line_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27v0_27),s__02(c_27type_2enum_2enum_27__00,V_27v1_27))))) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27))),V__0),s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),chapp__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2elab__to__target_2ecbw__to__asm_27__01(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27a_27)))))))
            & ! [V_27enc_27,V_27skip__len_27,V_27l_27,V_27v2_27,V_27v3_27,V_27v4_27] : s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__line_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27l_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v2_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27v3_27),s__02(c_27type_2enum_2enum_27__00,V_27v4_27))))) = s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27type_2elabLang_2eline_27__01(V_27A_27))),V__1),s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27l_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),chapp__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2elab__to__target_2elab__inst_27__02(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27const_2ewords_2en2w_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))),s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27l_27))))))) ) ) ) ).

fof('thm.lab_to_target.enc_sec_def',axiom,
    ! [V_27A_27,V_27enc_27,V_27skip__len_27,V_27k_27,V_27xs_27] : s__02(c_27type_2elabLang_2esec_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elabLang_2esec_27__01(V_27A_27),c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__sec_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))),s__02(c_27type_2elabLang_2esec_27__01(V_27A_27),c_27const_2elabLang_2eSection_27__02(s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))) = s__02(c_27type_2elabLang_2esec_27__01(V_27A_27),c_27const_2elabLang_2eSection_27__02(s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__line_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))) ).

fof('thm.lab_to_target.enc_sec_list_def',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27enc_27,V_27xs_27,V_27skip__len_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27))))),V__0),s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2elabLang_2esec_27__01(V_27A_27),c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__sec_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2enum_2enum_27__00,V_27skip__len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),V_27xs_27)))
     => ! [V_27enc_27,V_27xs_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__sec__list_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),V_27xs_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27))))),V__0),s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),chapp__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2easm_2eInst_27__01(s__02(c_27type_2easm_2einst_27__01(V_27A_27),c_27const_2easm_2eSkip_27__00))))))))) ) ).

fof('thm.labProps.line_ok_pre_def',axiom,
    ! [V_27A_27,V_27v9_27,V_27v8_27,V_27v4_27,V_27v3_27,V_27v2_27,V_27v11_27,V_27v10_27,V_27l_27,V_27c_27,V_27bytes_27,V_27b_27] :
      ( s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2eline__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27b_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2enum_2enum_27__00,V_27l_27))))) = s__02(cbool__00,c_27const_2easm_2easm__ok_27__02(s__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27const_2elab__to__target_2ecbw__to__asm_27__01(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27b_27))),s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27)))
      & s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2eline__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27v2_27),s__02(c_27type_2enum_2enum_27__00,V_27v3_27),s__02(c_27type_2enum_2enum_27__00,V_27v4_27))))) = s__02(cbool__00,cT__00)
      & s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2eline__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27v8_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v9_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27v10_27),s__02(c_27type_2enum_2enum_27__00,V_27v11_27))))) = s__02(cbool__00,cT__00) ) ).

fof('thm.labProps.sec_ok_pre_def',axiom,
    ! [V_27A_27,V_27c_27,V_27k_27,V_27ls_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2esec_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2esec__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elabLang_2esec_27__01(V_27A_27),c_27const_2elabLang_2eSection_27__02(s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27ls_27))))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2eline__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27ls_27))) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27code_27,V_27enc_27,V_27c_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2elabLang_2esec_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2esec__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),V_27code_27))))
     => p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2elabLang_2esec_27__01(V_27A_27),cbool__00),c_27const_2elabProps_2esec__ok__pre_27__01(s__02(c_27type_2easm_2easm__config_27__01(V_27A_27),V_27c_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),c_27const_2elab__to__target_2eenc__sec__list_27__02(s__02(cfun__02(c_27type_2easm_2easm_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00)))))),V_27enc_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2esec_27__01(V_27A_27)),V_27code_27)))))) ) ).

%------------------------------------------------------------------------------
