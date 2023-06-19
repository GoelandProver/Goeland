%------------------------------------------------------------------------------
% File     : SWW863+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : reg_allocProof__12__tactictoe_prove_11__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : reg_allocProof__12__tactictoe_prove_11__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.33 v8.1.0, 0.50 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   19 (   4 unt;   0 def)
%            Number of atoms       :   63 (  29 equ)
%            Maximal formula atoms :    9 (   3 avg)
%            Number of connectives :   48 (   4   ~;   4   |;  10   &)
%                                         (  10 <=>;  20  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   6 avg)
%            Maximal term depth    :   14 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   23 (  23 usr;   7 con; 0-4 aty)
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

fof('thm.bool.IMP_ANTISYM_AX',axiom,
    ! [V_27t1_27,V_27t2_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
       => p__01(s__02(cbool__00,V_27t2_27)) )
     => ( ( p__01(s__02(cbool__00,V_27t2_27))
         => p__01(s__02(cbool__00,V_27t1_27)) )
       => s__02(cbool__00,V_27t1_27) = s__02(cbool__00,V_27t2_27) ) ) ).

fof('thm.bool.FALSITY',axiom,
    ! [V_27t_27] :
      ( p__01(s__02(cbool__00,cF__00))
     => p__01(s__02(cbool__00,V_27t_27)) ) ).

fof('thm.bool.EXCLUDED_MIDDLE',axiom,
    ! [V_27t_27] :
      ( p__01(s__02(cbool__00,V_27t_27))
      | ~ p__01(s__02(cbool__00,V_27t_27)) ) ).

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

fof('thm.bool.COND_CLAUSES',axiom,
    ! [V_27A_27,V_27t1_27,V_27t2_27] :
      ( s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cT__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t1_27)
      & s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,cF__00),s__02(V_27A_27,V_27t1_27),s__02(V_27A_27,V_27t2_27))) = s__02(V_27A_27,V_27t2_27) ) ).

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

fof('thm.pair.pair_case_thm',axiom,
    ! [V_27A_27,V_27B_27,V_27C_27,V_27y_27,V_27x_27,V_27f_27] : s__02(V_27A_27,c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(V_27B_27,V_27C_27),c_27const_2epair_2e_2c_27__02(s__02(V_27B_27,V_27x_27),s__02(V_27C_27,V_27y_27))),s__02(cfun__02(V_27B_27,cfun__02(V_27C_27,V_27A_27)),V_27f_27))) = s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27C_27,V_27A_27),chapp__02(s__02(cfun__02(V_27B_27,cfun__02(V_27C_27,V_27A_27)),V_27f_27),s__02(V_27B_27,V_27x_27))),s__02(V_27C_27,V_27y_27))) ).

fof('thm.list.EL_LUPDATE',axiom,
    ! [V_27A_27,V_27ys_27,V_27x_27,V_27i_27,V_27k_27] :
    ? [Vv] :
      ( ( p__01(s__02(cbool__00,Vv))
      <=> ( s__02(c_27type_2enum_2enum_27__00,V_27i_27) = s__02(c_27type_2enum_2enum_27__00,V_27k_27)
          & p__01(s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27ys_27)))))) ) )
      & s__02(V_27A_27,c_27const_2elist_2eEL_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eLUPDATE_27__03(s__02(V_27A_27,V_27x_27),s__02(c_27type_2enum_2enum_27__00,V_27k_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27ys_27))))) = s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(V_27A_27,V_27x_27),s__02(V_27A_27,c_27const_2elist_2eEL_27__02(s__02(c_27type_2enum_2enum_27__00,V_27i_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27ys_27))))) ) ).

fof('thm.reg_alloc.tag_case_def',axiom,
    ! [V_27A_27] :
      ( ! [V_27a_27,V_27f_27,V_27v_27,V_27v1_27] : s__02(V_27A_27,c_27const_2ereg__alloc_2etag__CASE_27__04(s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eFixed_27__01(s__02(c_27type_2enum_2enum_27__00,V_27a_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(V_27A_27,V_27v_27),s__02(V_27A_27,V_27v1_27))) = s__02(V_27A_27,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2enum_2enum_27__00,V_27a_27)))
      & ! [V_27f_27,V_27v_27,V_27v1_27] : s__02(V_27A_27,c_27const_2ereg__alloc_2etag__CASE_27__04(s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eAtemp_27__00),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(V_27A_27,V_27v_27),s__02(V_27A_27,V_27v1_27))) = s__02(V_27A_27,V_27v_27)
      & ! [V_27f_27,V_27v_27,V_27v1_27] : s__02(V_27A_27,c_27const_2ereg__alloc_2etag__CASE_27__04(s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eStemp_27__00),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(V_27A_27,V_27v_27),s__02(V_27A_27,V_27v1_27))) = s__02(V_27A_27,V_27v1_27) ) ).

