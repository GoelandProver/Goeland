%------------------------------------------------------------------------------
% File     : SWW861+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : namespaceProps__19__nsMap_nsEmpty__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : namespaceProps__19__nsMap_nsEmpty__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   12 (   5 unt;   0 def)
%            Number of atoms       :   42 (  20 equ)
%            Maximal formula atoms :   15 (   3 avg)
%            Number of connectives :   33 (   3   ~;   1   |;  14   &)
%                                         (  10 <=>;   5  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   16 (   6 avg)
%            Maximal term depth    :   15 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   17 (  17 usr;   5 con; 0-3 aty)
%            Number of variables   :   50 (  50   !;   0   ?)
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

fof('thm.list.MAP',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27f_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eNIL_27__00)
      & ! [V_27f_27,V_27h_27,V_27t_27] : s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eCONS_27__02(s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(V_27A_27,V_27h_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))) ) ).

fof('thm.namespace.namespace_11',axiom,
    ! [V_27M_27,V_27N_27,V_27V_27,V_27a0_27,V_27a1_27,V_27a0_7c39_7c_27,V_27a1_7c39_7c_27] :
      ( s__02(c_27type_2enamespace_2enamespace_27__03(V_27M_27,V_27N_27,V_27V_27),c_27const_2enamespace_2eBind_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27N_27,V_27V_27)),V_27a0_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27M_27,c_27type_2enamespace_2enamespace_27__03(V_27M_27,V_27N_27,V_27V_27))),V_27a1_27))) = s__02(c_27type_2enamespace_2enamespace_27__03(V_27M_27,V_27N_27,V_27V_27),c_27const_2enamespace_2eBind_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27N_27,V_27V_27)),V_27a0_7c39_7c_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27M_27,c_27type_2enamespace_2enamespace_27__03(V_27M_27,V_27N_27,V_27V_27))),V_27a1_7c39_7c_27)))
    <=> ( s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27N_27,V_27V_27)),V_27a0_27) = s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27N_27,V_27V_27)),V_27a0_7c39_7c_27)
        & s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27M_27,c_27type_2enamespace_2enamespace_27__03(V_27M_27,V_27N_27,V_27V_27))),V_27a1_27) = s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27M_27,c_27type_2enamespace_2enamespace_27__03(V_27M_27,V_27N_27,V_27V_27))),V_27a1_7c39_7c_27) ) ) ).

fof('thm.namespace.nsEmpty_def',axiom,
    ! [V_27A_27,V_27B_27,V_27C_27] : s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),c_27const_2enamespace_2ensEmpty_27__00) = s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),c_27const_2enamespace_2eBind_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))),c_27const_2elist_2eNIL_27__00))) ).

fof('thm.termination.nsMap_def',axiom,
    ! [V_27C_27,V_27A_27,V_27B_27,V_27D_27,V__3] :
      ( ! [V_27mn_27,V_27f_27,V_27e_27] : s__02(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27)),chapp__02(s__02(cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27)))),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))))),V__3),s__02(V_27A_27,V_27mn_27))),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27))),s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),V_27e_27))) = s__02(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27)),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27mn_27),s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),c_27const_2enamespace_2ensMap_27__02(s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27),s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),V_27e_27)))))
     => ! [V__2] :
          ( ! [V_27f_27,V_27mn_27] : s__02(cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27)))),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27A_27,cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))))),V__2),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27))),s__02(V_27A_27,V_27mn_27))) = s__02(cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27)))),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))))),V__3),s__02(V_27A_27,V_27mn_27))),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27)))
         => ! [V__1] :
              ( ! [V_27n_27,V_27f_27,V_27x_27] : s__02(c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27),chapp__02(s__02(cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(V_27B_27,cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)))),V__1),s__02(V_27B_27,V_27n_27))),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27))),s__02(V_27D_27,V_27x_27))) = s__02(c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27),c_27const_2epair_2e_2c_27__02(s__02(V_27B_27,V_27n_27),s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27),s__02(V_27D_27,V_27x_27)))))
             => ! [V__0] :
                  ( ! [V_27f_27,V_27n_27] : s__02(cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)),chapp__02(s__02(cfun__02(V_27B_27,cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27B_27,cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)))),V__0),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27))),s__02(V_27B_27,V_27n_27))) = s__02(cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(V_27B_27,cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)))),V__1),s__02(V_27B_27,V_27n_27))),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27)))
                 => ! [V_27v_27,V_27m_27,V_27f_27] : s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),c_27const_2enamespace_2ensMap_27__02(s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27),s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27const_2enamespace_2eBind_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27B_27,V_27D_27)),V_27v_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27))),V_27m_27))))) = s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),c_27const_2enamespace_2eBind_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(V_27B_27,cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27))),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27B_27,cfun__02(V_27D_27,c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27)))),V__0),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27B_27,V_27D_27)),V_27v_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))),c_27const_2elist_2eMAP_27__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27)),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(V_27A_27,cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27)))),chapp__02(s__02(cfun__02(cfun__02(V_27D_27,V_27C_27),cfun__02(V_27A_27,cfun__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27),c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27))))),V__2),s__02(cfun__02(V_27D_27,V_27C_27),V_27f_27))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2epair_2eprod_27__02(V_27A_27,c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27D_27))),V_27m_27))))) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27C_27,V_27D_27,V_27B_27,V_27f_27] : s__02(c_27type_2enamespace_2enamespace_27__03(V_27C_27,V_27D_27,V_27B_27),c_27const_2enamespace_2ensMap_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(c_27type_2enamespace_2enamespace_27__03(V_27C_27,V_27D_27,V_27A_27),c_27const_2enamespace_2ensEmpty_27__00))) = s__02(c_27type_2enamespace_2enamespace_27__03(V_27C_27,V_27D_27,V_27B_27),c_27const_2enamespace_2ensEmpty_27__00) ).

%------------------------------------------------------------------------------
