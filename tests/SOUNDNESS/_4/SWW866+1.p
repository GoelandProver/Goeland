%------------------------------------------------------------------------------
% File     : SWW866+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : typeSysProps__43__tenv_ctor_ok_lookup__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : typeSysProps__43__tenv_ctor_ok_lookup__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   15 (   4 unt;   0 def)
%            Number of atoms       :   72 (  20 equ)
%            Maximal formula atoms :   15 (   4 avg)
%            Number of connectives :   61 (   4   ~;   1   |;  20   &)
%                                         (  17 <=>;  19  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   7 avg)
%            Maximal term depth    :   11 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   23 (  23 usr;   7 con; 0-3 aty)
%            Number of variables   :   55 (  55   !;   0   ?)
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

fof('thm.pair.UNCURRY_DEF',axiom,
    ! [V_27C_27,V_27A_27,V_27B_27,V_27f_27,V_27x_27,V_27y_27] : s__02(V_27C_27,chapp__02(s__02(cfun__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),V_27C_27),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27))),s__02(c_27type_2epair_2eprod_27__02(V_27A_27,V_27B_27),c_27const_2epair_2e_2c_27__02(s__02(V_27A_27,V_27x_27),s__02(V_27B_27,V_27y_27))))) = s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27B_27,V_27C_27),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,V_27C_27)),V_27f_27),s__02(V_27A_27,V_27x_27))),s__02(V_27B_27,V_27y_27))) ).

fof('thm.namespaceProps.nsLookup_nsAll',axiom,
    ! [V_27A_27,V_27B_27,V_27C_27,V_27env_27,V_27x_27,V_27P_27,V_27v_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2enamespace_2ensAll_27__02(s__02(cfun__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),cfun__02(V_27C_27,cbool__00)),V_27P_27),s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),V_27env_27))))
        & s__02(c_27type_2eoption_2eoption_27__01(V_27C_27),c_27const_2enamespace_2ensLookup_27__02(s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,V_27C_27),V_27env_27),s__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),V_27x_27))) = s__02(c_27type_2eoption_2eoption_27__01(V_27C_27),c_27const_2eoption_2eSOME_27__01(s__02(V_27C_27,V_27v_27))) )
     => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27C_27,cbool__00),chapp__02(s__02(cfun__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),cfun__02(V_27C_27,cbool__00)),V_27P_27),s__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),V_27x_27))),s__02(V_27C_27,V_27v_27)))) ) ).

fof('thm.typeSoundInvariants.tenv_ctor_ok_def',axiom,
    ! [V_27A_27,V_27B_27,V_27C_27,V__3] :
      ( ! [V_27tvs_27,V_27ts_27,V_27tn_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(V_27C_27,cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00))),V__3),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27ts_27))),s__02(V_27C_27,V_27tn_27))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2east_2et_27__00,cbool__00),c_27const_2etypeSystem_2echeck__freevars_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27ts_27)))
     => ! [V__2] :
          ( ! [V_27tvs_27,V_27ts_27] : s__02(cfun__02(V_27C_27,cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00))),V__2),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27ts_27))) = s__02(cfun__02(V_27C_27,cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00))),V__3),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27ts_27)))
         => ! [V__1] :
              ( ! [V_27tvs_27] : s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27),cbool__00),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27),cbool__00)),V__1),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27))) = s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27),cbool__00),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),cfun__02(V_27C_27,cbool__00))),V__2),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27)))))
             => ! [V__0] :
                  ( ! [V_27id_27] : s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27)),cbool__00),chapp__02(s__02(cfun__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27)),cbool__00)),V__0),s__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),V_27id_27))) = s__02(cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27)),cbool__00),c_27const_2epair_2eUNCURRY_27__01(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27),cbool__00)),V__1)))
                 => ! [V_27tenvC_27] : s__02(cbool__00,c_27const_2etypeSoundInvariants_2etenv__ctor__ok_27__01(s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27))),V_27tenvC_27))) = s__02(cbool__00,c_27const_2enamespace_2ensAll_27__02(s__02(cfun__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),cfun__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27)),cbool__00)),V__0),s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27))),V_27tenvC_27))) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27B_27,V_27C_27,V_27tenvC_27,V_27cn_27,V_27tvs_27,V_27ts_27,V_27tn_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2etypeSoundInvariants_2etenv__ctor__ok_27__01(s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27))),V_27tenvC_27))))
        & s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27))),c_27const_2enamespace_2ensLookup_27__02(s__02(c_27type_2enamespace_2enamespace_27__03(V_27A_27,V_27B_27,c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27))),V_27tenvC_27),s__02(c_27type_2enamespace_2eid_27__02(V_27A_27,V_27B_27),V_27cn_27))) = s__02(c_27type_2eoption_2eoption_27__01(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27))),c_27const_2eoption_2eSOME_27__01(s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27)),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27),s__02(c_27type_2epair_2eprod_27__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27C_27),c_27const_2epair_2e_2c_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27ts_27),s__02(V_27C_27,V_27tn_27))))))) )
     => p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2east_2et_27__00,cbool__00),c_27const_2etypeSystem_2echeck__freevars_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00)),V_27tvs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2east_2et_27__00),V_27ts_27)))) ) ).

%------------------------------------------------------------------------------
