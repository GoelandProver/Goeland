%------------------------------------------------------------------------------
% File     : SWW926+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : data_to_word_memoryProof__109__split1_thm__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : data_to_word_memoryProof__109__split1_thm__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.00 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   33 (   4 unt;   0 def)
%            Number of atoms       :  168 (  22 equ)
%            Maximal formula atoms :   15 (   5 avg)
%            Number of connectives :  180 (  45   ~;  28   |;  32   &)
%                                         (  31 <=>;  44  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   21 (   7 avg)
%            Maximal term depth    :   21 (   3 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   40 (  40 usr;   8 con; 0-6 aty)
%            Number of variables   :  116 ( 111   !;   5   ?)
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

fof('thm.list.LIST_REL_LENGTH',axiom,
    ! [V_27A_27,V_27B_27,V_27R_27,V_27x_27,V_27y_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27R_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27y_27))))
     => s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27y_27))) ) ).

fof('thm.list.LIST_REL_SPLIT1',axiom,
    ! [V_27A_27,V_27B_27,V_27xs2_27,V_27P_27,V_27xs1_27,V_27zs_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs1_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs2_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27zs_27))))
    <=> ? [V_27ys1_27,V_27ys2_27] :
          ( s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27zs_27) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys1_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys2_27)))
          & p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs1_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys1_27))))
          & p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs2_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys2_27)))) ) ) ).

fof('thm.data_to_word_memoryProof.bc_stack_ref_inv_def',axiom,
    ! [V_27A_27,V__2] :
      ( ! [V_27conf_27,V_27v_27,V_27f_27,V_27heap_27,V_27x_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))),chapp__02(s__02(cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)))),chapp__02(s__02(cfun__02(c_27type_2edata__to__word_2econfig_27__00,cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))))),V__2),s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27))),s__02(c_27type_2ebvlSem_2ev_27__00,V_27v_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))),s__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27x_27))) = s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2ev__inv_27__03(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2ebvlSem_2ev_27__00,V_27v_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),c_27type_2epair_2eprod_27__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),V_27x_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)))))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27)))))))
     => ! [V__1] :
          ( ! [V_27conf_27,V_27f_27,V_27heap_27,V_27v_27] : s__02(cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)))),chapp__02(s__02(cfun__02(c_27type_2edata__to__word_2econfig_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))))),V__1),s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))),s__02(c_27type_2ebvlSem_2ev_27__00,V_27v_27))) = s__02(cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))),chapp__02(s__02(cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)))),chapp__02(s__02(cfun__02(c_27type_2edata__to__word_2econfig_27__00,cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))))),V__2),s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27))),s__02(c_27type_2ebvlSem_2ev_27__00,V_27v_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27)))
         => ! [V__0] :
              ( ! [V_27heap_27,V_27a_27] : s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,cbool__00))),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))),s__02(c_27type_2enum_2enum_27__00,V_27a_27))) = s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27a_27),s__02(cbool__00,c_27const_2egc__shared_2eisSomeDataElement_27__01(s__02(c_27type_2eoption_2eoption_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),c_27const_2egc__shared_2eheap__lookup_27__02(s__02(c_27type_2enum_2enum_27__00,V_27a_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27)))))))
             => ! [V_27conf_27,V_27stack_27,V_27refs_27,V_27roots_27,V_27heap_27,V_27be_27] :
                  ( p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2ebc__stack__ref__inv_27__04(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27stack_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cbool__00)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cbool__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27),s__02(cbool__00,V_27be_27))))))))
                <=> ? [V_27f_27] :
                      ( p__01(s__02(cbool__00,c_27const_2epred__set_2eINJ_27__03(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27const_2efinite__map_2eFAPPLY_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2epred__set_2eGSPEC_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,cbool__00))),V__0),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))))))))
                      & p__01(s__02(cbool__00,c_27const_2epred__set_2eSUBSET_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),c_27const_2efinite__map_2eFDOM_27__01(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27))))))
                      & p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))),chapp__02(s__02(cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00)))),chapp__02(s__02(cfun__02(c_27type_2edata__to__word_2econfig_27__00,cfun__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cfun__02(c_27type_2ebvlSem_2ev_27__00,cfun__02(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27)),cbool__00))))),V__1),s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27stack_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27))))
                      & ! [V_27n_27] :
                          ( p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2ereachable__refs_27__03(s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27stack_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
                         => p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2ebc__ref__inv_27__04(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cbool__00)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2enum_2enum_27__00),V_27f_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cbool__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27),s__02(cbool__00,V_27be_27)))))))) ) ) ) ) ) ) ).

