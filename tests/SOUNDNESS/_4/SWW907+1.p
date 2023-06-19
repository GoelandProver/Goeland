%------------------------------------------------------------------------------
% File     : SWW907+1 : TPTP v8.1.2. Released v7.3.0.
% Domain   : Software Verification
% Problem  : word_instProof__19__tactictoe_prove_18__dep
% Version  : Especial.
% English  :

% Refs     : [Kum18] Kumar (2018), Email to Geoff Sutcliffe
% Source   : [Kum18]
% Names    : word_instProof__19__tactictoe_prove_18__dep [Kum18]

% Status   : CounterSatisfiable
% Rating   : 0.00 v8.1.0, 0.50 v7.5.0, 0.60 v7.4.0, 0.33 v7.3.0
% Syntax   : Number of formulae    :   44 (   6 unt;   0 def)
%            Number of atoms       :  224 (  58 equ)
%            Maximal formula atoms :   15 (   5 avg)
%            Number of connectives :  221 (  41   ~;  35   |;  54   &)
%                                         (  39 <=>;  52  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   25 (   7 avg)
%            Maximal term depth    :   22 (   3 avg)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   30 (  30 usr;   9 con; 0-7 aty)
%            Number of variables   :  241 ( 231   !;  10   ?)
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

fof('thm.bool.LEFT_OR_OVER_AND',axiom,
    ! [V_27A_270,V_27B_270,V_27C_270] :
      ( ( p__01(s__02(cbool__00,V_27A_270))
        | ( p__01(s__02(cbool__00,V_27B_270))
          & p__01(s__02(cbool__00,V_27C_270)) ) )
    <=> ( ( p__01(s__02(cbool__00,V_27A_270))
          | p__01(s__02(cbool__00,V_27B_270)) )
        & ( p__01(s__02(cbool__00,V_27A_270))
          | p__01(s__02(cbool__00,V_27C_270)) ) ) ) ).

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

fof('thm.bool.COND_CONG',axiom,
    ! [V_27A_27,V_27P_27,V_27Q_27,V_27x_27,V_27x_7c39_7c_27,V_27y_27,V_27y_7c39_7c_27] :
      ( ( s__02(cbool__00,V_27P_27) = s__02(cbool__00,V_27Q_27)
        & ( p__01(s__02(cbool__00,V_27Q_27))
         => s__02(V_27A_27,V_27x_27) = s__02(V_27A_27,V_27x_7c39_7c_27) )
        & ( ~ p__01(s__02(cbool__00,V_27Q_27))
         => s__02(V_27A_27,V_27y_27) = s__02(V_27A_27,V_27y_7c39_7c_27) ) )
     => s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27P_27),s__02(V_27A_27,V_27x_27),s__02(V_27A_27,V_27y_27))) = s__02(V_27A_27,c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,V_27Q_27),s__02(V_27A_27,V_27x_7c39_7c_27),s__02(V_27A_27,V_27y_7c39_7c_27))) ) ).

fof('thm.combin.o_DEF',axiom,
    ! [V_27B_27,V_27C_27,V_27A_27,V_27f_27,V_27g_27,Vx] : s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27A_27,V_27B_27),c_27const_2ecombin_2eo_27__02(s__02(cfun__02(V_27C_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,V_27C_27),V_27g_27))),s__02(V_27A_27,Vx))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(V_27C_27,V_27B_27),V_27f_27),s__02(V_27C_27,chapp__02(s__02(cfun__02(V_27A_27,V_27C_27),V_27g_27),s__02(V_27A_27,Vx))))) ).

fof('thm.combin.I_THM',axiom,
    ! [V_27A_27,V_27x_27] : s__02(V_27A_27,chapp__02(s__02(cfun__02(V_27A_27,V_27A_27),c_27const_2ecombin_2eI_27__00),s__02(V_27A_27,V_27x_27))) = s__02(V_27A_27,V_27x_27) ).

fof('thm.combin.I_o_ID',axiom,
    ! [V_27A_27,V_27B_27,V_27f_27] :
      ( s__02(cfun__02(V_27A_27,V_27B_27),c_27const_2ecombin_2eo_27__02(s__02(cfun__02(V_27B_27,V_27B_27),c_27const_2ecombin_2eI_27__00),s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27))) = s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27)
      & s__02(cfun__02(V_27A_27,V_27B_27),c_27const_2ecombin_2eo_27__02(s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27),s__02(cfun__02(V_27A_27,V_27A_27),c_27const_2ecombin_2eI_27__00))) = s__02(cfun__02(V_27A_27,V_27B_27),V_27f_27) ) ).

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

fof('thm.list.EVERY_DEF',axiom,
    ! [V_27A_27] :
      ( ! [V_27P_27] : s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))) = s__02(cbool__00,cT__00)
      & ! [V_27P_27,V_27h_27,V_27t_27] :
          ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))))
        <=> ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(V_27A_27,V_27h_27))))
            & p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))) ) ) ) ).

