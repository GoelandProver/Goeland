%------------------------------------------------------------------------------
% File     : SWW900+1 : TPTP v8.1.0. Released v7.3.0.
% Domain   : Software Verification
% Problem  : word_simpProof__45__LIST_REL_append_left__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : word_simpProof__45__LIST_REL_append_left__dep [Kum18]

% Status   : Theorem
% Rating   : 0.81 v7.5.0, 0.88 v7.4.0, 0.77 v7.3.0
% Syntax   : Number of formulae    :   31 (   9 unt;   0 def)
%            Number of atoms       :  135 (  72 equ)
%            Maximal formula atoms :   40 (   4 avg)
%            Number of connectives :  121 (  17   ~;   4   |;  67   &)
%                                         (  22 <=>;  11  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   37 (   6 avg)
%            Maximal term depth    :    9 (   2 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   31 (  31 usr;   6 con; 0-3 aty)
%            Number of variables   :  112 ( 112   !;   0   ?)
% SPC      : FOF_THM_RFO_SEQ

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

fof('thm.bool.CONJ_ASSOC',axiom,
    ! [V_27t1_27,V_27t2_27,V_27t3_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
        & p__01(s__02(cbool__00,V_27t2_27))
        & p__01(s__02(cbool__00,V_27t3_27)) )
    <=> ( p__01(s__02(cbool__00,V_27t1_27))
        & p__01(s__02(cbool__00,V_27t2_27))
        & p__01(s__02(cbool__00,V_27t3_27)) ) ) ).

fof('thm.bool.NOT_CLAUSES',axiom,
    ( ! [V_27t_27] :
        ( ~ ~ p__01(s__02(cbool__00,V_27t_27))
      <=> p__01(s__02(cbool__00,V_27t_27)) )
    & ( ~ p__01(s__02(cbool__00,cT__00))
    <=> p__01(s__02(cbool__00,cF__00)) )
    & ( ~ p__01(s__02(cbool__00,cF__00))
    <=> p__01(s__02(cbool__00,cT__00)) ) ) ).

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

fof('thm.bool.DE_MORGAN_THM',axiom,
    ! [V_27A_270,V_27B_270] :
      ( ( ~ ( p__01(s__02(cbool__00,V_27A_270))
            & p__01(s__02(cbool__00,V_27B_270)) )
      <=> ( ~ p__01(s__02(cbool__00,V_27A_270))
          | ~ p__01(s__02(cbool__00,V_27B_270)) ) )
      & ( ~ ( p__01(s__02(cbool__00,V_27A_270))
            | p__01(s__02(cbool__00,V_27B_270)) )
      <=> ( ~ p__01(s__02(cbool__00,V_27A_270))
          & ~ p__01(s__02(cbool__00,V_27B_270)) ) ) ) ).

fof('thm.bool.IMP_DISJ_THM',axiom,
    ! [V_27A_270,V_27B_270] :
      ( ( p__01(s__02(cbool__00,V_27A_270))
       => p__01(s__02(cbool__00,V_27B_270)) )
    <=> ( ~ p__01(s__02(cbool__00,V_27A_270))
        | p__01(s__02(cbool__00,V_27B_270)) ) ) ).

fof('thm.bool.IMP_F_EQ_F',axiom,
    ! [V_27t_27] :
      ( ( p__01(s__02(cbool__00,V_27t_27))
       => p__01(s__02(cbool__00,cF__00)) )
    <=> s__02(cbool__00,V_27t_27) = s__02(cbool__00,cF__00) ) ).

fof('thm.bool.AND_IMP_INTRO',axiom,
    ! [V_27t1_27,V_27t2_27,V_27t3_27] :
      ( ( p__01(s__02(cbool__00,V_27t1_27))
       => ( p__01(s__02(cbool__00,V_27t2_27))
         => p__01(s__02(cbool__00,V_27t3_27)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27t1_27))
          & p__01(s__02(cbool__00,V_27t2_27)) )
       => p__01(s__02(cbool__00,V_27t3_27)) ) ) ).

fof('thm.arithmetic.ADD_CLAUSES',axiom,
    ! [V_27n_27,V_27m_27] :
      ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))))
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) ) ).

fof('thm.arithmetic.ADD_SYM',axiom,
    ! [V_27m_27,V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) ).

fof('thm.arithmetic.ZERO_LESS_EQ',axiom,
    ! [V_27n_27] : p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))) ).

fof('thm.arithmetic.MULT_CLAUSES',axiom,
    ! [V_27m_27,V_27n_27] :
      ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))))) = s__02(c_27type_2enum_2enum_27__00,V_27m_27)
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      & s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) ) ).

fof('thm.arithmetic.LESS_EQ_TRANS',axiom,
    ! [V_27m_27,V_27n_27,V_27p_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
        & p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27p_27)))) )
     => p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27p_27)))) ) ).

fof('thm.arithmetic.EQ_LESS_EQ',axiom,
    ! [V_27m_27,V_27n_27] :
      ( s__02(c_27type_2enum_2enum_27__00,V_27m_27) = s__02(c_27type_2enum_2enum_27__00,V_27n_27)
    <=> ( p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
        & p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))) ) ) ).

fof('thm.arithmetic.ADD_MONO_LESS_EQ',axiom,
    ! [V_27m_27,V_27n_27,V_27p_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27p_27))))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27p_27))) ).