fof('thm.reg_alloc.tag_nchotomy',axiom,
    ! [V_27tt_27] :
      ( ? [V_27n_27] : s__02(c_27type_2ereg__alloc_2etag_27__00,V_27tt_27) = s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eFixed_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      | s__02(c_27type_2ereg__alloc_2etag_27__00,V_27tt_27) = s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eAtemp_27__00)
      | s__02(c_27type_2ereg__alloc_2etag_27__00,V_27tt_27) = s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eStemp_27__00) ) ).

fof('thm.reg_allocProof.no_clash_def',axiom,
    ! [V__3] :
      ( ! [V_27n_27,V_27x_27,V_27y_27,V_27m_27] :
          ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)))),V__3),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27))),s__02(c_27type_2enum_2enum_27__00,V_27m_27))))
        <=> ( s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,V_27m_27)
           => s__02(c_27type_2enum_2enum_27__00,V_27x_27) = s__02(c_27type_2enum_2enum_27__00,V_27y_27) ) )
     => ! [V__2] :
          ( ! [V_27v3_27,V_27x_27,V_27y_27,V_27n_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)))),V__2),s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v3_27))),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(cbool__00,c_27const_2ereg__alloc_2etag__CASE_27__04(s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v3_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)))),V__3),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27))),s__02(cbool__00,cT__00),s__02(cbool__00,cT__00)))
         => ! [V__1] :
              ( ! [V_27v2_27,V_27x_27,V_27y_27,V_27v3_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)))),V__1),s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v2_27))),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27))),s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v3_27))) = s__02(cbool__00,c_27const_2ereg__alloc_2etag__CASE_27__04(s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v2_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cbool__00)))),V__2),s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v3_27))),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27))),s__02(cbool__00,cT__00),s__02(cbool__00,cT__00)))
             => ! [V__0] :
                  ( ! [V_27x_27,V_27y_27,V_27v2_27] : s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27))),s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v2_27))) = s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)))),V__1),s__02(c_27type_2ereg__alloc_2etag_27__00,V_27v2_27))),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27)))
                 => ! [V_27adj__ls_27,V_27node__tag_27] :
                      ( p__01(s__02(cbool__00,c_27const_2ereg__allocProof_2eno__clash_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00)),V_27adj__ls_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ereg__alloc_2etag_27__00),V_27node__tag_27))))
                    <=> ! [V_27x_27,V_27y_27] :
                          ( p__01(s__02(cbool__00,c_27const_2ereg__allocProof_2ehas__edge_27__03(s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00)),V_27adj__ls_27),s__02(c_27type_2enum_2enum_27__00,V_27x_27),s__02(c_27type_2enum_2enum_27__00,V_27y_27))))
                         => p__01(s__02(cbool__00,c_27const_2epair_2epair__CASE_27__02(s__02(c_27type_2epair_2eprod_27__02(c_27type_2ereg__alloc_2etag_27__00,c_27type_2ereg__alloc_2etag_27__00),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2elist_2eEL_27__02(s__02(c_27type_2enum_2enum_27__00,V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ereg__alloc_2etag_27__00),V_27node__tag_27))),s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2elist_2eEL_27__02(s__02(c_27type_2enum_2enum_27__00,V_27y_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ereg__alloc_2etag_27__00),V_27node__tag_27))))),s__02(cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2enum_2enum_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cfun__02(c_27type_2ereg__alloc_2etag_27__00,cbool__00)))),V__0),s__02(c_27type_2enum_2enum_27__00,V_27x_27))),s__02(c_27type_2enum_2enum_27__00,V_27y_27)))))) ) ) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27adjls_27,V_27tags_27,V_27n_27] :
      ( p__01(s__02(cbool__00,c_27const_2ereg__allocProof_2eno__clash_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00)),V_27adjls_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ereg__alloc_2etag_27__00),V_27tags_27))))
     => p__01(s__02(cbool__00,c_27const_2ereg__allocProof_2eno__clash_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2enum_2enum_27__00)),V_27adjls_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ereg__alloc_2etag_27__00),c_27const_2elist_2eLUPDATE_27__03(s__02(c_27type_2ereg__alloc_2etag_27__00,c_27const_2ereg__alloc_2eStemp_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ereg__alloc_2etag_27__00),V_27tags_27)))))) ) ).

%------------------------------------------------------------------------------
