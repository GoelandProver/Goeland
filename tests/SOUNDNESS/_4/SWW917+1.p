%------------------------------------------------------------------------------
% File     : SWW917+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : lab_to_targetProof__99__EVERY_is_Label_add_nop_preserved__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : lab_to_targetProof__99__EVERY_is_Label_add_nop_preserved__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.50 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   18 (   4 unt;   0 def)
%            Number of atoms       :   86 (  22 equ)
%            Maximal formula atoms :   15 (   4 avg)
%            Number of connectives :   76 (   8   ~;   1   |;  30   &)
%                                         (  22 <=>;  15  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   7 avg)
%            Maximal term depth    :   13 (   3 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   27 (  27 usr;   8 con; 0-4 aty)
%            Number of variables   :   80 (  80   !;   0   ?)
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

fof('thm.list.EVERY_DEF',axiom,
    ! [V_27A_27] :
      ( ! [V_27P_27] : s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(cbool__00,cT__00)
      & ! [V_27P_27,V_27h_27,V_27t_27] :
          ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))))
        <=> ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27h_27))))
            & p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))) ) ) ) ).

fof('thm.labSem.is_Label_def',axiom,
    ! [V_27A_27,V_27v9_27,V_27v8_27,V_27v7_27,V_27v6_27,V_27v2_27,V_27v12_27,V_27v11_27,V_27v10_27,V_27v1_27,V_27v0_27] :
      ( s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabSem_2eis__Label_27__00),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27v0_27),s__02(c_27type_2enum_2enum_27__00,V_27v1_27),s__02(c_27type_2enum_2enum_27__00,V_27v2_27))))) = s__02(cbool__00,cT__00)
      & s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabSem_2eis__Label_27__00),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27v6_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27v7_27),s__02(c_27type_2enum_2enum_27__00,V_27v8_27))))) = s__02(cbool__00,cF__00)
      & s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabSem_2eis__Label_27__00),s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27v9_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v10_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27v11_27),s__02(c_27type_2enum_2enum_27__00,V_27v12_27))))) = s__02(cbool__00,cF__00) ) ).

fof('thm.lab_to_target.add_nop_ind',axiom,
    ! [V_27A_27,V_27P_27] :
      ( ( ! [V_27nop_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eNIL_27__00))))
        & ! [V_27nop_27,V_27l1_27,V_27l2_27,V_27len_27,V_27xs_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27l1_27),s__02(c_27type_2enum_2enum_27__00,V_27l2_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27)))))) )
        & ! [V_27nop_27,V_27x_27,V_27bytes_27,V_27len_27,V_27xs_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))))
        & ! [V_27nop_27,V_27y_27,V_27w_27,V_27bytes_27,V_27len_27,V_27xs_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27y_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27w_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27)))))) )
     => ! [V_27v_27,V_27v1_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27v_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27v1_27)))) ) ).

fof('thm.lab_to_target.add_nop_def',axiom,
    ! [V_27A_27] :
      ( ! [V_27nop_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eadd__nop_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eNIL_27__00)
      & ! [V_27xs_27,V_27nop_27,V_27len_27,V_27l2_27,V_27l1_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eadd__nop_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27l1_27),s__02(c_27type_2enum_2enum_27__00,V_27l2_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabel_27__03(s__02(c_27type_2enum_2enum_27__00,V_27l1_27),s__02(c_27type_2enum_2enum_27__00,V_27l2_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eadd__nop_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27)))))
      & ! [V_27xs_27,V_27x_27,V_27nop_27,V_27len_27,V_27bytes_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eadd__nop_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eAsm_27__03(s__02(c_27type_2elabLang_2easm__or__cbw_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27len_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27)))
      & ! [V_27y_27,V_27xs_27,V_27w_27,V_27nop_27,V_27len_27,V_27bytes_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eadd__nop_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27y_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27w_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2enum_2enum_27__00,V_27len_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2elabLang_2eline_27__01(V_27A_27),c_27const_2elabLang_2eLabAsm_27__04(s__02(c_27type_2elabLang_2easm__with__lab_27__01(V_27A_27),V_27y_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27w_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27bytes_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27len_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27xs_27))) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27nop_27,V_27acc_27] : s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabSem_2eis__Label_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),c_27const_2elab__to__target_2eadd__nop_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2efcp_2ecart_27__02(cbool__00,c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2efcp_2ebit0_27__01(c_27type_2eone_2eone_27__00))))),V_27nop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27acc_27))))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2elabLang_2eline_27__01(V_27A_27),cbool__00),c_27const_2elabSem_2eis__Label_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2elabLang_2eline_27__01(V_27A_27)),V_27acc_27))) ).

%------------------------------------------------------------------------------