fof('thm.data_to_word_memoryProof.abs_ml_inv_def',axiom,
    ! [V_27A_27,V_27conf_27,V_27stack_27,V_27refs_27,V_27roots_27,V_27heap_27,V_27be_27,V_27a_27,V_27sp_27,V_27sp1_27,V_27gens_27,V_27limit_27] :
      ( p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2eabs__ml__inv_27__05(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27stack_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00)))))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00))))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27),s__02(c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00)))),c_27const_2epair_2e_2c_27__02(s__02(cbool__00,V_27be_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27a_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27sp_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27sp1_27),s__02(c_27type_2egc__combined_2egen__state_27__00,V_27gens_27))))))))))))),s__02(c_27type_2enum_2enum_27__00,V_27limit_27))))
    <=> ( p__01(s__02(cbool__00,c_27const_2egc__shared_2eroots__ok_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))))
        & p__01(s__02(cbool__00,c_27const_2egc__shared_2eheap__ok_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27),s__02(c_27type_2enum_2enum_27__00,V_27limit_27))))
        & p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2egc__kind__inv_27__06(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2enum_2enum_27__00,V_27a_27),s__02(c_27type_2enum_2enum_27__00,V_27sp_27),s__02(c_27type_2enum_2enum_27__00,V_27sp1_27),s__02(c_27type_2egc__combined_2egen__state_27__00,V_27gens_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))))
        & p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2eunused__space__inv_27__03(s__02(c_27type_2enum_2enum_27__00,V_27a_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27sp_27),s__02(c_27type_2enum_2enum_27__00,V_27sp1_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27))))
        & p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2ebc__stack__ref__inv_27__04(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27stack_27),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cbool__00)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),cbool__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27),s__02(cbool__00,V_27be_27)))))))) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27conf_27,V_27xs1_27,V_27stack_27,V_27refs_27,V_27roots_27,V_27heap_27,V_27be_27,V_27a_27,V_27sp_27,V_27sp1_27,V_27gens_27,V_27limit_27] :
      ( p__01(s__02(cbool__00,c_27const_2edata__to__word__memoryProof_2eabs__ml__inv_27__05(s__02(c_27type_2edata__to__word_2econfig_27__00,V_27conf_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27xs1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27stack_27))),s__02(c_27type_2efinite__map_2efmap_27__02(c_27type_2enum_2enum_27__00,c_27type_2eclosSem_2eref_27__01(c_27type_2ebvlSem_2ev_27__00)),V_27refs_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00)))))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00))))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__element_27__02(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27),c_27type_2epair_2eprod_27__02(c_27type_2edata__to__word__memoryProof_2etag_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))))),V_27heap_27),s__02(c_27type_2epair_2eprod_27__02(cbool__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00)))),c_27const_2epair_2e_2c_27__02(s__02(cbool__00,V_27be_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00))),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27a_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27sp_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2enum_2enum_27__00,c_27type_2egc__combined_2egen__state_27__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27sp1_27),s__02(c_27type_2egc__combined_2egen__state_27__00,V_27gens_27))))))))))))),s__02(c_27type_2enum_2enum_27__00,V_27limit_27))))
     => ? [V_27rs1_27,V_27roots1_27] :
          ( s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots_27) = s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27rs1_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27roots1_27)))
          & s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2egc__shared_2eheap__address_27__01(c_27type_2ewordSem_2eword__loc_27__01(V_27A_27))),V_27rs1_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2ebvlSem_2ev_27__00),V_27xs1_27))) ) ) ).

%------------------------------------------------------------------------------