fof('thm.list.list_induction',axiom,
    ! [V_27A_27,V_27P_27] :
      ( ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eNIL_27__00))))
        & ! [V_27t_27] :
            ( p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27))))
           => ! [V_27h_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eCONS_27__02(s__02(V_27A_27,V_27h_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27t_27)))))) ) )
     => ! [V_27l_27] : p__01(s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(V_27A_27),cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l_27)))) ) ).

fof('thm.list.EVERY_APPEND',axiom,
    ! [V_27A_27,V_27P_27,V_27l1_27,V_27l2_27] :
      ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27))))))
    <=> ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l1_27))))
        & p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(V_27A_27,cbool__00),V_27P_27),s__02(c_27type_2elist_2elist_27__01(V_27A_27),V_27l2_27)))) ) ) ).

fof('thm.wordLang.exp_case_def',axiom,
    ! [V_27B_27,V_27A_27] :
      ( ! [V_27a_27,V_27f_27,V_27f1_27,V_27f2_27,V_27f3_27,V_27f4_27,V_27f5_27] : s__02(V_27B_27,c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eConst_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27a_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27a_27)))
      & ! [V_27a_27,V_27f_27,V_27f1_27,V_27f2_27,V_27f3_27,V_27f4_27,V_27f5_27] : s__02(V_27B_27,c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27a_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(c_27type_2enum_2enum_27__00,V_27a_27)))
      & ! [V_27a_27,V_27f_27,V_27f1_27,V_27f2_27,V_27f3_27,V_27f4_27,V_27f5_27] : s__02(V_27B_27,c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLookup_27__01(s__02(c_27type_2estackLang_2estore__name_27__00,V_27a_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(c_27type_2estackLang_2estore__name_27__00,V_27a_27)))
      & ! [V_27a_27,V_27f_27,V_27f1_27,V_27f2_27,V_27f3_27,V_27f4_27,V_27f5_27] : s__02(V_27B_27,c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLoad_27__01(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27)))
      & ! [V_27a0_27,V_27a1_27,V_27f_27,V_27f1_27,V_27f2_27,V_27f3_27,V_27f4_27,V_27f5_27] : s__02(V_27B_27,c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eOp_27__02(s__02(c_27type_2easm_2ebinop_27__00,V_27a0_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27a1_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(c_27type_2easm_2ebinop_27__00,V_27a0_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27a1_27)))
      & ! [V_27a0_27,V_27a1_27,V_27a2_27,V_27f_27,V_27f1_27,V_27f2_27,V_27f3_27,V_27f4_27,V_27f5_27] : s__02(V_27B_27,c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eShift_27__03(s__02(c_27type_2east_2eshift_27__00,V_27a0_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a1_27),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27a2_27))),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27B_27),V_27f_27),s__02(cfun__02(c_27type_2enum_2enum_27__00,V_27B_27),V_27f1_27),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,V_27B_27),V_27f2_27),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27B_27),V_27f3_27),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27B_27)),V_27f4_27),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27))) = s__02(V_27B_27,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27)),chapp__02(s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27B_27))),V_27f5_27),s__02(c_27type_2east_2eshift_27__00,V_27a0_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a1_27))),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27a2_27))) ) ).

fof('thm.wordLang.exp_nchotomy',axiom,
    ! [V_27A_27,V_27ee_27] :
      ( ? [V_27c_27] : s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27ee_27) = s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eConst_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27c_27)))
      | ? [V_27n_27] : s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27ee_27) = s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27n_27)))
      | ? [V_27s_27] : s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27ee_27) = s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLookup_27__01(s__02(c_27type_2estackLang_2estore__name_27__00,V_27s_27)))
      | ? [V_27e_27] : s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27ee_27) = s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLoad_27__01(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27e_27)))
      | ? [V_27b_27,V_27l_27] : s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27ee_27) = s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eOp_27__02(s__02(c_27type_2easm_2ebinop_27__00,V_27b_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27l_27)))
      | ? [V_27s_27,V_27e_27,V_27n_27] : s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27ee_27) = s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eShift_27__03(s__02(c_27type_2east_2eshift_27__00,V_27s_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27e_27),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27n_27))) ) ).

