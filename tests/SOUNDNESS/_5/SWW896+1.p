%------------------------------------------------------------------------------
% File     : SWW896+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : exh_reorderProof__52__const_cons_fst_sub_bag__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : exh_reorderProof__52__const_cons_fst_sub_bag__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   20 (   9 unt;   0 def)
%            Number of atoms       :   38 (  26 equ)
%            Maximal formula atoms :    8 (   1 avg)
%            Number of connectives :   21 (   3   ~;   1   |;   6   &)
%                                         (   7 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :   16 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   25 (  25 usr;   8 con; 0-3 aty)
%            Number of variables   :   65 (  61   !;   4   ?)
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

fof('thm.bool.LET_THM',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27x_27] : s__02(V_27B_27,c_27const_2ebool_2eLET_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27x_27))) ).

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

fof('thm.bool.EXISTS_REFL',axiom,
    ! [V_27A_27,V_27a_27] :
    ? [V_27x_27] : s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27a_27) ).

fof('thm.combin.I_THM',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,c_27const_2ecombin_2eI_27__01(s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.pair.UNCURRY_DEF',axiom,
    ! [V_27C_27,V_27A_27,V_27B_27,V_27f_27,V_27x_27,V_27y_27] : s__02(V_27C_27,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27C_27),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27))),s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27x_27),s__02(V_27B_27,V_27y_27))))) = s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27B_27,V_27C_27),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27),s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27y_27))) ).

fof('thm.pair.EXISTS_PROD',axiom,
    ! [V_27A_27,V_27B_27,V_27P_27] :
      ( ? [V_27p_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),cbool__00),V_27P_27),s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27p_27))))
    <=> ? [V_27p__1_27,V_27p__2_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),cbool__00),V_27P_27),s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27p__1_27),s__02(V_27B_27,V_27p__2_27)))))) ) ).

fof('thm.list.APPEND',axiom,
    ! [V_27A_27] :
      ( ! [V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)
      & ! [V_27l1_27,V_27l2_27,V_27h_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))) ) ).

fof('thm.list.MAP',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27f_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27f_27,V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eCONS_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27h_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) ) ).

fof('thm.list.MAP_APPEND',axiom,
    ! [V_27B_27,V_27A_27,V_27f_27,V_27l1_27,V_27l2_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))) ).

fof('thm.list.REVERSE_DEF',axiom,
    ! [V_27A_27] :
      ( s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))) ) ).

fof('thm.exh_reorder.const_cons_fst_def',axiom,
    ! [V_27A_27,V__1] :
      ( ! [V_27const__cons_27,V_27a_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)))),V__1),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27const__cons_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27a_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27const__cons_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27a_27)))))
     => ! [V__0] :
          ( ! [V_27const__cons_27] : s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)))),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27const__cons_27))) = s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)))),V__1),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27const__cons_27)))
         => ! [V_27pes_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27const_2eexh__reorder_2econst__cons__fst_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27pes_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27const_2ebool_2eLET_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27))),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27))),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)))),V__0))),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27))),c_27const_2eexh__reorder_2econst__cons__sep_27__03(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),V_27pes_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,V_27A_27)),c_27const_2elist_2eNIL_27__00))))) ) ) ).

fof('thm.exh_reorderProof.const_cons_sep_sub_bag',axiom,
    ! [V_27pes_27,V_27a_27,V_27const__cons_27,V_27c_27,V_27a_7c39_7c_27] :
      ( s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00))),c_27const_2eexh__reorder_2econst__cons__sep_27__03(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27pes_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27a_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27const__cons_27))) = s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27a_7c39_7c_27)))
     => p__01(s__02(cbool__00,c_27const_2ebag_2eSUB__BAG_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2eexhProps_2eelist__globals_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2eexhLang_2eexp_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00),c_27type_2eexhLang_2eexp_27__00),c_27const_2epair_2eSND_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27a_7c39_7c_27))))))))),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2eexhProps_2eelist__globals_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2eexhLang_2eexp_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00),c_27type_2eexhLang_2eexp_27__00),c_27const_2epair_2eSND_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27const__cons_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27const_2elist_2eREVERSE_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27a_27))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27pes_27)))))))))) ) ).

fof(conjecture,conjecture,
    ! [V_27pes_27] : p__01(s__02(cbool__00,c_27const_2ebag_2eSUB__BAG_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2eexhProps_2eelist__globals_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2eexhLang_2eexp_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00),c_27type_2eexhLang_2eexp_27__00),c_27const_2epair_2eSND_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),c_27const_2eexh__reorder_2econst__cons__fst_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27pes_27))))))),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2eexhProps_2eelist__globals_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2eexhLang_2eexp_27__00),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00),c_27type_2eexhLang_2eexp_27__00),c_27const_2epair_2eSND_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(c_27type_2eexhLang_2epat_27__00,c_27type_2eexhLang_2eexp_27__00)),V_27pes_27)))))))) ).

%------------------------------------------------------------------------------