fof('thm.arithmetic.NOT_LEQ',axiom,
    ! [V_27m_27,V_27n_27] :
      ( ~ p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
    <=> p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))) ) ).

fof('thm.arithmetic.SUC_ONE_ADD',axiom,
    ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))))),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) ).

fof('thm.numeral.numeral_distrib',axiom,
    ( ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,V_27n_27)
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27n_27)
    & ! [V_27n_27,V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enumeral_2eiZ_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))))))
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    & ! [V_27n_27,V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2a_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))))
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,V_27n_27)
    & ! [V_27n_27,V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))))
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eEXP_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eEXP_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eEXP_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))
    & ! [V_27n_27,V_27m_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eEXP_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eEXP_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))))
    & s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))))
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2eSUC_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))))
    & s__02(c_27type_2enum_2enum_27__00,c_27const_2eprim__rec_2ePRE_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
    & ! [V_27n_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2eprim__rec_2ePRE_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2eprim__rec_2ePRE_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))))
    & ! [V_27n_27] :
        ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)
      <=> s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00) )
    & ! [V_27n_27] :
        ( s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      <=> s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00) )
    & ! [V_27n_27,V_27m_27] :
        ( s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27)))
      <=> s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,V_27m_27) )
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(cbool__00,cF__00)
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
    & ! [V_27n_27,V_27m_27] : s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3e_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(cbool__00,cF__00)
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3e_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
    & ! [V_27n_27,V_27m_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3e_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2eprim__rec_2e_3c_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(cbool__00,cT__00)
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00)))
    & ! [V_27n_27,V_27m_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3e_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))) = s__02(cbool__00,cT__00)
    & ! [V_27n_27] :
        ( p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3e_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))))
      <=> s__02(c_27type_2enum_2enum_27__00,V_27n_27) = s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00) )
    & ! [V_27n_27,V_27m_27] : s__02(cbool__00,c_27const_2earithmetic_2e_3e_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2eODD_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(cbool__00,c_27const_2earithmetic_2eODD_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
    & ! [V_27n_27] : s__02(cbool__00,c_27const_2earithmetic_2eEVEN_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eNUMERAL_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))))) = s__02(cbool__00,c_27const_2earithmetic_2eEVEN_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
    & ~ p__01(s__02(cbool__00,c_27const_2earithmetic_2eODD_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00))))
    & p__01(s__02(cbool__00,c_27const_2earithmetic_2eEVEN_27__01(s__02(c_27type_2enum_2enum_27__00,c_27const_2enum_2e0_27__00)))) ) ).

fof('thm.numeral.numeral_lte',axiom,
    ! [V_27n_27,V_27m_27] :
      ( s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00),s__02(c_27type_2enum_2enum_27__00,V_27n_27))) = s__02(cbool__00,cT__00)
      & s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))) = s__02(cbool__00,cF__00)
      & s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eZERO_27__00))) = s__02(cbool__00,cF__00)
      & s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))
      & s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27)))
      & ( p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT1_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))))
      <=> ~ p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27m_27),s__02(c_27type_2enum_2enum_27__00,V_27n_27)))) )
      & s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2eBIT2_27__01(s__02(c_27type_2enum_2enum_27__00,V_27m_27))))) = s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,V_27m_27))) ) ).

fof('thm.list.LENGTH_APPEND',axiom,
    ! [V_27A_27,V_27l1_27,V_27l2_27] : s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2earithmetic_2e_2b_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27))),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))) ).

fof('thm.list.LIST_REL_LENGTH',axiom,
    ! [V_27A_27,V_27B_27,V_27R_27,V_27x_27,V_27y_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27R_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27y_27))))
     => s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27x_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27y_27))) ) ).

fof('thm.list.LENGTH_TAKE',axiom,
    ! [V_27A_27,V_27n_27,V_27l_27] :
      ( p__01(s__02(cbool__00,c_27const_2earithmetic_2e_3c_3d_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))))
     => s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eTAKE_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))) = s__02(c_27type_2enum_2enum_27__00,V_27n_27) ) ).

fof('thm.list.TAKE_DROP',axiom,
    ! [V_27A_27,V_27n_27,V_27l_27] : s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eTAKE_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eDROP_27__02(s__02(c_27type_2enum_2enum_27__00,V_27n_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27))))) = s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27) ).

fof('thm.rich_list.LIST_REL_APPEND_IMP',axiom,
    ! [V_27A_27,V_27B_27,V_27P_27,V_27xs_27,V_27ys_27,V_27xs1_27,V_27ys1_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs1_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys1_27))))))
        & s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27))) = s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys_27))) )
     => ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys_27))))
        & p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27xs1_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27ys1_27)))) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27B_27,V_27l0_27,V_27l1_27,V_27l2_27,V_27R_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27R_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l0_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l2_27))))
     => ( p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27R_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l0_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eTAKE_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l0_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l2_27))))))
        & p__01(s__02(cbool__00,c_27const_2elist_2eLIST__REL_27__03(s__02(cfun__02(V_27A_27,cfun__02(V_27B_27,cbool__00)),V_27R_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27B_27),c_27const_2elist_2eDROP_27__02(s__02(c_27type_2enum_2enum_27__00,c_27const_2elist_2eLENGTH_27__01(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l0_27))),s__02(c_27type_2elist_2elist_27__01(V_27B_27),V_27l2_27)))))) ) ) ).

%------------------------------------------------------------------------------
