%------------------------------------------------------------------------------
% File     : SWW933+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : data_to_word_gcProof__33__fromList_SNOC__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : data_to_word_gcProof__33__fromList_SNOC__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   17 (  11 unt;   0 def)
%            Number of atoms       :   28 (  24 equ)
%            Maximal formula atoms :    5 (   1 avg)
%            Number of connectives :   12 (   1   ~;   1   |;   1   &)
%                                         (   1 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   5 avg)
%            Maximal term depth    :   16 (   3 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   28 (  28 usr;   8 con; 0-3 aty)
%            Number of variables   :   75 (  73   !;   2   ?)
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

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.pair.ABS_PAIR_THM',axiom,
    ! [V_27A_27,V_27B_27,V_27x_27] :
    ? [V_27q_27,V_27r_27] : s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27x_27) = s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27q_27),s__02(V_27B_27,V_27r_27))) ).

fof('thm.pair.SND',axiom,
    ! [V_27A_27,V_27B_27,V_27x_27,V_27y_27] : s__02(V_27B_27,c_27const_2epair_2eSND_27__01(s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27x_27),s__02(V_27B_27,V_27y_27))))) = s__02(V_27B_27,V_27y_27) ).

fof('thm.pair.UNCURRY_DEF',axiom,
    ! [V_27C_27,V_27A_27,V_27B_27,V_27f_27,V_27x_27,V_27y_27] : s__02(V_27C_27,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27C_27),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27))),s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27x_27),s__02(V_27B_27,V_27y_27))))) = s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27B_27,V_27C_27),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27),s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27y_27))) ).

fof('thm.arithmetic.ADD_0',axiom,
    ! [V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) ).

fof('thm.arithmetic.MULT_RIGHT_1',axiom,
    ! [V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) ).

fof('thm.list.FOLDL',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27f_27,V_27e_27] : s__02(V_27B_27,c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(V_27B_27,cfun__02(V_27A_27,V_27B_27)),V_27f_27),s__02(V_27B_27,V_27e_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(V_27B_27,V_27e_27)
      & ! [V_27f_27,V_27e_27,V_27x_27,V_27l_27] : s__02(V_27B_27,c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(V_27B_27,cfun__02(V_27A_27,V_27B_27)),V_27f_27),s__02(V_27B_27,V_27e_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))) = s__02(V_27B_27,c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(V_27B_27,cfun__02(V_27A_27,V_27B_27)),V_27f_27),s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),chapp__02(s__02(cfun__02(V_27B_27,cfun__02(V_27A_27,V_27B_27)),V_27f_27),s__02(V_27B_27,V_27e_27))),s__02(V_27A_27,V_27x_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) ) ).

fof('thm.list.SNOC_APPEND',axiom,
    ! [V_27A_27,V_27x_27,V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eSNOC_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))) ).

fof('thm.rich_list.FOLDL_APPEND',axiom,
    ! [V_27A_27,V_27B_27,V_27f_27,V_27e_27,V_27l1_27,V_27l2_27] : s__02(V_27A_27,c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27A_27)),V_27f_27),s__02(V_27A_27,V_27e_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l2_27))))) = s__02(V_27A_27,c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27A_27)),V_27f_27),s__02(V_27A_27,c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27A_27)),V_27f_27),s__02(V_27A_27,V_27e_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l1_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l2_27))) ).

fof('thm.sptree.fromList_def',axiom,
    ! [V_27A_27,V__2] :
      ( ! [V_27i_27,V_27t_27,V_27a_27] : s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),chapp__02(s__02(cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27))),s__02(V_27A_27,V_27a_27))) = s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(V_27A_27,V_27a_27),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27)))))
     => ! [V__1] :
          ( ! [V_27i_27,V_27t_27] : s__02(cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27))) = s__02(cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27)))
         => ! [V__0] :
              ( ! [V_27i_27] : s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27i_27))) = s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27i_27)))
             => ! [V_27l_27] : s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2efromList_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2epair_2eSND_27__01(s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),V__0))),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2eLN_27__00))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))) ) ) ) ).

fof('thm.data_to_word_gcProof.FOLDL_LENGTH_LEMMA',axiom,
    ! [V_27A_27,V__2] :
      ( ! [V_27d_27,V_27i_27,V_27t_27,V_27a_27] : s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),chapp__02(s__02(cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27))),s__02(V_27A_27,V_27a_27))) = s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(V_27A_27,V_27a_27),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27)))))
     => ! [V__1] :
          ( ! [V_27d_27,V_27i_27,V_27t_27] : s__02(cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27))) = s__02(cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))))),V__2),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27t_27)))
         => ! [V__0] :
              ( ! [V_27d_27,V_27i_27] : s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))) = s__02(cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27)))
             => ! [V_27xs_27,V_27k_27,V_27l_27,V_27d_27,V_27q_27,V_27r_27] :
                  ( s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2elist_2eFOLDL_27__03(s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esptree_2espt_27__01(V_27A_27),cfun__02(V_27A_27,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)))))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27d_27))))),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27l_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))) = s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2esptree_2espt_27__01(V_27A_27)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27q_27),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),V_27r_27)))
                 => s__02(c_27type_2enum_2enum_27__00,V_27q_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))),s__02(c_27type_2enum_2enum_27__00,V_27d_27))),s__02(c_27type_2enum_2enum_27__00,V_27k_27))) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27xs_27,V_27y_27] : s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2efromList_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eSNOC_27__02(s__02(V_27A_27,V_27y_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))))) = s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2einsert_27__03(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))),s__02(V_27A_27,V_27y_27),s__02(c_27type_2esptree_2espt_27__01(V_27A_27),c_27const_2esptree_2efromList_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))))) ).

%------------------------------------------------------------------------------
