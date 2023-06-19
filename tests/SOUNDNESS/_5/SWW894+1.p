%------------------------------------------------------------------------------
% File     : SWW894+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : cfApp__18__store2heap_MAPi__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : cfApp__18__store2heap_MAPi__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   12 (   8 unt;   0 def)
%            Number of atoms       :   17 (  13 equ)
%            Maximal formula atoms :    3 (   1 avg)
%            Number of connectives :    6 (   1   ~;   1   |;   0   &)
%                                         (   1 <=>;   3  =>;   0  <=;   0 <~>)
%            Maximal formula depth :    7 (   3 avg)
%            Maximal term depth    :   12 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   18 (  18 usr;   8 con; 0-2 aty)
%            Number of variables   :   26 (  26   !;   0   ?)
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

fof('thm.bool.REFL_CLAUSE',axiom,
    ! [V_27A_27,V_27x_27] :
      ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_27)
    <=> p__01(s__02(cbool__00,cT__00)) ) ).

fof('thm.arithmetic.ADD_0',axiom,
    ! [V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) ).

fof('thm.arithmetic.ADD_SYM',axiom,
    ! [V_27m_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) ).

fof('thm.cfStore.store2heap_def',axiom,
    ! [V_27l_27] : s__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),c_27const_2ecfStore_2estore2heap_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00)),V_27l_27))) = s__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),c_27const_2ecfStore_2estore2heap__aux_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00)),V_27l_27))) ).

fof('thm.cfApp.store2heap_aux_MAPi',axiom,
    ! [V__1] :
      ( ! [V_27n_27,V_27i_27,V_27v_27] : s__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,chapp__02(s__02(cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))),s__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),V_27v_27))) = s__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,chapp__02(s__02(cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00)),c_27const_2ecfHeapsBase_2eMem_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27i_27))))),s__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),V_27v_27)))
     => ! [V__0] :
          ( ! [V_27n_27,V_27i_27] : s__02(cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27))) = s__02(cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00))),V__1),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27i_27)))
         => ! [V_27n_27,V_27s_27] : s__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),c_27const_2ecfStore_2estore2heap__aux_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00)),V_27s_27))) = s__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),c_27const_2elist_2eLIST__TO__SET_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2ecfHeapsBase_2eheap__part_27__00),c_27const_2eindexedLists_2eMAPi_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00)),V_27s_27))))) ) ) ).

fof(conjecture,conjecture,
    ! [V_27s_27] : s__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),c_27const_2ecfStore_2estore2heap_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00)),V_27s_27))) = s__02(cfun__02(c_27type_2ecfHeapsBase_2eheap__part_27__00,cbool__00),c_27const_2elist_2eLIST__TO__SET_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2ecfHeapsBase_2eheap__part_27__00),c_27const_2eindexedLists_2eMAPi_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00),c_27type_2ecfHeapsBase_2eheap__part_27__00)),c_27const_2ecfHeapsBase_2eMem_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2esemanticPrimitives_2estore__v_27__01(c_27type_2esemanticPrimitives_2ev_27__00)),V_27s_27))))) ).

%------------------------------------------------------------------------------
