%------------------------------------------------------------------------------
% File     : SWW936+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : bvl_to_bviProof__2__adjust_bv_Boolv__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : bvl_to_bviProof__2__adjust_bv_Boolv__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   16 (   9 unt;   0 def)
%            Number of atoms       :   27 (  23 equ)
%            Maximal formula atoms :    6 (   1 avg)
%            Number of connectives :   12 (   1   ~;   2   |;   6   &)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Maximal term depth    :   13 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   35 (  35 usr;  14 con; 0-3 aty)
%            Number of variables   :   40 (  40   !;   0   ?)
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

fof('thm.bool.BOOL_CASES_AX',axiom,
    ! [V_27t_27] :
      ( s__02(cbool__00,V_27t_27) = s__02(cbool__00,cT__00)
      | s__02(cbool__00,V_27t_27) = s__02(cbool__00,cF__00) ) ).

fof('thm.bool.ETA_AX',axiom,
    ! [V_27B_27,V_27A_27,V_27t_27,Vx] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27t_27),s__02(V_27A_27,Vx))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27t_27),s__02(V_27A_27,Vx))) ).

fof('thm.bool.TRUTH',axiom,
    p__01(s__02(cbool__00,cT__00)) ).

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.bool.COND_CLAUSES',axiom,
    ! [V_27A_27,V_27t1_27,V_27t2_27] :
      ( s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cT__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t1_27)
      & s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cF__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t2_27) ) ).

fof('thm.list.MAP',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27f_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27f_27,V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eCONS_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27h_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) ) ).

fof('thm.backend_common.false_tag_def',axiom,
    s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2efalse__tag_27__00) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) ).

fof('thm.backend_common.true_tag_def',axiom,
    s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2etrue__tag_27__00) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))) ).

fof('thm.backend_common.bool_to_tag_def',axiom,
    ! [V_27b_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2ebool__to__tag_27__01(s__02(cbool__00,V_27b_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27b_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2etrue__tag_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2efalse__tag_27__00))) ).

fof('thm.bvlSem.Boolv_def',axiom,
    ! [V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eBoolv_27__01(s__02(cbool__00,V_27b_27))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eBlock_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2ebool__to__tag_27__01(s__02(cbool__00,V_27b_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),c_27const_2elist_2eNIL_27__00))) ).

fof('thm.bvl_to_bviProof.adjust_bv_def',axiom,
    ! [V__0] :
      ( ! [V_27b_27,V_27a_27] : s__02(c_27type_2ebvlSem_2ev_27__00,chapp__02(s__02(cfun__02(c_27type_2ebvlSem_2ev_27__00,c_27type_2ebvlSem_2ev_27__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2ebvlSem_2ev_27__00,c_27type_2ebvlSem_2ev_27__00)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27))),s__02(c_27type_2ebvlSem_2ev_27__00,V_27a_27))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2ebvlSem_2ev_27__00,V_27a_27)))
     => ( ! [V_27i_27,V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eNumber_27__01(s__02(c_27type_2einteger_2eint_27__00,V_27i_27))))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eNumber_27__01(s__02(c_27type_2einteger_2eint_27__00,V_27i_27)))
        & ! [V_27w_27,V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eWord64_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))))),V_27w_27))))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eWord64_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))))),V_27w_27)))
        & ! [V_27r_27,V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eRefPtr_27__01(s__02(c_27type_2enum_2enum_27__00,V_27r_27))))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eRefPtr_27__01(s__02(c_27type_2enum_2enum_27__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2enum_2enum_27__00,V_27r_27)))))
        & ! [V_27c_27,V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eCodePtr_27__01(s__02(c_27type_2enum_2enum_27__00,V_27c_27))))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eCodePtr_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2ebvl__num__stubs_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2ebackend__common_2ebvl__to__bvi__namespaces_27__00),s__02(c_27type_2enum_2enum_27__00,V_27c_27)))))))
        & ! [V_27vs_27,V_27tag_27,V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27),s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eBlock_27__02(s__02(c_27type_2enum_2enum_27__00,V_27tag_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27vs_27))))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eBlock_27__02(s__02(c_27type_2enum_2enum_27__00,V_27tag_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2ebvlSem_2ev_27__00,c_27type_2ebvlSem_2ev_27__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2ebvlSem_2ev_27__00,c_27type_2ebvlSem_2ev_27__00)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27b_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27vs_27))))) ) ) ).

fof(conjecture,conjecture,
    ! [V_27x_27,V_27b_27] : s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvl__to__bviProof_2eadjust__bv_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27x_27),s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eBoolv_27__01(s__02(cbool__00,V_27b_27))))) = s__02(c_27type_2ebvlSem_2ev_27__00,c_27const_2ebvlSem_2eBoolv_27__01(s__02(cbool__00,V_27b_27))) ).

%------------------------------------------------------------------------------
