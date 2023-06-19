%------------------------------------------------------------------------------
% File     : SWW854+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : mlstring__6__explode_11__brokendep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : mlstring__6__explode_11__brokendep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   18 (   8 unt;   0 def)
%            Number of atoms       :   38 (  24 equ)
%            Maximal formula atoms :    8 (   2 avg)
%            Number of connectives :   23 (   3   ~;   1   |;   4   &)
%                                         (   6 <=>;   9  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   10 (   4 avg)
%            Maximal term depth    :   15 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   23 (  23 usr;   7 con; 0-3 aty)
%            Number of variables   :   44 (  43   !;   1   ?)
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

fof('thm.bool.JRH_INDUCT_UTIL',axiom,
    ! [V_27A_27,V_27P_27,V_27t_27] :
      ( ! [V_27x_27] :
          ( s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27t_27)
         => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27x_27)))) )
     => p__01(s__02(cbool__00,c_24exists__01(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27)))) ) ).

fof('thm.arithmetic.ADD_0',axiom,
    ! [V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) ).

fof('thm.arithmetic.ADD_SYM',axiom,
    ! [V_27m_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) ).

fof('thm.ind_type.CONSTR_REC',axiom,
    ! [V_27B_27,V_27A_27,V__0] :
      ( ! [V_27f_27,V_27r_27,V_27n_27] : s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,V_27B_27)),chapp__02(s__02(cfun__02(cfun__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),V_27B_27),cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,V_27B_27))),V__0),s__02(cfun__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),V_27B_27),V_27f_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),V_27r_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),V_27B_27),V_27f_27),s__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),V_27r_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))))
     => ! [V_27Fn_27] :
        ? [V_27f_27] :
        ! [V_27c_27,V_27i_27,V_27r_27] : s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),V_27B_27),V_27f_27),s__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),c_27const_2eind__type_2eCONSTR_27__03(s__02(c_27type_2enum_2enum_27__00,V_27c_27),s__02(V_27A_27,V_27i_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),V_27r_27))))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27B_27),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27B_27)),chapp__02(s__02(cfun__02(V_27A_27,cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27B_27))),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cfun__02(V_27A_27,cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27B_27)))),V_27Fn_27),s__02(c_27type_2enum_2enum_27__00,V_27c_27))),s__02(V_27A_27,V_27i_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),V_27r_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,V_27B_27)),chapp__02(s__02(cfun__02(cfun__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),V_27B_27),cfun__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,V_27B_27))),V__0),s__02(cfun__02(c_27type_2eind__type_2erecspace_27__01(V_27A_27),V_27B_27),V_27f_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2eind__type_2erecspace_27__01(V_27A_27)),V_27r_27))))) ) ).

fof('thm.ind_type.FCONS',axiom,
    ! [V_27A_27] :
      ( ! [V_27a_27,V_27f_27] : s__02(V_27A_27,c_27const_2eind__type_2eFCONS_27__03(s__02(V_27A_27,V_27a_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(V_27A_27,V_27a_27)
      & ! [V_27a_27,V_27f_27,V_27n_27] : s__02(V_27A_27,c_27const_2eind__type_2eFCONS_27__03(s__02(V_27A_27,V_27a_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(V_27A_27,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27A_27),V_27f_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) ) ).

fof('thm.list.DROP_0',axiom,
    ! [V_27A_27,V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eDROP_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27) ).

fof('thm.mlstring.strlen_def',axiom,
    ! [V_27s_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2emlstring_2estrlen_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,c_27const_2emlstring_2estrlit_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27s_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27s_27))) ).

fof('thm.mlstring.explode_aux_thm',axiom,
    ! [V_27max_27,V_27n_27,V_27ls_27] :
      ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27max_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27ls_27)))
     => s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2emlstring_2eexplode__aux_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,c_27const_2emlstring_2estrlit_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27ls_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27max_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2elist_2eDROP_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),V_27ls_27))) ) ).

fof('thm.mlstring.explode_def',axiom,
    ! [V_27s_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2emlstring_2eexplode_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2emlstring_2eexplode__aux_27__03(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2emlstring_2estrlen_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s_27))))) ).

fof(conjecture,conjecture,
    ! [V_27s1_27,V_27s2_27] :
      ( s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2emlstring_2eexplode_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s1_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2estring_2echar_27__00),c_27const_2emlstring_2eexplode_27__01(s__02(c_27type_2emlstring_2emlstring_27__00,V_27s2_27)))
    <=> s__02(c_27type_2emlstring_2emlstring_27__00,V_27s1_27) = s__02(c_27type_2emlstring_2emlstring_27__00,V_27s2_27) ) ).

%------------------------------------------------------------------------------
