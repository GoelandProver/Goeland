%------------------------------------------------------------------------------
% File     : SWW853+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : mllist__12__tabulate_GENLIST__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : mllist__12__tabulate_GENLIST__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   18 (  10 unt;   0 def)
%            Number of atoms       :   32 (  24 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   17 (   3   ~;   1   |;   6   &)
%                                         (   5 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   4 avg)
%            Maximal term depth    :   12 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   22 (  22 usr;   7 con; 0-4 aty)
%            Number of variables   :   52 (  52   !;   0   ?)
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

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

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

fof('thm.combin.o_DEF',axiom,
    ! [V_27B_27,V_27C_27,V_27A_27,V_27f_27,V_27g_27,Vx] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),c_27const_2ecombin_2eo_27__02(s__02(cfun__02(V_27C_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,V_27C_27),V_27g_27))),s__02(V_27A_27,Vx))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27C_27,V_27B_27),V_27f_27),s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27A_27,V_27C_27),V_27g_27),s__02(V_27A_27,Vx))))) ).

fof('thm.combin.I_THM',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,c_27const_2ecombin_2eI_27__01(s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.arithmetic.SUB_0',axiom,
    ! [V_27m_27] :
      ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) ) ).

fof('thm.arithmetic.FUNPOW_0',axiom,
    ! [V_27A_27,V_27x_27,V_27f_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27A_27,V_27A_27),c_27const_2earithmetic_2eFUNPOW_27__02(s__02(cfun__02(V_27A_27,V_27A_27),V_27f_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))),s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.list.APPEND',axiom,
    ! [V_27A_27] :
      ( ! [V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)
      & ! [V_27l1_27,V_27l2_27,V_27h_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))) ) ).

fof('thm.list.REVERSE_DEF',axiom,
    ! [V_27A_27] :
      ( s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))) ) ).

fof('thm.mllist.tabulate_def',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27n_27,V_27f_27,V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2emllist_2etabulate__aux_27__04(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)))
     => ! [V_27n_27,V_27f_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2emllist_2etabulate_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27type_2elist_2elist_27__01(V_27A_27)))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) ) ).

fof('thm.mllist.tabulate_aux_GENLIST',axiom,
    ! [V_27A_27,V_27n_27,V_27m_27,V_27f_27,V_27acc_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2emllist_2etabulate__aux_27__04(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27acc_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27acc_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eGENLIST_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),c_27const_2ecombin_2eo_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2earithmetic_2eFUNPOW_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2enum_2eSUC_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))))) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27f_27,V_27n_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2emllist_2etabulate_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eGENLIST_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) ).

%------------------------------------------------------------------------------