fof('thm.wordLang.every_var_exp_def',axiom,
    ! [V_27A_27,V__0] :
      ( ! [V_27P_27,V_27a_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27))) = s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27a_27)))
     => ( ! [V_27num_27,V_27P_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eVar_27__01(s__02(c_27type_2enum_2enum_27__00,V_27num_27))))) = s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27),s__02(c_27type_2enum_2enum_27__00,V_27num_27)))
        & ! [V_27exp_27,V_27P_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLoad_27__01(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27))))) = s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))
        & ! [V_27wop_27,V_27ls_27,V_27P_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eOp_27__02(s__02(c_27type_2easm_2ebinop_27__00,V_27wop_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27))))) = s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),chapp__02(s__02(cfun__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00)),V__0),s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27)))
        & ! [V_27sh_27,V_27nexp_27,V_27exp_27,V_27P_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eShift_27__03(s__02(c_27type_2east_2eshift_27__00,V_27sh_27),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27nexp_27))))) = s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27exp_27)))
        & ! [V_27v2_27,V_27P_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eConst_27__01(s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v2_27))))) = s__02(cbool__00,cT__00)
        & ! [V_27v4_27,V_27P_27] : s__02(cbool__00,chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27const_2ewordLang_2eLookup_27__01(s__02(c_27type_2estackLang_2estore__name_27__00,V_27v4_27))))) = s__02(cbool__00,cT__00) ) ) ).

fof('thm.word_inst.pull_ops_def',axiom,
    ! [V_27A_27,V__8] :
      ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v17_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__8),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),V_27v17_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))))
     => ! [V__7] :
          ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v16_27] : s__02(cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),V__7),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27v16_27))) = s__02(cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__8),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))
         => ! [V__6] :
              ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v15_27] : s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))))),V__6),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2east_2eshift_27__00,V_27v15_27))) = s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),V__7),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))
             => ! [V__5] :
                  ( ! [V_27op_7c39_7c_27,V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27ls_27] :
                    ? [Vv] :
                      ( ( p__01(s__02(cbool__00,Vv))
                      <=> s__02(c_27type_2easm_2ebinop_27__00,V_27op_27) = s__02(c_27type_2easm_2ebinop_27__00,V_27op_7c39_7c_27) )
                      & s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),V__5),s__02(c_27type_2easm_2ebinop_27__00,V_27op_7c39_7c_27))),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2ebool_2eCOND_27__03(s__02(cbool__00,Vv),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eAPPEND_27__02(s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))))))) )
                 => ! [V__4] :
                      ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27op_7c39_7c_27] : s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),V__4),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2easm_2ebinop_27__00,V_27op_7c39_7c_27))) = s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),V__5),s__02(c_27type_2easm_2ebinop_27__00,V_27op_7c39_7c_27))),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))
                     => ! [V__3] :
                          ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v12_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__3),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27v12_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))))
                         => ! [V__2] :
                              ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v11_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__2),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2estackLang_2estore__name_27__00,V_27v11_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))))
                             => ! [V__1] :
                                  ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v10_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__1),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2enum_2enum_27__00,V_27v10_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))))
                                 => ! [V__0] :
                                      ( ! [V_27op_27,V_27xs_27,V_27x_27,V_27acc_27,V_27v9_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),chapp__02(s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__0),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),V_27v9_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))))
                                     => ( ! [V_27op_27,V_27acc_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eNIL_27__00),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)
                                        & ! [V_27op_27,V_27x_27,V_27xs_27,V_27acc_27] : s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2elist_2eCONS_27__02(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))) = s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2ewordLang_2eexp__CASE_27__07(s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27),s__02(cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2efcp_2ecart_27__02(cbool__00,V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__0),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2enum_2enum_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__1),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2estackLang_2estore__name_27__00,c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__2),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),V__3),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),V__4),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))),s__02(cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))),chapp__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))),chapp__02(s__02(cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)))))))),chapp__02(s__02(cfun__02(c_27type_2easm_2ebinop_27__00,cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),cfun__02(c_27type_2east_2eshift_27__00,cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cfun__02(c_27type_2ewordLang_2enum__exp_27__01(V_27A_27),c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27))))))))),V__6),s__02(c_27type_2easm_2ebinop_27__00,V_27op_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27xs_27))),s__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),V_27x_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))))) ) ) ) ) ) ) ) ) ) ) ).

fof(conjecture,conjecture,
    ! [V_27A_27,V_27P_27,V_27op_27,V_27ls_27,V_27acc_27] :
      ( ( p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27))))
        & p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27)))) )
     => p__01(s__02(cbool__00,c_27const_2elist_2eEVERY_27__02(s__02(cfun__02(c_27type_2ewordLang_2eexp_27__01(V_27A_27),cbool__00),c_27const_2ewordLang_2eevery__var__exp_27__01(s__02(cfun__02(c_27type_2enum_2enum_27__00,cbool__00),V_27P_27))),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),c_27const_2eword__inst_2epull__ops_27__03(s__02(c_27type_2easm_2ebinop_27__00,V_27op_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27ls_27),s__02(c_27type_2elist_2elist_27__01(c_27type_2ewordLang_2eexp_27__01(V_27A_27)),V_27acc_27)))))) ) ).

%------------------------------------------------------------------------------
