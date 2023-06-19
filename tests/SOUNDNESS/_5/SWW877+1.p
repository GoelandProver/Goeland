%------------------------------------------------------------------------------
% File     : SWW877+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : wordProps__112__every_var_exp_mono__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : wordProps__112__every_var_exp_mono__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.25 v7.5.0, 0.60 v7.4.0, 0.00 v7.3.0
% Syntax   : Number of formulae    :   16 (   3 unt;   0 def)
%            Number of atoms       :   87 (  19 equ)
%            Maximal formula atoms :   15 (   5 avg)
%            Number of connectives :   75 (   4   ~;   1   |;  29   &)
%                                         (  19 <=>;  22  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   13 (   6 avg)
%            Maximal term depth    :    9 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   24 (  24 usr;   7 con; 0-3 aty)
%            Number of variables   :   70 (  70   !;   0   ?)
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

fof('thm.bool.FORALL_SIMP',axiom,
    ! [V_27A_27,V_27t_27] :
      ( ! [V_27x_27] : p__01(s__02(cbool__00,V_27t_27))
    <=> p__01(s__02(cbool__00,V_27t_27)) ) ).

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

fof('thm.list.EVERY_MEM',axiom,
    ! [V_27A_27,V_27P_27,V_27l_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))
    <=> ! [V_27e_27] :
          ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(V_27A_27,V_27e_27),s__02(cfun__02(V_27A_27,cbool__00),c_27const_2elist_2eLIST__TO__SET_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))))
         => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27e_27)))) ) ) ).

fof('thm.wordLang.every_var_exp_ind',axiom,
    ! [V_27A_27,V_27P_7c39_7c_27] :
      ( ( ! [V_27P_27,V_27num_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27num_27))))))
        & ! [V_27P_27,V_27exp_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLoad_27__01(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))))) )
        & ! [V_27P_27,V_27wop_27,V_27ls_27] :
            ( ! [V_27a_27] :
                ( p__01(s__02(cbool__00,c_27const_2ebool_2eIN_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2elist_2eLIST__TO__SET_27__01(s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27))))))
               => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27)))) )
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eOp_27__02(s__02(c_27type_2easm_2ebinop_27__00,V_27wop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27)))))) )
        & ! [V_27P_27,V_27sh_27,V_27exp_27,V_27nexp_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eShift_27__03(s__02(c_27type_2east_2eshift_27__00,V_27sh_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27nexp_27)))))) )
        & ! [V_27P_27,V_27v2_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eConst_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v2_27))))))
        & ! [V_27P_27,V_27v4_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLookup_27__01(s__02(c_27type_2estackLang_2estore__name_27__00,V_27v4_27)))))) )
     => ! [V_27v_27,V_27v1_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V_27P_7c39_7c_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27v_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27v1_27)))) ) ).

fof('thm.wordLang.every_var_exp_def',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27P_27,V_27a_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27))) = s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27)))
     => ( ! [V_27num_27,V_27P_27] : s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27num_27))))) = s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27num_27)))
        & ! [V_27exp_27,V_27P_27] : s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLoad_27__01(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27))))) = s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))
        & ! [V_27wop_27,V_27ls_27,V_27P_27] : s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eOp_27__02(s__02(c_27type_2easm_2ebinop_27__00,V_27wop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27))))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27)))
        & ! [V_27sh_27,V_27nexp_27,V_27exp_27,V_27P_27] : s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eShift_27__03(s__02(c_27type_2east_2eshift_27__00,V_27sh_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27nexp_27))))) = s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))
        & ! [V_27v2_27,V_27P_27] : s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eConst_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v2_27))))) = s__02(cbool__00,cT__00)
        & ! [V_27v4_27,V_27P_27] : s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLookup_27__01(s__02(c_27type_2estackLang_2estore__name_27__00,V_27v4_27))))) = s__02(cbool__00,cT__00) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27P_27,V_27exp_27,V_27Q_27] :
      ( ( ! [V_27x_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27x_27))))
           => p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27Q_27),s__02(c_27type_2enum_2enum_27__00,V_27x_27)))) )
        & p__01(s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))) )
     => p__01(s__02(cbool__00,c_27const_2ewordLang_2eevery__var__exp_27__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27Q_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))) ) ).

%------------------------------------------------------------------------------
